`timescale 1ns / 1ps
//============================================================================
// counter_core -- measurement core interconnect layer
//
// Wraps ts_engine and centralizes reset synchronization and control signal
// crossing for the three clock domains.
//
// The original Counter IP instantiated top_cymometer directly inside
// Counter_v1_0_S_AXI.v, coupling the bus adapter to the measurement logic.
// These are split here: S_AXI is only a register file, this module only
// measures, and the top level only interconnects and receives the
// differential clocks.
//
//----------------------------------------------------------------------------
// Clock domains
//
//   clk_fs   312.5 MHz reference     timestamp coarse count, TDC sampling, gate
//   clk_fx   signal under test       divide-by-4 prescaler
//   aclk     100 MHz FCLK_CLK0       register access, FIFO readout, M_AXIS
//
// aclk serves as both s_axi_aclk and m_axis_aclk -- in the BD both are tied to
// FCLK_CLK0. If they are ever separated, ts_engine's rd_clk and M_AXIS's
// pkt_len both need rework.
//
//----------------------------------------------------------------------------
// Reset hierarchy
//
//   aresetn --+-- & ~soft_rst ------------> core reset --> per-domain rst_sync
//             +-- & ~soft_rst & ~ts_rst --> ts engine reset --> clk_fs / aclk
//
// ts_rst must reset both the clk_fs and aclk sides, otherwise the FIFO read
// and write pointers diverge. The two sides release at different instants,
// but both pointers are zero while in reset and start from zero afterwards,
// so they stay consistent.
//============================================================================

module counter_core #(
    parameter FIFO_ADDR_WIDTH = 12,
    parameter NUM_TAPS        = 256
)(
    //------------------------------------------------------------------
    // Clocks and reset
    //------------------------------------------------------------------
    input  wire        clk_fs,
    input  wire        clk_fx,
    input  wire        aclk,
    input  wire        aresetn,

    //------------------------------------------------------------------
    // Control (aclk domain, from the S_AXI registers)
    //------------------------------------------------------------------
    input  wire        ts_en,
    input  wire        ts_rst,
    input  wire        soft_rst,
    input  wire [31:0] edge_skip,
    input  wire [15:0] pkt_len,
    input  wire        div4_en,

    //------------------------------------------------------------------
    // Status and results (aclk domain)
    //------------------------------------------------------------------
    output wire        ts_running,
    output wire        overflow,
    output wire        fifo_empty,
    output wire [31:0] ts_count,
    output wire [31:0] lost_count,
    output wire [FIFO_ADDR_WIDTH:0] fifo_level,

    //------------------------------------------------------------------
    // Timestamp stream (aclk domain)
    //------------------------------------------------------------------
    output wire [63:0] ts_data,
    output wire        ts_valid,
    output wire        ts_last,
    input  wire        ts_ready,

    //------------------------------------------------------------------
    // Reset for the downstream AXI-Stream FIFO (aclk domain, active low)
    //
    // CTRL.TS_RST clears this IP's own FIFO but cannot reach whatever sits
    // downstream. In the block design axis_data_fifo_0 is held by the global
    // reset, so it keeps entries across captures: the DMA then delivers those
    // stale timestamps at the head of the next transfer. Because TS_RST also
    // zeroes seq and the coarse counter, old and new data are
    // indistinguishable by inspection -- the sequence still looks contiguous.
    //
    // Wiring this to the downstream FIFO's aresetn flushes it together with
    // the engine and removes the problem at its source.
    //------------------------------------------------------------------
    output wire        stream_aresetn
);

    //========================================================================
    // Reset synchronization
    //========================================================================
    wire core_arst_n = aresetn & ~soft_rst;
    wire ts_arst_n   = core_arst_n & ~ts_rst;

    wire rst_fx_n;
    wire ts_rst_fs_n, ts_rst_ax_n;

    rst_sync u_rst_fx (.clk (clk_fx), .arst_n (core_arst_n), .rst_n (rst_fx_n));

    rst_sync u_ts_rst_fs (.clk (clk_fs), .arst_n (ts_arst_n), .rst_n (ts_rst_fs_n));
    rst_sync u_ts_rst_ax (.clk (aclk),   .arst_n (ts_arst_n), .rst_n (ts_rst_ax_n));

    // Same reset the read side uses, exported for the downstream stream FIFO
    // so both are flushed by one CTRL.TS_RST.
    assign stream_aresetn = ts_rst_ax_n;

    //========================================================================
    // Control bit crossing
    //
    // ts_en is a level held long after software writes it, so a level
    // synchronizer is appropriate. edge_skip is a multi-bit bus and is not
    // synchronized here -- ts_engine latches it on its own start edge,
    // relying on "data stable before enable"; see the notes inside it.
    //========================================================================
    wire ts_en_fs;
    bit_sync u_ts_en_sync (
        .clk (clk_fs), .rst_n (ts_rst_fs_n), .d_in (ts_en), .d_out (ts_en_fs)
    );

    // Bring the actual clk_fs-domain enable state back to the aclk domain so
    // STATUS.TS_RUNNING reflects real hardware state rather than the value
    // software wrote
    bit_sync u_ts_run_sync (
        .clk (aclk), .rst_n (ts_rst_ax_n), .d_in (ts_en_fs), .d_out (ts_running)
    );

    //========================================================================
    // Divide-by-4 prescaler for the signal under test
    //
    // Above the clk_fs Nyquist limit the engine cannot see every edge of
    // clk_fx: ts_engine samples it as *data* in the clk_fs domain, so a level
    // shorter than one clk_fs period may be missed entirely. Dividing by 4
    // brings such inputs back inside that window and keeps the timestamp path
    // usable there -- the alternative was equal-precision counting, limited
    // by its +/-1 count to about 0.03 ppm at a 100 ms gate and since removed;
    // the timestamp fit reaches 0.00004 ppm in the same time.
    //
    // No timing information is lost. div_cnt[1] toggles on a rising edge of
    // clk_fx, so every rising edge of the divided signal IS an input rising
    // edge, delayed by one flop. That delay is constant and cancels in the
    // least-squares slope; software multiplies the result by 4.
    //
    // Note the mux now sits between the clk_fx BUFG and both consumers (the
    // TDC delay chain input and the fx_sync sampler). The insertion delay is
    // constant and therefore harmless, but the signal leaves the global clock
    // net for general routing, which can add jitter to sigma_t (21 ps today).
    // If a 5 MHz DIV4=0 run measures worse than the recorded 0.000022 ppm,
    // this mux is the first suspect, and a BUFGMUX_CTRL is the way out.
    //
    // div4_en is used combinationally, not latched on the capture start edge
    // the way edge_skip is, so PRESCALE must only be changed while TS_EN is
    // low. Writing it mid-capture corrupts the run in progress.
    //========================================================================
    reg [1:0] div_cnt;

    always @(posedge clk_fx) begin
        if (!rst_fx_n) div_cnt <= 2'd0;
        else           div_cnt <= div_cnt + 1'b1;
    end

    wire fx_ts = div4_en ? div_cnt[1] : clk_fx;

    //========================================================================
    // Timestamp engine (main path)
    //========================================================================
    ts_engine #(
        .FIFO_ADDR_WIDTH (FIFO_ADDR_WIDTH),
        .NUM_TAPS        (NUM_TAPS)
    ) u_ts_engine (
        .clk_fs     (clk_fs),
        .rst_fs_n   (ts_rst_fs_n),
        .clk_fx     (fx_ts),
        .ts_en_fs   (ts_en_fs),
        .edge_skip  (edge_skip),

        .rd_clk     (aclk),
        .rd_rst_n   (ts_rst_ax_n),

        // ts_en is already in the aclk domain (it comes straight from the
        // register file), so it gates the stream without further syncing.
        .stream_en  (ts_en),
        .pkt_limit  (pkt_len),

        .rd_data    (ts_data),
        .rd_valid   (ts_valid),
        .rd_last    (ts_last),
        .rd_ready   (ts_ready),

        .ts_count   (ts_count),
        .lost_count (lost_count),
        .overflow   (overflow),
        .fifo_level (fifo_level),
        .fifo_empty (fifo_empty)
    );

endmodule
