`timescale 1ns / 1ps
//============================================================================
// TDC -- Time-to-Digital Converter based on a CARRY4 tapped delay chain
//
// Measures where a transition of signal_in falls within a clk period.
// 64 taps on Zynq-7000, nominally about 50 ps per tap, full scale one clock
// period (3.2 ns @ 312.5 MHz).
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
// 2) Pipelining: the popcount adder tree is pipelined over two stages to
//    close timing at 312.5 MHz. The latency is fixed and known so that the
//    upper level can align the coarse counter against it (see timing
//    contract below).
//
//----------------------------------------------------------------------------
// Timing contract (ts_engine depends on this -- keep both in sync)
//
//   Let the n-th rising edge of clk sample the delay chain, call it S_n.
//   S_n reflects the transition position within the interval (n-1, n].
//
//     cycle n   : tap_reg   <= tap          capture S_n
//     cycle n+1 : grp_sum   <= group sums   partial sums of S_n
//     cycle n+2 : tdc_value <= total        final result for S_n
//
//   So tdc_value lags the sampling point by TDC_LATENCY = 2 cycles.
//
//----------------------------------------------------------------------------
// Output polarity
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
    parameter NUM_TAPS = 64      // tap count, must be a multiple of 8
)(
    input  wire       clk,
    input  wire       rst_n,     // synchronous reset, active low
    input  wire       signal_in, // asynchronous signal under measurement
    output reg  [5:0] tdc_value, // phase value 0 .. NUM_TAPS-1
    output reg        tdc_valid  // a valid transition was captured this sample
);

    localparam NGRP = NUM_TAPS / 8;
    localparam SUMW = $clog2(NUM_TAPS) + 1;   // must hold NUM_TAPS itself

    //========================================================================
    // Carry delay chain
    // Each CARRY4 provides 4 taps. With S=1111 / DI=0000 the O outputs pass
    // the carry value straight through. DONT_TOUCH keeps synthesis from
    // optimizing away this apparently functionless path.
    //========================================================================
    (* DONT_TOUCH = "TRUE" *) wire [NUM_TAPS-1:0] tap;
    wire [NUM_TAPS/4:0] carry;

    assign carry[0] = signal_in;

    genvar i;
    generate
        for (i = 0; i < NUM_TAPS/4; i = i + 1) begin : delay_stage
            CARRY4 carry4_inst (
                .CO     ({3'b000, carry[i+1]}),
                .O      (tap[i*4 +: 4]),
                .CI     (carry[i]),
                .CYINIT (1'b0),
                .DI     (4'b0000),
                .S      (4'b1111)
            );
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
                grp_sum[g] <= popcount8(tap_reg[g*8 +: 8]);
        end
    end

    //========================================================================
    // Cycle n+2: merge the partial sums and drive the output
    //========================================================================
    reg [SUMW-1:0] sum_comb;

    integer k;
    always @(*) begin
        sum_comb = {SUMW{1'b0}};
        for (k = 0; k < NGRP; k = k + 1)
            sum_comb = sum_comb + grp_sum[k];
    end

    always @(posedge clk) begin
        if (!rst_n) begin
            tdc_value <= 6'd0;
            tdc_valid <= 1'b0;
        end else begin
            // All zeros / all ones means no transition occurred this period
            tdc_valid <= (sum_comb != 0) && (sum_comb != NUM_TAPS);
            // Saturate at NUM_TAPS-1 so popcount == NUM_TAPS cannot wrap to 0
            tdc_value <= (sum_comb >= NUM_TAPS) ? (NUM_TAPS - 1) : sum_comb[5:0];
        end
    end

endmodule
