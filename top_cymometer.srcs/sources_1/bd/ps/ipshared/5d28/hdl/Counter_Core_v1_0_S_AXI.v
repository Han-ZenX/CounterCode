
`timescale 1 ns / 1 ps
//============================================================================
// Counter_Core_v1_0_S_AXI -- AXI4-Lite register file
//
// A pure register file with no measurement logic. Measurement lives in
// counter_core and is wired up by the top level. The original Counter IP
// instantiated top_cymometer inside S_AXI, and of its 1505 lines, 1300 were
// template-generated general purpose registers of which only a dozen were
// ever used.
//
// Register definitions: doc/interface_spec.md section 3.
//
// The AXI handshaking below follows the Xilinx template (standard and proven);
// only the register read/write portion is replaced.
//============================================================================

	module Counter_Core_v1_0_S_AXI #
	(
		// Users to add parameters here

		// FIFO fill level width, must match counter_core's FIFO_ADDR_WIDTH+1
		parameter integer C_FIFO_LEVEL_WIDTH	= 13,

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 8
	)
	(
		// Users to add ports here

		// ---- Control outputs (this module -> counter_core) ----
		output wire        ts_en,
		output wire        ts_rst,
		output wire        eq_start,
		output wire        soft_rst,
		output wire [31:0] edge_skip,
		output wire [31:0] gate_len,
		output wire [15:0] pkt_len,

		// ---- Status inputs (counter_core -> this module) ----
		input  wire        ts_running,
		input  wire        overflow,
		input  wire        eq_done,
		input  wire        eq_busy,
		input  wire        fifo_empty,
		input  wire [31:0] ts_count,
		input  wire [31:0] lost_count,
		input  wire [31:0] eq_stand,
		input  wire [31:0] eq_test,
		input  wire [7:0]  tdc_test_rise,
		input  wire [7:0]  tdc_test_fall,
		input  wire [C_FIFO_LEVEL_WIDTH-1:0] fifo_level,

		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid.
		input wire  S_AXI_AWVALID,
		// Write address ready.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave)
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes.
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid.
		input wire  S_AXI_WVALID,
		// Write ready.
		output wire  S_AXI_WREADY,
		// Write response.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid.
		output wire  S_AXI_BVALID,
		// Response ready.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid.
		input wire  S_AXI_ARVALID,
		// Read address ready.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid.
		output wire  S_AXI_RVALID,
		// Read ready.
		input wire  S_AXI_RREADY
	);

	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;

	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 3;      // 16 register slots, 12 in use

	//========================================================================
	// Register addresses (word index = byte offset >> 2)
	//========================================================================
	localparam [3:0] A_CTRL       = 4'h0;   // 0x00 R/W
	localparam [3:0] A_STATUS     = 4'h1;   // 0x04 R
	localparam [3:0] A_EDGE_SKIP  = 4'h2;   // 0x08 R/W
	localparam [3:0] A_TS_COUNT   = 4'h3;   // 0x0C R
	localparam [3:0] A_LOST_COUNT = 4'h4;   // 0x10 R
	localparam [3:0] A_GATE_LEN   = 4'h5;   // 0x14 R/W
	localparam [3:0] A_EQ_STAND   = 4'h6;   // 0x18 R
	localparam [3:0] A_EQ_TEST    = 4'h7;   // 0x1C R
	localparam [3:0] A_TDC_GATE   = 4'h8;   // 0x20 R
	localparam [3:0] A_FIFO_LEVEL = 4'h9;   // 0x24 R
	localparam [3:0] A_VERSION    = 4'hA;   // 0x28 R
	localparam [3:0] A_PKT_LEN    = 4'hB;   // 0x2C R/W

	localparam [31:0] VERSION_MAGIC = 32'h4343_0100;   // "CC" + v1.00

	//========================================================================
	// Writable registers
	//========================================================================
	reg [31:0] reg_ctrl;
	reg [31:0] reg_edge_skip;
	reg [31:0] reg_gate_len;
	reg [31:0] reg_pkt_len;

	assign ts_en     = reg_ctrl[0];
	assign ts_rst    = reg_ctrl[1];
	assign eq_start  = reg_ctrl[2];
	assign soft_rst  = reg_ctrl[3];
	assign edge_skip = reg_edge_skip;
	assign gate_len  = reg_gate_len;
	assign pkt_len   = reg_pkt_len[15:0];

	//========================================================================
	// Read-only status aggregation
	//========================================================================
	wire [31:0] status_word = {27'b0,
	                           fifo_empty,    // [4]
	                           eq_busy,       // [3]
	                           eq_done,       // [2]
	                           overflow,      // [1]
	                           ts_running};   // [0]

	// The original IP assigned {21'b0, full, count[10:0]} -- 33 bits total --
	// to a 32-bit value here, silently truncating the top bit. Status flags
	// and fill level are split into separate registers so nothing is
	// concatenated.
	wire [31:0] tdc_gate_word = {16'b0, tdc_test_fall, tdc_test_rise};

	wire [31:0] fifo_level_word = {{(32-C_FIFO_LEVEL_WIDTH){1'b0}}, fifo_level};

	// I/O Connections assignments
	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RDATA	= axi_rdata;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;

	//========================================================================
	// Write address channel
	//========================================================================
	reg  aw_en;

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	      aw_en <= 1'b1;
	    end
	  else
	    begin
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          axi_awready <= 1'b1;
	          aw_en <= 1'b0;
	        end
	      else if (S_AXI_BREADY && axi_bvalid)
	        begin
	          aw_en <= 1'b1;
	          axi_awready <= 1'b0;
	        end
	      else
	        begin
	          axi_awready <= 1'b0;
	        end
	    end
	end

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end
	  else
	    begin
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end
	end

	//========================================================================
	// Write data channel
	//========================================================================
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end
	  else
	    begin
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
	        begin
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end
	end

	wire slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;
	wire [3:0] wr_index = axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB];

	integer byte_index;

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      reg_ctrl      <= 32'd0;
	      reg_edge_skip <= 32'd0;
	      reg_gate_len  <= 32'd0;
	      reg_pkt_len   <= 32'd0;
	    end
	  else if (slv_reg_wren)
	    begin
	      case ( wr_index )
	        A_CTRL:
	          for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	            if ( S_AXI_WSTRB[byte_index] == 1 )
	              reg_ctrl[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	        A_EDGE_SKIP:
	          for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	            if ( S_AXI_WSTRB[byte_index] == 1 )
	              reg_edge_skip[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	        A_GATE_LEN:
	          for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	            if ( S_AXI_WSTRB[byte_index] == 1 )
	              reg_gate_len[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	        A_PKT_LEN:
	          for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	            if ( S_AXI_WSTRB[byte_index] == 1 )
	              reg_pkt_len[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	        default: ;   // read-only and undefined addresses: write ignored, still OKAY
	      endcase
	    end
	end

	//========================================================================
	// Write response channel
	//========================================================================
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end
	  else
	    begin
	      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
	        begin
	          axi_bvalid <= 1'b1;
	          axi_bresp  <= 2'b0; // 'OKAY'
	        end
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid)
	            begin
	              axi_bvalid <= 1'b0;
	            end
	        end
	    end
	end

	//========================================================================
	// Read address channel
	//========================================================================
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 0;
	    end
	  else
	    begin
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          axi_arready <= 1'b1;
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end
	end

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end
	  else
	    begin
	      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
	        begin
	          axi_rvalid <= 1'b1;
	          axi_rresp  <= 2'b0; // 'OKAY'
	        end
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          axi_rvalid <= 1'b0;
	        end
	    end
	end

	//========================================================================
	// Read data
	//========================================================================
	wire slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	wire [3:0] rd_index = axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB];

	reg [C_S_AXI_DATA_WIDTH-1:0] reg_data_out;

	always @(*)
	begin
	      case ( rd_index )
	        A_CTRL       : reg_data_out = reg_ctrl;
	        A_STATUS     : reg_data_out = status_word;
	        A_EDGE_SKIP  : reg_data_out = reg_edge_skip;
	        A_TS_COUNT   : reg_data_out = ts_count;
	        A_LOST_COUNT : reg_data_out = lost_count;
	        A_GATE_LEN   : reg_data_out = reg_gate_len;
	        A_EQ_STAND   : reg_data_out = eq_stand;
	        A_EQ_TEST    : reg_data_out = eq_test;
	        A_TDC_GATE   : reg_data_out = tdc_gate_word;
	        A_FIFO_LEVEL : reg_data_out = fifo_level_word;
	        A_VERSION    : reg_data_out = VERSION_MAGIC;
	        A_PKT_LEN    : reg_data_out = reg_pkt_len;
	        default      : reg_data_out = 32'd0;
	      endcase
	end

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end
	  else
	    begin
	      if (slv_reg_rden)
	        begin
	          axi_rdata <= reg_data_out;
	        end
	    end
	end

	endmodule
