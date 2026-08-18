
`timescale 1 ns / 1 ps
//============================================================================
// Counter_Core v1.0 -- top level
//
// Gap-free continuous timestamping frequency counter core, modeled on the
// Keysight 53230A.
//
//   hdl/  AXI interface layer          src/  measurement core
//
//   hdl/Counter_Core_v1_0.v            this file: differential clock input + interconnect
//   +-- hdl/Counter_Core_v1_0_S_AXI.v  AXI4-Lite register file (no measurement logic)
//   +-- src/counter_core.v             measurement core
//   |   +-- src/ts_engine.v            gap-free timestamp engine + async FIFO
//   |   |   +-- src/tdc.v              CARRY4 tapped delay line TDC
//   |   +-- src/cdc.v                  reset sync / level sync / counter CDC
//   +-- hdl/Counter_Core_v1_0_M_AXIS.v timestamp stream -> AXI-Stream -> DMA
//
// Interface and register definitions: doc/interface_spec.md
//
//----------------------------------------------------------------------------
// Clock domain constraint
//
// s_axi_aclk and m_axis_aclk must come from the same source (both tied to
// FCLK_CLK0 in the BD). counter_core uses s_axi_aclk as the FIFO read-side
// clock and M_AXIS consumes that stream directly; if the two clocks are
// separated, both ts_engine's rd_clk and pkt_len need rework.
//
//----------------------------------------------------------------------------
// Timing constraint reminder
//
// clk_fs and clk_fx enter through IBUFDS+BUFG and must be given explicit
// create_clock constraints in the XDC, otherwise the bulk of the TDC and
// timestamp engine logic is left out of timing analysis.
// The original project's top_cymometer.xdc lacks both constraints; its report
// shows nearly 400 register pins with no clock definition. Add them before
// bringing the new IP up on hardware.
//============================================================================

	module Counter_Core_v1_0 #
	(
		// Users to add parameters here

		// Timestamp FIFO depth = 2^FIFO_ADDR_WIDTH entries x 64 bit
		// 12 -> 4096 entries = 32 KB = 8 x 36Kb BRAM
		parameter integer FIFO_ADDR_WIDTH	= 12,
		// TDC delay chain tap count, must be a multiple of 8
		parameter integer NUM_TAPS	= 256,

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S_AXI
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		parameter integer C_S_AXI_ADDR_WIDTH	= 8,

		// Parameters of Axi Master Bus Interface M_AXIS
		// Timestamps are fixed at 64 bits each, matching the HP0 port width
		parameter integer C_M_AXIS_TDATA_WIDTH	= 64,
		parameter integer C_M_AXIS_START_COUNT	= 32
	)
	(
		// Users to add ports here

		input  wire  clk_fs_p,      // reference clock, 312.5 MHz LVDS_25
		input  wire  clk_fs_n,
		input  wire  clk_fx_p,      // signal under test, LVDS_25
		input  wire  clk_fx_n,

		// External 10 MHz reference, single ended LVCMOS33.
		//
		// Selected in place of clk_fx by SRC_SEL.SRC_10M and fed to the same
		// timestamp engine. Measuring a source whose frequency is known
		// exactly turns the engine around: the fitted result is no longer the
		// input frequency but a reading of clk_fs itself, which is what the
		// reference calibration uses. See doc/interface_spec.md section 8.
		input  wire  clk_10m,

		// Reset for the downstream AXI-Stream FIFO, aclk domain, active low.
		//
		// Connect this to axis_data_fifo_0's s_axis_aresetn in the block
		// design, replacing the global reset. CTRL.TS_RST then flushes the
		// downstream FIFO along with this IP's own; leaving it on the global
		// reset means stale timestamps survive a TS_RST and get delivered at
		// the head of the next DMA transfer.
		output wire  stream_aresetn,

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S_AXI
		input wire  s_axi_aclk,
		input wire  s_axi_aresetn,
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] s_axi_awaddr,
		input wire [2 : 0] s_axi_awprot,
		input wire  s_axi_awvalid,
		output wire  s_axi_awready,
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] s_axi_wdata,
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] s_axi_wstrb,
		input wire  s_axi_wvalid,
		output wire  s_axi_wready,
		output wire [1 : 0] s_axi_bresp,
		output wire  s_axi_bvalid,
		input wire  s_axi_bready,
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] s_axi_araddr,
		input wire [2 : 0] s_axi_arprot,
		input wire  s_axi_arvalid,
		output wire  s_axi_arready,
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] s_axi_rdata,
		output wire [1 : 0] s_axi_rresp,
		output wire  s_axi_rvalid,
		input wire  s_axi_rready,

		// Ports of Axi Master Bus Interface M_AXIS
		input wire  m_axis_aclk,
		input wire  m_axis_aresetn,
		output wire  m_axis_tvalid,
		output wire [C_M_AXIS_TDATA_WIDTH-1 : 0] m_axis_tdata,
		output wire [(C_M_AXIS_TDATA_WIDTH/8)-1 : 0] m_axis_tstrb,
		output wire  m_axis_tlast,
		input wire  m_axis_tready
	);

	localparam integer FIFO_LEVEL_WIDTH = FIFO_ADDR_WIDTH + 1;

	//========================================================================
	// Differential clock input
	//========================================================================
	wire clk_fs, clk_fs_ibuf;
	wire clk_fx, clk_fx_ibuf;

	IBUFDS #(
		.DIFF_TERM   ("FALSE"),
		.IBUF_LOW_PWR("FALSE"),
		.IOSTANDARD  ("LVDS_25")
	) ibufds_fs (
		.O  (clk_fs_ibuf),
		.I  (clk_fs_p),
		.IB (clk_fs_n)
	);

	BUFG bufg_fs (
		.O (clk_fs),
		.I (clk_fs_ibuf)
	);

	IBUFDS #(
		.DIFF_TERM   ("TRUE"),
		.IBUF_LOW_PWR("FALSE"),
		.IOSTANDARD  ("LVDS_25")
	) ibufds_fx (
		.O  (clk_fx_ibuf),
		.I  (clk_fx_p),
		.IB (clk_fx_n)
	);

	BUFG bufg_fx (
		.O (clk_fx),
		.I (clk_fx_ibuf)
	);

	//========================================================================
	// External 10 MHz reference input
	//
	// No BUFG here, unlike clk_fs / clk_fx. This signal never clocks a
	// register: counter_core's source mux feeds it straight to the TDC delay
	// chain and to the clk_fs domain sampler, both of which treat it as data.
	// Putting it on a global buffer would consume a BUFG and force a
	// CLOCK_DEDICATED_ROUTE waiver on a pin that is not clock capable,
	// without changing what the logic does.
	//========================================================================
	wire clk_10m_ibuf;

	IBUF #(
		.IBUF_LOW_PWR("FALSE"),
		.IOSTANDARD  ("LVCMOS33")
	) ibuf_10m (
		.O (clk_10m_ibuf),
		.I (clk_10m)
	);

	//========================================================================
	// Register file <-> measurement core
	//========================================================================
	wire        ts_en, ts_rst, soft_rst, div4_en, src_10m;
	wire [31:0] edge_skip;
	wire [15:0] pkt_len;

	wire        ts_running, overflow, fifo_empty;
	wire [31:0] ts_count, lost_count;
	wire [FIFO_LEVEL_WIDTH-1:0] fifo_level;

	wire [63:0] ts_data;
	wire        ts_valid, ts_last, ts_ready;

// Instantiation of Axi Bus Interface S_AXI
	Counter_Core_v1_0_S_AXI # (
		.C_FIFO_LEVEL_WIDTH(FIFO_LEVEL_WIDTH),
		.C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH)
	) Counter_Core_v1_0_S_AXI_inst (
		.S_AXI_ACLK(s_axi_aclk),
		.S_AXI_ARESETN(s_axi_aresetn),
		.S_AXI_AWADDR(s_axi_awaddr),
		.S_AXI_AWPROT(s_axi_awprot),
		.S_AXI_AWVALID(s_axi_awvalid),
		.S_AXI_AWREADY(s_axi_awready),
		.S_AXI_WDATA(s_axi_wdata),
		.S_AXI_WSTRB(s_axi_wstrb),
		.S_AXI_WVALID(s_axi_wvalid),
		.S_AXI_WREADY(s_axi_wready),
		.S_AXI_BRESP(s_axi_bresp),
		.S_AXI_BVALID(s_axi_bvalid),
		.S_AXI_BREADY(s_axi_bready),
		.S_AXI_ARADDR(s_axi_araddr),
		.S_AXI_ARPROT(s_axi_arprot),
		.S_AXI_ARVALID(s_axi_arvalid),
		.S_AXI_ARREADY(s_axi_arready),
		.S_AXI_RDATA(s_axi_rdata),
		.S_AXI_RRESP(s_axi_rresp),
		.S_AXI_RVALID(s_axi_rvalid),
		.S_AXI_RREADY(s_axi_rready),

		.ts_en         (ts_en),
		.ts_rst        (ts_rst),
		.soft_rst      (soft_rst),
		.edge_skip     (edge_skip),
		.pkt_len       (pkt_len),
		.div4_en       (div4_en),
		.src_10m       (src_10m),

		.ts_running    (ts_running),
		.overflow      (overflow),
		.fifo_empty    (fifo_empty),
		.ts_count      (ts_count),
		.lost_count    (lost_count),
		.fifo_level    (fifo_level)
	);

// Instantiation of the measurement core
	counter_core # (
		.FIFO_ADDR_WIDTH(FIFO_ADDR_WIDTH),
		.NUM_TAPS(NUM_TAPS)
	) counter_core_inst (
		.clk_fs        (clk_fs),
		.clk_fx        (clk_fx),
		.clk_10m       (clk_10m_ibuf),
		.aclk          (s_axi_aclk),
		.aresetn       (s_axi_aresetn),

		.ts_en         (ts_en),
		.ts_rst        (ts_rst),
		.soft_rst      (soft_rst),
		.edge_skip     (edge_skip),
		.pkt_len       (pkt_len),
		.div4_en       (div4_en),
		.src_10m       (src_10m),

		.ts_running    (ts_running),
		.overflow      (overflow),
		.fifo_empty    (fifo_empty),
		.ts_count      (ts_count),
		.lost_count    (lost_count),
		.fifo_level    (fifo_level),

		.ts_data       (ts_data),
		.ts_valid      (ts_valid),
		.ts_last       (ts_last),
		.ts_ready      (ts_ready),

		.stream_aresetn(stream_aresetn)
	);

// Instantiation of Axi Bus Interface M_AXIS
	Counter_Core_v1_0_M_AXIS # (
		.C_M_AXIS_TDATA_WIDTH(C_M_AXIS_TDATA_WIDTH),
		.C_M_START_COUNT(C_M_AXIS_START_COUNT)
	) Counter_Core_v1_0_M_AXIS_inst (
		.M_AXIS_ACLK(m_axis_aclk),
		.M_AXIS_ARESETN(m_axis_aresetn),
		.M_AXIS_TVALID(m_axis_tvalid),
		.M_AXIS_TDATA(m_axis_tdata),
		.M_AXIS_TSTRB(m_axis_tstrb),
		.M_AXIS_TLAST(m_axis_tlast),
		.M_AXIS_TREADY(m_axis_tready),

		.ts_data  (ts_data),
		.ts_valid (ts_valid),
		.ts_last  (ts_last),
		.ts_ready (ts_ready)
	);

	endmodule
