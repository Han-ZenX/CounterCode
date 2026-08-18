/*
 * freq_counter_core.h
 *
 *  Created on: 2026-08-14
 *      Author: han
 *
 *  Frequency measurement layer for the Counter_Core IP.
 *
 *  Replaces freq_counter.c/h, which targeted the old Counter IP. The old IP
 *  has been removed from the block design, so Counter.h and
 *  XPAR_COUNTER_0_S_AXI_BASEADDR no longer exist and that file no longer
 *  compiles.
 *
 *  Two things changed fundamentally:
 *
 *  1. The gate is timed in hardware. Old code did
 *         SetGATE(1); usleep(n); SetGATE(0);
 *     so the gate width was whatever FreeRTOS scheduling produced. Now
 *     GATE_LEN is written in clk_fs periods and hardware opens and closes the
 *     gate itself.
 *
 *  2. Timestamps arrive by DMA. Old code polled the FIFO with roughly 1500
 *     AXI-Lite transactions per measurement. Now the engine streams straight
 *     into DDR and the CPU is not involved during acquisition.
 *
 *  The public interface matches the old freq_counter.h so scpi.c only needs
 *  its include path changed.
 */

#ifndef SRC_FREQ_COUNTER_CORE_FREQ_COUNTER_CORE_H_
#define SRC_FREQ_COUNTER_CORE_FREQ_COUNTER_CORE_H_

#include "xil_types.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xstatus.h"
#include "xaxidma.h"
#include "stdio.h"
#include <math.h>
#include <string.h>

#include "ff.h"

#include "Counter_Core.h"
#include "Counter_Sig.h"

/*===========================================================================
 * Base addresses
 *=========================================================================*/
#define COUNTER_CORE_BASEADDR   XPAR_COUNTER_CORE_0_S_AXI_BASEADDR
#define COUNTER_SIG_BASEADDR    XPAR_COUNTER_SIG_0_S_AXI_BASEADDR
#define TS_DMA_DEVICE_ID        XPAR_AXI_DMA_0_DEVICE_ID

/*===========================================================================
 * Counter_Sig registers (control and status pins, unchanged from before)
 *=========================================================================*/
#define COUNTER_SIG_REG0        COUNTER_SIG_S_AXI_SLV_REG0_OFFSET  /* CTR_STATUS0 */
#define COUNTER_SIG_REG1        COUNTER_SIG_S_AXI_SLV_REG1_OFFSET  /* CTR_STATUS1 */
#define COUNTER_SIG_REG2        COUNTER_SIG_S_AXI_SLV_REG2_OFFSET  /* CTR_START_T */
#define COUNTER_SIG_REG3        COUNTER_SIG_S_AXI_SLV_REG3_OFFSET  /* CTR_PRIREF */
#define COUNTER_SIG_REG4        COUNTER_SIG_S_AXI_SLV_REG4_OFFSET  /* CTR_REF_CLOCK */
#define COUNTER_SIG_REG5        COUNTER_SIG_S_AXI_SLV_REG5_OFFSET  /* CTR_OCXO */

/*===========================================================================
 * Reference clock
 *=========================================================================*/
#define CLK_FS_FREQ             312500000   /* nominal reference, Hz */
#define CLK_FS_FREQ_FILE        "0:/FREQ.TXT"
#define TDC_NUM_TAPS            COUNTER_CORE_TDC_NUM_TAPS

/*===========================================================================
 * Timestamp DMA buffer
 *
 * 8 bytes per entry. 4096 entries = 32 KB, matching the IP's internal FIFO
 * depth. Static storage, not stack -- a FreeRTOS task stack is 8 KB.
 *
 * The DMA has no DRE (XPAR_AXI_DMA_0_INCLUDE_S2MM_DRE = 0), so the buffer
 * address must be aligned to the stream width. 32-byte alignment is used to
 * also land on a cache line boundary.
 *=========================================================================*/
#define TS_BUF_ENTRIES          4096
#define TS_MIN_ENTRIES          16      /* below this a regression is meaningless */

/*
 * Buffer poison value.
 *
 * The buffer is filled with this before every transfer so entries the DMA
 * never wrote can be distinguished from real data. This matters more than it
 * looks: leftovers from a previous capture are indistinguishable from fresh
 * data by inspection -- TS_RST restarts seq at 0 and resets the free running
 * counter, so a stale buffer shows the same contiguous sequence and the same
 * coarse spacing. Both the continuity check and the delta statistics would
 * pass on stale content.
 *
 * The check is an exact 64-bit comparison, so what matters is that no real
 * timestamp can ever equal this word. Decoded against the current layout
 * (tdc [31:24], ovf [23], tdc_ok [22], seq [21:0]) the poison reads:
 *
 *   coarse 0xDEADBEEF = 3735928559 ticks = 11.96 s at 312.5 MHz
 *   tdc 222, ovf 1, tdc_ok 0, seq 2997999
 *
 * seq is what rules it out, and it does so independently of frequency and gate
 * time: CaptureTimestamps always issues TS_RST first, which zeroes seq_cnt, and
 * a transfer delivers at most TS_BUF_ENTRIES entries -- so seq stays inside
 * 0..4095, three orders of magnitude below the poison's. The coarse count says
 * the same thing less tightly (no capture runs for 12 s).
 *
 * The earlier note here argued from "the tdc field is 6 bits and bits [24] and
 * [25] cannot both be set". Those were the 64-tap field positions; the 256-tap
 * layout moved tdc to 8 bits at [31:24] and pushed ovf/tdc_ok down to [23]/[22],
 * so that reasoning no longer describes this word. The value itself is still
 * fine, for the reason above.
 */
#define TS_POISON               0xDEADBEEFDEADBEEFull

/*===========================================================================
 * TDC correction switch
 *
 * Set to 0 to ignore the gate TDC values and use the raw coarse count.
 *
 * Why it currently defaults to 0
 * ------------------------------
 * It was originally disabled because tdc_test_rise read 63 on every single
 * run -- pinned at the saturation limit. Two root causes were recorded, and
 * both have since been dealt with:
 *
 *   1. "Effective resolution is 16 steps, not 64; 80% of values are multiples
 *      of 4." Correct symptom, and the cause turned out to be a miswired
 *      cascade: tdc.v took the carry from CO[0], an ordinary combinational
 *      output on general routing, instead of CO[3], the dedicated COUT. Fixed.
 *      Code density now reports 217 permille multiples of 4 against the 250
 *      uniform expectation.
 *   2. "The chain spans only ~1.9 ns against a full clock period." Also
 *      correct, and it survived the fix: 64 taps measured 1.35 ns at 21.0 ps
 *      per tap, only 42% of the 3.2 ns period. The chain has been lengthened
 *      to 256 taps, which spans about 5.4 ns.
 *
 * (A third bug was found alongside these: the CARRY4 O outputs are inverted,
 * so the reading was NUM_TAPS - distance rather than the distance. That is
 * compensated in the popcount stage now.)
 *
 * Still 0 because the 256-tap chain has not been measured on hardware yet.
 * Re-enable once TdcHistogramTest on the new chain shows the saturation gone
 * (past-end near zero, coverage across all 256 codes) and a code density
 * calibration has been folded in.
 *
 * Note this only affects the equal-precision path. The timestamp path reads
 * its TDC field straight out of the packed word.
 *=========================================================================*/
#define TDC_CORRECTION_ENABLED  1

/*===========================================================================
 * Return codes for the capture path
 *=========================================================================*/
#define TS_OK                    0
#define TS_ERR_DMA_START        -1
#define TS_ERR_TIMEOUT          -2      /* signal slower than expected, buffer never filled */
#define TS_ERR_OVERFLOW         -3      /* hardware reported dropped edges: not gap-free */
#define TS_ERR_PARAM            -4
#define TS_ERR_NO_DMA           -5      /* DMA not initialized */

/*===========================================================================
 * Globals (referenced directly by scpi.c)
 *=========================================================================*/
extern int    FREF;                 /* expected/reference frequency, Hz */
extern int    PPM;                  /* tolerance for the START_T search */
extern double GATE_TIME;            /* gate duration, ms */
extern double START_GATE_TIME;      /* gate duration for START_T, ms */
extern double START_T_TIME;         /* START_T result, ms */
extern int    START_T_END;          /* START_T completion flag */

extern u32 g_clk_fs_freq;
extern u32 g_clk_fs_freq_sd;

/*===========================================================================
 * Init
 *=========================================================================*/
int  init_freqcounter(void);
int  InitTsDma(void);

/*===========================================================================
 * Reference clock calibration (SD card)
 *=========================================================================*/
u32  LoadClkFsFreq(void);
int  SaveClkFsFreq(u32 freq);
u32  GetClkFsFreq(void);

/*===========================================================================
 * Counter_Sig control and status
 *=========================================================================*/
int  Set_CTR_PRIREF(u32 v);
int  Set_CTR_REF_CLOCK(u32 v);
int  Set_CTR_OCXO(u32 v);
u32  ReadSTATUS0(void);
u32  ReadSTATUS1(void);
u32  ReadSTARTT(void);

/*===========================================================================
 * Measurement
 *=========================================================================*/
int  SetGate(double msec);
int  ReadFr(char *Freq);                    /* the measurement, straight through */
int  ReadFr_TimestampMode(char *Freq);      /* DMA timestamps + least squares;
                                               turns on the /4 prescaler above
                                               the Nyquist limit and scales the
                                               result back up */
/*
 * Equal-precision measurement. No longer used for frequency readout -- its
 * uncertainty is the +/-1 count, about 0.03 ppm at a 100 ms gate, against
 * 0.00004 ppm for the timestamp fit. Kept for ReadStartT, RepeatTest, and as an
 * independent cross-check of the prescaled path.
 */
int  ReadFr_EqualPrecision(char *Freq);

double ReadStartT(char *Freq);
void   InitStartT(void *p);

/*===========================================================================
 * Lower level, exposed for diagnostics
 *=========================================================================*/
int    CaptureTimestamps(u64 *buf, int entries, u32 edge_skip, u32 timeout_ms);
double ComputeFreqFromTimestamps(const u64 *buf, int count, u32 f_s);
int    VerifyContinuity(const u64 *buf, int count);
void   DumpCoreStatus(void);

/*
 * Raw S2MM register dump: control, status, destination address and the
 * transferred byte count. Use when a capture times out to tell "the DMA
 * never saw the data" apart from "the DMA saw it but never ended".
 */
void   DumpDmaStatus(void);

/*
 * Repeatability test: runs the equal-precision path n times at a fixed gate
 * and prints the spread of N, the TDC values and the resulting frequency.
 *
 * gate_len is in clk_fs periods: 312500 = 1 ms, 31250000 = 100 ms.
 */
void   RepeatTest(int n, u32 gate_len);

/*
 * End to end check of the timestamp path: captures over DMA, verifies the
 * sequence is contiguous, reports the coarse interval and TDC statistics,
 * and recovers the frequency both from the mean interval and by least
 * squares.
 *
 * entries    number of timestamps to collect, TS_MIN_ENTRIES..TS_BUF_ENTRIES
 * edge_skip  0 captures every edge, which is the real gap-free case
 */
void   TimestampTest(int entries, u32 edge_skip);

/*
 * Code density measurement of the TDC delay chain: histograms every tap code
 * to get per-bin widths, the total span of the chain, and how many taps a full
 * clock period would need.
 *
 * The input MUST be incommensurate with the reference or the phase does not
 * sweep and the histogram is meaningless -- offset the source a few hundred Hz
 * off any exact ratio (4.9997 MHz rather than 5 MHz against 312.5 MHz).
 *
 * rounds  number of TS_BUF_ENTRIES captures to accumulate. With 256 bins, 32
 *         rounds puts roughly 500 samples in each -- about 4% statistical
 *         error per bin, which is enough to read individual bin widths.
 */
void   TdcHistogramTest(int rounds);

/*
 * Re-measure the delay chain and print a ready-to-paste replacement for the
 * table in tdc_calib.h: the provenance lines, the TDC_CALIB_* defines, and the
 * 256-entry array. Paste over the existing block and rebuild.
 *
 * Exists because the table is only valid near the thermal state it was taken
 * in -- carry delay moves several percent over the operating range, which is a
 * bigger error than the non-linearity the table corrects. Re-measuring on a
 * warmed-up board in situ is what keeps it matching the silicon.
 *
 * Output goes to the serial console, not the SCPI response: the table is about
 * 13 kB against a 384-byte response buffer.
 *
 * Same precondition as TdcHistogramTest -- the input MUST be detuned off any
 * exact ratio to clk_fs or the phase will not sweep. This one refuses to emit
 * a table when it detects that, rather than printing a plausible-looking wrong
 * one.
 *
 * rounds  TS_BUF_ENTRIES captures to accumulate; <1 selects the default of 32
 */
void   PrintTdcCalibTable(int rounds);

#endif /* SRC_FREQ_COUNTER_CORE_FREQ_COUNTER_CORE_H_ */
