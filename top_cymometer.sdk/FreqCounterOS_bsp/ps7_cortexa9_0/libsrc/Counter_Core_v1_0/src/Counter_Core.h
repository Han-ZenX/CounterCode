
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
#define COUNTER_CORE_GATE_LEN_OFFSET    0x14u   /* R/W gate length in clk_fs periods */
#define COUNTER_CORE_EQ_STAND_OFFSET    0x18u   /* R   equal-precision reference count */
#define COUNTER_CORE_EQ_TEST_OFFSET     0x1Cu   /* R   equal-precision test count */
#define COUNTER_CORE_TDC_GATE_OFFSET    0x20u   /* R   gate TDC correction values */
#define COUNTER_CORE_FIFO_LEVEL_OFFSET  0x24u   /* R   entries still in the FIFO */
#define COUNTER_CORE_VERSION_OFFSET     0x28u   /* R   version magic */
#define COUNTER_CORE_PKT_LEN_OFFSET     0x2Cu   /* R/W M_AXIS packet length in beats */

/****************** CTRL bits ********************/
#define COUNTER_CORE_CTRL_TS_EN         (1u << 0)  /* timestamp engine enable */
#define COUNTER_CORE_CTRL_TS_RST        (1u << 1)  /* reset engine and FIFO (level) */
#define COUNTER_CORE_CTRL_EQ_START      (1u << 2)  /* rising edge starts one equal-precision measurement */
#define COUNTER_CORE_CTRL_SOFT_RST      (1u << 3)  /* reset the whole measurement core */

/****************** STATUS bits ********************/
#define COUNTER_CORE_STAT_TS_RUNNING    (1u << 0)
#define COUNTER_CORE_STAT_OVERFLOW      (1u << 1)  /* sticky, cleared by TS_RST */
#define COUNTER_CORE_STAT_EQ_DONE       (1u << 2)
#define COUNTER_CORE_STAT_EQ_BUSY       (1u << 3)
#define COUNTER_CORE_STAT_FIFO_EMPTY    (1u << 4)

/****************** TDC_GATE fields ********************/
#define COUNTER_CORE_TDC_RISE(v)        ((v) & 0xFFu)
#define COUNTER_CORE_TDC_FALL(v)        (((v) >> 8) & 0xFFu)

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
#define COUNTER_CORE_VERSION_MAGIC      0x43430100u

/****************** Register access ********************/
#define COUNTER_CORE_mWriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

#define COUNTER_CORE_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/****************** Self test ********************/
XStatus COUNTER_CORE_Reg_SelfTest(void *baseaddr_p);

#endif /* COUNTER_CORE_H */
