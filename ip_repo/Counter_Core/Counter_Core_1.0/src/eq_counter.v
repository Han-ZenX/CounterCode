`timescale 1ns / 1ps
//============================================================================
// eq_counter -- equal-precision frequency measurement with a hardware gate
//
// High-frequency fallback: when the signal under test exceeds the clk_fs
// Nyquist limit (>156 MHz, 140 MHz in practice) it cannot be timestamped edge
// by edge, so measurement falls back to the equal-precision method. The main
// path remains ts_engine.
//
//----------------------------------------------------------------------------
// Three structural changes from the original cymometer.v
//
// 1) The gate is now produced by a hardware counter in the clk_fs domain
//    instead of being toggled by software usleep.
//    A side effect is that quantization error on the reference side
//    disappears entirely: the gate is synchronous to clk_fs and its width is
//    exactly GATE_LEN clk_fs periods, so there is no +/-1 error and no TDC is
//    needed on the reference side. The original design's two ref TDCs are
//    therefore removed.
//
// 2) The original wired the TDC to a synchronizer output:
//       tdc tdc_test_inst (.clk(clk_test), .signal_in(gate_sync_test[2]), ...)
//    gate_sync_test[2] has already been sampled by clk_test, so its
//    transitions are aligned to the clock edge by construction. The TDC could
//    only measure the fixed clock-to-flop routing delay and carried no gate
//    phase information at all -- meaning the original IP's TDC correction was
//    in fact inert.
//    Here the TDC observes the raw asynchronous gate, which is what actually
//    yields sub-cycle phase.
//
// 3) Results are latched into result registers the instant the gate closes
//    and held afterwards, which is what makes cross-domain readout safe.
//
//----------------------------------------------------------------------------
// Software-side computation
//
//   f_test = f_s * (EQ_TEST + tdc_rise/64 - tdc_fall/64) / EQ_STAND
//
// EQ_STAND is the hardware-measured clk_fs count and should always equal
// GATE_LEN; a mismatch indicates a fault in the gate logic and can be used as
// a self-check.
//============================================================================

module eq_counter #(
    parameter NUM_TAPS = 64
)(
    //------------------------------------------------------------------
    // clk_fs domain -- the gate is generated here
    //------------------------------------------------------------------
    input  wire        clk_fs,
    input  wire        rst_fs_n,
    input  wire [31:0] gate_len,       // gate length in clk_fs periods, latched on start
    input  wire        eq_start_fs,    // start level, already synchronized to clk_fs

    //------------------------------------------------------------------
    // clk_fx domain -- counts the signal under test
    //------------------------------------------------------------------
    input  wire        clk_fx,
    input  wire        rst_fx_n,

    //------------------------------------------------------------------
    // Result readout (rd_clk domain)
    //------------------------------------------------------------------
    input  wire        rd_clk,
    input  wire        rd_rst_n,
    output reg  [31:0] eq_stand,
    output reg  [31:0] eq_test,
    output reg  [7:0]  tdc_test_rise,
    output reg  [7:0]  tdc_test_fall,
    output wire        eq_done,
    output wire        eq_busy
);

    //========================================================================
    // Gate generation (clk_fs domain)
    //========================================================================
    reg eq_start_d;
    always @(posedge clk_fs) begin
        if (!rst_fs_n) eq_start_d <= 1'b0;
        else           eq_start_d <= eq_start_fs;
    end

    wire eq_go = eq_start_fs & ~eq_start_d;     // start rising edge

    reg        gate;
    reg [31:0] gate_cnt;
    reg [31:0] stand_cnt, stand_result;
    reg        busy;
    reg [5:0]  settle_cnt;      // wait for the clk_fx side to finish after the gate closes
    reg        done_fs;

    always @(posedge clk_fs) begin
        if (!rst_fs_n) begin
            gate         <= 1'b0;
            gate_cnt     <= 32'd0;
            stand_cnt    <= 32'd0;
            stand_result <= 32'd0;
            busy         <= 1'b0;
            settle_cnt   <= 6'd0;
            done_fs      <= 1'b0;
        end else if (eq_go && !busy) begin
            // gate_len is static AXI-domain configuration, sampled once on the
            // start edge (same pattern as edge_skip)
            gate       <= 1'b1;
            gate_cnt   <= gate_len;
            stand_cnt  <= 32'd0;
            busy       <= 1'b1;
            settle_cnt <= 6'd0;
            done_fs    <= 1'b0;
        end else if (busy) begin
            if (gate) begin
                if (gate_cnt == 32'd0) begin
                    gate         <= 1'b0;
                    stand_result <= stand_cnt;
                end else begin
                    gate_cnt  <= gate_cnt - 1'b1;
                    stand_cnt <= stand_cnt + 1'b1;
                end
            end else begin
                // Gate closed; wait settle cycles for the clk_fx side
                // synchronizers and latches to settle
                if (settle_cnt == 6'd63) begin
                    busy    <= 1'b0;
                    done_fs <= 1'b1;
                end else begin
                    settle_cnt <= settle_cnt + 1'b1;
                end
            end
        end
    end

    //========================================================================
    // Counting in the test domain (clk_fx domain)
    //
    // A 3-stage synchronizer is used so it lines up exactly with the 2-cycle
    // pipeline latency of tdc.v. Derivation:
    //   bit_sync(STAGES=3) outputs gate_fx(n) = gate(n-2).
    //   On cycle m, where a gate_fx rising edge is detected, the block reads
    //   gate_fx(m-1) and gate_fx(m-2), so the gate transition falls in the
    //   interval (m-4, m-3], i.e. delay chain sample S_(m-3).
    //   By the tdc.v contract the result of S_(m-3) appears at tdc_value(m-1),
    //   and cycle m reads exactly tdc_value(m-1) -- no extra delay needed.
    //
    // Changing the synchronizer depth or the TDC pipeline depth requires
    // redoing this.
    //========================================================================
    wire gate_fx;
    bit_sync #(.STAGES(3)) u_gate_sync (
        .clk (clk_fx), .rst_n (rst_fx_n), .d_in (gate), .d_out (gate_fx)
    );

    reg gate_fx_d;
    always @(posedge clk_fx) begin
        if (!rst_fx_n) gate_fx_d <= 1'b0;
        else           gate_fx_d <= gate_fx;
    end

    wire gate_fx_rise =  gate_fx & ~gate_fx_d;
    wire gate_fx_fall = ~gate_fx &  gate_fx_d;

    // The TDC observes the raw asynchronous gate, not the synchronized gate_fx
    wire [5:0] tdc_val;
    wire       tdc_vld;

    tdc #(.NUM_TAPS(NUM_TAPS)) u_tdc_test (
        .clk       (clk_fx),
        .rst_n     (rst_fx_n),
        .signal_in (gate),
        .tdc_value (tdc_val),
        .tdc_valid (tdc_vld)
    );

    reg [31:0] test_cnt, test_result;
    reg [7:0]  tdc_rise_fx, tdc_fall_fx;

    always @(posedge clk_fx) begin
        if (!rst_fx_n) begin
            test_cnt    <= 32'd0;
            test_result <= 32'd0;
            tdc_rise_fx <= 8'd0;
            tdc_fall_fx <= 8'd0;
        end else begin
            if (gate_fx_rise) begin
                test_cnt    <= 32'd0;
                tdc_rise_fx <= tdc_vld ? {2'b0, tdc_val} : 8'd0;
            end else if (gate_fx) begin
                test_cnt <= test_cnt + 1'b1;
            end

            if (gate_fx_fall) begin
                test_result <= test_cnt;
                tdc_fall_fx <= tdc_vld ? {2'b0, tdc_val} : 8'd0;
            end
        end
    end

    //========================================================================
    // Result clock domain crossing
    //
    // The four result registers update only on the cycle the gate closes and
    // hold afterwards. done_fs is not asserted until 64 more clk_fs cycles
    // have passed, by which time the data is long settled, so two-stage
    // register retiming suffices -- no Gray code or handshake required.
    //
    // Precondition: clk_fx must be fast enough to complete 3 stages of
    // synchronization plus the latch within 64 clk_fs periods (about 205 ns).
    // The equal-precision mode targets >140 MHz, so this holds. For very low
    // frequency signals the readout could catch stale values -- those cases
    // belong in timestamp mode.
    //========================================================================
    reg [31:0] stand_s1, test_s1;
    reg [7:0]  rise_s1, fall_s1;

    always @(posedge rd_clk) begin
        if (!rd_rst_n) begin
            stand_s1 <= 32'd0;  eq_stand      <= 32'd0;
            test_s1  <= 32'd0;  eq_test       <= 32'd0;
            rise_s1  <= 8'd0;   tdc_test_rise <= 8'd0;
            fall_s1  <= 8'd0;   tdc_test_fall <= 8'd0;
        end else begin
            stand_s1 <= stand_result;  eq_stand      <= stand_s1;
            test_s1  <= test_result;   eq_test       <= test_s1;
            rise_s1  <= tdc_rise_fx;   tdc_test_rise <= rise_s1;
            fall_s1  <= tdc_fall_fx;   tdc_test_fall <= fall_s1;
        end
    end

    bit_sync u_done_sync (
        .clk (rd_clk), .rst_n (rd_rst_n), .d_in (done_fs), .d_out (eq_done)
    );

    bit_sync u_busy_sync (
        .clk (rd_clk), .rst_n (rd_rst_n), .d_in (busy), .d_out (eq_busy)
    );

endmodule
