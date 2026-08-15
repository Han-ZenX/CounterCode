`timescale 1ns / 1ps
//============================================================================
// ts_engine -- gap-free continuous timestamp engine
//
// Produces a 64-bit timestamp for every rising edge of the signal under test
// (or every edge_skip+1 edges) and streams them out through an asynchronous
// FIFO with valid/ready handshaking, feeding M_AXIS and then the DMA.
//
// Timestamp layout (matches doc/interface_spec.md):
//   [63:32] coarse  free-running counter in the clk_fs domain
//   [31:24] tdc     TDC phase value 0..255
//   [23]    ovf     a drop occurred before this entry
//   [22]    tdc_ok  TDC fine value is valid
//   [21:0]  seq     entry sequence number
//
// tdc took two bits off seq when the chain grew to 256 taps. seq only has to
// avoid wrapping inside one capture, and 22 bits is 4.19 M entries -- 33 MB of
// buffer, three orders of magnitude past the 4096 actually used.
//
// The TDC is instantiated inside this module rather than passed in from
// outside: the pipeline alignment between the coarse counter and the TDC is
// very easy to get wrong, and keeping them together prevents an upper level
// from silently breaking it.
//============================================================================

module ts_engine #(
    parameter FIFO_ADDR_WIDTH = 12,               // FIFO depth = 2^12 = 4096 entries
    parameter NUM_TAPS        = 256
)(
    //------------------------------------------------------------------
    // clk_fs domain (312.5 MHz reference)
    //------------------------------------------------------------------
    input  wire        clk_fs,
    input  wire        rst_fs_n,        // synchronized reset, active low
    input  wire        clk_fx,          // signal under test, asynchronous

    input  wire        ts_en_fs,        // capture enable, already synchronized to clk_fs
    input  wire [31:0] edge_skip,       // AXI-domain register, see CDC note below

    //------------------------------------------------------------------
    // Read side domain (m_axis_aclk)
    //------------------------------------------------------------------
    input  wire        rd_clk,
    input  wire        rd_rst_n,

    // Gates the FIFO pop. While low the engine stops handing entries to the
    // stream, so nothing accumulates in the downstream AXI-Stream FIFO or in
    // the DMA's internal buffer. Without this the FIFO keeps draining after a
    // transfer completes, those entries sit in the downstream buffers that
    // TS_RST cannot reach, and the *next* transfer delivers them first --
    // producing a buffer full of stale timestamps that still looks perfectly
    // contiguous (TS_RST restarts seq at 0 and resets the coarse counter, so
    // old and new data are indistinguishable by inspection).
    input  wire        stream_en,

    // Packet length in entries. TLAST is asserted on the last one and popping
    // stops there until stream_en is deasserted. 0 = unlimited, no TLAST.
    input  wire [15:0] pkt_limit,

    output wire [63:0] rd_data,
    output wire        rd_valid,
    output wire        rd_last,
    input  wire        rd_ready,

    //------------------------------------------------------------------
    // Status outputs (read side domain)
    //------------------------------------------------------------------
    output wire [31:0] ts_count,        // total entries successfully written to the FIFO
    output wire [31:0] lost_count,      // edges dropped because the FIFO was full
    output wire        overflow,        // sticky overflow flag
    output wire [FIFO_ADDR_WIDTH:0] fifo_level,
    output wire        fifo_empty
);

    localparam FIFO_DEPTH = (1 << FIFO_ADDR_WIDTH);

    //========================================================================
    // Free-running coarse counter plus two delayed copies
    //
    // The delayed copies are used for timestamp alignment; see the derivation
    // in the next section.
    //========================================================================
    reg [31:0] free_run_cnt;
    reg [31:0] free_run_cnt_d1, free_run_cnt_d2, free_run_cnt_d3;
    reg [31:0] free_run_cnt_d4, free_run_cnt_d5;

    always @(posedge clk_fs) begin
        if (!rst_fs_n) begin
            free_run_cnt    <= 32'd0;
            free_run_cnt_d1 <= 32'd0;
            free_run_cnt_d2 <= 32'd0;
            free_run_cnt_d3 <= 32'd0;
            free_run_cnt_d4 <= 32'd0;
            free_run_cnt_d5 <= 32'd0;
        end else begin
            free_run_cnt    <= free_run_cnt + 1'b1;
            free_run_cnt_d1 <= free_run_cnt;
            free_run_cnt_d2 <= free_run_cnt_d1;
            free_run_cnt_d3 <= free_run_cnt_d2;
            free_run_cnt_d4 <= free_run_cnt_d3;
            free_run_cnt_d5 <= free_run_cnt_d4;
        end
    end

    //========================================================================
    // Synchronization of the signal under test and rising edge detection
    //
    // The original timestamp_engine.v had
    //     wire rising_edge = fx_sync[2] & ~fx_sync[1];
    // where fx_sync[2] is the older sample and fx_sync[1] the newer one.
    // "old 1, new 0" is a falling edge, contradicting both the name and the
    // edge the TDC measures. Corrected here to a rising edge.
    //========================================================================
    (* ASYNC_REG = "TRUE" *) reg [2:0] fx_sync;

    always @(posedge clk_fs) begin
        if (!rst_fs_n)
            fx_sync <= 3'b0;
        else
            fx_sync <= {fx_sync[1:0], clk_fx};
    end

    // Only [1] and [2] are used for the decision; [0] may be metastable
    wire edge_raw = fx_sync[1] & ~fx_sync[2];

    //========================================================================
    // Pipeline alignment of coarse counter, TDC and edge detection
    //
    // Notation: X(n) is the value of X after the n-th clk_fs rising edge;
    // S_n is the n-th sample of the delay chain, reflecting a transition in
    // the interval (n-1, n].
    //
    //   free_run_cnt(n) = n
    //   fx_sync[1](n)   = fx(n-1),  fx_sync[2](n) = fx(n-2)
    //   edge_raw(n)     = fx(n-1) & ~fx(n-2)  ->  transition lies in (n-2, n-1]
    //
    // A transition in (n-2, n-1] corresponds to delay chain sample S_(n-1).
    // Per the tdc.v contract, with L = TDC_LATENCY the result of S_m appears
    // at tdc_value(m+L), so this transition's value appears at
    // tdc_value(n-1+L).
    //
    // If capture happens on the m-th rising edge, an always block reads the
    // (m-1) values of every signal:
    //   to read tdc_value(n-1+L)    ->  m - 1 = n - 1 + L  ->  m = n + L
    //   to read edge_raw(n)         ->  edge_dk(m-1) = edge_raw(m-1-k), and
    //                                   m-1-k = n gives k = L - 1
    //   the transition belongs to period n-1, so the coarse counter must read
    //                                   free_run_cnt_dX(m-1) = (m-1)-X = n-1
    //                                   which gives X = L
    //
    // At L = 5: k = 4 and X = 5. On the cycle where edge_d4 is asserted, the
    // pair {free_run_cnt_d5, tdc_value} describes exactly the same rising
    // edge.
    //
    // Do not assume the two taps track each other by inspection -- rederive
    // from k = L-1 and X = L. (An earlier version of this comment claimed the
    // 2->3 change had left the edge tap alone; by the formula it moved from
    // edge_d1 to edge_d2, and the formula is what matches the code.)
    //========================================================================
    wire [7:0] tdc_value;
    wire       tdc_valid;

    tdc #(
        .NUM_TAPS (NUM_TAPS)
    ) u_tdc (
        .clk       (clk_fs),
        .rst_n     (rst_fs_n),
        .signal_in (clk_fx),
        .tdc_value (tdc_value),
        .tdc_valid (tdc_valid)
    );

    reg edge_d1, edge_d2, edge_d3, edge_d4;
    always @(posedge clk_fs) begin
        if (!rst_fs_n) begin
            edge_d1 <= 1'b0;
            edge_d2 <= 1'b0;
            edge_d3 <= 1'b0;
            edge_d4 <= 1'b0;
        end else begin
            edge_d1 <= edge_raw;
            edge_d2 <= edge_d1;
            edge_d3 <= edge_d2;
            edge_d4 <= edge_d3;
        end
    end

    //========================================================================
    // edge_skip clock domain crossing
    //
    // edge_skip is a 32-bit bus and cannot be synchronized bit by bit. The
    // "data stable before enable" pattern is used instead: it is latched into
    // the clk_fs domain only on the capture start edge.
    //
    // Constraint: software must write EDGE_SKIP before writing CTRL.TS_EN.
    // TS_EN itself still passes through bit_sync (>= 2 clk_fs cycles), by
    // which time edge_skip has long been stable. Changing EDGE_SKIP during an
    // active capture has no effect; stop and restart to apply it.
    //========================================================================
    reg ts_en_d;
    always @(posedge clk_fs) begin
        if (!rst_fs_n) ts_en_d <= 1'b0;
        else           ts_en_d <= ts_en_fs;
    end

    wire ts_start = ts_en_fs & ~ts_en_d;

    reg [31:0] skip_limit;
    always @(posedge clk_fs) begin
        if (!rst_fs_n)
            skip_limit <= 32'd0;
        else if (ts_start)
            skip_limit <= edge_skip;
    end

    //========================================================================
    // Edge skipping
    //
    // skip_cnt is cleared at start, then decremented on every rising edge;
    // capture happens when it reaches zero, after which it reloads.
    // Skipped edges are not assigned sequence numbers, so seq stays contiguous.
    //========================================================================
    reg [31:0] skip_cnt;
    reg        skip_zero;   // registered form of (skip_cnt == 0)

    wire edge_hit = edge_d4 & ts_en_fs;

    // do_capture reduces to a single AND. Comparing skip_cnt against zero
    // here instead cost 4 logic levels feeding the write enable of all 11
    // BRAM primitives (-0.631 ns at 312.5 MHz): a 32-bit zero-compare spread
    // over several LUTs, then fanned out across the whole memory. Keeping the
    // comparison one cycle ahead in a register moves it off the critical path
    // -- it then only has to reach a flop input, with a full cycle to do it.
    wire do_capture = edge_hit & skip_zero;

    always @(posedge clk_fs) begin
        if (!rst_fs_n) begin
            skip_cnt  <= 32'd0;
            skip_zero <= 1'b1;
        end else if (ts_start) begin
            skip_cnt  <= 32'd0;
            skip_zero <= 1'b1;
        end else if (edge_hit) begin
            if (skip_zero) begin
                // Just captured: reload. skip_limit of 0 means capture every
                // edge, so the flag has to stay set.
                skip_cnt  <= skip_limit;
                skip_zero <= (skip_limit == 32'd0);
            end else begin
                // Counting down. Predict the zero one cycle early: reaching 1
                // now means the next edge is the one to capture.
                skip_cnt  <= skip_cnt - 1'b1;
                skip_zero <= (skip_cnt == 32'd1);
            end
        end
    end

    //========================================================================
    // FIFO write side (clk_fs domain)
    //========================================================================
    reg  [FIFO_ADDR_WIDTH:0] wr_ptr_bin;
    wire [FIFO_ADDR_WIDTH-1:0] wr_addr = wr_ptr_bin[FIFO_ADDR_WIDTH-1:0];

    // The read pointer is brought back through Gray code to detect full.
    //
    // Both the synchronised pointer and the full flag are registered. The
    // combinational version of this
    //     gray_s2 -> gray-to-binary -> compare -> fifo_full -> wr_en -> BRAM WEA
    // was the worst path in the clk_fs domain: 5 logic levels, 4.207 ns
    // against a 3.200 ns period (-1.570 ns slack at 312.5 MHz), and it fanned
    // out to every BRAM write-enable, which is where the bulk of the 171
    // failing endpoints came from. Two registers split it into three short
    // hops.
    //
    // The flag is consequently two cycles stale, so full is declared early by
    // a margin. Giving up 8 of 4096 entries costs nothing and guarantees the
    // write side cannot overrun the reader while the flag is catching up --
    // the margin only has to exceed the register delay, and one entry per
    // cycle is the hardware maximum.
    wire [FIFO_ADDR_WIDTH:0] rd_ptr_bin_at_wr;

    localparam [FIFO_ADDR_WIDTH:0] FULL_MARGIN = FIFO_DEPTH - 8;

    reg [FIFO_ADDR_WIDTH:0] rd_ptr_at_wr_q;
    reg                     fifo_full;

    always @(posedge clk_fs) begin
        if (!rst_fs_n) begin
            rd_ptr_at_wr_q <= {(FIFO_ADDR_WIDTH+1){1'b0}};
            fifo_full      <= 1'b0;
        end else begin
            rd_ptr_at_wr_q <= rd_ptr_bin_at_wr;
            fifo_full      <= ((wr_ptr_bin - rd_ptr_at_wr_q) >= FULL_MARGIN);
        end
    end

    reg [21:0] seq_cnt;        // entry sequence number
    reg [31:0] ts_count_fs;    // entries written successfully
    reg [31:0] lost_count_fs;  // entries dropped
    reg        ovf_sticky;     // sticky overflow
    reg        ovf_mark;       // the next timestamp must carry the overflow mark

    wire wr_en = do_capture & ~fifo_full;
    wire wr_drop = do_capture & fifo_full;

    // Timestamp packing.
    // tdc_valid is emitted on the same cycle as tdc_value, so it needs no
    // extra alignment. When it is 0 the delay chain caught no transition in
    // that clk_fs period (signal too fast or too slow); the fine value of
    // that entry is not trustworthy and software should discard the point
    // when fitting.
    wire [63:0] ts_word = {free_run_cnt_d5,   // [63:32] coarse count
                           tdc_value,          // [31:24] TDC phase
                           ovf_mark,           // [23]    overflow mark
                           tdc_valid,          // [22]    TDC fine value valid
                           seq_cnt};           // [21:0]  sequence number

    (* RAM_STYLE = "block" *) reg [63:0] fifo_mem [0:FIFO_DEPTH-1];

    always @(posedge clk_fs) begin
        if (wr_en)
            fifo_mem[wr_addr] <= ts_word;
    end

    always @(posedge clk_fs) begin
        if (!rst_fs_n) begin
            wr_ptr_bin    <= {(FIFO_ADDR_WIDTH+1){1'b0}};
            seq_cnt       <= 22'd0;
            ts_count_fs   <= 32'd0;
            lost_count_fs <= 32'd0;
            ovf_sticky    <= 1'b0;
            ovf_mark      <= 1'b0;
        end else begin
            // Counters and sequence numbers are cleared by reset only, never
            // on ts_start. Otherwise stopping and restarting a capture would
            // make leftover entries in the FIFO share sequence numbers with
            // new ones and software could not tell them apart. To flush the
            // FIFO use CTRL.TS_RST -- it resets both the clk_fs and rd_clk
            // sides so pointers, counters and sequence numbers all clear
            // together.
            if (wr_en) begin
                wr_ptr_bin  <= wr_ptr_bin + 1'b1;
                seq_cnt     <= seq_cnt + 1'b1;
                ts_count_fs <= ts_count_fs + 1'b1;
                ovf_mark    <= 1'b0;   // mark clears once carried out with this entry
            end
            if (wr_drop) begin
                lost_count_fs <= lost_count_fs + 1'b1;
                ovf_sticky    <= 1'b1;
                ovf_mark      <= 1'b1; // first entry after recovery carries this mark
            end
        end
    end

    //========================================================================
    // FIFO read side (rd_clk domain) -- FWFT with valid/ready handshaking
    //========================================================================
    reg  [FIFO_ADDR_WIDTH:0] rd_ptr_bin;

    // The write pointer is brought over through Gray code to detect empty and
    // compute the fill level.
    wire [FIFO_ADDR_WIDTH:0] wr_ptr_bin_at_rd;
    wire int_empty = (rd_ptr_bin == wr_ptr_bin_at_rd);

    reg [63:0] out_reg;
    reg        out_valid;
    reg        out_last;

    //------------------------------------------------------------------
    // Packet counter
    //
    // Counts entries handed to the stream. Popping stops once pkt_limit is
    // reached and does not resume until stream_en goes low, so exactly one
    // packet leaves per capture and nothing spills into the downstream
    // buffers afterwards.
    //
    // The counter lives here rather than in M_AXIS deliberately: a beat
    // counter in M_AXIS is only reset by M_AXIS_ARESETN, which CTRL.TS_RST
    // cannot reach, so it would carry over between captures and place TLAST
    // at the wrong offset on every run after the first.
    //------------------------------------------------------------------
    reg [15:0] pop_cnt;

    wire pkt_bounded   = (pkt_limit != 16'd0);
    wire pop_limit_hit = pkt_bounded && (pop_cnt >= pkt_limit);
    wire pop_is_last   = pkt_bounded && (pop_cnt == pkt_limit - 16'd1);

    // Prefetch the next entry from RAM only when the output register is empty
    // or its current contents are being consumed this cycle
    wire do_read = ~int_empty & (~out_valid | rd_ready)
                 & stream_en & ~pop_limit_hit;

    always @(posedge rd_clk) begin
        if (!rd_rst_n) begin
            rd_ptr_bin <= {(FIFO_ADDR_WIDTH+1){1'b0}};
            out_valid  <= 1'b0;
            out_last   <= 1'b0;
            pop_cnt    <= 16'd0;
        end else begin
            // Rearm for the next capture while the stream is idle
            if (!stream_en)
                pop_cnt <= 16'd0;
            else if (do_read)
                pop_cnt <= pop_cnt + 16'd1;

            if (do_read) begin
                rd_ptr_bin <= rd_ptr_bin + 1'b1;
                out_last   <= pop_is_last;
            end

            // TVALID is never withdrawn once asserted: it only clears after
            // the handshake completes, as AXI-Stream requires. Gating
            // do_read rather than rd_valid is what keeps that true.
            if (do_read)
                out_valid <= 1'b1;
            else if (rd_ready)
                out_valid <= 1'b0;
        end
    end

    // Synchronous BRAM read: the address is presented on the do_read cycle and
    // data arrives the next cycle, in step with out_valid
    always @(posedge rd_clk) begin
        if (do_read)
            out_reg <= fifo_mem[rd_ptr_bin[FIFO_ADDR_WIDTH-1:0]];
    end

    assign rd_data   = out_reg;
    assign rd_valid  = out_valid;
    assign rd_last   = out_last;
    assign fifo_empty = int_empty & ~out_valid;
    assign fifo_level = wr_ptr_bin_at_rd - rd_ptr_bin;

    //========================================================================
    // Pointer and counter clock domain crossing
    //
    // All four are monotonically incrementing counters, satisfying the
    // precondition for Gray-code CDC.
    //========================================================================
    cnt_cdc #(.WIDTH(FIFO_ADDR_WIDTH+1)) u_wr_ptr_cdc (
        .src_clk   (clk_fs),   .src_rst_n (rst_fs_n), .src_cnt (wr_ptr_bin),
        .dst_clk   (rd_clk),   .dst_rst_n (rd_rst_n), .dst_cnt (wr_ptr_bin_at_rd)
    );

    cnt_cdc #(.WIDTH(FIFO_ADDR_WIDTH+1)) u_rd_ptr_cdc (
        .src_clk   (rd_clk),   .src_rst_n (rd_rst_n), .src_cnt (rd_ptr_bin),
        .dst_clk   (clk_fs),   .dst_rst_n (rst_fs_n), .dst_cnt (rd_ptr_bin_at_wr)
    );

    cnt_cdc #(.WIDTH(32)) u_ts_cnt_cdc (
        .src_clk   (clk_fs),   .src_rst_n (rst_fs_n), .src_cnt (ts_count_fs),
        .dst_clk   (rd_clk),   .dst_rst_n (rd_rst_n), .dst_cnt (ts_count)
    );

    cnt_cdc #(.WIDTH(32)) u_lost_cnt_cdc (
        .src_clk   (clk_fs),   .src_rst_n (rst_fs_n), .src_cnt (lost_count_fs),
        .dst_clk   (rd_clk),   .dst_rst_n (rd_rst_n), .dst_cnt (lost_count)
    );

    bit_sync u_ovf_sync (
        .clk (rd_clk), .rst_n (rd_rst_n), .d_in (ovf_sticky), .d_out (overflow)
    );

endmodule
