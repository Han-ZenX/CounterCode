# 频率计项目 (Top Cymometer)

## 项目概述

本项目是一个基于Xilinx Zynq-7000 SoC的高精度频率计系统，采用硬件描述语言（Verilog）实现核心测频逻辑，并在SDK中使用FreeRTOS运行FreqCounterOS应用程序。项目通过TCP和UART两种通信方式提供频率测量、配置和状态查询功能。

**项目名称**: top_cymometer_v0.0.3_200MHZ-1s_v0.0.6

**硬件平台**: Xilinx Zynq-7000系列FPGA（如ZedBoard/Zybo）

**开发环境**: 
- Vivado 2018.x 或更高版本
- Xilinx SDK 2018.x 或更高版本

## 系统架构

### 硬件架构（Vivado部分）

```
┌─────────────────────────────────────────────┐
│              Zynq-7000 SoC                  │
│                                             │
│  ┌──────────────────────────────────────┐  │
│  │   Processing System (PS) - ARM核    │  │
│  │   - 运行FreeRTOS + LwIP             │  │
│  │   - TCP服务器 (端口5025)            │  │
│  │   - UART通信 (9600波特率)           │  │
│  └──────────────┬───────────────────────┘  │
│                 │ AXI总线                   │
│  ┌──────────────┴───────────────────────┐  │
│  │   Programmable Logic (PL) - FPGA    │  │
│  │   ┌─────────────────────────────┐   │  │
│  │   │  Top Cymometer IP v1.6      │   │  │
│  │   │  - 等精度频率计核心          │   │  │
│  │   │  - 基准时钟: 312.5 MHz      │   │  │
│  │   │  - 支持低频/高频双模式      │   │  │
│  │   └─────────────────────────────┘   │  │
│  └─────────────────────────────────────┘  │
│                                             │
│  外部接口:                                   │
│  - clk_fx_p/n: 被测信号 (LVDS差分)          │
│  - clk_fs_p/n: 基准时钟 (LVDS差分)          │
│  - CTR_*: 控制信号 (GPIO)                   │
└─────────────────────────────────────────────┘
```

### 软件架构（SDK部分）

**当前使用项目**: FreqCounterOS（基于FreeRTOS）

**未使用项目**: FreqCounter（已废弃）

#### FreqCounterOS 软件结构

```
FreqCounterOS/
├── src/
│   ├── main.c                        # 主程序入口，网络初始化
│   ├── freertos_tcp_perf_server.c    # TCP服务器实现
│   ├── freertos_tcp_perf_server.h    # TCP服务器头文件
│   ├── freq_counter/
│   │   ├── freq_counter.c            # 频率计控制逻辑
│   │   └── freq_counter.h            # 频率计头文件
│   ├── uart/
│   │   ├── uart.c                    # UART驱动与中断处理
│   │   └── uart.h                    # UART头文件
│   ├── iic_phyreset.c                # PHY复位（可选）
│   └── platform_config.h             # 平台配置
└── bootimage/
    └── BOOT.bin                      # 启动镜像
```

## 核心功能

### 1. 频率测量

**测量原理**: 采用等精度测频法

- **低频测量**（FREF ≤ 750kHz）: 周期法
- **高频测量**（FREF > 750kHz）: 等精度法

**基准时钟**: 312.5 MHz

**闸门时间**: 支持多种闸门时间配置
- 1 ms
- 10 ms
- 100 ms（默认）
- 1000 ms (1秒)
- 10000 ms (10秒)

### 2. 通信接口

#### TCP服务器

- **端口**: 5025
- **默认IP**: 192.168.1.115
- **子网掩码**: 255.255.255.0
- **网关**: 192.168.1.1
- **MAC地址**: 00:0a:35:00:01:02

#### UART串口

- **波特率**: 9600（默认，适应上位机）
- **数据位**: 8位
- **停止位**: 1位
- **中断驱动**: 支持接收中断，以换行符(0x0A)为帧结束标志

### 3. 支持的命令协议

#### 身份查询命令

| 命令 | 说明 | 响应 |
|------|------|------|
| `*IDN?` | 查询设备信息 | `HALLIWAY,FREQ-COUNTER,C1804,1.00-1.00-01-1\n` |
| `*RST` | 复位设备 | `1\n` |
| `*OPC?` | 查询操作完成状态 | `1\n` |

#### 频率测量命令

| 命令 | 说明 | 响应 |
|------|------|------|
| `READ?` | 读取当前频率值 | `频率值\n` (格式: %.5f) |
| `MEAS:FREQ?` | 测量并返回频率 | `频率值\n` (格式: %.5f) |

#### 配置命令

| 命令 | 说明 | 响应 |
|------|------|------|
| `FREQ:GATE:TIME?` | 查询闸门时间 | `闸门时间(ms)\n` |
| `FREQ:GATE:TIME <value>` | 设置闸门时间(秒) | `闸门时间(ms)\n` |
| `CONF:FREQ <FREF>` | 配置参考频率 | `参考频率值\n` |
| `START:GATE:TIME?` | 查询启动闸门时间 | `启动闸门时间(ms)\n` |
| `START:GATE:TIME <value>` | 设置启动闸门时间(秒) | `启动闸门时间(ms)\n` |

#### 信号控制命令

| 命令 | 说明 | 响应 |
|------|------|------|
| `SIG:PREF 0/1` | 设置优先参考源 | `1\n` |
| `SIG:REFCLOCK 0/1` | 设置参考时钟 | `1\n` |
| `SIG:OCXO 0/1` | 设置OCXO控制 | `1\n` |
| `SIG:STATUS0?` | 查询状态0 | `0/1\n` |
| `SIG:STATUS1?` | 查询状态1 | `0/1\n` |

#### PPM和时间测量命令

| 命令 | 说明 | 响应 |
|------|------|------|
| `PPM <value>` | 设置PPM阈值 | `PPM值\n` |
| `INIT` | 初始化启动时间测量 | `0\n` |
| `READ:TIME?` | 读取启动时间 | `时间(ms)\n` |

## 关键参数说明

### 全局变量

```c
int FREF;              // 参考频率（Hz）
double GATE_TIME;      // 闸门时间（ms），默认100ms
double START_GATE_TIME;// 启动闸门时间（ms），默认0.1ms
int PPM;               // PPM阈值，默认0
double START_T_TIME;   // 启动时间测量结果（ms）
int START_T_END;       // 启动时间测量完成标志
```

### 寄存器映射（AXI接口）

| 寄存器 | 偏移地址 | 功能 |
|--------|----------|------|
| REG0 | 0x00 | 保留 |
| REG3 | 0x0C | 标准时钟计数值（低频模式） |
| REG4 | 0x10 | 测试时钟计数值（低频模式） |
| REG5 | 0x14 | 闸门最大值设置 |
| REG6 | 0x18 | 闸门低值设置 |
| REG7 | 0x1C | 基准时钟频率设置 |
| REG8 | 0x20 | CTR_PRIREF控制 |
| REG9 | 0x24 | CTR_REF_CLOCK控制 |
| REG10 | 0x28 | CTR_OCXO控制 |
| REG11 | 0x2C | STATUS0读取 |
| REG12 | 0x30 | STATUS1读取 |
| REG13 | 0x34 | RESET控制 |
| REG14 | 0x38 | GATE控制 |
| REG16 | 0x40 | 标准时钟计数值（高频模式） |
| REG17 | 0x44 | 测试时钟计数值（高频模式） |
| REG18 | 0x48 | CTR_START_T状态 |

## 编译和部署

### Vivado硬件工程

1. 打开Vivado项目:
   ```bash
   vivado top_cymometer.xpr
   ```

2. 生成比特流:
   - 运行 "Generate Bitstream"

3. 导出硬件:
   - File → Export → Export Hardware
   - 包含比特流文件

### SDK软件工程

1. 打开Xilinx SDK，导入FreqCounterOS项目

2. 编译项目:
   ```bash
   make -C FreqCounterOS/Debug
   ```

3. 生成BOOT.bin:
   - 使用SDK的 "Create Boot Image" 功能
   - 包含FSBL、bitstream和FreqCounterOS.elf

4. 部署到SD卡并启动

## 使用示例

### TCP连接测试

```bash
# 连接到设备
telnet 192.168.1.115 5025

# 或使用netcat
nc 192.168.1.115 5025
```

### 发送命令示例

```bash
# 查询设备信息
echo "*IDN?" | nc 192.168.1.115 5025

# 读取频率
echo "READ?" | nc 192.168.1.115 5025

# 设置闸门时间为1秒
echo "FREQ:GATE:TIME 1" | nc 192.168.1.115 5025

# 配置参考频率为10MHz
echo "CONF:FREQ 10000000" | nc 192.168.1.115 5025
```

### UART串口测试

使用串口终端工具（如PuTTY、minicom）连接:
- 波特率: 9600
- 数据位: 8
- 停止位: 1
- 无校验

发送命令与TCP相同，以换行符结束。

## 项目文件结构

```
top_cymometer_v0.0.3_200MHZ-1s_v0.0.6/
├── top_cymometer.xpr                    # Vivado项目文件
├── ip_repo/
│   └── top_cymometer_ip_1.6/            # 自定义IP核
│       ├── hdl/                         # Verilog源码
│       ├── src/                         # 核心逻辑
│       │   ├── top_cymometer.v          # 顶层模块
│       │   ├── cymometer.v              # 频率计核心
│       │   └── signal.v                 # 信号控制模块
│       └── drivers/                     # IP驱动
├── top_cymometer.srcs/
│   ├── constrs_1/                       # 约束文件
│   │   └── new/top_cymometer.xdc        # 管脚和时序约束
│   ├── sim_1/                           # 仿真文件
│   └── sources_1/                       # 源码
│       └── bd/ps/                       # Block Design (PS配置)
├── top_cymometer.sdk/
│   └── FreqCounterOS/                   # SDK应用程序（正在使用）
│       ├── src/                         # 源代码
│       └── bootimage/BOOT.bin           # 启动镜像
│   └── FreqCounter/                     # 旧版应用（未使用）
└── README.md                            # 本文档
```

## 技术特性

### 高精度测量

- 基准时钟频率: 312.5 MHz
- 支持闸门时间灵活配置
- 双模式自动切换（低频/高频）
- 测量结果保留5位小数

### 实时控制

- FreeRTOS实时操作系统
- 多任务并发处理
- 中断驱动的UART通信
- TCP服务器支持多客户端连接

### 可配置性

- 参考频率可配置
- 闸门时间可配置
- PPM阈值可配置
- 控制信号输出（PRIREF、REF_CLOCK、OCXO）

## 注意事项

1. **时钟要求**: 
   - 基准时钟必须为312.5 MHz LVDS差分信号
   - 被测信号为LVDS差分输入

2. **网络配置**:
   - 默认使用静态IP 192.168.1.115
   - 如需DHCP，需在main.c中修改LWIP_DHCP配置

3. **UART波特率**:
   - 当前设置为9600，代码中注释说明是为了适应上位机
   - 如需修改，请同步修改上位机设置

4. **FreqCounter项目**:
   - SDK中包含FreqCounter和FreqCounterOS两个项目
   - **当前仅使用FreqCounterOS**，FreqCounter已废弃

5. **测量精度**:
   - 精度取决于基准时钟稳定性和闸门时间设置
   - 较长的闸门时间可提高测量精度，但会增加测量时间

## 开发者信息

**主要开发者**: hanzheng

**创建日期**: 2024-2025年

**版权**: 基于Xilinx示例代码和原子原子开源代码开发

## 许可证

本项目部分代码基于Xilinx和原子原子的开源代码，请遵守相应的开源许可证。

---

**最后更新**: 2026年6月10日
