/*
 * lmk5b12204.h
 *
 *  Created on: 2026-08-14
 *      Author: han
 *
 *  TI LMK5B12204 clock generator - I2C communication check.
 *  Bus: PS I2C0 (MIO 30 = SCL, MIO 31 = SDA), 1.8V LVCMOS.
 */

#ifndef SRC_CLOCK_LMK5B12204_H_
#define SRC_CLOCK_LMK5B12204_H_

#include "xil_types.h"

/*
 * 7-bit I2C slave address.
 * HW_SW_CTRL is tied low on this board (software mode), which fixes the
 * address to 0x64 or 0x65 - the LSB of the 110010x address follows that pin.
 * 0x64 is assumed here; Lmk5b12204_ScanBus() reports which one actually ACKs.
 */
#define LMK5B12204_I2C_ADDR		0x64U

/* I2C bit rate. The device supports 400 kHz; 100 kHz is used as a safe start. */
#define LMK5B12204_I2C_SCLK_RATE	100000U

/*
 * Device ID register block. The LMK5B12204 uses a 16-bit register address
 * (MSB first). R0..R3 hold the vendor ID and product ID.
 * VERIFY the offset and the length against the datasheet register map.
 */
#define LMK5B12204_REG_DEV_ID		0x0000U
#define LMK5B12204_DEV_ID_LEN		4U

int Lmk5b12204_Init(void);

/* Reads Len bytes starting at register Reg. Returns XST_SUCCESS on ACK. */
int Lmk5b12204_ReadRegs(u16 Reg, u8 *BufPtr, u16 Len);

/*
 * Probes every 7-bit address on the bus and prints the ones that ACK.
 * Read-only, so it cannot corrupt device state.
 */
void Lmk5b12204_ScanBus(void);

/*
 * Full communication check: scans the bus, reads the device ID block and
 * prints it. Returns XST_SUCCESS only if the device ACKs and the ID block
 * is neither all 0x00 nor all 0xFF.
 */
int Lmk5b12204_CheckComm(void);

#endif /* SRC_CLOCK_LMK5B12204_H_ */
