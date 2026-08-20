# 频率计项目 (Top Cymometer)

## 项目概述

基于 Xilinx Zynq-7000 的高精度频率计。PL 侧用 Verilog 实现测频核心（时间戳引擎 + TDC 亚周期插值），PS 侧运行 FreeRTOS + lwIP，通过 TCP 提供 SCPI 风格的命令接口。

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
| `clk_10m` | 输入 | V5 | LVCMOS33 | 外部 10 MHz 基准，用于校准 `clk_fs` |

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
│   └── src/cdc.v                   复位同步 / 电平同步 / 计数器跨域
└── hdl/Counter_Core_v1_0_M_AXIS.v  64 位时间戳流 → axis_data_fifo → DMA
```

与旧 `Counter` IP 的三点结构差异：

- **测量逻辑从 S_AXI 中剥离**。旧版把 `top_cymometer` 实例化在 S_AXI 内部，
  1505 行里 1300 行是模板生成的 100 个通用寄存器，实际只用了十几个
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
├── net/tcp_server.c                    SCPI over TCP 服务器（socket 收发 + 组行）
├── scpi/scpi.c                         SCPI 命令表与分发
├── freq_counter_core/                  测频层（对接 Counter_Core，当前使用）
│   ├── freq_counter_core.c             DMA 时间戳 / 回归 / SD 卡校准
│   └── freq_counter_core.h             寄存器映射、时间戳字段宏
├── freq_counter/                       旧测频层（对接已移除的 Counter IP，不参与编译）
├── uart/uart.c                         UART 中断驱动与命令解析（当前未接入，见「已知问题」）
├── iic_phyreset.c                      PHY 复位（可选）
└── platform_config.h
```

> `freq_counter/` 引用了已不存在的 `Counter.h` 与 `XPAR_COUNTER_0_S_AXI_BASEADDR`，
> 必须在 SDK 中 Exclude from Build，否则整个工程编译不过。

## 测量原理

测频统一走 gap-free 连续时间戳；超奈奎斯特频段靠硬件四分频进入同一条路径。

### 1. 时间戳引擎（主路径）

`ts_engine.v` 对被测信号的每个上升沿（或每 `edge_skip+1` 个）生成一条
**64 位**时间戳：32 位粗计数（基准时钟域，3.2 ns/LSB）+ 6 位 TDC 细值 +
溢出标记 + TDC 有效位 + 24 位序号。

时间戳写入 4096 深异步 FIFO，再经 AXI-Stream → `axi_dma` → HP0 连续写入 DDR。
**采集期间 CPU 不参与搬运**，软件只需启动、等完成、取数。

gap-free 的语义是"要么一条不丢，要么明确告诉你丢在哪"：每条带序号，
溢出时置 `ovf` 标记并累加 `LOST_COUNT`。软件用最小二乘拟合整段序列求频率。

实测（4096 条样本）：

| 场景 | 配置 | 结果 |
|------|------|------|
| 短跨度连续流 | 5 MHz，`edge_skip=0`，819 μs | gap-free，**0.002 ppm** |
| 长跨度测频 | 5 MHz，`edge_skip=134`，110 ms | σ = **0.000022 ppm**（10 次） |
| 长跨度测频 | 99 MHz，`edge_skip=2684`，111 ms | σ = **0.0000375 ppm**（10 次） |

99 MHz 下 `edge_skip=0` 不可行（792 MB/s 超 HP0 带宽），见「已知问题 2.2」。

### 2. TDC 亚周期插值

`tdc.v` 用 CARRY4 进位延迟链，采样后统计温度计码中 1 的个数
（popcount，天然免疫气泡码；优先编码器会锁到气泡上）。

早期版本实测"有效分辨率约 133 ps/抽头"，根因是延迟链级联误接在 `CO[0]`
（通用布线）而非专用进位输出 `CO[3]`，另有 `O` 输出反相未补偿、
首级信号未走 `CYINIT` 两处错误。三处修复后码密度实测 **21.0 ps/抽头**。

但 64 抽头总跨度仅 1.35 ns，只覆盖 3.2 ns 基准周期的 42%，其余样本饱和，
故延迟链已加长至 **256 抽头**（`tdc_value` 8 位，流水线 5 级）。

推导过程与数据见 [interface_spec.md 第 7 节](ip_repo/Counter_Core/Counter_Core_1.0/doc/interface_spec.md)。

### 模式选择

只有一条测频路径。`ReadFr_TimestampMode()` 按参考频率 `FREF` 决定是否开硬件四分频：

```
safe_limit = (f_s / 2) × 0.9 = 140.625 MHz     // 奈奎斯特的 90%
FREF >  safe_limit  →  PRESCALE.DIV4 = 1，被测信号四分频，结果乘 4
FREF <= safe_limit  →  PRESCALE.DIV4 = 0，直接送引擎
```

被测信号必须在基准时钟域可采样（高、低电平各长于 3.2 ns），四分频把超奈奎斯特的输入
拉回这个窗口。分频不损失精度：分频后的上升沿**就是**输入的上升沿，只多一级触发器的
固定延迟，而该延迟在最小二乘斜率里完全抵消。上限与约束见
[interface_spec.md 3.4](ip_repo/Counter_Core/Counter_Core_1.0/doc/interface_spec.md)。

等精度法及其闸门 TDC 校正已整体删除：它的不确定度就是 ±1 计数，350 MHz / 100 ms 闸门为 0.029 ppm，
而时间戳法同闸门可达 0.00004 ppm。

时间戳法按 `GATE_TIME` 自适应设置 `edge_skip`，让 4096 条样本铺满整个闸门时间。

**`edge_skip` 是提精度的手段，不是降速妥协**：回归精度由序列覆盖的时间跨度
决定，样本数固定时跨度拉长多少倍、精度就好多少倍。0.82 ms 跨度理论精度
约 0.009 ppm，铺满 110 ms 则可达 0.0001 ppm 量级。

但两类用途取舍相反 —— 测频率值应把跨度拉满；做相位噪声或 Allan 方差分析
则必须 `edge_skip = 0`，需要每个边沿的连续序列。后者才是 gap-free 真正
不可替代之处，等精度法完全做不到。

## 基准时钟校准

实际 OCXO 输出与标称 312.5 MHz 存在偏差，可将实测值写入 SD 卡根目录的 `FREQ.TXT`（纯十进制 Hz 数字，如 `312500000`）。

上电时 `LoadClkFsFreq()` 挂载 SD 卡读取该值。运算时用哪个值由 `CTR_STATUS0` 决定（`GetClkFsFreq()`）：

| CTR_STATUS0 | 使用的基准频率 |
|-------------|----------------|
| 1 | SD 卡中的校准值 |
| 0 | 理想值 312 500 000 Hz |

SD 卡缺失或解析失败时回退到理想值。

### 用外部 10 MHz 自动校准

`FREQ.TXT` 里的值不必手工填。把一路标准 10 MHz 接到 `clk_10m`（V5），上位机先发一条
`CAL:REF:PREP`、再发一条 `CAL:REF?`，固件就会把它送进时间戳引擎测一次，反推出 `clk_fs`
的实际频率并写回 SD 卡。

`CAL:REF:PREP` 置 `CTR_REF_CLOCK = 1`、`CTR_PRIREF = 0`，**这一步不能省**：板上这一路
10 MHz 同时接到 LMK5B12204 的 `PRIREF_P` / `PRIREF_N`，`CTR_PRIREF` 为高时 PLL 会把
312.5 MHz 直接锁到它上面，此后测出来必然是精确的 312.5 MHz —— 要校准的那个偏差被锁没了，
而结果看上去完全正常。两个引脚上电都是 1。
校准固定用 1 s 闸门（与 `FREQ:GATE:TIME` 无关，内部临时覆盖后还回），耗时约 1.1 秒。
命令要求 `CTR_STATUS0` 与 `CTR_STATUS1` 都为 1，否则不做任何测量；响应是 `1`（已写入 SD 卡）
或 `0`（任何失败），反推出的频率值打印在串口。

校准做完后发一条 `CAL:REF:LOCK` 把 `CTR_PRIREF` 置回 1（`CTR_REF_CLOCK` 保持 1），外部
10 MHz 重新送到 `PRIREF_P` / `PRIREF_N`，PLL 把 312.5 MHz 锁定到它上面。这是
`init_freqcounter()` 的上电状态，也是平时测量时该待的状态 —— `CAL:REF:PREP` 只负责断开，
不会自己接回来。重新锁定需要时间，发完留一点间隔再测。

原理是把比值的两端对调 —— 引擎测的始终是"输入的一个周期里装得下多少个 `clk_fs` 周期"，
平时 `clk_fs` 是已知的一侧，换成一个按定义精确的 10 MHz 源之后，拟合结果就成了对 `clk_fs`
自身的测量：

```
f_s,actual = 312 500 000 × 10 000 000 / f_meas
```

`f_meas` 是软件按标称 312.5 MHz 算出的那个"10 MHz"读数，偏高说明 `clk_fs` 实际偏慢。

推算值必须落在 **312.49 ~ 312.51 MHz** 之内才写卡：没接信号、接错频率、或者烧的是不带
`SRC_SEL` 的旧 bitstream，这三种情况都会算出一个外观合理的数字，写进去之后每次测频都按
错误基准偏移。

当前正在使用的基准频率可以用 `CAL:REF:VAL?` 读回，格式与 `FREQ:GATE:TIME?` 一样是
53230A 科学计数法（`+3.12500000000000E+008`）。

校准值仍然只在 `CTR_STATUS0` 为高时参与运算，这一点没变。推导与实现细节见
[interface_spec.md 第 8 节](ip_repo/Counter_Core/Counter_Core_1.0/doc/interface_spec.md)。

## 起振时间测量

测晶振从上电到频率稳定所需的时间，方法出自 Staffan Johansson,
*Start-up Measurements on Oscillators*, Pendulum Instruments White Paper No.2, Nov 2007：
用零死区连续时间戳记录整个上电暂态，事后还原 f(t) 曲线，读出频率进入容差带的时刻。
论文用电容把电源上升沿耦合进测量输入充当 time 0，本机用独立的 `CTR_START_T`（J14）触发脚。

**两段式**，因为触发发生在两条命令之间：

```
CONF:FREQ 10000000       晶振标称频率
PPM 3                    容差 3 ppm
STARTUP:SPAN 33          采集跨度 ms
STARTUP:WIN 10           目标时间分辨率 µs（默认值，可省）

[夹具] 断开 DUT 的 VCC     CTR_START_T 跟着变低
SIG:STARTT?         → 0  轮询到 0 再往下走，供电轨放电不是瞬时的
STARTUP:INIT             纯写指令，无响应；下位机随即开始监测触发
                         ⚠ 至少等 5 ms 再合 VCC
[夹具] 合上 DUT 的 VCC     CTR_START_T 拉高，测量从这一刻起算
STARTUP:TIME?            阻塞到算完
             → 3.4720    起振时间，ms
```

`SIG:STARTT?` 那一步不能省：DUT 去耦电容加负载决定了 VCC 的衰减速度，从 2.5 V 跌到
LVCMOS25 的输入门限约 1.7 V 可能要几毫秒到几百毫秒。断开后立即发 `STARTUP:INIT`
往往仍读到高电平，测量被拒，`STARTUP:TIME?` 返回 `-3`。若该信号一直读不到 0，
说明夹具断开 VCC 时没把节点下拉到地，J14 处于高阻态 —— 需要加下拉电阻。

`STARTUP:INIT` 必须立即返回，否则上位机没机会去合 VCC，所以测量跑在独立的
FreeRTOS 任务上：

1. `StartupArm()` 校验参数与触发电平，通知任务后立即返回
2. 任务按 `FREF` 与跨度反算 `EDGE_SKIP`，**先** arm DMA（`TS_EN = 0` 时引擎不向下游
   吐数据，通道干等 TVALID，所以提前 arm 是安全的）
3. 不让出 CPU 地忙轮询 `CTR_START_T`，检出后只用两次 AXI 写锚定 t = 0
   （`TS_RST` 归零 coarse，`TS_EN` 开始采集）—— t = 0 不确定度约 1~3 µs
4. 采满 65535 条后按 `STARTUP:WIN` 折算出的条数切成非重叠窗口，逐窗口最小二乘得 f(t)
5. 报告频率首次进入 ±`PPM` **并连续保持 3 个窗口**的那个窗口的中点时刻
6. `StartupWait()`（即 `STARTUP:TIME?`）取回结果

第 5 步的保持条件不是可选的：起振过程中频率是振荡收敛的，单点穿越窗口就判定会显著低估。

任务的两个优先级都是刻意的：空闲时 = SCPI 任务（2），使 `StartupArm()` 里的通知不抢占
调用者、真正做到立即返回；工作时 = 4，高于 lwIP 的 tcpip 线程（3），使触发忙轮询不被
打断 —— tick 是 10 ms，让出一次就可能给毫秒级的起振时间引入 100% 误差。代价是
**从 `STARTUP:INIT` 到测量结束设备不响应网络**，而这段时间上位机本来就只在操作夹具。

同理，arm 路径上不做任何串口输出：5 行 `xil_printf` 在 115200 下就是 20 ms，
比继电器合闸还慢。配置信息一律在采集完成后才打印。

与普通测频路径的关键差别在采集时序。`CaptureTimestamps()` 先脉冲 `TS_RST` 再去 poison
缓冲区和配置 DMA，coarse 零点与采集起点之间隔着几百微秒；那对普通测频无所谓，
在这里会整段计入起振时间。所以 `StartupCapture()` 把所有慢操作放到触发之前。

**条数固定 65535，于是相邻时间戳的间隔 Δt = 跨度 / 65535 与被测频率无关**，
窗口条数 `N = STARTUP:WIN / Δt`、实际时间分辨率 `W = N · Δt`、频率分辨率
`δ = σ_t·√12 / (√N · W)` 也就都与频率无关 —— 同一张分辨率表对 512 kHz 和 100 MHz
同样成立。频率只决定达到目标跨度所需的 `EDGE_SKIP`。低于 512 kHz 时它触底为 0、
跨度自动拉长（32.768 kHz 得到 2 s），这恰好是音叉晶振需要的。
65535 是 `TS_PKT_LEN` 的 16 位宽给出的单次传输硬上限。

由此得到一条与直觉相反、但在产线上很要紧的结论：**固定时间分辨率时，跨度越短 δ 越好。**
`N = W · 65535 / 跨度`，跨度缩短使每个窗口装进更多条时间戳。10 µs 分辨率下，
6.5 ms 跨度给 N = 101、δ = 1.03 ppm，33 ms 给 N = 20、δ = 2.31 ppm，
而默认的 128 ms 只折合 N = 5，被夹到下限 8，分辨率退回 15.6 µs。
**没用来覆盖起振过程的跨度，是白白换掉的频率分辨率。**

还有一个加缓冲也突破不了的下限：Δt 不能小于 1/f_x，代入得
`δ_min = σ_t·√12 / (√(W·f_x) · W)`。10 MHz 器件在 W = 10 µs 时是 1.04 ppm，
所以「10 µs 分辨率 + 1 ppm 判据」在这个频率上凑不齐。判据 `PPM` 应至少取 δ 的 2 倍。

完整的三张权衡表、错误码、触发的电平语义（**必须先发命令再拉高触发**）见
[上位机通信协议第 7 章](protocols/上位机通信协议.md)。

> 上述 δ 按 σ_t ≈ 30 ps 推算，而该值反推自 **64 抽头**版本的实测数据 —— 64 抽头只覆盖
> 3.2 ns 周期的 42%，大量样本饱和在链尾，这本身就在抬高 σ_t。256 抽头尚未上板
> （已知问题 1），全周期覆盖后量化误差 21/√12 ≈ 6 ps，σ_t 有望降到 10~15 ps，
> 所有 δ 随之改善 2~3 倍。上板并重做码密度标定是把这些数字变成实测值的前提。

## 静态 IP 配置

板卡使用静态 IP（`LWIP_DHCP = 0`）。地址可写在 SD 卡根目录的 `IPCFG.TXT`，每行一个 `KEY=VALUE`，空行与 `#` 开头的行忽略：

```
IP=192.168.1.115
MASK=255.255.255.0
GW=192.168.1.1
```

上电时 `main.c` 的 `assign_ip()` 先装入编译期默认值（`192.168.1.115 / 255.255.255.0 / 192.168.1.1`），再用文件中的值覆盖：

| 情况 | 结果 |
|------|------|
| 文件读到且 `IP` 合法 | 采用文件中的地址；`MASK` / `GW` 缺失或非法时保留默认值 |
| SD 卡挂载失败、文件不存在、`IP` 缺失或非法 | 三项全部回退到默认值 |

`MASK` / `GW` 单独出错时不整体回退，是因为默认掩码与网关对同一网段仍然可用；`IP` 出错则整组丢弃，避免出现"文件里的掩码 + 默认地址"这种半套配置。

改地址只需编辑 SD 卡上的 `IPCFG.TXT` 并重新上电，不必重新编译。

## 寄存器映射

### Counter_Core — 基地址 0x43C10000

| 偏移 | 名称 | 访问 | 功能 |
|------|------|------|------|
| 0x00 | `CTRL` | R/W | bit0 `TS_EN` / bit1 `TS_RST` / bit3 `SOFT_RST` |
| 0x04 | `STATUS` | R | bit0 运行中 / bit1 溢出（粘滞）/ bit4 FIFO 空 |
| 0x08 | `EDGE_SKIP` | R/W | 每 N+1 个边沿采一条，0 = 每个都采 |
| 0x0C | `TS_COUNT` | R | 已写入 FIFO 的时间戳总数 |
| 0x10 | `LOST_COUNT` | R | 因 FIFO 满丢弃的边沿数，gap-free 成立时恒为 0 |
| 0x14 | — | — | 保留（原 `GATE_LEN`/`EQ_STAND`/`EQ_TEST`/`TDC_GATE`，等精度已删除，读作 0） |
| 0x24 | `FIFO_LEVEL` | R | FIFO 中未取走的条目数 |
| 0x28 | `VERSION` | R | 魔数 `0x43430102` |
| 0x2C | `TS_PKT_LEN` | R/W | M_AXIS 包长（拍）。**必须等于 DMA buffer 条数，填 0 会导致传输永不结束** |
| 0x30 | `PRESCALE` | R/W | bit0 `DIV4_EN`，被测信号四分频后送时间戳引擎。只能在 `TS_EN` 为低时改写 |
| 0x34 | `SRC_SEL` | R/W | bit0 `SRC_10M`，改测外部 10 MHz 基准而非 `clk_fx`。只能在 `TS_EN` 为低时改写 |

时间戳格式（64 位，DMA 写入 DDR）：

```
[63:32] coarse   clk_fs 域粗计数        [23]   ovf     此条之前发生过丢失
[31:24] tdc      TDC 相位 0~255         [22]   tdc_ok  细值有效
                                        [21:0] seq     条目序号
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
| IP | 192.168.1.115（静态，默认值，可由 SD 卡 `IPCFG.TXT` 覆盖） |
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
4. 将 `BOOT.bin`、`FREQ.TXT` 与 `IPCFG.TXT` 拷入 SD 卡根目录，从 SD 卡启动

`sd_card/` 目录存放了当前使用的启动镜像、频率配置文件和网络配置文件。

## 项目文件结构

```
CounterCode/
├── top_cymometer.xpr              Vivado 工程
├── ip_repo/
│   ├── Counter_Core/Counter_Core_1.0/   测频 IP（当前使用）
│   │   ├── hdl/                         AXI 接口层（顶层 / S_AXI / M_AXIS）
│   │   ├── src/                         测量核心（counter_core / ts_engine / tdc / cdc）
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
├── sd_card/                       BOOT.bin + FREQ.TXT + IPCFG.TXT
├── protocols/上位机通信协议.md
├── hardware/                      硬件原理图 PDF
└── README.md
```

## 已知问题与未完成项

以下为代码现状与设计意图的偏差，记录于此供后续处理。
迁移到 `Counter_Core` 后已解决的条目见本节末尾。

### 1. TDC 加长至 256 抽头，尚未上板验证

延迟链原有三处接线错误（级联误接 `CO[0]`、`O` 输出反相未补偿、
首级未走 `CYINIT`），已全部修复并上板确认：码密度里"4 的倍数"占比
从 800‰ 回到 217‰（均匀期望 250‰），分辨率从表观 133 ps 改善到
实测 **21.0 ps/抽头**。

剩余瓶颈是量程：64 抽头总跨度仅 1.35 ns，只覆盖 3.2 ns 周期的 42%，
58% 的样本饱和。已加长至 **256 抽头**（`tdc_value` 8 位、流水线 5 级、
`TDC_LATENCY = 5`，时间戳打包 `tdc` 占 `[31:24]`、`seq` 缩至 22 位）。

⚠ **256 抽头版本尚未综合与上板。** 需确认三件事：
5 级流水在 312.5 MHz 下时序收敛、`TdcHistogramTest` 显示饱和消失、
两个调用方的对齐（`edge_d4` / `free_run_cnt_d5` / `STAGES(6)`）实际正确。
验证通过并完成码密度标定后，再把 `TDC_CORRECTION_ENABLED` 置 1。

### 2. 下游 `axis_data_fifo` 不受 `TS_RST` 复位

`CTRL.TS_RST` 只能复位 IP 内部 FIFO，够不到 `axis_data_fifo_0`
（其复位在 BD 中接的是全局复位）。两个后果：

**严重版** —— 拉高 `CTRL.TS_EN` 却没 arm DMA，时间戳会灌进下游
（实测可存约 4700 条），之后每次采集都先搬这批陈货。陈货无法从数据层面
识别：`TS_RST` 把 `seq` 与 `free_run_cnt` 都归零，新旧数据同构 ——
序号连续、`delta` 正确、毒值也被完整覆盖，**所有判据全通过**。
**规矩：引擎只能在 DMA 已 armed 的前提下开启。**

**轻微版** —— 即使正常使用，每次采集也会残留一条给下次。`CaptureTimestamps()`
中有软件规避：陈货的 `coarse` 必然远大于后续新数据（时间倒流），
检测到即丢弃首条。

**硬件根治已实现**：IP 顶层新增 `stream_aresetn` 输出（低有效，由
`CTRL.TS_RST` 驱动）。在 BD 中把它连到 `axis_data_fifo_0` 的
`s_axis_aresetn`（取代全局复位），两级 FIFO 就会一起被清空。

> **BD 连线尚未完成**，需要手工改。软件规避保留作为双保险。

详见 [interface_spec.md 7.3 节](ip_repo/Counter_Core/Counter_Core_1.0/doc/interface_spec.md)。

### 2.0 启动首拍竞态导致头部多出一条（已修，待验证）

**症状**：`edge_skip` 非零的采集里，偶尔头两条只隔一个信号周期，
而其余间隔正常。后果被放大得离谱 —— `VerifyContinuity()` 用**最小** `coarse`
增量估计正常间距，这一条短间隔把阈值拉到真实间距之下，于是**后面每一个
正常间隔都被判成 gap**，整次采集被报为断裂，调用方只拟合首段。
日志特征是 `gap delta` 与 `next delta` 完全相同。

**根因**：`ts_engine.v` 里 `do_capture` 是组合逻辑，而 `ts_start` 分支的优先级
高于 `edge_hit` 分支。启动脉冲那一拍若正好来了边沿，该边沿**被写入 FIFO**，
但计数器重载走了 `ts_start` 分支而被吞掉，`skip_zero` 保持置位，下一个边沿
于是也被捕获。概率约 `f_x / f_s`，5 MHz 下约 1.6%。

**已修**：`ts_start` 分支改为在自身捕获时也执行重载（此时 `skip_limit` 尚未
加载，直接取 `edge_skip`）。软件侧另加一道防御：头两个间隔差一倍以上即丢弃
首条，对修复前烧录的 bitstream 同样有效，数据正确时不会触发。

⚠ 未上板验证。

### 2.1 `ovf_mark` 未按设计置位（待查）

时间戳 bit[23] 本应在丢弃后的第一条记录上置 1，实测恒为 0 ——
99 MHz 下确实丢了约 1580 条边沿、`LOST_COUNT = 1798`，缺口后那条仍报
`ovf = 0`。按 RTL 逻辑不该如此，定位需要仿真或 ILA。

影响可控：间隙由 `VerifyContinuity()` 的 `coarse` 增量检查捕获，不依赖该标志。
但 **`ovf` 字段当前不可信，软件不应据它判断**。

### 2.2 连续流采集的带宽上限约 50 MHz

每条时间戳 8 字节，99 MHz 即 792 MB/s，贴着 HP0 实际带宽。实测 99 MHz 下
`EDGE_SKIP = 0` 首次采集必然丢数据 —— FIFO 4096 条只够撑 41 μs，
而 DMA 首次配置就要十几微秒。

这是物理限制。更高频率必须用 `EDGE_SKIP`，而测频场景本就该那么用
（跨度换精度，见 interface_spec 5.1）。

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

TCP 路径下 `*RST`、`*OPC?`、`CONF:FREQ <值>`、`FREQ:GATE:TIME <值>`
执行后不向客户端写回任何数据。
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
  的注释已全部改为英文，其余文件（`uart.c`、`net/tcp_server.c`）未处理
- `ip_repo/Counter_Core/` 下的 RTL **未经编译或仿真验证**，功能结论均来自
  上板实测。`sim/tb_counter_core.v` 可在 Vivado xsim 中运行，但 CARRY4 在
  功能仿真中延迟为 0，TDC 部分覆盖不到

### 已解决（迁移到 Counter_Core 时）

| 原问题 | 处理 |
|--------|------|
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
