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
    ┌──────────┴──┐  ┌──────┴───────┐ │          ┌────┴──────┐
    │ Counter_Sig │  │ Counter_Core │ └──────────┤ axi_dma_0 │
    │ 0x43C00000  │  │  0x43C10000  │            │0x40400000 │
    └─────────────┘  └──────┬───────┘            └────┬──────┘
                            │ M_AXIS 64 bit           │ S_AXIS_S2MM
                            └──► axis_data_fifo_0 ────┘
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

**`Counter_Core` v1.0** (`ip_repo/Counter_Core/Counter_Core_1.0`) — 测频核心（**当前使用**）

对标 Keysight 53230A 的 gap-free 连续时间戳模型。接口与寄存器定义见
[interface_spec.md](ip_repo/Counter_Core/Counter_Core_1.0/doc/interface_spec.md)。

`hdl/` 放打包器生成的 AXI 接口层，`src/` 放测量核心（沿用旧 IP 的目录约定）。

```
hdl/Counter_Core_v1_0.v             顶层：IBUFDS + BUFG 接收 LVDS 差分时钟
├── hdl/Counter_Core_v1_0_S_AXI.v   AXI4-Lite 寄存器文件（12 个语义寄存器，不含测量逻辑）
├── src/counter_core.v              测量核心互连，统一三个时钟域的复位与 CDC
│   ├── src/ts_engine.v             gap-free 时间戳引擎 + 4096 深异步 FIFO
│   │   └── src/tdc.v               CARRY4 延迟链 TDC
│   ├── src/eq_counter.v            等精度计数 + 硬件闸门（高频退路）
│   │   └── src/tdc.v
│   └── src/cdc.v                   复位同步 / 电平同步 / 计数器跨域
└── hdl/Counter_Core_v1_0_M_AXIS.v  64 位时间戳流 → axis_data_fifo → DMA
```

与旧 `Counter` IP 的三点结构差异：

- **测量逻辑从 S_AXI 中剥离**。旧版把 `top_cymometer` 实例化在 S_AXI 内部，
  1505 行里 1300 行是模板生成的 100 个通用寄存器，实际只用了十几个
- **闸门由硬件定时**。`GATE_LEN` 是真实的 `clk_fs` 计数器预置值，不再靠软件 `usleep`
- **时间戳经 DMA 连续流出**，不再逐条轮询 FIFO

> `ip_repo/Counter/Counter_1.0/` 是被 `Counter_Core` 取代的上一版 IP，已从 BD 中移除。
> `ip_repo/top_cymometer_ip_1.6/` 是更早的版本，同样弃用。

**`Counter_Sig` v1.0** (`ip_repo/Counter_Sig/Counter_Sig_1.0`) — 控制/状态信号

`signal.v` 是纯组合直通，把 AXI 寄存器位映射到 GPIO 管脚。

> `ip_repo/top_cymometer_ip_1.6/` 是被 `Counter` 取代的旧版 IP，已不在 Block Design 中使用。

### PS 侧软件

```
FreqCounterOS/src/
├── main.c                              FreeRTOS 启动、lwIP 初始化、静态 IP 配置
├── freertos_tcp_perf_server.c          TCP 服务器 + 命令解析 (tcp_data_process)
├── scpi/scpi.c                         SCPI 命令表与分发
├── freq_counter_core/                  测频层（对接 Counter_Core，当前使用）
│   ├── freq_counter_core.c             等精度 / DMA 时间戳 / 回归 / SD 卡校准
│   └── freq_counter_core.h             寄存器映射、时间戳字段宏、TDC 开关
├── freq_counter/                       旧测频层（对接已移除的 Counter IP，不参与编译）
├── uart/uart.c                         UART 中断驱动与命令解析（当前未接入，见「已知问题」）
├── iic_phyreset.c                      PHY 复位（可选）
└── platform_config.h
```

> `freq_counter/` 引用了已不存在的 `Counter.h` 与 `XPAR_COUNTER_0_S_AXI_BASEADDR`，
> 必须在 SDK 中 Exclude from Build，否则整个工程编译不过。

## 测量原理

主路径是 gap-free 连续时间戳，等精度计数作为超奈奎斯特频段的退路。

### 1. 时间戳引擎（主路径）

`ts_engine.v` 对被测信号的每个上升沿（或每 `edge_skip+1` 个）生成一条
**64 位**时间戳：32 位粗计数（基准时钟域，3.2 ns/LSB）+ 6 位 TDC 细值 +
溢出标记 + TDC 有效位 + 24 位序号。

时间戳写入 4096 深异步 FIFO，再经 AXI-Stream → `axi_dma` → HP0 连续写入 DDR。
**采集期间 CPU 不参与搬运**，软件只需启动、等完成、取数。

gap-free 的语义是"要么一条不丢，要么明确告诉你丢在哪"：每条带序号，
溢出时置 `ovf` 标记并累加 `LOST_COUNT`。软件用最小二乘拟合整段序列求频率。

实测：4096 条连续时间戳、819 μs、**0.002 ppm**（5 MHz 被测，连续两次结果一致）。

### 2. 等精度计数（高频退路）

`eq_counter.v`。闸门由 `clk_fs` 域硬件计数器产生，宽度精确等于 `GATE_LEN`
个基准时钟周期 —— 不再依赖软件 `usleep`，基准侧因此没有 ±1 量化误差
（`EQ_STAND` 恒等于 `GATE_LEN`，可作自检）。

被测侧计数经三级同步器，用 TDC 校正闸门两端的亚周期相位：

```
f_test = f_s × (EQ_TEST + tdc_rise/64 - tdc_fall/64) / EQ_STAND
```

实测：100 ms 闸门 **0.029 ppm**，恰为 ±1 计数的理论极限。

### 3. TDC 亚周期插值

`tdc.v` 用 CARRY4 进位延迟链，采样后统计温度计码中 1 的个数
（popcount，天然免疫气泡码；优先编码器会锁到气泡上）。

**实测有效分辨率约 133 ps/抽头，一个基准周期只跨约 24 抽头**，
而非标称的 50 ps × 64。因此测 350 MHz 时延迟链盖不满一个被测周期，
`tdc_rise` 90% 以上饱和，校正退化成固定偏置 —— 等精度路径的 TDC 校正
当前默认关闭（`TDC_CORRECTION_ENABLED = 0`）。

推导过程与数据见 [interface_spec.md 第 7 节](ip_repo/Counter_Core/Counter_Core_1.0/doc/interface_spec.md)。

### 模式选择

`ReadFr()` 按参考频率 `FREF` 分流：

```
safe_limit = (f_s / 2) × 0.9 = 140.625 MHz     // 奈奎斯特的 90%
FREF >  safe_limit  →  ReadFr_EqualPrecision()  等精度 + 硬件闸门
FREF <= safe_limit  →  ReadFr_TimestampMode()   时间戳 + DMA + 最小二乘
```

时间戳法在 1/122 的时间里拿到好 14 倍的精度，但被测信号必须在基准时钟域
可采样，故高频段退回等精度法。

时间戳法自适应设置 `edge_skip`：预计边沿数超过缓冲区容量时按比例抽稀，
使采集能在闸门时间内填满缓冲区。

## 基准时钟校准

实际 OCXO 输出与标称 312.5 MHz 存在偏差，可将实测值写入 SD 卡根目录的 `FREQ.TXT`（纯十进制 Hz 数字，如 `312500000`）。

上电时 `LoadClkFsFreq()` 挂载 SD 卡读取该值。运算时用哪个值由 `CTR_STATUS0` 决定（`GetClkFsFreq()`）：

| CTR_STATUS0 | 使用的基准频率 |
|-------------|----------------|
| 1 | SD 卡中的校准值 |
| 0 | 理想值 312 500 000 Hz |

SD 卡缺失或解析失败时回退到理想值。

## 寄存器映射

### Counter_Core — 基地址 0x43C10000

| 偏移 | 名称 | 访问 | 功能 |
|------|------|------|------|
| 0x00 | `CTRL` | R/W | bit0 `TS_EN` / bit1 `TS_RST` / bit2 `EQ_START`（上升沿触发）/ bit3 `SOFT_RST` |
| 0x04 | `STATUS` | R | bit0 运行中 / bit1 溢出（粘滞）/ bit2 等精度完成 / bit3 闸门开启 / bit4 FIFO 空 |
| 0x08 | `EDGE_SKIP` | R/W | 每 N+1 个边沿采一条，0 = 每个都采 |
| 0x0C | `TS_COUNT` | R | 已写入 FIFO 的时间戳总数 |
| 0x10 | `LOST_COUNT` | R | 因 FIFO 满丢弃的边沿数，gap-free 成立时恒为 0 |
| 0x14 | `GATE_LEN` | R/W | 闸门长度，单位 `clk_fs` 周期（硬件定时器预置值） |
| 0x18 | `EQ_STAND` | R | 等精度基准计数，正常恒等于 `GATE_LEN` |
| 0x1C | `EQ_TEST` | R | 等精度被测计数 |
| 0x20 | `TDC_GATE` | R | [7:0] 闸门上升沿相位，[15:8] 下降沿相位 |
| 0x24 | `FIFO_LEVEL` | R | FIFO 中未取走的条目数 |
| 0x28 | `VERSION` | R | 魔数 `0x43430100` |
| 0x2C | `TS_PKT_LEN` | R/W | M_AXIS 包长（拍）。**必须等于 DMA buffer 条数，填 0 会导致传输永不结束** |

时间戳格式（64 位，DMA 写入 DDR）：

```
[63:32] coarse   clk_fs 域粗计数        [25]   ovf     此条之前发生过丢失
[31:26] tdc      TDC 相位 0~63          [24]   tdc_ok  细值有效
                                        [23:0] seq     条目序号
```

完整定义与实测标定见
[interface_spec.md](ip_repo/Counter_Core/Counter_Core_1.0/doc/interface_spec.md)。

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

修改 `ip_repo/Counter_Core/` 下的 RTL 后，重新打包并更新 BD：

```bash
vivado -mode tcl -source ip_repo/Counter_Core/Counter_Core_1.0/package_ip.tcl
```

随后在主工程中 Refresh IP Catalog → 对 BD 中的实例做 Upgrade IP →
Validate Design（让 M_AXIS 的 64 位宽度传播到 `axis_data_fifo_0` 与
`axi_dma_0`，这两处的 Stream Data Width 是自动参数，不能手改）→ 重新综合实现。

> 注意 IP 加入 BD 后会在 `.srcs` 下生成 `ipshared` 副本，综合读的是副本；
> 只改 `ip_repo/` 而不做 Upgrade 等于没改。

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
│   ├── Counter_Core/Counter_Core_1.0/   测频 IP（当前使用）
│   │   ├── hdl/                         AXI 接口层（顶层 / S_AXI / M_AXIS）
│   │   ├── src/                         测量核心（counter_core / ts_engine / eq_counter / tdc / cdc）
│   │   ├── sim/tb_counter_core.v        testbench
│   │   ├── doc/interface_spec.md        接口规范 + 实测标定
│   │   └── package_ip.tcl               重新打包脚本
│   ├── Counter_Sig/Counter_Sig_1.0/     控制信号 IP
│   ├── Counter/Counter_1.0/             上一版测频 IP（已弃用）
│   └── top_cymometer_ip_1.6/            更早版本（已弃用）
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
迁移到 `Counter_Core` 后已解决的条目见本节末尾。

### 1. TDC 延迟链量程不足

实测有效分辨率约 **133 ps/抽头**，一个基准周期只跨约 24 抽头，
延迟链总跨度约 1.9 ns。测 350 MHz（周期 2.86 ns）时盖不满一个被测周期，
`tdc_test_rise` 90% 以上饱和在 63，等精度的 TDC 校正退化成 +0.83 周期的
固定偏置（100 ms 闸门上表现为恒定 +9.4 Hz）。

故驱动中 `TDC_CORRECTION_ENABLED` 默认为 0。要启用需先加大 `tdc.v` 的
`NUM_TAPS`（同时加宽 `tdc_value` 与时间戳打包格式），再做码密度直方图标定。

时间戳路径不受影响 —— 5 MHz 下 `tdc_ok` 为 4096/4096，细值全程有效。

### 2. 引擎不得在 DMA 未 armed 时开启

拉高 `CTRL.TS_EN` 却没有启动 DMA 传输，时间戳会流进 `axis_data_fifo`
（实测可存约 4700 条）。`CTRL.TS_RST` 只能复位 IP 内部 FIFO，**够不到
下游缓冲**，之后每次采集都会先搬走这批陈货。

难点在于陈货无法从数据层面识别：`TS_RST` 把 `seq` 与 `free_run_cnt` 都归零，
于是新旧数据同构 —— 序号连续、`delta` 严格 62/63、`tdc_ok` 满分，
毒值填充也被完整覆盖。唯一能发现的是 `TS_COUNT` 与实际条数对不上。

硬件侧已加 `stream_en` + `pkt_limit` 双重门控，保证一次采集只发一个包、
其后数据留在内部 FIFO 等 `TS_RST` 清除。但这只防新增，清不掉已有存货。

详见 [interface_spec.md 第 7.3 节](ip_repo/Counter_Core/Counter_Core_1.0/doc/interface_spec.md)。

### 3. clk_fs / clk_fx 缺少时序约束

`top_cymometer.xdc` 中没有对 `clk_fs_p` / `clk_fx_p` 的 `create_clock` 约束。
实现后的 `check_timing` 报告显示 270 个寄存器引脚由 `clk_fs_p` 驱动、
119 个由 `clk_fx_p` 驱动但**无时钟定义**，即 TDC、计数器、时间戳引擎的
绝大部分逻辑未被时序分析覆盖。

第 2 条那个 bug 恰好落在已约束的 `aclk` 域内还能被发现；跨域路径目前
完全是黑的，可能还有同类问题潜伏。补约束后应重跑 `report_timing_summary`。

同时该文件仍保留对 `sys_clk` / `sys_rst_n` 的约束，而顶层 `ps_wrapper`
并无这两个端口。

### 4. DMA 仍是 simple mode

每次传输结束都需要 CPU 重新配置，两次传输之间存在 20~100 μs 的空档，
期间产生的边沿会丢失。当前用法（单次采满缓冲区即停）不受影响，
但要做真正不间断的长序列采集必须上 Scatter-Gather 描述符环。

配套观察：`axis_data_fifo_0` 实测只能吸收约 4 条数据（应为默认的分布式
RAM 浅深度配置），几乎不提供缓冲，建议改 BRAM 模式并加深。

### 5. 部分命令无响应

TCP 路径下 `*RST`、`*OPC?`、`CONF:FREQ <值>`、`FREQ:GATE:TIME <值>`、
`START:GATE:TIME <值>`、`PPM <值>`、`INIT` 执行后不向客户端写回任何数据。
上位机若按「每条命令必有响应」的假设实现会超时。

### 6. UART 接口未接入

见「通信接口」一节。此外 `uart_data_process()` 中多处使用未初始化的
`char *Freq` 指针并向其写入（`uart.c:144`、`:150`、`:158`），
一旦启用会立即引发未定义行为。

### 7. 其他

- `init_freqcounter()` 中目前包含自检、状态转储与 `TimestampTest`，
  属于上电调试代码。信号缺失时会撞满 2 秒超时并阻塞 TCP 任务
  （Xilinx 的 `usleep` 是忙等，不让出 CPU），产品构建应移除或用宏关闭
- `FreqCounterOS/src/` 下部分 C 源文件的中文注释存在编码损坏
  （GBK 与 UTF-8 混编导致的乱码）。`freq_counter_core/` 与 `freq_counter/`
  的注释已全部改为英文，其余文件（`uart.c`、`freertos_tcp_perf_server.c`）未处理
- `ip_repo/Counter_Core/` 下的 RTL **未经编译或仿真验证**，功能结论均来自
  上板实测。`sim/tb_counter_core.v` 可在 Vivado xsim 中运行，但 CARRY4 在
  功能仿真中延迟为 0，TDC 部分覆盖不到

### 已解决（迁移到 Counter_Core 时）

| 原问题 | 处理 |
|--------|------|
| 闸门参数寄存器未接硬件，闸门靠 `usleep` | `GATE_LEN` 接入硬件计数器，`EQ_STAND` 恒等于 `GATE_LEN` |
| `INIT` 无超时忙等 | `InitStartT()` 加 10 s 触发等待上限，等精度轮询加超时 |
| DMA 通路两端未实现 | M_AXIS 接真实时间戳流，软件走 `XAxiDma` simple mode |
| 时间戳靠 AXI-Lite 逐条轮询 | 改 DMA 直入 DDR，4096 条 819 μs |
| 边沿检测方向与命名相反 | 修正为上升沿 |
| TDC 接同步器输出，测不到相位 | 改接原始异步信号 |
| 粗计数与 TDC 不在同一流水级 | 逐拍对齐，实测 `delta` 62/63 交替验证 |
| FIFO 状态拼接 33 位赋给 32 位被截断 | 状态位拆到 `STATUS` / `FIFO_LEVEL` 两个寄存器 |

## 开发者信息

**主要开发者**: hanzheng

**创建日期**: 2024–2026

部分代码基于 Xilinx 官方示例和正点原子开源代码。

---

**最后更新**: 2026-08-14
