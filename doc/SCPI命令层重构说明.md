# SCPI 命令层重构说明

日期：2026-08-14
范围：`top_cymometer.sdk/FreqCounterOS/src/`

---

## 1. 背景

重构前，串口和网口各自维护一份命令解析器：

- `uart.c` → `uart_data_process()`
- `freertos_tcp_perf_server.c` → `tcp_data_process()`

两者都是用逐字符比较堆出来的巨型 if-else 链：

```c
else if(Tcp_Rec_Buf[0] == 'M' && Tcp_Rec_Buf[1] == 'E' && Tcp_Rec_Buf[2] == 'A'
     && Tcp_Rec_Buf[3] == 'S' && Tcp_Rec_Buf[4] == ':' && ... )
```

由此带来三个问题：

1. **命令集已经漂移。** `CONF:FREQ`、`PPM`、`START:GATE:TIME`、`INIT`、`READ:TIME?`
   这 8 条命令只有 TCP 侧实现，串口侧没有；同名命令的响应也不一致。
2. **同一功能两份实现。** 例如闸门时间的解析，TCP 侧用一行 `atof()`，
   串口侧用了嵌套 7 层 if 手工逐位累加（`uart.c` 原第 162–258 行）。
3. **难以扩展。** 新增一条命令要在两个文件里各写一遍，且极易漏掉一侧。

## 2. 重构后的结构

```
src/
  scpi/scpi.h              对外只暴露 scpi_execute() 和 SCPI_RESP_MAX
  scpi/scpi.c              命令表 + 匹配 + 分发 + 全部 handler
  uart/uart.c              仅负责：中断收字节、按 0x0A 成帧、把整行交给 scpi_execute
  freertos_tcp_perf_server.c   仅负责：socket 读、把整行交给 scpi_execute、write 回响应
```

传输层与命令语义彻底分离。新增命令只需要在 `scpi.c` 的一张表里加一行，
两个通道同时生效。

代码量变化：

| 文件 | 重构前 | 重构后 |
| --- | --- | --- |
| `freertos_tcp_perf_server.c` | 486 行 | 253 行 |
| `uart/uart.c` | 344 行 | 152 行 |
| `scpi/scpi.c` | — | 269 行（新增） |
| `scpi/scpi.h` | — | 35 行（新增） |

两个 `*_data_process()` 现在各自只剩 6 行。

### 接口

```c
#define SCPI_RESP_MAX 384

int scpi_execute(const char *line, char *resp);
```

- `line`：NUL 结尾的一行命令，尾部的 CR / LF 可有可无。
- `resp`：调用方提供的缓冲区，必须是 `SCPI_RESP_MAX` 字节。
- 返回值：响应字节数；**返回 0 表示无需响应**（无法识别的命令也返回 0，
  与重构前"静默忽略"的行为一致）。

`SCPI_RESP_MAX` 取 384 的原因：`ReadFr()` 用 `"%.5f"` 把 double 写进这个缓冲区，
自身没有任何长度保护。当测量异常导致结果超出正常频率范围时，
`%.5f` 最长可展开到约 320 个字符，384 覆盖了这个最坏情况
（重构前是 `char[300]`，其实不够）。

### 命令匹配规则

匹配一条表项时，要求命令名之后紧跟**行尾或空格**，否则不算命中。
这一条规则解决了所有前缀冲突，且**与命令表的排列顺序无关**：

| 输入 | `FREQ:GATE:TIME?` | `FREQ:GATE:TIME` |
| --- | --- | --- |
| `FREQ:GATE:TIME?` | 命中 | 名字后是 `?`，不是空格或行尾 → 不命中 |
| `FREQ:GATE:TIME 1.5` | 第 15 个字符是空格而非 `?` → 不命中 | 命中，参数 `1.5` |

`READ?` 与 `READ:TIME?`、`CONF:FREQ?` 与 `CONF:FREQ`、`PPM?` 与 `PPM` 同理。

命中后跳过名字与其后的所有空格，把剩余部分作为参数交给 handler。
参数由 `atoi()` / `atof()` 解析，它们遇到 CR / LF 会自然停止，因此不需要预先截断行尾。

另外，比较时会把输入折叠为大写，因此**命令现在大小写不敏感**
（重构前是大小写敏感的）。

## 3. 命令参考

统一后两个通道支持完全相同的 21 条命令。

| 命令 | 参数 | 响应 | 说明 |
| --- | --- | --- | --- |
| `*IDN?` | — | `HALLIWAY,FREQ-COUNTER,C1804,1.00-1.00-01-1\n` | 设备识别 |
| `*RST` | — | 无 | 已识别但未实现 |
| `*OPC?` | — | 无 | 已识别但未实现，见 §5 |
| `READ?` | — | `%.5f\n` | 触发一次测量并返回频率（Hz） |
| `MEAS:FREQ?` | — | `%.5f\n` | 同 `READ?` |
| `CONF:FREQ?` | — | `%d\n` | 查询参考频率 `FREF`（Hz） |
| `CONF:FREQ` | 整数，Hz | 无 | 设置 `FREF`，决定 `ReadFr()` 走时间戳法还是等精度法 |
| `FREQ:GATE:TIME?` | — | `+d.14dE±ddd\n` | 查询闸门时间，**单位秒**，53230A 格式 |
| `FREQ:GATE:TIME` | 浮点，**秒** | 无 | 设置闸门时间，并调用 `SetGate()` 更新硬件 |
| `START:GATE:TIME?` | — | `%.3f\n` | 查询启动闸门时间，**单位毫秒** |
| `START:GATE:TIME` | 浮点，**秒** | 无 | 设置启动闸门时间（不下发硬件） |
| `SIG:PRIREF` | `0` / `1` | `1\n` | 内外参考选择 |
| `SIG:REFCLOCK` | `0` / `1` | `1\n` | 参考时钟选择 |
| `SIG:OCXO` | `0` / `1` | `1\n` | OCXO 控制 |
| `SIG:STATUS0?` | — | `0\n` / `1\n` | 状态位 0（决定用 SD 卡校准频率还是理想 312.5MHz） |
| `SIG:STATUS1?` | — | `0\n` / `1\n` | 状态位 1 |
| `PPM?` | — | `%d\n` | 查询 ppm 判定阈值 |
| `PPM` | 整数 | 无 | 设置 ppm 判定阈值 |
| `INIT` | — | 无 | 启动锁定时间测量（`InitStartT()`，阻塞） |
| `READ:TIME?` | — | `%.3f\n` | 返回锁定时间（毫秒），会阻塞等待测量完成 |
| `CAL:TDC?` | 整数轮数，省略为 32 | `tdc_calib.h block printed on the serial console\n` | 重测 TDC 延迟链，把 `tdc_calib.h` 的替换内容打到**串口**，见下 |

### `CAL:TDC?` 的输出走串口，不走响应缓冲

256 项表约 13 kB，而 `SCPI_RESP_MAX` 只有 384 字节，所以表用 `xil_printf` 直接打到串口控制台，
SCPI 响应只回一句提示。**从 TCP 发这条命令，表仍然出现在串口**，不在 TCP 回包里。

用法：把 `===== paste into tdc_calib.h =====` 到 `===== end =====` 之间的内容
粘贴到 `tdc_calib.h`，覆盖原有的 `TDC_CALIB_*` 宏和 `tdc_phase_ts[]` 数组，重新编译即可。

两个前提：

- **被测信号必须与 `clk_fs` 失谐**。精确整数比（如 5 MHz 对 312.5 MHz 恰好 62.5）会让相位
  只在两个点上跳，直方图退化。命令会检测覆盖的码数，不足时拒绝输出而不是打一张看似合理的错表。
- 命令**阻塞数秒**（32 轮 × 4096 条采集），期间占用该链路。

存在的理由：进位链延迟随温度变化几个百分点，比这张表要修正的非线性还大，
所以表只在标定时的热态附近有效。能在热机的板子上就地重测，是表与硅片匹配的前提。

### `FREQ:GATE:TIME?` 的 53230A 格式

为对齐 Keysight 53230A，该查询的响应改为科学计数法、**单位秒**：

```
FREQ:GATE:TIME 0.1      → 内部 GATE_TIME = 100（毫秒）
FREQ:GATE:TIME?         → 返回 "+1.00000000000000E-001"
```

格式为：正负号 + 1 位整数 + 14 位小数 + `E` + 指数符号 + 3 位指数。
C 标准只要求 `%E` 的指数**至少两位**（newlib 正好给两位），所以 `scpi_format_53230()`
先用 `%+.14E` 拿到尾数，再把指数按固定 3 位重新输出，否则会少一位变成 `E-01`。

这是一次协议变更：改动前返回的是毫秒的 `%.3f`（`"100.000"`），上位机需同步。

`START:GATE:TIME` 未随之改动，仍是**设置用秒、查询返回毫秒的 `%.3f`**。
这条命令 53230A 没有对应项，且只服务于 `INIT` 流程，故保持原样。

### `SIG:*` 设置命令的参数校验

三条 `SIG:` 设置命令只接受 `0` 或 `1`。参数是其它内容（包括没有参数）时，
**不执行任何动作也不返回任何响应**——这是重构前的行为，予以保留。

## 4. 重构过程中消失的缺陷

以下都是被替换掉的那段代码自身的问题，随重写自然消失，不是额外改动：

| 位置 | 问题 |
| --- | --- |
| `uart.c` 原 144/150/158 行 | `char *Freq;` 未初始化即传给 `sprintf` 写入——野指针写。共三处 |
| `uart.c` 原 159 行 | `sprintf(Gate,"%d\n",GATE_TIME)`，用 `%d` 格式化 `double`，未定义行为 |
| `uart.c` 原 146 行 | `printf(Freq)` 把数据当格式化字符串 |
| `freertos_tcp_perf_server.c` 原 277/304/337/444 行 | `sprintf(&Fref, ...)` 对数组多取了一次地址，类型错误 |
| `freertos_tcp_perf_server.c` 原 153 行 | `memcpy(Tcp_Rec_Buf, 0, sizeof(...))`，本意是 `memset`，实际从地址 0 拷贝 1500 字节 |

另外为了让新解析器能正确工作，在接收循环里补了两处（这是新解析器的前提条件）：

- **接收缓冲区补 NUL 终止。** 新解析器扫描到 NUL 为止，而原代码从不终止字符串。
  TCP 侧改为 `read(sock, buf, RECV_BUF_SIZE - 1)` 后写 `buf[n] = '\0'`；
  串口侧在 `uart_cycle()` 里处理前写 `Uart_Rec_Buf[Uart_RxState & 0x3fff] = 0`
  （中断只在收到 0x0A 时置完成标志，不写 NUL）。
- **`n <= 0` 的判断提到使用缓冲区之前**（原来在 `strncmp` 之后）。

## 5. 行为变化

TCP 通道的响应行为**逐条未变**。以下变化只影响串口通道。

原本两个通道对同一命令的响应就不一致，统一时一律采用 TCP 侧的行为——
TCP 是上位机实际在用的通道，改动有真实风险；
而串口通道目前是死代码（`main.c` 从未调用 `init_uart()` / `uart_cycle()`），改动无风险。

| 命令 | 原串口响应 | 统一后 |
| --- | --- | --- |
| `*RST` | `1\n` | 无响应 |
| `*OPC?` | `1\n` | 无响应 |
| `FREQ:GATE:TIME <值>` | `1\n` | 无响应 |
| `FREQ:GATE:TIME?` | `%d`（格式化 bug） | `+d.14dE±ddd\n` |

此外，串口通道现在自动获得了原本只有 TCP 有的 8 条命令，
两个通道也都获得了大小写不敏感的解析。

**待决策：`*OPC?` 目前两边都不响应。** 按 SCPI 标准查询命令必须有响应，
上位机若发这条会一直等待。改法是把命令表里的 `cmd_noop` 换成返回 `"1\n"` 的 handler，
但这会改变 TCP 侧现有行为，因此本次未做。

## 6. 构建步骤

`Debug/sources.mk` 是 Xilinx SDK 自动生成的，当前只列了
`src`、`src/freq_counter`、`src/uart` 三个目录。

**新增的 `src/scpi` 需要让 SDK 重新扫描才会纳入编译：**

1. 在 SDK 中选中 `FreqCounterOS` 工程，按 **F5**（Refresh）
2. Project → **Clean**
3. Project → **Build**

跳过第 1 步会在链接阶段报 `undefined reference to 'scpi_execute'`。

## 7. 验证状态

| 项目 | 状态 |
| --- | --- |
| `uart.c` 编译 | **通过**。SDK 自动构建过一次，`uart.d` 显示新的 `../scpi/scpi.h` 路径解析正确，`uart.o` 已重新生成 |
| 命令路由逻辑 | **通过**。把 `scpi_match()` 与分发循环逐字符移植到 Python，跑 41 个用例（原两侧全部 20 条命令、前缀冲突组合、CRLF/LF/无行尾、大小写、多余空格、5 个应当拒绝的输入），0 失败，且无表项被前面的条目遮蔽 |
| `scpi.c` 编译 | **未验证**。重构时机器上没有可用的 ARM 工具链 |
| 硬件实测 | **未做** |

## 8. 未处理项

以下问题在本次范围之外，代码里依然存在：

- **测量过程没有互斥。** `ReadFr()` 的流程是
  `SetRESET → SetGATE(1) → 延时 → SetGATE(0) → 读计数器`，
  两个连接并发调用会互相打断闸门。
- **`accept()` 后传的是栈变量地址**（`freertos_tcp_perf_server.c`
  `start_application()` 中的 `&new_sd`），多连接时会竞争。
- **`Tcp_Rec_Buf` 是全局单缓冲**，而每个连接一个线程。
- **忙等。** `InitStartT()` 的轮询循环、`READ:TIME?` 里等 `START_T_END` 的空循环
  都不让出 CPU，且 `START_T_END` 没有 `volatile`；
  测量中的 `usleep()` 在裸机库里也是忙等，FreeRTOS 下应改用 `vTaskDelay()`。
- **寄存器命名。** `freq_counter.h` 里 `COUNTER_REG0` ~ `COUNTER_REG28` 是纯序号，
  建议改为 `CTR_CNT_STAND`、`CTR_CNT_TEST`、`CTR_TS_MODE` 等语义化名字。
- **iperf 模板残留。** `freertos_tcp_perf_server.c/h` 里的 `perf_stats`、
  `print_tcp_conn_stats()`、`tcp_conn_report()`、`stats_buffer()`、`kLabel[]`
  已无人调用；`tcp_recv_perf_traffic()` 里的 `recv_buf[1500]` 和 `nwrote` 也未使用。
  文件名本身也不再贴切，建议改为 `scpi_tcp_server.c`。
- **头文件里定义变量。** `uart.h` 的 `XScuGic Intc; XUartPs Uart_Ps;`
  和 `freertos_tcp_perf_server.h` 的 `const char kLabel[]` 是定义而非声明，
  应改为 `extern` 加 .c 内定义。
- **串口通道仍未启用。** `main.c` 里 include 了 `uart.h`，
  但从未调用 `init_uart()` 和 `uart_cycle()`。
