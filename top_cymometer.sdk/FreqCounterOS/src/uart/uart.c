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
	char resp[SCPI_RESP_MAX];

	if (scpi_execute((const char *)Uart_Rec_Buf, resp) > 0)
		xil_printf("%s", resp);
}

void uart_cycle()
{
	int indexMain;

	if((Uart_RxState & 0x8000) == 0x8000)   //接收完成了
	{
		/* Terminate the line before parsing: the ISR raises the completion
		 * flag on 0x0A but never writes a NUL of its own. */
		Uart_Rec_Buf[Uart_RxState & 0x3fff] = 0;

		uart_data_process(); //处理串口收到的指令

		for(indexMain = 0; indexMain < (Uart_RxState & 0x3fff); indexMain ++)
		{
			Uart_Rec_Buf[indexMain] = 0;
		}

		Uart_RxState = 0; //清零接收到的字节计数
	}
}
