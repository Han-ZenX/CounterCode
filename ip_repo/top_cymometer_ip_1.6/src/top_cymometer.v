module top_cymometer(
    input              clk_fx     ,             // Test clock
    input              clk_fs     ,             // Reference clock

    output     [31:0]  cnt_clk_stand_reg ,   
    output     [31:0]  cnt_clk_test_reg ,     
    
    input                    reset_sig,
    input                    gate_sig,
    
    // TDC outputs
    output      [7:0]        tdc_ref_rise,
    output      [7:0]        tdc_ref_fall,
    output      [7:0]        tdc_test_rise,
    output      [7:0]        tdc_test_fall,
    
    // Timestamp engine ports
    input                    s_axi_aclk,
    input       [1:0]        ts_mode,
    input       [31:0]       edge_skip,
    output      [10:0]       ts_fifo_count,
    output                   ts_fifo_full,
    output      [31:0]       ts_fifo_data_cnt,
    output      [5:0]        ts_fifo_data_tdc,
    input       [9:0]        ts_fifo_rd_addr
);
// wire define       

//*****************************************************
//**                    main code
//*****************************************************

// Instantiate equal-precision frequency measurement module
cymometer u_cymometer(   
    .clk_stand (clk_fs),
    .clk_test  (clk_fx)  ,   // Clock under test
    
    .cnt_clk_stand_reg (cnt_clk_stand_reg),
    .cnt_clk_test_reg (cnt_clk_test_reg),
    
    .reset_sig (reset_sig),
    .gate_sig  (gate_sig),
    
    .tdc_ref_rise (tdc_ref_rise),
    .tdc_ref_fall (tdc_ref_fall),
    .tdc_test_rise (tdc_test_rise),
    .tdc_test_fall (tdc_test_fall),
    
    .s_axi_aclk      (s_axi_aclk),
    .ts_mode         (ts_mode),
    .edge_skip        (edge_skip),
    .ts_fifo_count    (ts_fifo_count),
    .ts_fifo_full     (ts_fifo_full),
    .ts_fifo_data_cnt (ts_fifo_data_cnt),
    .ts_fifo_data_tdc (ts_fifo_data_tdc),
    .ts_fifo_rd_addr  (ts_fifo_rd_addr)
);

endmodule