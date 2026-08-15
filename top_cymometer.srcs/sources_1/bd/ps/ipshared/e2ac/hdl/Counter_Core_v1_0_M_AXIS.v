
`timescale 1 ns / 1 ps
//============================================================================
// Counter_Core_v1_0_M_AXIS -- timestamp stream output
//
// The original template was a state machine emitting 8 incrementing dummy
// words. It is replaced here by the real timestamp stream from ts_engine.
// The engine's read side already provides valid/ready handshaking with an
// FWFT output register, so this module only generates TSTRB/TLAST and renames
// signals.
//
// Downstream: axis_data_fifo_0 -> axi_dma_0 (S2MM) -> axi_smc -> PS HP0 -> DDR
//
//----------------------------------------------------------------------------
// TLAST comes from ts_engine
//
// axi_dma S2MM delimits packets by TLAST -- filling the buffer length is not
// by itself an end of transfer, and without TLAST the channel stays busy
// forever.
//
// The packet counter lives in ts_engine, not here. A beat counter in this
// module can only be reset by M_AXIS_ARESETN, which CTRL.TS_RST cannot
// reach; it would carry over between captures and put TLAST at the wrong
// offset on every run after the first. ts_engine counts entries it pops and
// tags the last one, so TLAST is bound to the data rather than to a free
// running beat count.
//
//----------------------------------------------------------------------------
// Clock domain constraint
//
// This module shares a clock domain with the ts_engine read side and the
// S_AXI registers -- the top level requires M_AXIS_ACLK and s_axi_aclk to be
// the same source (both tied to FCLK_CLK0 in the BD). pkt_len is therefore
// wired straight from the register with no CDC. If M_AXIS is ever moved to an
// independent clock, pkt_len must be synchronized and ts_engine's rd_clk
// changed to match.
//============================================================================

	module Counter_Core_v1_0_M_AXIS #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Timestamps are fixed at 64 bits, one per beat, matching the HP0 port
		// width so no upsizer is needed
		parameter integer C_M_AXIS_TDATA_WIDTH	= 64,
		// Kept for compatibility with the IP packager's parameter list; unused
		parameter integer C_M_START_COUNT	= 32
	)
	(
		// Users to add ports here

		// Timestamp stream from ts_engine
		input  wire [63:0] ts_data,
		input  wire        ts_valid,
		input  wire        ts_last,
		output wire        ts_ready,

		// User ports ends
		// Do not modify the ports beyond this line

		// Global ports
		input wire  M_AXIS_ACLK,
		//
		input wire  M_AXIS_ARESETN,
		// Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted.
		output wire  M_AXIS_TVALID,
		// TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
		output wire [C_M_AXIS_TDATA_WIDTH-1 : 0] M_AXIS_TDATA,
		// TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
		output wire [(C_M_AXIS_TDATA_WIDTH/8)-1 : 0] M_AXIS_TSTRB,
		// TLAST indicates the boundary of a packet.
		output wire  M_AXIS_TLAST,
		// TREADY indicates that the slave can accept a transfer in the current cycle.
		input wire  M_AXIS_TREADY
	);

	//========================================================================
	// Datapath passthrough
	//
	// Backpressure propagates all the way back to ts_engine: TREADY low ->
	// ts_ready low -> FIFO stops popping -> entries pile up until the FIFO is
	// full -> ts_engine asserts overflow and counts the drops.
	// This chain is what guarantees "anything dropped is recorded", the basis
	// for gap-free being verifiable.
	//========================================================================
	assign M_AXIS_TDATA  = ts_data;
	assign M_AXIS_TVALID = ts_valid;
	assign M_AXIS_TLAST  = ts_last;
	assign M_AXIS_TSTRB  = {(C_M_AXIS_TDATA_WIDTH/8){1'b1}};
	assign ts_ready      = M_AXIS_TREADY;

	endmodule
