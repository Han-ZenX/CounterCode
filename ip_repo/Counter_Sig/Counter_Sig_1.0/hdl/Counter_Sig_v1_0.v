
`timescale 1 ns / 1 ps

	module Counter_Sig_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S_AXI
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		parameter integer C_S_AXI_ADDR_WIDTH	= 9
	)
	(
		// Users to add ports here
        input              CTR_STATUS0,
        input              CTR_STATUS1,
        input              CTR_START_T,
        
        output             CTR_PRIREF,
        output             CTR_REF_CLOCK,
        output             CTR_OCXO,
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
		input wire  s_axi_rready
	);
	
	wire CTR_STATUS0_SIG;
	wire CTR_STATUS1_SIG;
	wire CTR_START_T_SIG;

	wire CTR_PRIREF_SIG;
	wire CTR_REF_CLOCK_SIG;
	wire CTR_OCXO_SIG;
	
// Instantiation of Axi Bus Interface S_AXI
	Counter_Sig_v1_0_S_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH)
	) Counter_Sig_v1_0_S_AXI_inst (
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
		
		.CTR_STATUS0_SIG  (CTR_STATUS0_SIG),
        .CTR_STATUS1_SIG  (CTR_STATUS1_SIG),
        .CTR_START_T_SIG  (CTR_START_T_SIG),
        
        .CTR_PRIREF_SIG   (CTR_PRIREF_SIG),
        .CTR_REF_CLOCK_SIG(CTR_REF_CLOCK_SIG),
        .CTR_OCXO_SIG     (CTR_OCXO_SIG)
	);

	// Add user logic here

	signal u_signal(
    .CLK   (s_axi_aclk)  ,   // System clock, 100MHz
    .RESETN (s_axi_aresetn) ,
    
    .CTR_STATUS0 (CTR_STATUS0),
    .CTR_STATUS1 (CTR_STATUS1),
    .CTR_START_T (CTR_START_T),
    
    .CTR_STATUS0_SIG (CTR_STATUS0_SIG),
    .CTR_STATUS1_SIG (CTR_STATUS1_SIG),
    .CTR_START_T_SIG (CTR_START_T_SIG),
	
	.CTR_PRIREF_SIG (CTR_PRIREF_SIG),
    .CTR_REF_CLOCK_SIG (CTR_REF_CLOCK_SIG),
    .CTR_OCXO_SIG (CTR_OCXO_SIG),
	
	.CTR_PRIREF (CTR_PRIREF),
    .CTR_REF_CLOCK (CTR_REF_CLOCK),
    .CTR_OCXO (CTR_OCXO)
    ); 
	// User logic ends

	endmodule
