/*
 * uart.c
 *
 *  Created on: 2024年12月22日
 *      Author: hanzheng
 */
#include "uart.h"

u8 Uart_Rec_Buf[UART_RECV_LEN];
u16 Uart_RxState = 0;

int init_uart(void)
{
	int status;

	status = uart_init(&Uart_Ps);    //串口初始化
	if (status == XST_FAILURE) {
		xil_printf("Uart Initial Failed\r\n");
		return XST_FAILURE;
	}
	uart_intr_init(&Intc, &Uart_Ps); //串口中断初始化

	return 0;
}

//UART初始化函数
int uart_init(XUartPs* uart_ps)
{
    int status;
    XUartPs_Config *uart_cfg;

    uart_cfg = XUartPs_LookupConfig(UART_DEVICE_ID);
    if (NULL == uart_cfg)
        return XST_FAILURE;
    status = XUartPs_CfgInitialize(uart_ps, uart_cfg, uart_cfg->BaseAddress);
    if (status != XST_SUCCESS)
        return XST_FAILURE;

    //UART设备自检
    status = XUartPs_SelfTest(uart_ps);
    if (status != XST_SUCCESS)
        return XST_FAILURE;

    //设置工作模式:正常模式
    XUartPs_SetOperMode(uart_ps, XUARTPS_OPER_MODE_NORMAL);
    //设置波特率:115200
    XUartPs_SetBaudRate(uart_ps,9600);  //波特率默认设置为9600,用来适应上位机
    //设置RxFIFO的中断触发等级
    XUartPs_SetFifoThreshold(uart_ps, 1); //优先级必须设为1

    return XST_SUCCESS;
}

//UART中断处理函数
void uart_intr_handler(void *call_back_ref)
{
    XUartPs *uart_instance_ptr = (XUartPs *) call_back_ref;
    u8 rec_data = 0 ;
    u32 isr_status ;                           //中断状态标志

    //读取中断ID寄存器，判断触发的是哪种中断
    isr_status = XUartPs_ReadReg(uart_instance_ptr->Config.BaseAddress,
                   XUARTPS_IMR_OFFSET);
    isr_status &= XUartPs_ReadReg(uart_instance_ptr->Config.BaseAddress,
                   XUARTPS_ISR_OFFSET);

    //判断中断标志位RxFIFO是否触发
    if (isr_status & (u32)XUARTPS_IXR_RXOVR){
        rec_data = XUartPs_RecvByte(XPAR_PS7_UART_0_BASEADDR);
        //清除中断标志
        XUartPs_WriteReg(uart_instance_ptr->Config.BaseAddress,
                XUARTPS_ISR_OFFSET, XUARTPS_IXR_RXOVR) ;

        if((Uart_RxState & 0x8000) == 0)  //接收未完成
		{
			if(rec_data == 0x0a) //0x0a是换行符
			{
				Uart_RxState |= 0x8000;   //接收完成了
			}
			else                           //还没收到0x0A
			{
				Uart_Rec_Buf[Uart_RxState & 0x3FFF] = rec_data;
				Uart_RxState ++;
				if(Uart_RxState > (UART_RECV_LEN - 1))
				{
					Uart_RxState = 0; //缓冲区满，计数清零
				}
			}
		}
    }
    //XUartPs_SendByte(XPAR_PS7_UART_0_BASEADDR,rec_data); //回环，发送和接收相同的字符
}

//串口中断初始化
int uart_intr_init(XScuGic *intc, XUartPs *uart_ps)
{
    int status;
    //初始化中断控制器
    XScuGic_Config *intc_cfg;
    intc_cfg = XScuGic_LookupConfig(INTC_DEVICE_ID);
    if (NULL == intc_cfg)
        return XST_FAILURE;
    status = XScuGic_CfgInitialize(intc, intc_cfg,
            intc_cfg->CpuBaseAddress);
    if (status != XST_SUCCESS)
        return XST_FAILURE;

    //设置并打开中断异常处理功能
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
            (Xil_ExceptionHandler)XScuGic_InterruptHandler,
            (void *)intc);
    Xil_ExceptionEnable();

    //为中断设置中断处理函数
    XScuGic_Connect(intc, UART_INT_IRQ_ID,
            (Xil_ExceptionHandler) uart_intr_handler,(void *) uart_ps);
    //设置UART的中断触发方式
    XUartPs_SetInterruptMask(uart_ps, XUARTPS_IXR_RXOVR);
    //使能GIC中的串口中断
    XScuGic_Enable(intc, UART_INT_IRQ_ID);
    return XST_SUCCESS;
}

void uart_data_process(void)
{
	if(Uart_Rec_Buf[0] == '*')
	{
		if(Uart_Rec_Buf[1] == 'I' && Uart_Rec_Buf[2] == 'D' && Uart_Rec_Buf[3] == 'N' && Uart_Rec_Buf[4] == '?')
		{
			xil_printf("HALLIWAY,FREQ-COUNTER,C1804,1.00-1.00-01-1\n");
		}
		else if(Uart_Rec_Buf[1] == 'R' && Uart_Rec_Buf[2] == 'S' && Uart_Rec_Buf[3] == 'T')
		{
			xil_printf("1\n");
		}
		else if(Uart_Rec_Buf[1] == 'O' && Uart_Rec_Buf[2] == 'P' && Uart_Rec_Buf[3] == 'C' && Uart_Rec_Buf[4] == '?')
		{
			xil_printf("1\n");
		}
	}
	else if(Uart_Rec_Buf[0] == 'R' && Uart_Rec_Buf[1] == 'E' && Uart_Rec_Buf[2] == 'A' && Uart_Rec_Buf[3] == 'D' && Uart_Rec_Buf[4] == '?')
	{
		char * Freq;
		ReadFr(Freq);
		printf(Freq);
	}
	else if(Uart_Rec_Buf[0] == 'M' && Uart_Rec_Buf[1] == 'E' && Uart_Rec_Buf[2] == 'A' && Uart_Rec_Buf[3] == 'S' && Uart_Rec_Buf[4] == ':'&& Uart_Rec_Buf[5] == 'F'&& Uart_Rec_Buf[6] == 'R'&& Uart_Rec_Buf[7] == 'E'&& Uart_Rec_Buf[8] == 'Q'&& Uart_Rec_Buf[9] == '?')
	{
		char * Freq;
		ReadFr(Freq);
		printf(Freq);
	}
	else if(Uart_Rec_Buf[0] == 'F' && Uart_Rec_Buf[1] == 'R' && Uart_Rec_Buf[2] == 'E' && Uart_Rec_Buf[3] == 'Q' && Uart_Rec_Buf[4] == ':'
				&& Uart_Rec_Buf[5] == 'G'&& Uart_Rec_Buf[6] == 'A'&& Uart_Rec_Buf[7] == 'T'&& Uart_Rec_Buf[8] == 'E'&& Uart_Rec_Buf[9] == ':'
						&& Uart_Rec_Buf[10] == 'T'&& Uart_Rec_Buf[11] == 'I'&& Uart_Rec_Buf[12] == 'M'&& Uart_Rec_Buf[13] == 'E'&& Uart_Rec_Buf[14] == '?')
	{
		char  *Gate;
		sprintf(Gate,"%d\n",GATE_TIME);
		printf(Gate);
	}
	else if(Uart_Rec_Buf[0] =='F' && Uart_Rec_Buf[1] == 'R' && Uart_Rec_Buf[2] == 'E' && Uart_Rec_Buf[3] == 'Q' && Uart_Rec_Buf[4] == ':')
	{
		if(Uart_Rec_Buf[5] =='G' && Uart_Rec_Buf[6] == 'A' && Uart_Rec_Buf[7] == 'T' && Uart_Rec_Buf[8] == 'E' && Uart_Rec_Buf[9] == ':')
		{
			if(Uart_Rec_Buf[10] =='T' && Uart_Rec_Buf[11] == 'I' && Uart_Rec_Buf[12] == 'M' && Uart_Rec_Buf[13] == 'E' && Uart_Rec_Buf[14] == ' ')
			{
				if(Uart_Rec_Buf[15]>='0' && Uart_Rec_Buf[15]<='9')
				{
					if(Uart_Rec_Buf[16] == '.')
					{
						GATE_TIME = (Uart_Rec_Buf[15] - '0') * 1000;

						if(Uart_Rec_Buf[17]>='0' && Uart_Rec_Buf[17]<='9')
						{
							GATE_TIME += (Uart_Rec_Buf[17] - '0') * 100;

							if(Uart_Rec_Buf[18]>='0' && Uart_Rec_Buf[18]<='9')
							{
								GATE_TIME += (Uart_Rec_Buf[18] - '0') * 10;

								if(Uart_Rec_Buf[19]>='0' && Uart_Rec_Buf[19]<='9')
								{
									GATE_TIME += (Uart_Rec_Buf[19] - '0');

									if(Uart_Rec_Buf[20]>='0' && Uart_Rec_Buf[20]<='9')
									{
										GATE_TIME += (double)(Uart_Rec_Buf[20] - '0') / 10;

										if(Uart_Rec_Buf[21]>='0' && Uart_Rec_Buf[21]<='9')
										{
											GATE_TIME += (double)(Uart_Rec_Buf[21] - '0') / 100;

											if(Uart_Rec_Buf[22]>='0' && Uart_Rec_Buf[22]<='9')
											{
												GATE_TIME += (double)(Uart_Rec_Buf[22] - '0') / 1000;
											}
										}
									}
								}
							}
						}
					}
					else if(Uart_Rec_Buf[17] == '.')
					{
						GATE_TIME = (Uart_Rec_Buf[15] - '0') * 10000;

						GATE_TIME += (Uart_Rec_Buf[16] - '0') * 1000;

						if(Uart_Rec_Buf[18]>='0' && Uart_Rec_Buf[18]<='9')
						{
							GATE_TIME += (Uart_Rec_Buf[18] - '0') * 100;

							if(Uart_Rec_Buf[19]>='0' && Uart_Rec_Buf[19]<='9')
							{
								GATE_TIME += (Uart_Rec_Buf[19] - '0') * 10;

								if(Uart_Rec_Buf[20]>='0' && Uart_Rec_Buf[20]<='9')
								{
									GATE_TIME += (Uart_Rec_Buf[20] - '0');

									if(Uart_Rec_Buf[21]>='0' && Uart_Rec_Buf[21]<='9')
									{
										GATE_TIME += (double)(Uart_Rec_Buf[21] - '0') / 10;

										if(Uart_Rec_Buf[22]>='0' && Uart_Rec_Buf[22]<='9')
										{
											GATE_TIME += (double)(Uart_Rec_Buf[22] - '0') / 100;

											if(Uart_Rec_Buf[23]>='0' && Uart_Rec_Buf[23]<='9')
											{
												GATE_TIME += (double)(Uart_Rec_Buf[23] - '0') / 1000;
											}
										}
									}
								}
							}
						}
					}
					else
					{
						if(Uart_Rec_Buf[16]>='0' && Uart_Rec_Buf[16]<='9')
						{
							GATE_TIME = (Uart_Rec_Buf[15] - '0') * 10000;
							GATE_TIME += (Uart_Rec_Buf[16] - '0') * 1000;
						}
						else
						{
							GATE_TIME = (Uart_Rec_Buf[15] - '0') * 1000;
						}
					}

					SetGate(GATE_TIME);
					xil_printf("1\n");
				}
			}
		}
	}
	else if(Uart_Rec_Buf[0] =='S' && Uart_Rec_Buf[1] == 'I' && Uart_Rec_Buf[2] == 'G' && Uart_Rec_Buf[3] == ':')
	{
		if(Uart_Rec_Buf[4] =='P' && Uart_Rec_Buf[5] == 'R' && Uart_Rec_Buf[6] == 'I' && Uart_Rec_Buf[7] == 'R' && Uart_Rec_Buf[8] == 'E' && Uart_Rec_Buf[9] == 'F' && Uart_Rec_Buf[10] == ' ')
		{
			if(Uart_Rec_Buf[11] =='1')
			{
				Set_CTR_PRIREF(1);
				xil_printf("1\n");
			}
			else if(Uart_Rec_Buf[11] =='0')
			{
				Set_CTR_PRIREF(0);
				xil_printf("1\n");
			}
		}
		else if(Uart_Rec_Buf[4] =='R' && Uart_Rec_Buf[5] == 'E' && Uart_Rec_Buf[6] == 'F' && Uart_Rec_Buf[7] == 'C' && Uart_Rec_Buf[8] == 'L' && Uart_Rec_Buf[9] == 'O' && Uart_Rec_Buf[10] == 'C'&& Uart_Rec_Buf[11] == 'K'&& Uart_Rec_Buf[12] == ' ')
		{
			if(Uart_Rec_Buf[13] =='1')
			{
				Set_CTR_REF_CLOCK(1);
				xil_printf("1\n");
			}
			else if(Uart_Rec_Buf[13] =='0')
			{
				Set_CTR_REF_CLOCK(0);
				xil_printf("1\n");
			}
		}
		else if(Uart_Rec_Buf[4] =='O' && Uart_Rec_Buf[5] == 'C' && Uart_Rec_Buf[6] == 'X' && Uart_Rec_Buf[7] == 'O' && Uart_Rec_Buf[8] == ' ')
		{
			if(Uart_Rec_Buf[9] =='1')
			{
				Set_CTR_OCXO(1);
				xil_printf("1\n");
			}
			else if(Uart_Rec_Buf[9] =='0')
			{
				Set_CTR_OCXO(0);
				xil_printf("1\n");
			}
		}
		else if(Uart_Rec_Buf[4] =='S' && Uart_Rec_Buf[5] == 'T' && Uart_Rec_Buf[6] == 'A' && Uart_Rec_Buf[7] == 'T'
						&& Uart_Rec_Buf[8] == 'U'&& Uart_Rec_Buf[9] == 'S'&& Uart_Rec_Buf[10] == '0'&& Uart_Rec_Buf[11] == '?')
		{
			u32 STATUS0 = ReadSTATUS0();
			if(STATUS0 == 0)
			{
				xil_printf("0\n");
			}
			else
			{
				xil_printf("1\n");
			}
		}
		else if(Uart_Rec_Buf[4] =='S' && Uart_Rec_Buf[5] == 'T' && Uart_Rec_Buf[6] == 'A' && Uart_Rec_Buf[7] == 'T'
						&& Uart_Rec_Buf[8] == 'U'&& Uart_Rec_Buf[9] == 'S'&& Uart_Rec_Buf[10] == '1'&& Uart_Rec_Buf[11] == '?')
		{
			u32 STATUS1 = ReadSTATUS1();
			if(STATUS1 == 0)
			{
				xil_printf("0\n");
			}
			else
			{
				xil_printf("1\n");
			}
		}
	}
}

void uart_cycle()
{
	int indexMain;

	if((Uart_RxState & 0x8000) == 0x8000)   //接收完成了
	{
		uart_data_process(); //处理串口收到的指令

		for(indexMain = 0; indexMain < (Uart_RxState & 0x3fff); indexMain ++)
		{
			Uart_Rec_Buf[indexMain] = 0;
		}

		Uart_RxState = 0; //清零接收到的字节计数
	}
}
