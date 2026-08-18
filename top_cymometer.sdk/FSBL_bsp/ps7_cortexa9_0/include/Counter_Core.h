
#ifndef COUNTER_CORE_H
#define COUNTER_CORE_H

/*
 * Counter_Core v1.0 driver header
 *
 * Gap-free continuous timestamping frequency counter core, modeled on the
 * Keysight 53230A. Full description in doc/interface_spec.md
 *
 * Unlike the template-generated SLV_REGn_OFFSET macros, names here are
 * semantic. The original Counter IP's software was full of COUNTER_REG23 /
 * COUNTER_REG26 style references: changing the mapping in one place meant a
 * global search-and-replace, and the purpose of each register was invisible
 * at the call site.
 */

/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"

/****************** Register offsets ********************/
#define COUNTER_CORE_CTRL_OFFSET        0x00u   /* R/W control */
#define COUNTER_CORE_STATUS_OFFSET      0x04u   /* R   status */
#define COUNTER_CORE_EDGE_SKIP_OFFSET   0x08u   /* R/W capture 1 of every N+1 edges */
#define COUNTER_CORE_TS_COUNT_OFFSET    0x0Cu   /* R   total timestamps written */
#define COUNTER_CORE_LOST_COUNT_OFFSET  0x10u   /* R   edges dropped */
/* 0x14..0x20 were GATE_LEN / EQ_STAND / EQ_TEST / TDC_GATE, used by the
   equal-precision path. That path has been removed; the addresses are left
   unassigned and read back as 0. */
#define COUNTER_CORE_FIFO_LEVEL_OFFSET  0x24u   /* R   entries still in the FIFO */
#define COUNTER_CORE_VERSION_OFFSET     0x28u   /* R   version magic */
#define COUNTER_CORE_PKT_LEN_OFFSET     0x2Cu   /* R/W M_AXIS packet length in beats */
#define COUNTER_CORE_PRESCALE_OFFSET    0x30u   /* R/W input prescaler */
#define COUNTER_CORE_SRC_SEL_OFFSET     0x34u   /* R/W measurement source select */

/****************** PRESCALE bits ********************/
/*
 * DIV4 divides the signal under test by 4 before the timestamp engine, so
 * inputs above the clk_fs Nyquist limit can still be timestamped. Software must
 * multiply the measured frequency by COUNTER_CORE_PRESCALE_RATIO when this is
 * set.
 *
 * Only change it while CTRL.TS_EN is low: the divider select is combinational,
 * not latched at capture start the way EDGE_SKIP is.
 *
 * This is a register of its own rather than a spare CTRL bit on purpose. Every
 * CTRL write in the driver is absolute, not read-modify-write, so a bit here
 * would be cleared by the capture sequence itself -- and the symptom would be a
 * high-frequency reading exactly 4x low, with every self-check still passing.
 */
#define COUNTER_CORE_PRESCALE_DIV4      (1u << 0)
#define COUNTER_CORE_PRESCALE_RATIO     4u

/****************** SRC_SEL bits ********************/
/*
 * SRC_10M measures the external 10 MHz reference on clk_10m instead of the
 * signal under test. The engine is unchanged: it still times the selected
 * input against clk_fs. What changes is which side of that ratio is known --
 * the 10 MHz source is exact by definition, so the fitted result is really a
 * measurement of clk_fs, and CalibrateRefClk() inverts it to recover the true
 * reference frequency.
 *
 * The prescaler is bypassed on this path in hardware, so PRESCALE is ignored
 * while this bit is set.
 *
 * Same rules as PRESCALE: only change it while CTRL.TS_EN is low, and it is a
 * register of its own because every CTRL write in the driver is absolute.
 */
#define COUNTER_CORE_SRC_SEL_10M        (1u << 0)

/****************** CTRL bits ********************/
#define COUNTER_CORE_CTRL_TS_EN         (1u << 0)  /* timestamp engine enable */
#define COUNTER_CORE_CTRL_TS_RST        (1u << 1)  /* reset engine and FIFO (level) */
#define COUNTER_CORE_CTRL_SOFT_RST      (1u << 3)  /* reset the whole measurement core */

/****************** STATUS bits ********************/
#define COUNTER_CORE_STAT_TS_RUNNING    (1u << 0)
#define COUNTER_CORE_STAT_OVERFLOW      (1u << 1)  /* sticky, cleared by TS_RST */
#define COUNTER_CORE_STAT_FIFO_EMPTY    (1u << 4)

/****************** Timestamp fields (64-bit, written to DDR by DMA) ********************/
/*
 * [63:32] coarse   coarse counter in the clk_fs domain
 * [31:24] tdc      TDC phase 0..255
 * [23]    ovf      a drop occurred before this entry
 * [22]    tdc_ok   TDC fine value is valid
 * [21:0]  seq      entry sequence number
 */
#define COUNTER_CORE_TS_COARSE(w)       ((u32)((w) >> 32))
#define COUNTER_CORE_TS_TDC(w)          ((u32)(((w) >> 24) & 0xFFu))
#define COUNTER_CORE_TS_OVF(w)          ((u32)(((w) >> 23) & 0x1u))
#define COUNTER_CORE_TS_TDC_OK(w)       ((u32)(((w) >> 22) & 0x1u))
#define COUNTER_CORE_TS_SEQ(w)          ((u32)((w) & 0x3FFFFFu))

#define COUNTER_CORE_TDC_NUM_TAPS       256
/*
 * Bumped from 0x43430100 when PRESCALE was added, and to 0x43430102 for
 * SRC_SEL. init_freqcounter() tests this for equality, which is the whole
 * point: new software on an old bitstream would write the new register to an
 * address that does not decode and the write would vanish. For PRESCALE that
 * meant every measurement above the Nyquist limit reading 4x low; for SRC_SEL
 * it means the reference calibration measures whatever is on clk_fx instead of
 * the 10 MHz input and stores the result on the SD card. Both cases pass every
 * continuity and self-check criterion.
 */
#define COUNTER_CORE_VERSION_MAGIC      0x43430102u

/****************** Register access ********************/
#define COUNTER_CORE_mWriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

#define COUNTER_CORE_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/****************** Self test ********************/
XStatus COUNTER_CORE_Reg_SelfTest(void *baseaddr_p);

#endif /* COUNTER_CORE_H */
