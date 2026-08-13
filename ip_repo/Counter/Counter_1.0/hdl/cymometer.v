`timescale 1ns / 1ps

module cymometer
(
    input   wire            clk_stand   ,   // Reference clock, 312.5MHz
    input   wire            clk_test    ,   // Clock under test

    output  reg     [31:0]  cnt_clk_stand_reg,   // Reference clock cycle count within actual gate
    output  reg     [31:0]  cnt_clk_test_reg,    // Test clock cycle count within actual gate
    
    input                    reset_sig,
    input                    gate_sig,
    
    // TDC outputs - sub-cycle time measurements
    output  reg     [7:0]    tdc_ref_rise,  // Reference clock domain TDC: gate rising edge sub-cycle value (0-63)
    output  reg     [7:0]    tdc_ref_fall,  // Reference clock domain TDC: gate falling edge sub-cycle value (0-63)
    output  reg     [7:0]    tdc_test_rise, // Test clock domain TDC: gate rising edge sub-cycle value (0-63)
    output  reg     [7:0]    tdc_test_fall, // Test clock domain TDC: gate falling edge sub-cycle value (0-63)
    
    // Timestamp engine ports
    input                    s_axi_aclk,    // AXI clock (100MHz)
    input           [1:0]    ts_mode,       // bit0: enable, bit1: reset
    input           [31:0]   edge_skip,     // Capture every (edge_skip+1)th edge
    output  wire    [10:0]   ts_fifo_count, // FIFO entry count
    output  wire             ts_fifo_full,  // FIFO full flag
    output  wire    [31:0]   ts_fifo_data_cnt,  // FIFO read data: counter
    output  wire    [5:0]    ts_fifo_data_tdc,  // FIFO read data: TDC
    input           [9:0]    ts_fifo_rd_addr    // FIFO read address
);

//============================================================================
// Standard clock domain gate synchronization (equal-precision frequency measurement)
//============================================================================
reg [2:0] gate_sync_stand;  // Three-stage synchronizer in reference clock domain
reg real_gate_stand;         // Actual gate in reference clock domain
reg gate_stand_prev;         // Previous gate state (for edge detection)

always @(posedge clk_stand or posedge reset_sig) begin
    if (reset_sig) begin
        gate_sync_stand <= 3'b0;
        real_gate_stand <= 1'b0;
        gate_stand_prev <= 1'b0;
    end else begin
        gate_sync_stand <= {gate_sync_stand[1:0], gate_sig};
        gate_stand_prev <= real_gate_stand;
        real_gate_stand <= gate_sync_stand[2];
    end
end

//============================================================================
// Reference clock domain TDC - measures the precise position of the gate
// edge within the reference clock cycle
//============================================================================
wire [5:0] tdc_stand_val;

tdc #(.NUM_TAPS(64)) tdc_stand_inst (
    .clk       (clk_stand),
    .rst       (reset_sig),
    .signal_in (gate_sync_stand[2]),  // Synchronized gate signal
    .tdc_value (tdc_stand_val)
);

// Detect gate rising edge -> capture TDC value (sub-cycle time after gate opens)
always @(posedge clk_stand or posedge reset_sig) begin
    if (reset_sig)
        tdc_ref_rise <= 8'd0;
    else if (real_gate_stand && !gate_stand_prev)
        tdc_ref_rise <= {2'b0, tdc_stand_val};
end

// Detect gate falling edge -> capture TDC value (sub-cycle time when gate closes)
always @(posedge clk_stand or posedge reset_sig) begin
    if (reset_sig)
        tdc_ref_fall <= 8'd0;
    else if (!real_gate_stand && gate_stand_prev)
        tdc_ref_fall <= {2'b0, tdc_stand_val};
end

// Reference signal counter (equal-precision frequency measurement)
always @(posedge clk_stand or posedge reset_sig) begin
    if (reset_sig) 
        cnt_clk_stand_reg <= 0;
    else if(real_gate_stand)
        cnt_clk_stand_reg <= cnt_clk_stand_reg + 1;
    else
        cnt_clk_stand_reg <= cnt_clk_stand_reg;
end

//============================================================================
// Test clock domain gate synchronization (equal-precision frequency measurement)
//============================================================================
reg [2:0] gate_sync_test;   // Three-stage synchronizer in test clock domain
reg real_gate_test;          // Actual gate in test clock domain
reg gate_test_prev;         // Previous gate state (for edge detection)

always @(posedge clk_test or posedge reset_sig) begin
    if (reset_sig) begin 
        gate_sync_test <= 3'b0;
        real_gate_test <= 1'b0;
        gate_test_prev <= 1'b0;
    end else begin
        gate_sync_test <= {gate_sync_test[1:0], gate_sig};
        gate_test_prev <= real_gate_test;
        real_gate_test <= gate_sync_test[2];
    end
end

//============================================================================
// Test clock domain TDC - measures the precise position of the gate edge
// within the test clock cycle
//============================================================================
wire [5:0] tdc_test_val;

tdc #(.NUM_TAPS(64)) tdc_test_inst (
    .clk       (clk_test),
    .rst       (reset_sig),
    .signal_in (gate_sync_test[2]),  // Synchronized gate signal
    .tdc_value (tdc_test_val)
);

// Detect gate rising edge -> capture TDC value
always @(posedge clk_test or posedge reset_sig) begin
    if (reset_sig)
        tdc_test_rise <= 8'd0;
    else if (real_gate_test && !gate_test_prev)
        tdc_test_rise <= {2'b0, tdc_test_val};
end

// Detect gate falling edge -> capture TDC value
always @(posedge clk_test or posedge reset_sig) begin
    if (reset_sig)
        tdc_test_fall <= 8'd0;
    else if (!real_gate_test && gate_test_prev)
        tdc_test_fall <= {2'b0, tdc_test_val};
end

// Test signal counter (equal-precision frequency measurement)
always @(posedge clk_test or posedge reset_sig) begin
    if (reset_sig) 
        cnt_clk_test_reg <= 0;
    else if(real_gate_test)
        cnt_clk_test_reg <= cnt_clk_test_reg + 1;
    else
        cnt_clk_test_reg <= cnt_clk_test_reg;
end


//============================================================================
// TDC for timestamp engine - measures test signal sub-cycle time
//============================================================================
wire [5:0] tdc_ts_val;

tdc #(.NUM_TAPS(64)) tdc_ts_inst (
    .clk       (clk_stand),
    .rst       (reset_sig),
    .signal_in (clk_test),     // Raw test signal (async)
    .tdc_value (tdc_ts_val)
);

//============================================================================
// Timestamp Engine - continuous dead-time-free timestamping
//============================================================================
timestamp_engine #(
    .FIFO_ADDR_WIDTH(10),
    .FIFO_DEPTH(1024)
) u_ts_engine (
    .clk_fs          (clk_stand),        // 312.5MHz reference clock
    .s_axi_aclk      (s_axi_aclk),       // 100MHz AXI clock
    .rst             (reset_sig),
    .clk_fx          (clk_test),         // Raw test signal
    .ts_enable       (ts_mode[0]),
    .ts_reset        (ts_mode[1]),
    .edge_skip       (edge_skip),
    .tdc_value       (tdc_ts_val),
    .fifo_rd_addr    (ts_fifo_rd_addr),
    .fifo_count      (ts_fifo_count),
    .fifo_full       (ts_fifo_full),
    .fifo_data_cnt   (ts_fifo_data_cnt),
    .fifo_data_tdc   (ts_fifo_data_tdc)
);

endmodule
