/*
 * uart.h
 *
 *  Created on: 2024-12-22
 *      Author: hanzheng
 */

#ifndef SRC_UART_H_
#define SRC_UART_H_

//****************************************Copyright (c)***********************************//
//ALIENTEK online teaching platform: www.yuanzige.com
//Technical support: www.openedv.com
//Taobao store: http://openedv.taobao.com
//WeChat official account "ALIENTEK": free ZYNQ & FPGA & STM32 & LINUX material.
//All rights reserved. Unauthorized reproduction prohibited.
//Copyright(C) ALIENTEK 2018-2028
//All rights reserved
//----------------------------------------------------------------------------------------
// File name:           uart
// Last modified Date:  2019/10/8 17:25:36
// Last Version:        V1.0
// Descriptions:        UART interrupt-driven receive
//----------------------------------------------------------------------------------------
// Created by:          ALIENTEK
// Created date:        2019/10/8 17:25:36
// Version:             V1.0
// Descriptions:        The original version
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//

#include "xparameters.h"
#include "xuartps.h"
#include "xil_printf.h"
#include "xscugic.h"
#include "stdio.h"
#include <String.h>

#include "Counter_Core.h"
#include "xparameters.h"

#include "../scpi/scpi.h"

#define TOP_CYMOMETER_IP_BASEADDR XPAR_COUNTER_SIG_0_S_AXI_BASEADDR
#define TOP_CYMOMETER_IP_REG0 COUNTER_S_AXI_SLV_REG0_OFFSET
#define TOP_CYMOMETER_IP_REG1 COUNTER_S_AXI_SLV_REG1_OFFSET
#define TOP_CYMOMETER_IP_REG2 COUNTER_S_AXI_SLV_REG2_OFFSET
#define TOP_CYMOMETER_IP_REG3 COUNTER_S_AXI_SLV_REG3_OFFSET
#define TOP_CYMOMETER_IP_REG4 COUNTER_S_AXI_SLV_REG4_OFFSET

#define UART_DEVICE_ID     XPAR_PS7_UART_0_DEVICE_ID    // UART device ID
#define UART_INT_IRQ_ID    XPAR_XUARTPS_0_INTR          // UART interrupt ID

#define UART_RECV_LEN 200  // Longest accepted command line

extern XUartPs Uart_Ps;    // UART driver instance

extern u8 Uart_Rec_Buf[UART_RECV_LEN];
// Receive state: bit 15 marks a complete line, bits 13:0 hold the byte count
extern volatile u16 Uart_RxState;

int init_uart(void);

// UART controller initialisation
int uart_init(XUartPs* uart_ps);

// UART receive interrupt handler
void uart_intr_handler(void *call_back_ref);

// Register the receive interrupt with the FreeRTOS port
int uart_intr_init(XUartPs *uart_ps);

// Execute one completed line and print the response
void uart_data_process(void);

// Dispatch a completed line if one is waiting. Must be called periodically.
void uart_cycle();

#endif /* SRC_UART_H_ */