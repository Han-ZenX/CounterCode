`timescale 1ns / 1ps
//============================================================================
// CDC primitives
//
// Counter_Core spans three clock domains:
//   clk_fs      312.5 MHz reference  -- timestamp coarse counter, TDC sampling
//   clk_fx      signal under test    -- equal-precision counting
//   s_axi_aclk  100 MHz AXI clock    -- register access, FIFO readout
//
// Only the three units actually used are kept here; no speculative
// generalization.
//============================================================================


//============================================================================
// rst_sync -- reset synchronizer: asynchronous assert, synchronous release
//
// The original Counter IP fed an AXI-domain register bit directly into
// posedge-asynchronous resets. The release edge had no relationship to the
// target clock, injecting metastability at deassertion. This guarantees
// immediate assertion while the release follows the target clock.
//============================================================================
module rst_sync #(
    parameter STAGES = 3
)(
    input  wire clk,
    input  wire arst_n,     // asynchronous reset input, active low
    output wire rst_n       // synchronously released reset, active low
);
    (* ASYNC_REG = "TRUE" *) reg [STAGES-1:0] sync;

    always @(posedge clk or negedge arst_n) begin
        if (!arst_n)
            sync <= {STAGES{1'b0}};
        else
            sync <= {sync[STAGES-2:0], 1'b1};
    end

    assign rst_n = sync[STAGES-1];
endmodule


//============================================================================
// bit_sync -- single-bit level synchronizer
//
// Valid only for level signals that change far slower than the target clock
// (enable bits, status flags). Must not be used for pulses.
//============================================================================
module bit_sync #(
    parameter STAGES = 2,
    parameter INIT   = 1'b0
)(
    input  wire clk,
    input  wire rst_n,
    input  wire d_in,
    output wire d_out
);
    (* ASYNC_REG = "TRUE" *) reg [STAGES-1:0] sync;

    always @(posedge clk) begin
        if (!rst_n)
            sync <= {STAGES{INIT}};
        else
            sync <= {sync[STAGES-2:0], d_in};
    end

    assign d_out = sync[STAGES-1];
endmodule


//============================================================================
// cnt_cdc -- monotonically incrementing counter across clock domains
//
// Carries TS_COUNT / LOST_COUNT / FIFO pointers from clk_fs into the AXI
// domain for readout.
//
// Relies on the counter only ever incrementing by 1, so adjacent Gray codes
// differ in exactly one bit. At any sampling instant at most one bit can be
// metastable, and the synchronized result is therefore always some real
// historical value -- never the spurious value that multi-bit binary
// transitions would produce.
//
// Note: clearing the counter to zero is a multi-bit transition, so both sides
// must be held in reset simultaneously for long enough.
//============================================================================
module cnt_cdc #(
    parameter WIDTH = 32
)(
    input  wire             src_clk,
    input  wire             src_rst_n,
    input  wire [WIDTH-1:0] src_cnt,

    input  wire             dst_clk,
    input  wire             dst_rst_n,
    output wire [WIDTH-1:0] dst_cnt
);
    // ---- Source domain: binary -> Gray ----
    reg [WIDTH-1:0] gray_src;
    always @(posedge src_clk) begin
        if (!src_rst_n)
            gray_src <= {WIDTH{1'b0}};
        else
            gray_src <= src_cnt ^ (src_cnt >> 1);
    end

    // ---- Destination domain: two-stage synchronizer ----
    (* ASYNC_REG = "TRUE" *) reg [WIDTH-1:0] gray_s1, gray_s2;
    always @(posedge dst_clk) begin
        if (!dst_rst_n) begin
            gray_s1 <= {WIDTH{1'b0}};
            gray_s2 <= {WIDTH{1'b0}};
        end else begin
            gray_s1 <= gray_src;
            gray_s2 <= gray_s1;
        end
    end

    // ---- Destination domain: Gray -> binary ----
    //
    // bin[i] is the XOR of every Gray bit from i upward. Expressed as a
    // reduction so synthesis builds a balanced tree of depth log2(WIDTH).
    //
    // The obvious serial form
    //     dst_cnt[i] = dst_cnt[i+1] ^ gray_s2[i];
    // creates a ripple WIDTH levels deep, because bit 0 cannot settle until
    // every bit above it has. At WIDTH=32 that is a 31-level XOR chain, which
    // is a lot of combinational depth to hand a placer for no reason.
    //
    // This is preventive, not a fix for an observed failure. It was written
    // while chasing a TS_COUNT that read 504 instead of the expected value,
    // and the serial chain was wrongly blamed. The real cause was elsewhere
    // (stale entries in the downstream AXI-Stream FIFO); the serial form had
    // in fact been reading back correctly all along. The reduction is still
    // the better way to write it, so it stays.
    genvar gi;
    generate
        for (gi = 0; gi < WIDTH; gi = gi + 1) begin : gray2bin
            assign dst_cnt[gi] = ^(gray_s2 >> gi);
        end
    endgenerate
endmodule
