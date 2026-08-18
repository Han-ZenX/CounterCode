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
 *  What changed fundamentally: timestamps arrive by DMA. Old code polled the
 *  FIFO with roughly 1500 AXI-Lite transactions per measurement. Now the
 *  engine streams straight into DDR and the CPU is not involved during
 *  acquisition.
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
 * External 10 MHz reference (clk_10m, pin V5)
 *
 * Taken as exact by definition -- that is the whole premise of the
 * calibration. Whatever the timestamp fit reports for this input is therefore
 * a measurement of clk_fs, not of the input.
 *
 * CAL_FS_MIN_HZ / CAL_FS_MAX_HZ bound the derived reference before it is
 * stored: 312.49 .. 312.51 MHz, i.e. nominal +/- 32 ppm. An OCXO that far off
 * is broken rather than uncalibrated, so the window still only rejects cases
 * that are wrong for a reason: no signal on V5, a signal that is not 10 MHz,
 * or a bitstream without SRC_SEL that quietly measured clk_fx instead.
 * Without the check, any of those writes a plausible looking number to the SD
 * card and every later measurement is wrong by that factor.
 *=========================================================================*/
#define CLK_10M_NOMINAL         10000000    /* external reference, Hz */
#define CAL_FS_MIN_HZ           312490000.0
#define CAL_FS_MAX_HZ           312510000.0

/*
 * Gate the calibration runs on, in ms, independent of GATE_TIME.
 *
 * Fit precision scales with the time span the samples cover, so a calibration
 * taken at whatever gate happened to be configured would be ten times worse
 * whenever the operator had left it at the 100 ms default -- and the number it
 * produces is not a reading to be repeated, it goes on the SD card and every
 * later measurement is referred to it. One second is worth spending once.
 */
#define CAL_GATE_TIME_MS        1000.0

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
 * Return codes for the capture path
 *=========================================================================*/
#define TS_OK                    0
#define TS_ERR_DMA_START        -1
#define TS_ERR_TIMEOUT          -2      /* signal slower than expected, buffer never filled */
#define TS_ERR_OVERFLOW         -3      /* hardware reported dropped edges: not gap-free */
#define TS_ERR_PARAM            -4
#define TS_ERR_NO_DMA           -5      /* DMA not initialized */
#define CAL_ERR_RANGE           -6      /* calibration result outside the sanity window */
#define CAL_ERR_SD              -7      /* derived, applied to this session, but the SD write failed */
#define CAL_ERR_PRECOND         -8      /* CTR_STATUS0 / CTR_STATUS1 not both high */

/*===========================================================================
 * Globals (referenced directly by scpi.c)
 *=========================================================================*/
extern int    FREF;                 /* expected/reference frequency, Hz */
extern double GATE_TIME;            /* gate duration, ms */
extern double PPM_RANGE;            /* allowed deviation, ppm; set over SCPI, not used yet */

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

/*
 * Measure the external 10 MHz reference and derive the true clk_fs frequency
 * from it, then store that in FREQ.TXT and apply it to this session.
 *
 * Requires CTR_STATUS0 and CTR_STATUS1 to both read high, and returns
 * CAL_ERR_PRECOND without measuring anything if either is low. CTR_STATUS0 is
 * the pin that selects the calibrated value over the nominal one, so
 * calibrating with it low would store a number the instrument then ignores.
 *
 * Runs on a fixed CAL_GATE_TIME_MS gate, not the configured GATE_TIME, which
 * it saves and restores. TS_OK means derived, range checked and written to the
 * card -- everything else is a failure the caller reports as such:
 * CAL_ERR_RANGE when the result is too far from nominal to be believable,
 * CAL_ERR_SD when the value is good and took effect for this session but the
 * card write failed (it will be lost at the next power up), or one of the
 * TS_ERR_* codes when the capture itself failed. The derived frequency is
 * printed on the serial console in every case where one was derived at all.
 */
int  CalibrateRefClk(void);

/*===========================================================================
 * Counter_Sig control and status
 *=========================================================================*/
int  Set_CTR_PRIREF(u32 v);
int  Set_CTR_REF_CLOCK(u32 v);
int  Set_CTR_OCXO(u32 v);
u32  ReadSTATUS0(void);
u32  ReadSTATUS1(void);

/*===========================================================================
 * Measurement
 *=========================================================================*/
int  SetGate(double msec);
int  ReadFr(char *Freq);                    /* the measurement, straight through */
int  ReadFr_TimestampMode(char *Freq);      /* DMA timestamps + least squares;
                                               turns on the /4 prescaler above
                                               the Nyquist limit and scales the
                                               result back up */

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
