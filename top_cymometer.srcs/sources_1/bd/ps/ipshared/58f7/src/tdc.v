`timescale 1ns / 1ps
//============================================================================
// TDC (Time-to-Digital Converter) Module
// Based on CARRY4 tapped delay chain for Xilinx Zynq-7000 (7-series FPGA)
//
// Measures sub-clock-cycle time of an input signal transition relative to
// the reference clock edge. Resolution: ~50ps per tap (64 taps total).
// Full scale: one reference clock period (3.2ns @ 312.5MHz).
//
// Output: tdc_value (0 to NUM_TAPS-1), representing fractional clock period.
//   tdc_value / NUM_TAPS â‰? transition_time / T_clk
//============================================================================

module tdc #(
    parameter NUM_TAPS = 64      // Number of delay taps (must be multiple of 4)
)(
    input  wire                          clk,       // Reference clock
    input  wire                          rst,       // Synchronous reset (active high)
    input  wire                          signal_in, // Asynchronous input signal to measure
    output reg  [$clog2(NUM_TAPS)-1:0]   tdc_value  // Encoded TDC value (0 to NUM_TAPS-1)
);

    // ========================================================================
    // Delay chain using CARRY4 primitives
    // Each CARRY4 provides 4 delay taps via the O output
    // The carry chain (COâ†’CI) propagates the signal through stages
    // 16 x CARRY4 = 64 taps, total delay ~ one clock period
    // ========================================================================

    (* DONT_TOUCH = "TRUE" *) wire [NUM_TAPS-1:0] tap;
    // carry[0..NUM_TAPS/4] chains the carry output from each CARRY4 stage
    wire [NUM_TAPS/4:0] carry;

    // Carry input for first stage is the signal itself
    assign carry[0] = signal_in;

    genvar i;
    generate
        for (i = 0; i < NUM_TAPS/4; i = i + 1) begin : delay_stage
            CARRY4 carry4_inst (
                .CO     ({3'b000, carry[i+1]}), // CO[3] = carry out -> next stage CI
                .O      (tap[i*4 +: 4]),        // 4-bit XOR output = delayed tap values
                .CI     (carry[i]),             // Carry in from previous stage
                .CYINIT (1'b0),                 // Carry init (unused in chain mode)
                .DI     (4'b0000),              // Data in = 0 for pass-through mode
                .S      (4'b1111)               // Select = 1: O[k] = DI[k] ^ carry = carry
            );
        end
    endgenerate

    // ========================================================================
    // Sample delay chain outputs at clock edge
    // Creates a thermometer code: {1...1, 0...0} or {0...0, 1...1}
    // The transition position encodes the input signal timing
    // ========================================================================

    reg [NUM_TAPS-1:0] tap_reg;

    always @(posedge clk) begin
        if (rst)
            tap_reg <= {NUM_TAPS{1'b0}};
        else
            tap_reg <= tap;
    end

    // ========================================================================
    // Thermometer code to binary encoder
    // Finds the 0->1 or 1->0 transition position in the tapped delay chain
    // Priority encoder: returns position of LAST matching transition
    // ========================================================================

    reg [$clog2(NUM_TAPS)-1:0] encoded;
    reg valid;

    integer j;
    always @(*) begin
        encoded = {$clog2(NUM_TAPS){1'b0}};
        valid   = 1'b0;

        // Check for valid thermometer pattern (not all 0s or all 1s)
        if (tap_reg != {NUM_TAPS{1'b0}} && tap_reg != {NUM_TAPS{1'b1}}) begin
            valid = 1'b1;
            // Find 0->1 transition position (highest priority = last position)
            for (j = 1; j < NUM_TAPS; j = j + 1) begin
                if (tap_reg[j] == 1'b1 && tap_reg[j-1] == 1'b0)
                    encoded = j[$clog2(NUM_TAPS)-1:0];
            end
            // If no 0->1 found, try 1->0 transition
            if (encoded == 0) begin
                for (j = 1; j < NUM_TAPS; j = j + 1) begin
                    if (tap_reg[j] == 1'b0 && tap_reg[j-1] == 1'b1)
                        encoded = j[$clog2(NUM_TAPS)-1:0];
                end
            end
        end
    end

    // Output register: hold previous value when no valid transition
    always @(posedge clk) begin
        if (rst)
            tdc_value <= 0;
        else if (valid)
            tdc_value <= encoded;
        // else: hold previous value
    end

endmodule
