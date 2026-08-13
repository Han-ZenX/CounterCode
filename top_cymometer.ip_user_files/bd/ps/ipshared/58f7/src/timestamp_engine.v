`timescale 1ns / 1ps
//============================================================================
// Timestamp Engine - Continuous Dead-Time-Free Timestamp Measurement
//
// Records a timestamp (coarse counter + TDC fine value) for every rising
// edge of the test signal (or every Nth edge via edge_skip).
// Timestamps are stored in an async FIFO (1024 entries x 40-bit) for
// readout by the ARM processor via AXI registers.
//
// FIFO uses dual-port RAM with gray-code write pointer synchronization
// for safe clock domain crossing between clk_fs (312.5MHz) and
// s_axi_aclk (50MHz).
//============================================================================

module timestamp_engine #(
    parameter FIFO_ADDR_WIDTH = 10,   // 1024 entries
    parameter FIFO_DEPTH = 1024
)(
    input  wire                    clk_fs,         // Reference clock 312.5MHz
    input  wire                    s_axi_aclk,     // AXI clock 100MHz
    input  wire                    rst,            // Synchronous reset (active high)
    input  wire                    clk_fx,         // Test signal (async input)

    // Control (clk_fs domain, driven from slv_reg via cymometer)
    input  wire                    ts_enable,      // bit0: timestamp engine enable
    input  wire                    ts_reset,       // bit1: reset engine

    input  wire [31:0]             edge_skip,      // Capture every (edge_skip+1)th edge

    // TDC input (from existing TDC module in clk_fs domain)
    input  wire [5:0]              tdc_value,      // Sub-cycle fractional value

    // FIFO read interface (s_axi_aclk domain)
    input  wire [FIFO_ADDR_WIDTH-1:0] fifo_rd_addr,

    // Status outputs (s_axi_aclk domain)
    output wire [FIFO_ADDR_WIDTH:0] fifo_count,    // 0 to FIFO_DEPTH
    output wire                    fifo_full,

    // FIFO read data outputs (s_axi_aclk domain, 1-cycle read latency)
    output wire [31:0]             fifo_data_cnt,  // Coarse counter value
    output wire [5:0]              fifo_data_tdc   // Fine TDC value
);

    //========================================================================
    // Synchronize combined reset from both clock domains
    // NOTE: ts_enable is NOT part of reset - disabling should not
    // destroy FIFO contents (needed for post-measurement readout)
    //========================================================================
    reg rst_fs_r;
    always @(posedge clk_fs)
        rst_fs_r <= rst | ts_reset;

    //========================================================================
    // Free-running 32-bit counter in clk_fs domain (3.2ns resolution)
    //========================================================================
    reg [31:0] free_run_cnt;
    always @(posedge clk_fs) begin
        if (rst_fs_r)
            free_run_cnt <= 32'd0;
        else
            free_run_cnt <= free_run_cnt + 1'b1;
    end

    //========================================================================
    // Test signal synchronization to clk_fs domain (3-stage)
    //========================================================================
    reg [2:0] fx_sync;
    always @(posedge clk_fs) begin
        if (rst_fs_r)
            fx_sync <= 3'b0;
        else
            fx_sync <= {fx_sync[1:0], clk_fx};
    end

    //========================================================================
    // Rising edge detection in clk_fs domain
    //========================================================================
    wire rising_edge = fx_sync[2] & ~fx_sync[1];

    //========================================================================
    // Edge counting and skip logic
    //========================================================================
    reg [31:0] edge_total_cnt;   // Total edge counter (for software)
    reg [31:0] edge_skip_cnt;    // Skip counter

    wire capture_edge = rising_edge && ts_enable && (edge_skip_cnt == 0);

    always @(posedge clk_fs) begin
        if (rst_fs_r) begin
            edge_total_cnt <= 32'd0;
            edge_skip_cnt  <= 32'd0;
        end else if (rising_edge && ts_enable) begin
            edge_total_cnt <= edge_total_cnt + 1'b1;
            if (edge_skip_cnt == 0)
                edge_skip_cnt <= edge_skip;
            else
                edge_skip_cnt <= edge_skip_cnt - 1'b1;
        end
    end

    //========================================================================
    // Dual-port RAM for FIFO storage (inferred as BRAM)
    // Write port: clk_fs domain
    // Read port:  s_axi_aclk domain (independent)
    //========================================================================
    reg [39:0] fifo_mem [0:FIFO_DEPTH-1];

    // ---- Write port (clk_fs domain) ----
    reg [FIFO_ADDR_WIDTH:0] wr_ptr_bin;   // Binary write pointer (extra bit for wrap)
    wire [FIFO_ADDR_WIDTH-1:0] wr_addr = wr_ptr_bin[FIFO_ADDR_WIDTH-1:0];
    wire fifo_not_full;

    always @(posedge clk_fs) begin
        if (rst_fs_r) begin
            wr_ptr_bin <= {(FIFO_ADDR_WIDTH+1){1'b0}};
        end else if (capture_edge && fifo_not_full) begin
            fifo_mem[wr_addr] <= {free_run_cnt, 2'b0, tdc_value};
            wr_ptr_bin <= wr_ptr_bin + 1'b1;
        end
    end

    // ---- Read port (s_axi_aclk domain) ----
    // BRAM read: data available one cycle after address is presented
    reg [39:0] fifo_rd_data_reg;
    always @(posedge s_axi_aclk) begin
        if (rst)
            fifo_rd_data_reg <= 40'd0;
        else
            fifo_rd_data_reg <= fifo_mem[fifo_rd_addr];
    end

    assign fifo_data_cnt = fifo_rd_data_reg[39:8];
    assign fifo_data_tdc = fifo_rd_data_reg[5:0];

    //========================================================================
    // Gray-code write pointer for clock domain crossing
    //========================================================================
    wire [FIFO_ADDR_WIDTH:0] wr_ptr_gray = wr_ptr_bin ^ (wr_ptr_bin >> 1);

    // 2-stage synchronizer: wr_ptr_gray (clk_fs) -> s_axi_aclk
    reg [FIFO_ADDR_WIDTH:0] wr_gray_s1, wr_gray_s2;
    always @(posedge s_axi_aclk) begin
        if (rst) begin
            wr_gray_s1 <= {(FIFO_ADDR_WIDTH+1){1'b0}};
            wr_gray_s2 <= {(FIFO_ADDR_WIDTH+1){1'b0}};
        end else begin
            wr_gray_s1 <= wr_ptr_gray;
            wr_gray_s2 <= wr_gray_s1;
        end
    end

    //========================================================================
    // Gray-to-binary conversion of synchronized write pointer
    //========================================================================
    reg [FIFO_ADDR_WIDTH:0] wr_ptr_bin_sync;

    integer gi;
    always @(*) begin
        wr_ptr_bin_sync = {(FIFO_ADDR_WIDTH+1){1'b0}};
        for (gi = FIFO_ADDR_WIDTH; gi >= 0; gi = gi - 1) begin
            if (gi == FIFO_ADDR_WIDTH)
                wr_ptr_bin_sync[gi] = wr_gray_s2[gi];
            else
                wr_ptr_bin_sync[gi] = wr_ptr_bin_sync[gi+1] ^ wr_gray_s2[gi];
        end
    end

    //========================================================================
    // FIFO status (s_axi_aclk domain)
    //========================================================================
    wire [FIFO_ADDR_WIDTH:0] rd_ptr_ext;
    assign rd_ptr_ext = {1'b0, fifo_rd_addr};
    assign fifo_count = wr_ptr_bin_sync - rd_ptr_ext;

    assign fifo_full = (fifo_count >= FIFO_DEPTH - 2); // Conservative: stop 2 early
    assign fifo_not_full = ~fifo_full;

endmodule
