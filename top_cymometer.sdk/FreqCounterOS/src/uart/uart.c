/*
 * uart.c
 *
 *  Created on: 2024-12-22
 *      Author: hanzheng
 */
#include "uart.h"

#include "FreeRTOS.h"

XUartPs Uart_Ps;   /* definition; uart.h only declares it */

u8 Uart_Rec_Buf[UART_RECV_LEN];
volatile u16 Uart_RxState = 0;

int init_uart(void)
{
	int status;

	status = uart_init(&Uart_Ps);    /* controller */
	if (status == XST_FAILURE) {
		xil_printf("Uart Initial Failed\r\n");
		return XST_FAILURE;
	}

	if (uart_intr_init(&Uart_Ps) != XST_SUCCESS) {   /* receive interrupt */
		xil_printf("Uart Interrupt Initial Failed\r\n");
		return XST_FAILURE;
	}

	return 0;
}

/* UART controller initialisation */
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

    /* Controller self test */
    status = XUartPs_SelfTest(uart_ps);
    if (status != XST_SUCCESS)
        return XST_FAILURE;

    /* Normal operating mode */
    XUartPs_SetOperMode(uart_ps, XUARTPS_OPER_MODE_NORMAL);

    /* This UART is also the BSP console (stdin/stdout = ps7_uart_0), so the
       rate must match the console rate or every xil_printf comes out as
       garbage. The 9600 that used to be set here did exactly that. */
    XUartPs_SetBaudRate(uart_ps, 115200);

    /* Raise the interrupt as soon as one byte is in the RxFIFO */
    XUartPs_SetFifoThreshold(uart_ps, 1);

    return XST_SUCCESS;
}

/* UART receive interrupt handler */
void uart_intr_handler(void *call_back_ref)
{
    XUartPs *uart_instance_ptr = (XUartPs *) call_back_ref;
    u8 rec_data = 0 ;
    u32 isr_status ;                           /* interrupt status */

    /* Read the interrupt ID register to see which interrupt fired */
    isr_status = XUartPs_ReadReg(uart_instance_ptr->Config.BaseAddress,
                   XUARTPS_IMR_OFFSET);
    isr_status &= XUartPs_ReadReg(uart_instance_ptr->Config.BaseAddress,
                   XUARTPS_ISR_OFFSET);

    /* Did the RxFIFO trigger fire? */
    if (isr_status & (u32)XUARTPS_IXR_RXOVR){
        rec_data = XUartPs_RecvByte(XPAR_PS7_UART_0_BASEADDR);
        /* Clear the interrupt flag */
        XUartPs_WriteReg(uart_instance_ptr->Config.BaseAddress,
                XUARTPS_ISR_OFFSET, XUARTPS_IXR_RXOVR) ;

        if((Uart_RxState & 0x8000) == 0)  /* line not complete yet */
		{
			if(rec_data == 0x0a) /* 0x0a is the line terminator */
			{
				Uart_RxState |= 0x8000;   /* line complete */
			}
			else                           /* 0x0A not seen yet */
			{
				Uart_Rec_Buf[Uart_RxState & 0x3FFF] = rec_data;
				Uart_RxState ++;
				if(Uart_RxState > (UART_RECV_LEN - 1))
				{
					Uart_RxState = 0; /* buffer full, restart the count */
				}
			}
		}
    }
    /* XUartPs_SendByte(XPAR_PS7_UART_0_BASEADDR,rec_data); loopback echo */
}

/* Register the receive interrupt with the FreeRTOS port */
int uart_intr_init(XUartPs *uart_ps)
{
    /* The GIC is already up: the FreeRTOS port owns xInterruptController and
       installs FreeRTOS_IRQ_Handler as the IRQ vector. Calling
       XScuGic_CfgInitialize() or Xil_ExceptionRegisterHandler() here - as
       this function used to - tears down the scheduler tick and the lwIP
       Ethernet interrupt, so the handler goes in through the port's own
       registration interface instead. */
    if (xPortInstallInterruptHandler(UART_INT_IRQ_ID,
            (XInterruptHandler)uart_intr_handler, (void *)uart_ps) != pdPASS)
        return XST_FAILURE;

    /* Trigger on RxFIFO fill only */
    XUartPs_SetInterruptMask(uart_ps, XUARTPS_IXR_RXOVR);
    vPortEnableInterrupt(UART_INT_IRQ_ID);

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

	if((Uart_RxState & 0x8000) == 0x8000)   /* a complete line is waiting */
	{
		/* Terminate the line before parsing: the ISR raises the completion
		 * flag on 0x0A but never writes a NUL of its own. */
		Uart_Rec_Buf[Uart_RxState & 0x3fff] = 0;

		uart_data_process(); /* execute the received command */

		for(indexMain = 0; indexMain < (Uart_RxState & 0x3fff); indexMain ++)
		{
			Uart_Rec_Buf[indexMain] = 0;
		}

		Uart_RxState = 0; /* reset the received byte count */
	}
}