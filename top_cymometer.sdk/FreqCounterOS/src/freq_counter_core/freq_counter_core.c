/*
 * freq_counter_core.c
 *
 *  Created on: 2026-08-14
 *      Author: han
 *
 *  Measurement layer for the Counter_Core IP. See freq_counter_core.h.
 */

#include "freq_counter_core.h"
#include "tdc_calib.h"
#include "sleep.h"
#include <stdlib.h>

/*===========================================================================
 * Globals
 *=========================================================================*/
int    FREF            = 1000000;   /* 1 MHz */
double GATE_TIME       = 100.0;     /* ms */

u32 g_clk_fs_freq    = CLK_FS_FREQ;
u32 g_clk_fs_freq_sd = CLK_FS_FREQ;

/*===========================================================================
 * DMA
 *
 * The buffer is static and 32-byte aligned. The S2MM channel has no DRE, so
 * an unaligned address would silently corrupt the transfer.
 *=========================================================================*/
static XAxiDma g_dma;
static int     g_dma_ready = 0;

static u64 g_ts_buf[TS_BUF_ENTRIES] __attribute__((aligned(32)));

/*===========================================================================
 * Small helpers
 *=========================================================================*/
static inline void core_wr(u32 off, u32 val)
{
    COUNTER_CORE_mWriteReg(COUNTER_CORE_BASEADDR, off, val);
}

static inline u32 core_rd(u32 off)
{
    return COUNTER_CORE_mReadReg(COUNTER_CORE_BASEADDR, off);
}

/*
 * Hardware prescaler for the signal under test: ratio 1 or
 * COUNTER_CORE_PRESCALE_RATIO.
 *
 * Every function that starts a *timestamp* capture states which ratio it wants,
 * because PRESCALE persists in the register file and nothing clears it between
 * calls. Without that, one high-frequency ReadFr() would leave the divider on
 * and every later capture -- including the TDC calibration runs -- would quietly
 * measure a quarter of the input while looking perfectly healthy.
 *
 * Must be written before CTRL.TS_EN goes high: the divider select is
 * combinational in the RTL, not latched at capture start the way EDGE_SKIP is.
 */
static void set_prescale(u32 ratio)
{
    core_wr(COUNTER_CORE_PRESCALE_OFFSET,
            (ratio > 1u) ? COUNTER_CORE_PRESCALE_DIV4 : 0u);
}

/*===========================================================================
 * Reference clock calibration (SD card)
 *
 * Unchanged in behaviour from the old implementation.
 *=========================================================================*/
u32 LoadClkFsFreq(void)
{
    FATFS fs;
    FIL file;
    FRESULT res;
    char buf[32];
    UINT br;

    res = f_mount(&fs, "0:", 1);
    if (res != FR_OK) {
        xil_printf("[CLK] f_mount failed: %d, using default %d Hz\r\n", res, CLK_FS_FREQ);
        g_clk_fs_freq_sd = CLK_FS_FREQ;
        return g_clk_fs_freq_sd;
    }

    res = f_open(&file, CLK_FS_FREQ_FILE, FA_READ | FA_OPEN_EXISTING);
    if (res != FR_OK) {
        xil_printf("[CLK] %s not found (err=%d), using default %d Hz\r\n",
                   CLK_FS_FREQ_FILE, res, CLK_FS_FREQ);
        g_clk_fs_freq_sd = CLK_FS_FREQ;
        f_mount(NULL, "0:", 0);
        return g_clk_fs_freq_sd;
    }

    memset(buf, 0, sizeof(buf));
    res = f_read(&file, buf, sizeof(buf) - 1, &br);
    f_close(&file);
    f_mount(NULL, "0:", 0);

    if (res == FR_OK && br > 0) {
        unsigned long val = strtoul(buf, NULL, 10);
        if (val > 0) {
            g_clk_fs_freq_sd = (u32)val;
            xil_printf("[CLK] Loaded from SD: %d Hz\r\n", g_clk_fs_freq_sd);
            return g_clk_fs_freq_sd;
        }
    }

    xil_printf("[CLK] Parse failed, using default %d Hz\r\n", CLK_FS_FREQ);
    g_clk_fs_freq_sd = CLK_FS_FREQ;
    return g_clk_fs_freq_sd;
}

int SaveClkFsFreq(u32 freq)
{
    FATFS fs;
    FIL file;
    FRESULT res;
    char buf[32];
    UINT bw;

    res = f_mount(&fs, "0:", 1);
    if (res != FR_OK) return -1;

    res = f_open(&file, CLK_FS_FREQ_FILE, FA_WRITE | FA_CREATE_ALWAYS);
    if (res != FR_OK) {
        f_mount(NULL, "0:", 0);
        return -1;
    }

    int len = sprintf(buf, "%lu", (unsigned long)freq);
    res = f_write(&file, buf, (UINT)len, &bw);
    f_close(&file);
    f_mount(NULL, "0:", 0);

    return (res == FR_OK) ? 0 : -1;
}

u32 GetClkFsFreq(void)
{
    /* STATUS0 = 1 selects the SD calibrated value, 0 selects the nominal one */
    return (ReadSTATUS0() == 1) ? g_clk_fs_freq_sd : CLK_FS_FREQ;
}

/*===========================================================================
 * Counter_Sig control and status
 *=========================================================================*/
int Set_CTR_PRIREF(u32 v)
{
    COUNTER_SIG_mWriteReg(COUNTER_SIG_BASEADDR, COUNTER_SIG_REG3, v);
    return 0;
}

int Set_CTR_REF_CLOCK(u32 v)
{
    COUNTER_SIG_mWriteReg(COUNTER_SIG_BASEADDR, COUNTER_SIG_REG4, v);
    return 0;
}

int Set_CTR_OCXO(u32 v)
{
    COUNTER_SIG_mWriteReg(COUNTER_SIG_BASEADDR, COUNTER_SIG_REG5, v);
    return 0;
}

u32 ReadSTATUS0(void)
{
    return COUNTER_SIG_mReadReg(COUNTER_SIG_BASEADDR, COUNTER_SIG_REG0);
}

u32 ReadSTATUS1(void)
{
    return COUNTER_SIG_mReadReg(COUNTER_SIG_BASEADDR, COUNTER_SIG_REG1);
}

/*===========================================================================
 * Init
 *=========================================================================*/
int InitTsDma(void)
{
    XAxiDma_Config *cfg;

    g_dma_ready = 0;

    cfg = XAxiDma_LookupConfig(TS_DMA_DEVICE_ID);
    if (cfg == NULL) {
        xil_printf("[DMA] LookupConfig failed\r\n");
        return XST_FAILURE;
    }

    if (XAxiDma_CfgInitialize(&g_dma, cfg) != XST_SUCCESS) {
        xil_printf("[DMA] CfgInitialize failed\r\n");
        return XST_FAILURE;
    }

    if (XAxiDma_HasSg(&g_dma)) {
        /* This code path assumes simple mode. SG would need descriptor rings. */
        xil_printf("[DMA] SG mode present, simple mode expected\r\n");
        return XST_FAILURE;
    }

    /* Polling is used rather than interrupts: under FreeRTOS the interrupt
       latency is itself a source of jitter, and the capture path already
       blocks on completion. */
    XAxiDma_IntrDisable(&g_dma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

    g_dma_ready = 1;
    return XST_SUCCESS;
}

int init_freqcounter(void)
{
    u32 version;

    LoadClkFsFreq();

    FREF            = 1000000;

    /* Confirm the IP is present and the address map is right before anything
       else touches it */
    version = core_rd(COUNTER_CORE_VERSION_OFFSET);
    if (version != COUNTER_CORE_VERSION_MAGIC) {
        xil_printf("[CORE] VERSION mismatch: read 0x%08x, expected 0x%08x\r\n",
                   (unsigned int)version,
                   (unsigned int)COUNTER_CORE_VERSION_MAGIC);
        return -1;
    }

    /* Full core reset, then release */
    core_wr(COUNTER_CORE_CTRL_OFFSET, COUNTER_CORE_CTRL_SOFT_RST);
    usleep(10);
    core_wr(COUNTER_CORE_CTRL_OFFSET, 0);

    core_wr(COUNTER_CORE_EDGE_SKIP_OFFSET, 0);
    core_wr(COUNTER_CORE_PKT_LEN_OFFSET, 0);
    set_prescale(1u);

    SetGate(100.0);

    Set_CTR_PRIREF(1);
    Set_CTR_REF_CLOCK(1);
    Set_CTR_OCXO(1);

    if (InitTsDma() != XST_SUCCESS)
        xil_printf("[CORE] DMA init failed, timestamp mode unavailable\r\n");

    COUNTER_CORE_Reg_SelfTest((void *)COUNTER_CORE_BASEADDR);
    DumpCoreStatus();


    /* The 1 ms activity test that used to live here has been removed.
     *
     * It ran the engine with no DMA transfer armed, which pushed roughly 5000
     * timestamps into the downstream AXI-Stream FIFO. TS_RST cannot reach
     * that buffer, so the next real capture started by draining ~4700 stale
     * entries -- a buffer that looked perfectly contiguous because TS_RST
     * restarts seq at 0 and resets the coarse counter, making old and new
     * data indistinguishable.
     *
     * The engine must only run with a transfer armed. TimestampTest does that
     * correctly and reports far more anyway.
     */

    TimestampTest(4096, 0);
    TimestampTest(4096, 0);

    /* Code density. The source must be a few hundred Hz off an exact ratio
       with clk_fs or the phase does not sweep and the histogram is two spikes;
       the function prints a warning when that happens. */
    TdcHistogramTest(32);


    /*
    for (int i = 0; i < 5; i++)
        xil_printf("TS_COUNT=%lu\r\n",
                   (unsigned long)COUNTER_CORE_mReadReg(COUNTER_CORE_BASEADDR,
                                                        COUNTER_CORE_TS_COUNT_OFFSET));
	*/
    FREF = 4999700;
    SetGate(100.0);
    char fs[64];
    for (int i = 0; i < 100; i++) {
        int rc = ReadFr_TimestampMode(fs);
        xil_printf("[%d] rc=%d  f = %s", i, rc, fs);
    }


    return 0;
}

/*===========================================================================
 * Gate configuration
 *
 * GATE_LEN was a hardware counter preload for the equal-precision gate, which
 * no longer exists. What remains is GATE_TIME, the span the timestamp path
 * uses when sizing edge_skip.
 *=========================================================================*/
int SetGate(double msec)
{
    if (msec <= 0.0) return -1;

    GATE_TIME = msec;
    return 0;
}

/*===========================================================================
 * Timestamp capture over DMA
 *
 * In simple mode the transfer completes only once the full buffer is filled,
 * so the caller must size entries such that the signal really produces that
 * many edges within the timeout.
 *=========================================================================*/
int CaptureTimestamps(u64 *buf, int entries, u32 edge_skip, u32 timeout_ms)
{
    u32 bytes;
    u32 lost;
    int remaining;

    u32 dma_base = XPAR_AXI_DMA_0_BASEADDR;

    if (buf == NULL || entries < TS_MIN_ENTRIES || entries > TS_BUF_ENTRIES)
        return TS_ERR_PARAM;
    if (!g_dma_ready)
        return TS_ERR_NO_DMA;

    bytes = (u32)entries * 8u;

    /* Clear any latched status left over from a previous capture, otherwise
       a stale IOC bit would make this transfer appear complete instantly. */
    XAxiDma_WriteReg(dma_base, XAXIDMA_RX_OFFSET + XAXIDMA_SR_OFFSET,
                     XAXIDMA_IRQ_ALL_MASK);

    /* Reset engine, FIFO, counters and sequence numbers */
    core_wr(COUNTER_CORE_CTRL_OFFSET, COUNTER_CORE_CTRL_TS_RST);
    usleep(10);
    core_wr(COUNTER_CORE_CTRL_OFFSET, 0);

    core_wr(COUNTER_CORE_EDGE_SKIP_OFFSET, edge_skip);

    /* TLAST on the last beat of the buffer.
     *
     * The S2MM channel delimits packets by TLAST; filling the buffer length
     * is not by itself an end of transfer. Without TLAST the channel stays
     * busy forever and XAxiDma_Busy() never clears, which shows up as a
     * timeout even though the data arrived.
     *
     * Setting the packet length equal to the entry count makes TLAST land
     * exactly on the last word of the buffer. entries is bounded by
     * TS_BUF_ENTRIES (4096), well inside the 16-bit PKT_LEN field. */
    core_wr(COUNTER_CORE_PKT_LEN_OFFSET, (u32)entries);

    /* Poison the buffer, then flush so the pattern really reaches DDR.
       Entries the DMA does not write stay recognisable, which is the only
       way to tell a short transfer from a full one -- stale data from a
       previous capture passes both the continuity check and the delta
       statistics. */
    {
        int pi;
        for (pi = 0; pi < entries; pi++)
            buf[pi] = TS_POISON;
    }
    Xil_DCacheFlushRange((UINTPTR)buf, bytes);

    if (XAxiDma_SimpleTransfer(&g_dma, (UINTPTR)buf, bytes,
                               XAXIDMA_DEVICE_TO_DMA) != XST_SUCCESS) {
        return TS_ERR_DMA_START;
    }

    core_wr(COUNTER_CORE_CTRL_OFFSET, COUNTER_CORE_CTRL_TS_EN);

    /* Poll at 100 us, not 1 ms.
     *
     * The engine keeps capturing until the stop below, so every microsecond
     * between DMA completion and noticing it is time the FIFO can overflow
     * with data nobody will read. At 5 MHz a 1 ms polling gap produces 5000
     * edges against a 4096 deep FIFO, which guarantees a spurious overflow
     * report even though the captured buffer is perfectly intact.
     *
     * 100 us keeps that below 500 edges at 5 MHz. Faster inputs need either
     * fewer entries or a non-zero edge_skip. timeout_ms stays in
     * milliseconds for the caller. */
    /* Wait on the IOC status bit rather than XAxiDma_Busy().
     *
     * XAxiDma_Busy() tests IDLE. The engine cannot be stopped in the same
     * instant the buffer fills, so the surplus data lands on a channel that
     * has already finished its transfer; that raises DMAIntErr and halts the
     * channel, and a halted channel never sets IDLE. Busy() therefore stays
     * true forever even though every byte arrived intact.
     *
     * IOC latches on completion and survives the subsequent error, making it
     * the dependable "buffer is full" signal. */
    remaining = (int)timeout_ms * 10;
    for (;;) {
        u32 sr = XAxiDma_ReadReg(dma_base,
                                 XAXIDMA_RX_OFFSET + XAXIDMA_SR_OFFSET);

        if (sr & XAXIDMA_IRQ_IOC_MASK)
            break;

        if (--remaining <= 0) {
            core_wr(COUNTER_CORE_CTRL_OFFSET, 0);

            /* Dump before the reset -- resetting clears every status bit,
               and those bits are the whole reason the transfer stalled. */
            DumpDmaStatus();

            /* Make whatever the DMA did manage to write visible, so the
               caller can inspect the buffer contents after a timeout. */
            Xil_DCacheInvalidateRange((UINTPTR)buf, bytes);

            XAxiDma_Reset(&g_dma);
            while (!XAxiDma_ResetIsDone(&g_dma)) { }
            return TS_ERR_TIMEOUT;
        }
        usleep(100);
    }

    /* Stop first, then read the counters: anything captured after this point
       would only pollute LOST_COUNT. */
    core_wr(COUNTER_CORE_CTRL_OFFSET, 0);

    /* Clear the latched interrupt and error bits, and if the tail-end
       overrun halted the channel, reset it so the next capture starts from a
       clean state. The data already in DDR is unaffected by the reset. */
    {
        u32 sr = XAxiDma_ReadReg(dma_base,
                                 XAXIDMA_RX_OFFSET + XAXIDMA_SR_OFFSET);

        XAxiDma_WriteReg(dma_base, XAXIDMA_RX_OFFSET + XAXIDMA_SR_OFFSET,
                         sr & XAXIDMA_IRQ_ALL_MASK);

        if (sr & XAXIDMA_HALTED_MASK) {
            XAxiDma_Reset(&g_dma);
            while (!XAxiDma_ResetIsDone(&g_dma)) { }
        }
    }

    /* Invalidate again before reading: the DMA wrote DDR behind the cache */
    Xil_DCacheInvalidateRange((UINTPTR)buf, bytes);

    /* Gap-free criterion.
     *
     * LOST_COUNT counts every edge dropped during the whole capture window,
     * including the ones produced after the buffer was already full -- the
     * engine keeps running until software stops it, and at high input rates
     * that tail alone can be thousands of edges. Those drops happen after
     * the data was collected and do not corrupt any of it, so failing the
     * capture on LOST_COUNT alone rejects perfectly good buffers.
     *
     * What matters is whether the delivered buffer has holes inside it.
     * VerifyContinuity finds those from the coarse increments, which is the
     * only test that catches dropped edges (seq cannot -- discarded edges
     * take no sequence number). */
    lost = core_rd(COUNTER_CORE_LOST_COUNT_OFFSET);

    /* Drop a stale leading entry.
     *
     * CTRL.TS_RST resets the IP's own FIFO but cannot reach the downstream
     * AXI-Stream FIFO, whose reset is wired to the global one in the block
     * design. That buffer can therefore still hold one entry from the
     * previous capture, and the DMA delivers it first.
     *
     * Such an entry is unmistakable: TS_RST zeroes the free running counter,
     * so anything left from an earlier capture carries a coarse value far
     * larger than the fresh data that follows -- time appears to run
     * backwards across the boundary. Measured example: coarse 33618150
     * (= 107 ms, the previous capture's length) followed by 58121 (= 186 us
     * into the new one).
     *
     * This is a workaround, not a fix. Properly solving it means resetting
     * the downstream FIFO together with the engine.
     */
    if (entries >= 2) {
        u32 c0 = COUNTER_CORE_TS_COARSE(buf[0]);
        u32 c1 = COUNTER_CORE_TS_COARSE(buf[1]);

        if (c0 > c1) {
            xil_printf("[TS] dropped stale leading entry (coarse %lu > %lu)\r\n",
                       (unsigned long)c0, (unsigned long)c1);
            memmove(&buf[0], &buf[1], (size_t)(entries - 1) * sizeof(u64));
            entries--;
        }
    }

    /* Drop a duplicated leading entry.
     *
     * An edge landing on the same clk_fs cycle as the engine's start pulse got
     * captured while the skip counter reload was overridden by the start
     * branch, so the following edge was captured too -- two entries one signal
     * period apart at the head of an otherwise correctly skipped series. Odds
     * are one in (f_s / f_x), about 1.6% at 5 MHz, which matches how rarely it
     * showed up.
     *
     * The damage is out of proportion to the defect: VerifyContinuity
     * estimates the normal spacing as the smallest coarse increment, so that
     * one short interval drags the threshold below the real spacing and EVERY
     * subsequent interval reads as a gap. The capture is then reported as
     * broken and the caller refits only the leading run.
     *
     * Fixed in ts_engine.v (the ts_start branch now reloads when it captures).
     * This guard stays for bitstreams built before that fix -- with correct
     * data the two intervals are within one tick of each other and it never
     * triggers.
     */
    if (entries >= 3) {
        u32 d01 = COUNTER_CORE_TS_COARSE(buf[1]) - COUNTER_CORE_TS_COARSE(buf[0]);
        u32 d12 = COUNTER_CORE_TS_COARSE(buf[2]) - COUNTER_CORE_TS_COARSE(buf[1]);

        if (d01 * 2u < d12) {
            xil_printf("[TS] dropped duplicated leading entry"
                       " (delta %lu then %lu)\r\n",
                       (unsigned long)d01, (unsigned long)d12);
            memmove(&buf[0], &buf[1], (size_t)(entries - 1) * sizeof(u64));
            entries--;
        }
    }

    {
        int brk = VerifyContinuity(buf, entries);

        if (brk >= 0) {
            xil_printf("[TS] gap inside buffer at index %d (LOST_COUNT=%lu)\r\n",
                       brk, (unsigned long)lost);

            /* Characterise the gap: how big is it against the normal spacing?
               A gap that always lands at index 1 points at the first captured
               entry rather than at a dropped edge mid-series. */
            if (brk >= 1 && entries >= 4) {
                u32 c_prev = COUNTER_CORE_TS_COARSE(buf[brk - 1]);
                u32 c_here = COUNTER_CORE_TS_COARSE(buf[brk]);
                u32 c_next = COUNTER_CORE_TS_COARSE(buf[brk + 1]);
                u32 d_gap  = c_here - c_prev;
                u32 d_norm = (brk + 1 < entries) ? (c_next - c_here) : 0;

                xil_printf("      coarse %lu -> %lu, gap delta=%lu, next delta=%lu\r\n",
                           (unsigned long)c_prev, (unsigned long)c_here,
                           (unsigned long)d_gap, (unsigned long)d_norm);
                xil_printf("      seq %lu -> %lu, ovf=%lu\r\n",
                           (unsigned long)COUNTER_CORE_TS_SEQ(buf[brk - 1]),
                           (unsigned long)COUNTER_CORE_TS_SEQ(buf[brk]),
                           (unsigned long)COUNTER_CORE_TS_OVF(buf[brk]));
            }

            return TS_ERR_OVERFLOW;
        }
    }

    if (lost != 0)
        xil_printf("[TS] %lu edges dropped after the buffer filled, data intact\r\n",
                   (unsigned long)lost);

    return entries;
}

/*===========================================================================
 * Continuity check
 *
 * Returns -1 when the series is intact, otherwise the index where it breaks.
 *
 * Three independent tests, because no single one covers every failure:
 *
 *   ovf flag      the hardware marks the first entry written after a drop.
 *                 Misses drops that happen once the buffer is already full,
 *                 since no further entry gets written to carry the mark.
 *
 *   seq step      catches a buffer stitched together from two captures.
 *                 Does NOT catch dropped edges: seq_cnt only advances on a
 *                 successful write, so discarded edges take no sequence
 *                 number and a hole leaves seq perfectly contiguous. This
 *                 was the blind spot that let a series missing ~1600 edges
 *                 pass as "contiguous" while the regression silently
 *                 returned 83.9 MHz for a 99 MHz input.
 *
 *   coarse step   the one that actually finds dropped edges. A hole shows up
 *                 as a coarse increment several times the normal spacing.
 *=========================================================================*/
int VerifyContinuity(const u64 *buf, int count)
{
    int i;
    u32 prev_seq;
    u32 min_delta = 0xFFFFFFFFu;
    u32 threshold;

    if (buf == NULL || count < 2) return -1;

    /* Pass 1: smallest coarse increment in the series.
     *
     * Dropping edges can only make an increment larger, never smaller, so the
     * minimum is a robust estimate of the true spacing even when the series
     * already has holes -- no need to know f_x or edge_skip beforehand. */
    for (i = 1; i < count; i++) {
        u32 d = COUNTER_CORE_TS_COARSE(buf[i])
              - COUNTER_CORE_TS_COARSE(buf[i - 1]);
        if (d < min_delta)
            min_delta = d;
    }

    /* Normal spacing jitters by one coarse tick (e.g. 62/63 at 5 MHz), so
     * twice the minimum plus slack sits well clear of legitimate variation
     * while any real gap is a multiple of the spacing. */
    threshold = min_delta * 2u + 2u;

    prev_seq = COUNTER_CORE_TS_SEQ(buf[0]);

    for (i = 1; i < count; i++) {
        u32 s = COUNTER_CORE_TS_SEQ(buf[i]);
        u32 d = COUNTER_CORE_TS_COARSE(buf[i])
              - COUNTER_CORE_TS_COARSE(buf[i - 1]);

        if (COUNTER_CORE_TS_OVF(buf[i]))
            return i;

        /* 22 bits: must match seq_cnt in ts_engine.v, which gave up two bits
           to the 8-bit TDC field when the chain grew to 256 taps. */
        if (s != ((prev_seq + 1u) & 0x3FFFFFu))
            return i;

        if (d > threshold)
            return i;

        prev_seq = s;
    }

    return -1;
}

/*===========================================================================
 * Least squares fit
 *
 * t[i] = a + b * seq[i], frequency = 1 / b, in units of captured edges.
 * The caller multiplies by (edge_skip + 1).
 *
 * Using seq rather than the array index means the fit stays correct even if
 * entries are skipped, and it is the same quantity the hardware guarantees to
 * be contiguous.
 *
 * The 32-bit coarse counter wraps every 2^32 / f_s seconds (about 13.7 s at
 * 312.5 MHz), so an unwrap offset is accumulated as the series is walked.
 *=========================================================================*/
double ComputeFreqFromTimestamps(const u64 *buf, int count, u32 f_s)
{
    int i;
    u32 seq0, prev_coarse;
    double wrap_period, wrap_offset, period_ps;
    double sum_x = 0.0, sum_t = 0.0, sum_xt = 0.0, sum_x2 = 0.0;
    double n, denom, slope;

    if (buf == NULL || count < 3 || f_s == 0)
        return 0.0;

    wrap_period = 4294967296.0 / (double)f_s;
    wrap_offset = 0.0;
    period_ps   = 1.0e12 / (double)f_s;

    seq0        = COUNTER_CORE_TS_SEQ(buf[0]);
    prev_coarse = COUNTER_CORE_TS_COARSE(buf[0]);

    for (i = 0; i < count; i++) {
        u32 coarse = COUNTER_CORE_TS_COARSE(buf[i]);
        u32 tdc    = COUNTER_CORE_TS_TDC(buf[i]);
        double x, t;

        if (coarse < prev_coarse)
            wrap_offset += wrap_period;
        prev_coarse = coarse;

        /* Phase comes from the code density table, not tdc/NUM_TAPS. The raw
           code is neither linear in time nor full scale -- only 168 of the 256
           codes are reachable, so the naive form compresses a whole period
           into 0.656 of one and spaces the points unevenly on top of that.

           tdc_ok is still not used to discard points. Code 0 means the edge
           landed in the chain's head dead zone, and the table gives that its
           midpoint (41 ps), which is real information -- better than dropping
           the sample or calling its phase zero. */
        t = ((double)coarse + (double)tdc_phase_ts[tdc] / period_ps)
            / (double)f_s + wrap_offset;

        x = (double)((COUNTER_CORE_TS_SEQ(buf[i]) - seq0) & 0x3FFFFFu);

        sum_x  += x;
        sum_t  += t;
        sum_xt += x * t;
        sum_x2 += x * x;
    }

    n = (double)count;
    denom = n * sum_x2 - sum_x * sum_x;
    if (fabs(denom) < 1e-30)
        return 0.0;

    slope = (n * sum_xt - sum_x * sum_t) / denom;   /* seconds per captured edge */
    if (slope <= 0.0)
        return 0.0;

    return 1.0 / slope;
}

/*===========================================================================
 * Timestamp mode
 *
 * entries and edge_skip are chosen so the buffer is guaranteed to fill within
 * the gate time. In simple mode an under-filled buffer would simply time out.
 *
 * This is the only path that turns the hardware prescaler on, and it owns the
 * whole set of consequences: the decision, the register write, the edge count
 * the divided signal will actually produce, and scaling the result back up.
 * Splitting those apart is how you get a reading exactly 4x off.
 *=========================================================================*/
int ReadFr_TimestampMode(char *Freq)
{
    int entries, rc, brk;
    u32 edge_skip;
    double expected_edges, freq;
    u32 f_s, timeout_ms, safe_limit, prescale;

    if (Freq == NULL) return -1;

    if (FREF <= 0) {
        sprintf(Freq, "0.00000\n");
        return -1;
    }

    f_s = GetClkFsFreq();

    /* Above the Nyquist limit of the reference clock the engine cannot see
       every edge -- it samples the input as data in the clk_fs domain -- so the
       input is divided by 4 in hardware and the result scaled back up.
       Precision does not suffer: the divided rising edges ARE input rising
       edges, and the fit's precision comes from the time span, not the edge
       rate. See the prescaler design note under doc/, section 5. */
    safe_limit = (u32)((double)(f_s / 2u) * 0.9);
    prescale = ((u32)FREF > safe_limit) ? COUNTER_CORE_PRESCALE_RATIO : 1u;
    set_prescale(prescale);

    /* Edges reaching the engine are the divided ones */
    expected_edges = ((double)FREF / (double)prescale) * (GATE_TIME / 1000.0);

    if (expected_edges >= (double)TS_BUF_ENTRIES) {
        /* More edges than the buffer holds: thin them out. The 0.9 margin
           keeps the buffer filling comfortably before the timeout. */
        edge_skip = (u32)(expected_edges / ((double)TS_BUF_ENTRIES * 0.9));
        if (edge_skip > 0) edge_skip -= 1;
        entries = TS_BUF_ENTRIES;
    } else {
        edge_skip = 0;
        entries = (int)(expected_edges * 0.9);
    }

    if (entries < TS_MIN_ENTRIES) {
        /* Signal too slow for a meaningful fit within this gate */
        sprintf(Freq, "0.00000\n");
        return -1;
    }
    if (entries > TS_BUF_ENTRIES)
        entries = TS_BUF_ENTRIES;

    /* Allow three gate times plus slack before giving up */
    timeout_ms = (u32)(GATE_TIME * 3.0) + 200u;

    rc = CaptureTimestamps(g_ts_buf, entries, edge_skip, timeout_ms);

    if (rc == TS_ERR_OVERFLOW) {
        /* Dropped edges: back off the rate once and retry */
        edge_skip = (edge_skip + 1u) * 2u - 1u;
        rc = CaptureTimestamps(g_ts_buf, entries, edge_skip, timeout_ms);
    }

    if (rc < 0) {
        sprintf(Freq, "0.00000\n");
        return rc;
    }

    brk = VerifyContinuity(g_ts_buf, rc);
    if (brk >= 0) {
        /* Fit only the leading contiguous run */
        xil_printf("[TS] sequence break at %d, fitting first run\r\n", brk);
        rc = brk;
        if (rc < TS_MIN_ENTRIES) {
            sprintf(Freq, "0.00000\n");
            return -1;
        }
    }

    freq = ComputeFreqFromTimestamps(g_ts_buf, rc, f_s);

    /* Input periods spanned by one captured interval: edge_skip+1 of the
       divided signal, each of which is prescale input periods */
    freq *= (double)(edge_skip + 1u) * (double)prescale;

    if (freq <= 0.0) {
        sprintf(Freq, "0.00000\n");
        return -1;
    }

    sprintf(Freq, "%.5f\n", freq);
    return 0;
}

/*===========================================================================
 * Dispatch
 *
 * There is only one measurement path now. Above the Nyquist limit the input is
 * divided by 4 in hardware and the timestamp engine keeps working, which
 * ReadFr_TimestampMode handles on its own.
 *=========================================================================*/
int ReadFr(char *Freq)
{
    return ReadFr_TimestampMode(Freq);
}

/*===========================================================================
 * Diagnostics
 *=========================================================================*/
void DumpCoreStatus(void)
{
    u32 status = core_rd(COUNTER_CORE_STATUS_OFFSET);

    xil_printf("---- Counter_Core status ----\r\n");
    xil_printf(" VERSION    0x%08x\r\n", (unsigned int)core_rd(COUNTER_CORE_VERSION_OFFSET));
    xil_printf(" CTRL       0x%08x\r\n", (unsigned int)core_rd(COUNTER_CORE_CTRL_OFFSET));
    xil_printf(" STATUS     0x%08x  [run=%d ovf=%d empty=%d]\r\n",
               (unsigned int)status,
               (status & COUNTER_CORE_STAT_TS_RUNNING) ? 1 : 0,
               (status & COUNTER_CORE_STAT_OVERFLOW)   ? 1 : 0,
               (status & COUNTER_CORE_STAT_FIFO_EMPTY) ? 1 : 0);
    xil_printf(" EDGE_SKIP  %lu\r\n",  (unsigned long)core_rd(COUNTER_CORE_EDGE_SKIP_OFFSET));
    xil_printf(" TS_COUNT   %lu\r\n",  (unsigned long)core_rd(COUNTER_CORE_TS_COUNT_OFFSET));
    xil_printf(" LOST_COUNT %lu\r\n",  (unsigned long)core_rd(COUNTER_CORE_LOST_COUNT_OFFSET));
    xil_printf(" FIFO_LEVEL %lu\r\n",  (unsigned long)core_rd(COUNTER_CORE_FIFO_LEVEL_OFFSET));
    xil_printf(" PRESCALE   0x%08x  [div4=%d]\r\n",
               (unsigned int)core_rd(COUNTER_CORE_PRESCALE_OFFSET),
               (core_rd(COUNTER_CORE_PRESCALE_OFFSET)
                & COUNTER_CORE_PRESCALE_DIV4) ? 1 : 0);
}

/*===========================================================================
 * Fixed point printing
 *
 * xil_printf has no %f. Passing a double to it prints garbage and, because
 * doubles are passed differently from integers, also corrupts the remaining
 * arguments. Values are split into an integer part and three decimals here.
 *
 * Limited to values below 2^32; that covers any frequency this instrument
 * measures.
 *=========================================================================*/
static void print_fixed3(const char *tag, double v, const char *unit)
{
    u32 ip, fp;

    if (v < 0.0) {
        xil_printf("%s-", tag);
        v = -v;
    } else {
        xil_printf("%s", tag);
    }

    ip = (u32)v;
    fp = (u32)((v - (double)ip) * 1000.0 + 0.5);

    /* Rounding may carry into the integer part */
    if (fp >= 1000u) {
        ip += 1u;
        fp -= 1000u;
    }

    xil_printf("%lu.%03lu %s\r\n", (unsigned long)ip, (unsigned long)fp, unit);
}

/*===========================================================================
 * DumpDmaStatus -- raw S2MM register dump
 *
 * When a capture times out the question is whether the DMA saw the data at
 * all, and if so why it did not consider the transfer finished. The driver
 * API does not expose that; the hardware registers do.
 *
 * Register map (PG021): the S2MM block sits at offset 0x30, so
 *   0x30 DMACR, 0x34 DMASR, 0x48 DESTADDR, 0x58 BUFFLEN
 *
 * BUFFLEN reads back the number of bytes actually transferred once the
 * transfer completes, which is the single most useful number here.
 *=========================================================================*/
void DumpDmaStatus(void)
{
    u32 base = XPAR_AXI_DMA_0_BASEADDR;
    u32 cr, sr, da, len;

    cr  = XAxiDma_ReadReg(base, XAXIDMA_RX_OFFSET + XAXIDMA_CR_OFFSET);
    sr  = XAxiDma_ReadReg(base, XAXIDMA_RX_OFFSET + XAXIDMA_SR_OFFSET);
    da  = XAxiDma_ReadReg(base, XAXIDMA_RX_OFFSET + XAXIDMA_DESTADDR_OFFSET);
    len = XAxiDma_ReadReg(base, XAXIDMA_RX_OFFSET + XAXIDMA_BUFFLEN_OFFSET);

    xil_printf("---- AXI DMA S2MM ----\r\n");
    xil_printf(" DMACR    0x%08x  [runstop=%lu reset=%lu]\r\n",
               (unsigned int)cr,
               (unsigned long)(cr & 1u),
               (unsigned long)((cr >> 2) & 1u));
    xil_printf(" DMASR    0x%08x\r\n", (unsigned int)sr);
    xil_printf("   halted=%lu idle=%lu SGincl=%lu\r\n",
               (unsigned long)(sr & 1u),
               (unsigned long)((sr >> 1) & 1u),
               (unsigned long)((sr >> 3) & 1u));
    xil_printf("   DMAIntErr=%lu DMASlvErr=%lu DMADecErr=%lu\r\n",
               (unsigned long)((sr >> 4) & 1u),
               (unsigned long)((sr >> 5) & 1u),
               (unsigned long)((sr >> 6) & 1u));
    xil_printf("   IOC_Irq=%lu Err_Irq=%lu\r\n",
               (unsigned long)((sr >> 12) & 1u),
               (unsigned long)((sr >> 14) & 1u));
    xil_printf(" DESTADDR 0x%08x\r\n", (unsigned int)da);
    xil_printf(" BUFFLEN  %lu bytes\r\n", (unsigned long)len);
}

/*===========================================================================
 * Capture result code to text
 *=========================================================================*/
static const char *ts_err_text(int rc)
{
    switch (rc) {
    case TS_ERR_DMA_START: return "DMA refused the transfer";
    case TS_ERR_TIMEOUT:   return "timeout: buffer never filled";
    case TS_ERR_OVERFLOW:  return "gap inside the captured buffer";
    case TS_ERR_PARAM:     return "bad parameters";
    case TS_ERR_NO_DMA:    return "DMA not initialized";
    default:               return "unknown";
    }
}

/*===========================================================================
 * TimestampTest -- end to end check of the gap-free timestamp path
 *
 * Runs one capture straight into DDR over DMA, then checks everything that
 * can be checked without an external reference:
 *
 *   LOST_COUNT == 0        nothing was dropped; this is the gap-free claim
 *   sequence contiguous    no holes anywhere in the series
 *   coarse delta stable    the interval between edges, in clk_fs periods.
 *                          For 5 MHz against 312.5 MHz it should alternate
 *                          between 62 and 63, averaging 62.5. Seeing that
 *                          alternation is strong evidence that the coarse
 *                          counter and the edge detector are aligned.
 *   tdc_ok rate            how often the delay chain caught a transition
 *
 * Frequency is then recovered by least squares over the whole series and can
 * be compared against the equal-precision path.
 *
 * entries    how many timestamps to collect, up to TS_BUF_ENTRIES
 * edge_skip  0 means every edge, which is the real gap-free case
 *=========================================================================*/
void TimestampTest(int entries, u32 edge_skip)
{
    int rc, brk, i, n;
    int usable;
    u32 f_s, lost, ts_cnt, status;
    u32 d_min = 0xFFFFFFFFu, d_max = 0;
    u32 tdc_min = 0xFFFFFFFFu, tdc_max = 0;
    int tdc_ok_cnt = 0, ovf_cnt = 0;
    double d_mean, freq;

    if (entries < TS_MIN_ENTRIES || entries > TS_BUF_ENTRIES) {
        xil_printf("[TSTEST] entries must be %d..%d\r\n",
                   TS_MIN_ENTRIES, TS_BUF_ENTRIES);
        return;
    }

    f_s = GetClkFsFreq();
    if (f_s == 0) {
        xil_printf("[TSTEST] reference frequency is zero\r\n");
        return;
    }

    /* Diagnostics report the raw input, never a prescaled quarter of it */
    set_prescale(1u);

    xil_printf("---- TimestampTest: %d entries, edge_skip=%lu ----\r\n",
               entries, (unsigned long)edge_skip);
    xil_printf(" reference  %lu Hz\r\n", (unsigned long)f_s);

    /* A fixed generous timeout: 2 s covers 4096 entries down to a few kHz.
       A slow signal simply fails rather than hanging. */
    rc = CaptureTimestamps(g_ts_buf, entries, edge_skip, 2000);

    status = core_rd(COUNTER_CORE_STATUS_OFFSET);
    ts_cnt = core_rd(COUNTER_CORE_TS_COUNT_OFFSET);
    lost   = core_rd(COUNTER_CORE_LOST_COUNT_OFFSET);

    xil_printf(" TS_COUNT   %lu\r\n", (unsigned long)ts_cnt);
    xil_printf(" LOST_COUNT %lu%s\r\n", (unsigned long)lost,
               (lost != 0 && rc >= 0)
                   ? "  (dropped after buffer filled, data intact)" : "");
    xil_printf(" overflow   %d\r\n",
               (status & COUNTER_CORE_STAT_OVERFLOW) ? 1 : 0);

    /* An overflow still leaves valid data in the buffer, and inspecting it is
       exactly how the cause gets diagnosed, so analysis continues. Any other
       error means the buffer holds nothing worth reading. */
    if (rc < 0 && rc != TS_ERR_OVERFLOW) {
        xil_printf(" FAILED: %s (%d)\r\n", ts_err_text(rc), rc);

        /* Raw dump of whatever landed in the buffer. This separates the two
           candidate causes that look identical from the outside:
             all zeros        -> nothing was written, the stream never
                                 reached the DMA
             plausible words  -> data arrived but the transfer did not end,
                                 so the problem is TLAST or DMA config
             shifted/garbled  -> stream width mismatch, each 64-bit entry
                                 split or truncated on the way */
        xil_printf(" raw buffer head:\r\n");
        for (i = 0; i < 8; i++) {
            u64 w = g_ts_buf[i];
            xil_printf("  [%d] 0x%08x%08x  seq=%lu coarse=%lu\r\n",
                       i,
                       (unsigned int)(u32)(w >> 32),
                       (unsigned int)(u32)w,
                       (unsigned long)COUNTER_CORE_TS_SEQ(w),
                       (unsigned long)COUNTER_CORE_TS_COARSE(w));
        }
        return;
    }

    if (rc == TS_ERR_OVERFLOW) {
        xil_printf(" NOT gap-free: %s\r\n", ts_err_text(rc));
        n = entries;
    } else {
        n = rc;
    }

    /*-------------------------------------------------------------------
     * How much did the DMA actually write?
     *
     * This has to be checked before anything else. A short transfer leaves
     * the tail holding data from the previous capture, and that stale data
     * is indistinguishable from fresh: TS_RST restarts seq at 0 and resets
     * the free running counter, so the sequence still looks contiguous and
     * the deltas still look right. Every other check below would pass while
     * reporting on old content.
     *-----------------------------------------------------------------*/
    {
        int written = n;
        for (i = 0; i < n; i++) {
            if (g_ts_buf[i] == TS_POISON) {
                written = i;
                break;
            }
        }

        if (written != n) {
            xil_printf(" SHORT TRANSFER: DMA wrote %d of %d entries\r\n",
                       written, n);
            xil_printf("   entries beyond %d are stale data from a previous run\r\n",
                       written);
            n = written;

            if (n < TS_MIN_ENTRIES) {
                xil_printf(" too few real entries to analyse\r\n");
                DumpCoreStatus();
                return;
            }
        } else {
            xil_printf(" DMA wrote all %d entries\r\n", n);
        }
    }

    /*-------------------------------------------------------------------
     * Sequence continuity
     *-----------------------------------------------------------------*/
    brk = VerifyContinuity(g_ts_buf, n);
    if (brk < 0) {
        xil_printf(" sequence  contiguous over all %d entries\r\n", n);
        usable = n;
    } else {
        xil_printf(" sequence  BREAK at index %d, first run is %d entries\r\n",
                   brk, brk);
        usable = brk;
    }

    /*-------------------------------------------------------------------
     * First entries in detail
     *-----------------------------------------------------------------*/
    xil_printf(" idx  seq        coarse       delta  tdc  ok ovf\r\n");
    for (i = 0; i < 16 && i < n; i++) {
        u64 w = g_ts_buf[i];
        u32 delta = (i == 0) ? 0
                  : (COUNTER_CORE_TS_COARSE(w)
                     - COUNTER_CORE_TS_COARSE(g_ts_buf[i - 1]));

        xil_printf(" %3d  %-9lu  %-11lu  %-5lu  %3lu  %lu  %lu\r\n",
                   i,
                   (unsigned long)COUNTER_CORE_TS_SEQ(w),
                   (unsigned long)COUNTER_CORE_TS_COARSE(w),
                   (unsigned long)delta,
                   (unsigned long)COUNTER_CORE_TS_TDC(w),
                   (unsigned long)COUNTER_CORE_TS_TDC_OK(w),
                   (unsigned long)COUNTER_CORE_TS_OVF(w));
    }

    /*-------------------------------------------------------------------
     * Statistics over the usable run
     *
     * Unsigned subtraction handles a 32-bit coarse wrap on its own.
     *-----------------------------------------------------------------*/
    for (i = 0; i < usable; i++) {
        u64 w = g_ts_buf[i];
        u32 tdc = COUNTER_CORE_TS_TDC(w);

        if (COUNTER_CORE_TS_TDC_OK(w)) tdc_ok_cnt++;
        if (COUNTER_CORE_TS_OVF(w))    ovf_cnt++;

        if (tdc < tdc_min) tdc_min = tdc;
        if (tdc > tdc_max) tdc_max = tdc;

        if (i > 0) {
            u32 d = COUNTER_CORE_TS_COARSE(w)
                  - COUNTER_CORE_TS_COARSE(g_ts_buf[i - 1]);
            if (d < d_min) d_min = d;
            if (d > d_max) d_max = d;
        }
    }

    if (usable < 2) {
        xil_printf(" too few usable entries to analyse\r\n");
        return;
    }

    /* Mean interval from the endpoints only: intermediate deltas cancel, so
       this is exact and immune to the +/-1 jitter on individual deltas. */
    d_mean = (double)(COUNTER_CORE_TS_COARSE(g_ts_buf[usable - 1])
                    - COUNTER_CORE_TS_COARSE(g_ts_buf[0]))
           / (double)(usable - 1);

    xil_printf("---- summary ----\r\n");
    xil_printf(" usable     %d entries\r\n", usable);
    xil_printf(" delta      %lu .. %lu clk_fs periods\r\n",
               (unsigned long)d_min, (unsigned long)d_max);
    print_fixed3(" delta mean ", d_mean, "clk_fs periods");
    xil_printf(" tdc        %lu .. %lu\r\n",
               (unsigned long)tdc_min, (unsigned long)tdc_max);
    xil_printf(" tdc_ok     %d/%d\r\n", tdc_ok_cnt, usable);
    xil_printf(" ovf marks  %d\r\n", ovf_cnt);

    /*-------------------------------------------------------------------
     * Frequency, two ways
     *-----------------------------------------------------------------*/
    if (d_mean > 0.0)
        print_fixed3(" f (delta)  ",
                     (double)f_s * (double)(edge_skip + 1u) / d_mean, "Hz");

    freq = ComputeFreqFromTimestamps(g_ts_buf, usable, f_s);
    freq *= (double)(edge_skip + 1u);
    print_fixed3(" f (fit)    ", freq, "Hz");

    /*-------------------------------------------------------------------
     * Verdict
     *-----------------------------------------------------------------*/
    /* LOST_COUNT is deliberately not part of this verdict. Edges dropped
       after the buffer filled do not affect what was collected, and at high
       input rates that tail is unavoidable -- the engine keeps running until
       software stops it. The verdict is about the delivered buffer only. */
    if (brk < 0 && rc == entries)
        xil_printf(" RESULT: gap-free, %d consecutive timestamps\r\n", n);
    else
        xil_printf(" RESULT: gaps present, see the sequence check above\r\n");

    /* Full register state right after the capture.
     *
     * TS_COUNT reads 504 regardless of whether 1024 or 4096 entries were
     * requested, which happens to equal exactly what should be left in the
     * FIFO (total written minus what the DMA took). Whether that means
     * ts_count_fs really is 504, or TS_COUNT is somehow returning the FIFO
     * level, cannot be told from TS_COUNT alone -- the two need to be read
     * side by side. */
    DumpCoreStatus();

    if (tdc_ok_cnt == 0)
        xil_printf(" NOTE: tdc_ok never set, fine values are all zero\r\n");
    else if (tdc_min == tdc_max)
        xil_printf(" NOTE: tdc constant at %lu, delay chain suspect\r\n",
                   (unsigned long)tdc_min);
}

/*===========================================================================
 * Histogram collection, shared by TdcHistogramTest and PrintTdcCalibTable
 *
 * Returns the total sample count, or a negative TS_ERR_* on a failed capture.
 *=========================================================================*/
static int tdc_collect_histogram(u32 *hist, int rounds,
                                 u32 *valid, u32 *sat_hi, u32 *sat_lo)
{
    int r, i, rc;
    int total = 0;

    /* Code density must be measured on the raw input: the prescaler would cut
       the edge rate by four and, more to the point, PRESCALE may still be set
       from a preceding high-frequency ReadFr(). */
    set_prescale(1u);

    for (i = 0; i < TDC_NUM_TAPS; i++)
        hist[i] = 0;

    *valid = 0;
    *sat_hi = 0;
    *sat_lo = 0;

    for (r = 0; r < rounds; r++) {
        rc = CaptureTimestamps(g_ts_buf, TS_BUF_ENTRIES, 0, 2000);

        /* An overflow still leaves a full buffer of valid samples, and for a
           density measurement only the phase distribution matters, not
           continuity -- so those rounds are kept. */
        if (rc < 0 && rc != TS_ERR_OVERFLOW)
            return rc;
        if (rc < 0)
            rc = TS_BUF_ENTRIES;

        for (i = 0; i < rc; i++) {
            u64 w   = g_ts_buf[i];
            u32 tdc = COUNTER_CORE_TS_TDC(w);

            if (COUNTER_CORE_TS_TDC_OK(w)) {
                hist[tdc]++;
                (*valid)++;
            } else if (tdc == 0) {
                (*sat_lo)++;   /* popcount 0: edge sat inside the head dead zone */
            } else {
                (*sat_hi)++;   /* popcount NUM_TAPS: phase ran past the chain end */
            }
            total++;
        }
    }

    return total;
}

/*===========================================================================
 * TdcHistogramTest -- code density measurement of the delay chain
 *
 * Measures the width of every TDC bin, and from those the total time span of
 * the chain, by counting how often each code comes up.
 *
 * REQUIRES an input incommensurate with the reference. The method assumes the
 * transition phase is uniformly distributed over the clk_fs period. At exactly
 * 5 MHz against 312.5 MHz the ratio is precisely 62.5, the phase alternates
 * between two points and the histogram collapses into two spikes. Offset the
 * source by a few hundred Hz (4.9997 MHz works) before trusting the numbers.
 * Coverage is printed so a degenerate run is obvious.
 *
 * With uniform phase the probability of landing in bin i is its width over the
 * clock period:
 *
 *     width[i] = T_period * hist[i] / N_total
 *
 * N_total includes the saturated samples. Those are exactly the ones whose
 * phase fell past the end of the chain, and they are what makes the span
 * measurable rather than just the shape.
 *
 * mult-of-4 share is the regression check for the CO[3] cascade: when the
 * chain was miswired to CO[0] the four taps inside one CARRY4 switched almost
 * together and 80% of the values were multiples of 4. A healthy chain sits at
 * the uniform expectation of 250 permille.
 *=========================================================================*/
void TdcHistogramTest(int rounds)
{
    static u32 hist[TDC_NUM_TAPS];
    u32 sat_hi = 0, sat_lo = 0, valid = 0, total;
    u32 covered = 0, mult4 = 0, n_used;
    u32 min_cnt = 0xFFFFFFFFu, max_cnt = 0;
    int min_i = 0, max_i = 0;
    int c_lo = -1, c_hi = -1;
    int i, rc;
    u32 f_s;
    double t_period_ps, covered_ps, dead_ps, t_tap_ps, chain_ps;

    if (rounds < 1) rounds = 1;

    f_s = GetClkFsFreq();
    if (f_s == 0) {
        xil_printf("[TDCHIST] reference frequency is zero\r\n");
        return;
    }

    xil_printf("---- TdcHistogramTest: %d x %d entries ----\r\n",
               rounds, TS_BUF_ENTRIES);
    xil_printf(" reference  %lu Hz\r\n", (unsigned long)f_s);

    rc = tdc_collect_histogram(hist, rounds, &valid, &sat_hi, &sat_lo);
    if (rc < 0) {
        xil_printf(" capture failed: %s (%d)\r\n", ts_err_text(rc), rc);
        return;
    }
    total = (u32)rc;

    if (total == 0 || valid == 0) {
        xil_printf(" no usable samples (valid=0)\r\n");
        return;
    }

    /*-------------------------------------------------------------------
     * Locate the range of codes actually in use.
     *
     * Dividing by TDC_NUM_TAPS would be wrong once the chain is longer than
     * one clock period: a phase cannot exceed a period, so the tail of the
     * chain is never reached and those codes stay empty forever. Averaging
     * over them reports a tap delay far below the real one -- with 256 taps
     * and 168 codes in use it read 12.2 ps instead of 18.6 ps.
     *-----------------------------------------------------------------*/
    for (i = 0; i < TDC_NUM_TAPS; i++) {
        if (hist[i] != 0) {
            if (c_lo < 0) c_lo = i;
            c_hi = i;
        }
        if ((i & 3) == 0) mult4 += hist[i];
    }
    n_used = (u32)(c_hi - c_lo + 1);

    for (i = c_lo; i <= c_hi; i++) {
        if (hist[i] != 0) covered++;
        if (hist[i] < min_cnt) { min_cnt = hist[i]; min_i = i; }
        if (hist[i] > max_cnt) { max_cnt = hist[i]; max_i = i; }
    }

    for (i = 0; i < TDC_NUM_TAPS; i++) {
        if ((i & 7) == 0)
            xil_printf("\r\n %3d:", i);
        xil_printf(" %5lu", (unsigned long)hist[i]);
    }
    xil_printf("\r\n");

    /*-------------------------------------------------------------------
     * Three different spans, easy to confuse:
     *
     *   dead zone   phases too early to have reached tap 0. The chain head
     *               costs extra delay because a general signal can only be
     *               injected through CYINIT, so sum_comb reads 0 over that
     *               window. Reported as at-zero.
     *   covered     the phase interval the used codes actually resolve.
     *   chain span  the physical length of the whole chain, which is what
     *               decides whether it outruns the clock period.
     *-----------------------------------------------------------------*/
    t_period_ps = 1.0e12 / (double)f_s;
    covered_ps  = t_period_ps * (double)valid  / (double)total;
    dead_ps     = t_period_ps * (double)sat_lo / (double)total;
    t_tap_ps    = covered_ps / (double)n_used;
    chain_ps    = t_tap_ps * (double)TDC_NUM_TAPS;

    xil_printf(" samples    %lu  (valid %lu, past-end %lu, at-zero %lu)\r\n",
               (unsigned long)total, (unsigned long)valid,
               (unsigned long)sat_hi, (unsigned long)sat_lo);
    xil_printf(" codes used %d .. %d  (%lu codes, %lu dead inside range)\r\n",
               c_lo, c_hi, (unsigned long)n_used,
               (unsigned long)(n_used - covered));
    xil_printf(" mult-of-4  %lu permille  (250 = uniform, 800 = CO[0] bug)\r\n",
               (unsigned long)((u64)mult4 * 1000u / valid));

    print_fixed3(" period     ", t_period_ps, " ps");
    print_fixed3(" dead zone  ", dead_ps,     " ps");
    print_fixed3(" covered    ", covered_ps,  " ps");
    print_fixed3(" t_tap      ", t_tap_ps,    " ps");
    print_fixed3(" chain span ", chain_ps,    " ps");
    print_fixed3(" bin widest ", t_period_ps * (double)max_cnt / (double)total,
                 " ps");
    print_fixed3(" bin narrow ", t_period_ps * (double)min_cnt / (double)total,
                 " ps");
    xil_printf(" widest code %d, narrowest code %d\r\n", max_i, min_i);

    /*-------------------------------------------------------------------
     * Verdict on the chain length. past-end > 0 is the direct evidence that
     * phases are running off the end; when it is zero the chain outruns the
     * period and what matters is how much room is left.
     *-----------------------------------------------------------------*/
    if (sat_hi > 0) {
        u32 need = (u32)(t_period_ps / t_tap_ps + 0.999);
        xil_printf(" SHORT: %lu taps needed for a full period, have %d\r\n",
                   (unsigned long)need, TDC_NUM_TAPS);
    } else if (chain_ps > t_period_ps) {
        xil_printf(" OK: chain covers the period with %lu%% margin\r\n",
                   (unsigned long)((chain_ps / t_period_ps - 1.0) * 100.0));
    } else {
        /* Nothing saturated, yet the chain measures shorter than a period.
           That combination only arises when the phase never swept the whole
           period, so the numbers above are not trustworthy. */
        xil_printf(" INCONCLUSIVE: no saturation but chain measures short --"
                   " phase likely did not sweep\r\n");
    }

    if (n_used < 8)
        xil_printf(" WARNING: phase is not sweeping -- offset the source a few"
                   " hundred Hz off an exact ratio and rerun\r\n");
}

/*===========================================================================
 * PrintTdcCalibTable -- measure the chain and emit a ready-to-paste table
 *
 * Same measurement as TdcHistogramTest, but the output is the contents of
 * tdc_calib.h rather than a human report: paste the printed block over the
 * existing one and rebuild.
 *
 * Why this exists as a separate entry point instead of a host-side script:
 * the table is only valid near the thermal state it was taken in, and carry
 * delay moves several percent over the operating range. Being able to
 * re-measure on a warmed-up board, in situ, without a toolchain, is the
 * difference between a table that matches the silicon and one that does not.
 *
 * The table goes to the serial console, not to the SCPI response -- 256
 * entries is about 13 kB against a 384-byte response buffer.
 *
 * xil_printf has no %f, so every value is formatted through snprintf first.
 *=========================================================================*/
void PrintTdcCalibTable(int rounds)
{
    static u32   hist[TDC_NUM_TAPS];
    static float phase[TDC_NUM_TAPS];
    u32 valid, sat_hi, sat_lo, total, acc;
    int i, c, c_lo = -1, c_hi = -1, rc;
    u32 f_s;
    double t_period_ps, covered_ps, dead_ps, t_tap_ps;
    char buf[128];

    if (rounds < 1)
        rounds = 32;

    f_s = GetClkFsFreq();
    if (f_s == 0) {
        xil_printf("[TDCCAL] reference frequency is zero\r\n");
        return;
    }

    xil_printf("---- PrintTdcCalibTable: %d x %d entries ----\r\n",
               rounds, TS_BUF_ENTRIES);

    rc = tdc_collect_histogram(hist, rounds, &valid, &sat_hi, &sat_lo);
    if (rc < 0) {
        xil_printf(" capture failed: %s (%d)\r\n", ts_err_text(rc), rc);
        return;
    }
    total = (u32)rc;

    if (valid == 0) {
        xil_printf(" no valid samples -- nothing to calibrate\r\n");
        return;
    }

    for (i = 0; i < TDC_NUM_TAPS; i++) {
        if (hist[i] != 0) {
            if (c_lo < 0) c_lo = i;
            c_hi = i;
        }
    }

    /* Refuse to emit a table the phase never swept: it would look plausible
       and be silently wrong, which is worse than no table at all. */
    if ((c_hi - c_lo + 1) < TDC_NUM_TAPS / 8) {
        xil_printf(" REFUSING: only %d codes seen. The source must be detuned"
                   " off any exact ratio to clk_fs, otherwise the phase does"
                   " not sweep and the table is meaningless.\r\n",
                   c_hi - c_lo + 1);
        return;
    }

    t_period_ps = 1.0e12 / (double)f_s;
    covered_ps  = t_period_ps * (double)valid  / (double)total;
    dead_ps     = t_period_ps * (double)sat_lo / (double)total;
    t_tap_ps    = covered_ps / (double)(c_hi - c_lo + 1);

    /* Phase of a code is the midpoint of its own bin, stacked on the dead
       zone. Codes past c_hi are unreachable at this temperature; extrapolate
       at t_tap so a colder, faster die meets a continuation, not a cliff. */
    phase[0] = (float)(dead_ps / 2.0);
    acc = 0;
    for (c = 1; c < TDC_NUM_TAPS; c++) {
        if (c <= c_hi) {
            double w = t_period_ps * (double)hist[c] / (double)total;
            phase[c] = (float)(dead_ps
                               + t_period_ps * (double)acc / (double)total
                               + w / 2.0);
            acc += hist[c];
        } else {
            phase[c] = (float)((double)phase[c_hi] + (c - c_hi) * t_tap_ps);
        }
    }

    /*-------------------------------------------------------------------
     * Provenance block -- paste into the comment at the top of tdc_calib.h
     *-----------------------------------------------------------------*/
    xil_printf("\r\n===== paste into tdc_calib.h =====\r\n\r\n");

    snprintf(buf, sizeof buf,
             " *   Samples   %lu x %d = %lu",
             (unsigned long)rounds, TS_BUF_ENTRIES, (unsigned long)total);
    xil_printf("%s\r\n", buf);
    snprintf(buf, sizeof buf,
             " *   Reference %lu Hz, period %.1f ps",
             (unsigned long)f_s, t_period_ps);
    xil_printf("%s\r\n", buf);
    snprintf(buf, sizeof buf,
             " *   Result    dead zone %.1f ps, %d codes covering %.1f ps,",
             dead_ps, c_hi - c_lo + 1, covered_ps);
    xil_printf("%s\r\n", buf);
    snprintf(buf, sizeof buf,
             " *             t_tap %.3f ps, chain span %.0f ps (%.2f periods)",
             t_tap_ps, t_tap_ps * TDC_NUM_TAPS,
             t_tap_ps * TDC_NUM_TAPS / t_period_ps);
    xil_printf("%s\r\n", buf);
    if (sat_hi != 0) {
        snprintf(buf, sizeof buf,
                 " *   WARNING   %lu samples ran past the chain end -- chain"
                 " is too short", (unsigned long)sat_hi);
        xil_printf("%s\r\n", buf);
    }
    xil_printf("\r\n");

    /*-------------------------------------------------------------------
     * The defines and the table itself
     *-----------------------------------------------------------------*/
    snprintf(buf, sizeof buf, "#define TDC_CALIB_PERIOD_PS     %.1f",
             t_period_ps);
    xil_printf("%s\r\n", buf);
    snprintf(buf, sizeof buf, "#define TDC_CALIB_DEAD_PS       %10.3f",
             dead_ps);
    xil_printf("%s\r\n", buf);
    snprintf(buf, sizeof buf, "#define TDC_CALIB_T_TAP_PS      %10.3f",
             t_tap_ps);
    xil_printf("%s\r\n", buf);
    xil_printf("#define TDC_CALIB_LAST_CODE     %d\r\n\r\n", c_hi);

    xil_printf("static const float tdc_phase_ts[TDC_NUM_TAPS] = {\r\n");
    for (c = 0; c < TDC_NUM_TAPS; c += 4) {
        snprintf(buf, sizeof buf,
                 "   %9.3ff,  %9.3ff,  %9.3ff,  %9.3ff,   /* %3d */",
                 (double)phase[c],     (double)phase[c + 1],
                 (double)phase[c + 2], (double)phase[c + 3], c);
        xil_printf("%s\r\n", buf);
    }
    xil_printf("};\r\n");

    xil_printf("\r\n===== end =====\r\n");
}
