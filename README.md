# 频率计项目 (Top Cymometer)

## 项目概述

基于 Xilinx Zynq-7000 的高精度频率计。PL 侧用 Verilog 实现测频核心（等精度计数 + TDC 亚周期插值 + 时间戳引擎），PS 侧运行 FreeRTOS + lwIP，通过 TCP 提供 SCPI 风格的命令接口。

| 项目 | 值 |
|------|------|
| 器件 | xc7z020clg400 |
| 开发环境 | Vivado 2018.3 / Xilinx SDK 2018.3 |
| Vivado 工程 | `top_cymometer.xpr`，顶层 `ps_wrapper` |
| SDK 应用 | `FreqCounterOS`（`FreqCounter` 已废弃） |
| 基准时钟 | 312.5 MHz LVDS 差分输入 |
| AXI 时钟 | 100 MHz (FCLK_CLK0) |

## 系统架构

### PL 侧 Block Design (`ps`)

```
                    ┌──────────────────────────────────────┐
                    │      processing_system7_0 (PS)       │
                    │      ARM Cortex-A9 + DDR             │
                    └───┬──────────────────────────┬───────┘
                M_AXI_GP0                       S_AXI_HP0
                        │                          │
            ┌───────────┴────────────┐             │
            │   ps7_0_axi_periph     │             │
            │   (axi_interconnect)   │        ┌────┴─────┐
            └──┬──────────┬───────┬──┘        │ axi_smc  │
               │M00       │M01    │M02        └────┬─────┘
               │          │       │                │
    ┌──────────┴──┐  ┌────┴────┐  │           ┌────┴──────┐
    │ Counter_Sig │  │ Counter │  └───────────┤ axi_dma_0 │
    │ 0x43C00000  │  │0x43C10000│             │0x40400000 │
    └─────────────┘  └────┬────┘              └────┬──────┘
                          │ M_AXIS                 │ S_AXIS_S2MM
                          └────► axis_data_fifo_0 ─┘
```

外部接口：

| 信号 | 方向 | 管脚 | 电平 | 说明 |
|------|------|------|------|------|
| `clk_fs_p/n` | 输入 | Y12 | LVDS_25 | 基准时钟 312.5 MHz |
| `clk_fx_p/n` | 输入 | B19 | LVDS_25 | 被测信号 |
| `CTR_PRIREF` | 输出 | W15 | LVCMOS33 | 优先参考源控制 |
| `CTR_REF_CLOCK` | 输出 | V16 | LVCMOS33 | 参考时钟控制 |
| `CTR_OCXO` | 输出 | W16 | LVCMOS33 | OCXO 控制 |
| `CTR_STATUS0` | 输入 | W14 | LVCMOS33 | 状态 0（兼作基准频率来源选择） |
| `CTR_STATUS1` | 输入 | W13 | LVCMOS33 | 状态 1 |
| `CTR_START_T` | 输入 | J14 | LVCMOS25 | 启动时间测量触发 |

### 自定义 IP

**`Counter` v1.0** (`ip_repo/Counter/Counter_1.0`) — 测频核心

```
Counter_v1_0.v                 顶层：IBUFDS + BUFG 接收 LVDS 差分时钟
├── Counter_v1_0_S_AXI.v       AXI4-Lite 从机，内含 top_cymometer 实例
│   └── top_cymometer.v
│       └── cymometer.v        测频主体
│           ├── tdc.v          × 3  CARRY4 延迟链 TDC
│           └── timestamp_engine.v   时间戳引擎 + 异步 FIFO
└── Counter_v1_0_M_AXIS.v      AXI-Stream 主机（模板代码，未接实际数据）
```

**`Counter_Sig` v1.0** (`ip_repo/Counter_Sig/Counter_Sig_1.0`) — 控制/状态信号

`signal.v` 是纯组合直通，把 AXI 寄存器位映射到 GPIO 管脚。

> `ip_repo/top_cymometer_ip_1.6/` 是被 `Counter` 取代的旧版 IP，已不在 Block Design 中使用。

### PS 侧软件

```
FreqCounterOS/src/
├── main.c                        FreeRTOS 启动、lwIP 初始化、静态 IP 配置
├── freertos_tcp_perf_server.c    TCP 服务器 + 命令解析 (tcp_data_process)
├── freq_counter/freq_counter.c   测频算法、寄存器读写、SD 卡校准
├── uart/uart.c                   UART 中断驱动与命令解析（当前未接入，见「已知问题」）
├── iic_phyreset.c                PHY 复位（可选）
└── platform_config.h
```

## 测量原理

PL 提供三套并行的测量机制，由软件按被测频率选择组合。

### 1. 等精度计数

`cymometer.v` 中，闸门信号 `gate_sig` 分别经三级同步器进入基准时钟域和被测时钟域，两个计数器在各自域内统计闸门开启期间的周期数：

- `cnt_clk_stand_reg` — 基准时钟周期数
- `cnt_clk_test_reg` — 被测信号周期数

闸门本身由软件通过 `usleep` 控制开关时长，不由硬件定时。

### 2. TDC 亚周期插值

`tdc.v` 用 16 级 CARRY4 组成 64 抽头进位延迟链（约 50 ps/抽头，满量程 3.2 ns = 一个基准时钟周期）。采样后得到温度计码，经优先编码器转成 0~63 的二进制值。

模块内例化 3 个 TDC：基准域闸门 TDC、被测域闸门 TDC、时间戳引擎专用 TDC。前两个在闸门上升/下降沿各锁存一次，得到 4 个校正值，消除两侧的 ±1 计数量化误差。

有效计数：

```
eff_stand = cnt_stand + tdc_ref_rise/64  - tdc_ref_fall/64
eff_test  = cnt_test  + tdc_test_rise/64 - tdc_test_fall/64
Fr        = f_s × eff_test / eff_stand
```

### 3. 时间戳引擎

`timestamp_engine.v` 对被测信号的每个上升沿（或每 `edge_skip+1` 个）记录一条 40 位时间戳：32 位自由运行计数（基准时钟域，3.2 ns 分辨率）+ 6 位 TDC 细值。

时间戳写入 1024 深度双口 RAM 构成的异步 FIFO，写指针经格雷码两级同步跨到 AXI 时钟域，由 ARM 通过寄存器逐条读出。禁用引擎不清空 FIFO，便于测量结束后读取。

软件侧对时间戳序列做**线性回归**求斜率（秒/边沿），频率 = `(edge_skip+1) / slope`。相比只用首尾两点，回归利用全部样本抑制随机抖动。

### 模式选择

`ReadFr()` 按参考频率 `FREF` 分流（`freq_counter.c:225`）：

```
safe_limit = (f_s / 2) × 0.9 = 140.625 MHz    // 奈奎斯特的 90%
FREF >  safe_limit  →  ReadFr_TDC()            等精度法 + TDC 校正
FREF <= safe_limit  →  ReadFr_TimestampMode()  时间戳法 + 线性回归
```

时间戳法精度更高，但被测信号需在基准时钟域可采样，故高频段退回等精度法。

时间戳法会自适应设置 `edge_skip`，目标是让 FIFO 中约有 500 条记录；若仍接近写满（≥1020 条），自动加倍 `edge_skip` 重测一次。

## 基准时钟校准

实际 OCXO 输出与标称 312.5 MHz 存在偏差，可将实测值写入 SD 卡根目录的 `FREQ.TXT`（纯十进制 Hz 数字，如 `312500000`）。

上电时 `LoadClkFsFreq()` 挂载 SD 卡读取该值。运算时用哪个值由 `CTR_STATUS0` 决定（`GetClkFsFreq()`）：

| CTR_STATUS0 | 使用的基准频率 |
|-------------|----------------|
| 1 | SD 卡中的校准值 |
| 0 | 理想值 312 500 000 Hz |

SD 卡缺失或解析失败时回退到理想值。

## 寄存器映射

### Counter — 基地址 0x43C10000

| 寄存器 | 偏移 | 访问 | 功能 |
|--------|------|------|------|
| REG5 | 0x14 | R/W | 闸门最大计数值 — **HDL 未使用**，见「已知问题」 |
| REG6 | 0x18 | R/W | 闸门低阈值 — **HDL 未使用** |
| REG7 | 0x1C | R/W | 基准时钟频率 — **HDL 未使用** |
| REG13 | 0x34 | R/W | bit0 = `reset_sig`，复位测频逻辑（高有效） |
| REG14 | 0x38 | R/W | bit0 = `gate_sig`，闸门开关 |
| REG16 | 0x40 | R | `cnt_clk_stand_reg` 基准时钟计数值 |
| REG17 | 0x44 | R | `cnt_clk_test_reg` 被测信号计数值 |
| REG18 | 0x48 | R/W | 通用寄存器，未接硬件，当前无用途 |
| REG19 | 0x4C | R | `tdc_ref_rise` 基准域闸门上升沿 TDC (0~63) |
| REG20 | 0x50 | R | `tdc_ref_fall` 基准域闸门下降沿 TDC |
| REG21 | 0x54 | R | `tdc_test_rise` 被测域闸门上升沿 TDC |
| REG22 | 0x58 | R | `tdc_test_fall` 被测域闸门下降沿 TDC |
| REG23 | 0x5C | R/W | 时间戳引擎控制：bit0 = 使能，bit1 = 复位 |
| REG24 | 0x60 | R/W | `edge_skip`，每 N+1 个边沿采一次 |
| REG25 | 0x64 | R | FIFO 状态：bit[10:0] = 条目数，bit11 = 满标志 |
| REG26 | 0x68 | R/W | FIFO 读地址 [9:0] |
| REG27 | 0x6C | R | FIFO 读数据：32 位粗计数 |
| REG28 | 0x70 | R | FIFO 读数据：6 位 TDC 细值 |

未列出的寄存器为 AXI 模板生成的通用读写寄存器，未连接任何硬件。

### Counter_Sig — 基地址 0x43C00000

| 寄存器 | 偏移 | 访问 | 功能 |
|--------|------|------|------|
| REG0 | 0x00 | R | bit0 = `CTR_STATUS0` |
| REG1 | 0x04 | R | bit0 = `CTR_STATUS1` |
| REG2 | 0x08 | R | bit0 = `CTR_START_T` |
| REG3 | 0x0C | R/W | bit0 = `CTR_PRIREF` |
| REG4 | 0x10 | R/W | bit0 = `CTR_REF_CLOCK` |
| REG5 | 0x14 | R/W | bit0 = `CTR_OCXO` |

### AXI DMA — 基地址 0x40400000

标准 `axi_dma` v7.1 寄存器组，S2MM 通道映射到 DDR (0x00000000, 1G)。当前未使用。

## 通信接口

### TCP（当前唯一可用接口）

| 参数 | 值 |
|------|------|
| IP | 192.168.1.115（静态） |
| 端口 | 5025 |
| MAC | 00:0a:35:00:01:02 |
| 接收缓冲 | 1500 字节 |

命令以 `\n` (0x0A) 结尾，逐字符精确匹配，区分大小写。完整命令集与响应见 [上位机通信协议](protocols/上位机通信协议.md)。

发送 `quit` 断开连接。

### UART

`uart.c` 实现了中断接收和一套命令解析（9600 8N1，以 0x0A 为帧结束），但 `init_uart()` 和 `uart_cycle()` 在工程中**没有任何调用点**，该接口当前未生效。

## 编译和部署

### Vivado

```bash
vivado top_cymometer.xpr
```

1. Generate Bitstream
2. File → Export → Export Hardware（勾选 include bitstream）

修改 `ip_repo/` 下的 IP 源码后，需要在 IP Catalog 中刷新并升级 BD 中的 IP 实例，再重新综合。

### SDK

1. 导入 `FreqCounterOS` 项目
2. 编译：`make -C FreqCounterOS/Debug`
3. Create Boot Image：FSBL + `ps_wrapper.bit` + `FreqCounterOS.elf` → `BOOT.bin`
4. 将 `BOOT.bin` 与 `FREQ.TXT` 拷入 SD 卡根目录，从 SD 卡启动

`sd_card/` 目录存放了当前使用的启动镜像和频率配置文件。

## 项目文件结构

```
CounterCode/
├── top_cymometer.xpr              Vivado 工程
├── ip_repo/
│   ├── Counter/Counter_1.0/       测频 IP
│   ├── Counter_Sig/Counter_Sig_1.0/   控制信号 IP
│   └── top_cymometer_ip_1.6/      旧版 IP（已弃用）
├── top_cymometer.srcs/
│   ├── constrs_1/new/top_cymometer.xdc    管脚与时序约束
│   ├── sim_1/new/tb_top_cymometer.v       测试平台
│   └── sources_1/bd/ps/           Block Design
├── top_cymometer.sdk/
│   ├── FreqCounterOS/             应用程序（使用中）
│   ├── FreqCounter/               旧版应用（已弃用）
│   └── FSBL/
├── sd_card/                       BOOT.bin + FREQ.TXT
├── protocols/上位机通信协议.md
├── hardware/                      硬件原理图 PDF
└── README.md
```

## 已知问题与未完成项

以下为代码现状与设计意图的偏差，记录于此供后续处理。

### 1. 闸门参数寄存器未接入硬件

`SetGate()` 计算并写入 REG5 (`cntgatemax`)、REG6 (`cntgatelow`)、`SetClkFsFreq()` 写入 REG7，但这三个寄存器在 `Counter_v1_0_S_AXI.v` 中只有自读自写，从未连接到 `top_cymometer`。闸门时长实际完全由软件 `usleep(GATE_TIME × 1000)` 决定，硬件不参与定时。这意味着闸门精度受 FreeRTOS 调度和中断延迟影响。

### 2. `INIT` 命令为无超时的忙等待

寄存器读错的问题已修复：`InitStartT()` 现通过 `ReadSTARTT()` 读取 Counter_Sig 的 REG2（此前误读 Counter 的 REG18，一个未连接硬件的空寄存器，导致循环条件永不成立）。

但 `while(1)` 等待 `CTR_START_T` 变为 1 的结构保留，既无超时也无 sleep。若外部触发信号始终不来，该命令仍会占满 CPU 并阻塞所在的 TCP 连接直到设备复位。`READ:TIME?` 轮询 `START_T_END` 的循环同理。

### 3. 部分命令无响应

TCP 路径下 `*RST`、`*OPC?`、`CONF:FREQ <值>`、`FREQ:GATE:TIME <值>`、`START:GATE:TIME <值>`、`PPM <值>`、`INIT` 执行后不向客户端写回任何数据。上位机若按「每条命令必有响应」的假设实现会超时。

### 4. UART 接口未接入

见「通信接口」一节。此外 `uart_data_process()` 中多处使用未初始化的 `char *Freq` 指针并向其写入（`uart.c:144`、`:150`、`:158`），一旦启用会立即引发未定义行为。

### 5. clk_fs / clk_fx 缺少时序约束

`top_cymometer.xdc` 中没有对 `clk_fs_p` / `clk_fx_p` 的 `create_clock` 约束。实现后的 `check_timing` 报告显示 270 个寄存器引脚由 `clk_fs_p` 驱动、119 个由 `clk_fx_p` 驱动但**无时钟定义**，即 TDC、计数器、时间戳引擎的绝大部分逻辑未被时序分析覆盖。时序报告中 WNS 0.353 ns 的结论仅对已约束的 AXI 逻辑成立。

同时该文件仍保留对 `sys_clk` / `sys_rst_n` 的约束，而顶层 `ps_wrapper` 并无这两个端口。

### 6. DMA 通路已连通但两端未实现

`Counter/M_AXIS → axis_data_fifo_0 → axi_dma_0 → axi_smc → PS HP0 → DDR` 的硬件链路完整，但：

- `Counter_v1_0_M_AXIS.v` 仍是 Xilinx 模板代码，发送 8 个递增的假数据，未接 `timestamp_engine` 的 FIFO 输出
- FreqCounterOS 中没有任何 `XAxiDma` 相关代码

时间戳目前靠 AXI-Lite 逐条轮询读出，受 1024 深度 FIFO 和单次读取开销限制。DMA 通路应是为突破该瓶颈预留。

### 7. 其他

- `timestamp_engine.v` 文件头注释写 `s_axi_aclk (50MHz)`，实际 FCLK_CLK0 为 100 MHz（端口注释正确）
- `Counter_v1_0_S_AXI.v:1403` 的 FIFO 状态拼接 `{21'b0, ts_fifo_full, ts_fifo_count}` 共 33 位，赋给 32 位时最高位被截断。功能不受影响（软件只取低位）
- `FreqCounterOS/src/` 下部分 C 源文件的中文注释存在编码损坏（GBK 与 UTF-8 混编导致的乱码）。`freq_counter.c` / `freq_counter.h` 的注释已全部改为英文，其余文件（`uart.c`、`freertos_tcp_perf_server.c`）未处理

## 开发者信息

**主要开发者**: hanzheng

**创建日期**: 2024–2026

部分代码基于 Xilinx 官方示例和正点原子开源代码。

---

**最后更新**: 2026-08-14
