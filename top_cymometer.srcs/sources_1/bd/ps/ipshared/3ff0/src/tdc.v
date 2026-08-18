`timescale 1ns / 1ps
//============================================================================
// TDC -- Time-to-Digital Converter based on a CARRY4 tapped delay chain
//
// Measures where a transition of signal_in falls within a clk period.
// 256 taps on Zynq-7000. Code density measured on xc7z020-2 gives 21.0 ps per
// tap, so the chain spans about 5.4 ns against the 3.2 ns period (312.5 MHz).
//
// The count was 64 until the chain was actually measured: 64 taps span only
// 1.35 ns, everything past that saturated, and 58% of samples came back
// unusable. 128 was rejected because 25 ps/tap at the slow corner covers the
// period with zero margin and falls short at typical. NUM_TAPS must stay a
// power of two -- the saturation test at the bottom depends on it.
//
//----------------------------------------------------------------------------
// Two differences from the original tdc.v
//
// 1) Encoding: the original used a priority encoder searching for the "last
//    0->1 transition". Bubble codes are common on a carry chain (e.g.
//    ...0010111..., caused by uneven routing delay between taps) and the
//    priority encoder latches onto the bubble instead, producing errors far
//    larger than 1 LSB.
//    This version counts the number of ones (popcount). The total count of
//    ones in a thermometer code is independent of how bubbles are
//    distributed and depends only on propagation distance, so it is
//    inherently bubble-immune.
//
// 2) Pipelining: the popcount adder tree is spread over five stages to close
//    timing at 312.5 MHz. The latency is fixed and known so the upper level
//    can align the coarse counter against it (see timing contract below).
//
//----------------------------------------------------------------------------
// Timing contract -- ts_engine depends on this
//
//   Let the n-th rising edge of clk sample the delay chain, call it S_n.
//   S_n reflects the transition position within the interval (n-1, n].
//
//     cycle n   : tap_reg   <= tap             capture S_n
//     cycle n+1 : grp_sum   <= group sums      32 counts of 4 bits
//     cycle n+2 : pair_sum  <= pairwise sums   16 counts of 5 bits
//     cycle n+3 : quad_sum  <= pairwise sums    8 counts of 6 bits
//     cycle n+4 : oct_sum   <= pairwise sums    4 counts of 7 bits
//     cycle n+5 : tdc_value <= total            final result for S_n
//
//   So tdc_value lags the sampling point by TDC_LATENCY = 5 cycles.
//
//   CHANGING THIS BREAKS ts_engine, silently -- the coarse count and the
//   fine value would describe different edges and nothing would look wrong
//   until the measured frequency drifted. It was 2 cycles, then 3 when the
//   adder tree was first split, then 5 when the chain grew to 256 taps.
//
//   ts_engine aligns against L = TDC_LATENCY by the rules below. Each was
//   checked against the code as it stood at L = 3 before being applied at 5:
//
//     ts_engine   edge tap     k = L - 1    edge_d2   -> edge_d4
//     ts_engine   coarse tap   X = L        _d3       -> free_run_cnt_d5
//
//   k and X: a transition seen by edge_raw(n) lies in (n-2, n-1] and so
//   belongs to sample S_(n-1), whose result appears at tdc_value(n-1+L). An
//   always block on cycle m reads the (m-1) value of everything, so
//   m - 1 = n - 1 + L, i.e. m = n + L. Then (m-1) - k = n gives k = L - 1,
//   and (m-1) - X = n - 1 gives X = L.
//
//   T: bit_sync(T) yields gate_fx(n) = gate(n-(T-1)), so cycle m sees the
//   transition in (m-1-T, m-T], i.e. sample S_(m-T), whose result appears at
//   tdc_value(m-T+L). Cycle m reads tdc_value(m-1), hence T = L + 1.
//
//   Grep TDC_LATENCY before touching any of this.
//
//----------------------------------------------------------------------------
// Output polarity
//
//   The raw CARRY4 O outputs are inverted (O = S XOR CI = ~CI with S=1111).
//   The popcount stage inverts tap_reg to compensate, so the following is
//   stated in terms of the compensated value.
//
//   Rising edge on signal_in: the signal propagates from low taps upward,
//                             tap = {0...0, 1...1}, popcount = number of taps
//                             traversed, which is the phase directly.
//   Falling edge:             tap = {1...1, 0...0},
//                             popcount = NUM_TAPS - distance traversed.
//
//   This IP only samples on rising edges, so tdc_value is used as the phase
//   as-is. With no transition at all (constant 0 or 1 for the whole period)
//   popcount is 0 or NUM_TAPS and tdc_valid is deasserted.
//============================================================================

module tdc #(
    parameter NUM_TAPS = 256     // must be a power of two, and at least 16
)(
    input  wire       clk,
    input  wire       rst_n,     // synchronous reset, active low
    input  wire       signal_in, // asynchronous signal under measurement
    output reg  [7:0] tdc_value, // phase value 0 .. NUM_TAPS-1
    output reg        tdc_valid  // a valid transition was captured this sample
);

    localparam NGRP = NUM_TAPS / 8;
    localparam SUMW = $clog2(NUM_TAPS) + 1;   // must hold NUM_TAPS itself

    //========================================================================
    // Carry delay chain
    // Each CARRY4 provides 4 taps. With S=1111 / DI=0000 the carry propagates
    // through all four bits, and O[j] = S[j] XOR CI_j = ~CI_j, i.e. the taps
    // come out INVERTED -- see the popcount stage, which compensates.
    // DONT_TOUCH keeps synthesis from optimizing away this apparently
    // functionless path.
    //
    // Two things here are easy to get wrong and were both wrong before:
    //   - The chain output is CO[3], not CO[0]. Taking CO[0] gives the next
    //     CARRY4 only one carry delay of offset while still reading four taps,
    //     so the taps of adjacent blocks overlap in time and the thermometer
    //     code is not monotonic.
    //   - The CI pin is hard-wired to the previous block's CO. A general
    //     signal can only enter the chain through CYINIT, so the first stage
    //     injects signal_in there and holds CI low.
    //========================================================================
    (* DONT_TOUCH = "TRUE" *) wire [NUM_TAPS-1:0] tap;
    wire [NUM_TAPS/4:0] carry;   // carry[i+1] = CO[3] of stage i

    assign carry[0] = 1'b0;      // stage 0 injects through CYINIT instead

    genvar i;
    generate
        for (i = 0; i < NUM_TAPS/4; i = i + 1) begin : delay_stage
            wire [3:0] co;

            CARRY4 carry4_inst (
                .CO     (co),
                .O      (tap[i*4 +: 4]),
                .CI     (carry[i]),
                .CYINIT ((i == 0) ? signal_in : 1'b0),
                .DI     (4'b0000),
                .S      (4'b1111)
            );

            assign carry[i+1] = co[3];
        end
    endgenerate

    //========================================================================
    // Cycle n: sample the delay chain
    // ASYNC_REG asks the placer to pack these flops tightly, reducing
    // sampling skew between taps.
    //========================================================================
    (* ASYNC_REG = "TRUE" *) reg [NUM_TAPS-1:0] tap_reg;

    always @(posedge clk) begin
        if (!rst_n)
            tap_reg <= {NUM_TAPS{1'b0}};
        else
            tap_reg <= tap;
    end

    //========================================================================
    // Cycle n+1: group partial sums, every 8 taps compressed into 4 bits
    //
    // tap_reg is inverted here to undo the CARRY4 O = ~CI polarity, so that
    // sum_comb below is the propagation distance directly. Inverting at the
    // LUT inputs of the popcount tree is free, whereas inverting between the
    // CARRY4 and tap_reg would insert a LUT into the sampling path and destroy
    // the tight capture the ASYNC_REG attribute is there to get.
    //========================================================================
    function [3:0] popcount8;
        input [7:0] d;
        begin
            popcount8 = d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7];
        end
    endfunction

    reg [3:0] grp_sum [0:NGRP-1];

    integer g;
    always @(posedge clk) begin
        if (!rst_n) begin
            for (g = 0; g < NGRP; g = g + 1)
                grp_sum[g] <= 4'd0;
        end else begin
            for (g = 0; g < NGRP; g = g + 1)
                grp_sum[g] <= popcount8(~tap_reg[g*8 +: 8]);
        end
    end

    //========================================================================
    // Cycles n+2, n+3, n+4: pairwise reduction, one adder deep per stage
    //
    // Summing all NGRP group counts in one cycle does not close timing at
    // 312.5 MHz. Measured back when NGRP was 8: 6 logic levels (4 LUTs +
    // 2 CARRY4) plus the saturation mux, 4.169 ns against a 3.200 ns period.
    //
    // That number is why the final stage below is held to four terms. With
    // NGRP now 32, collapsing any two of these stages would put 8 or 16 terms
    // into one cycle -- wider than the sum that already missed by a full
    // nanosecond, so it would not close either.
    //
    // The three stages are one always block because they are the same
    // operation three times; splitting them would just triple the boilerplate.
    // Each halves the term count with a single adder of delay, so none of them
    // is anywhere near critical.
    //
    // Widths assume NUM_TAPS <= 256: a group holds at most 8, a pair 16, a
    // quad 32, an oct 64.
    //========================================================================
    localparam NPAIR = NGRP  / 2;
    localparam NQUAD = NPAIR / 2;
    localparam NOCT  = NQUAD / 2;

    reg [4:0] pair_sum [0:NPAIR-1];
    reg [5:0] quad_sum [0:NQUAD-1];
    reg [6:0] oct_sum  [0:NOCT-1];

    integer p, q, o;
    always @(posedge clk) begin
        if (!rst_n) begin
            for (p = 0; p < NPAIR; p = p + 1) pair_sum[p] <= 5'd0;
            for (q = 0; q < NQUAD; q = q + 1) quad_sum[q] <= 6'd0;
            for (o = 0; o < NOCT;  o = o + 1) oct_sum[o]  <= 7'd0;
        end else begin
            for (p = 0; p < NPAIR; p = p + 1)
                pair_sum[p] <= {1'b0, grp_sum[2*p]} + {1'b0, grp_sum[2*p + 1]};
            for (q = 0; q < NQUAD; q = q + 1)
                quad_sum[q] <= {1'b0, pair_sum[2*q]} + {1'b0, pair_sum[2*q + 1]};
            for (o = 0; o < NOCT; o = o + 1)
                oct_sum[o]  <= {1'b0, quad_sum[2*o]} + {1'b0, quad_sum[2*o + 1]};
        end
    end

    //========================================================================
    // Cycle n+5: final sum and output
    //========================================================================
    reg [SUMW-1:0] sum_comb;

    integer k;
    always @(*) begin
        sum_comb = {SUMW{1'b0}};
        for (k = 0; k < NOCT; k = k + 1)
            sum_comb = sum_comb + oct_sum[k];
    end

    always @(posedge clk) begin
        if (!rst_n) begin
            tdc_value <= 8'd0;
            tdc_valid <= 1'b0;
        end else begin
            // All zeros / all ones means no transition occurred this period
            tdc_valid <= (sum_comb != 0) && (sum_comb != NUM_TAPS);
            // Saturate so popcount == NUM_TAPS cannot wrap to 0. Testing the
            // top bit rather than comparing against NUM_TAPS keeps this a mux
            // instead of a comparator: SUMW is exactly wide enough that only
            // the full count sets it, which holds only while NUM_TAPS is a
            // power of two.
            tdc_value <= sum_comb[SUMW-1] ? (NUM_TAPS - 1) : sum_comb[7:0];
        end
    end

endmodule
