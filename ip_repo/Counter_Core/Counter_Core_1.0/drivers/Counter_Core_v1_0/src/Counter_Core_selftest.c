
/***************************** Include Files *******************************/
#include "Counter_Core.h"
#include "xparameters.h"
#include "stdio.h"
#include "xil_io.h"

/************************** Function Definitions ***************************/
/**
 *
 * Counter_Core register self test.
 *
 * The template-generated version did a write/readback loop over offsets
 * 0/4/8/12, which necessarily fails under the new mapping -- 0x04 (STATUS)
 * and 0x0C (TS_COUNT) are both read-only.
 *
 * This version instead:
 *   1. reads the VERSION magic to confirm the IP is present and the address
 *      mapping is correct
 *   2. does a write/readback loop only on side-effect-free config registers
 *
 * CTRL is deliberately left untouched -- writing it would actually start the
 * timestamp engine or reset the measurement core.
 *
 * @param   baseaddr_p base address of the COUNTER_CORE instance under test
 *
 * @return
 *    - XST_SUCCESS   all checks passed
 *    - XST_FAILURE   any check failed
 *
 * @note    Caching must be disabled over this address range while running.
 */
XStatus COUNTER_CORE_Reg_SelfTest(void * baseaddr_p)
{
	u32 baseaddr;
	u32 version;
	u32 saved_skip, saved_pkt;
	u32 i;
	XStatus status = XST_SUCCESS;

	/* Side-effect-free writable registers used for the readback loop */
	static const u32 rw_offsets[2] = {
		COUNTER_CORE_EDGE_SKIP_OFFSET,
		COUNTER_CORE_PKT_LEN_OFFSET
	};
	static const u32 patterns[3] = {
		0xA5A5A5A5u, 0x5A5A5A5Au, 0x00000000u
	};

	baseaddr = (u32) baseaddr_p;

	xil_printf("******************************\n\r");
	xil_printf("* Counter_Core Self Test\n\r");
	xil_printf("******************************\n\n\r");

	/*--------------------------------------------------------------
	 * 1. Version magic
	 *------------------------------------------------------------*/
	version = COUNTER_CORE_mReadReg(baseaddr, COUNTER_CORE_VERSION_OFFSET);
	if (version != COUNTER_CORE_VERSION_MAGIC) {
		xil_printf("   - VERSION mismatch: read 0x%08x, expected 0x%08x\n\r",
		           (unsigned int)version,
		           (unsigned int)COUNTER_CORE_VERSION_MAGIC);
		return XST_FAILURE;
	}
	xil_printf("   - VERSION 0x%08x OK\n\r", (unsigned int)version);

	/*--------------------------------------------------------------
	 * 2. Config register write/readback
	 *
	 * Original values are saved and restored so the caller's existing
	 * configuration is not destroyed.
	 * PKT_LEN implements only the low 16 bits in hardware, so it is
	 * compared as 16 bits.
	 *------------------------------------------------------------*/
	saved_skip = COUNTER_CORE_mReadReg(baseaddr, COUNTER_CORE_EDGE_SKIP_OFFSET);
	saved_pkt  = COUNTER_CORE_mReadReg(baseaddr, COUNTER_CORE_PKT_LEN_OFFSET);

	for (i = 0; i < 2; i++) {
		u32 off = rw_offsets[i];
		u32 p, rd, expect;

		for (p = 0; p < 3; p++) {
			COUNTER_CORE_mWriteReg(baseaddr, off, patterns[p]);
			rd = COUNTER_CORE_mReadReg(baseaddr, off);

			expect = patterns[p];
			if (off == COUNTER_CORE_PKT_LEN_OFFSET) {
				expect &= 0xFFFFu;
				rd     &= 0xFFFFu;
			}

			if (rd != expect) {
				xil_printf("   - offset 0x%02x readback failed: wrote 0x%08x read 0x%08x\n\r",
				           (unsigned int)off,
				           (unsigned int)expect,
				           (unsigned int)rd);
				status = XST_FAILURE;
			}
		}
	}

	/* Restore original values */
	COUNTER_CORE_mWriteReg(baseaddr, COUNTER_CORE_EDGE_SKIP_OFFSET, saved_skip);
	COUNTER_CORE_mWriteReg(baseaddr, COUNTER_CORE_PKT_LEN_OFFSET, saved_pkt);

	if (status == XST_SUCCESS)
		xil_printf("   - config register write/readback passed\n\n\r");

	return status;
}
