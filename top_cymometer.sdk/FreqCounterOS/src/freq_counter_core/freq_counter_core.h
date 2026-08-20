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
 * Oscillator start-up measurement
 *
 * A separate 512 KB buffer rather than a bigger g_ts_buf: the ordinary
 * measurement path is correct as it stands and nothing here needs to change
 * its bounds. 512 KB against a 1 GB DDR is not worth sharing over.
 *
 * STARTUP_ENTRIES is the hard ceiling of one simple-mode transfer, set by the
 * width of pkt_limit in ts_engine.v (16 bits, so 65535 -- not 65536). The DMA
 * length register would allow 131071, and neither is the constraint here.
 *
 * Fixing the entry count and the span makes the interval between consecutive
 * timestamps STARTUP_SPAN / STARTUP_ENTRIES regardless of the input
 * frequency. The window is then sized from STARTUP_WIN, the time resolution
 * asked for, so the entry count per window follows from the span rather than
 * being configured directly:
 *
 *     dt = STARTUP_SPAN / STARTUP_ENTRIES
 *     N  = STARTUP_WIN / dt          clamped to [MIN_N, MAX_N]
 *     W  = N * dt                    what the resolution actually comes out at
 *
 * Both N and the frequency resolution it yields are independent of the input
 * frequency, because dt is. The same table applies to a 512 kHz oscillator
 * and a 100 MHz one.
 *
 * The trade is entirely in the span, and it runs the opposite way to
 * intuition. At a FIXED time resolution:
 *
 *     delta[ppm] = sigma_t * sqrt(12) / (sqrt(N) * W),  N = W * ENTRIES / span
 *
 * so a SHORTER span gives more entries per window and a BETTER frequency
 * resolution. Span that is not needed to cover the transient is span traded
 * away for nothing. At W = 10 us: 6.5 ms span gives N = 101 and 1.03 ppm,
 * 33 ms gives N = 20 and 2.31 ppm, and the 128 ms default only gets N = 5 --
 * below MIN_N, so it is raised to 8 and the resolution lands at 15.6 us
 * instead of the 10 us asked for. Shorten the span to actually get 10 us.
 *
 * Below f_x = ENTRIES / span (512 kHz at the default span) edge_skip bottoms
 * out at 0 and the span stretches instead (65535 / f_x), which makes dt
 * larger and N smaller; a 32.768 kHz tuning fork cannot reach 10 us at all
 * and ends up at MIN_N * 30.5 us = 244 us. That is still the right trade for
 * a device that takes a second to start.
 *
 * MIN_N is 8 because a straight line fitted through fewer points has almost
 * no residual degrees of freedom, and the early part of a start-up transient
 * is exactly where noise spikes over the input threshold would then dominate
 * the fit. MAX_N keeps at least 16 windows in the capture.
 *
 * STARTUP_HOLD exists because the frequency of a starting oscillator
 * converges by ringing through the target rather than approaching it from one
 * side. A single window inside the band is not settling, and taking it as
 * such underestimates the start-up time.
 *=========================================================================*/
#define STARTUP_ENTRIES         65535   /* one transfer; pkt_limit is 16 bits */
#define STARTUP_HOLD            3       /* consecutive windows inside the band */
#define STARTUP_SPAN_DEFAULT    128.0   /* ms */
#define STARTUP_WIN_DEFAULT     10.0    /* us, target time resolution */
#define STARTUP_WIN_MIN_N       8       /* fewest entries a window may hold */
#define STARTUP_WIN_MAX_N       4096    /* keeps >= 16 windows in the capture */

/*
 * f(t) points written to the serial console after a measurement, 0 = none.
 *
 * Off by default because it is a diagnostic, not an output: the answer goes
 * back over SCPI, and 64 lines at 115200 baud cost about 320 ms of cycle time
 * for something a production run never reads. Turn it on with STARTUP:TRACE
 * when a device needs looking at.
 *
 * The cap matters. A capture can hold thousands of windows (65535 entries
 * over an 8-entry window is 8191 of them), and printing one line each would
 * hold the link for tens of seconds.
 */
#define STARTUP_TRACE_DEFAULT   0
#define STARTUP_TRACE_MAX       256
#define STARTUP_TRIG_TIMEOUT_MS 10000   /* how long to wait for CTR_START_T */

/*
 * The measurement runs on its own task, because the bench sequence requires
 * it. The host opens the DUT's VCC (CTR_START_T goes low), writes
 * STARTUP:INIT, closes VCC (CTR_START_T goes high -- and the measurement must
 * start THERE), and only afterwards sends STARTUP:TIME? to collect the
 * answer. STARTUP:INIT is a write with no response, so the host proceeds to
 * close VCC as soon as it has written it: the instrument has to be watching
 * the trigger by then, which is why arming cannot be the thing that blocks.
 *
 * The two priorities are the whole design, and neither is arbitrary:
 *
 *   _IDLE = 2 equals the SCPI task's own priority (DEFAULT_THREAD_PRIO in
 *   lwipopts.h). The notify that arms a measurement must NOT preempt its
 *   caller. Were the task sitting at _RUN, the notify inside StartupArm()
 *   would switch to it on the spot and it would not come back until the whole
 *   measurement was over -- StartupArm() would block for up to tens of
 *   seconds and the SCPI task would be parked inside a command handler,
 *   which is exactly what the split into INIT and TIME? exists to avoid.
 *   Idling at 2 instead, the task becomes runnable but does not run until the
 *   SCPI task finishes the handler and goes back to blocking on recv. That
 *   handover is a single context switch, microseconds, against the
 *   milliseconds a relay needs to close VCC.
 *
 *   _RUN = 4 is above lwIP's tcpip thread (TCPIP_THREAD_PRIO = 3). Waiting
 *   for the trigger is a busy poll that must not be interrupted: time slicing
 *   is on and a tick is 10 ms here, so an equal priority would hand the CPU
 *   away for up to 10 ms, which on a millisecond-scale start-up time is a
 *   100% error on t = 0.
 *
 * The price is that the instrument does not service the network from the
 * trigger poll until the measurement finishes. That matches the bench
 * sequence -- the host is operating the fixture, not talking -- and a
 * STARTUP:TIME? that arrives early simply sits in the socket until the answer
 * exists, which is the semantics it wants anyway.
 */
#define STARTUP_TASK_STACK      2048    /* words, so 8 KB off the FreeRTOS heap */
#define STARTUP_TASK_PRIO_IDLE  2
#define STARTUP_TASK_PRIO_RUN   4

/*
 * How long STARTUP:TIME? blocks before giving up. Must exceed the worst case
 * of the measurement itself: trigger timeout (10 s) plus capture timeout
 * (2 x span + 5 s) plus the fit. The host's socket timeout has to be larger
 * than this again.
 */
#define STARTUP_WAIT_TIMEOUT_MS 40000
#define STARTUP_WAIT_POLL_MS    20

/*
 * Per-timestamp time uncertainty, seconds. Back-solved from the 819 us /
 * 4096 entry / 0.002 ppm figure in the README, and used only to report the
 * frequency resolution a given window achieves.
 */
#define STARTUP_SIGMA_T         30.0e-12

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
#define TS_ERR_TRIGGER          -9      /* CTR_START_T stayed low until the timeout */

/*===========================================================================
 * StartupWait() results, milliseconds
 *
 * The function returns a duration, so any negative value is a failure. They
 * are spelled out here rather than folded into one code because "the crystal
 * never reached the band" and "the instrument never saw the trigger" call for
 * completely different actions on the bench.
 *=========================================================================*/
#define ST_NOT_SETTLED         -1.0     /* captured cleanly, never settled within the span */
#define ST_ERR_TRIG            -2.0     /* CTR_START_T stayed low until the timeout */
#define ST_ERR_ALREADY_HIGH    -3.0     /* CTR_START_T was already high on entry */
#define ST_ERR_CAPTURE         -4.0     /* capture failed; reason on the console */
#define ST_ERR_CONFIG          -5.0     /* CONF:FREQ or PPM not set */
#define ST_ERR_NOT_ARMED       -6.0     /* STARTUP:TIME? without a preceding INIT */
#define ST_ERR_WAIT_TIMEOUT    -7.0     /* the measurement did not finish in time */
#define ST_ERR_NO_TASK         -9.0     /* the measurement task was never created */

/*===========================================================================
 * StartupArm() results
 *
 * Integers rather than the doubles above, because arming reports whether the
 * instrument is now watching the trigger, not a duration. The values match
 * their ST_ERR_* counterparts because a failed arm also publishes the
 * corresponding double as the pending result -- STARTUP:INIT carries no
 * response, so the reason has to reach the host through STARTUP:TIME?.
 *
 * ST_ARM_BUSY is the exception and has no ST_ERR_ twin on purpose. A second
 * INIT arriving mid-measurement must not overwrite the pending result, or the
 * measurement already in flight would be thrown away in favour of an error
 * code; the waiting host gets that measurement's answer instead.
 *=========================================================================*/
#define ST_ARM_OK                0
#define ST_ARM_ALREADY_HIGH     -3      /* CTR_START_T high: fixture VCC still connected */
#define ST_ARM_CONFIG           -5      /* CONF:FREQ or PPM not set */
#define ST_ARM_BUSY             -8      /* a measurement is still running */
#define ST_ARM_NO_TASK          -9      /* the measurement task was never created */

/*===========================================================================
 * Globals (referenced directly by scpi.c)
 *=========================================================================*/
extern int    FREF;                 /* expected/reference frequency, Hz */
extern double GATE_TIME;            /* gate duration, ms */
extern double PPM_RANGE;            /* allowed deviation, ppm; the start-up criterion */
extern double STARTUP_SPAN;         /* start-up capture span, ms */
extern double STARTUP_WIN;          /* start-up time resolution asked for, us */
extern int    STARTUP_TRACE;        /* f(t) points printed on the console, 0 = off */

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

/*
 * CTR_START_T (pin J14) as a LEVEL, not an edge. Everything that follows from
 * that is in the note above StartupArm().
 */
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

/*===========================================================================
 * Oscillator start-up time
 *
 * Two commands, because the trigger arrives between them.
 *
 * StartupArm() validates the configuration, hands the job to the measurement
 * task and returns immediately, so the instrument is watching CTR_START_T
 * within microseconds of the command being parsed. The task then anchors
 * t = 0 on the rising edge, captures STARTUP_ENTRIES gap-free timestamps
 * covering STARTUP_SPAN, cuts them into non-overlapping windows of whatever
 * entry count STARTUP_WIN works out to, fits each by least squares for one
 * frequency point, and takes the midpoint of the first window from which
 * STARTUP_HOLD consecutive windows all sit within +/-PPM_RANGE of FREF.
 *
 * StartupWait() blocks until that finishes and returns the start-up time in
 * milliseconds measured from the trigger, or one of the negative ST_ERR_*
 * codes. Calling it again returns the same answer; the result is only
 * discarded by the next StartupArm().
 *
 * A refused arm is reported the same way. STARTUP:INIT is a write with no
 * response, so "the fixture VCC was still connected" cannot come back at
 * arming time -- StartupArm() publishes the matching ST_ERR_* as the pending
 * result instead, and StartupWait() hands it to the host. One return value
 * covers both "the crystal never settled" and "the instrument never got to
 * look".
 *
 * The configuration, the first-edge time and the resolution actually achieved
 * go to the serial console; the return value is the single number the
 * criterion produces. The f(t) curve itself is off by default -- see
 * STARTUP_TRACE.
 *
 * Ordering matters and is not optional:
 *
 *   - CTR_START_T is read as a LEVEL, not an edge. Arm FIRST, then power the
 *     DUT. Arming while the pin is already high is refused
 *     (ST_ARM_ALREADY_HIGH) rather than silently measured from an origin that
 *     is really "whenever the command arrived".
 *   - Drive the pin low again before the next measurement. On the usual
 *     fixture, where CTR_START_T follows the DUT's VCC rail, opening VCC does
 *     this for free.
 *
 * See the task priority note above for what the instrument does and does not
 * do to the network while a measurement is in flight.
 *=========================================================================*/
int    InitStartupTask(void);   /* called once by init_freqcounter() */
int    StartupArm(void);        /* returns immediately; ST_ARM_* */
double StartupWait(void);       /* blocks; ms, or a negative ST_ERR_* */

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
