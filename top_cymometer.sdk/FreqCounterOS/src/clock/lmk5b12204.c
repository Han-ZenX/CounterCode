/*
 * lmk5b12204.c
 *
 *  Created on: 2026-08-14
 *      Author: han
 */
#include "lmk5b12204.h"

#include "xparameters.h"
#include "xiicps.h"
#include "xstatus.h"
#include "xil_printf.h"

static XIicPs Lmk5b12204I2c;

/* Bounded wait, so a NACK that leaves the controller busy cannot hang. */
static int Lmk5b12204_WaitBusIdle(void)
{
	int Timeout = 100000;

	while (XIicPs_BusIsBusy(&Lmk5b12204I2c)) {
		if (--Timeout <= 0) {
			return XST_FAILURE;
		}
	}
	return XST_SUCCESS;
}

int Lmk5b12204_Init(void)
{
	XIicPs_Config *CfgPtr;
	int Status;

	CfgPtr = XIicPs_LookupConfig(XPAR_XIICPS_0_DEVICE_ID);
	if (CfgPtr == NULL) {
		return XST_FAILURE;
	}

	Status = XIicPs_CfgInitialize(&Lmk5b12204I2c, CfgPtr, CfgPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = XIicPs_SetSClk(&Lmk5b12204I2c, LMK5B12204_I2C_SCLK_RATE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

int Lmk5b12204_ReadRegs(u16 Reg, u8 *BufPtr, u16 Len)
{
	u8 RegAddr[2];
	int Status;

	/* 16-bit register address, MSB first */
	RegAddr[0] = (u8)(Reg >> 8);
	RegAddr[1] = (u8)(Reg & 0xFFU);

	Status = XIicPs_MasterSendPolled(&Lmk5b12204I2c, RegAddr, 2,
			LMK5B12204_I2C_ADDR);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	if (Lmk5b12204_WaitBusIdle() != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = XIicPs_MasterRecvPolled(&Lmk5b12204I2c, BufPtr, (s32)Len,
			LMK5B12204_I2C_ADDR);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	if (Lmk5b12204_WaitBusIdle() != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

void Lmk5b12204_ScanBus(void)
{
	u8 Dummy;
	int Addr;
	int Found = 0;

	xil_printf("I2C0 scan:");
	/* A 1-byte read is used as the probe so no register is ever written. */
	for (Addr = 0x08; Addr <= 0x77; Addr++) {
		if (XIicPs_MasterRecvPolled(&Lmk5b12204I2c, &Dummy, 1,
				(u16)Addr) == XST_SUCCESS) {
			xil_printf(" 0x%02x", Addr);
			Found++;
		}
		(void)Lmk5b12204_WaitBusIdle();
	}
	if (Found == 0) {
		xil_printf(" none");
	}
	xil_printf("\r\n");
}

int Lmk5b12204_CheckComm(void)
{
	u8 Id[LMK5B12204_DEV_ID_LEN];
	int Status;
	int i;
	int AllZero = 1;
	int AllOnes = 1;

	Lmk5b12204_ScanBus();

	Status = Lmk5b12204_ReadRegs(LMK5B12204_REG_DEV_ID, Id,
			LMK5B12204_DEV_ID_LEN);
	if (Status != XST_SUCCESS) {
		xil_printf("LMK5B12204: no response at 0x%02x\r\n",
				LMK5B12204_I2C_ADDR);
		return XST_FAILURE;
	}

	xil_printf("LMK5B12204: reg 0x%04x =", LMK5B12204_REG_DEV_ID);
	for (i = 0; i < LMK5B12204_DEV_ID_LEN; i++) {
		xil_printf(" %02x", Id[i]);
		if (Id[i] != 0x00) {
			AllZero = 0;
		}
		if (Id[i] != 0xFF) {
			AllOnes = 0;
		}
	}
	xil_printf("\r\n");

	/* All 0x00 or all 0xFF means the device ACKed but returned nothing
	 * meaningful - usually a wrong register address width or offset. */
	if (AllZero || AllOnes) {
		xil_printf("LMK5B12204: ID invalid, check register map\r\n");
		return XST_FAILURE;
	}

	xil_printf("LMK5B12204: I2C OK\r\n");
	return XST_SUCCESS;
}
