# 等精度测频与 TDC 闸门校正删除说明

**日期** 2026-08-18
**状态** RTL / 驱动 / SDK / 文档改动已完成，**未经综合、仿真与上板验证**（本机无 Vivado、无 C 编译器）

测频从此只剩**时间戳 + 最小二乘回归**一条路径。等精度计数及其闸门 TDC 校正整体删除，
依赖它的启动时间测量（`START_T`）与重复性测试一并取消。

> **后续（2026-08-18 当日）**：起振时间测量已在时间戳路径上重新实现，与本文删掉的
> 等精度版本没有共用代码，`CTR_START_T` 引脚与 `Counter_Sig` REG2 重新被软件读取
> （本文第 5 节末尾说的「硬件保留、软件不再读取」已不再成立）。
> 见 [晶振起振时间测量方案](晶振起振时间测量方案.md)。重复性测试仍未恢复。

---

## 1. 删了什么，留了什么

TDC 在本工程有两处用途，本次只删其中一处：

| TDC 实例 | 用途 | 处置 |
|----------|------|------|
| `ts_engine/u_tdc` | 给每条时间戳提供 8 位细值（21.0 ps/抽头） | **保留** —— 时间戳法的精度基础 |
| `eq_counter/u_tdc_test` | 校正等精度闸门两端的亚周期相位 | 删除 |

`tdc.v` 本身保留，`TdcHistogramTest` / `PrintTdcCalibTable` / `CAL:TDC?` 与
`tdc_calib.h` 码密度标定表均不受影响。

被删除的等精度路径，其不确定度就是 ±1 计数：350 MHz / 100 ms 闸门为 0.029 ppm，
而时间戳法同闸门可达 0.00004 ppm。闸门 TDC 校正因归一化基准用错（除以码数而非
被测周期），实际从未真正生效。

---

## 2. RTL 改动

### 删除的文件

- `src/eq_counter.v`（237 行）

三份副本同步删除：`ip_repo/`、`top_cymometer.srcs/sources_1/bd/ps/ipshared/a037/`、
`top_cymometer.ip_user_files/bd/ps/ipshared/a037/`。

### 修改的文件

| 文件 | 改动 |
|------|------|
| `src/counter_core.v` | 删 `eq_counter` 实例、`eq_start` 电平同步器、`rst_fs_n` / `rst_ax_n` 两个复位同步器（仅等精度使用）及全部 `eq_*` / `gate_len` / `tdc_test_*` 端口。`rst_fx_n` 保留 —— 四分频计数器仍在用 |
| `hdl/Counter_Core_v1_0.v` | 删对应互连 wire 与端口连接 |
| `hdl/Counter_Core_v1_0_S_AXI.v` | 删 `GATE_LEN` 寄存器与四个地址译码、`CTRL.EQ_START`、`STATUS.EQ_DONE/EQ_BUSY`、`TDC_GATE` 打包 |
| `sim/tb_counter_core.v` | 删 Case 4（硬件闸门验证），其余 3 个用例不变 |
| `component.xml`、`package_ip.tcl` | 从源文件清单移除 `eq_counter.v` |
| `scripts/tdc_chain_report.tcl` | 删等精度链的布局报告项 |

---

## 3. 寄存器映射变更

**地址不重排，废弃的槽位留空。** 这样 `FIFO_LEVEL` 以上的偏移全部不动，
软硬件可以分别升级。

| 偏移 | 原 | 现 |
|------|----|----|
| 0x14 | `GATE_LEN` R/W | 保留，读作 0 |
| 0x18 | `EQ_STAND` R | 保留，读作 0 |
| 0x1C | `EQ_TEST` R | 保留，读作 0 |
| 0x20 | `TDC_GATE` R | 保留，读作 0 |

位域：`CTRL.bit2`（原 `EQ_START`）、`STATUS.bit2/bit3`（原 `EQ_DONE`/`EQ_BUSY`）
改为保留读 0。`STATUS.FIFO_EMPTY` **仍在 bit4**，未上移。

**`VERSION` 保持 `0x43430101`，未递增。** 加 `PRESCALE` 时递增过一次，是因为旧
bitstream 会把新写入静默丢弃、造成 4 倍低读数且自检全过。这次情形相反：新软件
不再访问任何被删寄存器，跑在旧 bitstream 上完全正确，跑在新 bitstream 上也正确。
递增反而会强制要求两者同步更新。

---

## 4. 驱动层改动（四份副本已同步）

`Counter_Core.h`：删 `GATE_LEN`/`EQ_STAND`/`EQ_TEST`/`TDC_GATE` 偏移、
`CTRL_EQ_START`、`STAT_EQ_DONE`/`STAT_EQ_BUSY`、`TDC_RISE()`/`TDC_FALL()` 宏。
`COUNTER_CORE_TDC_NUM_TAPS` 与时间戳字段宏全部保留。

`Counter_Core_selftest.c`：读写回环测试从 3 个寄存器（`EDGE_SKIP`/`GATE_LEN`/`PKT_LEN`）
减为 2 个。

同步位置：
- `ip_repo/Counter_Core/Counter_Core_1.0/drivers/Counter_Core_v1_0/src/`
- `top_cymometer.sdk/FreqCounterOS_bsp/ps7_cortexa9_0/libsrc/Counter_Core_v1_0/src/`
- `top_cymometer.sdk/FSBL_bsp/ps7_cortexa9_0/libsrc/Counter_Core_v1_0/src/`
- `top_cymometer.sdk/ps_wrapper_hw_platform_0/drivers/Counter_Core_v1_0/src/`

---

## 5. SDK 应用层改动

### 删除的函数（`freq_counter_core.c`，共约 407 行）

| 函数 | 说明 |
|------|------|
| `RunEqualPrecision()` | 等精度测量时序 |
| `eq_effective_count()` | TDC 校正折算 |
| `ReadFr_EqualPrecision()` | 等精度测频 |
| `ReadStartT()` / `InitStartT()` | 启动时间测量 |
| `RepeatTest()` | 重复性测试（基于等精度短闸门） |
| `ReadSTARTT()` | 读 `CTR_START_T` 触发引脚，仅 `InitStartT` 使用 |

### 删除的全局量与宏

`PPM`、`START_GATE_TIME`、`START_T_TIME`、`START_T_END`、
`TDC_CORRECTION_ENABLED`、`COUNTER_SIG_REG2`。

`FREF` 与 `GATE_TIME` 保留 —— 时间戳路径依赖它们。

### 行为变化

- `SetGate()` 不再写 `GATE_LEN` 寄存器，只更新 `GATE_TIME`（时间戳法据此反算 `edge_skip`）
- `DumpCoreStatus()` 不再打印 `GATE_LEN`/`EQ_*`/`TDC_GATE`，状态位不再打印 `eqdone`/`eqbusy`
- `ReadFr()` 语义不变，仍直接转发 `ReadFr_TimestampMode()`

### SCPI 命令移除（`scpi/scpi.c`）

`START:GATE:TIME?`、`START:GATE:TIME <值>`、`PPM?`、`PPM <值>`、`INIT`、`READ:TIME?`
六条命令及其处理函数。其余命令格式与语义完全不变。

`Counter_Sig` IP 的 `CTR_START_T` 引脚与 REG2 寄存器**硬件保留**，只是软件不再读取。

---

## 6. 文档更新

| 文档 | 处理 |
|------|------|
| `README.md` | 删「等精度计数」一节（原 2.，TDC 节顺延为 2.）、寄存器表合并废弃槽位、目录树与模式选择段更新 |
| `ip_repo/.../doc/interface_spec.md` | 删 3.3 TDC_GATE 与 4.2 等精度模式两节（`PRESCALE` 仍编号 3.4，避免交叉引用失效）、寄存器表与位域表更新 |
| `protocols/上位机通信协议.md` | 删原第 6 章及 4.5 / 4.6 两节，其后章节顺延重编号（7→6 … 12→11），速查表与命令表同步，版本升至 4.0 |

`doc/` 下三份改造方案文档保留为历史记录，仅在开头加状态标注。

---

## 7. 上板前必须做的事

1. **重新打包 IP**：`ip_repo/Counter_Core/Counter_Core_1.0/package_ip.tcl`，
   或在 Vivado 中 Edit IP → Re-package。`component.xml` 已改，但 IP-XACT 的
   其他派生信息（如 GUI 参数）未逐项复核
2. **重新生成 BD 的 IP 输出产物**。`top_cymometer.srcs/sources_1/bd/ps/ip/ps_Counter_Core_0_0/`
   下的 `ps_Counter_Core_0_0.xml` 仍按旧文件清单引用 `../../ipshared/a037/src/eq_counter.v`，
   同目录的 `_sim_netlist.v` 也还是含 `eq_counter` 的旧综合产物。两者都是 Vivado 生成的，
   不要手工改 —— 在 BD 中 Reset Output Products → Generate Output Products 即可重建
3. **重新综合并生成 bitstream** —— BD 读取的 `ipshared` 副本已同步
4. **SDK 侧重新生成 BSP**（五份驱动头副本已同步，但 BSP 编译产物未清理）
5. **确认上位机**不再发送已删除的六条 SCPI 命令

---

## 8. 未验证事项

- 本机无 Vivado、无 iverilog、无 C 编译器，**所有 RTL 与 C 改动均为人工核对**，
  未经编译、综合或仿真
- 已交叉核对：头文件声明与实现一一对应、无孤儿静态函数、无对已删符号的残留引用
- `tb_counter_core.v` 的其余 3 个用例未实际运行
