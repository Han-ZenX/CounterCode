// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug 14 22:25:47 2026
// Host        : DESKTOP-9L351U0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/CounterCode/top_cymometer.srcs/sources_1/bd/ps/ip/ps_Counter_Core_0_1/ps_Counter_Core_0_1_sim_netlist.v
// Design      : ps_Counter_Core_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_Counter_Core_0_1,Counter_Core_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "Counter_Core_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module ps_Counter_Core_0_1
   (clk_fs_p,
    clk_fs_n,
    clk_fx_p,
    clk_fx_n,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_aclk,
    m_axis_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_aclk,
    s_axi_aresetn);
  input clk_fs_p;
  input clk_fs_n;
  input clk_fx_p;
  input clk_fx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [63:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TSTRB" *) output [7:0]m_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ps_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_CLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET m_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ps_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [7:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [7:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 50, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN ps_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ps_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS_25" *) wire clk_fs_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS_25" *) wire clk_fs_p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS_25" *) wire clk_fx_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVDS_25" *) wire clk_fx_p;
  wire [63:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axi_aclk;
  wire [7:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [7:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axis_tstrb[7] = \<const1> ;
  assign m_axis_tstrb[6] = \<const1> ;
  assign m_axis_tstrb[5] = \<const1> ;
  assign m_axis_tstrb[4] = \<const1> ;
  assign m_axis_tstrb[3] = \<const1> ;
  assign m_axis_tstrb[2] = \<const1> ;
  assign m_axis_tstrb[1] = \<const1> ;
  assign m_axis_tstrb[0] = \<const1> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  ps_Counter_Core_0_1_Counter_Core_v1_0 inst
       (.axi_arready_reg(s_axi_arready),
        .axi_awready_reg(s_axi_awready),
        .axi_wready_reg(s_axi_wready),
        .clk_fs_n(clk_fs_n),
        .clk_fs_p(clk_fs_p),
        .clk_fx_n(clk_fx_n),
        .clk_fx_p(clk_fx_p),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .out_valid_reg(m_axis_tvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[5:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[5:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "Counter_Core_v1_0" *) 
module ps_Counter_Core_0_1_Counter_Core_v1_0
   (axi_awready_reg,
    axi_wready_reg,
    axi_arready_reg,
    m_axis_tlast,
    s_axi_bvalid,
    s_axi_rvalid,
    out_valid_reg,
    s_axi_rdata,
    m_axis_tdata,
    s_axi_aclk,
    clk_fs_p,
    clk_fs_n,
    clk_fx_p,
    clk_fx_n,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_aresetn,
    m_axis_tready,
    s_axi_awaddr,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_wstrb);
  output axi_awready_reg;
  output axi_wready_reg;
  output axi_arready_reg;
  output m_axis_tlast;
  output s_axi_bvalid;
  output s_axi_rvalid;
  output out_valid_reg;
  output [31:0]s_axi_rdata;
  output [63:0]m_axis_tdata;
  input s_axi_aclk;
  input clk_fs_p;
  input clk_fs_n;
  input clk_fx_p;
  input clk_fx_n;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_arvalid;
  input s_axi_rready;
  input s_axi_aresetn;
  input m_axis_tready;
  input [3:0]s_axi_awaddr;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_araddr;
  input [3:0]s_axi_wstrb;

  wire Counter_Core_v1_0_S_AXI_inst_n_5;
  wire Counter_Core_v1_0_S_AXI_inst_n_6;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_wready_reg;
  wire clk_fs;
  wire clk_fs_ibuf;
  wire clk_fs_n;
  wire clk_fs_p;
  wire clk_fx;
  wire clk_fx_ibuf;
  wire clk_fx_n;
  wire clk_fx_p;
  wire counter_core_inst_n_51;
  wire counter_core_inst_n_52;
  wire counter_core_inst_n_53;
  wire counter_core_inst_n_54;
  wire counter_core_inst_n_55;
  wire counter_core_inst_n_56;
  wire counter_core_inst_n_57;
  wire counter_core_inst_n_58;
  wire counter_core_inst_n_59;
  wire counter_core_inst_n_60;
  wire counter_core_inst_n_61;
  wire counter_core_inst_n_62;
  wire counter_core_inst_n_63;
  wire counter_core_inst_n_64;
  wire counter_core_inst_n_65;
  wire counter_core_inst_n_66;
  wire counter_core_inst_n_67;
  wire counter_core_inst_n_68;
  wire counter_core_inst_n_69;
  wire counter_core_inst_n_70;
  wire counter_core_inst_n_71;
  wire counter_core_inst_n_72;
  wire counter_core_inst_n_73;
  wire counter_core_inst_n_74;
  wire counter_core_inst_n_75;
  wire counter_core_inst_n_76;
  wire counter_core_inst_n_77;
  wire counter_core_inst_n_78;
  wire counter_core_inst_n_79;
  wire counter_core_inst_n_80;
  wire counter_core_inst_n_81;
  wire counter_core_inst_n_82;
  wire counter_core_inst_n_83;
  wire [31:0]edge_skip;
  wire eq_busy;
  wire eq_done;
  wire eq_start;
  wire [12:0]fifo_level;
  wire [31:0]gate_len;
  wire [63:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire out_valid_reg;
  wire overflow;
  wire [15:0]pkt_len;
  wire [15:1]pop_is_last1;
  wire [4:4]reg_ctrl;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [1:0]sel0;
  wire [5:0]tdc_test_fall;
  wire [5:0]tdc_test_rise;
  wire [31:0]ts_count;
  wire ts_en;
  wire ts_running;
  wire \u_ts_engine/pkt_bounded__14 ;
  wire \u_ts_engine/pop_is_last ;
  wire \u_ts_engine/pop_is_last0 ;

  ps_Counter_Core_0_1_Counter_Core_v1_0_S_AXI Counter_Core_v1_0_S_AXI_inst
       (.CO(\u_ts_engine/pop_is_last0 ),
        .Q(tdc_test_rise),
        .\axi_araddr_reg[3]_0 (sel0),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .\axi_rdata_reg[0]_0 (counter_core_inst_n_51),
        .\axi_rdata_reg[10]_0 (counter_core_inst_n_62),
        .\axi_rdata_reg[11]_0 (counter_core_inst_n_63),
        .\axi_rdata_reg[12]_0 (counter_core_inst_n_64),
        .\axi_rdata_reg[13]_0 (tdc_test_fall),
        .\axi_rdata_reg[13]_1 (counter_core_inst_n_65),
        .\axi_rdata_reg[14]_0 (counter_core_inst_n_66),
        .\axi_rdata_reg[15]_0 (counter_core_inst_n_67),
        .\axi_rdata_reg[16]_0 (counter_core_inst_n_68),
        .\axi_rdata_reg[17]_0 (counter_core_inst_n_69),
        .\axi_rdata_reg[18]_0 (counter_core_inst_n_70),
        .\axi_rdata_reg[19]_0 (counter_core_inst_n_71),
        .\axi_rdata_reg[1]_0 (counter_core_inst_n_52),
        .\axi_rdata_reg[1]_1 (overflow),
        .\axi_rdata_reg[20]_0 (counter_core_inst_n_72),
        .\axi_rdata_reg[21]_0 (counter_core_inst_n_73),
        .\axi_rdata_reg[22]_0 (counter_core_inst_n_74),
        .\axi_rdata_reg[23]_0 (counter_core_inst_n_75),
        .\axi_rdata_reg[24]_0 (counter_core_inst_n_76),
        .\axi_rdata_reg[25]_0 (counter_core_inst_n_77),
        .\axi_rdata_reg[26]_0 (counter_core_inst_n_78),
        .\axi_rdata_reg[27]_0 (counter_core_inst_n_79),
        .\axi_rdata_reg[28]_0 (counter_core_inst_n_80),
        .\axi_rdata_reg[29]_0 (counter_core_inst_n_81),
        .\axi_rdata_reg[2]_0 (counter_core_inst_n_53),
        .\axi_rdata_reg[2]_1 (eq_done),
        .\axi_rdata_reg[30]_0 (counter_core_inst_n_82),
        .\axi_rdata_reg[31]_0 (counter_core_inst_n_83),
        .\axi_rdata_reg[3]_0 (counter_core_inst_n_54),
        .\axi_rdata_reg[3]_1 (eq_busy),
        .\axi_rdata_reg[4]_0 (counter_core_inst_n_56),
        .\axi_rdata_reg[4]_1 (counter_core_inst_n_55),
        .\axi_rdata_reg[5]_0 (counter_core_inst_n_57),
        .\axi_rdata_reg[6]_0 (counter_core_inst_n_58),
        .\axi_rdata_reg[7]_0 (counter_core_inst_n_59),
        .\axi_rdata_reg[8]_0 (counter_core_inst_n_60),
        .\axi_rdata_reg[9]_0 (counter_core_inst_n_61),
        .axi_wready_reg_0(axi_wready_reg),
        .dst_cnt({ts_count[31:5],ts_count[3:0]}),
        .fifo_level(fifo_level),
        .out(ts_running),
        .pkt_bounded__14(\u_ts_engine/pkt_bounded__14 ),
        .pop_is_last(\u_ts_engine/pop_is_last ),
        .pop_is_last1(pop_is_last1),
        .\reg_ctrl_reg[1]_0 (Counter_Core_v1_0_S_AXI_inst_n_6),
        .\reg_ctrl_reg[3]_0 (Counter_Core_v1_0_S_AXI_inst_n_5),
        .\reg_ctrl_reg[4]_0 ({reg_ctrl,eq_start,ts_en}),
        .\reg_edge_skip_reg[31]_0 (edge_skip),
        .\reg_gate_len_reg[31]_0 (gate_len),
        .\reg_pkt_len_reg[15]_0 (pkt_len),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG bufg_fs
       (.I(clk_fs_ibuf),
        .O(clk_fs));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG bufg_fx
       (.I(clk_fx_ibuf),
        .O(clk_fx));
  ps_Counter_Core_0_1_counter_core counter_core_inst
       (.CLK(clk_fs),
        .CO(\u_ts_engine/pop_is_last0 ),
        .D(edge_skip),
        .Q(tdc_test_rise),
        .\axi_araddr_reg[3] (counter_core_inst_n_55),
        .\axi_rdata_reg[4] ({reg_ctrl,eq_start,ts_en}),
        .\axi_rdata_reg[4]_0 (sel0),
        .clk_fx(clk_fx),
        .dst_cnt({ts_count[31:5],ts_count[3:0]}),
        .\eq_test_reg[0] (counter_core_inst_n_51),
        .\eq_test_reg[10] (counter_core_inst_n_62),
        .\eq_test_reg[11] (counter_core_inst_n_63),
        .\eq_test_reg[12] (counter_core_inst_n_64),
        .\eq_test_reg[13] (counter_core_inst_n_65),
        .\eq_test_reg[14] (counter_core_inst_n_66),
        .\eq_test_reg[15] (counter_core_inst_n_67),
        .\eq_test_reg[16] (counter_core_inst_n_68),
        .\eq_test_reg[17] (counter_core_inst_n_69),
        .\eq_test_reg[18] (counter_core_inst_n_70),
        .\eq_test_reg[19] (counter_core_inst_n_71),
        .\eq_test_reg[1] (counter_core_inst_n_52),
        .\eq_test_reg[20] (counter_core_inst_n_72),
        .\eq_test_reg[21] (counter_core_inst_n_73),
        .\eq_test_reg[22] (counter_core_inst_n_74),
        .\eq_test_reg[23] (counter_core_inst_n_75),
        .\eq_test_reg[24] (counter_core_inst_n_76),
        .\eq_test_reg[25] (counter_core_inst_n_77),
        .\eq_test_reg[26] (counter_core_inst_n_78),
        .\eq_test_reg[27] (counter_core_inst_n_79),
        .\eq_test_reg[28] (counter_core_inst_n_80),
        .\eq_test_reg[29] (counter_core_inst_n_81),
        .\eq_test_reg[2] (counter_core_inst_n_53),
        .\eq_test_reg[30] (counter_core_inst_n_82),
        .\eq_test_reg[31] (counter_core_inst_n_83),
        .\eq_test_reg[3] (counter_core_inst_n_54),
        .\eq_test_reg[4] (counter_core_inst_n_56),
        .\eq_test_reg[5] (counter_core_inst_n_57),
        .\eq_test_reg[6] (counter_core_inst_n_58),
        .\eq_test_reg[7] (counter_core_inst_n_59),
        .\eq_test_reg[8] (counter_core_inst_n_60),
        .\eq_test_reg[9] (counter_core_inst_n_61),
        .fifo_level(fifo_level),
        .\gate_cnt_reg[31] (gate_len),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .out(ts_running),
        .out_valid_reg(out_valid_reg),
        .pkt_bounded__14(\u_ts_engine/pkt_bounded__14 ),
        .pop_is_last(\u_ts_engine/pop_is_last ),
        .pop_is_last1(pop_is_last1),
        .pop_limit_hit0_carry__0(pkt_len),
        .s_axi_aclk(s_axi_aclk),
        .\sync_reg[0] (Counter_Core_v1_0_S_AXI_inst_n_6),
        .\sync_reg[1] (overflow),
        .\sync_reg[1]_0 (eq_done),
        .\sync_reg[1]_1 (eq_busy),
        .\sync_reg[2] (Counter_Core_v1_0_S_AXI_inst_n_5),
        .\tdc_test_fall_reg[5] (tdc_test_fall));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS ibufds_fs
       (.I(clk_fs_p),
        .IB(clk_fs_n),
        .O(clk_fs_ibuf));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS ibufds_fx
       (.I(clk_fx_p),
        .IB(clk_fx_n),
        .O(clk_fx_ibuf));
endmodule

(* ORIG_REF_NAME = "Counter_Core_v1_0_S_AXI" *) 
module ps_Counter_Core_0_1_Counter_Core_v1_0_S_AXI
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s_axi_bvalid,
    s_axi_rvalid,
    \reg_ctrl_reg[3]_0 ,
    \reg_ctrl_reg[1]_0 ,
    \axi_araddr_reg[3]_0 ,
    \reg_pkt_len_reg[15]_0 ,
    pop_is_last,
    pkt_bounded__14,
    \reg_edge_skip_reg[31]_0 ,
    \reg_ctrl_reg[4]_0 ,
    pop_is_last1,
    \reg_gate_len_reg[31]_0 ,
    s_axi_rdata,
    s_axi_aclk,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_aresetn,
    Q,
    fifo_level,
    \axi_rdata_reg[13]_0 ,
    CO,
    \axi_rdata_reg[0]_0 ,
    dst_cnt,
    out,
    \axi_rdata_reg[1]_0 ,
    \axi_rdata_reg[1]_1 ,
    \axi_rdata_reg[2]_0 ,
    \axi_rdata_reg[2]_1 ,
    \axi_rdata_reg[3]_0 ,
    \axi_rdata_reg[3]_1 ,
    \axi_rdata_reg[4]_0 ,
    \axi_rdata_reg[4]_1 ,
    \axi_rdata_reg[5]_0 ,
    \axi_rdata_reg[6]_0 ,
    \axi_rdata_reg[7]_0 ,
    \axi_rdata_reg[8]_0 ,
    \axi_rdata_reg[9]_0 ,
    \axi_rdata_reg[10]_0 ,
    \axi_rdata_reg[11]_0 ,
    \axi_rdata_reg[12]_0 ,
    \axi_rdata_reg[13]_1 ,
    \axi_rdata_reg[14]_0 ,
    \axi_rdata_reg[15]_0 ,
    \axi_rdata_reg[16]_0 ,
    \axi_rdata_reg[17]_0 ,
    \axi_rdata_reg[18]_0 ,
    \axi_rdata_reg[19]_0 ,
    \axi_rdata_reg[20]_0 ,
    \axi_rdata_reg[21]_0 ,
    \axi_rdata_reg[22]_0 ,
    \axi_rdata_reg[23]_0 ,
    \axi_rdata_reg[24]_0 ,
    \axi_rdata_reg[25]_0 ,
    \axi_rdata_reg[26]_0 ,
    \axi_rdata_reg[27]_0 ,
    \axi_rdata_reg[28]_0 ,
    \axi_rdata_reg[29]_0 ,
    \axi_rdata_reg[30]_0 ,
    \axi_rdata_reg[31]_0 ,
    s_axi_awaddr,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_wstrb);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s_axi_bvalid;
  output s_axi_rvalid;
  output \reg_ctrl_reg[3]_0 ;
  output \reg_ctrl_reg[1]_0 ;
  output [1:0]\axi_araddr_reg[3]_0 ;
  output [15:0]\reg_pkt_len_reg[15]_0 ;
  output pop_is_last;
  output pkt_bounded__14;
  output [31:0]\reg_edge_skip_reg[31]_0 ;
  output [2:0]\reg_ctrl_reg[4]_0 ;
  output [14:0]pop_is_last1;
  output [31:0]\reg_gate_len_reg[31]_0 ;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_arvalid;
  input s_axi_rready;
  input s_axi_aresetn;
  input [5:0]Q;
  input [12:0]fifo_level;
  input [5:0]\axi_rdata_reg[13]_0 ;
  input [0:0]CO;
  input \axi_rdata_reg[0]_0 ;
  input [30:0]dst_cnt;
  input [0:0]out;
  input \axi_rdata_reg[1]_0 ;
  input [0:0]\axi_rdata_reg[1]_1 ;
  input \axi_rdata_reg[2]_0 ;
  input [0:0]\axi_rdata_reg[2]_1 ;
  input \axi_rdata_reg[3]_0 ;
  input [0:0]\axi_rdata_reg[3]_1 ;
  input \axi_rdata_reg[4]_0 ;
  input \axi_rdata_reg[4]_1 ;
  input \axi_rdata_reg[5]_0 ;
  input \axi_rdata_reg[6]_0 ;
  input \axi_rdata_reg[7]_0 ;
  input \axi_rdata_reg[8]_0 ;
  input \axi_rdata_reg[9]_0 ;
  input \axi_rdata_reg[10]_0 ;
  input \axi_rdata_reg[11]_0 ;
  input \axi_rdata_reg[12]_0 ;
  input \axi_rdata_reg[13]_1 ;
  input \axi_rdata_reg[14]_0 ;
  input \axi_rdata_reg[15]_0 ;
  input \axi_rdata_reg[16]_0 ;
  input \axi_rdata_reg[17]_0 ;
  input \axi_rdata_reg[18]_0 ;
  input \axi_rdata_reg[19]_0 ;
  input \axi_rdata_reg[20]_0 ;
  input \axi_rdata_reg[21]_0 ;
  input \axi_rdata_reg[22]_0 ;
  input \axi_rdata_reg[23]_0 ;
  input \axi_rdata_reg[24]_0 ;
  input \axi_rdata_reg[25]_0 ;
  input \axi_rdata_reg[26]_0 ;
  input \axi_rdata_reg[27]_0 ;
  input \axi_rdata_reg[28]_0 ;
  input \axi_rdata_reg[29]_0 ;
  input \axi_rdata_reg[30]_0 ;
  input \axi_rdata_reg[31]_0 ;
  input [3:0]s_axi_awaddr;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_araddr;
  input [3:0]s_axi_wstrb;

  wire [0:0]CO;
  wire [5:0]Q;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [1:0]\axi_araddr_reg[3]_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire \axi_rdata_reg[0]_0 ;
  wire \axi_rdata_reg[10]_0 ;
  wire \axi_rdata_reg[11]_0 ;
  wire \axi_rdata_reg[12]_0 ;
  wire [5:0]\axi_rdata_reg[13]_0 ;
  wire \axi_rdata_reg[13]_1 ;
  wire \axi_rdata_reg[14]_0 ;
  wire \axi_rdata_reg[14]_i_2_n_0 ;
  wire \axi_rdata_reg[15]_0 ;
  wire \axi_rdata_reg[15]_i_2_n_0 ;
  wire \axi_rdata_reg[16]_0 ;
  wire \axi_rdata_reg[16]_i_2_n_0 ;
  wire \axi_rdata_reg[17]_0 ;
  wire \axi_rdata_reg[17]_i_2_n_0 ;
  wire \axi_rdata_reg[18]_0 ;
  wire \axi_rdata_reg[18]_i_2_n_0 ;
  wire \axi_rdata_reg[19]_0 ;
  wire \axi_rdata_reg[19]_i_2_n_0 ;
  wire \axi_rdata_reg[1]_0 ;
  wire [0:0]\axi_rdata_reg[1]_1 ;
  wire \axi_rdata_reg[20]_0 ;
  wire \axi_rdata_reg[20]_i_2_n_0 ;
  wire \axi_rdata_reg[21]_0 ;
  wire \axi_rdata_reg[21]_i_2_n_0 ;
  wire \axi_rdata_reg[22]_0 ;
  wire \axi_rdata_reg[22]_i_2_n_0 ;
  wire \axi_rdata_reg[23]_0 ;
  wire \axi_rdata_reg[23]_i_2_n_0 ;
  wire \axi_rdata_reg[24]_0 ;
  wire \axi_rdata_reg[24]_i_2_n_0 ;
  wire \axi_rdata_reg[25]_0 ;
  wire \axi_rdata_reg[25]_i_2_n_0 ;
  wire \axi_rdata_reg[26]_0 ;
  wire \axi_rdata_reg[26]_i_2_n_0 ;
  wire \axi_rdata_reg[27]_0 ;
  wire \axi_rdata_reg[27]_i_2_n_0 ;
  wire \axi_rdata_reg[28]_0 ;
  wire \axi_rdata_reg[28]_i_2_n_0 ;
  wire \axi_rdata_reg[29]_0 ;
  wire \axi_rdata_reg[29]_i_2_n_0 ;
  wire \axi_rdata_reg[2]_0 ;
  wire [0:0]\axi_rdata_reg[2]_1 ;
  wire \axi_rdata_reg[30]_0 ;
  wire \axi_rdata_reg[30]_i_2_n_0 ;
  wire \axi_rdata_reg[31]_0 ;
  wire \axi_rdata_reg[31]_i_2_n_0 ;
  wire \axi_rdata_reg[3]_0 ;
  wire [0:0]\axi_rdata_reg[3]_1 ;
  wire \axi_rdata_reg[4]_0 ;
  wire \axi_rdata_reg[4]_1 ;
  wire \axi_rdata_reg[5]_0 ;
  wire \axi_rdata_reg[6]_0 ;
  wire \axi_rdata_reg[7]_0 ;
  wire \axi_rdata_reg[8]_0 ;
  wire \axi_rdata_reg[9]_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire [30:0]dst_cnt;
  wire [12:0]fifo_level;
  wire fifo_mem_reg_7_i_11_n_0;
  wire fifo_mem_reg_7_i_12_n_0;
  wire fifo_mem_reg_7_i_13_n_0;
  wire [0:0]out;
  wire p_0_in;
  wire [31:0]p_1_in;
  wire pkt_bounded__14;
  wire pop_is_last;
  wire pop_is_last0_carry__0_i_3_n_2;
  wire pop_is_last0_carry__0_i_3_n_3;
  wire pop_is_last0_carry__0_i_4_n_0;
  wire pop_is_last0_carry__0_i_5_n_0;
  wire pop_is_last0_carry__0_i_6_n_0;
  wire pop_is_last0_carry_i_10_n_0;
  wire pop_is_last0_carry_i_11_n_0;
  wire pop_is_last0_carry_i_12_n_0;
  wire pop_is_last0_carry_i_13_n_0;
  wire pop_is_last0_carry_i_14_n_0;
  wire pop_is_last0_carry_i_15_n_0;
  wire pop_is_last0_carry_i_16_n_0;
  wire pop_is_last0_carry_i_17_n_0;
  wire pop_is_last0_carry_i_18_n_0;
  wire pop_is_last0_carry_i_19_n_0;
  wire pop_is_last0_carry_i_5_n_0;
  wire pop_is_last0_carry_i_5_n_1;
  wire pop_is_last0_carry_i_5_n_2;
  wire pop_is_last0_carry_i_5_n_3;
  wire pop_is_last0_carry_i_6_n_0;
  wire pop_is_last0_carry_i_6_n_1;
  wire pop_is_last0_carry_i_6_n_2;
  wire pop_is_last0_carry_i_6_n_3;
  wire pop_is_last0_carry_i_7_n_0;
  wire pop_is_last0_carry_i_7_n_1;
  wire pop_is_last0_carry_i_7_n_2;
  wire pop_is_last0_carry_i_7_n_3;
  wire pop_is_last0_carry_i_8_n_0;
  wire pop_is_last0_carry_i_9_n_0;
  wire [14:0]pop_is_last1;
  wire [31:5]reg_ctrl;
  wire \reg_ctrl_reg[1]_0 ;
  wire \reg_ctrl_reg[3]_0 ;
  wire [2:0]\reg_ctrl_reg[4]_0 ;
  wire [31:0]reg_data_out;
  wire \reg_edge_skip[15]_i_1_n_0 ;
  wire \reg_edge_skip[23]_i_1_n_0 ;
  wire \reg_edge_skip[31]_i_1_n_0 ;
  wire \reg_edge_skip[7]_i_1_n_0 ;
  wire [31:0]\reg_edge_skip_reg[31]_0 ;
  wire \reg_gate_len[15]_i_1_n_0 ;
  wire \reg_gate_len[23]_i_1_n_0 ;
  wire \reg_gate_len[31]_i_1_n_0 ;
  wire \reg_gate_len[7]_i_1_n_0 ;
  wire [31:0]\reg_gate_len_reg[31]_0 ;
  wire \reg_pkt_len[15]_i_1_n_0 ;
  wire \reg_pkt_len[23]_i_1_n_0 ;
  wire \reg_pkt_len[31]_i_1_n_0 ;
  wire \reg_pkt_len[7]_i_1_n_0 ;
  wire [15:0]\reg_pkt_len_reg[15]_0 ;
  wire \reg_pkt_len_reg_n_0_[16] ;
  wire \reg_pkt_len_reg_n_0_[17] ;
  wire \reg_pkt_len_reg_n_0_[18] ;
  wire \reg_pkt_len_reg_n_0_[19] ;
  wire \reg_pkt_len_reg_n_0_[20] ;
  wire \reg_pkt_len_reg_n_0_[21] ;
  wire \reg_pkt_len_reg_n_0_[22] ;
  wire \reg_pkt_len_reg_n_0_[23] ;
  wire \reg_pkt_len_reg_n_0_[24] ;
  wire \reg_pkt_len_reg_n_0_[25] ;
  wire \reg_pkt_len_reg_n_0_[26] ;
  wire \reg_pkt_len_reg_n_0_[27] ;
  wire \reg_pkt_len_reg_n_0_[28] ;
  wire \reg_pkt_len_reg_n_0_[29] ;
  wire \reg_pkt_len_reg_n_0_[30] ;
  wire \reg_pkt_len_reg_n_0_[31] ;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [3:2]sel0;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire soft_rst;
  wire ts_rst;
  wire [3:0]wr_index;
  wire [3:2]NLW_pop_is_last0_carry__0_i_3_CO_UNCONNECTED;
  wire [3:3]NLW_pop_is_last0_carry__0_i_3_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(axi_awready_reg_0),
        .I3(s_axi_wvalid),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(p_0_in));
  FDRE \axi_araddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[0]),
        .Q(\axi_araddr_reg[3]_0 [0]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[1]),
        .Q(\axi_araddr_reg[3]_0 [1]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[2]),
        .Q(sel0[2]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[3]),
        .Q(sel0[3]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[0]),
        .Q(wr_index[0]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[1]),
        .Q(wr_index[1]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[2]),
        .Q(wr_index[2]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[3]),
        .Q(wr_index[3]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s_axi_aresetn),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s_axi_wvalid),
        .I1(axi_awready_reg_0),
        .I2(aw_en_reg_n_0),
        .I3(s_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[0]_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[0]_i_4_n_0 ),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \axi_rdata[0]_i_2 
       (.I0(Q[0]),
        .I1(\axi_araddr_reg[3]_0 [0]),
        .I2(fifo_level[0]),
        .I3(\axi_araddr_reg[3]_0 [1]),
        .I4(\reg_pkt_len_reg[15]_0 [0]),
        .I5(sel0[2]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_4 
       (.I0(dst_cnt[0]),
        .I1(\reg_edge_skip_reg[31]_0 [0]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(out),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .I5(\reg_ctrl_reg[4]_0 [0]),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[10]_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[10]_i_4_n_0 ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \axi_rdata[10]_i_2 
       (.I0(\axi_rdata_reg[13]_0 [2]),
        .I1(\axi_araddr_reg[3]_0 [0]),
        .I2(fifo_level[10]),
        .I3(\axi_araddr_reg[3]_0 [1]),
        .I4(\reg_pkt_len_reg[15]_0 [10]),
        .I5(sel0[2]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[10]_i_4 
       (.I0(dst_cnt[9]),
        .I1(\reg_edge_skip_reg[31]_0 [10]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[10]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[11]_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[11]_i_4_n_0 ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \axi_rdata[11]_i_2 
       (.I0(\axi_rdata_reg[13]_0 [3]),
        .I1(\axi_araddr_reg[3]_0 [0]),
        .I2(fifo_level[11]),
        .I3(\axi_araddr_reg[3]_0 [1]),
        .I4(\reg_pkt_len_reg[15]_0 [11]),
        .I5(sel0[2]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[11]_i_4 
       (.I0(dst_cnt[10]),
        .I1(\reg_edge_skip_reg[31]_0 [11]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[11]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[12]_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[12]_i_4_n_0 ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \axi_rdata[12]_i_2 
       (.I0(\axi_rdata_reg[13]_0 [4]),
        .I1(\axi_araddr_reg[3]_0 [0]),
        .I2(fifo_level[12]),
        .I3(\axi_araddr_reg[3]_0 [1]),
        .I4(\reg_pkt_len_reg[15]_0 [12]),
        .I5(sel0[2]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[12]_i_4 
       (.I0(dst_cnt[11]),
        .I1(\reg_edge_skip_reg[31]_0 [12]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[12]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[13]_1 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[13]_i_4_n_0 ),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'h0000A404)) 
    \axi_rdata[13]_i_2 
       (.I0(\axi_araddr_reg[3]_0 [0]),
        .I1(\axi_rdata_reg[13]_0 [5]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(\reg_pkt_len_reg[15]_0 [13]),
        .I4(sel0[2]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[13]_i_4 
       (.I0(dst_cnt[12]),
        .I1(\reg_edge_skip_reg[31]_0 [13]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[13]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0080FFFF00800000)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_araddr_reg[3]_0 [0]),
        .I1(\reg_pkt_len_reg[15]_0 [14]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[14]_i_2_n_0 ),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[14]_i_3 
       (.I0(dst_cnt[13]),
        .I1(\reg_edge_skip_reg[31]_0 [14]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[14]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080FFFF00800000)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_araddr_reg[3]_0 [0]),
        .I1(\reg_pkt_len_reg[15]_0 [15]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[15]_i_2_n_0 ),
        .O(reg_data_out[15]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[15]_i_3 
       (.I0(dst_cnt[14]),
        .I1(\reg_edge_skip_reg[31]_0 [15]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[15]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00B0FFFF00B00000)) 
    \axi_rdata[16]_i_1 
       (.I0(\reg_pkt_len_reg_n_0_[16] ),
        .I1(\axi_araddr_reg[3]_0 [0]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[16]_i_2_n_0 ),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[16]_i_3 
       (.I0(dst_cnt[15]),
        .I1(\reg_edge_skip_reg[31]_0 [16]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[16]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00B0FFFF00B00000)) 
    \axi_rdata[17]_i_1 
       (.I0(\reg_pkt_len_reg_n_0_[17] ),
        .I1(\axi_araddr_reg[3]_0 [0]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[17]_i_2_n_0 ),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[17]_i_3 
       (.I0(dst_cnt[16]),
        .I1(\reg_edge_skip_reg[31]_0 [17]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[17]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080FFFF00800000)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_araddr_reg[3]_0 [0]),
        .I1(\reg_pkt_len_reg_n_0_[18] ),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[18]_i_2_n_0 ),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[18]_i_3 
       (.I0(dst_cnt[17]),
        .I1(\reg_edge_skip_reg[31]_0 [18]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[18]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080FFFF00800000)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_araddr_reg[3]_0 [0]),
        .I1(\reg_pkt_len_reg_n_0_[19] ),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[19]_i_2_n_0 ),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[19]_i_3 
       (.I0(dst_cnt[18]),
        .I1(\reg_edge_skip_reg[31]_0 [19]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[19]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[1]_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[1]_i_4_n_0 ),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \axi_rdata[1]_i_2 
       (.I0(Q[1]),
        .I1(\axi_araddr_reg[3]_0 [0]),
        .I2(fifo_level[1]),
        .I3(\axi_araddr_reg[3]_0 [1]),
        .I4(\reg_pkt_len_reg[15]_0 [1]),
        .I5(sel0[2]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_4 
       (.I0(dst_cnt[1]),
        .I1(\reg_edge_skip_reg[31]_0 [1]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(\axi_rdata_reg[1]_1 ),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .I5(ts_rst),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0080FFFF00800000)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_araddr_reg[3]_0 [0]),
        .I1(\reg_pkt_len_reg_n_0_[20] ),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[20]_i_2_n_0 ),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[20]_i_3 
       (.I0(dst_cnt[19]),
        .I1(\reg_edge_skip_reg[31]_0 [20]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[20]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080FFFF00800000)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_araddr_reg[3]_0 [0]),
        .I1(\reg_pkt_len_reg_n_0_[21] ),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[21]_i_2_n_0 ),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[21]_i_3 
       (.I0(dst_cnt[20]),
        .I1(\reg_edge_skip_reg[31]_0 [21]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[21]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00B0FFFF00B00000)) 
    \axi_rdata[22]_i_1 
       (.I0(\reg_pkt_len_reg_n_0_[22] ),
        .I1(\axi_araddr_reg[3]_0 [0]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[22]_i_2_n_0 ),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[22]_i_3 
       (.I0(dst_cnt[21]),
        .I1(\reg_edge_skip_reg[31]_0 [22]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[22]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080FFFF00800000)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_araddr_reg[3]_0 [0]),
        .I1(\reg_pkt_len_reg_n_0_[23] ),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[23]_i_2_n_0 ),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[23]_i_3 
       (.I0(dst_cnt[22]),
        .I1(\reg_edge_skip_reg[31]_0 [23]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[23]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00B0FFFF00B00000)) 
    \axi_rdata[24]_i_1 
       (.I0(\reg_pkt_len_reg_n_0_[24] ),
        .I1(\axi_araddr_reg[3]_0 [0]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[24]_i_2_n_0 ),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[24]_i_3 
       (.I0(dst_cnt[23]),
        .I1(\reg_edge_skip_reg[31]_0 [24]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[24]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00B0FFFF00B00000)) 
    \axi_rdata[25]_i_1 
       (.I0(\reg_pkt_len_reg_n_0_[25] ),
        .I1(\axi_araddr_reg[3]_0 [0]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[25]_i_2_n_0 ),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[25]_i_3 
       (.I0(dst_cnt[24]),
        .I1(\reg_edge_skip_reg[31]_0 [25]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[25]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080FFFF00800000)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_araddr_reg[3]_0 [0]),
        .I1(\reg_pkt_len_reg_n_0_[26] ),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[26]_i_2_n_0 ),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[26]_i_3 
       (.I0(dst_cnt[25]),
        .I1(\reg_edge_skip_reg[31]_0 [26]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[26]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080FFFF00800000)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_araddr_reg[3]_0 [0]),
        .I1(\reg_pkt_len_reg_n_0_[27] ),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[27]_i_2_n_0 ),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[27]_i_3 
       (.I0(dst_cnt[26]),
        .I1(\reg_edge_skip_reg[31]_0 [27]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[27]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080FFFF00800000)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_araddr_reg[3]_0 [0]),
        .I1(\reg_pkt_len_reg_n_0_[28] ),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[28]_i_2_n_0 ),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[28]_i_3 
       (.I0(dst_cnt[27]),
        .I1(\reg_edge_skip_reg[31]_0 [28]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[28]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080FFFF00800000)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_araddr_reg[3]_0 [0]),
        .I1(\reg_pkt_len_reg_n_0_[29] ),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[29]_i_2_n_0 ),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[29]_i_3 
       (.I0(dst_cnt[28]),
        .I1(\reg_edge_skip_reg[31]_0 [29]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[29]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[2]_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[2]_i_4_n_0 ),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \axi_rdata[2]_i_2 
       (.I0(Q[2]),
        .I1(\axi_araddr_reg[3]_0 [0]),
        .I2(fifo_level[2]),
        .I3(\axi_araddr_reg[3]_0 [1]),
        .I4(\reg_pkt_len_reg[15]_0 [2]),
        .I5(sel0[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_4 
       (.I0(dst_cnt[2]),
        .I1(\reg_edge_skip_reg[31]_0 [2]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(\axi_rdata_reg[2]_1 ),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .I5(\reg_ctrl_reg[4]_0 [1]),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00B0FFFF00B00000)) 
    \axi_rdata[30]_i_1 
       (.I0(\reg_pkt_len_reg_n_0_[30] ),
        .I1(\axi_araddr_reg[3]_0 [0]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[30]_i_2_n_0 ),
        .O(reg_data_out[30]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[30]_i_3 
       (.I0(dst_cnt[29]),
        .I1(\reg_edge_skip_reg[31]_0 [30]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[30]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080FFFF00800000)) 
    \axi_rdata[31]_i_1 
       (.I0(\axi_araddr_reg[3]_0 [0]),
        .I1(\reg_pkt_len_reg_n_0_[31] ),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(sel0[2]),
        .I4(sel0[3]),
        .I5(\axi_rdata_reg[31]_i_2_n_0 ),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[31]_i_3 
       (.I0(dst_cnt[30]),
        .I1(\reg_edge_skip_reg[31]_0 [31]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[31]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[3]_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[3]_i_4_n_0 ),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \axi_rdata[3]_i_2 
       (.I0(Q[3]),
        .I1(\axi_araddr_reg[3]_0 [0]),
        .I2(fifo_level[3]),
        .I3(\axi_araddr_reg[3]_0 [1]),
        .I4(\reg_pkt_len_reg[15]_0 [3]),
        .I5(sel0[2]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_4 
       (.I0(dst_cnt[3]),
        .I1(\reg_edge_skip_reg[31]_0 [3]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(\axi_rdata_reg[3]_1 ),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .I5(soft_rst),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[4]_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata_reg[4]_1 ),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \axi_rdata[4]_i_2 
       (.I0(Q[4]),
        .I1(\axi_araddr_reg[3]_0 [0]),
        .I2(fifo_level[4]),
        .I3(\axi_araddr_reg[3]_0 [1]),
        .I4(\reg_pkt_len_reg[15]_0 [4]),
        .I5(sel0[2]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[5]_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[5]_i_4_n_0 ),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \axi_rdata[5]_i_2 
       (.I0(Q[5]),
        .I1(\axi_araddr_reg[3]_0 [0]),
        .I2(fifo_level[5]),
        .I3(\axi_araddr_reg[3]_0 [1]),
        .I4(\reg_pkt_len_reg[15]_0 [5]),
        .I5(sel0[2]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[5]_i_4 
       (.I0(dst_cnt[4]),
        .I1(\reg_edge_skip_reg[31]_0 [5]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[5]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[6]_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[6]_i_4_n_0 ),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'h0000C808)) 
    \axi_rdata[6]_i_2 
       (.I0(fifo_level[6]),
        .I1(\axi_araddr_reg[3]_0 [0]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(\reg_pkt_len_reg[15]_0 [6]),
        .I4(sel0[2]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[6]_i_4 
       (.I0(dst_cnt[5]),
        .I1(\reg_edge_skip_reg[31]_0 [6]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[6]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[7]_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[7]_i_4_n_0 ),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'h0000C808)) 
    \axi_rdata[7]_i_2 
       (.I0(fifo_level[7]),
        .I1(\axi_araddr_reg[3]_0 [0]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(\reg_pkt_len_reg[15]_0 [7]),
        .I4(sel0[2]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[7]_i_4 
       (.I0(dst_cnt[6]),
        .I1(\reg_edge_skip_reg[31]_0 [7]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[7]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[8]_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[8]_i_4_n_0 ),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'h00000000FFE233E2)) 
    \axi_rdata[8]_i_2 
       (.I0(\axi_rdata_reg[13]_0 [0]),
        .I1(\axi_araddr_reg[3]_0 [0]),
        .I2(fifo_level[8]),
        .I3(\axi_araddr_reg[3]_0 [1]),
        .I4(\reg_pkt_len_reg[15]_0 [8]),
        .I5(sel0[2]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[8]_i_4 
       (.I0(dst_cnt[7]),
        .I1(\reg_edge_skip_reg[31]_0 [8]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[8]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(sel0[3]),
        .I2(\axi_rdata_reg[9]_0 ),
        .I3(sel0[2]),
        .I4(\axi_rdata[9]_i_4_n_0 ),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'h00000000CCE200E2)) 
    \axi_rdata[9]_i_2 
       (.I0(\axi_rdata_reg[13]_0 [1]),
        .I1(\axi_araddr_reg[3]_0 [0]),
        .I2(fifo_level[9]),
        .I3(\axi_araddr_reg[3]_0 [1]),
        .I4(\reg_pkt_len_reg[15]_0 [9]),
        .I5(sel0[2]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[9]_i_4 
       (.I0(dst_cnt[8]),
        .I1(\reg_edge_skip_reg[31]_0 [9]),
        .I2(\axi_araddr_reg[3]_0 [1]),
        .I3(reg_ctrl[9]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_rdata[9]_i_4_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s_axi_rdata[0]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s_axi_rdata[10]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s_axi_rdata[11]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s_axi_rdata[12]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s_axi_rdata[13]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s_axi_rdata[14]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[14]_i_2 
       (.I0(\axi_rdata[14]_i_3_n_0 ),
        .I1(\axi_rdata_reg[14]_0 ),
        .O(\axi_rdata_reg[14]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s_axi_rdata[15]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[15]_i_2 
       (.I0(\axi_rdata[15]_i_3_n_0 ),
        .I1(\axi_rdata_reg[15]_0 ),
        .O(\axi_rdata_reg[15]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s_axi_rdata[16]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[16]_i_2 
       (.I0(\axi_rdata[16]_i_3_n_0 ),
        .I1(\axi_rdata_reg[16]_0 ),
        .O(\axi_rdata_reg[16]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s_axi_rdata[17]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[17]_i_2 
       (.I0(\axi_rdata[17]_i_3_n_0 ),
        .I1(\axi_rdata_reg[17]_0 ),
        .O(\axi_rdata_reg[17]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s_axi_rdata[18]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[18]_i_2 
       (.I0(\axi_rdata[18]_i_3_n_0 ),
        .I1(\axi_rdata_reg[18]_0 ),
        .O(\axi_rdata_reg[18]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s_axi_rdata[19]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[19]_i_2 
       (.I0(\axi_rdata[19]_i_3_n_0 ),
        .I1(\axi_rdata_reg[19]_0 ),
        .O(\axi_rdata_reg[19]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s_axi_rdata[1]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s_axi_rdata[20]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[20]_i_2 
       (.I0(\axi_rdata[20]_i_3_n_0 ),
        .I1(\axi_rdata_reg[20]_0 ),
        .O(\axi_rdata_reg[20]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s_axi_rdata[21]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[21]_i_2 
       (.I0(\axi_rdata[21]_i_3_n_0 ),
        .I1(\axi_rdata_reg[21]_0 ),
        .O(\axi_rdata_reg[21]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s_axi_rdata[22]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[22]_i_2 
       (.I0(\axi_rdata[22]_i_3_n_0 ),
        .I1(\axi_rdata_reg[22]_0 ),
        .O(\axi_rdata_reg[22]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s_axi_rdata[23]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[23]_i_2 
       (.I0(\axi_rdata[23]_i_3_n_0 ),
        .I1(\axi_rdata_reg[23]_0 ),
        .O(\axi_rdata_reg[23]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s_axi_rdata[24]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[24]_i_2 
       (.I0(\axi_rdata[24]_i_3_n_0 ),
        .I1(\axi_rdata_reg[24]_0 ),
        .O(\axi_rdata_reg[24]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s_axi_rdata[25]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[25]_i_2 
       (.I0(\axi_rdata[25]_i_3_n_0 ),
        .I1(\axi_rdata_reg[25]_0 ),
        .O(\axi_rdata_reg[25]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s_axi_rdata[26]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[26]_i_2 
       (.I0(\axi_rdata[26]_i_3_n_0 ),
        .I1(\axi_rdata_reg[26]_0 ),
        .O(\axi_rdata_reg[26]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s_axi_rdata[27]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[27]_i_2 
       (.I0(\axi_rdata[27]_i_3_n_0 ),
        .I1(\axi_rdata_reg[27]_0 ),
        .O(\axi_rdata_reg[27]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s_axi_rdata[28]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[28]_i_2 
       (.I0(\axi_rdata[28]_i_3_n_0 ),
        .I1(\axi_rdata_reg[28]_0 ),
        .O(\axi_rdata_reg[28]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s_axi_rdata[29]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[29]_i_2 
       (.I0(\axi_rdata[29]_i_3_n_0 ),
        .I1(\axi_rdata_reg[29]_0 ),
        .O(\axi_rdata_reg[29]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s_axi_rdata[2]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s_axi_rdata[30]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[30]_i_2 
       (.I0(\axi_rdata[30]_i_3_n_0 ),
        .I1(\axi_rdata_reg[30]_0 ),
        .O(\axi_rdata_reg[30]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s_axi_rdata[31]),
        .R(p_0_in));
  MUXF7 \axi_rdata_reg[31]_i_2 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata_reg[31]_0 ),
        .O(\axi_rdata_reg[31]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s_axi_rdata[3]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s_axi_rdata[4]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s_axi_rdata[5]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s_axi_rdata[6]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s_axi_rdata[7]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s_axi_rdata[8]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s_axi_rdata[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s_axi_arvalid),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fifo_mem_reg_7_i_11
       (.I0(\reg_pkt_len_reg[15]_0 [1]),
        .I1(\reg_pkt_len_reg[15]_0 [0]),
        .I2(\reg_pkt_len_reg[15]_0 [3]),
        .I3(\reg_pkt_len_reg[15]_0 [2]),
        .O(fifo_mem_reg_7_i_11_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    fifo_mem_reg_7_i_12
       (.I0(\reg_pkt_len_reg[15]_0 [12]),
        .I1(\reg_pkt_len_reg[15]_0 [13]),
        .I2(\reg_pkt_len_reg[15]_0 [15]),
        .I3(\reg_pkt_len_reg[15]_0 [14]),
        .I4(fifo_mem_reg_7_i_13_n_0),
        .O(fifo_mem_reg_7_i_12_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fifo_mem_reg_7_i_13
       (.I0(\reg_pkt_len_reg[15]_0 [9]),
        .I1(\reg_pkt_len_reg[15]_0 [8]),
        .I2(\reg_pkt_len_reg[15]_0 [11]),
        .I3(\reg_pkt_len_reg[15]_0 [10]),
        .O(fifo_mem_reg_7_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    fifo_mem_reg_7_i_5
       (.I0(fifo_mem_reg_7_i_11_n_0),
        .I1(\reg_pkt_len_reg[15]_0 [7]),
        .I2(\reg_pkt_len_reg[15]_0 [6]),
        .I3(\reg_pkt_len_reg[15]_0 [5]),
        .I4(\reg_pkt_len_reg[15]_0 [4]),
        .I5(fifo_mem_reg_7_i_12_n_0),
        .O(pkt_bounded__14));
  LUT2 #(
    .INIT(4'h8)) 
    out_last_i_2
       (.I0(pkt_bounded__14),
        .I1(CO),
        .O(pop_is_last));
  CARRY4 pop_is_last0_carry__0_i_3
       (.CI(pop_is_last0_carry_i_5_n_0),
        .CO({NLW_pop_is_last0_carry__0_i_3_CO_UNCONNECTED[3:2],pop_is_last0_carry__0_i_3_n_2,pop_is_last0_carry__0_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\reg_pkt_len_reg[15]_0 [14:13]}),
        .O({NLW_pop_is_last0_carry__0_i_3_O_UNCONNECTED[3],pop_is_last1[14:12]}),
        .S({1'b0,pop_is_last0_carry__0_i_4_n_0,pop_is_last0_carry__0_i_5_n_0,pop_is_last0_carry__0_i_6_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pop_is_last0_carry__0_i_4
       (.I0(\reg_pkt_len_reg[15]_0 [15]),
        .O(pop_is_last0_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pop_is_last0_carry__0_i_5
       (.I0(\reg_pkt_len_reg[15]_0 [14]),
        .O(pop_is_last0_carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pop_is_last0_carry__0_i_6
       (.I0(\reg_pkt_len_reg[15]_0 [13]),
        .O(pop_is_last0_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pop_is_last0_carry_i_10
       (.I0(\reg_pkt_len_reg[15]_0 [10]),
        .O(pop_is_last0_carry_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pop_is_last0_carry_i_11
       (.I0(\reg_pkt_len_reg[15]_0 [9]),
        .O(pop_is_last0_carry_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pop_is_last0_carry_i_12
       (.I0(\reg_pkt_len_reg[15]_0 [8]),
        .O(pop_is_last0_carry_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pop_is_last0_carry_i_13
       (.I0(\reg_pkt_len_reg[15]_0 [7]),
        .O(pop_is_last0_carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pop_is_last0_carry_i_14
       (.I0(\reg_pkt_len_reg[15]_0 [6]),
        .O(pop_is_last0_carry_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pop_is_last0_carry_i_15
       (.I0(\reg_pkt_len_reg[15]_0 [5]),
        .O(pop_is_last0_carry_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pop_is_last0_carry_i_16
       (.I0(\reg_pkt_len_reg[15]_0 [4]),
        .O(pop_is_last0_carry_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pop_is_last0_carry_i_17
       (.I0(\reg_pkt_len_reg[15]_0 [3]),
        .O(pop_is_last0_carry_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pop_is_last0_carry_i_18
       (.I0(\reg_pkt_len_reg[15]_0 [2]),
        .O(pop_is_last0_carry_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pop_is_last0_carry_i_19
       (.I0(\reg_pkt_len_reg[15]_0 [1]),
        .O(pop_is_last0_carry_i_19_n_0));
  CARRY4 pop_is_last0_carry_i_5
       (.CI(pop_is_last0_carry_i_6_n_0),
        .CO({pop_is_last0_carry_i_5_n_0,pop_is_last0_carry_i_5_n_1,pop_is_last0_carry_i_5_n_2,pop_is_last0_carry_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(\reg_pkt_len_reg[15]_0 [12:9]),
        .O(pop_is_last1[11:8]),
        .S({pop_is_last0_carry_i_8_n_0,pop_is_last0_carry_i_9_n_0,pop_is_last0_carry_i_10_n_0,pop_is_last0_carry_i_11_n_0}));
  CARRY4 pop_is_last0_carry_i_6
       (.CI(pop_is_last0_carry_i_7_n_0),
        .CO({pop_is_last0_carry_i_6_n_0,pop_is_last0_carry_i_6_n_1,pop_is_last0_carry_i_6_n_2,pop_is_last0_carry_i_6_n_3}),
        .CYINIT(1'b0),
        .DI(\reg_pkt_len_reg[15]_0 [8:5]),
        .O(pop_is_last1[7:4]),
        .S({pop_is_last0_carry_i_12_n_0,pop_is_last0_carry_i_13_n_0,pop_is_last0_carry_i_14_n_0,pop_is_last0_carry_i_15_n_0}));
  CARRY4 pop_is_last0_carry_i_7
       (.CI(1'b0),
        .CO({pop_is_last0_carry_i_7_n_0,pop_is_last0_carry_i_7_n_1,pop_is_last0_carry_i_7_n_2,pop_is_last0_carry_i_7_n_3}),
        .CYINIT(\reg_pkt_len_reg[15]_0 [0]),
        .DI(\reg_pkt_len_reg[15]_0 [4:1]),
        .O(pop_is_last1[3:0]),
        .S({pop_is_last0_carry_i_16_n_0,pop_is_last0_carry_i_17_n_0,pop_is_last0_carry_i_18_n_0,pop_is_last0_carry_i_19_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    pop_is_last0_carry_i_8
       (.I0(\reg_pkt_len_reg[15]_0 [12]),
        .O(pop_is_last0_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    pop_is_last0_carry_i_9
       (.I0(\reg_pkt_len_reg[15]_0 [11]),
        .O(pop_is_last0_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \reg_ctrl[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(wr_index[0]),
        .I2(wr_index[3]),
        .I3(wr_index[1]),
        .I4(wr_index[2]),
        .I5(s_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \reg_ctrl[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(wr_index[0]),
        .I2(wr_index[3]),
        .I3(wr_index[1]),
        .I4(wr_index[2]),
        .I5(s_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \reg_ctrl[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(wr_index[0]),
        .I2(wr_index[3]),
        .I3(wr_index[1]),
        .I4(wr_index[2]),
        .I5(s_axi_wstrb[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \reg_ctrl[31]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(axi_awready_reg_0),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \reg_ctrl[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(wr_index[0]),
        .I2(wr_index[3]),
        .I3(wr_index[1]),
        .I4(wr_index[2]),
        .I5(s_axi_wstrb[0]),
        .O(p_1_in[0]));
  FDRE \reg_ctrl_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[0]),
        .Q(\reg_ctrl_reg[4]_0 [0]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[10]),
        .Q(reg_ctrl[10]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[11]),
        .Q(reg_ctrl[11]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[12]),
        .Q(reg_ctrl[12]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[13]),
        .Q(reg_ctrl[13]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[14]),
        .Q(reg_ctrl[14]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[15]),
        .Q(reg_ctrl[15]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[16]),
        .Q(reg_ctrl[16]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[17]),
        .Q(reg_ctrl[17]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[18]),
        .Q(reg_ctrl[18]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[19]),
        .Q(reg_ctrl[19]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[1]),
        .Q(ts_rst),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[20]),
        .Q(reg_ctrl[20]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[21]),
        .Q(reg_ctrl[21]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[22]),
        .Q(reg_ctrl[22]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[23]),
        .Q(reg_ctrl[23]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[24]),
        .Q(reg_ctrl[24]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[25]),
        .Q(reg_ctrl[25]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[26]),
        .Q(reg_ctrl[26]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[27]),
        .Q(reg_ctrl[27]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[28]),
        .Q(reg_ctrl[28]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[29]),
        .Q(reg_ctrl[29]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[2]),
        .Q(\reg_ctrl_reg[4]_0 [1]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[30]),
        .Q(reg_ctrl[30]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[31]),
        .Q(reg_ctrl[31]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[3]),
        .Q(soft_rst),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[4]),
        .Q(\reg_ctrl_reg[4]_0 [2]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[5]),
        .Q(reg_ctrl[5]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[6]),
        .Q(reg_ctrl[6]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[7]),
        .Q(reg_ctrl[7]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[8]),
        .Q(reg_ctrl[8]),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[9]),
        .Q(reg_ctrl[9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \reg_edge_skip[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[1]),
        .I2(wr_index[3]),
        .I3(wr_index[0]),
        .I4(wr_index[2]),
        .I5(wr_index[1]),
        .O(\reg_edge_skip[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \reg_edge_skip[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[2]),
        .I2(wr_index[3]),
        .I3(wr_index[0]),
        .I4(wr_index[2]),
        .I5(wr_index[1]),
        .O(\reg_edge_skip[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \reg_edge_skip[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[3]),
        .I2(wr_index[3]),
        .I3(wr_index[0]),
        .I4(wr_index[2]),
        .I5(wr_index[1]),
        .O(\reg_edge_skip[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \reg_edge_skip[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[0]),
        .I2(wr_index[3]),
        .I3(wr_index[0]),
        .I4(wr_index[2]),
        .I5(wr_index[1]),
        .O(\reg_edge_skip[7]_i_1_n_0 ));
  FDRE \reg_edge_skip_reg[0] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\reg_edge_skip_reg[31]_0 [0]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[10] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\reg_edge_skip_reg[31]_0 [10]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[11] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\reg_edge_skip_reg[31]_0 [11]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[12] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\reg_edge_skip_reg[31]_0 [12]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[13] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\reg_edge_skip_reg[31]_0 [13]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[14] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\reg_edge_skip_reg[31]_0 [14]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[15] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\reg_edge_skip_reg[31]_0 [15]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[16] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\reg_edge_skip_reg[31]_0 [16]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[17] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\reg_edge_skip_reg[31]_0 [17]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[18] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\reg_edge_skip_reg[31]_0 [18]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[19] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\reg_edge_skip_reg[31]_0 [19]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[1] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\reg_edge_skip_reg[31]_0 [1]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[20] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\reg_edge_skip_reg[31]_0 [20]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[21] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\reg_edge_skip_reg[31]_0 [21]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[22] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\reg_edge_skip_reg[31]_0 [22]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[23] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\reg_edge_skip_reg[31]_0 [23]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[24] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\reg_edge_skip_reg[31]_0 [24]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[25] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\reg_edge_skip_reg[31]_0 [25]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[26] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\reg_edge_skip_reg[31]_0 [26]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[27] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\reg_edge_skip_reg[31]_0 [27]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[28] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\reg_edge_skip_reg[31]_0 [28]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[29] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\reg_edge_skip_reg[31]_0 [29]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[2] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\reg_edge_skip_reg[31]_0 [2]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[30] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\reg_edge_skip_reg[31]_0 [30]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[31] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\reg_edge_skip_reg[31]_0 [31]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[3] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\reg_edge_skip_reg[31]_0 [3]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[4] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\reg_edge_skip_reg[31]_0 [4]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[5] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\reg_edge_skip_reg[31]_0 [5]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[6] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\reg_edge_skip_reg[31]_0 [6]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[7] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\reg_edge_skip_reg[31]_0 [7]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[8] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\reg_edge_skip_reg[31]_0 [8]),
        .R(p_0_in));
  FDRE \reg_edge_skip_reg[9] 
       (.C(s_axi_aclk),
        .CE(\reg_edge_skip[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\reg_edge_skip_reg[31]_0 [9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \reg_gate_len[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[1]),
        .I2(wr_index[0]),
        .I3(wr_index[2]),
        .I4(wr_index[1]),
        .I5(wr_index[3]),
        .O(\reg_gate_len[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \reg_gate_len[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[2]),
        .I2(wr_index[0]),
        .I3(wr_index[2]),
        .I4(wr_index[1]),
        .I5(wr_index[3]),
        .O(\reg_gate_len[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \reg_gate_len[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[3]),
        .I2(wr_index[0]),
        .I3(wr_index[2]),
        .I4(wr_index[1]),
        .I5(wr_index[3]),
        .O(\reg_gate_len[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \reg_gate_len[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[0]),
        .I2(wr_index[0]),
        .I3(wr_index[2]),
        .I4(wr_index[1]),
        .I5(wr_index[3]),
        .O(\reg_gate_len[7]_i_1_n_0 ));
  FDRE \reg_gate_len_reg[0] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\reg_gate_len_reg[31]_0 [0]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[10] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\reg_gate_len_reg[31]_0 [10]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[11] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\reg_gate_len_reg[31]_0 [11]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[12] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\reg_gate_len_reg[31]_0 [12]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[13] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\reg_gate_len_reg[31]_0 [13]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[14] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\reg_gate_len_reg[31]_0 [14]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[15] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\reg_gate_len_reg[31]_0 [15]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[16] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\reg_gate_len_reg[31]_0 [16]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[17] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\reg_gate_len_reg[31]_0 [17]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[18] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\reg_gate_len_reg[31]_0 [18]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[19] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\reg_gate_len_reg[31]_0 [19]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[1] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\reg_gate_len_reg[31]_0 [1]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[20] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\reg_gate_len_reg[31]_0 [20]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[21] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\reg_gate_len_reg[31]_0 [21]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[22] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\reg_gate_len_reg[31]_0 [22]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[23] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\reg_gate_len_reg[31]_0 [23]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[24] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\reg_gate_len_reg[31]_0 [24]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[25] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\reg_gate_len_reg[31]_0 [25]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[26] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\reg_gate_len_reg[31]_0 [26]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[27] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\reg_gate_len_reg[31]_0 [27]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[28] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\reg_gate_len_reg[31]_0 [28]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[29] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\reg_gate_len_reg[31]_0 [29]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[2] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\reg_gate_len_reg[31]_0 [2]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[30] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\reg_gate_len_reg[31]_0 [30]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[31] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\reg_gate_len_reg[31]_0 [31]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[3] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\reg_gate_len_reg[31]_0 [3]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[4] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\reg_gate_len_reg[31]_0 [4]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[5] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\reg_gate_len_reg[31]_0 [5]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[6] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\reg_gate_len_reg[31]_0 [6]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[7] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\reg_gate_len_reg[31]_0 [7]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[8] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\reg_gate_len_reg[31]_0 [8]),
        .R(p_0_in));
  FDRE \reg_gate_len_reg[9] 
       (.C(s_axi_aclk),
        .CE(\reg_gate_len[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\reg_gate_len_reg[31]_0 [9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \reg_pkt_len[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[1]),
        .I2(wr_index[3]),
        .I3(wr_index[0]),
        .I4(wr_index[1]),
        .I5(wr_index[2]),
        .O(\reg_pkt_len[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \reg_pkt_len[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[2]),
        .I2(wr_index[3]),
        .I3(wr_index[0]),
        .I4(wr_index[1]),
        .I5(wr_index[2]),
        .O(\reg_pkt_len[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \reg_pkt_len[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[3]),
        .I2(wr_index[3]),
        .I3(wr_index[0]),
        .I4(wr_index[1]),
        .I5(wr_index[2]),
        .O(\reg_pkt_len[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \reg_pkt_len[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s_axi_wstrb[0]),
        .I2(wr_index[3]),
        .I3(wr_index[0]),
        .I4(wr_index[1]),
        .I5(wr_index[2]),
        .O(\reg_pkt_len[7]_i_1_n_0 ));
  FDRE \reg_pkt_len_reg[0] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\reg_pkt_len_reg[15]_0 [0]),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[10] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\reg_pkt_len_reg[15]_0 [10]),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[11] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\reg_pkt_len_reg[15]_0 [11]),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[12] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\reg_pkt_len_reg[15]_0 [12]),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[13] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\reg_pkt_len_reg[15]_0 [13]),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[14] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\reg_pkt_len_reg[15]_0 [14]),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[15] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\reg_pkt_len_reg[15]_0 [15]),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[16] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\reg_pkt_len_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[17] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\reg_pkt_len_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[18] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\reg_pkt_len_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[19] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\reg_pkt_len_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[1] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\reg_pkt_len_reg[15]_0 [1]),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[20] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(\reg_pkt_len_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[21] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(\reg_pkt_len_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[22] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(\reg_pkt_len_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[23] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(\reg_pkt_len_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[24] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(\reg_pkt_len_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[25] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(\reg_pkt_len_reg_n_0_[25] ),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[26] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(\reg_pkt_len_reg_n_0_[26] ),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[27] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(\reg_pkt_len_reg_n_0_[27] ),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[28] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(\reg_pkt_len_reg_n_0_[28] ),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[29] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(\reg_pkt_len_reg_n_0_[29] ),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[2] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\reg_pkt_len_reg[15]_0 [2]),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[30] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(\reg_pkt_len_reg_n_0_[30] ),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[31] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(\reg_pkt_len_reg_n_0_[31] ),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[3] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\reg_pkt_len_reg[15]_0 [3]),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[4] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\reg_pkt_len_reg[15]_0 [4]),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[5] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\reg_pkt_len_reg[15]_0 [5]),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[6] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\reg_pkt_len_reg[15]_0 [6]),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[7] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\reg_pkt_len_reg[15]_0 [7]),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[8] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\reg_pkt_len_reg[15]_0 [8]),
        .R(p_0_in));
  FDRE \reg_pkt_len_reg[9] 
       (.C(s_axi_aclk),
        .CE(\reg_pkt_len[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\reg_pkt_len_reg[15]_0 [9]),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid),
        .I2(axi_arready_reg_0),
        .O(slv_reg_rden__0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sync[2]_i_1__0 
       (.I0(soft_rst),
        .I1(s_axi_aresetn),
        .O(\reg_ctrl_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \sync[2]_i_1__1 
       (.I0(ts_rst),
        .I1(soft_rst),
        .I2(s_axi_aresetn),
        .O(\reg_ctrl_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "bit_sync" *) 
module ps_Counter_Core_0_1_bit_sync
   (out,
    SR,
    CLK,
    \sync_reg[0]_0 );
  output [0:0]out;
  input [0:0]SR;
  input CLK;
  input [0:0]\sync_reg[0]_0 ;

  wire CLK;
  wire [0:0]SR;
  (* async_reg = "true" *) wire [1:0]sync;
  wire [0:0]\sync_reg[0]_0 ;

  assign out[0] = sync[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sync_reg[0]_0 ),
        .Q(sync[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(sync[0]),
        .Q(sync[1]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "bit_sync" *) 
module ps_Counter_Core_0_1_bit_sync_10
   (\sync_reg[1]_0 ,
    \sync_reg[1]_1 ,
    s_axi_aclk,
    D);
  output [0:0]\sync_reg[1]_0 ;
  input [0:0]\sync_reg[1]_1 ;
  input s_axi_aclk;
  input [0:0]D;

  wire [0:0]D;
  wire s_axi_aclk;
  (* async_reg = "true" *) wire [1:0]sync;
  wire [0:0]\sync_reg[1]_1 ;

  assign \sync_reg[1]_0 [0] = sync[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(sync[0]),
        .R(\sync_reg[1]_1 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sync[0]),
        .Q(sync[1]),
        .R(\sync_reg[1]_1 ));
endmodule

(* ORIG_REF_NAME = "bit_sync" *) 
module ps_Counter_Core_0_1_bit_sync_2
   (out,
    E,
    ts_en_d,
    SR,
    CLK,
    \sync_reg[0]_0 );
  output [0:0]out;
  output [0:0]E;
  input ts_en_d;
  input [0:0]SR;
  input CLK;
  input [0:0]\sync_reg[0]_0 ;

  wire CLK;
  wire [0:0]E;
  wire [0:0]SR;
  (* async_reg = "true" *) wire [1:0]sync;
  wire [0:0]\sync_reg[0]_0 ;
  wire ts_en_d;

  assign out[0] = sync[1];
  LUT2 #(
    .INIT(4'h2)) 
    \skip_limit[31]_i_1 
       (.I0(sync[1]),
        .I1(ts_en_d),
        .O(E));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\sync_reg[0]_0 ),
        .Q(sync[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(sync[0]),
        .Q(sync[1]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "bit_sync" *) 
module ps_Counter_Core_0_1_bit_sync_5
   (out,
    SR,
    s_axi_aclk,
    D);
  output [0:0]out;
  input [0:0]SR;
  input s_axi_aclk;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]SR;
  wire s_axi_aclk;
  (* async_reg = "true" *) wire [1:0]sync;

  assign out[0] = sync[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(sync[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sync[0]),
        .Q(sync[1]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "bit_sync" *) 
module ps_Counter_Core_0_1_bit_sync_6
   (\sync_reg[1]_0 ,
    \sync_reg[0]_0 ,
    s_axi_aclk,
    D);
  output [0:0]\sync_reg[1]_0 ;
  input [0:0]\sync_reg[0]_0 ;
  input s_axi_aclk;
  input [0:0]D;

  wire [0:0]D;
  wire s_axi_aclk;
  (* async_reg = "true" *) wire [1:0]sync;
  wire [0:0]\sync_reg[0]_0 ;

  assign \sync_reg[1]_0 [0] = sync[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(sync[0]),
        .R(\sync_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sync[0]),
        .Q(sync[1]),
        .R(\sync_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "bit_sync" *) 
module ps_Counter_Core_0_1_bit_sync_9
   (\sync_reg[1]_0 ,
    \sync_reg[0]_0 ,
    s_axi_aclk,
    busy);
  output [0:0]\sync_reg[1]_0 ;
  input [0:0]\sync_reg[0]_0 ;
  input s_axi_aclk;
  input busy;

  wire busy;
  wire s_axi_aclk;
  (* async_reg = "true" *) wire [1:0]sync;
  wire [0:0]\sync_reg[0]_0 ;

  assign \sync_reg[1]_0 [0] = sync[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(busy),
        .Q(sync[0]),
        .R(\sync_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sync[0]),
        .Q(sync[1]),
        .R(\sync_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "bit_sync" *) 
module ps_Counter_Core_0_1_bit_sync__parameterized0
   (out,
    gate_fx_d_reg,
    E,
    \sync_reg[2]_0 ,
    gate_fx_d,
    \test_cnt_reg[31] ,
    SR,
    clk_fx,
    \sync_reg[0]_0 );
  output [0:0]out;
  output gate_fx_d_reg;
  output [0:0]E;
  output [0:0]\sync_reg[2]_0 ;
  input gate_fx_d;
  input [0:0]\test_cnt_reg[31] ;
  input [0:0]SR;
  input clk_fx;
  input \sync_reg[0]_0 ;

  wire [0:0]E;
  wire [0:0]SR;
  wire clk_fx;
  wire gate_fx_d;
  wire gate_fx_d_reg;
  (* async_reg = "true" *) wire [2:0]sync;
  wire \sync_reg[0]_0 ;
  wire [0:0]\sync_reg[2]_0 ;
  wire [0:0]\test_cnt_reg[31] ;

  assign out[0] = sync[2];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_reg[0] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\sync_reg[0]_0 ),
        .Q(sync[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_reg[1] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(sync[0]),
        .Q(sync[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_reg[2] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(sync[1]),
        .Q(sync[2]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \tdc_rise_fx[5]_i_1 
       (.I0(sync[2]),
        .I1(gate_fx_d),
        .O(\sync_reg[2]_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \test_cnt[0]_i_1 
       (.I0(gate_fx_d),
        .I1(sync[2]),
        .I2(\test_cnt_reg[31] ),
        .O(gate_fx_d_reg));
  LUT2 #(
    .INIT(4'h2)) 
    \test_result[31]_i_1 
       (.I0(gate_fx_d),
        .I1(sync[2]),
        .O(E));
endmodule

(* ORIG_REF_NAME = "cnt_cdc" *) 
module ps_Counter_Core_0_1_cnt_cdc
   (\wr_ptr_bin_reg[12] ,
    edge_d2_reg,
    S,
    wr_drop,
    WEA,
    p_1_in,
    CO,
    E,
    do_capture0__25,
    ts_word,
    fifo_full0_carry_i_3_0,
    edge_d2,
    out,
    fifo_full0_carry,
    fifo_full0_carry_0,
    fifo_full0_carry_1,
    fifo_full0_carry_2,
    fifo_full0_carry_3,
    fifo_full0_carry_4,
    fifo_full0_carry_i_2_0,
    fifo_full0_carry_i_2_1,
    fifo_full0_carry_5,
    fifo_full0_carry_6,
    fifo_full0_carry_7,
    \gray_src_reg[12]_0 ,
    \gray_src_reg[0]_0 ,
    s_axi_aclk,
    SR,
    CLK);
  output \wr_ptr_bin_reg[12] ;
  output edge_d2_reg;
  output [3:0]S;
  output wr_drop;
  output [0:0]WEA;
  input p_1_in;
  input [0:0]CO;
  input [0:0]E;
  input do_capture0__25;
  input [0:0]ts_word;
  input fifo_full0_carry_i_3_0;
  input edge_d2;
  input [0:0]out;
  input fifo_full0_carry;
  input fifo_full0_carry_0;
  input fifo_full0_carry_1;
  input fifo_full0_carry_2;
  input fifo_full0_carry_3;
  input fifo_full0_carry_4;
  input fifo_full0_carry_i_2_0;
  input fifo_full0_carry_i_2_1;
  input fifo_full0_carry_5;
  input fifo_full0_carry_6;
  input fifo_full0_carry_7;
  input [12:0]\gray_src_reg[12]_0 ;
  input [0:0]\gray_src_reg[0]_0 ;
  input s_axi_aclk;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [0:0]CO;
  wire [0:0]E;
  wire [3:0]S;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire do_capture0__25;
  wire edge_d2;
  wire edge_d2_reg;
  wire fifo_full0_carry;
  wire fifo_full0_carry_0;
  wire fifo_full0_carry_1;
  wire fifo_full0_carry_2;
  wire fifo_full0_carry_3;
  wire fifo_full0_carry_4;
  wire fifo_full0_carry_5;
  wire fifo_full0_carry_6;
  wire fifo_full0_carry_7;
  wire fifo_full0_carry_i_11_n_0;
  wire fifo_full0_carry_i_16_n_0;
  wire fifo_full0_carry_i_18_n_0;
  wire fifo_full0_carry_i_19_n_0;
  wire fifo_full0_carry_i_2_0;
  wire fifo_full0_carry_i_2_1;
  wire fifo_full0_carry_i_3_0;
  wire fifo_full0_carry_i_8_n_0;
  wire fifo_full0_carry_i_9_n_0;
  (* async_reg = "true" *) wire [12:0]gray_s1;
  (* async_reg = "true" *) wire [12:0]gray_s2;
  wire [12:0]gray_src;
  wire \gray_src[0]_i_1_n_0 ;
  wire \gray_src[10]_i_1_n_0 ;
  wire \gray_src[11]_i_1_n_0 ;
  wire \gray_src[1]_i_1_n_0 ;
  wire \gray_src[2]_i_1_n_0 ;
  wire \gray_src[3]_i_1_n_0 ;
  wire \gray_src[4]_i_1_n_0 ;
  wire \gray_src[5]_i_1_n_0 ;
  wire \gray_src[6]_i_1_n_0 ;
  wire \gray_src[7]_i_1_n_0 ;
  wire \gray_src[8]_i_1_n_0 ;
  wire \gray_src[9]_i_1_n_0 ;
  wire [0:0]\gray_src_reg[0]_0 ;
  wire [12:0]\gray_src_reg[12]_0 ;
  wire [0:0]out;
  wire p_1_in;
  wire [11:0]rd_ptr_bin_at_wr;
  wire s_axi_aclk;
  wire [0:0]ts_word;
  wire wr_drop;
  wire \wr_ptr_bin_reg[12] ;

  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_full0_carry_i_1
       (.I0(fifo_full0_carry),
        .I1(rd_ptr_bin_at_wr[9]),
        .I2(rd_ptr_bin_at_wr[11]),
        .I3(fifo_full0_carry_0),
        .I4(rd_ptr_bin_at_wr[10]),
        .I5(fifo_full0_carry_1),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    fifo_full0_carry_i_10
       (.I0(rd_ptr_bin_at_wr[11]),
        .I1(gray_s2[5]),
        .I2(gray_s2[6]),
        .I3(gray_s2[3]),
        .I4(gray_s2[4]),
        .I5(fifo_full0_carry_i_16_n_0),
        .O(rd_ptr_bin_at_wr[3]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    fifo_full0_carry_i_11
       (.I0(gray_s2[7]),
        .I1(gray_s2[8]),
        .I2(gray_s2[5]),
        .I3(gray_s2[6]),
        .I4(rd_ptr_bin_at_wr[9]),
        .I5(fifo_full0_carry_i_3_0),
        .O(fifo_full0_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    fifo_full0_carry_i_12
       (.I0(gray_s2[12]),
        .I1(fifo_full0_carry_i_18_n_0),
        .I2(gray_s2[10]),
        .I3(gray_s2[11]),
        .I4(gray_s2[8]),
        .I5(gray_s2[9]),
        .O(rd_ptr_bin_at_wr[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    fifo_full0_carry_i_13
       (.I0(rd_ptr_bin_at_wr[8]),
        .I1(gray_s2[2]),
        .I2(gray_s2[3]),
        .I3(gray_s2[0]),
        .I4(gray_s2[1]),
        .I5(fifo_full0_carry_i_18_n_0),
        .O(rd_ptr_bin_at_wr[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    fifo_full0_carry_i_14
       (.I0(rd_ptr_bin_at_wr[10]),
        .I1(gray_s2[4]),
        .I2(gray_s2[5]),
        .I3(gray_s2[2]),
        .I4(gray_s2[3]),
        .I5(fifo_full0_carry_i_8_n_0),
        .O(rd_ptr_bin_at_wr[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    fifo_full0_carry_i_15
       (.I0(rd_ptr_bin_at_wr[9]),
        .I1(gray_s2[3]),
        .I2(gray_s2[4]),
        .I3(gray_s2[1]),
        .I4(gray_s2[2]),
        .I5(fifo_full0_carry_i_19_n_0),
        .O(rd_ptr_bin_at_wr[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    fifo_full0_carry_i_16
       (.I0(gray_s2[9]),
        .I1(gray_s2[10]),
        .I2(gray_s2[7]),
        .I3(gray_s2[8]),
        .O(fifo_full0_carry_i_16_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    fifo_full0_carry_i_17
       (.I0(gray_s2[12]),
        .I1(gray_s2[9]),
        .I2(gray_s2[8]),
        .I3(gray_s2[11]),
        .I4(gray_s2[10]),
        .O(rd_ptr_bin_at_wr[8]));
  LUT4 #(
    .INIT(16'h6996)) 
    fifo_full0_carry_i_18
       (.I0(gray_s2[6]),
        .I1(gray_s2[7]),
        .I2(gray_s2[4]),
        .I3(gray_s2[5]),
        .O(fifo_full0_carry_i_18_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    fifo_full0_carry_i_19
       (.I0(gray_s2[7]),
        .I1(gray_s2[8]),
        .I2(gray_s2[5]),
        .I3(gray_s2[6]),
        .O(fifo_full0_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'h6996966900000000)) 
    fifo_full0_carry_i_2
       (.I0(fifo_full0_carry_4),
        .I1(gray_s2[11]),
        .I2(gray_s2[10]),
        .I3(gray_s2[12]),
        .I4(fifo_full0_carry_i_8_n_0),
        .I5(fifo_full0_carry_i_9_n_0),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h90000090)) 
    fifo_full0_carry_i_3
       (.I0(fifo_full0_carry_2),
        .I1(rd_ptr_bin_at_wr[3]),
        .I2(fifo_full0_carry_i_11_n_0),
        .I3(rd_ptr_bin_at_wr[4]),
        .I4(fifo_full0_carry_3),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_full0_carry_i_4
       (.I0(fifo_full0_carry_5),
        .I1(rd_ptr_bin_at_wr[0]),
        .I2(rd_ptr_bin_at_wr[2]),
        .I3(fifo_full0_carry_6),
        .I4(rd_ptr_bin_at_wr[1]),
        .I5(fifo_full0_carry_7),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    fifo_full0_carry_i_5
       (.I0(gray_s2[11]),
        .I1(gray_s2[12]),
        .I2(gray_s2[9]),
        .I3(gray_s2[10]),
        .O(rd_ptr_bin_at_wr[9]));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_full0_carry_i_6
       (.I0(gray_s2[12]),
        .I1(gray_s2[11]),
        .O(rd_ptr_bin_at_wr[11]));
  LUT3 #(
    .INIT(8'h96)) 
    fifo_full0_carry_i_7
       (.I0(gray_s2[12]),
        .I1(gray_s2[10]),
        .I2(gray_s2[11]),
        .O(rd_ptr_bin_at_wr[10]));
  LUT4 #(
    .INIT(16'h6996)) 
    fifo_full0_carry_i_8
       (.I0(gray_s2[8]),
        .I1(gray_s2[9]),
        .I2(gray_s2[6]),
        .I3(gray_s2[7]),
        .O(fifo_full0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h9669000000009669)) 
    fifo_full0_carry_i_9
       (.I0(fifo_full0_carry_i_2_0),
        .I1(gray_s2[11]),
        .I2(gray_s2[12]),
        .I3(fifo_full0_carry_i_16_n_0),
        .I4(fifo_full0_carry_i_2_1),
        .I5(rd_ptr_bin_at_wr[8]),
        .O(fifo_full0_carry_i_9_n_0));
  LUT3 #(
    .INIT(8'hD7)) 
    fifo_mem_reg_7_i_3
       (.I0(CO),
        .I1(gray_s2[12]),
        .I2(p_1_in),
        .O(WEA));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_src[0]),
        .Q(gray_s1[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_src[10]),
        .Q(gray_s1[10]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_src[11]),
        .Q(gray_s1[11]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_src[12]),
        .Q(gray_s1[12]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_src[1]),
        .Q(gray_s1[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_src[2]),
        .Q(gray_s1[2]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_src[3]),
        .Q(gray_s1[3]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_src[4]),
        .Q(gray_s1[4]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_src[5]),
        .Q(gray_s1[5]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_src[6]),
        .Q(gray_s1[6]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_src[7]),
        .Q(gray_s1[7]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_src[8]),
        .Q(gray_s1[8]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_src[9]),
        .Q(gray_s1[9]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_s1[0]),
        .Q(gray_s2[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_s1[10]),
        .Q(gray_s2[10]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_s1[11]),
        .Q(gray_s2[11]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_s1[12]),
        .Q(gray_s2[12]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_s1[1]),
        .Q(gray_s2[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_s1[2]),
        .Q(gray_s2[2]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_s1[3]),
        .Q(gray_s2[3]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_s1[4]),
        .Q(gray_s2[4]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_s1[5]),
        .Q(gray_s2[5]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_s1[6]),
        .Q(gray_s2[6]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_s1[7]),
        .Q(gray_s2[7]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_s1[8]),
        .Q(gray_s2[8]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(gray_s1[9]),
        .Q(gray_s2[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[0]_i_1 
       (.I0(\gray_src_reg[12]_0 [1]),
        .I1(\gray_src_reg[12]_0 [0]),
        .O(\gray_src[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[10]_i_1 
       (.I0(\gray_src_reg[12]_0 [11]),
        .I1(\gray_src_reg[12]_0 [10]),
        .O(\gray_src[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[11]_i_1 
       (.I0(\gray_src_reg[12]_0 [12]),
        .I1(\gray_src_reg[12]_0 [11]),
        .O(\gray_src[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[1]_i_1 
       (.I0(\gray_src_reg[12]_0 [2]),
        .I1(\gray_src_reg[12]_0 [1]),
        .O(\gray_src[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[2]_i_1 
       (.I0(\gray_src_reg[12]_0 [3]),
        .I1(\gray_src_reg[12]_0 [2]),
        .O(\gray_src[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[3]_i_1 
       (.I0(\gray_src_reg[12]_0 [4]),
        .I1(\gray_src_reg[12]_0 [3]),
        .O(\gray_src[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[4]_i_1 
       (.I0(\gray_src_reg[12]_0 [5]),
        .I1(\gray_src_reg[12]_0 [4]),
        .O(\gray_src[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[5]_i_1 
       (.I0(\gray_src_reg[12]_0 [6]),
        .I1(\gray_src_reg[12]_0 [5]),
        .O(\gray_src[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[6]_i_1 
       (.I0(\gray_src_reg[12]_0 [7]),
        .I1(\gray_src_reg[12]_0 [6]),
        .O(\gray_src[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[7]_i_1 
       (.I0(\gray_src_reg[12]_0 [8]),
        .I1(\gray_src_reg[12]_0 [7]),
        .O(\gray_src[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[8]_i_1 
       (.I0(\gray_src_reg[12]_0 [9]),
        .I1(\gray_src_reg[12]_0 [8]),
        .O(\gray_src[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[9]_i_1 
       (.I0(\gray_src_reg[12]_0 [10]),
        .I1(\gray_src_reg[12]_0 [9]),
        .O(\gray_src[9]_i_1_n_0 ));
  FDRE \gray_src_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[0]_i_1_n_0 ),
        .Q(gray_src[0]),
        .R(\gray_src_reg[0]_0 ));
  FDRE \gray_src_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[10]_i_1_n_0 ),
        .Q(gray_src[10]),
        .R(\gray_src_reg[0]_0 ));
  FDRE \gray_src_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[11]_i_1_n_0 ),
        .Q(gray_src[11]),
        .R(\gray_src_reg[0]_0 ));
  FDRE \gray_src_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src_reg[12]_0 [12]),
        .Q(gray_src[12]),
        .R(\gray_src_reg[0]_0 ));
  FDRE \gray_src_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[1]_i_1_n_0 ),
        .Q(gray_src[1]),
        .R(\gray_src_reg[0]_0 ));
  FDRE \gray_src_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[2]_i_1_n_0 ),
        .Q(gray_src[2]),
        .R(\gray_src_reg[0]_0 ));
  FDRE \gray_src_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[3]_i_1_n_0 ),
        .Q(gray_src[3]),
        .R(\gray_src_reg[0]_0 ));
  FDRE \gray_src_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[4]_i_1_n_0 ),
        .Q(gray_src[4]),
        .R(\gray_src_reg[0]_0 ));
  FDRE \gray_src_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[5]_i_1_n_0 ),
        .Q(gray_src[5]),
        .R(\gray_src_reg[0]_0 ));
  FDRE \gray_src_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[6]_i_1_n_0 ),
        .Q(gray_src[6]),
        .R(\gray_src_reg[0]_0 ));
  FDRE \gray_src_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[7]_i_1_n_0 ),
        .Q(gray_src[7]),
        .R(\gray_src_reg[0]_0 ));
  FDRE \gray_src_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[8]_i_1_n_0 ),
        .Q(gray_src[8]),
        .R(\gray_src_reg[0]_0 ));
  FDRE \gray_src_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[9]_i_1_n_0 ),
        .Q(gray_src[9]),
        .R(\gray_src_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h60FFFFFF60000000)) 
    ovf_mark_i_1
       (.I0(p_1_in),
        .I1(gray_s2[12]),
        .I2(CO),
        .I3(E),
        .I4(do_capture0__25),
        .I5(ts_word),
        .O(\wr_ptr_bin_reg[12] ));
  LUT6 #(
    .INIT(64'h0000800080000000)) 
    ovf_sticky_i_1
       (.I0(do_capture0__25),
        .I1(edge_d2),
        .I2(out),
        .I3(CO),
        .I4(gray_s2[12]),
        .I5(p_1_in),
        .O(wr_drop));
  LUT6 #(
    .INIT(64'h8080008000808080)) 
    \seq_cnt[0]_i_1 
       (.I0(do_capture0__25),
        .I1(edge_d2),
        .I2(out),
        .I3(CO),
        .I4(gray_s2[12]),
        .I5(p_1_in),
        .O(edge_d2_reg));
endmodule

(* ORIG_REF_NAME = "cnt_cdc" *) 
module ps_Counter_Core_0_1_cnt_cdc_8
   (\gray_s2_reg[12]_0 ,
    S,
    \rd_ptr_bin_reg[3] ,
    \gray_s2_reg[9]_0 ,
    \gray_s2_reg[12]_1 ,
    \gray_s2_reg[12]_2 ,
    \gray_s2_reg[11]_0 ,
    DI,
    out,
    \gray_src_reg[0]_0 ,
    \gray_src_reg[0]_1 ,
    \gray_src_reg[1]_0 ,
    \gray_src_reg[2]_0 ,
    \gray_src_reg[3]_0 ,
    \gray_src_reg[4]_0 ,
    \gray_src_reg[5]_0 ,
    \gray_src_reg[6]_0 ,
    \gray_src_reg[7]_0 ,
    \gray_src_reg[8]_0 ,
    \gray_src_reg[9]_0 ,
    \gray_src_reg[10]_0 ,
    p_1_in,
    SR,
    CLK,
    \gray_s1_reg[0]_0 ,
    s_axi_aclk);
  output [8:0]\gray_s2_reg[12]_0 ;
  output [3:0]S;
  output [3:0]\rd_ptr_bin_reg[3] ;
  output [3:0]\gray_s2_reg[9]_0 ;
  output [0:0]\gray_s2_reg[12]_1 ;
  output [0:0]\gray_s2_reg[12]_2 ;
  output [3:0]\gray_s2_reg[11]_0 ;
  output [2:0]DI;
  input [12:0]out;
  input \gray_src_reg[0]_0 ;
  input \gray_src_reg[0]_1 ;
  input \gray_src_reg[1]_0 ;
  input \gray_src_reg[2]_0 ;
  input \gray_src_reg[3]_0 ;
  input \gray_src_reg[4]_0 ;
  input \gray_src_reg[5]_0 ;
  input \gray_src_reg[6]_0 ;
  input \gray_src_reg[7]_0 ;
  input \gray_src_reg[8]_0 ;
  input \gray_src_reg[9]_0 ;
  input \gray_src_reg[10]_0 ;
  input p_1_in;
  input [0:0]SR;
  input CLK;
  input [0:0]\gray_s1_reg[0]_0 ;
  input s_axi_aclk;

  wire CLK;
  wire [2:0]DI;
  wire [3:0]S;
  wire [0:0]SR;
  wire fifo_level_carry_i_10_n_0;
  wire fifo_level_carry_i_12_n_0;
  wire fifo_level_carry_i_14_n_0;
  wire fifo_level_carry_i_15_n_0;
  (* async_reg = "true" *) wire [12:0]gray_s1;
  wire [0:0]\gray_s1_reg[0]_0 ;
  (* async_reg = "true" *) wire [12:0]gray_s2;
  wire [3:0]\gray_s2_reg[11]_0 ;
  wire [8:0]\gray_s2_reg[12]_0 ;
  wire [0:0]\gray_s2_reg[12]_1 ;
  wire [0:0]\gray_s2_reg[12]_2 ;
  wire [3:0]\gray_s2_reg[9]_0 ;
  wire [12:0]gray_src;
  wire \gray_src[0]_i_1_n_0 ;
  wire \gray_src[10]_i_1_n_0 ;
  wire \gray_src[11]_i_1_n_0 ;
  wire \gray_src[1]_i_1_n_0 ;
  wire \gray_src[2]_i_1_n_0 ;
  wire \gray_src[3]_i_1_n_0 ;
  wire \gray_src[4]_i_1_n_0 ;
  wire \gray_src[5]_i_1_n_0 ;
  wire \gray_src[6]_i_1_n_0 ;
  wire \gray_src[7]_i_1_n_0 ;
  wire \gray_src[8]_i_1_n_0 ;
  wire \gray_src[9]_i_1_n_0 ;
  wire \gray_src_reg[0]_0 ;
  wire \gray_src_reg[0]_1 ;
  wire \gray_src_reg[10]_0 ;
  wire \gray_src_reg[1]_0 ;
  wire \gray_src_reg[2]_0 ;
  wire \gray_src_reg[3]_0 ;
  wire \gray_src_reg[4]_0 ;
  wire \gray_src_reg[5]_0 ;
  wire \gray_src_reg[6]_0 ;
  wire \gray_src_reg[7]_0 ;
  wire \gray_src_reg[8]_0 ;
  wire \gray_src_reg[9]_0 ;
  wire int_empty_carry_i_5_n_0;
  wire int_empty_carry_i_6_n_0;
  wire int_empty_carry_i_7_n_0;
  wire [12:0]out;
  wire p_1_in;
  wire [3:0]\rd_ptr_bin_reg[3] ;
  wire s_axi_aclk;
  wire [11:9]wr_ptr_bin_at_rd;

  LUT6 #(
    .INIT(64'h6996966996696996)) 
    fifo_level_carry__0_i_1
       (.I0(gray_s2[11]),
        .I1(gray_s2[12]),
        .I2(gray_s2[8]),
        .I3(gray_s2[7]),
        .I4(gray_s2[10]),
        .I5(gray_s2[9]),
        .O(\gray_s2_reg[12]_0 [7]));
  LUT5 #(
    .INIT(32'h96696996)) 
    fifo_level_carry__0_i_2
       (.I0(wr_ptr_bin_at_rd[10]),
        .I1(gray_s2[7]),
        .I2(gray_s2[6]),
        .I3(gray_s2[9]),
        .I4(gray_s2[8]),
        .O(\gray_s2_reg[12]_0 [6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    fifo_level_carry__0_i_3
       (.I0(wr_ptr_bin_at_rd[9]),
        .I1(gray_s2[6]),
        .I2(gray_s2[5]),
        .I3(gray_s2[8]),
        .I4(gray_s2[7]),
        .O(\gray_s2_reg[12]_0 [5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    fifo_level_carry__0_i_4
       (.I0(gray_s2[12]),
        .I1(fifo_level_carry_i_15_n_0),
        .I2(gray_s2[10]),
        .I3(gray_s2[11]),
        .I4(gray_s2[8]),
        .I5(gray_s2[9]),
        .O(\gray_s2_reg[12]_0 [4]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    fifo_level_carry__0_i_5
       (.I0(gray_s2[9]),
        .I1(gray_s2[10]),
        .I2(gray_s2[7]),
        .I3(gray_s2[8]),
        .I4(wr_ptr_bin_at_rd[11]),
        .I5(out[7]),
        .O(\gray_s2_reg[9]_0 [3]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    fifo_level_carry__0_i_6
       (.I0(gray_s2[8]),
        .I1(gray_s2[9]),
        .I2(gray_s2[6]),
        .I3(gray_s2[7]),
        .I4(wr_ptr_bin_at_rd[10]),
        .I5(out[6]),
        .O(\gray_s2_reg[9]_0 [2]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    fifo_level_carry__0_i_7
       (.I0(gray_s2[7]),
        .I1(gray_s2[8]),
        .I2(gray_s2[5]),
        .I3(gray_s2[6]),
        .I4(wr_ptr_bin_at_rd[9]),
        .I5(out[5]),
        .O(\gray_s2_reg[9]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_level_carry__0_i_8
       (.I0(\gray_s2_reg[12]_0 [4]),
        .I1(out[4]),
        .O(\gray_s2_reg[9]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_level_carry__1_i_1
       (.I0(gray_s2[12]),
        .I1(gray_s2[11]),
        .O(DI[2]));
  LUT3 #(
    .INIT(8'h96)) 
    fifo_level_carry__1_i_2
       (.I0(gray_s2[12]),
        .I1(gray_s2[10]),
        .I2(gray_s2[11]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    fifo_level_carry__1_i_3
       (.I0(gray_s2[11]),
        .I1(gray_s2[12]),
        .I2(gray_s2[9]),
        .I3(gray_s2[10]),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    fifo_level_carry__1_i_4
       (.I0(gray_s2[12]),
        .I1(gray_s2[9]),
        .I2(gray_s2[8]),
        .I3(gray_s2[11]),
        .I4(gray_s2[10]),
        .O(\gray_s2_reg[12]_0 [8]));
  LUT3 #(
    .INIT(8'h69)) 
    fifo_level_carry__1_i_5
       (.I0(gray_s2[11]),
        .I1(gray_s2[12]),
        .I2(out[11]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9669)) 
    fifo_level_carry__1_i_6
       (.I0(gray_s2[11]),
        .I1(gray_s2[10]),
        .I2(gray_s2[12]),
        .I3(out[10]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h69969669)) 
    fifo_level_carry__1_i_7
       (.I0(gray_s2[10]),
        .I1(gray_s2[9]),
        .I2(gray_s2[12]),
        .I3(gray_s2[11]),
        .I4(out[9]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    fifo_level_carry__1_i_8
       (.I0(gray_s2[10]),
        .I1(gray_s2[11]),
        .I2(gray_s2[8]),
        .I3(gray_s2[9]),
        .I4(gray_s2[12]),
        .I5(out[8]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_level_carry__2_i_1
       (.I0(gray_s2[12]),
        .I1(out[12]),
        .O(\gray_s2_reg[12]_1 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    fifo_level_carry_i_1
       (.I0(wr_ptr_bin_at_rd[11]),
        .I1(gray_s2[5]),
        .I2(gray_s2[6]),
        .I3(gray_s2[3]),
        .I4(gray_s2[4]),
        .I5(fifo_level_carry_i_10_n_0),
        .O(\gray_s2_reg[12]_0 [3]));
  LUT4 #(
    .INIT(16'h6996)) 
    fifo_level_carry_i_10
       (.I0(gray_s2[9]),
        .I1(gray_s2[10]),
        .I2(gray_s2[7]),
        .I3(gray_s2[8]),
        .O(fifo_level_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    fifo_level_carry_i_11
       (.I0(gray_s2[12]),
        .I1(gray_s2[10]),
        .I2(gray_s2[11]),
        .O(wr_ptr_bin_at_rd[10]));
  LUT4 #(
    .INIT(16'h6996)) 
    fifo_level_carry_i_12
       (.I0(gray_s2[8]),
        .I1(gray_s2[9]),
        .I2(gray_s2[6]),
        .I3(gray_s2[7]),
        .O(fifo_level_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    fifo_level_carry_i_13
       (.I0(gray_s2[11]),
        .I1(gray_s2[12]),
        .I2(gray_s2[9]),
        .I3(gray_s2[10]),
        .O(wr_ptr_bin_at_rd[9]));
  LUT4 #(
    .INIT(16'h6996)) 
    fifo_level_carry_i_14
       (.I0(gray_s2[7]),
        .I1(gray_s2[8]),
        .I2(gray_s2[5]),
        .I3(gray_s2[6]),
        .O(fifo_level_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    fifo_level_carry_i_15
       (.I0(gray_s2[6]),
        .I1(gray_s2[7]),
        .I2(gray_s2[4]),
        .I3(gray_s2[5]),
        .O(fifo_level_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    fifo_level_carry_i_2
       (.I0(wr_ptr_bin_at_rd[10]),
        .I1(gray_s2[4]),
        .I2(gray_s2[5]),
        .I3(gray_s2[2]),
        .I4(gray_s2[3]),
        .I5(fifo_level_carry_i_12_n_0),
        .O(\gray_s2_reg[12]_0 [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    fifo_level_carry_i_3
       (.I0(wr_ptr_bin_at_rd[9]),
        .I1(gray_s2[3]),
        .I2(gray_s2[4]),
        .I3(gray_s2[1]),
        .I4(gray_s2[2]),
        .I5(fifo_level_carry_i_14_n_0),
        .O(\gray_s2_reg[12]_0 [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    fifo_level_carry_i_4
       (.I0(\gray_s2_reg[12]_0 [8]),
        .I1(gray_s2[2]),
        .I2(gray_s2[3]),
        .I3(gray_s2[0]),
        .I4(gray_s2[1]),
        .I5(fifo_level_carry_i_15_n_0),
        .O(\gray_s2_reg[12]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_level_carry_i_5
       (.I0(\gray_s2_reg[12]_0 [3]),
        .I1(out[3]),
        .O(\rd_ptr_bin_reg[3] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_level_carry_i_6
       (.I0(\gray_s2_reg[12]_0 [2]),
        .I1(out[2]),
        .O(\rd_ptr_bin_reg[3] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_level_carry_i_7
       (.I0(\gray_s2_reg[12]_0 [1]),
        .I1(out[1]),
        .O(\rd_ptr_bin_reg[3] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_level_carry_i_8
       (.I0(\gray_s2_reg[12]_0 [0]),
        .I1(out[0]),
        .O(\rd_ptr_bin_reg[3] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_level_carry_i_9
       (.I0(gray_s2[12]),
        .I1(gray_s2[11]),
        .O(wr_ptr_bin_at_rd[11]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[0]),
        .Q(gray_s1[0]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[10]),
        .Q(gray_s1[10]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[11]),
        .Q(gray_s1[11]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[12]),
        .Q(gray_s1[12]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[1]),
        .Q(gray_s1[1]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[2]),
        .Q(gray_s1[2]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[3]),
        .Q(gray_s1[3]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[4]),
        .Q(gray_s1[4]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[5]),
        .Q(gray_s1[5]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[6]),
        .Q(gray_s1[6]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[7]),
        .Q(gray_s1[7]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[8]),
        .Q(gray_s1[8]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[9]),
        .Q(gray_s1[9]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[0]),
        .Q(gray_s2[0]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[10]),
        .Q(gray_s2[10]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[11]),
        .Q(gray_s2[11]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[12]),
        .Q(gray_s2[12]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[1]),
        .Q(gray_s2[1]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[2]),
        .Q(gray_s2[2]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[3]),
        .Q(gray_s2[3]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[4]),
        .Q(gray_s2[4]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[5]),
        .Q(gray_s2[5]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[6]),
        .Q(gray_s2[6]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[7]),
        .Q(gray_s2[7]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[8]),
        .Q(gray_s2[8]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[9]),
        .Q(gray_s2[9]),
        .R(\gray_s1_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[0]_i_1 
       (.I0(\gray_src_reg[0]_0 ),
        .I1(\gray_src_reg[0]_1 ),
        .O(\gray_src[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[10]_i_1 
       (.I0(\gray_src_reg[10]_0 ),
        .I1(\gray_src_reg[9]_0 ),
        .O(\gray_src[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[11]_i_1 
       (.I0(p_1_in),
        .I1(\gray_src_reg[10]_0 ),
        .O(\gray_src[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[1]_i_1 
       (.I0(\gray_src_reg[1]_0 ),
        .I1(\gray_src_reg[0]_0 ),
        .O(\gray_src[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[2]_i_1 
       (.I0(\gray_src_reg[2]_0 ),
        .I1(\gray_src_reg[1]_0 ),
        .O(\gray_src[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[3]_i_1 
       (.I0(\gray_src_reg[3]_0 ),
        .I1(\gray_src_reg[2]_0 ),
        .O(\gray_src[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[4]_i_1 
       (.I0(\gray_src_reg[4]_0 ),
        .I1(\gray_src_reg[3]_0 ),
        .O(\gray_src[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[5]_i_1 
       (.I0(\gray_src_reg[5]_0 ),
        .I1(\gray_src_reg[4]_0 ),
        .O(\gray_src[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[6]_i_1 
       (.I0(\gray_src_reg[6]_0 ),
        .I1(\gray_src_reg[5]_0 ),
        .O(\gray_src[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[7]_i_1 
       (.I0(\gray_src_reg[7]_0 ),
        .I1(\gray_src_reg[6]_0 ),
        .O(\gray_src[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[8]_i_1 
       (.I0(\gray_src_reg[8]_0 ),
        .I1(\gray_src_reg[7]_0 ),
        .O(\gray_src[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[9]_i_1 
       (.I0(\gray_src_reg[9]_0 ),
        .I1(\gray_src_reg[8]_0 ),
        .O(\gray_src[9]_i_1_n_0 ));
  FDRE \gray_src_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[0]_i_1_n_0 ),
        .Q(gray_src[0]),
        .R(SR));
  FDRE \gray_src_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[10]_i_1_n_0 ),
        .Q(gray_src[10]),
        .R(SR));
  FDRE \gray_src_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[11]_i_1_n_0 ),
        .Q(gray_src[11]),
        .R(SR));
  FDRE \gray_src_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in),
        .Q(gray_src[12]),
        .R(SR));
  FDRE \gray_src_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[1]_i_1_n_0 ),
        .Q(gray_src[1]),
        .R(SR));
  FDRE \gray_src_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[2]_i_1_n_0 ),
        .Q(gray_src[2]),
        .R(SR));
  FDRE \gray_src_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[3]_i_1_n_0 ),
        .Q(gray_src[3]),
        .R(SR));
  FDRE \gray_src_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[4]_i_1_n_0 ),
        .Q(gray_src[4]),
        .R(SR));
  FDRE \gray_src_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[5]_i_1_n_0 ),
        .Q(gray_src[5]),
        .R(SR));
  FDRE \gray_src_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[6]_i_1_n_0 ),
        .Q(gray_src[6]),
        .R(SR));
  FDRE \gray_src_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[7]_i_1_n_0 ),
        .Q(gray_src[7]),
        .R(SR));
  FDRE \gray_src_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[8]_i_1_n_0 ),
        .Q(gray_src[8]),
        .R(SR));
  FDRE \gray_src_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[9]_i_1_n_0 ),
        .Q(gray_src[9]),
        .R(SR));
  LUT2 #(
    .INIT(4'h9)) 
    int_empty_carry__0_i_1
       (.I0(gray_s2[12]),
        .I1(out[12]),
        .O(\gray_s2_reg[12]_2 ));
  LUT6 #(
    .INIT(64'h0082280028000082)) 
    int_empty_carry_i_1
       (.I0(int_empty_carry_i_5_n_0),
        .I1(gray_s2[11]),
        .I2(gray_s2[12]),
        .I3(out[11]),
        .I4(gray_s2[10]),
        .I5(out[10]),
        .O(\gray_s2_reg[11]_0 [3]));
  LUT5 #(
    .INIT(32'h82000082)) 
    int_empty_carry_i_2
       (.I0(int_empty_carry_i_6_n_0),
        .I1(\gray_s2_reg[12]_0 [8]),
        .I2(out[8]),
        .I3(\gray_s2_reg[12]_0 [7]),
        .I4(out[7]),
        .O(\gray_s2_reg[11]_0 [2]));
  LUT5 #(
    .INIT(32'h90000090)) 
    int_empty_carry_i_3
       (.I0(out[3]),
        .I1(\gray_s2_reg[12]_0 [3]),
        .I2(int_empty_carry_i_7_n_0),
        .I3(\gray_s2_reg[12]_0 [4]),
        .I4(out[4]),
        .O(\gray_s2_reg[11]_0 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    int_empty_carry_i_4
       (.I0(out[0]),
        .I1(\gray_s2_reg[12]_0 [0]),
        .I2(\gray_s2_reg[12]_0 [2]),
        .I3(out[2]),
        .I4(\gray_s2_reg[12]_0 [1]),
        .I5(out[1]),
        .O(\gray_s2_reg[11]_0 [0]));
  LUT5 #(
    .INIT(32'h69969669)) 
    int_empty_carry_i_5
       (.I0(gray_s2[10]),
        .I1(gray_s2[9]),
        .I2(gray_s2[12]),
        .I3(gray_s2[11]),
        .I4(out[9]),
        .O(int_empty_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    int_empty_carry_i_6
       (.I0(gray_s2[8]),
        .I1(gray_s2[9]),
        .I2(gray_s2[6]),
        .I3(gray_s2[7]),
        .I4(wr_ptr_bin_at_rd[10]),
        .I5(out[6]),
        .O(int_empty_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    int_empty_carry_i_7
       (.I0(gray_s2[7]),
        .I1(gray_s2[8]),
        .I2(gray_s2[5]),
        .I3(gray_s2[6]),
        .I4(wr_ptr_bin_at_rd[9]),
        .I5(out[5]),
        .O(int_empty_carry_i_7_n_0));
endmodule

(* ORIG_REF_NAME = "cnt_cdc" *) 
module ps_Counter_Core_0_1_cnt_cdc__parameterized0
   (dst_cnt,
    src_cnt,
    SR,
    CLK,
    \gray_s1_reg[0]_0 ,
    s_axi_aclk);
  output [31:0]dst_cnt;
  input [31:0]src_cnt;
  input [0:0]SR;
  input CLK;
  input [0:0]\gray_s1_reg[0]_0 ;
  input s_axi_aclk;

  wire CLK;
  wire [0:0]SR;
  wire \axi_rdata[10]_i_7_n_0 ;
  wire \axi_rdata[10]_i_8_n_0 ;
  wire \axi_rdata[11]_i_7_n_0 ;
  wire \axi_rdata[11]_i_8_n_0 ;
  wire \axi_rdata[12]_i_11_n_0 ;
  wire \axi_rdata[12]_i_7_n_0 ;
  wire \axi_rdata[12]_i_8_n_0 ;
  wire \axi_rdata[13]_i_11_n_0 ;
  wire \axi_rdata[13]_i_7_n_0 ;
  wire \axi_rdata[13]_i_8_n_0 ;
  wire \axi_rdata[15]_i_8_n_0 ;
  wire \axi_rdata[16]_i_10_n_0 ;
  wire \axi_rdata[16]_i_9_n_0 ;
  wire \axi_rdata[17]_i_10_n_0 ;
  wire \axi_rdata[17]_i_9_n_0 ;
  wire \axi_rdata[18]_i_8_n_0 ;
  wire \axi_rdata[19]_i_8_n_0 ;
  wire \axi_rdata[20]_i_8_n_0 ;
  wire \axi_rdata[21]_i_8_n_0 ;
  wire \axi_rdata[22]_i_8_n_0 ;
  wire \axi_rdata[23]_i_8_n_0 ;
  wire \axi_rdata[2]_i_7_n_0 ;
  wire \axi_rdata[3]_i_7_n_0 ;
  wire \axi_rdata[4]_i_7_n_0 ;
  wire \axi_rdata[4]_i_8_n_0 ;
  wire \axi_rdata[5]_i_7_n_0 ;
  wire \axi_rdata[5]_i_8_n_0 ;
  wire \axi_rdata[6]_i_10_n_0 ;
  wire \axi_rdata[6]_i_15_n_0 ;
  wire \axi_rdata[6]_i_7_n_0 ;
  wire \axi_rdata[6]_i_8_n_0 ;
  wire \axi_rdata[6]_i_9_n_0 ;
  wire \axi_rdata[7]_i_13_n_0 ;
  wire \axi_rdata[7]_i_7_n_0 ;
  wire \axi_rdata[7]_i_8_n_0 ;
  wire \axi_rdata[7]_i_9_n_0 ;
  wire \axi_rdata[8]_i_7_n_0 ;
  wire \axi_rdata[8]_i_8_n_0 ;
  wire \axi_rdata[9]_i_7_n_0 ;
  wire \axi_rdata[9]_i_8_n_0 ;
  wire [30:0]\^dst_cnt ;
  (* async_reg = "true" *) wire [31:0]gray_s1;
  wire [0:0]\gray_s1_reg[0]_0 ;
  (* async_reg = "true" *) wire [31:0]gray_s2;
  wire [31:0]gray_src;
  wire \gray_src[0]_i_1__0_n_0 ;
  wire \gray_src[10]_i_1__0_n_0 ;
  wire \gray_src[11]_i_1__0_n_0 ;
  wire \gray_src[12]_i_1__1_n_0 ;
  wire \gray_src[13]_i_1__0_n_0 ;
  wire \gray_src[14]_i_1__0_n_0 ;
  wire \gray_src[15]_i_1__0_n_0 ;
  wire \gray_src[16]_i_1__0_n_0 ;
  wire \gray_src[17]_i_1__0_n_0 ;
  wire \gray_src[18]_i_1__0_n_0 ;
  wire \gray_src[19]_i_1__0_n_0 ;
  wire \gray_src[1]_i_1__0_n_0 ;
  wire \gray_src[20]_i_1__0_n_0 ;
  wire \gray_src[21]_i_1__0_n_0 ;
  wire \gray_src[22]_i_1__0_n_0 ;
  wire \gray_src[23]_i_1__0_n_0 ;
  wire \gray_src[24]_i_1__0_n_0 ;
  wire \gray_src[25]_i_1__0_n_0 ;
  wire \gray_src[26]_i_1__0_n_0 ;
  wire \gray_src[27]_i_1__0_n_0 ;
  wire \gray_src[28]_i_1__0_n_0 ;
  wire \gray_src[29]_i_1__0_n_0 ;
  wire \gray_src[2]_i_1__0_n_0 ;
  wire \gray_src[30]_i_1__0_n_0 ;
  wire \gray_src[3]_i_1__0_n_0 ;
  wire \gray_src[4]_i_1__0_n_0 ;
  wire \gray_src[5]_i_1__0_n_0 ;
  wire \gray_src[6]_i_1__0_n_0 ;
  wire \gray_src[7]_i_1__0_n_0 ;
  wire \gray_src[8]_i_1__0_n_0 ;
  wire \gray_src[9]_i_1__0_n_0 ;
  wire s_axi_aclk;
  wire [31:0]src_cnt;

  assign dst_cnt[31] = gray_s2[31];
  assign dst_cnt[30:0] = \^dst_cnt [30:0];
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[0]_i_5 
       (.I0(\^dst_cnt [16]),
        .I1(\axi_rdata[4]_i_8_n_0 ),
        .I2(gray_s2[1]),
        .I3(gray_s2[0]),
        .I4(\axi_rdata[2]_i_7_n_0 ),
        .I5(\axi_rdata[8]_i_7_n_0 ),
        .O(\^dst_cnt [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[10]_i_5 
       (.I0(\^dst_cnt [26]),
        .I1(\axi_rdata[10]_i_7_n_0 ),
        .I2(\axi_rdata[10]_i_8_n_0 ),
        .O(\^dst_cnt [10]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[10]_i_7 
       (.I0(gray_s2[15]),
        .I1(gray_s2[14]),
        .I2(gray_s2[17]),
        .I3(gray_s2[16]),
        .I4(\axi_rdata[6]_i_8_n_0 ),
        .O(\axi_rdata[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[10]_i_8 
       (.I0(gray_s2[23]),
        .I1(gray_s2[22]),
        .I2(gray_s2[25]),
        .I3(gray_s2[24]),
        .I4(\axi_rdata[18]_i_8_n_0 ),
        .O(\axi_rdata[10]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[11]_i_5 
       (.I0(\^dst_cnt [27]),
        .I1(\axi_rdata[11]_i_7_n_0 ),
        .I2(\axi_rdata[11]_i_8_n_0 ),
        .O(\^dst_cnt [11]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[11]_i_7 
       (.I0(gray_s2[16]),
        .I1(gray_s2[15]),
        .I2(gray_s2[18]),
        .I3(gray_s2[17]),
        .I4(\axi_rdata[7]_i_7_n_0 ),
        .O(\axi_rdata[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[11]_i_8 
       (.I0(gray_s2[24]),
        .I1(gray_s2[23]),
        .I2(gray_s2[26]),
        .I3(gray_s2[25]),
        .I4(\axi_rdata[19]_i_8_n_0 ),
        .O(\axi_rdata[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[12]_i_11 
       (.I0(gray_s2[14]),
        .I1(gray_s2[15]),
        .I2(gray_s2[12]),
        .I3(gray_s2[13]),
        .O(\axi_rdata[12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[12]_i_5 
       (.I0(gray_s2[29]),
        .I1(gray_s2[28]),
        .I2(gray_s2[31]),
        .I3(gray_s2[30]),
        .I4(\axi_rdata[12]_i_7_n_0 ),
        .I5(\axi_rdata[12]_i_8_n_0 ),
        .O(\^dst_cnt [12]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[12]_i_7 
       (.I0(gray_s2[17]),
        .I1(gray_s2[16]),
        .I2(gray_s2[19]),
        .I3(gray_s2[18]),
        .I4(\axi_rdata[12]_i_11_n_0 ),
        .O(\axi_rdata[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[12]_i_8 
       (.I0(gray_s2[25]),
        .I1(gray_s2[24]),
        .I2(gray_s2[27]),
        .I3(gray_s2[26]),
        .I4(\axi_rdata[20]_i_8_n_0 ),
        .O(\axi_rdata[12]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[13]_i_11 
       (.I0(gray_s2[15]),
        .I1(gray_s2[16]),
        .I2(gray_s2[13]),
        .I3(gray_s2[14]),
        .O(\axi_rdata[13]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[13]_i_5 
       (.I0(gray_s2[30]),
        .I1(gray_s2[29]),
        .I2(gray_s2[31]),
        .I3(\axi_rdata[13]_i_7_n_0 ),
        .I4(\axi_rdata[13]_i_8_n_0 ),
        .O(\^dst_cnt [13]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[13]_i_7 
       (.I0(gray_s2[18]),
        .I1(gray_s2[17]),
        .I2(gray_s2[20]),
        .I3(gray_s2[19]),
        .I4(\axi_rdata[13]_i_11_n_0 ),
        .O(\axi_rdata[13]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[13]_i_8 
       (.I0(gray_s2[26]),
        .I1(gray_s2[25]),
        .I2(gray_s2[28]),
        .I3(gray_s2[27]),
        .I4(\axi_rdata[21]_i_8_n_0 ),
        .O(\axi_rdata[13]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[14]_i_6 
       (.I0(gray_s2[30]),
        .I1(gray_s2[31]),
        .I2(\axi_rdata[6]_i_10_n_0 ),
        .I3(\axi_rdata[6]_i_7_n_0 ),
        .O(\^dst_cnt [14]));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[15]_i_6 
       (.I0(gray_s2[31]),
        .I1(\axi_rdata[7]_i_9_n_0 ),
        .I2(\axi_rdata[15]_i_8_n_0 ),
        .O(\^dst_cnt [15]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[15]_i_8 
       (.I0(gray_s2[28]),
        .I1(gray_s2[27]),
        .I2(gray_s2[30]),
        .I3(gray_s2[29]),
        .I4(\axi_rdata[23]_i_8_n_0 ),
        .O(\axi_rdata[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[16]_i_10 
       (.I0(gray_s2[18]),
        .I1(gray_s2[19]),
        .I2(gray_s2[16]),
        .I3(gray_s2[17]),
        .O(\axi_rdata[16]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[16]_i_6 
       (.I0(\axi_rdata[16]_i_9_n_0 ),
        .I1(\^dst_cnt [30]),
        .I2(gray_s2[28]),
        .I3(gray_s2[29]),
        .I4(\axi_rdata[16]_i_10_n_0 ),
        .I5(\axi_rdata[20]_i_8_n_0 ),
        .O(\^dst_cnt [16]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[16]_i_9 
       (.I0(gray_s2[26]),
        .I1(gray_s2[27]),
        .I2(gray_s2[24]),
        .I3(gray_s2[25]),
        .O(\axi_rdata[16]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[17]_i_10 
       (.I0(gray_s2[19]),
        .I1(gray_s2[20]),
        .I2(gray_s2[17]),
        .I3(gray_s2[18]),
        .O(\axi_rdata[17]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[17]_i_6 
       (.I0(\axi_rdata[17]_i_9_n_0 ),
        .I1(gray_s2[31]),
        .I2(gray_s2[29]),
        .I3(gray_s2[30]),
        .I4(\axi_rdata[17]_i_10_n_0 ),
        .I5(\axi_rdata[21]_i_8_n_0 ),
        .O(\^dst_cnt [17]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[17]_i_9 
       (.I0(gray_s2[27]),
        .I1(gray_s2[28]),
        .I2(gray_s2[25]),
        .I3(gray_s2[26]),
        .O(\axi_rdata[17]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[18]_i_6 
       (.I0(\^dst_cnt [26]),
        .I1(\axi_rdata[18]_i_8_n_0 ),
        .I2(gray_s2[24]),
        .I3(gray_s2[25]),
        .I4(gray_s2[22]),
        .I5(gray_s2[23]),
        .O(\^dst_cnt [18]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[18]_i_8 
       (.I0(gray_s2[20]),
        .I1(gray_s2[21]),
        .I2(gray_s2[18]),
        .I3(gray_s2[19]),
        .O(\axi_rdata[18]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[19]_i_6 
       (.I0(\^dst_cnt [27]),
        .I1(\axi_rdata[19]_i_8_n_0 ),
        .I2(gray_s2[25]),
        .I3(gray_s2[26]),
        .I4(gray_s2[23]),
        .I5(gray_s2[24]),
        .O(\^dst_cnt [19]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[19]_i_8 
       (.I0(gray_s2[21]),
        .I1(gray_s2[22]),
        .I2(gray_s2[19]),
        .I3(gray_s2[20]),
        .O(\axi_rdata[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[1]_i_5 
       (.I0(\^dst_cnt [17]),
        .I1(\axi_rdata[5]_i_8_n_0 ),
        .I2(gray_s2[2]),
        .I3(gray_s2[1]),
        .I4(\axi_rdata[3]_i_7_n_0 ),
        .I5(\axi_rdata[9]_i_7_n_0 ),
        .O(\^dst_cnt [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[20]_i_6 
       (.I0(\^dst_cnt [28]),
        .I1(\axi_rdata[20]_i_8_n_0 ),
        .I2(gray_s2[26]),
        .I3(gray_s2[27]),
        .I4(gray_s2[24]),
        .I5(gray_s2[25]),
        .O(\^dst_cnt [20]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[20]_i_8 
       (.I0(gray_s2[22]),
        .I1(gray_s2[23]),
        .I2(gray_s2[20]),
        .I3(gray_s2[21]),
        .O(\axi_rdata[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[21]_i_6 
       (.I0(\^dst_cnt [29]),
        .I1(\axi_rdata[21]_i_8_n_0 ),
        .I2(gray_s2[27]),
        .I3(gray_s2[28]),
        .I4(gray_s2[25]),
        .I5(gray_s2[26]),
        .O(\^dst_cnt [21]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[21]_i_8 
       (.I0(gray_s2[23]),
        .I1(gray_s2[24]),
        .I2(gray_s2[21]),
        .I3(gray_s2[22]),
        .O(\axi_rdata[21]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[22]_i_6 
       (.I0(\^dst_cnt [30]),
        .I1(\axi_rdata[22]_i_8_n_0 ),
        .I2(gray_s2[28]),
        .I3(gray_s2[29]),
        .I4(gray_s2[26]),
        .I5(gray_s2[27]),
        .O(\^dst_cnt [22]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[22]_i_8 
       (.I0(gray_s2[24]),
        .I1(gray_s2[25]),
        .I2(gray_s2[22]),
        .I3(gray_s2[23]),
        .O(\axi_rdata[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[23]_i_6 
       (.I0(gray_s2[31]),
        .I1(\axi_rdata[23]_i_8_n_0 ),
        .I2(gray_s2[29]),
        .I3(gray_s2[30]),
        .I4(gray_s2[27]),
        .I5(gray_s2[28]),
        .O(\^dst_cnt [23]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[23]_i_8 
       (.I0(gray_s2[25]),
        .I1(gray_s2[26]),
        .I2(gray_s2[23]),
        .I3(gray_s2[24]),
        .O(\axi_rdata[23]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[24]_i_6 
       (.I0(\^dst_cnt [28]),
        .I1(gray_s2[25]),
        .I2(gray_s2[24]),
        .I3(gray_s2[27]),
        .I4(gray_s2[26]),
        .O(\^dst_cnt [24]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[25]_i_6 
       (.I0(\^dst_cnt [29]),
        .I1(gray_s2[26]),
        .I2(gray_s2[25]),
        .I3(gray_s2[28]),
        .I4(gray_s2[27]),
        .O(\^dst_cnt [25]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[26]_i_6 
       (.I0(gray_s2[30]),
        .I1(gray_s2[31]),
        .I2(gray_s2[27]),
        .I3(gray_s2[26]),
        .I4(gray_s2[29]),
        .I5(gray_s2[28]),
        .O(\^dst_cnt [26]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[27]_i_6 
       (.I0(gray_s2[31]),
        .I1(gray_s2[28]),
        .I2(gray_s2[27]),
        .I3(gray_s2[30]),
        .I4(gray_s2[29]),
        .O(\^dst_cnt [27]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[28]_i_6 
       (.I0(gray_s2[30]),
        .I1(gray_s2[31]),
        .I2(gray_s2[28]),
        .I3(gray_s2[29]),
        .O(\^dst_cnt [28]));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[29]_i_6 
       (.I0(gray_s2[31]),
        .I1(gray_s2[29]),
        .I2(gray_s2[30]),
        .O(\^dst_cnt [29]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[2]_i_5 
       (.I0(\^dst_cnt [18]),
        .I1(\axi_rdata[6]_i_9_n_0 ),
        .I2(\axi_rdata[2]_i_7_n_0 ),
        .I3(gray_s2[5]),
        .I4(gray_s2[4]),
        .I5(\axi_rdata[10]_i_7_n_0 ),
        .O(\^dst_cnt [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[2]_i_7 
       (.I0(gray_s2[3]),
        .I1(gray_s2[2]),
        .O(\axi_rdata[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[30]_i_6 
       (.I0(gray_s2[31]),
        .I1(gray_s2[30]),
        .O(\^dst_cnt [30]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[3]_i_5 
       (.I0(\^dst_cnt [19]),
        .I1(\axi_rdata[7]_i_8_n_0 ),
        .I2(\axi_rdata[3]_i_7_n_0 ),
        .I3(gray_s2[6]),
        .I4(gray_s2[5]),
        .I5(\axi_rdata[11]_i_7_n_0 ),
        .O(\^dst_cnt [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[3]_i_7 
       (.I0(gray_s2[4]),
        .I1(gray_s2[3]),
        .O(\axi_rdata[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[4]_i_5 
       (.I0(\^dst_cnt [20]),
        .I1(\axi_rdata[4]_i_7_n_0 ),
        .I2(\axi_rdata[4]_i_8_n_0 ),
        .I3(\axi_rdata[12]_i_7_n_0 ),
        .O(\^dst_cnt [4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[4]_i_7 
       (.I0(gray_s2[10]),
        .I1(gray_s2[11]),
        .I2(gray_s2[8]),
        .I3(gray_s2[9]),
        .O(\axi_rdata[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[4]_i_8 
       (.I0(gray_s2[6]),
        .I1(gray_s2[7]),
        .I2(gray_s2[4]),
        .I3(gray_s2[5]),
        .O(\axi_rdata[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[5]_i_5 
       (.I0(\^dst_cnt [21]),
        .I1(\axi_rdata[5]_i_7_n_0 ),
        .I2(\axi_rdata[5]_i_8_n_0 ),
        .I3(\axi_rdata[13]_i_7_n_0 ),
        .O(\^dst_cnt [5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[5]_i_7 
       (.I0(gray_s2[11]),
        .I1(gray_s2[12]),
        .I2(gray_s2[9]),
        .I3(gray_s2[10]),
        .O(\axi_rdata[5]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[5]_i_8 
       (.I0(gray_s2[7]),
        .I1(gray_s2[8]),
        .I2(gray_s2[5]),
        .I3(gray_s2[6]),
        .O(\axi_rdata[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[6]_i_10 
       (.I0(gray_s2[19]),
        .I1(gray_s2[18]),
        .I2(gray_s2[21]),
        .I3(gray_s2[20]),
        .I4(\axi_rdata[6]_i_15_n_0 ),
        .O(\axi_rdata[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[6]_i_15 
       (.I0(gray_s2[16]),
        .I1(gray_s2[17]),
        .I2(gray_s2[14]),
        .I3(gray_s2[15]),
        .O(\axi_rdata[6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[6]_i_5 
       (.I0(\axi_rdata[6]_i_7_n_0 ),
        .I1(gray_s2[31]),
        .I2(gray_s2[30]),
        .I3(\axi_rdata[6]_i_8_n_0 ),
        .I4(\axi_rdata[6]_i_9_n_0 ),
        .I5(\axi_rdata[6]_i_10_n_0 ),
        .O(\^dst_cnt [6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[6]_i_7 
       (.I0(gray_s2[27]),
        .I1(gray_s2[26]),
        .I2(gray_s2[29]),
        .I3(gray_s2[28]),
        .I4(\axi_rdata[22]_i_8_n_0 ),
        .O(\axi_rdata[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[6]_i_8 
       (.I0(gray_s2[12]),
        .I1(gray_s2[13]),
        .I2(gray_s2[10]),
        .I3(gray_s2[11]),
        .O(\axi_rdata[6]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[6]_i_9 
       (.I0(gray_s2[8]),
        .I1(gray_s2[9]),
        .I2(gray_s2[6]),
        .I3(gray_s2[7]),
        .O(\axi_rdata[6]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[7]_i_13 
       (.I0(gray_s2[17]),
        .I1(gray_s2[18]),
        .I2(gray_s2[15]),
        .I3(gray_s2[16]),
        .O(\axi_rdata[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[7]_i_5 
       (.I0(\^dst_cnt [23]),
        .I1(\axi_rdata[7]_i_7_n_0 ),
        .I2(\axi_rdata[7]_i_8_n_0 ),
        .I3(\axi_rdata[7]_i_9_n_0 ),
        .O(\^dst_cnt [7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[7]_i_7 
       (.I0(gray_s2[13]),
        .I1(gray_s2[14]),
        .I2(gray_s2[11]),
        .I3(gray_s2[12]),
        .O(\axi_rdata[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[7]_i_8 
       (.I0(gray_s2[9]),
        .I1(gray_s2[10]),
        .I2(gray_s2[7]),
        .I3(gray_s2[8]),
        .O(\axi_rdata[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[7]_i_9 
       (.I0(gray_s2[20]),
        .I1(gray_s2[19]),
        .I2(gray_s2[22]),
        .I3(gray_s2[21]),
        .I4(\axi_rdata[7]_i_13_n_0 ),
        .O(\axi_rdata[7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[8]_i_5 
       (.I0(\^dst_cnt [24]),
        .I1(\axi_rdata[8]_i_7_n_0 ),
        .I2(\axi_rdata[8]_i_8_n_0 ),
        .O(\^dst_cnt [8]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[8]_i_7 
       (.I0(gray_s2[13]),
        .I1(gray_s2[12]),
        .I2(gray_s2[15]),
        .I3(gray_s2[14]),
        .I4(\axi_rdata[4]_i_7_n_0 ),
        .O(\axi_rdata[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[8]_i_8 
       (.I0(gray_s2[21]),
        .I1(gray_s2[20]),
        .I2(gray_s2[23]),
        .I3(gray_s2[22]),
        .I4(\axi_rdata[16]_i_10_n_0 ),
        .O(\axi_rdata[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[9]_i_5 
       (.I0(\^dst_cnt [25]),
        .I1(\axi_rdata[9]_i_7_n_0 ),
        .I2(\axi_rdata[9]_i_8_n_0 ),
        .O(\^dst_cnt [9]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[9]_i_7 
       (.I0(gray_s2[14]),
        .I1(gray_s2[13]),
        .I2(gray_s2[16]),
        .I3(gray_s2[15]),
        .I4(\axi_rdata[5]_i_7_n_0 ),
        .O(\axi_rdata[9]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[9]_i_8 
       (.I0(gray_s2[22]),
        .I1(gray_s2[21]),
        .I2(gray_s2[24]),
        .I3(gray_s2[23]),
        .I4(\axi_rdata[17]_i_10_n_0 ),
        .O(\axi_rdata[9]_i_8_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[0]),
        .Q(gray_s1[0]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[10]),
        .Q(gray_s1[10]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[11]),
        .Q(gray_s1[11]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[12]),
        .Q(gray_s1[12]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[13]),
        .Q(gray_s1[13]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[14]),
        .Q(gray_s1[14]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[15]),
        .Q(gray_s1[15]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[16]),
        .Q(gray_s1[16]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[17]),
        .Q(gray_s1[17]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[18]),
        .Q(gray_s1[18]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[19]),
        .Q(gray_s1[19]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[1]),
        .Q(gray_s1[1]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[20]),
        .Q(gray_s1[20]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[21]),
        .Q(gray_s1[21]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[22]),
        .Q(gray_s1[22]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[23]),
        .Q(gray_s1[23]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[24]),
        .Q(gray_s1[24]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[25]),
        .Q(gray_s1[25]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[26]),
        .Q(gray_s1[26]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[27]),
        .Q(gray_s1[27]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[28]),
        .Q(gray_s1[28]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[29]),
        .Q(gray_s1[29]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[2]),
        .Q(gray_s1[2]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[30]),
        .Q(gray_s1[30]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[31]),
        .Q(gray_s1[31]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[3]),
        .Q(gray_s1[3]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[4]),
        .Q(gray_s1[4]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[5]),
        .Q(gray_s1[5]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[6]),
        .Q(gray_s1[6]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[7]),
        .Q(gray_s1[7]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[8]),
        .Q(gray_s1[8]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[9]),
        .Q(gray_s1[9]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[0]),
        .Q(gray_s2[0]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[10]),
        .Q(gray_s2[10]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[11]),
        .Q(gray_s2[11]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[12]),
        .Q(gray_s2[12]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[13]),
        .Q(gray_s2[13]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[14]),
        .Q(gray_s2[14]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[15]),
        .Q(gray_s2[15]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[16]),
        .Q(gray_s2[16]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[17]),
        .Q(gray_s2[17]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[18]),
        .Q(gray_s2[18]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[19]),
        .Q(gray_s2[19]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[1]),
        .Q(gray_s2[1]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[20]),
        .Q(gray_s2[20]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[21]),
        .Q(gray_s2[21]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[22]),
        .Q(gray_s2[22]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[23]),
        .Q(gray_s2[23]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[24]),
        .Q(gray_s2[24]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[25]),
        .Q(gray_s2[25]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[26]),
        .Q(gray_s2[26]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[27]),
        .Q(gray_s2[27]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[28]),
        .Q(gray_s2[28]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[29]),
        .Q(gray_s2[29]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[2]),
        .Q(gray_s2[2]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[30]),
        .Q(gray_s2[30]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[31]),
        .Q(gray_s2[31]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[3]),
        .Q(gray_s2[3]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[4]),
        .Q(gray_s2[4]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[5]),
        .Q(gray_s2[5]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[6]),
        .Q(gray_s2[6]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[7]),
        .Q(gray_s2[7]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[8]),
        .Q(gray_s2[8]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[9]),
        .Q(gray_s2[9]),
        .R(\gray_s1_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[0]_i_1__0 
       (.I0(src_cnt[1]),
        .I1(src_cnt[0]),
        .O(\gray_src[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[10]_i_1__0 
       (.I0(src_cnt[11]),
        .I1(src_cnt[10]),
        .O(\gray_src[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[11]_i_1__0 
       (.I0(src_cnt[12]),
        .I1(src_cnt[11]),
        .O(\gray_src[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[12]_i_1__1 
       (.I0(src_cnt[13]),
        .I1(src_cnt[12]),
        .O(\gray_src[12]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[13]_i_1__0 
       (.I0(src_cnt[14]),
        .I1(src_cnt[13]),
        .O(\gray_src[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[14]_i_1__0 
       (.I0(src_cnt[15]),
        .I1(src_cnt[14]),
        .O(\gray_src[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[15]_i_1__0 
       (.I0(src_cnt[16]),
        .I1(src_cnt[15]),
        .O(\gray_src[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[16]_i_1__0 
       (.I0(src_cnt[17]),
        .I1(src_cnt[16]),
        .O(\gray_src[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[17]_i_1__0 
       (.I0(src_cnt[18]),
        .I1(src_cnt[17]),
        .O(\gray_src[17]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[18]_i_1__0 
       (.I0(src_cnt[19]),
        .I1(src_cnt[18]),
        .O(\gray_src[18]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[19]_i_1__0 
       (.I0(src_cnt[20]),
        .I1(src_cnt[19]),
        .O(\gray_src[19]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[1]_i_1__0 
       (.I0(src_cnt[2]),
        .I1(src_cnt[1]),
        .O(\gray_src[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[20]_i_1__0 
       (.I0(src_cnt[21]),
        .I1(src_cnt[20]),
        .O(\gray_src[20]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[21]_i_1__0 
       (.I0(src_cnt[22]),
        .I1(src_cnt[21]),
        .O(\gray_src[21]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[22]_i_1__0 
       (.I0(src_cnt[23]),
        .I1(src_cnt[22]),
        .O(\gray_src[22]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[23]_i_1__0 
       (.I0(src_cnt[24]),
        .I1(src_cnt[23]),
        .O(\gray_src[23]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[24]_i_1__0 
       (.I0(src_cnt[25]),
        .I1(src_cnt[24]),
        .O(\gray_src[24]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[25]_i_1__0 
       (.I0(src_cnt[26]),
        .I1(src_cnt[25]),
        .O(\gray_src[25]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[26]_i_1__0 
       (.I0(src_cnt[27]),
        .I1(src_cnt[26]),
        .O(\gray_src[26]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[27]_i_1__0 
       (.I0(src_cnt[28]),
        .I1(src_cnt[27]),
        .O(\gray_src[27]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[28]_i_1__0 
       (.I0(src_cnt[29]),
        .I1(src_cnt[28]),
        .O(\gray_src[28]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[29]_i_1__0 
       (.I0(src_cnt[30]),
        .I1(src_cnt[29]),
        .O(\gray_src[29]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[2]_i_1__0 
       (.I0(src_cnt[3]),
        .I1(src_cnt[2]),
        .O(\gray_src[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[30]_i_1__0 
       (.I0(src_cnt[31]),
        .I1(src_cnt[30]),
        .O(\gray_src[30]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[3]_i_1__0 
       (.I0(src_cnt[4]),
        .I1(src_cnt[3]),
        .O(\gray_src[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[4]_i_1__0 
       (.I0(src_cnt[5]),
        .I1(src_cnt[4]),
        .O(\gray_src[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[5]_i_1__0 
       (.I0(src_cnt[6]),
        .I1(src_cnt[5]),
        .O(\gray_src[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[6]_i_1__0 
       (.I0(src_cnt[7]),
        .I1(src_cnt[6]),
        .O(\gray_src[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[7]_i_1__0 
       (.I0(src_cnt[8]),
        .I1(src_cnt[7]),
        .O(\gray_src[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[8]_i_1__0 
       (.I0(src_cnt[9]),
        .I1(src_cnt[8]),
        .O(\gray_src[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[9]_i_1__0 
       (.I0(src_cnt[10]),
        .I1(src_cnt[9]),
        .O(\gray_src[9]_i_1__0_n_0 ));
  FDRE \gray_src_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[0]_i_1__0_n_0 ),
        .Q(gray_src[0]),
        .R(SR));
  FDRE \gray_src_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[10]_i_1__0_n_0 ),
        .Q(gray_src[10]),
        .R(SR));
  FDRE \gray_src_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[11]_i_1__0_n_0 ),
        .Q(gray_src[11]),
        .R(SR));
  FDRE \gray_src_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[12]_i_1__1_n_0 ),
        .Q(gray_src[12]),
        .R(SR));
  FDRE \gray_src_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[13]_i_1__0_n_0 ),
        .Q(gray_src[13]),
        .R(SR));
  FDRE \gray_src_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[14]_i_1__0_n_0 ),
        .Q(gray_src[14]),
        .R(SR));
  FDRE \gray_src_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[15]_i_1__0_n_0 ),
        .Q(gray_src[15]),
        .R(SR));
  FDRE \gray_src_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[16]_i_1__0_n_0 ),
        .Q(gray_src[16]),
        .R(SR));
  FDRE \gray_src_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[17]_i_1__0_n_0 ),
        .Q(gray_src[17]),
        .R(SR));
  FDRE \gray_src_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[18]_i_1__0_n_0 ),
        .Q(gray_src[18]),
        .R(SR));
  FDRE \gray_src_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[19]_i_1__0_n_0 ),
        .Q(gray_src[19]),
        .R(SR));
  FDRE \gray_src_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[1]_i_1__0_n_0 ),
        .Q(gray_src[1]),
        .R(SR));
  FDRE \gray_src_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[20]_i_1__0_n_0 ),
        .Q(gray_src[20]),
        .R(SR));
  FDRE \gray_src_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[21]_i_1__0_n_0 ),
        .Q(gray_src[21]),
        .R(SR));
  FDRE \gray_src_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[22]_i_1__0_n_0 ),
        .Q(gray_src[22]),
        .R(SR));
  FDRE \gray_src_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[23]_i_1__0_n_0 ),
        .Q(gray_src[23]),
        .R(SR));
  FDRE \gray_src_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[24]_i_1__0_n_0 ),
        .Q(gray_src[24]),
        .R(SR));
  FDRE \gray_src_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[25]_i_1__0_n_0 ),
        .Q(gray_src[25]),
        .R(SR));
  FDRE \gray_src_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[26]_i_1__0_n_0 ),
        .Q(gray_src[26]),
        .R(SR));
  FDRE \gray_src_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[27]_i_1__0_n_0 ),
        .Q(gray_src[27]),
        .R(SR));
  FDRE \gray_src_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[28]_i_1__0_n_0 ),
        .Q(gray_src[28]),
        .R(SR));
  FDRE \gray_src_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[29]_i_1__0_n_0 ),
        .Q(gray_src[29]),
        .R(SR));
  FDRE \gray_src_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[2]_i_1__0_n_0 ),
        .Q(gray_src[2]),
        .R(SR));
  FDRE \gray_src_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[30]_i_1__0_n_0 ),
        .Q(gray_src[30]),
        .R(SR));
  FDRE \gray_src_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(src_cnt[31]),
        .Q(gray_src[31]),
        .R(SR));
  FDRE \gray_src_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[3]_i_1__0_n_0 ),
        .Q(gray_src[3]),
        .R(SR));
  FDRE \gray_src_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[4]_i_1__0_n_0 ),
        .Q(gray_src[4]),
        .R(SR));
  FDRE \gray_src_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[5]_i_1__0_n_0 ),
        .Q(gray_src[5]),
        .R(SR));
  FDRE \gray_src_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[6]_i_1__0_n_0 ),
        .Q(gray_src[6]),
        .R(SR));
  FDRE \gray_src_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[7]_i_1__0_n_0 ),
        .Q(gray_src[7]),
        .R(SR));
  FDRE \gray_src_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[8]_i_1__0_n_0 ),
        .Q(gray_src[8]),
        .R(SR));
  FDRE \gray_src_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[9]_i_1__0_n_0 ),
        .Q(gray_src[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "cnt_cdc" *) 
module ps_Counter_Core_0_1_cnt_cdc__parameterized0_7
   (dst_cnt,
    \axi_araddr_reg[3] ,
    \axi_rdata_reg[4] ,
    D,
    CO,
    \axi_rdata_reg[4]_0 ,
    \axi_rdata_reg[4]_1 ,
    src_cnt,
    SR,
    CLK,
    \gray_s1_reg[0]_0 ,
    s_axi_aclk);
  output [30:0]dst_cnt;
  output \axi_araddr_reg[3] ;
  input [1:0]\axi_rdata_reg[4] ;
  input [0:0]D;
  input [0:0]CO;
  input \axi_rdata_reg[4]_0 ;
  input [0:0]\axi_rdata_reg[4]_1 ;
  input [31:0]src_cnt;
  input [0:0]SR;
  input CLK;
  input [0:0]\gray_s1_reg[0]_0 ;
  input s_axi_aclk;

  wire CLK;
  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]SR;
  wire \axi_araddr_reg[3] ;
  wire \axi_rdata[10]_i_10_n_0 ;
  wire \axi_rdata[10]_i_9_n_0 ;
  wire \axi_rdata[11]_i_10_n_0 ;
  wire \axi_rdata[11]_i_9_n_0 ;
  wire \axi_rdata[12]_i_10_n_0 ;
  wire \axi_rdata[12]_i_12_n_0 ;
  wire \axi_rdata[12]_i_9_n_0 ;
  wire \axi_rdata[13]_i_10_n_0 ;
  wire \axi_rdata[13]_i_12_n_0 ;
  wire \axi_rdata[13]_i_9_n_0 ;
  wire \axi_rdata[15]_i_7_n_0 ;
  wire \axi_rdata[16]_i_7_n_0 ;
  wire \axi_rdata[16]_i_8_n_0 ;
  wire \axi_rdata[17]_i_7_n_0 ;
  wire \axi_rdata[17]_i_8_n_0 ;
  wire \axi_rdata[18]_i_7_n_0 ;
  wire \axi_rdata[19]_i_7_n_0 ;
  wire \axi_rdata[20]_i_7_n_0 ;
  wire \axi_rdata[21]_i_7_n_0 ;
  wire \axi_rdata[22]_i_7_n_0 ;
  wire \axi_rdata[23]_i_7_n_0 ;
  wire \axi_rdata[2]_i_8_n_0 ;
  wire \axi_rdata[3]_i_8_n_0 ;
  wire \axi_rdata[4]_i_10_n_0 ;
  wire \axi_rdata[4]_i_6_n_0 ;
  wire \axi_rdata[4]_i_9_n_0 ;
  wire \axi_rdata[5]_i_10_n_0 ;
  wire \axi_rdata[5]_i_9_n_0 ;
  wire \axi_rdata[6]_i_11_n_0 ;
  wire \axi_rdata[6]_i_12_n_0 ;
  wire \axi_rdata[6]_i_13_n_0 ;
  wire \axi_rdata[6]_i_14_n_0 ;
  wire \axi_rdata[6]_i_16_n_0 ;
  wire \axi_rdata[7]_i_10_n_0 ;
  wire \axi_rdata[7]_i_11_n_0 ;
  wire \axi_rdata[7]_i_12_n_0 ;
  wire \axi_rdata[7]_i_14_n_0 ;
  wire \axi_rdata[8]_i_10_n_0 ;
  wire \axi_rdata[8]_i_9_n_0 ;
  wire \axi_rdata[9]_i_10_n_0 ;
  wire \axi_rdata[9]_i_9_n_0 ;
  wire [1:0]\axi_rdata_reg[4] ;
  wire \axi_rdata_reg[4]_0 ;
  wire [0:0]\axi_rdata_reg[4]_1 ;
  wire [29:0]\^dst_cnt ;
  (* async_reg = "true" *) wire [31:0]gray_s1;
  wire [0:0]\gray_s1_reg[0]_0 ;
  (* async_reg = "true" *) wire [31:0]gray_s2;
  wire [31:0]gray_src;
  wire \gray_src[0]_i_1_n_0 ;
  wire \gray_src[10]_i_1_n_0 ;
  wire \gray_src[11]_i_1_n_0 ;
  wire \gray_src[12]_i_1__0_n_0 ;
  wire \gray_src[13]_i_1_n_0 ;
  wire \gray_src[14]_i_1_n_0 ;
  wire \gray_src[15]_i_1_n_0 ;
  wire \gray_src[16]_i_1_n_0 ;
  wire \gray_src[17]_i_1_n_0 ;
  wire \gray_src[18]_i_1_n_0 ;
  wire \gray_src[19]_i_1_n_0 ;
  wire \gray_src[1]_i_1_n_0 ;
  wire \gray_src[20]_i_1_n_0 ;
  wire \gray_src[21]_i_1_n_0 ;
  wire \gray_src[22]_i_1_n_0 ;
  wire \gray_src[23]_i_1_n_0 ;
  wire \gray_src[24]_i_1_n_0 ;
  wire \gray_src[25]_i_1_n_0 ;
  wire \gray_src[26]_i_1_n_0 ;
  wire \gray_src[27]_i_1_n_0 ;
  wire \gray_src[28]_i_1_n_0 ;
  wire \gray_src[29]_i_1_n_0 ;
  wire \gray_src[2]_i_1_n_0 ;
  wire \gray_src[30]_i_1_n_0 ;
  wire \gray_src[3]_i_1_n_0 ;
  wire \gray_src[4]_i_1_n_0 ;
  wire \gray_src[5]_i_1_n_0 ;
  wire \gray_src[6]_i_1_n_0 ;
  wire \gray_src[7]_i_1_n_0 ;
  wire \gray_src[8]_i_1_n_0 ;
  wire \gray_src[9]_i_1_n_0 ;
  wire s_axi_aclk;
  wire [31:0]src_cnt;

  assign dst_cnt[30] = gray_s2[31];
  assign dst_cnt[29:0] = \^dst_cnt [29:0];
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[0]_i_6 
       (.I0(\^dst_cnt [15]),
        .I1(\axi_rdata[4]_i_10_n_0 ),
        .I2(gray_s2[1]),
        .I3(gray_s2[0]),
        .I4(\axi_rdata[2]_i_8_n_0 ),
        .I5(\axi_rdata[8]_i_9_n_0 ),
        .O(\^dst_cnt [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[10]_i_10 
       (.I0(gray_s2[23]),
        .I1(gray_s2[22]),
        .I2(gray_s2[25]),
        .I3(gray_s2[24]),
        .I4(\axi_rdata[18]_i_7_n_0 ),
        .O(\axi_rdata[10]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[10]_i_6 
       (.I0(\^dst_cnt [25]),
        .I1(\axi_rdata[10]_i_9_n_0 ),
        .I2(\axi_rdata[10]_i_10_n_0 ),
        .O(\^dst_cnt [9]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[10]_i_9 
       (.I0(gray_s2[15]),
        .I1(gray_s2[14]),
        .I2(gray_s2[17]),
        .I3(gray_s2[16]),
        .I4(\axi_rdata[6]_i_12_n_0 ),
        .O(\axi_rdata[10]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[11]_i_10 
       (.I0(gray_s2[24]),
        .I1(gray_s2[23]),
        .I2(gray_s2[26]),
        .I3(gray_s2[25]),
        .I4(\axi_rdata[19]_i_7_n_0 ),
        .O(\axi_rdata[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[11]_i_6 
       (.I0(\^dst_cnt [26]),
        .I1(\axi_rdata[11]_i_9_n_0 ),
        .I2(\axi_rdata[11]_i_10_n_0 ),
        .O(\^dst_cnt [10]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[11]_i_9 
       (.I0(gray_s2[16]),
        .I1(gray_s2[15]),
        .I2(gray_s2[18]),
        .I3(gray_s2[17]),
        .I4(\axi_rdata[7]_i_10_n_0 ),
        .O(\axi_rdata[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[12]_i_10 
       (.I0(gray_s2[25]),
        .I1(gray_s2[24]),
        .I2(gray_s2[27]),
        .I3(gray_s2[26]),
        .I4(\axi_rdata[20]_i_7_n_0 ),
        .O(\axi_rdata[12]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[12]_i_12 
       (.I0(gray_s2[14]),
        .I1(gray_s2[15]),
        .I2(gray_s2[12]),
        .I3(gray_s2[13]),
        .O(\axi_rdata[12]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[12]_i_6 
       (.I0(gray_s2[29]),
        .I1(gray_s2[28]),
        .I2(gray_s2[31]),
        .I3(gray_s2[30]),
        .I4(\axi_rdata[12]_i_9_n_0 ),
        .I5(\axi_rdata[12]_i_10_n_0 ),
        .O(\^dst_cnt [11]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[12]_i_9 
       (.I0(gray_s2[17]),
        .I1(gray_s2[16]),
        .I2(gray_s2[19]),
        .I3(gray_s2[18]),
        .I4(\axi_rdata[12]_i_12_n_0 ),
        .O(\axi_rdata[12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[13]_i_10 
       (.I0(gray_s2[26]),
        .I1(gray_s2[25]),
        .I2(gray_s2[28]),
        .I3(gray_s2[27]),
        .I4(\axi_rdata[21]_i_7_n_0 ),
        .O(\axi_rdata[13]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[13]_i_12 
       (.I0(gray_s2[15]),
        .I1(gray_s2[16]),
        .I2(gray_s2[13]),
        .I3(gray_s2[14]),
        .O(\axi_rdata[13]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[13]_i_6 
       (.I0(gray_s2[30]),
        .I1(gray_s2[29]),
        .I2(gray_s2[31]),
        .I3(\axi_rdata[13]_i_9_n_0 ),
        .I4(\axi_rdata[13]_i_10_n_0 ),
        .O(\^dst_cnt [12]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[13]_i_9 
       (.I0(gray_s2[18]),
        .I1(gray_s2[17]),
        .I2(gray_s2[20]),
        .I3(gray_s2[19]),
        .I4(\axi_rdata[13]_i_12_n_0 ),
        .O(\axi_rdata[13]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[14]_i_5 
       (.I0(gray_s2[30]),
        .I1(gray_s2[31]),
        .I2(\axi_rdata[6]_i_14_n_0 ),
        .I3(\axi_rdata[6]_i_11_n_0 ),
        .O(\^dst_cnt [13]));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[15]_i_5 
       (.I0(gray_s2[31]),
        .I1(\axi_rdata[7]_i_12_n_0 ),
        .I2(\axi_rdata[15]_i_7_n_0 ),
        .O(\^dst_cnt [14]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[15]_i_7 
       (.I0(gray_s2[28]),
        .I1(gray_s2[27]),
        .I2(gray_s2[30]),
        .I3(gray_s2[29]),
        .I4(\axi_rdata[23]_i_7_n_0 ),
        .O(\axi_rdata[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[16]_i_5 
       (.I0(\axi_rdata[16]_i_7_n_0 ),
        .I1(\^dst_cnt [29]),
        .I2(gray_s2[28]),
        .I3(gray_s2[29]),
        .I4(\axi_rdata[16]_i_8_n_0 ),
        .I5(\axi_rdata[20]_i_7_n_0 ),
        .O(\^dst_cnt [15]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[16]_i_7 
       (.I0(gray_s2[26]),
        .I1(gray_s2[27]),
        .I2(gray_s2[24]),
        .I3(gray_s2[25]),
        .O(\axi_rdata[16]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[16]_i_8 
       (.I0(gray_s2[18]),
        .I1(gray_s2[19]),
        .I2(gray_s2[16]),
        .I3(gray_s2[17]),
        .O(\axi_rdata[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[17]_i_5 
       (.I0(\axi_rdata[17]_i_7_n_0 ),
        .I1(gray_s2[31]),
        .I2(gray_s2[29]),
        .I3(gray_s2[30]),
        .I4(\axi_rdata[17]_i_8_n_0 ),
        .I5(\axi_rdata[21]_i_7_n_0 ),
        .O(\^dst_cnt [16]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[17]_i_7 
       (.I0(gray_s2[27]),
        .I1(gray_s2[28]),
        .I2(gray_s2[25]),
        .I3(gray_s2[26]),
        .O(\axi_rdata[17]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[17]_i_8 
       (.I0(gray_s2[19]),
        .I1(gray_s2[20]),
        .I2(gray_s2[17]),
        .I3(gray_s2[18]),
        .O(\axi_rdata[17]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[18]_i_5 
       (.I0(\^dst_cnt [25]),
        .I1(\axi_rdata[18]_i_7_n_0 ),
        .I2(gray_s2[24]),
        .I3(gray_s2[25]),
        .I4(gray_s2[22]),
        .I5(gray_s2[23]),
        .O(\^dst_cnt [17]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[18]_i_7 
       (.I0(gray_s2[20]),
        .I1(gray_s2[21]),
        .I2(gray_s2[18]),
        .I3(gray_s2[19]),
        .O(\axi_rdata[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[19]_i_5 
       (.I0(\^dst_cnt [26]),
        .I1(\axi_rdata[19]_i_7_n_0 ),
        .I2(gray_s2[25]),
        .I3(gray_s2[26]),
        .I4(gray_s2[23]),
        .I5(gray_s2[24]),
        .O(\^dst_cnt [18]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[19]_i_7 
       (.I0(gray_s2[21]),
        .I1(gray_s2[22]),
        .I2(gray_s2[19]),
        .I3(gray_s2[20]),
        .O(\axi_rdata[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[1]_i_6 
       (.I0(\^dst_cnt [16]),
        .I1(\axi_rdata[5]_i_10_n_0 ),
        .I2(gray_s2[2]),
        .I3(gray_s2[1]),
        .I4(\axi_rdata[3]_i_8_n_0 ),
        .I5(\axi_rdata[9]_i_9_n_0 ),
        .O(\^dst_cnt [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[20]_i_5 
       (.I0(\^dst_cnt [27]),
        .I1(\axi_rdata[20]_i_7_n_0 ),
        .I2(gray_s2[26]),
        .I3(gray_s2[27]),
        .I4(gray_s2[24]),
        .I5(gray_s2[25]),
        .O(\^dst_cnt [19]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[20]_i_7 
       (.I0(gray_s2[22]),
        .I1(gray_s2[23]),
        .I2(gray_s2[20]),
        .I3(gray_s2[21]),
        .O(\axi_rdata[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[21]_i_5 
       (.I0(\^dst_cnt [28]),
        .I1(\axi_rdata[21]_i_7_n_0 ),
        .I2(gray_s2[27]),
        .I3(gray_s2[28]),
        .I4(gray_s2[25]),
        .I5(gray_s2[26]),
        .O(\^dst_cnt [20]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[21]_i_7 
       (.I0(gray_s2[23]),
        .I1(gray_s2[24]),
        .I2(gray_s2[21]),
        .I3(gray_s2[22]),
        .O(\axi_rdata[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[22]_i_5 
       (.I0(\^dst_cnt [29]),
        .I1(\axi_rdata[22]_i_7_n_0 ),
        .I2(gray_s2[28]),
        .I3(gray_s2[29]),
        .I4(gray_s2[26]),
        .I5(gray_s2[27]),
        .O(\^dst_cnt [21]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[22]_i_7 
       (.I0(gray_s2[24]),
        .I1(gray_s2[25]),
        .I2(gray_s2[22]),
        .I3(gray_s2[23]),
        .O(\axi_rdata[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[23]_i_5 
       (.I0(gray_s2[31]),
        .I1(\axi_rdata[23]_i_7_n_0 ),
        .I2(gray_s2[29]),
        .I3(gray_s2[30]),
        .I4(gray_s2[27]),
        .I5(gray_s2[28]),
        .O(\^dst_cnt [22]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[23]_i_7 
       (.I0(gray_s2[25]),
        .I1(gray_s2[26]),
        .I2(gray_s2[23]),
        .I3(gray_s2[24]),
        .O(\axi_rdata[23]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[24]_i_5 
       (.I0(\^dst_cnt [27]),
        .I1(gray_s2[25]),
        .I2(gray_s2[24]),
        .I3(gray_s2[27]),
        .I4(gray_s2[26]),
        .O(\^dst_cnt [23]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[25]_i_5 
       (.I0(\^dst_cnt [28]),
        .I1(gray_s2[26]),
        .I2(gray_s2[25]),
        .I3(gray_s2[28]),
        .I4(gray_s2[27]),
        .O(\^dst_cnt [24]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[26]_i_5 
       (.I0(gray_s2[30]),
        .I1(gray_s2[31]),
        .I2(gray_s2[27]),
        .I3(gray_s2[26]),
        .I4(gray_s2[29]),
        .I5(gray_s2[28]),
        .O(\^dst_cnt [25]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[27]_i_5 
       (.I0(gray_s2[31]),
        .I1(gray_s2[28]),
        .I2(gray_s2[27]),
        .I3(gray_s2[30]),
        .I4(gray_s2[29]),
        .O(\^dst_cnt [26]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[28]_i_5 
       (.I0(gray_s2[30]),
        .I1(gray_s2[31]),
        .I2(gray_s2[28]),
        .I3(gray_s2[29]),
        .O(\^dst_cnt [27]));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[29]_i_5 
       (.I0(gray_s2[31]),
        .I1(gray_s2[29]),
        .I2(gray_s2[30]),
        .O(\^dst_cnt [28]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[2]_i_6 
       (.I0(\^dst_cnt [17]),
        .I1(\axi_rdata[6]_i_13_n_0 ),
        .I2(\axi_rdata[2]_i_8_n_0 ),
        .I3(gray_s2[5]),
        .I4(gray_s2[4]),
        .I5(\axi_rdata[10]_i_9_n_0 ),
        .O(\^dst_cnt [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[2]_i_8 
       (.I0(gray_s2[3]),
        .I1(gray_s2[2]),
        .O(\axi_rdata[2]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[30]_i_5 
       (.I0(gray_s2[31]),
        .I1(gray_s2[30]),
        .O(\^dst_cnt [29]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[3]_i_6 
       (.I0(\^dst_cnt [18]),
        .I1(\axi_rdata[7]_i_11_n_0 ),
        .I2(\axi_rdata[3]_i_8_n_0 ),
        .I3(gray_s2[6]),
        .I4(gray_s2[5]),
        .I5(\axi_rdata[11]_i_9_n_0 ),
        .O(\^dst_cnt [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[3]_i_8 
       (.I0(gray_s2[4]),
        .I1(gray_s2[3]),
        .O(\axi_rdata[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[4]_i_10 
       (.I0(gray_s2[6]),
        .I1(gray_s2[7]),
        .I2(gray_s2[4]),
        .I3(gray_s2[5]),
        .O(\axi_rdata[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \axi_rdata[4]_i_4 
       (.I0(\axi_rdata[4]_i_6_n_0 ),
        .I1(\axi_rdata_reg[4] [1]),
        .I2(CO),
        .I3(\axi_rdata_reg[4]_0 ),
        .I4(\axi_rdata_reg[4] [0]),
        .I5(\axi_rdata_reg[4]_1 ),
        .O(\axi_araddr_reg[3] ));
  LUT6 #(
    .INIT(64'h6996FFFF69960000)) 
    \axi_rdata[4]_i_6 
       (.I0(\^dst_cnt [19]),
        .I1(\axi_rdata[4]_i_9_n_0 ),
        .I2(\axi_rdata[4]_i_10_n_0 ),
        .I3(\axi_rdata[12]_i_9_n_0 ),
        .I4(\axi_rdata_reg[4] [0]),
        .I5(D),
        .O(\axi_rdata[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[4]_i_9 
       (.I0(gray_s2[10]),
        .I1(gray_s2[11]),
        .I2(gray_s2[8]),
        .I3(gray_s2[9]),
        .O(\axi_rdata[4]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[5]_i_10 
       (.I0(gray_s2[7]),
        .I1(gray_s2[8]),
        .I2(gray_s2[5]),
        .I3(gray_s2[6]),
        .O(\axi_rdata[5]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[5]_i_6 
       (.I0(\^dst_cnt [20]),
        .I1(\axi_rdata[5]_i_9_n_0 ),
        .I2(\axi_rdata[5]_i_10_n_0 ),
        .I3(\axi_rdata[13]_i_9_n_0 ),
        .O(\^dst_cnt [4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[5]_i_9 
       (.I0(gray_s2[11]),
        .I1(gray_s2[12]),
        .I2(gray_s2[9]),
        .I3(gray_s2[10]),
        .O(\axi_rdata[5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[6]_i_11 
       (.I0(gray_s2[27]),
        .I1(gray_s2[26]),
        .I2(gray_s2[29]),
        .I3(gray_s2[28]),
        .I4(\axi_rdata[22]_i_7_n_0 ),
        .O(\axi_rdata[6]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[6]_i_12 
       (.I0(gray_s2[12]),
        .I1(gray_s2[13]),
        .I2(gray_s2[10]),
        .I3(gray_s2[11]),
        .O(\axi_rdata[6]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[6]_i_13 
       (.I0(gray_s2[8]),
        .I1(gray_s2[9]),
        .I2(gray_s2[6]),
        .I3(gray_s2[7]),
        .O(\axi_rdata[6]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[6]_i_14 
       (.I0(gray_s2[19]),
        .I1(gray_s2[18]),
        .I2(gray_s2[21]),
        .I3(gray_s2[20]),
        .I4(\axi_rdata[6]_i_16_n_0 ),
        .O(\axi_rdata[6]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[6]_i_16 
       (.I0(gray_s2[16]),
        .I1(gray_s2[17]),
        .I2(gray_s2[14]),
        .I3(gray_s2[15]),
        .O(\axi_rdata[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[6]_i_6 
       (.I0(\axi_rdata[6]_i_11_n_0 ),
        .I1(gray_s2[31]),
        .I2(gray_s2[30]),
        .I3(\axi_rdata[6]_i_12_n_0 ),
        .I4(\axi_rdata[6]_i_13_n_0 ),
        .I5(\axi_rdata[6]_i_14_n_0 ),
        .O(\^dst_cnt [5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[7]_i_10 
       (.I0(gray_s2[13]),
        .I1(gray_s2[14]),
        .I2(gray_s2[11]),
        .I3(gray_s2[12]),
        .O(\axi_rdata[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[7]_i_11 
       (.I0(gray_s2[9]),
        .I1(gray_s2[10]),
        .I2(gray_s2[7]),
        .I3(gray_s2[8]),
        .O(\axi_rdata[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[7]_i_12 
       (.I0(gray_s2[20]),
        .I1(gray_s2[19]),
        .I2(gray_s2[22]),
        .I3(gray_s2[21]),
        .I4(\axi_rdata[7]_i_14_n_0 ),
        .O(\axi_rdata[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[7]_i_14 
       (.I0(gray_s2[17]),
        .I1(gray_s2[18]),
        .I2(gray_s2[15]),
        .I3(gray_s2[16]),
        .O(\axi_rdata[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[7]_i_6 
       (.I0(\^dst_cnt [22]),
        .I1(\axi_rdata[7]_i_10_n_0 ),
        .I2(\axi_rdata[7]_i_11_n_0 ),
        .I3(\axi_rdata[7]_i_12_n_0 ),
        .O(\^dst_cnt [6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[8]_i_10 
       (.I0(gray_s2[21]),
        .I1(gray_s2[20]),
        .I2(gray_s2[23]),
        .I3(gray_s2[22]),
        .I4(\axi_rdata[16]_i_8_n_0 ),
        .O(\axi_rdata[8]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[8]_i_6 
       (.I0(\^dst_cnt [23]),
        .I1(\axi_rdata[8]_i_9_n_0 ),
        .I2(\axi_rdata[8]_i_10_n_0 ),
        .O(\^dst_cnt [7]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[8]_i_9 
       (.I0(gray_s2[13]),
        .I1(gray_s2[12]),
        .I2(gray_s2[15]),
        .I3(gray_s2[14]),
        .I4(\axi_rdata[4]_i_9_n_0 ),
        .O(\axi_rdata[8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[9]_i_10 
       (.I0(gray_s2[22]),
        .I1(gray_s2[21]),
        .I2(gray_s2[24]),
        .I3(gray_s2[23]),
        .I4(\axi_rdata[17]_i_8_n_0 ),
        .O(\axi_rdata[9]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[9]_i_6 
       (.I0(\^dst_cnt [24]),
        .I1(\axi_rdata[9]_i_9_n_0 ),
        .I2(\axi_rdata[9]_i_10_n_0 ),
        .O(\^dst_cnt [8]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[9]_i_9 
       (.I0(gray_s2[14]),
        .I1(gray_s2[13]),
        .I2(gray_s2[16]),
        .I3(gray_s2[15]),
        .I4(\axi_rdata[5]_i_9_n_0 ),
        .O(\axi_rdata[9]_i_9_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[0]),
        .Q(gray_s1[0]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[10]),
        .Q(gray_s1[10]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[11]),
        .Q(gray_s1[11]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[12]),
        .Q(gray_s1[12]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[13]),
        .Q(gray_s1[13]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[14]),
        .Q(gray_s1[14]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[15]),
        .Q(gray_s1[15]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[16]),
        .Q(gray_s1[16]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[17]),
        .Q(gray_s1[17]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[18]),
        .Q(gray_s1[18]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[19]),
        .Q(gray_s1[19]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[1]),
        .Q(gray_s1[1]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[20]),
        .Q(gray_s1[20]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[21]),
        .Q(gray_s1[21]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[22]),
        .Q(gray_s1[22]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[23]),
        .Q(gray_s1[23]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[24]),
        .Q(gray_s1[24]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[25]),
        .Q(gray_s1[25]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[26]),
        .Q(gray_s1[26]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[27]),
        .Q(gray_s1[27]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[28]),
        .Q(gray_s1[28]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[29]),
        .Q(gray_s1[29]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[2]),
        .Q(gray_s1[2]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[30]),
        .Q(gray_s1[30]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[31]),
        .Q(gray_s1[31]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[3]),
        .Q(gray_s1[3]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[4]),
        .Q(gray_s1[4]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[5]),
        .Q(gray_s1[5]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[6]),
        .Q(gray_s1[6]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[7]),
        .Q(gray_s1[7]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[8]),
        .Q(gray_s1[8]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[9]),
        .Q(gray_s1[9]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[0]),
        .Q(gray_s2[0]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[10]),
        .Q(gray_s2[10]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[11]),
        .Q(gray_s2[11]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[12]),
        .Q(gray_s2[12]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[13]),
        .Q(gray_s2[13]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[14]),
        .Q(gray_s2[14]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[15]),
        .Q(gray_s2[15]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[16]),
        .Q(gray_s2[16]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[17]),
        .Q(gray_s2[17]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[18]),
        .Q(gray_s2[18]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[19]),
        .Q(gray_s2[19]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[1]),
        .Q(gray_s2[1]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[20]),
        .Q(gray_s2[20]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[21]),
        .Q(gray_s2[21]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[22]),
        .Q(gray_s2[22]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[23]),
        .Q(gray_s2[23]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[24]),
        .Q(gray_s2[24]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[25]),
        .Q(gray_s2[25]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[26]),
        .Q(gray_s2[26]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[27]),
        .Q(gray_s2[27]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[28]),
        .Q(gray_s2[28]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[29]),
        .Q(gray_s2[29]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[2]),
        .Q(gray_s2[2]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[30]),
        .Q(gray_s2[30]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[31]),
        .Q(gray_s2[31]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[3]),
        .Q(gray_s2[3]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[4]),
        .Q(gray_s2[4]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[5]),
        .Q(gray_s2[5]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[6]),
        .Q(gray_s2[6]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[7]),
        .Q(gray_s2[7]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[8]),
        .Q(gray_s2[8]),
        .R(\gray_s1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[9]),
        .Q(gray_s2[9]),
        .R(\gray_s1_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[0]_i_1 
       (.I0(src_cnt[1]),
        .I1(src_cnt[0]),
        .O(\gray_src[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[10]_i_1 
       (.I0(src_cnt[11]),
        .I1(src_cnt[10]),
        .O(\gray_src[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[11]_i_1 
       (.I0(src_cnt[12]),
        .I1(src_cnt[11]),
        .O(\gray_src[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[12]_i_1__0 
       (.I0(src_cnt[13]),
        .I1(src_cnt[12]),
        .O(\gray_src[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[13]_i_1 
       (.I0(src_cnt[14]),
        .I1(src_cnt[13]),
        .O(\gray_src[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[14]_i_1 
       (.I0(src_cnt[15]),
        .I1(src_cnt[14]),
        .O(\gray_src[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[15]_i_1 
       (.I0(src_cnt[16]),
        .I1(src_cnt[15]),
        .O(\gray_src[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[16]_i_1 
       (.I0(src_cnt[17]),
        .I1(src_cnt[16]),
        .O(\gray_src[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[17]_i_1 
       (.I0(src_cnt[18]),
        .I1(src_cnt[17]),
        .O(\gray_src[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[18]_i_1 
       (.I0(src_cnt[19]),
        .I1(src_cnt[18]),
        .O(\gray_src[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[19]_i_1 
       (.I0(src_cnt[20]),
        .I1(src_cnt[19]),
        .O(\gray_src[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[1]_i_1 
       (.I0(src_cnt[2]),
        .I1(src_cnt[1]),
        .O(\gray_src[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[20]_i_1 
       (.I0(src_cnt[21]),
        .I1(src_cnt[20]),
        .O(\gray_src[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[21]_i_1 
       (.I0(src_cnt[22]),
        .I1(src_cnt[21]),
        .O(\gray_src[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[22]_i_1 
       (.I0(src_cnt[23]),
        .I1(src_cnt[22]),
        .O(\gray_src[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[23]_i_1 
       (.I0(src_cnt[24]),
        .I1(src_cnt[23]),
        .O(\gray_src[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[24]_i_1 
       (.I0(src_cnt[25]),
        .I1(src_cnt[24]),
        .O(\gray_src[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[25]_i_1 
       (.I0(src_cnt[26]),
        .I1(src_cnt[25]),
        .O(\gray_src[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[26]_i_1 
       (.I0(src_cnt[27]),
        .I1(src_cnt[26]),
        .O(\gray_src[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[27]_i_1 
       (.I0(src_cnt[28]),
        .I1(src_cnt[27]),
        .O(\gray_src[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[28]_i_1 
       (.I0(src_cnt[29]),
        .I1(src_cnt[28]),
        .O(\gray_src[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[29]_i_1 
       (.I0(src_cnt[30]),
        .I1(src_cnt[29]),
        .O(\gray_src[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[2]_i_1 
       (.I0(src_cnt[3]),
        .I1(src_cnt[2]),
        .O(\gray_src[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[30]_i_1 
       (.I0(src_cnt[31]),
        .I1(src_cnt[30]),
        .O(\gray_src[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[3]_i_1 
       (.I0(src_cnt[4]),
        .I1(src_cnt[3]),
        .O(\gray_src[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[4]_i_1 
       (.I0(src_cnt[5]),
        .I1(src_cnt[4]),
        .O(\gray_src[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[5]_i_1 
       (.I0(src_cnt[6]),
        .I1(src_cnt[5]),
        .O(\gray_src[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[6]_i_1 
       (.I0(src_cnt[7]),
        .I1(src_cnt[6]),
        .O(\gray_src[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[7]_i_1 
       (.I0(src_cnt[8]),
        .I1(src_cnt[7]),
        .O(\gray_src[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[8]_i_1 
       (.I0(src_cnt[9]),
        .I1(src_cnt[8]),
        .O(\gray_src[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[9]_i_1 
       (.I0(src_cnt[10]),
        .I1(src_cnt[9]),
        .O(\gray_src[9]_i_1_n_0 ));
  FDRE \gray_src_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[0]_i_1_n_0 ),
        .Q(gray_src[0]),
        .R(SR));
  FDRE \gray_src_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[10]_i_1_n_0 ),
        .Q(gray_src[10]),
        .R(SR));
  FDRE \gray_src_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[11]_i_1_n_0 ),
        .Q(gray_src[11]),
        .R(SR));
  FDRE \gray_src_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[12]_i_1__0_n_0 ),
        .Q(gray_src[12]),
        .R(SR));
  FDRE \gray_src_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[13]_i_1_n_0 ),
        .Q(gray_src[13]),
        .R(SR));
  FDRE \gray_src_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[14]_i_1_n_0 ),
        .Q(gray_src[14]),
        .R(SR));
  FDRE \gray_src_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[15]_i_1_n_0 ),
        .Q(gray_src[15]),
        .R(SR));
  FDRE \gray_src_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[16]_i_1_n_0 ),
        .Q(gray_src[16]),
        .R(SR));
  FDRE \gray_src_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[17]_i_1_n_0 ),
        .Q(gray_src[17]),
        .R(SR));
  FDRE \gray_src_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[18]_i_1_n_0 ),
        .Q(gray_src[18]),
        .R(SR));
  FDRE \gray_src_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[19]_i_1_n_0 ),
        .Q(gray_src[19]),
        .R(SR));
  FDRE \gray_src_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[1]_i_1_n_0 ),
        .Q(gray_src[1]),
        .R(SR));
  FDRE \gray_src_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[20]_i_1_n_0 ),
        .Q(gray_src[20]),
        .R(SR));
  FDRE \gray_src_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[21]_i_1_n_0 ),
        .Q(gray_src[21]),
        .R(SR));
  FDRE \gray_src_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[22]_i_1_n_0 ),
        .Q(gray_src[22]),
        .R(SR));
  FDRE \gray_src_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[23]_i_1_n_0 ),
        .Q(gray_src[23]),
        .R(SR));
  FDRE \gray_src_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[24]_i_1_n_0 ),
        .Q(gray_src[24]),
        .R(SR));
  FDRE \gray_src_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[25]_i_1_n_0 ),
        .Q(gray_src[25]),
        .R(SR));
  FDRE \gray_src_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[26]_i_1_n_0 ),
        .Q(gray_src[26]),
        .R(SR));
  FDRE \gray_src_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[27]_i_1_n_0 ),
        .Q(gray_src[27]),
        .R(SR));
  FDRE \gray_src_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[28]_i_1_n_0 ),
        .Q(gray_src[28]),
        .R(SR));
  FDRE \gray_src_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[29]_i_1_n_0 ),
        .Q(gray_src[29]),
        .R(SR));
  FDRE \gray_src_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[2]_i_1_n_0 ),
        .Q(gray_src[2]),
        .R(SR));
  FDRE \gray_src_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[30]_i_1_n_0 ),
        .Q(gray_src[30]),
        .R(SR));
  FDRE \gray_src_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(src_cnt[31]),
        .Q(gray_src[31]),
        .R(SR));
  FDRE \gray_src_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[3]_i_1_n_0 ),
        .Q(gray_src[3]),
        .R(SR));
  FDRE \gray_src_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[4]_i_1_n_0 ),
        .Q(gray_src[4]),
        .R(SR));
  FDRE \gray_src_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[5]_i_1_n_0 ),
        .Q(gray_src[5]),
        .R(SR));
  FDRE \gray_src_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[6]_i_1_n_0 ),
        .Q(gray_src[6]),
        .R(SR));
  FDRE \gray_src_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[7]_i_1_n_0 ),
        .Q(gray_src[7]),
        .R(SR));
  FDRE \gray_src_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[8]_i_1_n_0 ),
        .Q(gray_src[8]),
        .R(SR));
  FDRE \gray_src_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gray_src[9]_i_1_n_0 ),
        .Q(gray_src[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "counter_core" *) 
module ps_Counter_Core_0_1_counter_core
   (out,
    \sync_reg[1] ,
    \sync_reg[1]_0 ,
    \sync_reg[1]_1 ,
    m_axis_tlast,
    out_valid_reg,
    CO,
    fifo_level,
    dst_cnt,
    \eq_test_reg[0] ,
    \eq_test_reg[1] ,
    \eq_test_reg[2] ,
    \eq_test_reg[3] ,
    \axi_araddr_reg[3] ,
    \eq_test_reg[4] ,
    \eq_test_reg[5] ,
    \eq_test_reg[6] ,
    \eq_test_reg[7] ,
    \eq_test_reg[8] ,
    \eq_test_reg[9] ,
    \eq_test_reg[10] ,
    \eq_test_reg[11] ,
    \eq_test_reg[12] ,
    \eq_test_reg[13] ,
    \eq_test_reg[14] ,
    \eq_test_reg[15] ,
    \eq_test_reg[16] ,
    \eq_test_reg[17] ,
    \eq_test_reg[18] ,
    \eq_test_reg[19] ,
    \eq_test_reg[20] ,
    \eq_test_reg[21] ,
    \eq_test_reg[22] ,
    \eq_test_reg[23] ,
    \eq_test_reg[24] ,
    \eq_test_reg[25] ,
    \eq_test_reg[26] ,
    \eq_test_reg[27] ,
    \eq_test_reg[28] ,
    \eq_test_reg[29] ,
    \eq_test_reg[30] ,
    \eq_test_reg[31] ,
    m_axis_tdata,
    Q,
    \tdc_test_fall_reg[5] ,
    clk_fx,
    CLK,
    pop_is_last,
    s_axi_aclk,
    \axi_rdata_reg[4] ,
    pkt_bounded__14,
    m_axis_tready,
    pop_is_last1,
    pop_limit_hit0_carry__0,
    \gate_cnt_reg[31] ,
    \axi_rdata_reg[4]_0 ,
    D,
    \sync_reg[2] ,
    \sync_reg[0] );
  output [0:0]out;
  output [0:0]\sync_reg[1] ;
  output [0:0]\sync_reg[1]_0 ;
  output [0:0]\sync_reg[1]_1 ;
  output m_axis_tlast;
  output out_valid_reg;
  output [0:0]CO;
  output [12:0]fifo_level;
  output [30:0]dst_cnt;
  output \eq_test_reg[0] ;
  output \eq_test_reg[1] ;
  output \eq_test_reg[2] ;
  output \eq_test_reg[3] ;
  output \axi_araddr_reg[3] ;
  output \eq_test_reg[4] ;
  output \eq_test_reg[5] ;
  output \eq_test_reg[6] ;
  output \eq_test_reg[7] ;
  output \eq_test_reg[8] ;
  output \eq_test_reg[9] ;
  output \eq_test_reg[10] ;
  output \eq_test_reg[11] ;
  output \eq_test_reg[12] ;
  output \eq_test_reg[13] ;
  output \eq_test_reg[14] ;
  output \eq_test_reg[15] ;
  output \eq_test_reg[16] ;
  output \eq_test_reg[17] ;
  output \eq_test_reg[18] ;
  output \eq_test_reg[19] ;
  output \eq_test_reg[20] ;
  output \eq_test_reg[21] ;
  output \eq_test_reg[22] ;
  output \eq_test_reg[23] ;
  output \eq_test_reg[24] ;
  output \eq_test_reg[25] ;
  output \eq_test_reg[26] ;
  output \eq_test_reg[27] ;
  output \eq_test_reg[28] ;
  output \eq_test_reg[29] ;
  output \eq_test_reg[30] ;
  output \eq_test_reg[31] ;
  output [63:0]m_axis_tdata;
  output [5:0]Q;
  output [5:0]\tdc_test_fall_reg[5] ;
  input clk_fx;
  input CLK;
  input pop_is_last;
  input s_axi_aclk;
  input [2:0]\axi_rdata_reg[4] ;
  input pkt_bounded__14;
  input m_axis_tready;
  input [14:0]pop_is_last1;
  input [15:0]pop_limit_hit0_carry__0;
  input [31:0]\gate_cnt_reg[31] ;
  input [1:0]\axi_rdata_reg[4]_0 ;
  input [31:0]D;
  input \sync_reg[2] ;
  input \sync_reg[0] ;

  wire CLK;
  wire [0:0]CO;
  wire [31:0]D;
  wire [5:0]Q;
  wire \axi_araddr_reg[3] ;
  wire [2:0]\axi_rdata_reg[4] ;
  wire [1:0]\axi_rdata_reg[4]_0 ;
  wire clk_fx;
  wire [30:0]dst_cnt;
  wire eq_start_fs;
  wire \eq_test_reg[0] ;
  wire \eq_test_reg[10] ;
  wire \eq_test_reg[11] ;
  wire \eq_test_reg[12] ;
  wire \eq_test_reg[13] ;
  wire \eq_test_reg[14] ;
  wire \eq_test_reg[15] ;
  wire \eq_test_reg[16] ;
  wire \eq_test_reg[17] ;
  wire \eq_test_reg[18] ;
  wire \eq_test_reg[19] ;
  wire \eq_test_reg[1] ;
  wire \eq_test_reg[20] ;
  wire \eq_test_reg[21] ;
  wire \eq_test_reg[22] ;
  wire \eq_test_reg[23] ;
  wire \eq_test_reg[24] ;
  wire \eq_test_reg[25] ;
  wire \eq_test_reg[26] ;
  wire \eq_test_reg[27] ;
  wire \eq_test_reg[28] ;
  wire \eq_test_reg[29] ;
  wire \eq_test_reg[2] ;
  wire \eq_test_reg[30] ;
  wire \eq_test_reg[31] ;
  wire \eq_test_reg[3] ;
  wire \eq_test_reg[4] ;
  wire \eq_test_reg[5] ;
  wire \eq_test_reg[6] ;
  wire \eq_test_reg[7] ;
  wire \eq_test_reg[8] ;
  wire \eq_test_reg[9] ;
  wire [12:0]fifo_level;
  wire [31:0]\gate_cnt_reg[31] ;
  wire [31:0]lost_count;
  wire [63:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]out;
  wire out_valid_reg;
  wire pkt_bounded__14;
  wire pop_is_last;
  wire [14:0]pop_is_last1;
  wire [15:0]pop_limit_hit0_carry__0;
  wire rst_fs_n;
  wire rst_fx_n;
  wire s_axi_aclk;
  wire \sync_reg[0] ;
  wire [0:0]\sync_reg[1] ;
  wire [0:0]\sync_reg[1]_0 ;
  wire [0:0]\sync_reg[1]_1 ;
  wire \sync_reg[2] ;
  wire [5:0]\tdc_test_fall_reg[5] ;
  wire ts_en_d;
  wire ts_en_fs;
  wire ts_rst_fs_n;
  wire ts_start;
  wire \u_rd_ptr_cdc/p_0_in__0 ;
  wire u_rst_ax_n_0;
  wire u_rst_fs_n_1;
  wire u_rst_fx_n_1;
  wire \u_ts_cnt_cdc/p_0_in__0 ;
  wire u_ts_rst_ax_n_0;

  ps_Counter_Core_0_1_eq_counter u_eq_counter
       (.CLK(CLK),
        .Q(Q),
        .SR(u_rst_fx_n_1),
        .\axi_rdata_reg[13] (\axi_rdata_reg[4]_0 ),
        .clk_fx(clk_fx),
        .done_fs_reg_0(rst_fs_n),
        .dst_cnt(lost_count),
        .\eq_test_reg[0]_0 (\eq_test_reg[0] ),
        .\eq_test_reg[10]_0 (\eq_test_reg[10] ),
        .\eq_test_reg[11]_0 (\eq_test_reg[11] ),
        .\eq_test_reg[12]_0 (\eq_test_reg[12] ),
        .\eq_test_reg[13]_0 (\eq_test_reg[13] ),
        .\eq_test_reg[14]_0 (\eq_test_reg[14] ),
        .\eq_test_reg[15]_0 (\eq_test_reg[15] ),
        .\eq_test_reg[16]_0 (\eq_test_reg[16] ),
        .\eq_test_reg[17]_0 (\eq_test_reg[17] ),
        .\eq_test_reg[18]_0 (\eq_test_reg[18] ),
        .\eq_test_reg[19]_0 (\eq_test_reg[19] ),
        .\eq_test_reg[1]_0 (\eq_test_reg[1] ),
        .\eq_test_reg[20]_0 (\eq_test_reg[20] ),
        .\eq_test_reg[21]_0 (\eq_test_reg[21] ),
        .\eq_test_reg[22]_0 (\eq_test_reg[22] ),
        .\eq_test_reg[23]_0 (\eq_test_reg[23] ),
        .\eq_test_reg[24]_0 (\eq_test_reg[24] ),
        .\eq_test_reg[25]_0 (\eq_test_reg[25] ),
        .\eq_test_reg[26]_0 (\eq_test_reg[26] ),
        .\eq_test_reg[27]_0 (\eq_test_reg[27] ),
        .\eq_test_reg[28]_0 (\eq_test_reg[28] ),
        .\eq_test_reg[29]_0 (\eq_test_reg[29] ),
        .\eq_test_reg[2]_0 (\eq_test_reg[2] ),
        .\eq_test_reg[30]_0 (\eq_test_reg[30] ),
        .\eq_test_reg[31]_0 (\eq_test_reg[31] ),
        .\eq_test_reg[3]_0 (\eq_test_reg[3] ),
        .\eq_test_reg[4]_0 (\eq_test_reg[4] ),
        .\eq_test_reg[5]_0 (\eq_test_reg[5] ),
        .\eq_test_reg[6]_0 (\eq_test_reg[6] ),
        .\eq_test_reg[7]_0 (\eq_test_reg[7] ),
        .\eq_test_reg[8]_0 (\eq_test_reg[8] ),
        .\eq_test_reg[9]_0 (\eq_test_reg[9] ),
        .\gate_cnt_reg[31]_0 (u_rst_fs_n_1),
        .\gate_cnt_reg[31]_1 (\gate_cnt_reg[31] ),
        .out(eq_start_fs),
        .s_axi_aclk(s_axi_aclk),
        .\sync_reg[1] (\sync_reg[1]_0 ),
        .\sync_reg[1]_0 (\sync_reg[1]_1 ),
        .\sync_reg[1]_1 (u_rst_ax_n_0),
        .\tdc_test_fall_reg[5]_0 (\tdc_test_fall_reg[5] ),
        .\test_cnt_reg[31]_0 (rst_fx_n));
  ps_Counter_Core_0_1_bit_sync u_eq_start_sync
       (.CLK(CLK),
        .SR(u_rst_fs_n_1),
        .out(eq_start_fs),
        .\sync_reg[0]_0 (\axi_rdata_reg[4] [1]));
  ps_Counter_Core_0_1_rst_sync u_rst_ax
       (.s_axi_aclk(s_axi_aclk),
        .\sync_reg[1]_0 (\sync_reg[2] ),
        .\sync_reg[2]_0 (u_rst_ax_n_0));
  ps_Counter_Core_0_1_rst_sync_0 u_rst_fs
       (.CLK(CLK),
        .SR(u_rst_fs_n_1),
        .out(rst_fs_n),
        .\sync_reg[2]_0 (\sync_reg[2] ));
  ps_Counter_Core_0_1_rst_sync_1 u_rst_fx
       (.SR(u_rst_fx_n_1),
        .clk_fx(clk_fx),
        .out(rst_fx_n),
        .\sync_reg[2]_0 (\sync_reg[2] ));
  ps_Counter_Core_0_1_bit_sync_2 u_ts_en_sync
       (.CLK(CLK),
        .E(ts_start),
        .SR(\u_ts_cnt_cdc/p_0_in__0 ),
        .out(ts_en_fs),
        .\sync_reg[0]_0 (\axi_rdata_reg[4] [0]),
        .ts_en_d(ts_en_d));
  ps_Counter_Core_0_1_ts_engine u_ts_engine
       (.CLK(CLK),
        .CO(CO),
        .D(D),
        .E(ts_start),
        .SR(\u_ts_cnt_cdc/p_0_in__0 ),
        .\axi_araddr_reg[3] (\axi_araddr_reg[3] ),
        .\axi_rdata_reg[4] ({\axi_rdata_reg[4] [2],\axi_rdata_reg[4] [0]}),
        .\axi_rdata_reg[4]_0 (\axi_rdata_reg[4]_0 ),
        .clk_fx(clk_fx),
        .dst_cnt(dst_cnt),
        .fifo_level(fifo_level),
        .\gray_s1_reg[0] (\u_rd_ptr_cdc/p_0_in__0 ),
        .\gray_s2_reg[31] (lost_count),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .out(ts_en_fs),
        .out_valid_reg_0(out_valid_reg),
        .pkt_bounded__14(pkt_bounded__14),
        .\pop_cnt_reg[15]_0 (u_ts_rst_ax_n_0),
        .pop_is_last(pop_is_last),
        .pop_is_last1(pop_is_last1),
        .pop_limit_hit0_carry__0_0(pop_limit_hit0_carry__0),
        .s_axi_aclk(s_axi_aclk),
        .\skip_cnt_reg[31]_0 (ts_rst_fs_n),
        .\sync_reg[1] (\sync_reg[1] ),
        .ts_en_d(ts_en_d));
  ps_Counter_Core_0_1_rst_sync_3 u_ts_rst_ax
       (.SR(\u_rd_ptr_cdc/p_0_in__0 ),
        .\pop_cnt_reg[15] (\axi_rdata_reg[4] [0]),
        .s_axi_aclk(s_axi_aclk),
        .\sync_reg[2]_0 (u_ts_rst_ax_n_0),
        .\sync_reg[2]_1 (\sync_reg[0] ));
  ps_Counter_Core_0_1_rst_sync_4 u_ts_rst_fs
       (.CLK(CLK),
        .SR(\u_ts_cnt_cdc/p_0_in__0 ),
        .out(ts_rst_fs_n),
        .\sync_reg[0]_0 (\sync_reg[0] ));
  ps_Counter_Core_0_1_bit_sync_5 u_ts_run_sync
       (.D(ts_en_fs),
        .SR(\u_rd_ptr_cdc/p_0_in__0 ),
        .out(out),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "eq_counter" *) 
module ps_Counter_Core_0_1_eq_counter
   (\sync_reg[1] ,
    \sync_reg[1]_0 ,
    \eq_test_reg[0]_0 ,
    \eq_test_reg[1]_0 ,
    \eq_test_reg[2]_0 ,
    \eq_test_reg[3]_0 ,
    \eq_test_reg[4]_0 ,
    \eq_test_reg[5]_0 ,
    \eq_test_reg[6]_0 ,
    \eq_test_reg[7]_0 ,
    \eq_test_reg[8]_0 ,
    \eq_test_reg[9]_0 ,
    \eq_test_reg[10]_0 ,
    \eq_test_reg[11]_0 ,
    \eq_test_reg[12]_0 ,
    \eq_test_reg[13]_0 ,
    \eq_test_reg[14]_0 ,
    \eq_test_reg[15]_0 ,
    \eq_test_reg[16]_0 ,
    \eq_test_reg[17]_0 ,
    \eq_test_reg[18]_0 ,
    \eq_test_reg[19]_0 ,
    \eq_test_reg[20]_0 ,
    \eq_test_reg[21]_0 ,
    \eq_test_reg[22]_0 ,
    \eq_test_reg[23]_0 ,
    \eq_test_reg[24]_0 ,
    \eq_test_reg[25]_0 ,
    \eq_test_reg[26]_0 ,
    \eq_test_reg[27]_0 ,
    \eq_test_reg[28]_0 ,
    \eq_test_reg[29]_0 ,
    \eq_test_reg[30]_0 ,
    \eq_test_reg[31]_0 ,
    Q,
    \tdc_test_fall_reg[5]_0 ,
    SR,
    clk_fx,
    \gate_cnt_reg[31]_0 ,
    out,
    CLK,
    done_fs_reg_0,
    \gate_cnt_reg[31]_1 ,
    \test_cnt_reg[31]_0 ,
    \axi_rdata_reg[13] ,
    dst_cnt,
    \sync_reg[1]_1 ,
    s_axi_aclk);
  output [0:0]\sync_reg[1] ;
  output [0:0]\sync_reg[1]_0 ;
  output \eq_test_reg[0]_0 ;
  output \eq_test_reg[1]_0 ;
  output \eq_test_reg[2]_0 ;
  output \eq_test_reg[3]_0 ;
  output \eq_test_reg[4]_0 ;
  output \eq_test_reg[5]_0 ;
  output \eq_test_reg[6]_0 ;
  output \eq_test_reg[7]_0 ;
  output \eq_test_reg[8]_0 ;
  output \eq_test_reg[9]_0 ;
  output \eq_test_reg[10]_0 ;
  output \eq_test_reg[11]_0 ;
  output \eq_test_reg[12]_0 ;
  output \eq_test_reg[13]_0 ;
  output \eq_test_reg[14]_0 ;
  output \eq_test_reg[15]_0 ;
  output \eq_test_reg[16]_0 ;
  output \eq_test_reg[17]_0 ;
  output \eq_test_reg[18]_0 ;
  output \eq_test_reg[19]_0 ;
  output \eq_test_reg[20]_0 ;
  output \eq_test_reg[21]_0 ;
  output \eq_test_reg[22]_0 ;
  output \eq_test_reg[23]_0 ;
  output \eq_test_reg[24]_0 ;
  output \eq_test_reg[25]_0 ;
  output \eq_test_reg[26]_0 ;
  output \eq_test_reg[27]_0 ;
  output \eq_test_reg[28]_0 ;
  output \eq_test_reg[29]_0 ;
  output \eq_test_reg[30]_0 ;
  output \eq_test_reg[31]_0 ;
  output [5:0]Q;
  output [5:0]\tdc_test_fall_reg[5]_0 ;
  input [0:0]SR;
  input clk_fx;
  input [0:0]\gate_cnt_reg[31]_0 ;
  input [0:0]out;
  input CLK;
  input [0:0]done_fs_reg_0;
  input [31:0]\gate_cnt_reg[31]_1 ;
  input [0:0]\test_cnt_reg[31]_0 ;
  input [1:0]\axi_rdata_reg[13] ;
  input [31:0]dst_cnt;
  input [0:0]\sync_reg[1]_1 ;
  input s_axi_aclk;

  wire CLK;
  wire [5:0]Q;
  wire [0:0]SR;
  wire [1:0]\axi_rdata_reg[13] ;
  wire busy;
  wire busy_i_1_n_0;
  wire clk_fx;
  wire done_fs;
  wire done_fs_0;
  wire done_fs_i_1_n_0;
  wire [0:0]done_fs_reg_0;
  wire [31:0]dst_cnt;
  wire [31:0]eq_stand;
  wire eq_start_d;
  wire [31:0]eq_test;
  wire \eq_test_reg[0]_0 ;
  wire \eq_test_reg[10]_0 ;
  wire \eq_test_reg[11]_0 ;
  wire \eq_test_reg[12]_0 ;
  wire \eq_test_reg[13]_0 ;
  wire \eq_test_reg[14]_0 ;
  wire \eq_test_reg[15]_0 ;
  wire \eq_test_reg[16]_0 ;
  wire \eq_test_reg[17]_0 ;
  wire \eq_test_reg[18]_0 ;
  wire \eq_test_reg[19]_0 ;
  wire \eq_test_reg[1]_0 ;
  wire \eq_test_reg[20]_0 ;
  wire \eq_test_reg[21]_0 ;
  wire \eq_test_reg[22]_0 ;
  wire \eq_test_reg[23]_0 ;
  wire \eq_test_reg[24]_0 ;
  wire \eq_test_reg[25]_0 ;
  wire \eq_test_reg[26]_0 ;
  wire \eq_test_reg[27]_0 ;
  wire \eq_test_reg[28]_0 ;
  wire \eq_test_reg[29]_0 ;
  wire \eq_test_reg[2]_0 ;
  wire \eq_test_reg[30]_0 ;
  wire \eq_test_reg[31]_0 ;
  wire \eq_test_reg[3]_0 ;
  wire \eq_test_reg[4]_0 ;
  wire \eq_test_reg[5]_0 ;
  wire \eq_test_reg[6]_0 ;
  wire \eq_test_reg[7]_0 ;
  wire \eq_test_reg[8]_0 ;
  wire \eq_test_reg[9]_0 ;
  wire [5:0]fall_s1;
  wire gate;
  wire gate0;
  wire \gate_cnt[0]_i_10_n_0 ;
  wire \gate_cnt[0]_i_1_n_0 ;
  wire \gate_cnt[0]_i_3_n_0 ;
  wire \gate_cnt[0]_i_4_n_0 ;
  wire \gate_cnt[0]_i_5_n_0 ;
  wire \gate_cnt[0]_i_6_n_0 ;
  wire \gate_cnt[0]_i_7_n_0 ;
  wire \gate_cnt[0]_i_8_n_0 ;
  wire \gate_cnt[0]_i_9_n_0 ;
  wire \gate_cnt[12]_i_2_n_0 ;
  wire \gate_cnt[12]_i_3_n_0 ;
  wire \gate_cnt[12]_i_4_n_0 ;
  wire \gate_cnt[12]_i_5_n_0 ;
  wire \gate_cnt[12]_i_6_n_0 ;
  wire \gate_cnt[12]_i_7_n_0 ;
  wire \gate_cnt[12]_i_8_n_0 ;
  wire \gate_cnt[12]_i_9_n_0 ;
  wire \gate_cnt[16]_i_2_n_0 ;
  wire \gate_cnt[16]_i_3_n_0 ;
  wire \gate_cnt[16]_i_4_n_0 ;
  wire \gate_cnt[16]_i_5_n_0 ;
  wire \gate_cnt[16]_i_6_n_0 ;
  wire \gate_cnt[16]_i_7_n_0 ;
  wire \gate_cnt[16]_i_8_n_0 ;
  wire \gate_cnt[16]_i_9_n_0 ;
  wire \gate_cnt[20]_i_2_n_0 ;
  wire \gate_cnt[20]_i_3_n_0 ;
  wire \gate_cnt[20]_i_4_n_0 ;
  wire \gate_cnt[20]_i_5_n_0 ;
  wire \gate_cnt[20]_i_6_n_0 ;
  wire \gate_cnt[20]_i_7_n_0 ;
  wire \gate_cnt[20]_i_8_n_0 ;
  wire \gate_cnt[20]_i_9_n_0 ;
  wire \gate_cnt[24]_i_2_n_0 ;
  wire \gate_cnt[24]_i_3_n_0 ;
  wire \gate_cnt[24]_i_4_n_0 ;
  wire \gate_cnt[24]_i_5_n_0 ;
  wire \gate_cnt[24]_i_6_n_0 ;
  wire \gate_cnt[24]_i_7_n_0 ;
  wire \gate_cnt[24]_i_8_n_0 ;
  wire \gate_cnt[24]_i_9_n_0 ;
  wire \gate_cnt[28]_i_2_n_0 ;
  wire \gate_cnt[28]_i_3_n_0 ;
  wire \gate_cnt[28]_i_4_n_0 ;
  wire \gate_cnt[28]_i_5_n_0 ;
  wire \gate_cnt[28]_i_6_n_0 ;
  wire \gate_cnt[28]_i_7_n_0 ;
  wire \gate_cnt[28]_i_8_n_0 ;
  wire \gate_cnt[4]_i_2_n_0 ;
  wire \gate_cnt[4]_i_3_n_0 ;
  wire \gate_cnt[4]_i_4_n_0 ;
  wire \gate_cnt[4]_i_5_n_0 ;
  wire \gate_cnt[4]_i_6_n_0 ;
  wire \gate_cnt[4]_i_7_n_0 ;
  wire \gate_cnt[4]_i_8_n_0 ;
  wire \gate_cnt[4]_i_9_n_0 ;
  wire \gate_cnt[8]_i_2_n_0 ;
  wire \gate_cnt[8]_i_3_n_0 ;
  wire \gate_cnt[8]_i_4_n_0 ;
  wire \gate_cnt[8]_i_5_n_0 ;
  wire \gate_cnt[8]_i_6_n_0 ;
  wire \gate_cnt[8]_i_7_n_0 ;
  wire \gate_cnt[8]_i_8_n_0 ;
  wire \gate_cnt[8]_i_9_n_0 ;
  wire [31:0]gate_cnt_reg;
  wire \gate_cnt_reg[0]_i_2_n_0 ;
  wire \gate_cnt_reg[0]_i_2_n_1 ;
  wire \gate_cnt_reg[0]_i_2_n_2 ;
  wire \gate_cnt_reg[0]_i_2_n_3 ;
  wire \gate_cnt_reg[0]_i_2_n_4 ;
  wire \gate_cnt_reg[0]_i_2_n_5 ;
  wire \gate_cnt_reg[0]_i_2_n_6 ;
  wire \gate_cnt_reg[0]_i_2_n_7 ;
  wire \gate_cnt_reg[12]_i_1_n_0 ;
  wire \gate_cnt_reg[12]_i_1_n_1 ;
  wire \gate_cnt_reg[12]_i_1_n_2 ;
  wire \gate_cnt_reg[12]_i_1_n_3 ;
  wire \gate_cnt_reg[12]_i_1_n_4 ;
  wire \gate_cnt_reg[12]_i_1_n_5 ;
  wire \gate_cnt_reg[12]_i_1_n_6 ;
  wire \gate_cnt_reg[12]_i_1_n_7 ;
  wire \gate_cnt_reg[16]_i_1_n_0 ;
  wire \gate_cnt_reg[16]_i_1_n_1 ;
  wire \gate_cnt_reg[16]_i_1_n_2 ;
  wire \gate_cnt_reg[16]_i_1_n_3 ;
  wire \gate_cnt_reg[16]_i_1_n_4 ;
  wire \gate_cnt_reg[16]_i_1_n_5 ;
  wire \gate_cnt_reg[16]_i_1_n_6 ;
  wire \gate_cnt_reg[16]_i_1_n_7 ;
  wire \gate_cnt_reg[20]_i_1_n_0 ;
  wire \gate_cnt_reg[20]_i_1_n_1 ;
  wire \gate_cnt_reg[20]_i_1_n_2 ;
  wire \gate_cnt_reg[20]_i_1_n_3 ;
  wire \gate_cnt_reg[20]_i_1_n_4 ;
  wire \gate_cnt_reg[20]_i_1_n_5 ;
  wire \gate_cnt_reg[20]_i_1_n_6 ;
  wire \gate_cnt_reg[20]_i_1_n_7 ;
  wire \gate_cnt_reg[24]_i_1_n_0 ;
  wire \gate_cnt_reg[24]_i_1_n_1 ;
  wire \gate_cnt_reg[24]_i_1_n_2 ;
  wire \gate_cnt_reg[24]_i_1_n_3 ;
  wire \gate_cnt_reg[24]_i_1_n_4 ;
  wire \gate_cnt_reg[24]_i_1_n_5 ;
  wire \gate_cnt_reg[24]_i_1_n_6 ;
  wire \gate_cnt_reg[24]_i_1_n_7 ;
  wire \gate_cnt_reg[28]_i_1_n_1 ;
  wire \gate_cnt_reg[28]_i_1_n_2 ;
  wire \gate_cnt_reg[28]_i_1_n_3 ;
  wire \gate_cnt_reg[28]_i_1_n_4 ;
  wire \gate_cnt_reg[28]_i_1_n_5 ;
  wire \gate_cnt_reg[28]_i_1_n_6 ;
  wire \gate_cnt_reg[28]_i_1_n_7 ;
  wire [0:0]\gate_cnt_reg[31]_0 ;
  wire [31:0]\gate_cnt_reg[31]_1 ;
  wire \gate_cnt_reg[4]_i_1_n_0 ;
  wire \gate_cnt_reg[4]_i_1_n_1 ;
  wire \gate_cnt_reg[4]_i_1_n_2 ;
  wire \gate_cnt_reg[4]_i_1_n_3 ;
  wire \gate_cnt_reg[4]_i_1_n_4 ;
  wire \gate_cnt_reg[4]_i_1_n_5 ;
  wire \gate_cnt_reg[4]_i_1_n_6 ;
  wire \gate_cnt_reg[4]_i_1_n_7 ;
  wire \gate_cnt_reg[8]_i_1_n_0 ;
  wire \gate_cnt_reg[8]_i_1_n_1 ;
  wire \gate_cnt_reg[8]_i_1_n_2 ;
  wire \gate_cnt_reg[8]_i_1_n_3 ;
  wire \gate_cnt_reg[8]_i_1_n_4 ;
  wire \gate_cnt_reg[8]_i_1_n_5 ;
  wire \gate_cnt_reg[8]_i_1_n_6 ;
  wire \gate_cnt_reg[8]_i_1_n_7 ;
  wire gate_fx;
  wire gate_fx_d;
  wire gate_fx_fall;
  wire gate_fx_rise;
  wire gate_i_10_n_0;
  wire gate_i_1_n_0;
  wire gate_i_3_n_0;
  wire gate_i_4_n_0;
  wire gate_i_5_n_0;
  wire gate_i_6_n_0;
  wire gate_i_7_n_0;
  wire gate_i_8_n_0;
  wire gate_i_9_n_0;
  wire gate_reg_n_0;
  wire [0:0]out;
  wire [5:0]p_0_in;
  wire [5:0]rise_s1;
  wire s_axi_aclk;
  wire \settle_cnt[2]_i_1_n_0 ;
  wire \settle_cnt[5]_i_1_n_0 ;
  wire \settle_cnt[5]_i_2_n_0 ;
  wire [5:0]settle_cnt_reg__0;
  wire \stand_cnt[0]_i_1_n_0 ;
  wire \stand_cnt[0]_i_3_n_0 ;
  wire [31:0]stand_cnt_reg;
  wire \stand_cnt_reg[0]_i_2_n_0 ;
  wire \stand_cnt_reg[0]_i_2_n_1 ;
  wire \stand_cnt_reg[0]_i_2_n_2 ;
  wire \stand_cnt_reg[0]_i_2_n_3 ;
  wire \stand_cnt_reg[0]_i_2_n_4 ;
  wire \stand_cnt_reg[0]_i_2_n_5 ;
  wire \stand_cnt_reg[0]_i_2_n_6 ;
  wire \stand_cnt_reg[0]_i_2_n_7 ;
  wire \stand_cnt_reg[12]_i_1_n_0 ;
  wire \stand_cnt_reg[12]_i_1_n_1 ;
  wire \stand_cnt_reg[12]_i_1_n_2 ;
  wire \stand_cnt_reg[12]_i_1_n_3 ;
  wire \stand_cnt_reg[12]_i_1_n_4 ;
  wire \stand_cnt_reg[12]_i_1_n_5 ;
  wire \stand_cnt_reg[12]_i_1_n_6 ;
  wire \stand_cnt_reg[12]_i_1_n_7 ;
  wire \stand_cnt_reg[16]_i_1_n_0 ;
  wire \stand_cnt_reg[16]_i_1_n_1 ;
  wire \stand_cnt_reg[16]_i_1_n_2 ;
  wire \stand_cnt_reg[16]_i_1_n_3 ;
  wire \stand_cnt_reg[16]_i_1_n_4 ;
  wire \stand_cnt_reg[16]_i_1_n_5 ;
  wire \stand_cnt_reg[16]_i_1_n_6 ;
  wire \stand_cnt_reg[16]_i_1_n_7 ;
  wire \stand_cnt_reg[20]_i_1_n_0 ;
  wire \stand_cnt_reg[20]_i_1_n_1 ;
  wire \stand_cnt_reg[20]_i_1_n_2 ;
  wire \stand_cnt_reg[20]_i_1_n_3 ;
  wire \stand_cnt_reg[20]_i_1_n_4 ;
  wire \stand_cnt_reg[20]_i_1_n_5 ;
  wire \stand_cnt_reg[20]_i_1_n_6 ;
  wire \stand_cnt_reg[20]_i_1_n_7 ;
  wire \stand_cnt_reg[24]_i_1_n_0 ;
  wire \stand_cnt_reg[24]_i_1_n_1 ;
  wire \stand_cnt_reg[24]_i_1_n_2 ;
  wire \stand_cnt_reg[24]_i_1_n_3 ;
  wire \stand_cnt_reg[24]_i_1_n_4 ;
  wire \stand_cnt_reg[24]_i_1_n_5 ;
  wire \stand_cnt_reg[24]_i_1_n_6 ;
  wire \stand_cnt_reg[24]_i_1_n_7 ;
  wire \stand_cnt_reg[28]_i_1_n_1 ;
  wire \stand_cnt_reg[28]_i_1_n_2 ;
  wire \stand_cnt_reg[28]_i_1_n_3 ;
  wire \stand_cnt_reg[28]_i_1_n_4 ;
  wire \stand_cnt_reg[28]_i_1_n_5 ;
  wire \stand_cnt_reg[28]_i_1_n_6 ;
  wire \stand_cnt_reg[28]_i_1_n_7 ;
  wire \stand_cnt_reg[4]_i_1_n_0 ;
  wire \stand_cnt_reg[4]_i_1_n_1 ;
  wire \stand_cnt_reg[4]_i_1_n_2 ;
  wire \stand_cnt_reg[4]_i_1_n_3 ;
  wire \stand_cnt_reg[4]_i_1_n_4 ;
  wire \stand_cnt_reg[4]_i_1_n_5 ;
  wire \stand_cnt_reg[4]_i_1_n_6 ;
  wire \stand_cnt_reg[4]_i_1_n_7 ;
  wire \stand_cnt_reg[8]_i_1_n_0 ;
  wire \stand_cnt_reg[8]_i_1_n_1 ;
  wire \stand_cnt_reg[8]_i_1_n_2 ;
  wire \stand_cnt_reg[8]_i_1_n_3 ;
  wire \stand_cnt_reg[8]_i_1_n_4 ;
  wire \stand_cnt_reg[8]_i_1_n_5 ;
  wire \stand_cnt_reg[8]_i_1_n_6 ;
  wire \stand_cnt_reg[8]_i_1_n_7 ;
  wire [31:0]stand_result;
  wire stand_result_1;
  wire [31:0]stand_s1;
  wire [0:0]\sync_reg[1] ;
  wire [0:0]\sync_reg[1]_0 ;
  wire [0:0]\sync_reg[1]_1 ;
  wire [5:0]tdc_fall_fx;
  wire [5:0]tdc_rise_fx;
  wire \tdc_rise_fx[0]_i_1_n_0 ;
  wire \tdc_rise_fx[1]_i_1_n_0 ;
  wire \tdc_rise_fx[2]_i_1_n_0 ;
  wire \tdc_rise_fx[3]_i_1_n_0 ;
  wire \tdc_rise_fx[4]_i_1_n_0 ;
  wire \tdc_rise_fx[5]_i_2_n_0 ;
  wire [5:0]\tdc_test_fall_reg[5]_0 ;
  wire [5:0]tdc_val;
  wire tdc_vld;
  wire \test_cnt[0]_i_3_n_0 ;
  wire [31:0]test_cnt_reg;
  wire \test_cnt_reg[0]_i_2_n_0 ;
  wire \test_cnt_reg[0]_i_2_n_1 ;
  wire \test_cnt_reg[0]_i_2_n_2 ;
  wire \test_cnt_reg[0]_i_2_n_3 ;
  wire \test_cnt_reg[0]_i_2_n_4 ;
  wire \test_cnt_reg[0]_i_2_n_5 ;
  wire \test_cnt_reg[0]_i_2_n_6 ;
  wire \test_cnt_reg[0]_i_2_n_7 ;
  wire \test_cnt_reg[12]_i_1_n_0 ;
  wire \test_cnt_reg[12]_i_1_n_1 ;
  wire \test_cnt_reg[12]_i_1_n_2 ;
  wire \test_cnt_reg[12]_i_1_n_3 ;
  wire \test_cnt_reg[12]_i_1_n_4 ;
  wire \test_cnt_reg[12]_i_1_n_5 ;
  wire \test_cnt_reg[12]_i_1_n_6 ;
  wire \test_cnt_reg[12]_i_1_n_7 ;
  wire \test_cnt_reg[16]_i_1_n_0 ;
  wire \test_cnt_reg[16]_i_1_n_1 ;
  wire \test_cnt_reg[16]_i_1_n_2 ;
  wire \test_cnt_reg[16]_i_1_n_3 ;
  wire \test_cnt_reg[16]_i_1_n_4 ;
  wire \test_cnt_reg[16]_i_1_n_5 ;
  wire \test_cnt_reg[16]_i_1_n_6 ;
  wire \test_cnt_reg[16]_i_1_n_7 ;
  wire \test_cnt_reg[20]_i_1_n_0 ;
  wire \test_cnt_reg[20]_i_1_n_1 ;
  wire \test_cnt_reg[20]_i_1_n_2 ;
  wire \test_cnt_reg[20]_i_1_n_3 ;
  wire \test_cnt_reg[20]_i_1_n_4 ;
  wire \test_cnt_reg[20]_i_1_n_5 ;
  wire \test_cnt_reg[20]_i_1_n_6 ;
  wire \test_cnt_reg[20]_i_1_n_7 ;
  wire \test_cnt_reg[24]_i_1_n_0 ;
  wire \test_cnt_reg[24]_i_1_n_1 ;
  wire \test_cnt_reg[24]_i_1_n_2 ;
  wire \test_cnt_reg[24]_i_1_n_3 ;
  wire \test_cnt_reg[24]_i_1_n_4 ;
  wire \test_cnt_reg[24]_i_1_n_5 ;
  wire \test_cnt_reg[24]_i_1_n_6 ;
  wire \test_cnt_reg[24]_i_1_n_7 ;
  wire \test_cnt_reg[28]_i_1_n_1 ;
  wire \test_cnt_reg[28]_i_1_n_2 ;
  wire \test_cnt_reg[28]_i_1_n_3 ;
  wire \test_cnt_reg[28]_i_1_n_4 ;
  wire \test_cnt_reg[28]_i_1_n_5 ;
  wire \test_cnt_reg[28]_i_1_n_6 ;
  wire \test_cnt_reg[28]_i_1_n_7 ;
  wire [0:0]\test_cnt_reg[31]_0 ;
  wire \test_cnt_reg[4]_i_1_n_0 ;
  wire \test_cnt_reg[4]_i_1_n_1 ;
  wire \test_cnt_reg[4]_i_1_n_2 ;
  wire \test_cnt_reg[4]_i_1_n_3 ;
  wire \test_cnt_reg[4]_i_1_n_4 ;
  wire \test_cnt_reg[4]_i_1_n_5 ;
  wire \test_cnt_reg[4]_i_1_n_6 ;
  wire \test_cnt_reg[4]_i_1_n_7 ;
  wire \test_cnt_reg[8]_i_1_n_0 ;
  wire \test_cnt_reg[8]_i_1_n_1 ;
  wire \test_cnt_reg[8]_i_1_n_2 ;
  wire \test_cnt_reg[8]_i_1_n_3 ;
  wire \test_cnt_reg[8]_i_1_n_4 ;
  wire \test_cnt_reg[8]_i_1_n_5 ;
  wire \test_cnt_reg[8]_i_1_n_6 ;
  wire \test_cnt_reg[8]_i_1_n_7 ;
  wire [31:0]test_result;
  wire [31:0]test_s1;
  wire u_gate_sync_n_1;
  wire [3:3]\NLW_gate_cnt_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_stand_cnt_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_test_cnt_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(eq_test[0]),
        .I1(eq_stand[0]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [0]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[0]),
        .O(\eq_test_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_3 
       (.I0(eq_test[10]),
        .I1(eq_stand[10]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [10]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[10]),
        .O(\eq_test_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_3 
       (.I0(eq_test[11]),
        .I1(eq_stand[11]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [11]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[11]),
        .O(\eq_test_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_3 
       (.I0(eq_test[12]),
        .I1(eq_stand[12]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [12]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[12]),
        .O(\eq_test_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_3 
       (.I0(eq_test[13]),
        .I1(eq_stand[13]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [13]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[13]),
        .O(\eq_test_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_4 
       (.I0(eq_test[14]),
        .I1(eq_stand[14]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [14]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[14]),
        .O(\eq_test_reg[14]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_4 
       (.I0(eq_test[15]),
        .I1(eq_stand[15]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [15]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[15]),
        .O(\eq_test_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_4 
       (.I0(eq_test[16]),
        .I1(eq_stand[16]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [16]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[16]),
        .O(\eq_test_reg[16]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_4 
       (.I0(eq_test[17]),
        .I1(eq_stand[17]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [17]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[17]),
        .O(\eq_test_reg[17]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_4 
       (.I0(eq_test[18]),
        .I1(eq_stand[18]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [18]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[18]),
        .O(\eq_test_reg[18]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_4 
       (.I0(eq_test[19]),
        .I1(eq_stand[19]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [19]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[19]),
        .O(\eq_test_reg[19]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_3 
       (.I0(eq_test[1]),
        .I1(eq_stand[1]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [1]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[1]),
        .O(\eq_test_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_4 
       (.I0(eq_test[20]),
        .I1(eq_stand[20]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [20]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[20]),
        .O(\eq_test_reg[20]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_4 
       (.I0(eq_test[21]),
        .I1(eq_stand[21]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [21]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[21]),
        .O(\eq_test_reg[21]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_4 
       (.I0(eq_test[22]),
        .I1(eq_stand[22]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [22]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[22]),
        .O(\eq_test_reg[22]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_4 
       (.I0(eq_test[23]),
        .I1(eq_stand[23]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [23]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[23]),
        .O(\eq_test_reg[23]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_4 
       (.I0(eq_test[24]),
        .I1(eq_stand[24]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [24]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[24]),
        .O(\eq_test_reg[24]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_4 
       (.I0(eq_test[25]),
        .I1(eq_stand[25]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [25]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[25]),
        .O(\eq_test_reg[25]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_4 
       (.I0(eq_test[26]),
        .I1(eq_stand[26]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [26]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[26]),
        .O(\eq_test_reg[26]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_4 
       (.I0(eq_test[27]),
        .I1(eq_stand[27]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [27]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[27]),
        .O(\eq_test_reg[27]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_4 
       (.I0(eq_test[28]),
        .I1(eq_stand[28]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [28]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[28]),
        .O(\eq_test_reg[28]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_4 
       (.I0(eq_test[29]),
        .I1(eq_stand[29]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [29]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[29]),
        .O(\eq_test_reg[29]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_3 
       (.I0(eq_test[2]),
        .I1(eq_stand[2]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [2]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[2]),
        .O(\eq_test_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_4 
       (.I0(eq_test[30]),
        .I1(eq_stand[30]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [30]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[30]),
        .O(\eq_test_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_4 
       (.I0(eq_test[31]),
        .I1(eq_stand[31]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [31]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[31]),
        .O(\eq_test_reg[31]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_3 
       (.I0(eq_test[3]),
        .I1(eq_stand[3]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [3]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[3]),
        .O(\eq_test_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_3 
       (.I0(eq_test[4]),
        .I1(eq_stand[4]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [4]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[4]),
        .O(\eq_test_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_3 
       (.I0(eq_test[5]),
        .I1(eq_stand[5]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [5]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[5]),
        .O(\eq_test_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_3 
       (.I0(eq_test[6]),
        .I1(eq_stand[6]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [6]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[6]),
        .O(\eq_test_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_3 
       (.I0(eq_test[7]),
        .I1(eq_stand[7]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [7]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[7]),
        .O(\eq_test_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_3 
       (.I0(eq_test[8]),
        .I1(eq_stand[8]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [8]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[8]),
        .O(\eq_test_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_3 
       (.I0(eq_test[9]),
        .I1(eq_stand[9]),
        .I2(\axi_rdata_reg[13] [1]),
        .I3(\gate_cnt_reg[31]_1 [9]),
        .I4(\axi_rdata_reg[13] [0]),
        .I5(dst_cnt[9]),
        .O(\eq_test_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hD0DFD0D0)) 
    busy_i_1
       (.I0(done_fs_0),
        .I1(gate_reg_n_0),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(busy_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    busy_i_2
       (.I0(settle_cnt_reg__0[5]),
        .I1(settle_cnt_reg__0[4]),
        .I2(settle_cnt_reg__0[1]),
        .I3(settle_cnt_reg__0[0]),
        .I4(settle_cnt_reg__0[3]),
        .I5(settle_cnt_reg__0[2]),
        .O(done_fs_0));
  FDRE busy_reg
       (.C(CLK),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .Q(busy),
        .R(\gate_cnt_reg[31]_0 ));
  LUT6 #(
    .INIT(64'h00000000AEAA0000)) 
    done_fs_i_1
       (.I0(done_fs),
        .I1(busy),
        .I2(gate_reg_n_0),
        .I3(done_fs_0),
        .I4(done_fs_reg_0),
        .I5(gate0),
        .O(done_fs_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    done_fs_i_2
       (.I0(out),
        .I1(eq_start_d),
        .I2(busy),
        .O(gate0));
  FDRE done_fs_reg
       (.C(CLK),
        .CE(1'b1),
        .D(done_fs_i_1_n_0),
        .Q(done_fs),
        .R(1'b0));
  FDRE \eq_stand_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[0]),
        .Q(eq_stand[0]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[10]),
        .Q(eq_stand[10]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[11]),
        .Q(eq_stand[11]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[12]),
        .Q(eq_stand[12]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[13]),
        .Q(eq_stand[13]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[14]),
        .Q(eq_stand[14]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[15]),
        .Q(eq_stand[15]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[16]),
        .Q(eq_stand[16]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[17]),
        .Q(eq_stand[17]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[18]),
        .Q(eq_stand[18]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[19]),
        .Q(eq_stand[19]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[1]),
        .Q(eq_stand[1]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[20]),
        .Q(eq_stand[20]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[21]),
        .Q(eq_stand[21]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[22]),
        .Q(eq_stand[22]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[23]),
        .Q(eq_stand[23]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[24]),
        .Q(eq_stand[24]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[25]),
        .Q(eq_stand[25]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[26]),
        .Q(eq_stand[26]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[27]),
        .Q(eq_stand[27]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[28]),
        .Q(eq_stand[28]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[29]),
        .Q(eq_stand[29]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[2]),
        .Q(eq_stand[2]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[30]),
        .Q(eq_stand[30]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[31]),
        .Q(eq_stand[31]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[3]),
        .Q(eq_stand[3]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[4]),
        .Q(eq_stand[4]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[5]),
        .Q(eq_stand[5]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[6]),
        .Q(eq_stand[6]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[7]),
        .Q(eq_stand[7]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[8]),
        .Q(eq_stand[8]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_stand_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_s1[9]),
        .Q(eq_stand[9]),
        .R(\sync_reg[1]_1 ));
  FDRE eq_start_d_reg
       (.C(CLK),
        .CE(1'b1),
        .D(out),
        .Q(eq_start_d),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \eq_test_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[0]),
        .Q(eq_test[0]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[10]),
        .Q(eq_test[10]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[11]),
        .Q(eq_test[11]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[12]),
        .Q(eq_test[12]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[13]),
        .Q(eq_test[13]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[14]),
        .Q(eq_test[14]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[15]),
        .Q(eq_test[15]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[16]),
        .Q(eq_test[16]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[17]),
        .Q(eq_test[17]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[18]),
        .Q(eq_test[18]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[19]),
        .Q(eq_test[19]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[1]),
        .Q(eq_test[1]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[20]),
        .Q(eq_test[20]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[21]),
        .Q(eq_test[21]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[22]),
        .Q(eq_test[22]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[23]),
        .Q(eq_test[23]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[24]),
        .Q(eq_test[24]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[25]),
        .Q(eq_test[25]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[26]),
        .Q(eq_test[26]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[27]),
        .Q(eq_test[27]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[28]),
        .Q(eq_test[28]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[29]),
        .Q(eq_test[29]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[2]),
        .Q(eq_test[2]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[30]),
        .Q(eq_test[30]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[31]),
        .Q(eq_test[31]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[3]),
        .Q(eq_test[3]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[4]),
        .Q(eq_test[4]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[5]),
        .Q(eq_test[5]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[6]),
        .Q(eq_test[6]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[7]),
        .Q(eq_test[7]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[8]),
        .Q(eq_test[8]),
        .R(\sync_reg[1]_1 ));
  FDRE \eq_test_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_s1[9]),
        .Q(eq_test[9]),
        .R(\sync_reg[1]_1 ));
  FDRE \fall_s1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tdc_fall_fx[0]),
        .Q(fall_s1[0]),
        .R(\sync_reg[1]_1 ));
  FDRE \fall_s1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tdc_fall_fx[1]),
        .Q(fall_s1[1]),
        .R(\sync_reg[1]_1 ));
  FDRE \fall_s1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tdc_fall_fx[2]),
        .Q(fall_s1[2]),
        .R(\sync_reg[1]_1 ));
  FDRE \fall_s1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tdc_fall_fx[3]),
        .Q(fall_s1[3]),
        .R(\sync_reg[1]_1 ));
  FDRE \fall_s1_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tdc_fall_fx[4]),
        .Q(fall_s1[4]),
        .R(\sync_reg[1]_1 ));
  FDRE \fall_s1_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tdc_fall_fx[5]),
        .Q(fall_s1[5]),
        .R(\sync_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h00F04444)) 
    \gate_cnt[0]_i_1 
       (.I0(eq_start_d),
        .I1(out),
        .I2(gate_reg_n_0),
        .I3(gate),
        .I4(busy),
        .O(\gate_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[0]_i_10 
       (.I0(gate_cnt_reg[0]),
        .I1(\gate_cnt_reg[31]_1 [0]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[0]_i_3 
       (.I0(\gate_cnt_reg[31]_1 [3]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[3]),
        .O(\gate_cnt[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[0]_i_4 
       (.I0(\gate_cnt_reg[31]_1 [2]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[2]),
        .O(\gate_cnt[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[0]_i_5 
       (.I0(\gate_cnt_reg[31]_1 [1]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[1]),
        .O(\gate_cnt[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[0]_i_6 
       (.I0(\gate_cnt_reg[31]_1 [0]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[0]),
        .O(\gate_cnt[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[0]_i_7 
       (.I0(gate_cnt_reg[3]),
        .I1(\gate_cnt_reg[31]_1 [3]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[0]_i_8 
       (.I0(gate_cnt_reg[2]),
        .I1(\gate_cnt_reg[31]_1 [2]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[0]_i_9 
       (.I0(gate_cnt_reg[1]),
        .I1(\gate_cnt_reg[31]_1 [1]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[12]_i_2 
       (.I0(\gate_cnt_reg[31]_1 [15]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[15]),
        .O(\gate_cnt[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[12]_i_3 
       (.I0(\gate_cnt_reg[31]_1 [14]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[14]),
        .O(\gate_cnt[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[12]_i_4 
       (.I0(\gate_cnt_reg[31]_1 [13]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[13]),
        .O(\gate_cnt[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[12]_i_5 
       (.I0(\gate_cnt_reg[31]_1 [12]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[12]),
        .O(\gate_cnt[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[12]_i_6 
       (.I0(gate_cnt_reg[15]),
        .I1(\gate_cnt_reg[31]_1 [15]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[12]_i_7 
       (.I0(gate_cnt_reg[14]),
        .I1(\gate_cnt_reg[31]_1 [14]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[12]_i_8 
       (.I0(gate_cnt_reg[13]),
        .I1(\gate_cnt_reg[31]_1 [13]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[12]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[12]_i_9 
       (.I0(gate_cnt_reg[12]),
        .I1(\gate_cnt_reg[31]_1 [12]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[16]_i_2 
       (.I0(\gate_cnt_reg[31]_1 [19]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[19]),
        .O(\gate_cnt[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[16]_i_3 
       (.I0(\gate_cnt_reg[31]_1 [18]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[18]),
        .O(\gate_cnt[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[16]_i_4 
       (.I0(\gate_cnt_reg[31]_1 [17]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[17]),
        .O(\gate_cnt[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[16]_i_5 
       (.I0(\gate_cnt_reg[31]_1 [16]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[16]),
        .O(\gate_cnt[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[16]_i_6 
       (.I0(gate_cnt_reg[19]),
        .I1(\gate_cnt_reg[31]_1 [19]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[16]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[16]_i_7 
       (.I0(gate_cnt_reg[18]),
        .I1(\gate_cnt_reg[31]_1 [18]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[16]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[16]_i_8 
       (.I0(gate_cnt_reg[17]),
        .I1(\gate_cnt_reg[31]_1 [17]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[16]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[16]_i_9 
       (.I0(gate_cnt_reg[16]),
        .I1(\gate_cnt_reg[31]_1 [16]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[16]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[20]_i_2 
       (.I0(\gate_cnt_reg[31]_1 [23]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[23]),
        .O(\gate_cnt[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[20]_i_3 
       (.I0(\gate_cnt_reg[31]_1 [22]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[22]),
        .O(\gate_cnt[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[20]_i_4 
       (.I0(\gate_cnt_reg[31]_1 [21]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[21]),
        .O(\gate_cnt[20]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[20]_i_5 
       (.I0(\gate_cnt_reg[31]_1 [20]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[20]),
        .O(\gate_cnt[20]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[20]_i_6 
       (.I0(gate_cnt_reg[23]),
        .I1(\gate_cnt_reg[31]_1 [23]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[20]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[20]_i_7 
       (.I0(gate_cnt_reg[22]),
        .I1(\gate_cnt_reg[31]_1 [22]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[20]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[20]_i_8 
       (.I0(gate_cnt_reg[21]),
        .I1(\gate_cnt_reg[31]_1 [21]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[20]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[20]_i_9 
       (.I0(gate_cnt_reg[20]),
        .I1(\gate_cnt_reg[31]_1 [20]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[20]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[24]_i_2 
       (.I0(\gate_cnt_reg[31]_1 [27]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[27]),
        .O(\gate_cnt[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[24]_i_3 
       (.I0(\gate_cnt_reg[31]_1 [26]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[26]),
        .O(\gate_cnt[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[24]_i_4 
       (.I0(\gate_cnt_reg[31]_1 [25]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[25]),
        .O(\gate_cnt[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[24]_i_5 
       (.I0(\gate_cnt_reg[31]_1 [24]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[24]),
        .O(\gate_cnt[24]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[24]_i_6 
       (.I0(gate_cnt_reg[27]),
        .I1(\gate_cnt_reg[31]_1 [27]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[24]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[24]_i_7 
       (.I0(gate_cnt_reg[26]),
        .I1(\gate_cnt_reg[31]_1 [26]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[24]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[24]_i_8 
       (.I0(gate_cnt_reg[25]),
        .I1(\gate_cnt_reg[31]_1 [25]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[24]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[24]_i_9 
       (.I0(gate_cnt_reg[24]),
        .I1(\gate_cnt_reg[31]_1 [24]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[24]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[28]_i_2 
       (.I0(\gate_cnt_reg[31]_1 [30]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[30]),
        .O(\gate_cnt[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[28]_i_3 
       (.I0(\gate_cnt_reg[31]_1 [29]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[29]),
        .O(\gate_cnt[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[28]_i_4 
       (.I0(\gate_cnt_reg[31]_1 [28]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[28]),
        .O(\gate_cnt[28]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[28]_i_5 
       (.I0(gate_cnt_reg[31]),
        .I1(\gate_cnt_reg[31]_1 [31]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[28]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[28]_i_6 
       (.I0(gate_cnt_reg[30]),
        .I1(\gate_cnt_reg[31]_1 [30]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[28]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[28]_i_7 
       (.I0(gate_cnt_reg[29]),
        .I1(\gate_cnt_reg[31]_1 [29]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[28]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[28]_i_8 
       (.I0(gate_cnt_reg[28]),
        .I1(\gate_cnt_reg[31]_1 [28]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[28]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[4]_i_2 
       (.I0(\gate_cnt_reg[31]_1 [7]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[7]),
        .O(\gate_cnt[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[4]_i_3 
       (.I0(\gate_cnt_reg[31]_1 [6]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[6]),
        .O(\gate_cnt[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[4]_i_4 
       (.I0(\gate_cnt_reg[31]_1 [5]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[5]),
        .O(\gate_cnt[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[4]_i_5 
       (.I0(\gate_cnt_reg[31]_1 [4]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[4]),
        .O(\gate_cnt[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[4]_i_6 
       (.I0(gate_cnt_reg[7]),
        .I1(\gate_cnt_reg[31]_1 [7]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[4]_i_7 
       (.I0(gate_cnt_reg[6]),
        .I1(\gate_cnt_reg[31]_1 [6]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[4]_i_8 
       (.I0(gate_cnt_reg[5]),
        .I1(\gate_cnt_reg[31]_1 [5]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[4]_i_9 
       (.I0(gate_cnt_reg[4]),
        .I1(\gate_cnt_reg[31]_1 [4]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[8]_i_2 
       (.I0(\gate_cnt_reg[31]_1 [11]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[11]),
        .O(\gate_cnt[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[8]_i_3 
       (.I0(\gate_cnt_reg[31]_1 [10]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[10]),
        .O(\gate_cnt[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[8]_i_4 
       (.I0(\gate_cnt_reg[31]_1 [9]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[9]),
        .O(\gate_cnt[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \gate_cnt[8]_i_5 
       (.I0(\gate_cnt_reg[31]_1 [8]),
        .I1(out),
        .I2(eq_start_d),
        .I3(busy),
        .I4(gate_cnt_reg[8]),
        .O(\gate_cnt[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[8]_i_6 
       (.I0(gate_cnt_reg[11]),
        .I1(\gate_cnt_reg[31]_1 [11]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[8]_i_7 
       (.I0(gate_cnt_reg[10]),
        .I1(\gate_cnt_reg[31]_1 [10]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[8]_i_8 
       (.I0(gate_cnt_reg[9]),
        .I1(\gate_cnt_reg[31]_1 [9]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h555C5555)) 
    \gate_cnt[8]_i_9 
       (.I0(gate_cnt_reg[8]),
        .I1(\gate_cnt_reg[31]_1 [8]),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(\gate_cnt[8]_i_9_n_0 ));
  FDRE \gate_cnt_reg[0] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[0]_i_2_n_7 ),
        .Q(gate_cnt_reg[0]),
        .R(\gate_cnt_reg[31]_0 ));
  CARRY4 \gate_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\gate_cnt_reg[0]_i_2_n_0 ,\gate_cnt_reg[0]_i_2_n_1 ,\gate_cnt_reg[0]_i_2_n_2 ,\gate_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\gate_cnt[0]_i_3_n_0 ,\gate_cnt[0]_i_4_n_0 ,\gate_cnt[0]_i_5_n_0 ,\gate_cnt[0]_i_6_n_0 }),
        .O({\gate_cnt_reg[0]_i_2_n_4 ,\gate_cnt_reg[0]_i_2_n_5 ,\gate_cnt_reg[0]_i_2_n_6 ,\gate_cnt_reg[0]_i_2_n_7 }),
        .S({\gate_cnt[0]_i_7_n_0 ,\gate_cnt[0]_i_8_n_0 ,\gate_cnt[0]_i_9_n_0 ,\gate_cnt[0]_i_10_n_0 }));
  FDRE \gate_cnt_reg[10] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[8]_i_1_n_5 ),
        .Q(gate_cnt_reg[10]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[11] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[8]_i_1_n_4 ),
        .Q(gate_cnt_reg[11]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[12] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[12]_i_1_n_7 ),
        .Q(gate_cnt_reg[12]),
        .R(\gate_cnt_reg[31]_0 ));
  CARRY4 \gate_cnt_reg[12]_i_1 
       (.CI(\gate_cnt_reg[8]_i_1_n_0 ),
        .CO({\gate_cnt_reg[12]_i_1_n_0 ,\gate_cnt_reg[12]_i_1_n_1 ,\gate_cnt_reg[12]_i_1_n_2 ,\gate_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gate_cnt[12]_i_2_n_0 ,\gate_cnt[12]_i_3_n_0 ,\gate_cnt[12]_i_4_n_0 ,\gate_cnt[12]_i_5_n_0 }),
        .O({\gate_cnt_reg[12]_i_1_n_4 ,\gate_cnt_reg[12]_i_1_n_5 ,\gate_cnt_reg[12]_i_1_n_6 ,\gate_cnt_reg[12]_i_1_n_7 }),
        .S({\gate_cnt[12]_i_6_n_0 ,\gate_cnt[12]_i_7_n_0 ,\gate_cnt[12]_i_8_n_0 ,\gate_cnt[12]_i_9_n_0 }));
  FDRE \gate_cnt_reg[13] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[12]_i_1_n_6 ),
        .Q(gate_cnt_reg[13]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[14] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[12]_i_1_n_5 ),
        .Q(gate_cnt_reg[14]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[15] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[12]_i_1_n_4 ),
        .Q(gate_cnt_reg[15]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[16] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[16]_i_1_n_7 ),
        .Q(gate_cnt_reg[16]),
        .R(\gate_cnt_reg[31]_0 ));
  CARRY4 \gate_cnt_reg[16]_i_1 
       (.CI(\gate_cnt_reg[12]_i_1_n_0 ),
        .CO({\gate_cnt_reg[16]_i_1_n_0 ,\gate_cnt_reg[16]_i_1_n_1 ,\gate_cnt_reg[16]_i_1_n_2 ,\gate_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gate_cnt[16]_i_2_n_0 ,\gate_cnt[16]_i_3_n_0 ,\gate_cnt[16]_i_4_n_0 ,\gate_cnt[16]_i_5_n_0 }),
        .O({\gate_cnt_reg[16]_i_1_n_4 ,\gate_cnt_reg[16]_i_1_n_5 ,\gate_cnt_reg[16]_i_1_n_6 ,\gate_cnt_reg[16]_i_1_n_7 }),
        .S({\gate_cnt[16]_i_6_n_0 ,\gate_cnt[16]_i_7_n_0 ,\gate_cnt[16]_i_8_n_0 ,\gate_cnt[16]_i_9_n_0 }));
  FDRE \gate_cnt_reg[17] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[16]_i_1_n_6 ),
        .Q(gate_cnt_reg[17]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[18] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[16]_i_1_n_5 ),
        .Q(gate_cnt_reg[18]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[19] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[16]_i_1_n_4 ),
        .Q(gate_cnt_reg[19]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[1] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[0]_i_2_n_6 ),
        .Q(gate_cnt_reg[1]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[20] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[20]_i_1_n_7 ),
        .Q(gate_cnt_reg[20]),
        .R(\gate_cnt_reg[31]_0 ));
  CARRY4 \gate_cnt_reg[20]_i_1 
       (.CI(\gate_cnt_reg[16]_i_1_n_0 ),
        .CO({\gate_cnt_reg[20]_i_1_n_0 ,\gate_cnt_reg[20]_i_1_n_1 ,\gate_cnt_reg[20]_i_1_n_2 ,\gate_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gate_cnt[20]_i_2_n_0 ,\gate_cnt[20]_i_3_n_0 ,\gate_cnt[20]_i_4_n_0 ,\gate_cnt[20]_i_5_n_0 }),
        .O({\gate_cnt_reg[20]_i_1_n_4 ,\gate_cnt_reg[20]_i_1_n_5 ,\gate_cnt_reg[20]_i_1_n_6 ,\gate_cnt_reg[20]_i_1_n_7 }),
        .S({\gate_cnt[20]_i_6_n_0 ,\gate_cnt[20]_i_7_n_0 ,\gate_cnt[20]_i_8_n_0 ,\gate_cnt[20]_i_9_n_0 }));
  FDRE \gate_cnt_reg[21] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[20]_i_1_n_6 ),
        .Q(gate_cnt_reg[21]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[22] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[20]_i_1_n_5 ),
        .Q(gate_cnt_reg[22]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[23] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[20]_i_1_n_4 ),
        .Q(gate_cnt_reg[23]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[24] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[24]_i_1_n_7 ),
        .Q(gate_cnt_reg[24]),
        .R(\gate_cnt_reg[31]_0 ));
  CARRY4 \gate_cnt_reg[24]_i_1 
       (.CI(\gate_cnt_reg[20]_i_1_n_0 ),
        .CO({\gate_cnt_reg[24]_i_1_n_0 ,\gate_cnt_reg[24]_i_1_n_1 ,\gate_cnt_reg[24]_i_1_n_2 ,\gate_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gate_cnt[24]_i_2_n_0 ,\gate_cnt[24]_i_3_n_0 ,\gate_cnt[24]_i_4_n_0 ,\gate_cnt[24]_i_5_n_0 }),
        .O({\gate_cnt_reg[24]_i_1_n_4 ,\gate_cnt_reg[24]_i_1_n_5 ,\gate_cnt_reg[24]_i_1_n_6 ,\gate_cnt_reg[24]_i_1_n_7 }),
        .S({\gate_cnt[24]_i_6_n_0 ,\gate_cnt[24]_i_7_n_0 ,\gate_cnt[24]_i_8_n_0 ,\gate_cnt[24]_i_9_n_0 }));
  FDRE \gate_cnt_reg[25] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[24]_i_1_n_6 ),
        .Q(gate_cnt_reg[25]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[26] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[24]_i_1_n_5 ),
        .Q(gate_cnt_reg[26]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[27] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[24]_i_1_n_4 ),
        .Q(gate_cnt_reg[27]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[28] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[28]_i_1_n_7 ),
        .Q(gate_cnt_reg[28]),
        .R(\gate_cnt_reg[31]_0 ));
  CARRY4 \gate_cnt_reg[28]_i_1 
       (.CI(\gate_cnt_reg[24]_i_1_n_0 ),
        .CO({\NLW_gate_cnt_reg[28]_i_1_CO_UNCONNECTED [3],\gate_cnt_reg[28]_i_1_n_1 ,\gate_cnt_reg[28]_i_1_n_2 ,\gate_cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\gate_cnt[28]_i_2_n_0 ,\gate_cnt[28]_i_3_n_0 ,\gate_cnt[28]_i_4_n_0 }),
        .O({\gate_cnt_reg[28]_i_1_n_4 ,\gate_cnt_reg[28]_i_1_n_5 ,\gate_cnt_reg[28]_i_1_n_6 ,\gate_cnt_reg[28]_i_1_n_7 }),
        .S({\gate_cnt[28]_i_5_n_0 ,\gate_cnt[28]_i_6_n_0 ,\gate_cnt[28]_i_7_n_0 ,\gate_cnt[28]_i_8_n_0 }));
  FDRE \gate_cnt_reg[29] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[28]_i_1_n_6 ),
        .Q(gate_cnt_reg[29]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[2] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[0]_i_2_n_5 ),
        .Q(gate_cnt_reg[2]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[30] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[28]_i_1_n_5 ),
        .Q(gate_cnt_reg[30]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[31] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[28]_i_1_n_4 ),
        .Q(gate_cnt_reg[31]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[3] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[0]_i_2_n_4 ),
        .Q(gate_cnt_reg[3]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[4] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[4]_i_1_n_7 ),
        .Q(gate_cnt_reg[4]),
        .R(\gate_cnt_reg[31]_0 ));
  CARRY4 \gate_cnt_reg[4]_i_1 
       (.CI(\gate_cnt_reg[0]_i_2_n_0 ),
        .CO({\gate_cnt_reg[4]_i_1_n_0 ,\gate_cnt_reg[4]_i_1_n_1 ,\gate_cnt_reg[4]_i_1_n_2 ,\gate_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gate_cnt[4]_i_2_n_0 ,\gate_cnt[4]_i_3_n_0 ,\gate_cnt[4]_i_4_n_0 ,\gate_cnt[4]_i_5_n_0 }),
        .O({\gate_cnt_reg[4]_i_1_n_4 ,\gate_cnt_reg[4]_i_1_n_5 ,\gate_cnt_reg[4]_i_1_n_6 ,\gate_cnt_reg[4]_i_1_n_7 }),
        .S({\gate_cnt[4]_i_6_n_0 ,\gate_cnt[4]_i_7_n_0 ,\gate_cnt[4]_i_8_n_0 ,\gate_cnt[4]_i_9_n_0 }));
  FDRE \gate_cnt_reg[5] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[4]_i_1_n_6 ),
        .Q(gate_cnt_reg[5]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[6] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[4]_i_1_n_5 ),
        .Q(gate_cnt_reg[6]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[7] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[4]_i_1_n_4 ),
        .Q(gate_cnt_reg[7]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \gate_cnt_reg[8] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[8]_i_1_n_7 ),
        .Q(gate_cnt_reg[8]),
        .R(\gate_cnt_reg[31]_0 ));
  CARRY4 \gate_cnt_reg[8]_i_1 
       (.CI(\gate_cnt_reg[4]_i_1_n_0 ),
        .CO({\gate_cnt_reg[8]_i_1_n_0 ,\gate_cnt_reg[8]_i_1_n_1 ,\gate_cnt_reg[8]_i_1_n_2 ,\gate_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gate_cnt[8]_i_2_n_0 ,\gate_cnt[8]_i_3_n_0 ,\gate_cnt[8]_i_4_n_0 ,\gate_cnt[8]_i_5_n_0 }),
        .O({\gate_cnt_reg[8]_i_1_n_4 ,\gate_cnt_reg[8]_i_1_n_5 ,\gate_cnt_reg[8]_i_1_n_6 ,\gate_cnt_reg[8]_i_1_n_7 }),
        .S({\gate_cnt[8]_i_6_n_0 ,\gate_cnt[8]_i_7_n_0 ,\gate_cnt[8]_i_8_n_0 ,\gate_cnt[8]_i_9_n_0 }));
  FDRE \gate_cnt_reg[9] 
       (.C(CLK),
        .CE(\gate_cnt[0]_i_1_n_0 ),
        .D(\gate_cnt_reg[8]_i_1_n_6 ),
        .Q(gate_cnt_reg[9]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE gate_fx_d_reg
       (.C(clk_fx),
        .CE(1'b1),
        .D(gate_fx),
        .Q(gate_fx_d),
        .R(SR));
  LUT5 #(
    .INIT(32'h2A2F2A2A)) 
    gate_i_1
       (.I0(gate_reg_n_0),
        .I1(gate),
        .I2(busy),
        .I3(eq_start_d),
        .I4(out),
        .O(gate_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    gate_i_10
       (.I0(gate_cnt_reg[10]),
        .I1(gate_cnt_reg[11]),
        .I2(gate_cnt_reg[8]),
        .I3(gate_cnt_reg[9]),
        .O(gate_i_10_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    gate_i_2
       (.I0(gate_i_3_n_0),
        .I1(gate_i_4_n_0),
        .I2(gate_i_5_n_0),
        .I3(gate_i_6_n_0),
        .O(gate));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    gate_i_3
       (.I0(gate_cnt_reg[21]),
        .I1(gate_cnt_reg[20]),
        .I2(gate_cnt_reg[23]),
        .I3(gate_cnt_reg[22]),
        .I4(gate_i_7_n_0),
        .O(gate_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    gate_i_4
       (.I0(gate_cnt_reg[29]),
        .I1(gate_cnt_reg[28]),
        .I2(gate_cnt_reg[30]),
        .I3(gate_cnt_reg[31]),
        .I4(gate_i_8_n_0),
        .O(gate_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    gate_i_5
       (.I0(gate_cnt_reg[5]),
        .I1(gate_cnt_reg[4]),
        .I2(gate_cnt_reg[7]),
        .I3(gate_cnt_reg[6]),
        .I4(gate_i_9_n_0),
        .O(gate_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    gate_i_6
       (.I0(gate_cnt_reg[13]),
        .I1(gate_cnt_reg[12]),
        .I2(gate_cnt_reg[15]),
        .I3(gate_cnt_reg[14]),
        .I4(gate_i_10_n_0),
        .O(gate_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    gate_i_7
       (.I0(gate_cnt_reg[18]),
        .I1(gate_cnt_reg[19]),
        .I2(gate_cnt_reg[16]),
        .I3(gate_cnt_reg[17]),
        .O(gate_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    gate_i_8
       (.I0(gate_cnt_reg[26]),
        .I1(gate_cnt_reg[27]),
        .I2(gate_cnt_reg[24]),
        .I3(gate_cnt_reg[25]),
        .O(gate_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    gate_i_9
       (.I0(gate_cnt_reg[2]),
        .I1(gate_cnt_reg[3]),
        .I2(gate_cnt_reg[0]),
        .I3(gate_cnt_reg[1]),
        .O(gate_i_9_n_0));
  FDRE gate_reg
       (.C(CLK),
        .CE(1'b1),
        .D(gate_i_1_n_0),
        .Q(gate_reg_n_0),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \rise_s1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tdc_rise_fx[0]),
        .Q(rise_s1[0]),
        .R(\sync_reg[1]_1 ));
  FDRE \rise_s1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tdc_rise_fx[1]),
        .Q(rise_s1[1]),
        .R(\sync_reg[1]_1 ));
  FDRE \rise_s1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tdc_rise_fx[2]),
        .Q(rise_s1[2]),
        .R(\sync_reg[1]_1 ));
  FDRE \rise_s1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tdc_rise_fx[3]),
        .Q(rise_s1[3]),
        .R(\sync_reg[1]_1 ));
  FDRE \rise_s1_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tdc_rise_fx[4]),
        .Q(rise_s1[4]),
        .R(\sync_reg[1]_1 ));
  FDRE \rise_s1_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(tdc_rise_fx[5]),
        .Q(rise_s1[5]),
        .R(\sync_reg[1]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \settle_cnt[0]_i_1 
       (.I0(settle_cnt_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \settle_cnt[1]_i_1 
       (.I0(settle_cnt_reg__0[0]),
        .I1(settle_cnt_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \settle_cnt[2]_i_1 
       (.I0(settle_cnt_reg__0[0]),
        .I1(settle_cnt_reg__0[1]),
        .I2(settle_cnt_reg__0[2]),
        .O(\settle_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \settle_cnt[3]_i_1 
       (.I0(settle_cnt_reg__0[1]),
        .I1(settle_cnt_reg__0[0]),
        .I2(settle_cnt_reg__0[2]),
        .I3(settle_cnt_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \settle_cnt[4]_i_1 
       (.I0(settle_cnt_reg__0[2]),
        .I1(settle_cnt_reg__0[0]),
        .I2(settle_cnt_reg__0[1]),
        .I3(settle_cnt_reg__0[3]),
        .I4(settle_cnt_reg__0[4]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'h10FF)) 
    \settle_cnt[5]_i_1 
       (.I0(busy),
        .I1(eq_start_d),
        .I2(out),
        .I3(done_fs_reg_0),
        .O(\settle_cnt[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \settle_cnt[5]_i_2 
       (.I0(busy),
        .I1(done_fs_0),
        .I2(gate_reg_n_0),
        .O(\settle_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \settle_cnt[5]_i_3 
       (.I0(settle_cnt_reg__0[3]),
        .I1(settle_cnt_reg__0[1]),
        .I2(settle_cnt_reg__0[0]),
        .I3(settle_cnt_reg__0[2]),
        .I4(settle_cnt_reg__0[4]),
        .I5(settle_cnt_reg__0[5]),
        .O(p_0_in[5]));
  FDRE \settle_cnt_reg[0] 
       (.C(CLK),
        .CE(\settle_cnt[5]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(settle_cnt_reg__0[0]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \settle_cnt_reg[1] 
       (.C(CLK),
        .CE(\settle_cnt[5]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(settle_cnt_reg__0[1]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \settle_cnt_reg[2] 
       (.C(CLK),
        .CE(\settle_cnt[5]_i_2_n_0 ),
        .D(\settle_cnt[2]_i_1_n_0 ),
        .Q(settle_cnt_reg__0[2]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \settle_cnt_reg[3] 
       (.C(CLK),
        .CE(\settle_cnt[5]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(settle_cnt_reg__0[3]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \settle_cnt_reg[4] 
       (.C(CLK),
        .CE(\settle_cnt[5]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(settle_cnt_reg__0[4]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \settle_cnt_reg[5] 
       (.C(CLK),
        .CE(\settle_cnt[5]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(settle_cnt_reg__0[5]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \stand_cnt[0]_i_1 
       (.I0(busy),
        .I1(gate),
        .I2(gate_reg_n_0),
        .O(\stand_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \stand_cnt[0]_i_3 
       (.I0(stand_cnt_reg[0]),
        .O(\stand_cnt[0]_i_3_n_0 ));
  FDRE \stand_cnt_reg[0] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[0]_i_2_n_7 ),
        .Q(stand_cnt_reg[0]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  CARRY4 \stand_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\stand_cnt_reg[0]_i_2_n_0 ,\stand_cnt_reg[0]_i_2_n_1 ,\stand_cnt_reg[0]_i_2_n_2 ,\stand_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\stand_cnt_reg[0]_i_2_n_4 ,\stand_cnt_reg[0]_i_2_n_5 ,\stand_cnt_reg[0]_i_2_n_6 ,\stand_cnt_reg[0]_i_2_n_7 }),
        .S({stand_cnt_reg[3:1],\stand_cnt[0]_i_3_n_0 }));
  FDRE \stand_cnt_reg[10] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[8]_i_1_n_5 ),
        .Q(stand_cnt_reg[10]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[11] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[8]_i_1_n_4 ),
        .Q(stand_cnt_reg[11]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[12] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[12]_i_1_n_7 ),
        .Q(stand_cnt_reg[12]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  CARRY4 \stand_cnt_reg[12]_i_1 
       (.CI(\stand_cnt_reg[8]_i_1_n_0 ),
        .CO({\stand_cnt_reg[12]_i_1_n_0 ,\stand_cnt_reg[12]_i_1_n_1 ,\stand_cnt_reg[12]_i_1_n_2 ,\stand_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\stand_cnt_reg[12]_i_1_n_4 ,\stand_cnt_reg[12]_i_1_n_5 ,\stand_cnt_reg[12]_i_1_n_6 ,\stand_cnt_reg[12]_i_1_n_7 }),
        .S(stand_cnt_reg[15:12]));
  FDRE \stand_cnt_reg[13] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[12]_i_1_n_6 ),
        .Q(stand_cnt_reg[13]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[14] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[12]_i_1_n_5 ),
        .Q(stand_cnt_reg[14]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[15] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[12]_i_1_n_4 ),
        .Q(stand_cnt_reg[15]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[16] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[16]_i_1_n_7 ),
        .Q(stand_cnt_reg[16]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  CARRY4 \stand_cnt_reg[16]_i_1 
       (.CI(\stand_cnt_reg[12]_i_1_n_0 ),
        .CO({\stand_cnt_reg[16]_i_1_n_0 ,\stand_cnt_reg[16]_i_1_n_1 ,\stand_cnt_reg[16]_i_1_n_2 ,\stand_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\stand_cnt_reg[16]_i_1_n_4 ,\stand_cnt_reg[16]_i_1_n_5 ,\stand_cnt_reg[16]_i_1_n_6 ,\stand_cnt_reg[16]_i_1_n_7 }),
        .S(stand_cnt_reg[19:16]));
  FDRE \stand_cnt_reg[17] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[16]_i_1_n_6 ),
        .Q(stand_cnt_reg[17]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[18] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[16]_i_1_n_5 ),
        .Q(stand_cnt_reg[18]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[19] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[16]_i_1_n_4 ),
        .Q(stand_cnt_reg[19]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[1] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[0]_i_2_n_6 ),
        .Q(stand_cnt_reg[1]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[20] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[20]_i_1_n_7 ),
        .Q(stand_cnt_reg[20]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  CARRY4 \stand_cnt_reg[20]_i_1 
       (.CI(\stand_cnt_reg[16]_i_1_n_0 ),
        .CO({\stand_cnt_reg[20]_i_1_n_0 ,\stand_cnt_reg[20]_i_1_n_1 ,\stand_cnt_reg[20]_i_1_n_2 ,\stand_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\stand_cnt_reg[20]_i_1_n_4 ,\stand_cnt_reg[20]_i_1_n_5 ,\stand_cnt_reg[20]_i_1_n_6 ,\stand_cnt_reg[20]_i_1_n_7 }),
        .S(stand_cnt_reg[23:20]));
  FDRE \stand_cnt_reg[21] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[20]_i_1_n_6 ),
        .Q(stand_cnt_reg[21]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[22] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[20]_i_1_n_5 ),
        .Q(stand_cnt_reg[22]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[23] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[20]_i_1_n_4 ),
        .Q(stand_cnt_reg[23]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[24] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[24]_i_1_n_7 ),
        .Q(stand_cnt_reg[24]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  CARRY4 \stand_cnt_reg[24]_i_1 
       (.CI(\stand_cnt_reg[20]_i_1_n_0 ),
        .CO({\stand_cnt_reg[24]_i_1_n_0 ,\stand_cnt_reg[24]_i_1_n_1 ,\stand_cnt_reg[24]_i_1_n_2 ,\stand_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\stand_cnt_reg[24]_i_1_n_4 ,\stand_cnt_reg[24]_i_1_n_5 ,\stand_cnt_reg[24]_i_1_n_6 ,\stand_cnt_reg[24]_i_1_n_7 }),
        .S(stand_cnt_reg[27:24]));
  FDRE \stand_cnt_reg[25] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[24]_i_1_n_6 ),
        .Q(stand_cnt_reg[25]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[26] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[24]_i_1_n_5 ),
        .Q(stand_cnt_reg[26]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[27] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[24]_i_1_n_4 ),
        .Q(stand_cnt_reg[27]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[28] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[28]_i_1_n_7 ),
        .Q(stand_cnt_reg[28]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  CARRY4 \stand_cnt_reg[28]_i_1 
       (.CI(\stand_cnt_reg[24]_i_1_n_0 ),
        .CO({\NLW_stand_cnt_reg[28]_i_1_CO_UNCONNECTED [3],\stand_cnt_reg[28]_i_1_n_1 ,\stand_cnt_reg[28]_i_1_n_2 ,\stand_cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\stand_cnt_reg[28]_i_1_n_4 ,\stand_cnt_reg[28]_i_1_n_5 ,\stand_cnt_reg[28]_i_1_n_6 ,\stand_cnt_reg[28]_i_1_n_7 }),
        .S(stand_cnt_reg[31:28]));
  FDRE \stand_cnt_reg[29] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[28]_i_1_n_6 ),
        .Q(stand_cnt_reg[29]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[2] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[0]_i_2_n_5 ),
        .Q(stand_cnt_reg[2]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[30] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[28]_i_1_n_5 ),
        .Q(stand_cnt_reg[30]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[31] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[28]_i_1_n_4 ),
        .Q(stand_cnt_reg[31]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[3] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[0]_i_2_n_4 ),
        .Q(stand_cnt_reg[3]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[4] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[4]_i_1_n_7 ),
        .Q(stand_cnt_reg[4]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  CARRY4 \stand_cnt_reg[4]_i_1 
       (.CI(\stand_cnt_reg[0]_i_2_n_0 ),
        .CO({\stand_cnt_reg[4]_i_1_n_0 ,\stand_cnt_reg[4]_i_1_n_1 ,\stand_cnt_reg[4]_i_1_n_2 ,\stand_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\stand_cnt_reg[4]_i_1_n_4 ,\stand_cnt_reg[4]_i_1_n_5 ,\stand_cnt_reg[4]_i_1_n_6 ,\stand_cnt_reg[4]_i_1_n_7 }),
        .S(stand_cnt_reg[7:4]));
  FDRE \stand_cnt_reg[5] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[4]_i_1_n_6 ),
        .Q(stand_cnt_reg[5]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[6] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[4]_i_1_n_5 ),
        .Q(stand_cnt_reg[6]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[7] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[4]_i_1_n_4 ),
        .Q(stand_cnt_reg[7]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  FDRE \stand_cnt_reg[8] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[8]_i_1_n_7 ),
        .Q(stand_cnt_reg[8]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  CARRY4 \stand_cnt_reg[8]_i_1 
       (.CI(\stand_cnt_reg[4]_i_1_n_0 ),
        .CO({\stand_cnt_reg[8]_i_1_n_0 ,\stand_cnt_reg[8]_i_1_n_1 ,\stand_cnt_reg[8]_i_1_n_2 ,\stand_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\stand_cnt_reg[8]_i_1_n_4 ,\stand_cnt_reg[8]_i_1_n_5 ,\stand_cnt_reg[8]_i_1_n_6 ,\stand_cnt_reg[8]_i_1_n_7 }),
        .S(stand_cnt_reg[11:8]));
  FDRE \stand_cnt_reg[9] 
       (.C(CLK),
        .CE(\stand_cnt[0]_i_1_n_0 ),
        .D(\stand_cnt_reg[8]_i_1_n_6 ),
        .Q(stand_cnt_reg[9]),
        .R(\settle_cnt[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \stand_result[31]_i_1 
       (.I0(busy),
        .I1(gate),
        .I2(gate_reg_n_0),
        .O(stand_result_1));
  FDRE \stand_result_reg[0] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[0]),
        .Q(stand_result[0]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[10] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[10]),
        .Q(stand_result[10]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[11] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[11]),
        .Q(stand_result[11]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[12] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[12]),
        .Q(stand_result[12]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[13] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[13]),
        .Q(stand_result[13]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[14] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[14]),
        .Q(stand_result[14]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[15] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[15]),
        .Q(stand_result[15]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[16] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[16]),
        .Q(stand_result[16]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[17] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[17]),
        .Q(stand_result[17]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[18] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[18]),
        .Q(stand_result[18]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[19] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[19]),
        .Q(stand_result[19]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[1] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[1]),
        .Q(stand_result[1]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[20] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[20]),
        .Q(stand_result[20]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[21] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[21]),
        .Q(stand_result[21]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[22] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[22]),
        .Q(stand_result[22]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[23] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[23]),
        .Q(stand_result[23]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[24] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[24]),
        .Q(stand_result[24]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[25] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[25]),
        .Q(stand_result[25]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[26] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[26]),
        .Q(stand_result[26]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[27] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[27]),
        .Q(stand_result[27]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[28] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[28]),
        .Q(stand_result[28]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[29] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[29]),
        .Q(stand_result[29]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[2] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[2]),
        .Q(stand_result[2]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[30] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[30]),
        .Q(stand_result[30]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[31] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[31]),
        .Q(stand_result[31]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[3] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[3]),
        .Q(stand_result[3]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[4] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[4]),
        .Q(stand_result[4]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[5] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[5]),
        .Q(stand_result[5]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[6] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[6]),
        .Q(stand_result[6]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[7] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[7]),
        .Q(stand_result[7]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[8] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[8]),
        .Q(stand_result[8]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_result_reg[9] 
       (.C(CLK),
        .CE(stand_result_1),
        .D(stand_cnt_reg[9]),
        .Q(stand_result[9]),
        .R(\gate_cnt_reg[31]_0 ));
  FDRE \stand_s1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[0]),
        .Q(stand_s1[0]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[10]),
        .Q(stand_s1[10]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[11]),
        .Q(stand_s1[11]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[12]),
        .Q(stand_s1[12]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[13]),
        .Q(stand_s1[13]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[14]),
        .Q(stand_s1[14]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[15]),
        .Q(stand_s1[15]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[16]),
        .Q(stand_s1[16]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[17]),
        .Q(stand_s1[17]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[18]),
        .Q(stand_s1[18]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[19]),
        .Q(stand_s1[19]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[1]),
        .Q(stand_s1[1]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[20]),
        .Q(stand_s1[20]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[21]),
        .Q(stand_s1[21]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[22]),
        .Q(stand_s1[22]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[23]),
        .Q(stand_s1[23]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[24]),
        .Q(stand_s1[24]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[25]),
        .Q(stand_s1[25]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[26]),
        .Q(stand_s1[26]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[27]),
        .Q(stand_s1[27]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[28]),
        .Q(stand_s1[28]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[29]),
        .Q(stand_s1[29]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[2]),
        .Q(stand_s1[2]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[30]),
        .Q(stand_s1[30]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[31]),
        .Q(stand_s1[31]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[3]),
        .Q(stand_s1[3]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[4]),
        .Q(stand_s1[4]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[5]),
        .Q(stand_s1[5]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[6]),
        .Q(stand_s1[6]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[7]),
        .Q(stand_s1[7]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[8]),
        .Q(stand_s1[8]),
        .R(\sync_reg[1]_1 ));
  FDRE \stand_s1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(stand_result[9]),
        .Q(stand_s1[9]),
        .R(\sync_reg[1]_1 ));
  FDRE \tdc_fall_fx_reg[0] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(\tdc_rise_fx[0]_i_1_n_0 ),
        .Q(tdc_fall_fx[0]),
        .R(SR));
  FDRE \tdc_fall_fx_reg[1] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(\tdc_rise_fx[1]_i_1_n_0 ),
        .Q(tdc_fall_fx[1]),
        .R(SR));
  FDRE \tdc_fall_fx_reg[2] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(\tdc_rise_fx[2]_i_1_n_0 ),
        .Q(tdc_fall_fx[2]),
        .R(SR));
  FDRE \tdc_fall_fx_reg[3] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(\tdc_rise_fx[3]_i_1_n_0 ),
        .Q(tdc_fall_fx[3]),
        .R(SR));
  FDRE \tdc_fall_fx_reg[4] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(\tdc_rise_fx[4]_i_1_n_0 ),
        .Q(tdc_fall_fx[4]),
        .R(SR));
  FDRE \tdc_fall_fx_reg[5] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(\tdc_rise_fx[5]_i_2_n_0 ),
        .Q(tdc_fall_fx[5]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tdc_rise_fx[0]_i_1 
       (.I0(tdc_vld),
        .I1(tdc_val[0]),
        .O(\tdc_rise_fx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tdc_rise_fx[1]_i_1 
       (.I0(tdc_vld),
        .I1(tdc_val[1]),
        .O(\tdc_rise_fx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tdc_rise_fx[2]_i_1 
       (.I0(tdc_vld),
        .I1(tdc_val[2]),
        .O(\tdc_rise_fx[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tdc_rise_fx[3]_i_1 
       (.I0(tdc_vld),
        .I1(tdc_val[3]),
        .O(\tdc_rise_fx[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tdc_rise_fx[4]_i_1 
       (.I0(tdc_vld),
        .I1(tdc_val[4]),
        .O(\tdc_rise_fx[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tdc_rise_fx[5]_i_2 
       (.I0(tdc_vld),
        .I1(tdc_val[5]),
        .O(\tdc_rise_fx[5]_i_2_n_0 ));
  FDRE \tdc_rise_fx_reg[0] 
       (.C(clk_fx),
        .CE(gate_fx_rise),
        .D(\tdc_rise_fx[0]_i_1_n_0 ),
        .Q(tdc_rise_fx[0]),
        .R(SR));
  FDRE \tdc_rise_fx_reg[1] 
       (.C(clk_fx),
        .CE(gate_fx_rise),
        .D(\tdc_rise_fx[1]_i_1_n_0 ),
        .Q(tdc_rise_fx[1]),
        .R(SR));
  FDRE \tdc_rise_fx_reg[2] 
       (.C(clk_fx),
        .CE(gate_fx_rise),
        .D(\tdc_rise_fx[2]_i_1_n_0 ),
        .Q(tdc_rise_fx[2]),
        .R(SR));
  FDRE \tdc_rise_fx_reg[3] 
       (.C(clk_fx),
        .CE(gate_fx_rise),
        .D(\tdc_rise_fx[3]_i_1_n_0 ),
        .Q(tdc_rise_fx[3]),
        .R(SR));
  FDRE \tdc_rise_fx_reg[4] 
       (.C(clk_fx),
        .CE(gate_fx_rise),
        .D(\tdc_rise_fx[4]_i_1_n_0 ),
        .Q(tdc_rise_fx[4]),
        .R(SR));
  FDRE \tdc_rise_fx_reg[5] 
       (.C(clk_fx),
        .CE(gate_fx_rise),
        .D(\tdc_rise_fx[5]_i_2_n_0 ),
        .Q(tdc_rise_fx[5]),
        .R(SR));
  FDRE \tdc_test_fall_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fall_s1[0]),
        .Q(\tdc_test_fall_reg[5]_0 [0]),
        .R(\sync_reg[1]_1 ));
  FDRE \tdc_test_fall_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fall_s1[1]),
        .Q(\tdc_test_fall_reg[5]_0 [1]),
        .R(\sync_reg[1]_1 ));
  FDRE \tdc_test_fall_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fall_s1[2]),
        .Q(\tdc_test_fall_reg[5]_0 [2]),
        .R(\sync_reg[1]_1 ));
  FDRE \tdc_test_fall_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fall_s1[3]),
        .Q(\tdc_test_fall_reg[5]_0 [3]),
        .R(\sync_reg[1]_1 ));
  FDRE \tdc_test_fall_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fall_s1[4]),
        .Q(\tdc_test_fall_reg[5]_0 [4]),
        .R(\sync_reg[1]_1 ));
  FDRE \tdc_test_fall_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(fall_s1[5]),
        .Q(\tdc_test_fall_reg[5]_0 [5]),
        .R(\sync_reg[1]_1 ));
  FDRE \tdc_test_rise_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rise_s1[0]),
        .Q(Q[0]),
        .R(\sync_reg[1]_1 ));
  FDRE \tdc_test_rise_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rise_s1[1]),
        .Q(Q[1]),
        .R(\sync_reg[1]_1 ));
  FDRE \tdc_test_rise_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rise_s1[2]),
        .Q(Q[2]),
        .R(\sync_reg[1]_1 ));
  FDRE \tdc_test_rise_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rise_s1[3]),
        .Q(Q[3]),
        .R(\sync_reg[1]_1 ));
  FDRE \tdc_test_rise_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rise_s1[4]),
        .Q(Q[4]),
        .R(\sync_reg[1]_1 ));
  FDRE \tdc_test_rise_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rise_s1[5]),
        .Q(Q[5]),
        .R(\sync_reg[1]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \test_cnt[0]_i_3 
       (.I0(test_cnt_reg[0]),
        .O(\test_cnt[0]_i_3_n_0 ));
  FDRE \test_cnt_reg[0] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[0]_i_2_n_7 ),
        .Q(test_cnt_reg[0]),
        .R(u_gate_sync_n_1));
  CARRY4 \test_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\test_cnt_reg[0]_i_2_n_0 ,\test_cnt_reg[0]_i_2_n_1 ,\test_cnt_reg[0]_i_2_n_2 ,\test_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\test_cnt_reg[0]_i_2_n_4 ,\test_cnt_reg[0]_i_2_n_5 ,\test_cnt_reg[0]_i_2_n_6 ,\test_cnt_reg[0]_i_2_n_7 }),
        .S({test_cnt_reg[3:1],\test_cnt[0]_i_3_n_0 }));
  FDRE \test_cnt_reg[10] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[8]_i_1_n_5 ),
        .Q(test_cnt_reg[10]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[11] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[8]_i_1_n_4 ),
        .Q(test_cnt_reg[11]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[12] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[12]_i_1_n_7 ),
        .Q(test_cnt_reg[12]),
        .R(u_gate_sync_n_1));
  CARRY4 \test_cnt_reg[12]_i_1 
       (.CI(\test_cnt_reg[8]_i_1_n_0 ),
        .CO({\test_cnt_reg[12]_i_1_n_0 ,\test_cnt_reg[12]_i_1_n_1 ,\test_cnt_reg[12]_i_1_n_2 ,\test_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\test_cnt_reg[12]_i_1_n_4 ,\test_cnt_reg[12]_i_1_n_5 ,\test_cnt_reg[12]_i_1_n_6 ,\test_cnt_reg[12]_i_1_n_7 }),
        .S(test_cnt_reg[15:12]));
  FDRE \test_cnt_reg[13] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[12]_i_1_n_6 ),
        .Q(test_cnt_reg[13]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[14] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[12]_i_1_n_5 ),
        .Q(test_cnt_reg[14]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[15] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[12]_i_1_n_4 ),
        .Q(test_cnt_reg[15]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[16] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[16]_i_1_n_7 ),
        .Q(test_cnt_reg[16]),
        .R(u_gate_sync_n_1));
  CARRY4 \test_cnt_reg[16]_i_1 
       (.CI(\test_cnt_reg[12]_i_1_n_0 ),
        .CO({\test_cnt_reg[16]_i_1_n_0 ,\test_cnt_reg[16]_i_1_n_1 ,\test_cnt_reg[16]_i_1_n_2 ,\test_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\test_cnt_reg[16]_i_1_n_4 ,\test_cnt_reg[16]_i_1_n_5 ,\test_cnt_reg[16]_i_1_n_6 ,\test_cnt_reg[16]_i_1_n_7 }),
        .S(test_cnt_reg[19:16]));
  FDRE \test_cnt_reg[17] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[16]_i_1_n_6 ),
        .Q(test_cnt_reg[17]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[18] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[16]_i_1_n_5 ),
        .Q(test_cnt_reg[18]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[19] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[16]_i_1_n_4 ),
        .Q(test_cnt_reg[19]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[1] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[0]_i_2_n_6 ),
        .Q(test_cnt_reg[1]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[20] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[20]_i_1_n_7 ),
        .Q(test_cnt_reg[20]),
        .R(u_gate_sync_n_1));
  CARRY4 \test_cnt_reg[20]_i_1 
       (.CI(\test_cnt_reg[16]_i_1_n_0 ),
        .CO({\test_cnt_reg[20]_i_1_n_0 ,\test_cnt_reg[20]_i_1_n_1 ,\test_cnt_reg[20]_i_1_n_2 ,\test_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\test_cnt_reg[20]_i_1_n_4 ,\test_cnt_reg[20]_i_1_n_5 ,\test_cnt_reg[20]_i_1_n_6 ,\test_cnt_reg[20]_i_1_n_7 }),
        .S(test_cnt_reg[23:20]));
  FDRE \test_cnt_reg[21] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[20]_i_1_n_6 ),
        .Q(test_cnt_reg[21]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[22] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[20]_i_1_n_5 ),
        .Q(test_cnt_reg[22]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[23] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[20]_i_1_n_4 ),
        .Q(test_cnt_reg[23]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[24] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[24]_i_1_n_7 ),
        .Q(test_cnt_reg[24]),
        .R(u_gate_sync_n_1));
  CARRY4 \test_cnt_reg[24]_i_1 
       (.CI(\test_cnt_reg[20]_i_1_n_0 ),
        .CO({\test_cnt_reg[24]_i_1_n_0 ,\test_cnt_reg[24]_i_1_n_1 ,\test_cnt_reg[24]_i_1_n_2 ,\test_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\test_cnt_reg[24]_i_1_n_4 ,\test_cnt_reg[24]_i_1_n_5 ,\test_cnt_reg[24]_i_1_n_6 ,\test_cnt_reg[24]_i_1_n_7 }),
        .S(test_cnt_reg[27:24]));
  FDRE \test_cnt_reg[25] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[24]_i_1_n_6 ),
        .Q(test_cnt_reg[25]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[26] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[24]_i_1_n_5 ),
        .Q(test_cnt_reg[26]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[27] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[24]_i_1_n_4 ),
        .Q(test_cnt_reg[27]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[28] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[28]_i_1_n_7 ),
        .Q(test_cnt_reg[28]),
        .R(u_gate_sync_n_1));
  CARRY4 \test_cnt_reg[28]_i_1 
       (.CI(\test_cnt_reg[24]_i_1_n_0 ),
        .CO({\NLW_test_cnt_reg[28]_i_1_CO_UNCONNECTED [3],\test_cnt_reg[28]_i_1_n_1 ,\test_cnt_reg[28]_i_1_n_2 ,\test_cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\test_cnt_reg[28]_i_1_n_4 ,\test_cnt_reg[28]_i_1_n_5 ,\test_cnt_reg[28]_i_1_n_6 ,\test_cnt_reg[28]_i_1_n_7 }),
        .S(test_cnt_reg[31:28]));
  FDRE \test_cnt_reg[29] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[28]_i_1_n_6 ),
        .Q(test_cnt_reg[29]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[2] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[0]_i_2_n_5 ),
        .Q(test_cnt_reg[2]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[30] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[28]_i_1_n_5 ),
        .Q(test_cnt_reg[30]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[31] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[28]_i_1_n_4 ),
        .Q(test_cnt_reg[31]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[3] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[0]_i_2_n_4 ),
        .Q(test_cnt_reg[3]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[4] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[4]_i_1_n_7 ),
        .Q(test_cnt_reg[4]),
        .R(u_gate_sync_n_1));
  CARRY4 \test_cnt_reg[4]_i_1 
       (.CI(\test_cnt_reg[0]_i_2_n_0 ),
        .CO({\test_cnt_reg[4]_i_1_n_0 ,\test_cnt_reg[4]_i_1_n_1 ,\test_cnt_reg[4]_i_1_n_2 ,\test_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\test_cnt_reg[4]_i_1_n_4 ,\test_cnt_reg[4]_i_1_n_5 ,\test_cnt_reg[4]_i_1_n_6 ,\test_cnt_reg[4]_i_1_n_7 }),
        .S(test_cnt_reg[7:4]));
  FDRE \test_cnt_reg[5] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[4]_i_1_n_6 ),
        .Q(test_cnt_reg[5]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[6] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[4]_i_1_n_5 ),
        .Q(test_cnt_reg[6]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[7] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[4]_i_1_n_4 ),
        .Q(test_cnt_reg[7]),
        .R(u_gate_sync_n_1));
  FDRE \test_cnt_reg[8] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[8]_i_1_n_7 ),
        .Q(test_cnt_reg[8]),
        .R(u_gate_sync_n_1));
  CARRY4 \test_cnt_reg[8]_i_1 
       (.CI(\test_cnt_reg[4]_i_1_n_0 ),
        .CO({\test_cnt_reg[8]_i_1_n_0 ,\test_cnt_reg[8]_i_1_n_1 ,\test_cnt_reg[8]_i_1_n_2 ,\test_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\test_cnt_reg[8]_i_1_n_4 ,\test_cnt_reg[8]_i_1_n_5 ,\test_cnt_reg[8]_i_1_n_6 ,\test_cnt_reg[8]_i_1_n_7 }),
        .S(test_cnt_reg[11:8]));
  FDRE \test_cnt_reg[9] 
       (.C(clk_fx),
        .CE(gate_fx),
        .D(\test_cnt_reg[8]_i_1_n_6 ),
        .Q(test_cnt_reg[9]),
        .R(u_gate_sync_n_1));
  FDRE \test_result_reg[0] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[0]),
        .Q(test_result[0]),
        .R(SR));
  FDRE \test_result_reg[10] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[10]),
        .Q(test_result[10]),
        .R(SR));
  FDRE \test_result_reg[11] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[11]),
        .Q(test_result[11]),
        .R(SR));
  FDRE \test_result_reg[12] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[12]),
        .Q(test_result[12]),
        .R(SR));
  FDRE \test_result_reg[13] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[13]),
        .Q(test_result[13]),
        .R(SR));
  FDRE \test_result_reg[14] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[14]),
        .Q(test_result[14]),
        .R(SR));
  FDRE \test_result_reg[15] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[15]),
        .Q(test_result[15]),
        .R(SR));
  FDRE \test_result_reg[16] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[16]),
        .Q(test_result[16]),
        .R(SR));
  FDRE \test_result_reg[17] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[17]),
        .Q(test_result[17]),
        .R(SR));
  FDRE \test_result_reg[18] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[18]),
        .Q(test_result[18]),
        .R(SR));
  FDRE \test_result_reg[19] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[19]),
        .Q(test_result[19]),
        .R(SR));
  FDRE \test_result_reg[1] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[1]),
        .Q(test_result[1]),
        .R(SR));
  FDRE \test_result_reg[20] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[20]),
        .Q(test_result[20]),
        .R(SR));
  FDRE \test_result_reg[21] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[21]),
        .Q(test_result[21]),
        .R(SR));
  FDRE \test_result_reg[22] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[22]),
        .Q(test_result[22]),
        .R(SR));
  FDRE \test_result_reg[23] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[23]),
        .Q(test_result[23]),
        .R(SR));
  FDRE \test_result_reg[24] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[24]),
        .Q(test_result[24]),
        .R(SR));
  FDRE \test_result_reg[25] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[25]),
        .Q(test_result[25]),
        .R(SR));
  FDRE \test_result_reg[26] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[26]),
        .Q(test_result[26]),
        .R(SR));
  FDRE \test_result_reg[27] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[27]),
        .Q(test_result[27]),
        .R(SR));
  FDRE \test_result_reg[28] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[28]),
        .Q(test_result[28]),
        .R(SR));
  FDRE \test_result_reg[29] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[29]),
        .Q(test_result[29]),
        .R(SR));
  FDRE \test_result_reg[2] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[2]),
        .Q(test_result[2]),
        .R(SR));
  FDRE \test_result_reg[30] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[30]),
        .Q(test_result[30]),
        .R(SR));
  FDRE \test_result_reg[31] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[31]),
        .Q(test_result[31]),
        .R(SR));
  FDRE \test_result_reg[3] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[3]),
        .Q(test_result[3]),
        .R(SR));
  FDRE \test_result_reg[4] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[4]),
        .Q(test_result[4]),
        .R(SR));
  FDRE \test_result_reg[5] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[5]),
        .Q(test_result[5]),
        .R(SR));
  FDRE \test_result_reg[6] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[6]),
        .Q(test_result[6]),
        .R(SR));
  FDRE \test_result_reg[7] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[7]),
        .Q(test_result[7]),
        .R(SR));
  FDRE \test_result_reg[8] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[8]),
        .Q(test_result[8]),
        .R(SR));
  FDRE \test_result_reg[9] 
       (.C(clk_fx),
        .CE(gate_fx_fall),
        .D(test_cnt_reg[9]),
        .Q(test_result[9]),
        .R(SR));
  FDRE \test_s1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[0]),
        .Q(test_s1[0]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[10]),
        .Q(test_s1[10]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[11]),
        .Q(test_s1[11]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[12]),
        .Q(test_s1[12]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[13]),
        .Q(test_s1[13]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[14]),
        .Q(test_s1[14]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[15]),
        .Q(test_s1[15]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[16]),
        .Q(test_s1[16]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[17]),
        .Q(test_s1[17]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[18]),
        .Q(test_s1[18]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[19]),
        .Q(test_s1[19]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[1]),
        .Q(test_s1[1]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[20]),
        .Q(test_s1[20]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[21]),
        .Q(test_s1[21]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[22]),
        .Q(test_s1[22]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[23]),
        .Q(test_s1[23]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[24]),
        .Q(test_s1[24]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[25]),
        .Q(test_s1[25]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[26]),
        .Q(test_s1[26]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[27]),
        .Q(test_s1[27]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[28]),
        .Q(test_s1[28]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[29]),
        .Q(test_s1[29]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[2]),
        .Q(test_s1[2]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[30]),
        .Q(test_s1[30]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[31]),
        .Q(test_s1[31]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[3]),
        .Q(test_s1[3]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[4]),
        .Q(test_s1[4]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[5]),
        .Q(test_s1[5]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[6]),
        .Q(test_s1[6]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[7]),
        .Q(test_s1[7]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[8]),
        .Q(test_s1[8]),
        .R(\sync_reg[1]_1 ));
  FDRE \test_s1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(test_result[9]),
        .Q(test_s1[9]),
        .R(\sync_reg[1]_1 ));
  ps_Counter_Core_0_1_bit_sync_9 u_busy_sync
       (.busy(busy),
        .s_axi_aclk(s_axi_aclk),
        .\sync_reg[0]_0 (\sync_reg[1]_1 ),
        .\sync_reg[1]_0 (\sync_reg[1]_0 ));
  ps_Counter_Core_0_1_bit_sync_10 u_done_sync
       (.D(done_fs),
        .s_axi_aclk(s_axi_aclk),
        .\sync_reg[1]_0 (\sync_reg[1] ),
        .\sync_reg[1]_1 (\sync_reg[1]_1 ));
  ps_Counter_Core_0_1_bit_sync__parameterized0 u_gate_sync
       (.E(gate_fx_fall),
        .SR(SR),
        .clk_fx(clk_fx),
        .gate_fx_d(gate_fx_d),
        .gate_fx_d_reg(u_gate_sync_n_1),
        .out(gate_fx),
        .\sync_reg[0]_0 (gate_reg_n_0),
        .\sync_reg[2]_0 (gate_fx_rise),
        .\test_cnt_reg[31] (\test_cnt_reg[31]_0 ));
  ps_Counter_Core_0_1_tdc_11 u_tdc_test
       (.Q(tdc_val),
        .SR(SR),
        .clk_fx(clk_fx),
        .\tap_reg_reg[3]_0 (gate_reg_n_0),
        .tdc_vld(tdc_vld));
endmodule

(* ORIG_REF_NAME = "rst_sync" *) 
module ps_Counter_Core_0_1_rst_sync
   (\sync_reg[2]_0 ,
    s_axi_aclk,
    \sync_reg[1]_0 );
  output [0:0]\sync_reg[2]_0 ;
  input s_axi_aclk;
  input \sync_reg[1]_0 ;

  wire s_axi_aclk;
  (* async_reg = "true" *) wire [2:0]sync;
  wire \sync_reg[1]_0 ;
  wire [0:0]\sync_reg[2]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \sync[1]_i_1__0 
       (.I0(sync[2]),
        .O(\sync_reg[2]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\sync_reg[1]_0 ),
        .D(1'b1),
        .Q(sync[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\sync_reg[1]_0 ),
        .D(sync[0]),
        .Q(sync[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\sync_reg[1]_0 ),
        .D(sync[1]),
        .Q(sync[2]));
endmodule

(* ORIG_REF_NAME = "rst_sync" *) 
module ps_Counter_Core_0_1_rst_sync_0
   (out,
    SR,
    CLK,
    \sync_reg[2]_0 );
  output [0:0]out;
  output [0:0]SR;
  input CLK;
  input \sync_reg[2]_0 ;

  wire CLK;
  wire [0:0]SR;
  (* async_reg = "true" *) wire [2:0]sync;
  wire \sync_reg[2]_0 ;

  assign out[0] = sync[2];
  LUT1 #(
    .INIT(2'h1)) 
    \sync[1]_i_1 
       (.I0(sync[2]),
        .O(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sync_reg[2]_0 ),
        .D(1'b1),
        .Q(sync[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sync_reg[2]_0 ),
        .D(sync[0]),
        .Q(sync[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sync_reg[2]_0 ),
        .D(sync[1]),
        .Q(sync[2]));
endmodule

(* ORIG_REF_NAME = "rst_sync" *) 
module ps_Counter_Core_0_1_rst_sync_1
   (out,
    SR,
    clk_fx,
    \sync_reg[2]_0 );
  output [0:0]out;
  output [0:0]SR;
  input clk_fx;
  input \sync_reg[2]_0 ;

  wire [0:0]SR;
  wire clk_fx;
  (* async_reg = "true" *) wire [2:0]sync;
  wire \sync_reg[2]_0 ;

  assign out[0] = sync[2];
  LUT1 #(
    .INIT(2'h1)) 
    \sync[2]_i_1 
       (.I0(sync[2]),
        .O(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_reg[0] 
       (.C(clk_fx),
        .CE(1'b1),
        .CLR(\sync_reg[2]_0 ),
        .D(1'b1),
        .Q(sync[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_reg[1] 
       (.C(clk_fx),
        .CE(1'b1),
        .CLR(\sync_reg[2]_0 ),
        .D(sync[0]),
        .Q(sync[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_reg[2] 
       (.C(clk_fx),
        .CE(1'b1),
        .CLR(\sync_reg[2]_0 ),
        .D(sync[1]),
        .Q(sync[2]));
endmodule

(* ORIG_REF_NAME = "rst_sync" *) 
module ps_Counter_Core_0_1_rst_sync_3
   (\sync_reg[2]_0 ,
    SR,
    \pop_cnt_reg[15] ,
    s_axi_aclk,
    \sync_reg[2]_1 );
  output \sync_reg[2]_0 ;
  output [0:0]SR;
  input [0:0]\pop_cnt_reg[15] ;
  input s_axi_aclk;
  input \sync_reg[2]_1 ;

  wire [0:0]SR;
  wire [0:0]\pop_cnt_reg[15] ;
  wire s_axi_aclk;
  (* async_reg = "true" *) wire [2:0]sync;
  wire \sync_reg[2]_0 ;
  wire \sync_reg[2]_1 ;

  LUT1 #(
    .INIT(2'h1)) 
    out_last_i_1
       (.I0(sync[2]),
        .O(SR));
  LUT2 #(
    .INIT(4'h7)) 
    \pop_cnt[0]_i_1 
       (.I0(sync[2]),
        .I1(\pop_cnt_reg[15] ),
        .O(\sync_reg[2]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\sync_reg[2]_1 ),
        .D(1'b1),
        .Q(sync[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\sync_reg[2]_1 ),
        .D(sync[0]),
        .Q(sync[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(\sync_reg[2]_1 ),
        .D(sync[1]),
        .Q(sync[2]));
endmodule

(* ORIG_REF_NAME = "rst_sync" *) 
module ps_Counter_Core_0_1_rst_sync_4
   (out,
    SR,
    CLK,
    \sync_reg[0]_0 );
  output [0:0]out;
  output [0:0]SR;
  input CLK;
  input \sync_reg[0]_0 ;

  wire CLK;
  wire [0:0]SR;
  (* async_reg = "true" *) wire [2:0]sync;
  wire \sync_reg[0]_0 ;

  assign out[0] = sync[2];
  LUT1 #(
    .INIT(2'h1)) 
    \gray_src[12]_i_1 
       (.I0(sync[2]),
        .O(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sync_reg[0]_0 ),
        .D(1'b1),
        .Q(sync[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sync_reg[0]_0 ),
        .D(sync[0]),
        .Q(sync[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\sync_reg[0]_0 ),
        .D(sync[1]),
        .Q(sync[2]));
endmodule

(* ORIG_REF_NAME = "tdc" *) 
module ps_Counter_Core_0_1_tdc
   (ts_word,
    clk_fx,
    SR,
    CLK);
  output [6:0]ts_word;
  input clk_fx;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [0:0]SR;
  wire carry_1;
  wire carry_10;
  wire carry_11;
  wire carry_12;
  wire carry_13;
  wire carry_14;
  wire carry_15;
  wire carry_2;
  wire carry_3;
  wire carry_4;
  wire carry_5;
  wire carry_6;
  wire carry_7;
  wire carry_8;
  wire carry_9;
  wire clk_fx;
  wire \grp_sum[0][0]_i_2_n_0 ;
  wire \grp_sum[0][1]_i_2_n_0 ;
  wire \grp_sum[0][2]_i_2_n_0 ;
  wire \grp_sum[0][3]_i_2_n_0 ;
  wire \grp_sum[0][3]_i_3_n_0 ;
  wire \grp_sum[0][3]_i_4_n_0 ;
  wire \grp_sum[1][0]_i_2_n_0 ;
  wire \grp_sum[1][1]_i_2_n_0 ;
  wire \grp_sum[1][2]_i_2_n_0 ;
  wire \grp_sum[1][3]_i_2_n_0 ;
  wire \grp_sum[1][3]_i_3_n_0 ;
  wire \grp_sum[1][3]_i_4_n_0 ;
  wire \grp_sum[2][0]_i_2_n_0 ;
  wire \grp_sum[2][1]_i_2_n_0 ;
  wire \grp_sum[2][2]_i_2_n_0 ;
  wire \grp_sum[2][3]_i_2_n_0 ;
  wire \grp_sum[2][3]_i_3_n_0 ;
  wire \grp_sum[2][3]_i_4_n_0 ;
  wire \grp_sum[3][0]_i_2_n_0 ;
  wire \grp_sum[3][1]_i_2_n_0 ;
  wire \grp_sum[3][2]_i_2_n_0 ;
  wire \grp_sum[3][3]_i_2_n_0 ;
  wire \grp_sum[3][3]_i_3_n_0 ;
  wire \grp_sum[3][3]_i_4_n_0 ;
  wire \grp_sum[4][0]_i_2_n_0 ;
  wire \grp_sum[4][1]_i_2_n_0 ;
  wire \grp_sum[4][2]_i_2_n_0 ;
  wire \grp_sum[4][3]_i_2_n_0 ;
  wire \grp_sum[4][3]_i_3_n_0 ;
  wire \grp_sum[4][3]_i_4_n_0 ;
  wire \grp_sum[5][0]_i_2_n_0 ;
  wire \grp_sum[5][1]_i_2_n_0 ;
  wire \grp_sum[5][2]_i_2_n_0 ;
  wire \grp_sum[5][3]_i_2_n_0 ;
  wire \grp_sum[5][3]_i_3_n_0 ;
  wire \grp_sum[5][3]_i_4_n_0 ;
  wire \grp_sum[6][0]_i_2_n_0 ;
  wire \grp_sum[6][1]_i_2_n_0 ;
  wire \grp_sum[6][2]_i_2_n_0 ;
  wire \grp_sum[6][3]_i_2_n_0 ;
  wire \grp_sum[6][3]_i_3_n_0 ;
  wire \grp_sum[6][3]_i_4_n_0 ;
  wire \grp_sum[7][0]_i_2_n_0 ;
  wire \grp_sum[7][1]_i_2_n_0 ;
  wire \grp_sum[7][2]_i_2_n_0 ;
  wire \grp_sum[7][3]_i_2_n_0 ;
  wire \grp_sum[7][3]_i_3_n_0 ;
  wire \grp_sum[7][3]_i_4_n_0 ;
  wire [3:0]\grp_sum_reg[0]_7 ;
  wire [3:0]\grp_sum_reg[1]_0 ;
  wire [3:0]\grp_sum_reg[2]_1 ;
  wire [3:0]\grp_sum_reg[3]_2 ;
  wire [3:0]\grp_sum_reg[4]_3 ;
  wire [3:0]\grp_sum_reg[5]_4 ;
  wire [3:0]\grp_sum_reg[6]_5 ;
  wire [3:0]\grp_sum_reg[7]_6 ;
  wire [3:0]popcount80_return;
  wire [3:0]popcount81_return;
  wire [3:0]popcount82_return;
  wire [3:0]popcount83_return;
  wire [3:0]popcount84_return;
  wire [3:0]popcount85_return;
  wire [3:0]popcount86_return;
  wire [3:0]popcount8_return;
  wire [6:0]sum_comb;
  wire [63:0]tap_orig;
  (* async_reg = "true" *) wire [63:0]tap_reg;
  wire tdc_valid_i_1_n_0;
  wire tdc_value0__1_carry__0_i_10_n_0;
  wire tdc_value0__1_carry__0_i_11_n_0;
  wire tdc_value0__1_carry__0_i_1_n_0;
  wire tdc_value0__1_carry__0_i_2_n_0;
  wire tdc_value0__1_carry__0_i_3_n_0;
  wire tdc_value0__1_carry__0_i_4_n_0;
  wire tdc_value0__1_carry__0_i_5_n_0;
  wire tdc_value0__1_carry__0_i_6_n_0;
  wire tdc_value0__1_carry__0_i_7_n_0;
  wire tdc_value0__1_carry__0_i_8_n_0;
  wire tdc_value0__1_carry__0_i_9_n_0;
  wire tdc_value0__1_carry__0_n_3;
  wire tdc_value0__1_carry_i_10_n_0;
  wire tdc_value0__1_carry_i_11_n_0;
  wire tdc_value0__1_carry_i_12_n_0;
  wire tdc_value0__1_carry_i_13_n_0;
  wire tdc_value0__1_carry_i_14_n_0;
  wire tdc_value0__1_carry_i_15_n_0;
  wire tdc_value0__1_carry_i_16_n_0;
  wire tdc_value0__1_carry_i_17_n_0;
  wire tdc_value0__1_carry_i_18_n_0;
  wire tdc_value0__1_carry_i_19_n_0;
  wire tdc_value0__1_carry_i_1_n_0;
  wire tdc_value0__1_carry_i_20_n_0;
  wire tdc_value0__1_carry_i_21_n_0;
  wire tdc_value0__1_carry_i_22_n_0;
  wire tdc_value0__1_carry_i_23_n_0;
  wire tdc_value0__1_carry_i_24_n_0;
  wire tdc_value0__1_carry_i_2_n_0;
  wire tdc_value0__1_carry_i_3_n_0;
  wire tdc_value0__1_carry_i_4_n_0;
  wire tdc_value0__1_carry_i_5_n_0;
  wire tdc_value0__1_carry_i_6_n_0;
  wire tdc_value0__1_carry_i_7_n_0;
  wire tdc_value0__1_carry_i_8_n_0;
  wire tdc_value0__1_carry_i_9_n_0;
  wire tdc_value0__1_carry_n_0;
  wire tdc_value0__1_carry_n_1;
  wire tdc_value0__1_carry_n_2;
  wire tdc_value0__1_carry_n_3;
  wire \tdc_value[0]_i_1_n_0 ;
  wire \tdc_value[1]_i_1_n_0 ;
  wire \tdc_value[2]_i_1_n_0 ;
  wire \tdc_value[3]_i_1_n_0 ;
  wire \tdc_value[4]_i_1_n_0 ;
  wire \tdc_value[5]_i_1_n_0 ;
  wire [6:0]ts_word;
  wire [3:1]\NLW_delay_stage[0].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[10].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[11].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[12].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[13].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[14].carry4_inst_CO_UNCONNECTED ;
  wire [3:0]\NLW_delay_stage[15].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[1].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[2].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[3].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[4].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[5].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[6].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[7].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[8].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[9].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]NLW_tdc_value0__1_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_tdc_value0__1_carry__0_O_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[0].carry4_inst 
       (.CI(clk_fx),
        .CO({\NLW_delay_stage[0].carry4_inst_CO_UNCONNECTED [3:1],carry_1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[10].carry4_inst 
       (.CI(carry_10),
        .CO({\NLW_delay_stage[10].carry4_inst_CO_UNCONNECTED [3:1],carry_11}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[43:40]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[11].carry4_inst 
       (.CI(carry_11),
        .CO({\NLW_delay_stage[11].carry4_inst_CO_UNCONNECTED [3:1],carry_12}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[47:44]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[12].carry4_inst 
       (.CI(carry_12),
        .CO({\NLW_delay_stage[12].carry4_inst_CO_UNCONNECTED [3:1],carry_13}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[51:48]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[13].carry4_inst 
       (.CI(carry_13),
        .CO({\NLW_delay_stage[13].carry4_inst_CO_UNCONNECTED [3:1],carry_14}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[55:52]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[14].carry4_inst 
       (.CI(carry_14),
        .CO({\NLW_delay_stage[14].carry4_inst_CO_UNCONNECTED [3:1],carry_15}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[59:56]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[15].carry4_inst 
       (.CI(carry_15),
        .CO(\NLW_delay_stage[15].carry4_inst_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[63:60]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[1].carry4_inst 
       (.CI(carry_1),
        .CO({\NLW_delay_stage[1].carry4_inst_CO_UNCONNECTED [3:1],carry_2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[7:4]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[2].carry4_inst 
       (.CI(carry_2),
        .CO({\NLW_delay_stage[2].carry4_inst_CO_UNCONNECTED [3:1],carry_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[11:8]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[3].carry4_inst 
       (.CI(carry_3),
        .CO({\NLW_delay_stage[3].carry4_inst_CO_UNCONNECTED [3:1],carry_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[15:12]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[4].carry4_inst 
       (.CI(carry_4),
        .CO({\NLW_delay_stage[4].carry4_inst_CO_UNCONNECTED [3:1],carry_5}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[19:16]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[5].carry4_inst 
       (.CI(carry_5),
        .CO({\NLW_delay_stage[5].carry4_inst_CO_UNCONNECTED [3:1],carry_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[23:20]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[6].carry4_inst 
       (.CI(carry_6),
        .CO({\NLW_delay_stage[6].carry4_inst_CO_UNCONNECTED [3:1],carry_7}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[27:24]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[7].carry4_inst 
       (.CI(carry_7),
        .CO({\NLW_delay_stage[7].carry4_inst_CO_UNCONNECTED [3:1],carry_8}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[31:28]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[8].carry4_inst 
       (.CI(carry_8),
        .CO({\NLW_delay_stage[8].carry4_inst_CO_UNCONNECTED [3:1],carry_9}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[35:32]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[9].carry4_inst 
       (.CI(carry_9),
        .CO({\NLW_delay_stage[9].carry4_inst_CO_UNCONNECTED [3:1],carry_10}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[39:36]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \grp_sum[0][0]_i_1 
       (.I0(tap_reg[0]),
        .I1(tap_reg[7]),
        .I2(\grp_sum[0][0]_i_2_n_0 ),
        .I3(tap_reg[2]),
        .I4(tap_reg[1]),
        .I5(tap_reg[3]),
        .O(popcount8_return[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[0][0]_i_2 
       (.I0(tap_reg[6]),
        .I1(tap_reg[4]),
        .I2(tap_reg[5]),
        .O(\grp_sum[0][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[0][1]_i_1 
       (.I0(\grp_sum[0][3]_i_2_n_0 ),
        .I1(\grp_sum[0][1]_i_2_n_0 ),
        .I2(\grp_sum[0][3]_i_3_n_0 ),
        .O(popcount8_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[0][1]_i_2 
       (.I0(tap_reg[3]),
        .I1(tap_reg[2]),
        .I2(tap_reg[1]),
        .I3(tap_reg[6]),
        .I4(tap_reg[5]),
        .I5(tap_reg[4]),
        .O(\grp_sum[0][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \grp_sum[0][2]_i_1 
       (.I0(\grp_sum[0][3]_i_2_n_0 ),
        .I1(\grp_sum[0][3]_i_3_n_0 ),
        .I2(\grp_sum[0][2]_i_2_n_0 ),
        .I3(tap_reg[4]),
        .I4(tap_reg[5]),
        .I5(tap_reg[6]),
        .O(popcount8_return[2]));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[0][2]_i_2 
       (.I0(tap_reg[1]),
        .I1(tap_reg[2]),
        .I2(tap_reg[3]),
        .O(\grp_sum[0][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \grp_sum[0][3]_i_1 
       (.I0(\grp_sum[0][3]_i_2_n_0 ),
        .I1(\grp_sum[0][3]_i_3_n_0 ),
        .I2(tap_reg[3]),
        .I3(tap_reg[2]),
        .I4(tap_reg[1]),
        .I5(\grp_sum[0][3]_i_4_n_0 ),
        .O(popcount8_return[3]));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \grp_sum[0][3]_i_2 
       (.I0(tap_reg[2]),
        .I1(tap_reg[1]),
        .I2(tap_reg[3]),
        .I3(tap_reg[0]),
        .I4(tap_reg[7]),
        .I5(\grp_sum[0][0]_i_2_n_0 ),
        .O(\grp_sum[0][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \grp_sum[0][3]_i_3 
       (.I0(tap_reg[7]),
        .I1(tap_reg[0]),
        .I2(tap_reg[5]),
        .I3(tap_reg[4]),
        .I4(tap_reg[6]),
        .O(\grp_sum[0][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[0][3]_i_4 
       (.I0(tap_reg[4]),
        .I1(tap_reg[5]),
        .I2(tap_reg[6]),
        .O(\grp_sum[0][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \grp_sum[1][0]_i_1 
       (.I0(tap_reg[8]),
        .I1(tap_reg[15]),
        .I2(\grp_sum[1][0]_i_2_n_0 ),
        .I3(tap_reg[10]),
        .I4(tap_reg[9]),
        .I5(tap_reg[11]),
        .O(popcount80_return[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[1][0]_i_2 
       (.I0(tap_reg[14]),
        .I1(tap_reg[12]),
        .I2(tap_reg[13]),
        .O(\grp_sum[1][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[1][1]_i_1 
       (.I0(\grp_sum[1][3]_i_2_n_0 ),
        .I1(\grp_sum[1][1]_i_2_n_0 ),
        .I2(\grp_sum[1][3]_i_3_n_0 ),
        .O(popcount80_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[1][1]_i_2 
       (.I0(tap_reg[11]),
        .I1(tap_reg[10]),
        .I2(tap_reg[9]),
        .I3(tap_reg[14]),
        .I4(tap_reg[13]),
        .I5(tap_reg[12]),
        .O(\grp_sum[1][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \grp_sum[1][2]_i_1 
       (.I0(\grp_sum[1][3]_i_2_n_0 ),
        .I1(\grp_sum[1][3]_i_3_n_0 ),
        .I2(\grp_sum[1][2]_i_2_n_0 ),
        .I3(tap_reg[12]),
        .I4(tap_reg[13]),
        .I5(tap_reg[14]),
        .O(popcount80_return[2]));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[1][2]_i_2 
       (.I0(tap_reg[9]),
        .I1(tap_reg[10]),
        .I2(tap_reg[11]),
        .O(\grp_sum[1][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \grp_sum[1][3]_i_1 
       (.I0(\grp_sum[1][3]_i_2_n_0 ),
        .I1(\grp_sum[1][3]_i_3_n_0 ),
        .I2(tap_reg[11]),
        .I3(tap_reg[10]),
        .I4(tap_reg[9]),
        .I5(\grp_sum[1][3]_i_4_n_0 ),
        .O(popcount80_return[3]));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \grp_sum[1][3]_i_2 
       (.I0(tap_reg[10]),
        .I1(tap_reg[9]),
        .I2(tap_reg[11]),
        .I3(tap_reg[8]),
        .I4(tap_reg[15]),
        .I5(\grp_sum[1][0]_i_2_n_0 ),
        .O(\grp_sum[1][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \grp_sum[1][3]_i_3 
       (.I0(tap_reg[15]),
        .I1(tap_reg[8]),
        .I2(tap_reg[13]),
        .I3(tap_reg[12]),
        .I4(tap_reg[14]),
        .O(\grp_sum[1][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[1][3]_i_4 
       (.I0(tap_reg[12]),
        .I1(tap_reg[13]),
        .I2(tap_reg[14]),
        .O(\grp_sum[1][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \grp_sum[2][0]_i_1 
       (.I0(tap_reg[16]),
        .I1(tap_reg[23]),
        .I2(\grp_sum[2][0]_i_2_n_0 ),
        .I3(tap_reg[18]),
        .I4(tap_reg[17]),
        .I5(tap_reg[19]),
        .O(popcount81_return[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[2][0]_i_2 
       (.I0(tap_reg[22]),
        .I1(tap_reg[20]),
        .I2(tap_reg[21]),
        .O(\grp_sum[2][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[2][1]_i_1 
       (.I0(\grp_sum[2][3]_i_2_n_0 ),
        .I1(\grp_sum[2][1]_i_2_n_0 ),
        .I2(\grp_sum[2][3]_i_3_n_0 ),
        .O(popcount81_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[2][1]_i_2 
       (.I0(tap_reg[19]),
        .I1(tap_reg[18]),
        .I2(tap_reg[17]),
        .I3(tap_reg[22]),
        .I4(tap_reg[21]),
        .I5(tap_reg[20]),
        .O(\grp_sum[2][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \grp_sum[2][2]_i_1 
       (.I0(\grp_sum[2][3]_i_2_n_0 ),
        .I1(\grp_sum[2][3]_i_3_n_0 ),
        .I2(\grp_sum[2][2]_i_2_n_0 ),
        .I3(tap_reg[20]),
        .I4(tap_reg[21]),
        .I5(tap_reg[22]),
        .O(popcount81_return[2]));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[2][2]_i_2 
       (.I0(tap_reg[17]),
        .I1(tap_reg[18]),
        .I2(tap_reg[19]),
        .O(\grp_sum[2][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \grp_sum[2][3]_i_1 
       (.I0(\grp_sum[2][3]_i_2_n_0 ),
        .I1(\grp_sum[2][3]_i_3_n_0 ),
        .I2(tap_reg[19]),
        .I3(tap_reg[18]),
        .I4(tap_reg[17]),
        .I5(\grp_sum[2][3]_i_4_n_0 ),
        .O(popcount81_return[3]));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \grp_sum[2][3]_i_2 
       (.I0(tap_reg[18]),
        .I1(tap_reg[17]),
        .I2(tap_reg[19]),
        .I3(tap_reg[16]),
        .I4(tap_reg[23]),
        .I5(\grp_sum[2][0]_i_2_n_0 ),
        .O(\grp_sum[2][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \grp_sum[2][3]_i_3 
       (.I0(tap_reg[23]),
        .I1(tap_reg[16]),
        .I2(tap_reg[21]),
        .I3(tap_reg[20]),
        .I4(tap_reg[22]),
        .O(\grp_sum[2][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[2][3]_i_4 
       (.I0(tap_reg[20]),
        .I1(tap_reg[21]),
        .I2(tap_reg[22]),
        .O(\grp_sum[2][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \grp_sum[3][0]_i_1 
       (.I0(tap_reg[24]),
        .I1(tap_reg[31]),
        .I2(\grp_sum[3][0]_i_2_n_0 ),
        .I3(tap_reg[26]),
        .I4(tap_reg[25]),
        .I5(tap_reg[27]),
        .O(popcount82_return[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[3][0]_i_2 
       (.I0(tap_reg[30]),
        .I1(tap_reg[28]),
        .I2(tap_reg[29]),
        .O(\grp_sum[3][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[3][1]_i_1 
       (.I0(\grp_sum[3][3]_i_2_n_0 ),
        .I1(\grp_sum[3][1]_i_2_n_0 ),
        .I2(\grp_sum[3][3]_i_3_n_0 ),
        .O(popcount82_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[3][1]_i_2 
       (.I0(tap_reg[27]),
        .I1(tap_reg[26]),
        .I2(tap_reg[25]),
        .I3(tap_reg[30]),
        .I4(tap_reg[29]),
        .I5(tap_reg[28]),
        .O(\grp_sum[3][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \grp_sum[3][2]_i_1 
       (.I0(\grp_sum[3][3]_i_2_n_0 ),
        .I1(\grp_sum[3][3]_i_3_n_0 ),
        .I2(\grp_sum[3][2]_i_2_n_0 ),
        .I3(tap_reg[28]),
        .I4(tap_reg[29]),
        .I5(tap_reg[30]),
        .O(popcount82_return[2]));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[3][2]_i_2 
       (.I0(tap_reg[25]),
        .I1(tap_reg[26]),
        .I2(tap_reg[27]),
        .O(\grp_sum[3][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \grp_sum[3][3]_i_1 
       (.I0(\grp_sum[3][3]_i_2_n_0 ),
        .I1(\grp_sum[3][3]_i_3_n_0 ),
        .I2(tap_reg[27]),
        .I3(tap_reg[26]),
        .I4(tap_reg[25]),
        .I5(\grp_sum[3][3]_i_4_n_0 ),
        .O(popcount82_return[3]));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \grp_sum[3][3]_i_2 
       (.I0(tap_reg[26]),
        .I1(tap_reg[25]),
        .I2(tap_reg[27]),
        .I3(tap_reg[24]),
        .I4(tap_reg[31]),
        .I5(\grp_sum[3][0]_i_2_n_0 ),
        .O(\grp_sum[3][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \grp_sum[3][3]_i_3 
       (.I0(tap_reg[31]),
        .I1(tap_reg[24]),
        .I2(tap_reg[29]),
        .I3(tap_reg[28]),
        .I4(tap_reg[30]),
        .O(\grp_sum[3][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[3][3]_i_4 
       (.I0(tap_reg[28]),
        .I1(tap_reg[29]),
        .I2(tap_reg[30]),
        .O(\grp_sum[3][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \grp_sum[4][0]_i_1 
       (.I0(tap_reg[32]),
        .I1(tap_reg[39]),
        .I2(\grp_sum[4][0]_i_2_n_0 ),
        .I3(tap_reg[34]),
        .I4(tap_reg[33]),
        .I5(tap_reg[35]),
        .O(popcount83_return[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[4][0]_i_2 
       (.I0(tap_reg[38]),
        .I1(tap_reg[36]),
        .I2(tap_reg[37]),
        .O(\grp_sum[4][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[4][1]_i_1 
       (.I0(\grp_sum[4][3]_i_2_n_0 ),
        .I1(\grp_sum[4][1]_i_2_n_0 ),
        .I2(\grp_sum[4][3]_i_3_n_0 ),
        .O(popcount83_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[4][1]_i_2 
       (.I0(tap_reg[35]),
        .I1(tap_reg[34]),
        .I2(tap_reg[33]),
        .I3(tap_reg[38]),
        .I4(tap_reg[37]),
        .I5(tap_reg[36]),
        .O(\grp_sum[4][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \grp_sum[4][2]_i_1 
       (.I0(\grp_sum[4][3]_i_2_n_0 ),
        .I1(\grp_sum[4][3]_i_3_n_0 ),
        .I2(\grp_sum[4][2]_i_2_n_0 ),
        .I3(tap_reg[36]),
        .I4(tap_reg[37]),
        .I5(tap_reg[38]),
        .O(popcount83_return[2]));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[4][2]_i_2 
       (.I0(tap_reg[33]),
        .I1(tap_reg[34]),
        .I2(tap_reg[35]),
        .O(\grp_sum[4][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \grp_sum[4][3]_i_1 
       (.I0(\grp_sum[4][3]_i_2_n_0 ),
        .I1(\grp_sum[4][3]_i_3_n_0 ),
        .I2(tap_reg[35]),
        .I3(tap_reg[34]),
        .I4(tap_reg[33]),
        .I5(\grp_sum[4][3]_i_4_n_0 ),
        .O(popcount83_return[3]));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \grp_sum[4][3]_i_2 
       (.I0(tap_reg[34]),
        .I1(tap_reg[33]),
        .I2(tap_reg[35]),
        .I3(tap_reg[32]),
        .I4(tap_reg[39]),
        .I5(\grp_sum[4][0]_i_2_n_0 ),
        .O(\grp_sum[4][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \grp_sum[4][3]_i_3 
       (.I0(tap_reg[39]),
        .I1(tap_reg[32]),
        .I2(tap_reg[37]),
        .I3(tap_reg[36]),
        .I4(tap_reg[38]),
        .O(\grp_sum[4][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[4][3]_i_4 
       (.I0(tap_reg[36]),
        .I1(tap_reg[37]),
        .I2(tap_reg[38]),
        .O(\grp_sum[4][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \grp_sum[5][0]_i_1 
       (.I0(tap_reg[40]),
        .I1(tap_reg[47]),
        .I2(\grp_sum[5][0]_i_2_n_0 ),
        .I3(tap_reg[42]),
        .I4(tap_reg[41]),
        .I5(tap_reg[43]),
        .O(popcount84_return[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[5][0]_i_2 
       (.I0(tap_reg[46]),
        .I1(tap_reg[44]),
        .I2(tap_reg[45]),
        .O(\grp_sum[5][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[5][1]_i_1 
       (.I0(\grp_sum[5][3]_i_2_n_0 ),
        .I1(\grp_sum[5][1]_i_2_n_0 ),
        .I2(\grp_sum[5][3]_i_3_n_0 ),
        .O(popcount84_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[5][1]_i_2 
       (.I0(tap_reg[43]),
        .I1(tap_reg[42]),
        .I2(tap_reg[41]),
        .I3(tap_reg[46]),
        .I4(tap_reg[45]),
        .I5(tap_reg[44]),
        .O(\grp_sum[5][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \grp_sum[5][2]_i_1 
       (.I0(\grp_sum[5][3]_i_2_n_0 ),
        .I1(\grp_sum[5][3]_i_3_n_0 ),
        .I2(\grp_sum[5][2]_i_2_n_0 ),
        .I3(tap_reg[44]),
        .I4(tap_reg[45]),
        .I5(tap_reg[46]),
        .O(popcount84_return[2]));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[5][2]_i_2 
       (.I0(tap_reg[41]),
        .I1(tap_reg[42]),
        .I2(tap_reg[43]),
        .O(\grp_sum[5][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \grp_sum[5][3]_i_1 
       (.I0(\grp_sum[5][3]_i_2_n_0 ),
        .I1(\grp_sum[5][3]_i_3_n_0 ),
        .I2(tap_reg[43]),
        .I3(tap_reg[42]),
        .I4(tap_reg[41]),
        .I5(\grp_sum[5][3]_i_4_n_0 ),
        .O(popcount84_return[3]));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \grp_sum[5][3]_i_2 
       (.I0(tap_reg[42]),
        .I1(tap_reg[41]),
        .I2(tap_reg[43]),
        .I3(tap_reg[40]),
        .I4(tap_reg[47]),
        .I5(\grp_sum[5][0]_i_2_n_0 ),
        .O(\grp_sum[5][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \grp_sum[5][3]_i_3 
       (.I0(tap_reg[47]),
        .I1(tap_reg[40]),
        .I2(tap_reg[45]),
        .I3(tap_reg[44]),
        .I4(tap_reg[46]),
        .O(\grp_sum[5][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[5][3]_i_4 
       (.I0(tap_reg[44]),
        .I1(tap_reg[45]),
        .I2(tap_reg[46]),
        .O(\grp_sum[5][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \grp_sum[6][0]_i_1 
       (.I0(tap_reg[48]),
        .I1(tap_reg[55]),
        .I2(\grp_sum[6][0]_i_2_n_0 ),
        .I3(tap_reg[50]),
        .I4(tap_reg[49]),
        .I5(tap_reg[51]),
        .O(popcount85_return[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[6][0]_i_2 
       (.I0(tap_reg[54]),
        .I1(tap_reg[52]),
        .I2(tap_reg[53]),
        .O(\grp_sum[6][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[6][1]_i_1 
       (.I0(\grp_sum[6][3]_i_2_n_0 ),
        .I1(\grp_sum[6][1]_i_2_n_0 ),
        .I2(\grp_sum[6][3]_i_3_n_0 ),
        .O(popcount85_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[6][1]_i_2 
       (.I0(tap_reg[51]),
        .I1(tap_reg[50]),
        .I2(tap_reg[49]),
        .I3(tap_reg[54]),
        .I4(tap_reg[53]),
        .I5(tap_reg[52]),
        .O(\grp_sum[6][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \grp_sum[6][2]_i_1 
       (.I0(\grp_sum[6][3]_i_2_n_0 ),
        .I1(\grp_sum[6][3]_i_3_n_0 ),
        .I2(\grp_sum[6][2]_i_2_n_0 ),
        .I3(tap_reg[52]),
        .I4(tap_reg[53]),
        .I5(tap_reg[54]),
        .O(popcount85_return[2]));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[6][2]_i_2 
       (.I0(tap_reg[49]),
        .I1(tap_reg[50]),
        .I2(tap_reg[51]),
        .O(\grp_sum[6][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \grp_sum[6][3]_i_1 
       (.I0(\grp_sum[6][3]_i_2_n_0 ),
        .I1(\grp_sum[6][3]_i_3_n_0 ),
        .I2(tap_reg[51]),
        .I3(tap_reg[50]),
        .I4(tap_reg[49]),
        .I5(\grp_sum[6][3]_i_4_n_0 ),
        .O(popcount85_return[3]));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \grp_sum[6][3]_i_2 
       (.I0(tap_reg[50]),
        .I1(tap_reg[49]),
        .I2(tap_reg[51]),
        .I3(tap_reg[48]),
        .I4(tap_reg[55]),
        .I5(\grp_sum[6][0]_i_2_n_0 ),
        .O(\grp_sum[6][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \grp_sum[6][3]_i_3 
       (.I0(tap_reg[55]),
        .I1(tap_reg[48]),
        .I2(tap_reg[53]),
        .I3(tap_reg[52]),
        .I4(tap_reg[54]),
        .O(\grp_sum[6][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[6][3]_i_4 
       (.I0(tap_reg[52]),
        .I1(tap_reg[53]),
        .I2(tap_reg[54]),
        .O(\grp_sum[6][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \grp_sum[7][0]_i_1 
       (.I0(tap_reg[56]),
        .I1(tap_reg[63]),
        .I2(\grp_sum[7][0]_i_2_n_0 ),
        .I3(tap_reg[58]),
        .I4(tap_reg[57]),
        .I5(tap_reg[59]),
        .O(popcount86_return[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[7][0]_i_2 
       (.I0(tap_reg[62]),
        .I1(tap_reg[60]),
        .I2(tap_reg[61]),
        .O(\grp_sum[7][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[7][1]_i_1 
       (.I0(\grp_sum[7][3]_i_2_n_0 ),
        .I1(\grp_sum[7][1]_i_2_n_0 ),
        .I2(\grp_sum[7][3]_i_3_n_0 ),
        .O(popcount86_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[7][1]_i_2 
       (.I0(tap_reg[59]),
        .I1(tap_reg[58]),
        .I2(tap_reg[57]),
        .I3(tap_reg[62]),
        .I4(tap_reg[61]),
        .I5(tap_reg[60]),
        .O(\grp_sum[7][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \grp_sum[7][2]_i_1 
       (.I0(\grp_sum[7][3]_i_2_n_0 ),
        .I1(\grp_sum[7][3]_i_3_n_0 ),
        .I2(\grp_sum[7][2]_i_2_n_0 ),
        .I3(tap_reg[60]),
        .I4(tap_reg[61]),
        .I5(tap_reg[62]),
        .O(popcount86_return[2]));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[7][2]_i_2 
       (.I0(tap_reg[57]),
        .I1(tap_reg[58]),
        .I2(tap_reg[59]),
        .O(\grp_sum[7][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \grp_sum[7][3]_i_1 
       (.I0(\grp_sum[7][3]_i_2_n_0 ),
        .I1(\grp_sum[7][3]_i_3_n_0 ),
        .I2(tap_reg[59]),
        .I3(tap_reg[58]),
        .I4(tap_reg[57]),
        .I5(\grp_sum[7][3]_i_4_n_0 ),
        .O(popcount86_return[3]));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \grp_sum[7][3]_i_2 
       (.I0(tap_reg[58]),
        .I1(tap_reg[57]),
        .I2(tap_reg[59]),
        .I3(tap_reg[56]),
        .I4(tap_reg[63]),
        .I5(\grp_sum[7][0]_i_2_n_0 ),
        .O(\grp_sum[7][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \grp_sum[7][3]_i_3 
       (.I0(tap_reg[63]),
        .I1(tap_reg[56]),
        .I2(tap_reg[61]),
        .I3(tap_reg[60]),
        .I4(tap_reg[62]),
        .O(\grp_sum[7][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[7][3]_i_4 
       (.I0(tap_reg[60]),
        .I1(tap_reg[61]),
        .I2(tap_reg[62]),
        .O(\grp_sum[7][3]_i_4_n_0 ));
  FDRE \grp_sum_reg[0][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount8_return[0]),
        .Q(\grp_sum_reg[0]_7 [0]),
        .R(SR));
  FDRE \grp_sum_reg[0][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount8_return[1]),
        .Q(\grp_sum_reg[0]_7 [1]),
        .R(SR));
  FDRE \grp_sum_reg[0][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount8_return[2]),
        .Q(\grp_sum_reg[0]_7 [2]),
        .R(SR));
  FDRE \grp_sum_reg[0][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount8_return[3]),
        .Q(\grp_sum_reg[0]_7 [3]),
        .R(SR));
  FDRE \grp_sum_reg[1][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount80_return[0]),
        .Q(\grp_sum_reg[1]_0 [0]),
        .R(SR));
  FDRE \grp_sum_reg[1][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount80_return[1]),
        .Q(\grp_sum_reg[1]_0 [1]),
        .R(SR));
  FDRE \grp_sum_reg[1][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount80_return[2]),
        .Q(\grp_sum_reg[1]_0 [2]),
        .R(SR));
  FDRE \grp_sum_reg[1][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount80_return[3]),
        .Q(\grp_sum_reg[1]_0 [3]),
        .R(SR));
  FDRE \grp_sum_reg[2][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount81_return[0]),
        .Q(\grp_sum_reg[2]_1 [0]),
        .R(SR));
  FDRE \grp_sum_reg[2][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount81_return[1]),
        .Q(\grp_sum_reg[2]_1 [1]),
        .R(SR));
  FDRE \grp_sum_reg[2][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount81_return[2]),
        .Q(\grp_sum_reg[2]_1 [2]),
        .R(SR));
  FDRE \grp_sum_reg[2][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount81_return[3]),
        .Q(\grp_sum_reg[2]_1 [3]),
        .R(SR));
  FDRE \grp_sum_reg[3][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount82_return[0]),
        .Q(\grp_sum_reg[3]_2 [0]),
        .R(SR));
  FDRE \grp_sum_reg[3][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount82_return[1]),
        .Q(\grp_sum_reg[3]_2 [1]),
        .R(SR));
  FDRE \grp_sum_reg[3][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount82_return[2]),
        .Q(\grp_sum_reg[3]_2 [2]),
        .R(SR));
  FDRE \grp_sum_reg[3][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount82_return[3]),
        .Q(\grp_sum_reg[3]_2 [3]),
        .R(SR));
  FDRE \grp_sum_reg[4][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount83_return[0]),
        .Q(\grp_sum_reg[4]_3 [0]),
        .R(SR));
  FDRE \grp_sum_reg[4][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount83_return[1]),
        .Q(\grp_sum_reg[4]_3 [1]),
        .R(SR));
  FDRE \grp_sum_reg[4][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount83_return[2]),
        .Q(\grp_sum_reg[4]_3 [2]),
        .R(SR));
  FDRE \grp_sum_reg[4][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount83_return[3]),
        .Q(\grp_sum_reg[4]_3 [3]),
        .R(SR));
  FDRE \grp_sum_reg[5][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount84_return[0]),
        .Q(\grp_sum_reg[5]_4 [0]),
        .R(SR));
  FDRE \grp_sum_reg[5][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount84_return[1]),
        .Q(\grp_sum_reg[5]_4 [1]),
        .R(SR));
  FDRE \grp_sum_reg[5][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount84_return[2]),
        .Q(\grp_sum_reg[5]_4 [2]),
        .R(SR));
  FDRE \grp_sum_reg[5][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount84_return[3]),
        .Q(\grp_sum_reg[5]_4 [3]),
        .R(SR));
  FDRE \grp_sum_reg[6][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount85_return[0]),
        .Q(\grp_sum_reg[6]_5 [0]),
        .R(SR));
  FDRE \grp_sum_reg[6][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount85_return[1]),
        .Q(\grp_sum_reg[6]_5 [1]),
        .R(SR));
  FDRE \grp_sum_reg[6][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount85_return[2]),
        .Q(\grp_sum_reg[6]_5 [2]),
        .R(SR));
  FDRE \grp_sum_reg[6][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount85_return[3]),
        .Q(\grp_sum_reg[6]_5 [3]),
        .R(SR));
  FDRE \grp_sum_reg[7][0] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount86_return[0]),
        .Q(\grp_sum_reg[7]_6 [0]),
        .R(SR));
  FDRE \grp_sum_reg[7][1] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount86_return[1]),
        .Q(\grp_sum_reg[7]_6 [1]),
        .R(SR));
  FDRE \grp_sum_reg[7][2] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount86_return[2]),
        .Q(\grp_sum_reg[7]_6 [2]),
        .R(SR));
  FDRE \grp_sum_reg[7][3] 
       (.C(CLK),
        .CE(1'b1),
        .D(popcount86_return[3]),
        .Q(\grp_sum_reg[7]_6 [3]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[0]),
        .Q(tap_reg[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[10]),
        .Q(tap_reg[10]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[11]),
        .Q(tap_reg[11]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[12]),
        .Q(tap_reg[12]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[13]),
        .Q(tap_reg[13]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[14]),
        .Q(tap_reg[14]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[15]),
        .Q(tap_reg[15]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[16]),
        .Q(tap_reg[16]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[17]),
        .Q(tap_reg[17]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[18]),
        .Q(tap_reg[18]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[19]),
        .Q(tap_reg[19]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[1]),
        .Q(tap_reg[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[20]),
        .Q(tap_reg[20]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[21]),
        .Q(tap_reg[21]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[22]),
        .Q(tap_reg[22]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[23]),
        .Q(tap_reg[23]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[24]),
        .Q(tap_reg[24]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[25]),
        .Q(tap_reg[25]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[26]),
        .Q(tap_reg[26]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[27]),
        .Q(tap_reg[27]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[28]),
        .Q(tap_reg[28]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[29]),
        .Q(tap_reg[29]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[2]),
        .Q(tap_reg[2]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[30]),
        .Q(tap_reg[30]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[31]),
        .Q(tap_reg[31]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[32] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[32]),
        .Q(tap_reg[32]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[33] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[33]),
        .Q(tap_reg[33]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[34] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[34]),
        .Q(tap_reg[34]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[35] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[35]),
        .Q(tap_reg[35]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[36] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[36]),
        .Q(tap_reg[36]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[37] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[37]),
        .Q(tap_reg[37]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[38] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[38]),
        .Q(tap_reg[38]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[39] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[39]),
        .Q(tap_reg[39]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[3]),
        .Q(tap_reg[3]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[40] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[40]),
        .Q(tap_reg[40]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[41] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[41]),
        .Q(tap_reg[41]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[42] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[42]),
        .Q(tap_reg[42]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[43] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[43]),
        .Q(tap_reg[43]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[44] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[44]),
        .Q(tap_reg[44]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[45] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[45]),
        .Q(tap_reg[45]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[46] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[46]),
        .Q(tap_reg[46]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[47] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[47]),
        .Q(tap_reg[47]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[48] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[48]),
        .Q(tap_reg[48]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[49] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[49]),
        .Q(tap_reg[49]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[4]),
        .Q(tap_reg[4]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[50] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[50]),
        .Q(tap_reg[50]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[51] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[51]),
        .Q(tap_reg[51]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[52] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[52]),
        .Q(tap_reg[52]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[53] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[53]),
        .Q(tap_reg[53]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[54] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[54]),
        .Q(tap_reg[54]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[55] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[55]),
        .Q(tap_reg[55]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[56] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[56]),
        .Q(tap_reg[56]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[57] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[57]),
        .Q(tap_reg[57]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[58] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[58]),
        .Q(tap_reg[58]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[59] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[59]),
        .Q(tap_reg[59]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[5]),
        .Q(tap_reg[5]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[60] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[60]),
        .Q(tap_reg[60]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[61] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[61]),
        .Q(tap_reg[61]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[62] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[62]),
        .Q(tap_reg[62]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[63] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[63]),
        .Q(tap_reg[63]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[6]),
        .Q(tap_reg[6]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[7]),
        .Q(tap_reg[7]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[8]),
        .Q(tap_reg[8]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(tap_orig[9]),
        .Q(tap_reg[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    tdc_valid_i_1
       (.I0(sum_comb[5]),
        .I1(sum_comb[4]),
        .I2(sum_comb[3]),
        .I3(sum_comb[2]),
        .I4(sum_comb[0]),
        .I5(sum_comb[1]),
        .O(tdc_valid_i_1_n_0));
  FDRE tdc_valid_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tdc_valid_i_1_n_0),
        .Q(ts_word[0]),
        .R(SR));
  CARRY4 tdc_value0__1_carry
       (.CI(1'b0),
        .CO({tdc_value0__1_carry_n_0,tdc_value0__1_carry_n_1,tdc_value0__1_carry_n_2,tdc_value0__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({tdc_value0__1_carry_i_1_n_0,tdc_value0__1_carry_i_2_n_0,tdc_value0__1_carry_i_3_n_0,tdc_value0__1_carry_i_4_n_0}),
        .O(sum_comb[3:0]),
        .S({tdc_value0__1_carry_i_5_n_0,tdc_value0__1_carry_i_6_n_0,tdc_value0__1_carry_i_7_n_0,tdc_value0__1_carry_i_8_n_0}));
  CARRY4 tdc_value0__1_carry__0
       (.CI(tdc_value0__1_carry_n_0),
        .CO({NLW_tdc_value0__1_carry__0_CO_UNCONNECTED[3],sum_comb[6],NLW_tdc_value0__1_carry__0_CO_UNCONNECTED[1],tdc_value0__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,tdc_value0__1_carry__0_i_1_n_0,tdc_value0__1_carry__0_i_2_n_0}),
        .O({NLW_tdc_value0__1_carry__0_O_UNCONNECTED[3:2],sum_comb[5:4]}),
        .S({1'b0,1'b1,tdc_value0__1_carry__0_i_3_n_0,tdc_value0__1_carry__0_i_4_n_0}));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    tdc_value0__1_carry__0_i_1
       (.I0(tdc_value0__1_carry__0_i_5_n_0),
        .I1(tdc_value0__1_carry__0_i_6_n_0),
        .I2(\grp_sum_reg[7]_6 [3]),
        .I3(\grp_sum_reg[0]_7 [3]),
        .I4(tdc_value0__1_carry__0_i_7_n_0),
        .O(tdc_value0__1_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    tdc_value0__1_carry__0_i_10
       (.I0(\grp_sum_reg[3]_2 [2]),
        .I1(\grp_sum_reg[2]_1 [2]),
        .I2(\grp_sum_reg[1]_0 [2]),
        .I3(tdc_value0__1_carry_i_22_n_0),
        .I4(tdc_value0__1_carry_i_21_n_0),
        .O(tdc_value0__1_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    tdc_value0__1_carry__0_i_11
       (.I0(\grp_sum_reg[3]_2 [3]),
        .I1(\grp_sum_reg[2]_1 [3]),
        .I2(\grp_sum_reg[1]_0 [3]),
        .O(tdc_value0__1_carry__0_i_11_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    tdc_value0__1_carry__0_i_2
       (.I0(tdc_value0__1_carry_i_16_n_0),
        .I1(tdc_value0__1_carry_i_14_n_0),
        .I2(tdc_value0__1_carry_i_15_n_0),
        .O(tdc_value0__1_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h177E7EE8)) 
    tdc_value0__1_carry__0_i_3
       (.I0(tdc_value0__1_carry__0_i_8_n_0),
        .I1(tdc_value0__1_carry__0_i_5_n_0),
        .I2(tdc_value0__1_carry__0_i_9_n_0),
        .I3(tdc_value0__1_carry__0_i_10_n_0),
        .I4(tdc_value0__1_carry__0_i_11_n_0),
        .O(tdc_value0__1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h6669699999969666)) 
    tdc_value0__1_carry__0_i_4
       (.I0(tdc_value0__1_carry__0_i_2_n_0),
        .I1(tdc_value0__1_carry__0_i_6_n_0),
        .I2(\grp_sum_reg[7]_6 [3]),
        .I3(\grp_sum_reg[0]_7 [3]),
        .I4(tdc_value0__1_carry__0_i_7_n_0),
        .I5(tdc_value0__1_carry__0_i_5_n_0),
        .O(tdc_value0__1_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hEA80FFFF0000EA80)) 
    tdc_value0__1_carry__0_i_5
       (.I0(\grp_sum_reg[0]_7 [2]),
        .I1(\grp_sum_reg[7]_6 [1]),
        .I2(\grp_sum_reg[0]_7 [1]),
        .I3(\grp_sum_reg[7]_6 [2]),
        .I4(tdc_value0__1_carry_i_24_n_0),
        .I5(tdc_value0__1_carry_i_23_n_0),
        .O(tdc_value0__1_carry__0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hA995566A)) 
    tdc_value0__1_carry__0_i_6
       (.I0(tdc_value0__1_carry__0_i_9_n_0),
        .I1(\grp_sum_reg[3]_2 [3]),
        .I2(\grp_sum_reg[2]_1 [3]),
        .I3(\grp_sum_reg[1]_0 [3]),
        .I4(tdc_value0__1_carry__0_i_10_n_0),
        .O(tdc_value0__1_carry__0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h96)) 
    tdc_value0__1_carry__0_i_7
       (.I0(\grp_sum_reg[6]_5 [3]),
        .I1(\grp_sum_reg[4]_3 [3]),
        .I2(\grp_sum_reg[5]_4 [3]),
        .O(tdc_value0__1_carry__0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    tdc_value0__1_carry__0_i_8
       (.I0(\grp_sum_reg[6]_5 [3]),
        .I1(\grp_sum_reg[4]_3 [3]),
        .I2(\grp_sum_reg[5]_4 [3]),
        .I3(\grp_sum_reg[0]_7 [3]),
        .I4(\grp_sum_reg[7]_6 [3]),
        .O(tdc_value0__1_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    tdc_value0__1_carry__0_i_9
       (.I0(\grp_sum_reg[6]_5 [3]),
        .I1(\grp_sum_reg[5]_4 [3]),
        .I2(\grp_sum_reg[4]_3 [3]),
        .O(tdc_value0__1_carry__0_i_9_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    tdc_value0__1_carry_i_1
       (.I0(tdc_value0__1_carry_i_9_n_0),
        .I1(tdc_value0__1_carry_i_10_n_0),
        .I2(tdc_value0__1_carry_i_11_n_0),
        .O(tdc_value0__1_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    tdc_value0__1_carry_i_10
       (.I0(tdc_value0__1_carry_i_19_n_0),
        .I1(tdc_value0__1_carry_i_20_n_0),
        .I2(\grp_sum_reg[6]_5 [2]),
        .I3(\grp_sum_reg[4]_3 [2]),
        .I4(\grp_sum_reg[5]_4 [2]),
        .O(tdc_value0__1_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    tdc_value0__1_carry_i_11
       (.I0(\grp_sum_reg[1]_0 [1]),
        .I1(\grp_sum_reg[2]_1 [1]),
        .I2(\grp_sum_reg[3]_2 [1]),
        .I3(\grp_sum_reg[4]_3 [1]),
        .I4(\grp_sum_reg[5]_4 [1]),
        .I5(\grp_sum_reg[6]_5 [1]),
        .O(tdc_value0__1_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    tdc_value0__1_carry_i_12
       (.I0(tdc_value0__1_carry_i_18_n_0),
        .I1(\grp_sum_reg[0]_7 [1]),
        .I2(\grp_sum_reg[7]_6 [1]),
        .I3(\grp_sum_reg[6]_5 [1]),
        .I4(\grp_sum_reg[4]_3 [1]),
        .I5(\grp_sum_reg[5]_4 [1]),
        .O(tdc_value0__1_carry_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    tdc_value0__1_carry_i_13
       (.I0(\grp_sum_reg[6]_5 [0]),
        .I1(\grp_sum_reg[5]_4 [0]),
        .I2(\grp_sum_reg[4]_3 [0]),
        .O(tdc_value0__1_carry_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hEBBE8228)) 
    tdc_value0__1_carry_i_14
       (.I0(tdc_value0__1_carry_i_19_n_0),
        .I1(\grp_sum_reg[5]_4 [2]),
        .I2(\grp_sum_reg[4]_3 [2]),
        .I3(\grp_sum_reg[6]_5 [2]),
        .I4(tdc_value0__1_carry_i_20_n_0),
        .O(tdc_value0__1_carry_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    tdc_value0__1_carry_i_15
       (.I0(\grp_sum_reg[1]_0 [2]),
        .I1(\grp_sum_reg[2]_1 [2]),
        .I2(\grp_sum_reg[3]_2 [2]),
        .I3(tdc_value0__1_carry_i_21_n_0),
        .I4(tdc_value0__1_carry_i_22_n_0),
        .O(tdc_value0__1_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'h157FEA80EA80157F)) 
    tdc_value0__1_carry_i_16
       (.I0(\grp_sum_reg[0]_7 [2]),
        .I1(\grp_sum_reg[7]_6 [1]),
        .I2(\grp_sum_reg[0]_7 [1]),
        .I3(\grp_sum_reg[7]_6 [2]),
        .I4(tdc_value0__1_carry_i_23_n_0),
        .I5(tdc_value0__1_carry_i_24_n_0),
        .O(tdc_value0__1_carry_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h96)) 
    tdc_value0__1_carry_i_17
       (.I0(\grp_sum_reg[6]_5 [0]),
        .I1(\grp_sum_reg[4]_3 [0]),
        .I2(\grp_sum_reg[5]_4 [0]),
        .O(tdc_value0__1_carry_i_17_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tdc_value0__1_carry_i_18
       (.I0(\grp_sum_reg[3]_2 [1]),
        .I1(\grp_sum_reg[1]_0 [1]),
        .I2(\grp_sum_reg[2]_1 [1]),
        .O(tdc_value0__1_carry_i_18_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tdc_value0__1_carry_i_19
       (.I0(\grp_sum_reg[3]_2 [2]),
        .I1(\grp_sum_reg[1]_0 [2]),
        .I2(\grp_sum_reg[2]_1 [2]),
        .O(tdc_value0__1_carry_i_19_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    tdc_value0__1_carry_i_2
       (.I0(tdc_value0__1_carry_i_12_n_0),
        .I1(tdc_value0__1_carry_i_13_n_0),
        .I2(\grp_sum_reg[3]_2 [0]),
        .I3(\grp_sum_reg[2]_1 [0]),
        .I4(\grp_sum_reg[1]_0 [0]),
        .O(tdc_value0__1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    tdc_value0__1_carry_i_20
       (.I0(\grp_sum_reg[7]_6 [1]),
        .I1(\grp_sum_reg[0]_7 [1]),
        .I2(\grp_sum_reg[7]_6 [2]),
        .I3(\grp_sum_reg[0]_7 [2]),
        .O(tdc_value0__1_carry_i_20_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tdc_value0__1_carry_i_21
       (.I0(\grp_sum_reg[3]_2 [3]),
        .I1(\grp_sum_reg[1]_0 [3]),
        .I2(\grp_sum_reg[2]_1 [3]),
        .O(tdc_value0__1_carry_i_21_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    tdc_value0__1_carry_i_22
       (.I0(\grp_sum_reg[6]_5 [2]),
        .I1(\grp_sum_reg[5]_4 [2]),
        .I2(\grp_sum_reg[4]_3 [2]),
        .O(tdc_value0__1_carry_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    tdc_value0__1_carry_i_23
       (.I0(\grp_sum_reg[5]_4 [3]),
        .I1(\grp_sum_reg[4]_3 [3]),
        .I2(\grp_sum_reg[6]_5 [3]),
        .I3(\grp_sum_reg[7]_6 [3]),
        .I4(\grp_sum_reg[0]_7 [3]),
        .O(tdc_value0__1_carry_i_23_n_0));
  LUT6 #(
    .INIT(64'h171717FF17FFFFFF)) 
    tdc_value0__1_carry_i_24
       (.I0(\grp_sum_reg[1]_0 [1]),
        .I1(\grp_sum_reg[2]_1 [1]),
        .I2(\grp_sum_reg[3]_2 [1]),
        .I3(\grp_sum_reg[4]_3 [1]),
        .I4(\grp_sum_reg[5]_4 [1]),
        .I5(\grp_sum_reg[6]_5 [1]),
        .O(tdc_value0__1_carry_i_24_n_0));
  LUT5 #(
    .INIT(32'h99969666)) 
    tdc_value0__1_carry_i_3
       (.I0(tdc_value0__1_carry_i_12_n_0),
        .I1(tdc_value0__1_carry_i_13_n_0),
        .I2(\grp_sum_reg[3]_2 [0]),
        .I3(\grp_sum_reg[2]_1 [0]),
        .I4(\grp_sum_reg[1]_0 [0]),
        .O(tdc_value0__1_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    tdc_value0__1_carry_i_4
       (.I0(\grp_sum_reg[5]_4 [0]),
        .I1(\grp_sum_reg[4]_3 [0]),
        .I2(\grp_sum_reg[6]_5 [0]),
        .I3(\grp_sum_reg[7]_6 [0]),
        .I4(\grp_sum_reg[0]_7 [0]),
        .O(tdc_value0__1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    tdc_value0__1_carry_i_5
       (.I0(tdc_value0__1_carry_i_11_n_0),
        .I1(tdc_value0__1_carry_i_10_n_0),
        .I2(tdc_value0__1_carry_i_9_n_0),
        .I3(tdc_value0__1_carry_i_14_n_0),
        .I4(tdc_value0__1_carry_i_15_n_0),
        .I5(tdc_value0__1_carry_i_16_n_0),
        .O(tdc_value0__1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tdc_value0__1_carry_i_6
       (.I0(tdc_value0__1_carry_i_2_n_0),
        .I1(tdc_value0__1_carry_i_10_n_0),
        .I2(tdc_value0__1_carry_i_11_n_0),
        .I3(tdc_value0__1_carry_i_9_n_0),
        .O(tdc_value0__1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h566A6A566A56566A)) 
    tdc_value0__1_carry_i_7
       (.I0(tdc_value0__1_carry_i_3_n_0),
        .I1(\grp_sum_reg[0]_7 [0]),
        .I2(\grp_sum_reg[7]_6 [0]),
        .I3(\grp_sum_reg[6]_5 [0]),
        .I4(\grp_sum_reg[4]_3 [0]),
        .I5(\grp_sum_reg[5]_4 [0]),
        .O(tdc_value0__1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    tdc_value0__1_carry_i_8
       (.I0(\grp_sum_reg[0]_7 [0]),
        .I1(\grp_sum_reg[7]_6 [0]),
        .I2(tdc_value0__1_carry_i_17_n_0),
        .I3(\grp_sum_reg[2]_1 [0]),
        .I4(\grp_sum_reg[1]_0 [0]),
        .I5(\grp_sum_reg[3]_2 [0]),
        .O(tdc_value0__1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h8228EBBEEBBE8228)) 
    tdc_value0__1_carry_i_9
       (.I0(tdc_value0__1_carry_i_18_n_0),
        .I1(\grp_sum_reg[5]_4 [1]),
        .I2(\grp_sum_reg[4]_3 [1]),
        .I3(\grp_sum_reg[6]_5 [1]),
        .I4(\grp_sum_reg[7]_6 [1]),
        .I5(\grp_sum_reg[0]_7 [1]),
        .O(tdc_value0__1_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[0]_i_1 
       (.I0(sum_comb[0]),
        .I1(sum_comb[6]),
        .O(\tdc_value[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[1]_i_1 
       (.I0(sum_comb[1]),
        .I1(sum_comb[6]),
        .O(\tdc_value[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[2]_i_1 
       (.I0(sum_comb[2]),
        .I1(sum_comb[6]),
        .O(\tdc_value[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[3]_i_1 
       (.I0(sum_comb[3]),
        .I1(sum_comb[6]),
        .O(\tdc_value[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[4]_i_1 
       (.I0(sum_comb[4]),
        .I1(sum_comb[6]),
        .O(\tdc_value[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[5]_i_1 
       (.I0(sum_comb[5]),
        .I1(sum_comb[6]),
        .O(\tdc_value[5]_i_1_n_0 ));
  FDRE \tdc_value_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tdc_value[0]_i_1_n_0 ),
        .Q(ts_word[1]),
        .R(SR));
  FDRE \tdc_value_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tdc_value[1]_i_1_n_0 ),
        .Q(ts_word[2]),
        .R(SR));
  FDRE \tdc_value_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tdc_value[2]_i_1_n_0 ),
        .Q(ts_word[3]),
        .R(SR));
  FDRE \tdc_value_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tdc_value[3]_i_1_n_0 ),
        .Q(ts_word[4]),
        .R(SR));
  FDRE \tdc_value_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tdc_value[4]_i_1_n_0 ),
        .Q(ts_word[5]),
        .R(SR));
  FDRE \tdc_value_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\tdc_value[5]_i_1_n_0 ),
        .Q(ts_word[6]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "tdc" *) 
module ps_Counter_Core_0_1_tdc_11
   (tdc_vld,
    Q,
    \tap_reg_reg[3]_0 ,
    SR,
    clk_fx);
  output tdc_vld;
  output [5:0]Q;
  input \tap_reg_reg[3]_0 ;
  input [0:0]SR;
  input clk_fx;

  wire [5:0]Q;
  wire [0:0]SR;
  wire carry_1;
  wire carry_10;
  wire carry_11;
  wire carry_12;
  wire carry_13;
  wire carry_14;
  wire carry_15;
  wire carry_2;
  wire carry_3;
  wire carry_4;
  wire carry_5;
  wire carry_6;
  wire carry_7;
  wire carry_8;
  wire carry_9;
  wire clk_fx;
  wire \grp_sum[0][0]_i_1_n_0 ;
  wire \grp_sum[0][0]_i_2_n_0 ;
  wire \grp_sum[0][1]_i_1_n_0 ;
  wire \grp_sum[0][1]_i_2_n_0 ;
  wire \grp_sum[0][2]_i_1_n_0 ;
  wire \grp_sum[0][2]_i_2_n_0 ;
  wire \grp_sum[0][3]_i_1_n_0 ;
  wire \grp_sum[0][3]_i_2_n_0 ;
  wire \grp_sum[0][3]_i_3_n_0 ;
  wire \grp_sum[0][3]_i_4_n_0 ;
  wire \grp_sum[1][0]_i_1_n_0 ;
  wire \grp_sum[1][0]_i_2_n_0 ;
  wire \grp_sum[1][1]_i_1_n_0 ;
  wire \grp_sum[1][1]_i_2_n_0 ;
  wire \grp_sum[1][2]_i_1_n_0 ;
  wire \grp_sum[1][2]_i_2_n_0 ;
  wire \grp_sum[1][3]_i_1_n_0 ;
  wire \grp_sum[1][3]_i_2_n_0 ;
  wire \grp_sum[1][3]_i_3_n_0 ;
  wire \grp_sum[1][3]_i_4_n_0 ;
  wire \grp_sum[2][0]_i_1_n_0 ;
  wire \grp_sum[2][0]_i_2_n_0 ;
  wire \grp_sum[2][1]_i_1_n_0 ;
  wire \grp_sum[2][1]_i_2_n_0 ;
  wire \grp_sum[2][2]_i_1_n_0 ;
  wire \grp_sum[2][2]_i_2_n_0 ;
  wire \grp_sum[2][3]_i_1_n_0 ;
  wire \grp_sum[2][3]_i_2_n_0 ;
  wire \grp_sum[2][3]_i_3_n_0 ;
  wire \grp_sum[2][3]_i_4_n_0 ;
  wire \grp_sum[3][0]_i_1_n_0 ;
  wire \grp_sum[3][0]_i_2_n_0 ;
  wire \grp_sum[3][1]_i_1_n_0 ;
  wire \grp_sum[3][1]_i_2_n_0 ;
  wire \grp_sum[3][2]_i_1_n_0 ;
  wire \grp_sum[3][2]_i_2_n_0 ;
  wire \grp_sum[3][3]_i_1_n_0 ;
  wire \grp_sum[3][3]_i_2_n_0 ;
  wire \grp_sum[3][3]_i_3_n_0 ;
  wire \grp_sum[3][3]_i_4_n_0 ;
  wire \grp_sum[4][0]_i_1_n_0 ;
  wire \grp_sum[4][0]_i_2_n_0 ;
  wire \grp_sum[4][1]_i_1_n_0 ;
  wire \grp_sum[4][1]_i_2_n_0 ;
  wire \grp_sum[4][2]_i_1_n_0 ;
  wire \grp_sum[4][2]_i_2_n_0 ;
  wire \grp_sum[4][3]_i_1_n_0 ;
  wire \grp_sum[4][3]_i_2_n_0 ;
  wire \grp_sum[4][3]_i_3_n_0 ;
  wire \grp_sum[4][3]_i_4_n_0 ;
  wire \grp_sum[5][0]_i_1_n_0 ;
  wire \grp_sum[5][0]_i_2_n_0 ;
  wire \grp_sum[5][1]_i_1_n_0 ;
  wire \grp_sum[5][1]_i_2_n_0 ;
  wire \grp_sum[5][2]_i_1_n_0 ;
  wire \grp_sum[5][2]_i_2_n_0 ;
  wire \grp_sum[5][3]_i_1_n_0 ;
  wire \grp_sum[5][3]_i_2_n_0 ;
  wire \grp_sum[5][3]_i_3_n_0 ;
  wire \grp_sum[5][3]_i_4_n_0 ;
  wire \grp_sum[6][0]_i_1_n_0 ;
  wire \grp_sum[6][0]_i_2_n_0 ;
  wire \grp_sum[6][1]_i_1_n_0 ;
  wire \grp_sum[6][1]_i_2_n_0 ;
  wire \grp_sum[6][2]_i_1_n_0 ;
  wire \grp_sum[6][2]_i_2_n_0 ;
  wire \grp_sum[6][3]_i_1_n_0 ;
  wire \grp_sum[6][3]_i_2_n_0 ;
  wire \grp_sum[6][3]_i_3_n_0 ;
  wire \grp_sum[6][3]_i_4_n_0 ;
  wire \grp_sum[7][0]_i_1_n_0 ;
  wire \grp_sum[7][0]_i_2_n_0 ;
  wire \grp_sum[7][1]_i_1_n_0 ;
  wire \grp_sum[7][1]_i_2_n_0 ;
  wire \grp_sum[7][2]_i_1_n_0 ;
  wire \grp_sum[7][2]_i_2_n_0 ;
  wire \grp_sum[7][3]_i_1_n_0 ;
  wire \grp_sum[7][3]_i_2_n_0 ;
  wire \grp_sum[7][3]_i_3_n_0 ;
  wire \grp_sum[7][3]_i_4_n_0 ;
  wire \grp_sum_reg_n_0_[0][0] ;
  wire \grp_sum_reg_n_0_[0][1] ;
  wire \grp_sum_reg_n_0_[0][2] ;
  wire \grp_sum_reg_n_0_[0][3] ;
  wire \grp_sum_reg_n_0_[1][0] ;
  wire \grp_sum_reg_n_0_[1][1] ;
  wire \grp_sum_reg_n_0_[1][2] ;
  wire \grp_sum_reg_n_0_[1][3] ;
  wire \grp_sum_reg_n_0_[2][0] ;
  wire \grp_sum_reg_n_0_[2][1] ;
  wire \grp_sum_reg_n_0_[2][2] ;
  wire \grp_sum_reg_n_0_[2][3] ;
  wire \grp_sum_reg_n_0_[3][0] ;
  wire \grp_sum_reg_n_0_[3][1] ;
  wire \grp_sum_reg_n_0_[3][2] ;
  wire \grp_sum_reg_n_0_[3][3] ;
  wire \grp_sum_reg_n_0_[4][0] ;
  wire \grp_sum_reg_n_0_[4][1] ;
  wire \grp_sum_reg_n_0_[4][2] ;
  wire \grp_sum_reg_n_0_[4][3] ;
  wire \grp_sum_reg_n_0_[5][0] ;
  wire \grp_sum_reg_n_0_[5][1] ;
  wire \grp_sum_reg_n_0_[5][2] ;
  wire \grp_sum_reg_n_0_[5][3] ;
  wire \grp_sum_reg_n_0_[6][0] ;
  wire \grp_sum_reg_n_0_[6][1] ;
  wire \grp_sum_reg_n_0_[6][2] ;
  wire \grp_sum_reg_n_0_[6][3] ;
  wire \grp_sum_reg_n_0_[7][0] ;
  wire \grp_sum_reg_n_0_[7][1] ;
  wire \grp_sum_reg_n_0_[7][2] ;
  wire \grp_sum_reg_n_0_[7][3] ;
  wire [63:0]tap_orig;
  (* async_reg = "true" *) wire [63:0]tap_reg;
  wire \tap_reg_reg[3]_0 ;
  wire tdc_valid_i_1__0_n_0;
  wire tdc_value0__1_carry__0_i_10__0_n_0;
  wire tdc_value0__1_carry__0_i_11__0_n_0;
  wire tdc_value0__1_carry__0_i_1__0_n_0;
  wire tdc_value0__1_carry__0_i_2__0_n_0;
  wire tdc_value0__1_carry__0_i_3__0_n_0;
  wire tdc_value0__1_carry__0_i_4__0_n_0;
  wire tdc_value0__1_carry__0_i_5__0_n_0;
  wire tdc_value0__1_carry__0_i_6__0_n_0;
  wire tdc_value0__1_carry__0_i_7__0_n_0;
  wire tdc_value0__1_carry__0_i_8__0_n_0;
  wire tdc_value0__1_carry__0_i_9__0_n_0;
  wire tdc_value0__1_carry__0_n_1;
  wire tdc_value0__1_carry__0_n_3;
  wire tdc_value0__1_carry__0_n_6;
  wire tdc_value0__1_carry__0_n_7;
  wire tdc_value0__1_carry_i_10__0_n_0;
  wire tdc_value0__1_carry_i_11__0_n_0;
  wire tdc_value0__1_carry_i_12__0_n_0;
  wire tdc_value0__1_carry_i_13__0_n_0;
  wire tdc_value0__1_carry_i_14__0_n_0;
  wire tdc_value0__1_carry_i_15__0_n_0;
  wire tdc_value0__1_carry_i_16__0_n_0;
  wire tdc_value0__1_carry_i_17__0_n_0;
  wire tdc_value0__1_carry_i_18__0_n_0;
  wire tdc_value0__1_carry_i_19__0_n_0;
  wire tdc_value0__1_carry_i_1__0_n_0;
  wire tdc_value0__1_carry_i_20__0_n_0;
  wire tdc_value0__1_carry_i_21__0_n_0;
  wire tdc_value0__1_carry_i_22__0_n_0;
  wire tdc_value0__1_carry_i_23__0_n_0;
  wire tdc_value0__1_carry_i_24__0_n_0;
  wire tdc_value0__1_carry_i_2__0_n_0;
  wire tdc_value0__1_carry_i_3__0_n_0;
  wire tdc_value0__1_carry_i_4__0_n_0;
  wire tdc_value0__1_carry_i_5__0_n_0;
  wire tdc_value0__1_carry_i_6__0_n_0;
  wire tdc_value0__1_carry_i_7__0_n_0;
  wire tdc_value0__1_carry_i_8__0_n_0;
  wire tdc_value0__1_carry_i_9__0_n_0;
  wire tdc_value0__1_carry_n_0;
  wire tdc_value0__1_carry_n_1;
  wire tdc_value0__1_carry_n_2;
  wire tdc_value0__1_carry_n_3;
  wire tdc_value0__1_carry_n_4;
  wire tdc_value0__1_carry_n_5;
  wire tdc_value0__1_carry_n_6;
  wire tdc_value0__1_carry_n_7;
  wire \tdc_value[0]_i_1_n_0 ;
  wire \tdc_value[1]_i_1_n_0 ;
  wire \tdc_value[2]_i_1_n_0 ;
  wire \tdc_value[3]_i_1_n_0 ;
  wire \tdc_value[4]_i_1_n_0 ;
  wire \tdc_value[5]_i_1_n_0 ;
  wire tdc_vld;
  wire [3:1]\NLW_delay_stage[0].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[10].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[11].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[12].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[13].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[14].carry4_inst_CO_UNCONNECTED ;
  wire [3:0]\NLW_delay_stage[15].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[1].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[2].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[3].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[4].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[5].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[6].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[7].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[8].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_delay_stage[9].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]NLW_tdc_value0__1_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_tdc_value0__1_carry__0_O_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[0].carry4_inst 
       (.CI(\tap_reg_reg[3]_0 ),
        .CO({\NLW_delay_stage[0].carry4_inst_CO_UNCONNECTED [3:1],carry_1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[10].carry4_inst 
       (.CI(carry_10),
        .CO({\NLW_delay_stage[10].carry4_inst_CO_UNCONNECTED [3:1],carry_11}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[43:40]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[11].carry4_inst 
       (.CI(carry_11),
        .CO({\NLW_delay_stage[11].carry4_inst_CO_UNCONNECTED [3:1],carry_12}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[47:44]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[12].carry4_inst 
       (.CI(carry_12),
        .CO({\NLW_delay_stage[12].carry4_inst_CO_UNCONNECTED [3:1],carry_13}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[51:48]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[13].carry4_inst 
       (.CI(carry_13),
        .CO({\NLW_delay_stage[13].carry4_inst_CO_UNCONNECTED [3:1],carry_14}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[55:52]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[14].carry4_inst 
       (.CI(carry_14),
        .CO({\NLW_delay_stage[14].carry4_inst_CO_UNCONNECTED [3:1],carry_15}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[59:56]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[15].carry4_inst 
       (.CI(carry_15),
        .CO(\NLW_delay_stage[15].carry4_inst_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[63:60]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[1].carry4_inst 
       (.CI(carry_1),
        .CO({\NLW_delay_stage[1].carry4_inst_CO_UNCONNECTED [3:1],carry_2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[7:4]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[2].carry4_inst 
       (.CI(carry_2),
        .CO({\NLW_delay_stage[2].carry4_inst_CO_UNCONNECTED [3:1],carry_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[11:8]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[3].carry4_inst 
       (.CI(carry_3),
        .CO({\NLW_delay_stage[3].carry4_inst_CO_UNCONNECTED [3:1],carry_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[15:12]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[4].carry4_inst 
       (.CI(carry_4),
        .CO({\NLW_delay_stage[4].carry4_inst_CO_UNCONNECTED [3:1],carry_5}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[19:16]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[5].carry4_inst 
       (.CI(carry_5),
        .CO({\NLW_delay_stage[5].carry4_inst_CO_UNCONNECTED [3:1],carry_6}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[23:20]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[6].carry4_inst 
       (.CI(carry_6),
        .CO({\NLW_delay_stage[6].carry4_inst_CO_UNCONNECTED [3:1],carry_7}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[27:24]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[7].carry4_inst 
       (.CI(carry_7),
        .CO({\NLW_delay_stage[7].carry4_inst_CO_UNCONNECTED [3:1],carry_8}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[31:28]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[8].carry4_inst 
       (.CI(carry_8),
        .CO({\NLW_delay_stage[8].carry4_inst_CO_UNCONNECTED [3:1],carry_9}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[35:32]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[9].carry4_inst 
       (.CI(carry_9),
        .CO({\NLW_delay_stage[9].carry4_inst_CO_UNCONNECTED [3:1],carry_10}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[39:36]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \grp_sum[0][0]_i_1 
       (.I0(tap_reg[0]),
        .I1(tap_reg[7]),
        .I2(\grp_sum[0][0]_i_2_n_0 ),
        .I3(tap_reg[2]),
        .I4(tap_reg[1]),
        .I5(tap_reg[3]),
        .O(\grp_sum[0][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[0][0]_i_2 
       (.I0(tap_reg[6]),
        .I1(tap_reg[4]),
        .I2(tap_reg[5]),
        .O(\grp_sum[0][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[0][1]_i_1 
       (.I0(\grp_sum[0][3]_i_2_n_0 ),
        .I1(\grp_sum[0][1]_i_2_n_0 ),
        .I2(\grp_sum[0][3]_i_3_n_0 ),
        .O(\grp_sum[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[0][1]_i_2 
       (.I0(tap_reg[3]),
        .I1(tap_reg[2]),
        .I2(tap_reg[1]),
        .I3(tap_reg[6]),
        .I4(tap_reg[5]),
        .I5(tap_reg[4]),
        .O(\grp_sum[0][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \grp_sum[0][2]_i_1 
       (.I0(\grp_sum[0][3]_i_2_n_0 ),
        .I1(\grp_sum[0][3]_i_3_n_0 ),
        .I2(\grp_sum[0][2]_i_2_n_0 ),
        .I3(tap_reg[4]),
        .I4(tap_reg[5]),
        .I5(tap_reg[6]),
        .O(\grp_sum[0][2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[0][2]_i_2 
       (.I0(tap_reg[1]),
        .I1(tap_reg[2]),
        .I2(tap_reg[3]),
        .O(\grp_sum[0][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \grp_sum[0][3]_i_1 
       (.I0(\grp_sum[0][3]_i_2_n_0 ),
        .I1(\grp_sum[0][3]_i_3_n_0 ),
        .I2(tap_reg[3]),
        .I3(tap_reg[2]),
        .I4(tap_reg[1]),
        .I5(\grp_sum[0][3]_i_4_n_0 ),
        .O(\grp_sum[0][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \grp_sum[0][3]_i_2 
       (.I0(tap_reg[2]),
        .I1(tap_reg[1]),
        .I2(tap_reg[3]),
        .I3(tap_reg[0]),
        .I4(tap_reg[7]),
        .I5(\grp_sum[0][0]_i_2_n_0 ),
        .O(\grp_sum[0][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \grp_sum[0][3]_i_3 
       (.I0(tap_reg[7]),
        .I1(tap_reg[0]),
        .I2(tap_reg[5]),
        .I3(tap_reg[4]),
        .I4(tap_reg[6]),
        .O(\grp_sum[0][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[0][3]_i_4 
       (.I0(tap_reg[4]),
        .I1(tap_reg[5]),
        .I2(tap_reg[6]),
        .O(\grp_sum[0][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \grp_sum[1][0]_i_1 
       (.I0(tap_reg[8]),
        .I1(tap_reg[15]),
        .I2(\grp_sum[1][0]_i_2_n_0 ),
        .I3(tap_reg[10]),
        .I4(tap_reg[9]),
        .I5(tap_reg[11]),
        .O(\grp_sum[1][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[1][0]_i_2 
       (.I0(tap_reg[14]),
        .I1(tap_reg[12]),
        .I2(tap_reg[13]),
        .O(\grp_sum[1][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[1][1]_i_1 
       (.I0(\grp_sum[1][3]_i_2_n_0 ),
        .I1(\grp_sum[1][1]_i_2_n_0 ),
        .I2(\grp_sum[1][3]_i_3_n_0 ),
        .O(\grp_sum[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[1][1]_i_2 
       (.I0(tap_reg[11]),
        .I1(tap_reg[10]),
        .I2(tap_reg[9]),
        .I3(tap_reg[14]),
        .I4(tap_reg[13]),
        .I5(tap_reg[12]),
        .O(\grp_sum[1][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \grp_sum[1][2]_i_1 
       (.I0(\grp_sum[1][3]_i_2_n_0 ),
        .I1(\grp_sum[1][3]_i_3_n_0 ),
        .I2(\grp_sum[1][2]_i_2_n_0 ),
        .I3(tap_reg[12]),
        .I4(tap_reg[13]),
        .I5(tap_reg[14]),
        .O(\grp_sum[1][2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[1][2]_i_2 
       (.I0(tap_reg[9]),
        .I1(tap_reg[10]),
        .I2(tap_reg[11]),
        .O(\grp_sum[1][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \grp_sum[1][3]_i_1 
       (.I0(\grp_sum[1][3]_i_2_n_0 ),
        .I1(\grp_sum[1][3]_i_3_n_0 ),
        .I2(tap_reg[11]),
        .I3(tap_reg[10]),
        .I4(tap_reg[9]),
        .I5(\grp_sum[1][3]_i_4_n_0 ),
        .O(\grp_sum[1][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \grp_sum[1][3]_i_2 
       (.I0(tap_reg[10]),
        .I1(tap_reg[9]),
        .I2(tap_reg[11]),
        .I3(tap_reg[8]),
        .I4(tap_reg[15]),
        .I5(\grp_sum[1][0]_i_2_n_0 ),
        .O(\grp_sum[1][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \grp_sum[1][3]_i_3 
       (.I0(tap_reg[15]),
        .I1(tap_reg[8]),
        .I2(tap_reg[13]),
        .I3(tap_reg[12]),
        .I4(tap_reg[14]),
        .O(\grp_sum[1][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[1][3]_i_4 
       (.I0(tap_reg[12]),
        .I1(tap_reg[13]),
        .I2(tap_reg[14]),
        .O(\grp_sum[1][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \grp_sum[2][0]_i_1 
       (.I0(tap_reg[16]),
        .I1(tap_reg[23]),
        .I2(\grp_sum[2][0]_i_2_n_0 ),
        .I3(tap_reg[18]),
        .I4(tap_reg[17]),
        .I5(tap_reg[19]),
        .O(\grp_sum[2][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[2][0]_i_2 
       (.I0(tap_reg[22]),
        .I1(tap_reg[20]),
        .I2(tap_reg[21]),
        .O(\grp_sum[2][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[2][1]_i_1 
       (.I0(\grp_sum[2][3]_i_2_n_0 ),
        .I1(\grp_sum[2][1]_i_2_n_0 ),
        .I2(\grp_sum[2][3]_i_3_n_0 ),
        .O(\grp_sum[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[2][1]_i_2 
       (.I0(tap_reg[19]),
        .I1(tap_reg[18]),
        .I2(tap_reg[17]),
        .I3(tap_reg[22]),
        .I4(tap_reg[21]),
        .I5(tap_reg[20]),
        .O(\grp_sum[2][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \grp_sum[2][2]_i_1 
       (.I0(\grp_sum[2][3]_i_2_n_0 ),
        .I1(\grp_sum[2][3]_i_3_n_0 ),
        .I2(\grp_sum[2][2]_i_2_n_0 ),
        .I3(tap_reg[20]),
        .I4(tap_reg[21]),
        .I5(tap_reg[22]),
        .O(\grp_sum[2][2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[2][2]_i_2 
       (.I0(tap_reg[17]),
        .I1(tap_reg[18]),
        .I2(tap_reg[19]),
        .O(\grp_sum[2][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \grp_sum[2][3]_i_1 
       (.I0(\grp_sum[2][3]_i_2_n_0 ),
        .I1(\grp_sum[2][3]_i_3_n_0 ),
        .I2(tap_reg[19]),
        .I3(tap_reg[18]),
        .I4(tap_reg[17]),
        .I5(\grp_sum[2][3]_i_4_n_0 ),
        .O(\grp_sum[2][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \grp_sum[2][3]_i_2 
       (.I0(tap_reg[18]),
        .I1(tap_reg[17]),
        .I2(tap_reg[19]),
        .I3(tap_reg[16]),
        .I4(tap_reg[23]),
        .I5(\grp_sum[2][0]_i_2_n_0 ),
        .O(\grp_sum[2][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \grp_sum[2][3]_i_3 
       (.I0(tap_reg[23]),
        .I1(tap_reg[16]),
        .I2(tap_reg[21]),
        .I3(tap_reg[20]),
        .I4(tap_reg[22]),
        .O(\grp_sum[2][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[2][3]_i_4 
       (.I0(tap_reg[20]),
        .I1(tap_reg[21]),
        .I2(tap_reg[22]),
        .O(\grp_sum[2][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \grp_sum[3][0]_i_1 
       (.I0(tap_reg[24]),
        .I1(tap_reg[31]),
        .I2(\grp_sum[3][0]_i_2_n_0 ),
        .I3(tap_reg[26]),
        .I4(tap_reg[25]),
        .I5(tap_reg[27]),
        .O(\grp_sum[3][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[3][0]_i_2 
       (.I0(tap_reg[30]),
        .I1(tap_reg[28]),
        .I2(tap_reg[29]),
        .O(\grp_sum[3][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[3][1]_i_1 
       (.I0(\grp_sum[3][3]_i_2_n_0 ),
        .I1(\grp_sum[3][1]_i_2_n_0 ),
        .I2(\grp_sum[3][3]_i_3_n_0 ),
        .O(\grp_sum[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[3][1]_i_2 
       (.I0(tap_reg[27]),
        .I1(tap_reg[26]),
        .I2(tap_reg[25]),
        .I3(tap_reg[30]),
        .I4(tap_reg[29]),
        .I5(tap_reg[28]),
        .O(\grp_sum[3][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \grp_sum[3][2]_i_1 
       (.I0(\grp_sum[3][3]_i_2_n_0 ),
        .I1(\grp_sum[3][3]_i_3_n_0 ),
        .I2(\grp_sum[3][2]_i_2_n_0 ),
        .I3(tap_reg[28]),
        .I4(tap_reg[29]),
        .I5(tap_reg[30]),
        .O(\grp_sum[3][2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[3][2]_i_2 
       (.I0(tap_reg[25]),
        .I1(tap_reg[26]),
        .I2(tap_reg[27]),
        .O(\grp_sum[3][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \grp_sum[3][3]_i_1 
       (.I0(\grp_sum[3][3]_i_2_n_0 ),
        .I1(\grp_sum[3][3]_i_3_n_0 ),
        .I2(tap_reg[27]),
        .I3(tap_reg[26]),
        .I4(tap_reg[25]),
        .I5(\grp_sum[3][3]_i_4_n_0 ),
        .O(\grp_sum[3][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \grp_sum[3][3]_i_2 
       (.I0(tap_reg[26]),
        .I1(tap_reg[25]),
        .I2(tap_reg[27]),
        .I3(tap_reg[24]),
        .I4(tap_reg[31]),
        .I5(\grp_sum[3][0]_i_2_n_0 ),
        .O(\grp_sum[3][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \grp_sum[3][3]_i_3 
       (.I0(tap_reg[31]),
        .I1(tap_reg[24]),
        .I2(tap_reg[29]),
        .I3(tap_reg[28]),
        .I4(tap_reg[30]),
        .O(\grp_sum[3][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[3][3]_i_4 
       (.I0(tap_reg[28]),
        .I1(tap_reg[29]),
        .I2(tap_reg[30]),
        .O(\grp_sum[3][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \grp_sum[4][0]_i_1 
       (.I0(tap_reg[32]),
        .I1(tap_reg[39]),
        .I2(\grp_sum[4][0]_i_2_n_0 ),
        .I3(tap_reg[34]),
        .I4(tap_reg[33]),
        .I5(tap_reg[35]),
        .O(\grp_sum[4][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[4][0]_i_2 
       (.I0(tap_reg[38]),
        .I1(tap_reg[36]),
        .I2(tap_reg[37]),
        .O(\grp_sum[4][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[4][1]_i_1 
       (.I0(\grp_sum[4][3]_i_2_n_0 ),
        .I1(\grp_sum[4][1]_i_2_n_0 ),
        .I2(\grp_sum[4][3]_i_3_n_0 ),
        .O(\grp_sum[4][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[4][1]_i_2 
       (.I0(tap_reg[35]),
        .I1(tap_reg[34]),
        .I2(tap_reg[33]),
        .I3(tap_reg[38]),
        .I4(tap_reg[37]),
        .I5(tap_reg[36]),
        .O(\grp_sum[4][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \grp_sum[4][2]_i_1 
       (.I0(\grp_sum[4][3]_i_2_n_0 ),
        .I1(\grp_sum[4][3]_i_3_n_0 ),
        .I2(\grp_sum[4][2]_i_2_n_0 ),
        .I3(tap_reg[36]),
        .I4(tap_reg[37]),
        .I5(tap_reg[38]),
        .O(\grp_sum[4][2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[4][2]_i_2 
       (.I0(tap_reg[33]),
        .I1(tap_reg[34]),
        .I2(tap_reg[35]),
        .O(\grp_sum[4][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \grp_sum[4][3]_i_1 
       (.I0(\grp_sum[4][3]_i_2_n_0 ),
        .I1(\grp_sum[4][3]_i_3_n_0 ),
        .I2(tap_reg[35]),
        .I3(tap_reg[34]),
        .I4(tap_reg[33]),
        .I5(\grp_sum[4][3]_i_4_n_0 ),
        .O(\grp_sum[4][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \grp_sum[4][3]_i_2 
       (.I0(tap_reg[34]),
        .I1(tap_reg[33]),
        .I2(tap_reg[35]),
        .I3(tap_reg[32]),
        .I4(tap_reg[39]),
        .I5(\grp_sum[4][0]_i_2_n_0 ),
        .O(\grp_sum[4][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \grp_sum[4][3]_i_3 
       (.I0(tap_reg[39]),
        .I1(tap_reg[32]),
        .I2(tap_reg[37]),
        .I3(tap_reg[36]),
        .I4(tap_reg[38]),
        .O(\grp_sum[4][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[4][3]_i_4 
       (.I0(tap_reg[36]),
        .I1(tap_reg[37]),
        .I2(tap_reg[38]),
        .O(\grp_sum[4][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \grp_sum[5][0]_i_1 
       (.I0(tap_reg[40]),
        .I1(tap_reg[47]),
        .I2(\grp_sum[5][0]_i_2_n_0 ),
        .I3(tap_reg[42]),
        .I4(tap_reg[41]),
        .I5(tap_reg[43]),
        .O(\grp_sum[5][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[5][0]_i_2 
       (.I0(tap_reg[46]),
        .I1(tap_reg[44]),
        .I2(tap_reg[45]),
        .O(\grp_sum[5][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[5][1]_i_1 
       (.I0(\grp_sum[5][3]_i_2_n_0 ),
        .I1(\grp_sum[5][1]_i_2_n_0 ),
        .I2(\grp_sum[5][3]_i_3_n_0 ),
        .O(\grp_sum[5][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[5][1]_i_2 
       (.I0(tap_reg[43]),
        .I1(tap_reg[42]),
        .I2(tap_reg[41]),
        .I3(tap_reg[46]),
        .I4(tap_reg[45]),
        .I5(tap_reg[44]),
        .O(\grp_sum[5][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \grp_sum[5][2]_i_1 
       (.I0(\grp_sum[5][3]_i_2_n_0 ),
        .I1(\grp_sum[5][3]_i_3_n_0 ),
        .I2(\grp_sum[5][2]_i_2_n_0 ),
        .I3(tap_reg[44]),
        .I4(tap_reg[45]),
        .I5(tap_reg[46]),
        .O(\grp_sum[5][2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[5][2]_i_2 
       (.I0(tap_reg[41]),
        .I1(tap_reg[42]),
        .I2(tap_reg[43]),
        .O(\grp_sum[5][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \grp_sum[5][3]_i_1 
       (.I0(\grp_sum[5][3]_i_2_n_0 ),
        .I1(\grp_sum[5][3]_i_3_n_0 ),
        .I2(tap_reg[43]),
        .I3(tap_reg[42]),
        .I4(tap_reg[41]),
        .I5(\grp_sum[5][3]_i_4_n_0 ),
        .O(\grp_sum[5][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \grp_sum[5][3]_i_2 
       (.I0(tap_reg[42]),
        .I1(tap_reg[41]),
        .I2(tap_reg[43]),
        .I3(tap_reg[40]),
        .I4(tap_reg[47]),
        .I5(\grp_sum[5][0]_i_2_n_0 ),
        .O(\grp_sum[5][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \grp_sum[5][3]_i_3 
       (.I0(tap_reg[47]),
        .I1(tap_reg[40]),
        .I2(tap_reg[45]),
        .I3(tap_reg[44]),
        .I4(tap_reg[46]),
        .O(\grp_sum[5][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[5][3]_i_4 
       (.I0(tap_reg[44]),
        .I1(tap_reg[45]),
        .I2(tap_reg[46]),
        .O(\grp_sum[5][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \grp_sum[6][0]_i_1 
       (.I0(tap_reg[48]),
        .I1(tap_reg[55]),
        .I2(\grp_sum[6][0]_i_2_n_0 ),
        .I3(tap_reg[50]),
        .I4(tap_reg[49]),
        .I5(tap_reg[51]),
        .O(\grp_sum[6][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[6][0]_i_2 
       (.I0(tap_reg[54]),
        .I1(tap_reg[52]),
        .I2(tap_reg[53]),
        .O(\grp_sum[6][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[6][1]_i_1 
       (.I0(\grp_sum[6][3]_i_2_n_0 ),
        .I1(\grp_sum[6][1]_i_2_n_0 ),
        .I2(\grp_sum[6][3]_i_3_n_0 ),
        .O(\grp_sum[6][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[6][1]_i_2 
       (.I0(tap_reg[51]),
        .I1(tap_reg[50]),
        .I2(tap_reg[49]),
        .I3(tap_reg[54]),
        .I4(tap_reg[53]),
        .I5(tap_reg[52]),
        .O(\grp_sum[6][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \grp_sum[6][2]_i_1 
       (.I0(\grp_sum[6][3]_i_2_n_0 ),
        .I1(\grp_sum[6][3]_i_3_n_0 ),
        .I2(\grp_sum[6][2]_i_2_n_0 ),
        .I3(tap_reg[52]),
        .I4(tap_reg[53]),
        .I5(tap_reg[54]),
        .O(\grp_sum[6][2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[6][2]_i_2 
       (.I0(tap_reg[49]),
        .I1(tap_reg[50]),
        .I2(tap_reg[51]),
        .O(\grp_sum[6][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \grp_sum[6][3]_i_1 
       (.I0(\grp_sum[6][3]_i_2_n_0 ),
        .I1(\grp_sum[6][3]_i_3_n_0 ),
        .I2(tap_reg[51]),
        .I3(tap_reg[50]),
        .I4(tap_reg[49]),
        .I5(\grp_sum[6][3]_i_4_n_0 ),
        .O(\grp_sum[6][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \grp_sum[6][3]_i_2 
       (.I0(tap_reg[50]),
        .I1(tap_reg[49]),
        .I2(tap_reg[51]),
        .I3(tap_reg[48]),
        .I4(tap_reg[55]),
        .I5(\grp_sum[6][0]_i_2_n_0 ),
        .O(\grp_sum[6][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \grp_sum[6][3]_i_3 
       (.I0(tap_reg[55]),
        .I1(tap_reg[48]),
        .I2(tap_reg[53]),
        .I3(tap_reg[52]),
        .I4(tap_reg[54]),
        .O(\grp_sum[6][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[6][3]_i_4 
       (.I0(tap_reg[52]),
        .I1(tap_reg[53]),
        .I2(tap_reg[54]),
        .O(\grp_sum[6][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \grp_sum[7][0]_i_1 
       (.I0(tap_reg[56]),
        .I1(tap_reg[63]),
        .I2(\grp_sum[7][0]_i_2_n_0 ),
        .I3(tap_reg[58]),
        .I4(tap_reg[57]),
        .I5(tap_reg[59]),
        .O(\grp_sum[7][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[7][0]_i_2 
       (.I0(tap_reg[62]),
        .I1(tap_reg[60]),
        .I2(tap_reg[61]),
        .O(\grp_sum[7][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[7][1]_i_1 
       (.I0(\grp_sum[7][3]_i_2_n_0 ),
        .I1(\grp_sum[7][1]_i_2_n_0 ),
        .I2(\grp_sum[7][3]_i_3_n_0 ),
        .O(\grp_sum[7][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[7][1]_i_2 
       (.I0(tap_reg[59]),
        .I1(tap_reg[58]),
        .I2(tap_reg[57]),
        .I3(tap_reg[62]),
        .I4(tap_reg[61]),
        .I5(tap_reg[60]),
        .O(\grp_sum[7][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \grp_sum[7][2]_i_1 
       (.I0(\grp_sum[7][3]_i_2_n_0 ),
        .I1(\grp_sum[7][3]_i_3_n_0 ),
        .I2(\grp_sum[7][2]_i_2_n_0 ),
        .I3(tap_reg[60]),
        .I4(tap_reg[61]),
        .I5(tap_reg[62]),
        .O(\grp_sum[7][2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[7][2]_i_2 
       (.I0(tap_reg[57]),
        .I1(tap_reg[58]),
        .I2(tap_reg[59]),
        .O(\grp_sum[7][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \grp_sum[7][3]_i_1 
       (.I0(\grp_sum[7][3]_i_2_n_0 ),
        .I1(\grp_sum[7][3]_i_3_n_0 ),
        .I2(tap_reg[59]),
        .I3(tap_reg[58]),
        .I4(tap_reg[57]),
        .I5(\grp_sum[7][3]_i_4_n_0 ),
        .O(\grp_sum[7][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \grp_sum[7][3]_i_2 
       (.I0(tap_reg[58]),
        .I1(tap_reg[57]),
        .I2(tap_reg[59]),
        .I3(tap_reg[56]),
        .I4(tap_reg[63]),
        .I5(\grp_sum[7][0]_i_2_n_0 ),
        .O(\grp_sum[7][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \grp_sum[7][3]_i_3 
       (.I0(tap_reg[63]),
        .I1(tap_reg[56]),
        .I2(tap_reg[61]),
        .I3(tap_reg[60]),
        .I4(tap_reg[62]),
        .O(\grp_sum[7][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \grp_sum[7][3]_i_4 
       (.I0(tap_reg[60]),
        .I1(tap_reg[61]),
        .I2(tap_reg[62]),
        .O(\grp_sum[7][3]_i_4_n_0 ));
  FDRE \grp_sum_reg[0][0] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[0][0]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[0][0] ),
        .R(SR));
  FDRE \grp_sum_reg[0][1] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[0][1]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[0][1] ),
        .R(SR));
  FDRE \grp_sum_reg[0][2] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[0][2]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[0][2] ),
        .R(SR));
  FDRE \grp_sum_reg[0][3] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[0][3]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[0][3] ),
        .R(SR));
  FDRE \grp_sum_reg[1][0] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[1][0]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[1][0] ),
        .R(SR));
  FDRE \grp_sum_reg[1][1] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[1][1]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[1][1] ),
        .R(SR));
  FDRE \grp_sum_reg[1][2] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[1][2]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[1][2] ),
        .R(SR));
  FDRE \grp_sum_reg[1][3] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[1][3]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[1][3] ),
        .R(SR));
  FDRE \grp_sum_reg[2][0] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[2][0]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[2][0] ),
        .R(SR));
  FDRE \grp_sum_reg[2][1] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[2][1]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[2][1] ),
        .R(SR));
  FDRE \grp_sum_reg[2][2] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[2][2]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[2][2] ),
        .R(SR));
  FDRE \grp_sum_reg[2][3] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[2][3]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[2][3] ),
        .R(SR));
  FDRE \grp_sum_reg[3][0] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[3][0]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[3][0] ),
        .R(SR));
  FDRE \grp_sum_reg[3][1] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[3][1]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[3][1] ),
        .R(SR));
  FDRE \grp_sum_reg[3][2] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[3][2]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[3][2] ),
        .R(SR));
  FDRE \grp_sum_reg[3][3] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[3][3]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[3][3] ),
        .R(SR));
  FDRE \grp_sum_reg[4][0] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[4][0]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[4][0] ),
        .R(SR));
  FDRE \grp_sum_reg[4][1] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[4][1]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[4][1] ),
        .R(SR));
  FDRE \grp_sum_reg[4][2] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[4][2]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[4][2] ),
        .R(SR));
  FDRE \grp_sum_reg[4][3] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[4][3]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[4][3] ),
        .R(SR));
  FDRE \grp_sum_reg[5][0] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[5][0]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[5][0] ),
        .R(SR));
  FDRE \grp_sum_reg[5][1] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[5][1]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[5][1] ),
        .R(SR));
  FDRE \grp_sum_reg[5][2] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[5][2]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[5][2] ),
        .R(SR));
  FDRE \grp_sum_reg[5][3] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[5][3]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[5][3] ),
        .R(SR));
  FDRE \grp_sum_reg[6][0] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[6][0]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[6][0] ),
        .R(SR));
  FDRE \grp_sum_reg[6][1] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[6][1]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[6][1] ),
        .R(SR));
  FDRE \grp_sum_reg[6][2] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[6][2]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[6][2] ),
        .R(SR));
  FDRE \grp_sum_reg[6][3] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[6][3]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[6][3] ),
        .R(SR));
  FDRE \grp_sum_reg[7][0] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[7][0]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[7][0] ),
        .R(SR));
  FDRE \grp_sum_reg[7][1] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[7][1]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[7][1] ),
        .R(SR));
  FDRE \grp_sum_reg[7][2] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[7][2]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[7][2] ),
        .R(SR));
  FDRE \grp_sum_reg[7][3] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\grp_sum[7][3]_i_1_n_0 ),
        .Q(\grp_sum_reg_n_0_[7][3] ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[0] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[0]),
        .Q(tap_reg[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[10] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[10]),
        .Q(tap_reg[10]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[11] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[11]),
        .Q(tap_reg[11]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[12] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[12]),
        .Q(tap_reg[12]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[13] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[13]),
        .Q(tap_reg[13]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[14] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[14]),
        .Q(tap_reg[14]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[15] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[15]),
        .Q(tap_reg[15]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[16] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[16]),
        .Q(tap_reg[16]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[17] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[17]),
        .Q(tap_reg[17]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[18] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[18]),
        .Q(tap_reg[18]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[19] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[19]),
        .Q(tap_reg[19]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[1] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[1]),
        .Q(tap_reg[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[20] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[20]),
        .Q(tap_reg[20]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[21] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[21]),
        .Q(tap_reg[21]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[22] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[22]),
        .Q(tap_reg[22]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[23] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[23]),
        .Q(tap_reg[23]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[24] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[24]),
        .Q(tap_reg[24]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[25] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[25]),
        .Q(tap_reg[25]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[26] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[26]),
        .Q(tap_reg[26]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[27] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[27]),
        .Q(tap_reg[27]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[28] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[28]),
        .Q(tap_reg[28]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[29] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[29]),
        .Q(tap_reg[29]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[2] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[2]),
        .Q(tap_reg[2]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[30] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[30]),
        .Q(tap_reg[30]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[31] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[31]),
        .Q(tap_reg[31]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[32] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[32]),
        .Q(tap_reg[32]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[33] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[33]),
        .Q(tap_reg[33]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[34] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[34]),
        .Q(tap_reg[34]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[35] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[35]),
        .Q(tap_reg[35]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[36] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[36]),
        .Q(tap_reg[36]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[37] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[37]),
        .Q(tap_reg[37]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[38] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[38]),
        .Q(tap_reg[38]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[39] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[39]),
        .Q(tap_reg[39]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[3] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[3]),
        .Q(tap_reg[3]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[40] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[40]),
        .Q(tap_reg[40]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[41] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[41]),
        .Q(tap_reg[41]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[42] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[42]),
        .Q(tap_reg[42]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[43] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[43]),
        .Q(tap_reg[43]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[44] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[44]),
        .Q(tap_reg[44]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[45] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[45]),
        .Q(tap_reg[45]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[46] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[46]),
        .Q(tap_reg[46]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[47] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[47]),
        .Q(tap_reg[47]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[48] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[48]),
        .Q(tap_reg[48]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[49] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[49]),
        .Q(tap_reg[49]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[4] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[4]),
        .Q(tap_reg[4]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[50] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[50]),
        .Q(tap_reg[50]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[51] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[51]),
        .Q(tap_reg[51]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[52] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[52]),
        .Q(tap_reg[52]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[53] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[53]),
        .Q(tap_reg[53]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[54] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[54]),
        .Q(tap_reg[54]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[55] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[55]),
        .Q(tap_reg[55]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[56] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[56]),
        .Q(tap_reg[56]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[57] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[57]),
        .Q(tap_reg[57]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[58] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[58]),
        .Q(tap_reg[58]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[59] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[59]),
        .Q(tap_reg[59]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[5] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[5]),
        .Q(tap_reg[5]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[60] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[60]),
        .Q(tap_reg[60]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[61] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[61]),
        .Q(tap_reg[61]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[62] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[62]),
        .Q(tap_reg[62]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[63] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[63]),
        .Q(tap_reg[63]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[6] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[6]),
        .Q(tap_reg[6]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[7] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[7]),
        .Q(tap_reg[7]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[8] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[8]),
        .Q(tap_reg[8]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[9] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(tap_orig[9]),
        .Q(tap_reg[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    tdc_valid_i_1__0
       (.I0(tdc_value0__1_carry__0_n_6),
        .I1(tdc_value0__1_carry__0_n_7),
        .I2(tdc_value0__1_carry_n_4),
        .I3(tdc_value0__1_carry_n_5),
        .I4(tdc_value0__1_carry_n_7),
        .I5(tdc_value0__1_carry_n_6),
        .O(tdc_valid_i_1__0_n_0));
  FDRE tdc_valid_reg
       (.C(clk_fx),
        .CE(1'b1),
        .D(tdc_valid_i_1__0_n_0),
        .Q(tdc_vld),
        .R(SR));
  CARRY4 tdc_value0__1_carry
       (.CI(1'b0),
        .CO({tdc_value0__1_carry_n_0,tdc_value0__1_carry_n_1,tdc_value0__1_carry_n_2,tdc_value0__1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({tdc_value0__1_carry_i_1__0_n_0,tdc_value0__1_carry_i_2__0_n_0,tdc_value0__1_carry_i_3__0_n_0,tdc_value0__1_carry_i_4__0_n_0}),
        .O({tdc_value0__1_carry_n_4,tdc_value0__1_carry_n_5,tdc_value0__1_carry_n_6,tdc_value0__1_carry_n_7}),
        .S({tdc_value0__1_carry_i_5__0_n_0,tdc_value0__1_carry_i_6__0_n_0,tdc_value0__1_carry_i_7__0_n_0,tdc_value0__1_carry_i_8__0_n_0}));
  CARRY4 tdc_value0__1_carry__0
       (.CI(tdc_value0__1_carry_n_0),
        .CO({NLW_tdc_value0__1_carry__0_CO_UNCONNECTED[3],tdc_value0__1_carry__0_n_1,NLW_tdc_value0__1_carry__0_CO_UNCONNECTED[1],tdc_value0__1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,tdc_value0__1_carry__0_i_1__0_n_0,tdc_value0__1_carry__0_i_2__0_n_0}),
        .O({NLW_tdc_value0__1_carry__0_O_UNCONNECTED[3:2],tdc_value0__1_carry__0_n_6,tdc_value0__1_carry__0_n_7}),
        .S({1'b0,1'b1,tdc_value0__1_carry__0_i_3__0_n_0,tdc_value0__1_carry__0_i_4__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    tdc_value0__1_carry__0_i_10__0
       (.I0(\grp_sum_reg_n_0_[3][2] ),
        .I1(\grp_sum_reg_n_0_[2][2] ),
        .I2(\grp_sum_reg_n_0_[1][2] ),
        .I3(tdc_value0__1_carry_i_22__0_n_0),
        .I4(tdc_value0__1_carry_i_21__0_n_0),
        .O(tdc_value0__1_carry__0_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    tdc_value0__1_carry__0_i_11__0
       (.I0(\grp_sum_reg_n_0_[3][3] ),
        .I1(\grp_sum_reg_n_0_[2][3] ),
        .I2(\grp_sum_reg_n_0_[1][3] ),
        .O(tdc_value0__1_carry__0_i_11__0_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    tdc_value0__1_carry__0_i_1__0
       (.I0(tdc_value0__1_carry__0_i_5__0_n_0),
        .I1(tdc_value0__1_carry__0_i_6__0_n_0),
        .I2(\grp_sum_reg_n_0_[7][3] ),
        .I3(\grp_sum_reg_n_0_[0][3] ),
        .I4(tdc_value0__1_carry__0_i_7__0_n_0),
        .O(tdc_value0__1_carry__0_i_1__0_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    tdc_value0__1_carry__0_i_2__0
       (.I0(tdc_value0__1_carry_i_16__0_n_0),
        .I1(tdc_value0__1_carry_i_14__0_n_0),
        .I2(tdc_value0__1_carry_i_15__0_n_0),
        .O(tdc_value0__1_carry__0_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h177E7EE8)) 
    tdc_value0__1_carry__0_i_3__0
       (.I0(tdc_value0__1_carry__0_i_8__0_n_0),
        .I1(tdc_value0__1_carry__0_i_5__0_n_0),
        .I2(tdc_value0__1_carry__0_i_9__0_n_0),
        .I3(tdc_value0__1_carry__0_i_10__0_n_0),
        .I4(tdc_value0__1_carry__0_i_11__0_n_0),
        .O(tdc_value0__1_carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h6669699999969666)) 
    tdc_value0__1_carry__0_i_4__0
       (.I0(tdc_value0__1_carry__0_i_2__0_n_0),
        .I1(tdc_value0__1_carry__0_i_6__0_n_0),
        .I2(\grp_sum_reg_n_0_[7][3] ),
        .I3(\grp_sum_reg_n_0_[0][3] ),
        .I4(tdc_value0__1_carry__0_i_7__0_n_0),
        .I5(tdc_value0__1_carry__0_i_5__0_n_0),
        .O(tdc_value0__1_carry__0_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hEA80FFFF0000EA80)) 
    tdc_value0__1_carry__0_i_5__0
       (.I0(\grp_sum_reg_n_0_[0][2] ),
        .I1(\grp_sum_reg_n_0_[7][1] ),
        .I2(\grp_sum_reg_n_0_[0][1] ),
        .I3(\grp_sum_reg_n_0_[7][2] ),
        .I4(tdc_value0__1_carry_i_24__0_n_0),
        .I5(tdc_value0__1_carry_i_23__0_n_0),
        .O(tdc_value0__1_carry__0_i_5__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA995566A)) 
    tdc_value0__1_carry__0_i_6__0
       (.I0(tdc_value0__1_carry__0_i_9__0_n_0),
        .I1(\grp_sum_reg_n_0_[3][3] ),
        .I2(\grp_sum_reg_n_0_[2][3] ),
        .I3(\grp_sum_reg_n_0_[1][3] ),
        .I4(tdc_value0__1_carry__0_i_10__0_n_0),
        .O(tdc_value0__1_carry__0_i_6__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    tdc_value0__1_carry__0_i_7__0
       (.I0(\grp_sum_reg_n_0_[6][3] ),
        .I1(\grp_sum_reg_n_0_[4][3] ),
        .I2(\grp_sum_reg_n_0_[5][3] ),
        .O(tdc_value0__1_carry__0_i_7__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    tdc_value0__1_carry__0_i_8__0
       (.I0(\grp_sum_reg_n_0_[6][3] ),
        .I1(\grp_sum_reg_n_0_[4][3] ),
        .I2(\grp_sum_reg_n_0_[5][3] ),
        .I3(\grp_sum_reg_n_0_[0][3] ),
        .I4(\grp_sum_reg_n_0_[7][3] ),
        .O(tdc_value0__1_carry__0_i_8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    tdc_value0__1_carry__0_i_9__0
       (.I0(\grp_sum_reg_n_0_[6][3] ),
        .I1(\grp_sum_reg_n_0_[5][3] ),
        .I2(\grp_sum_reg_n_0_[4][3] ),
        .O(tdc_value0__1_carry__0_i_9__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    tdc_value0__1_carry_i_10__0
       (.I0(tdc_value0__1_carry_i_19__0_n_0),
        .I1(tdc_value0__1_carry_i_20__0_n_0),
        .I2(\grp_sum_reg_n_0_[6][2] ),
        .I3(\grp_sum_reg_n_0_[4][2] ),
        .I4(\grp_sum_reg_n_0_[5][2] ),
        .O(tdc_value0__1_carry_i_10__0_n_0));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    tdc_value0__1_carry_i_11__0
       (.I0(\grp_sum_reg_n_0_[1][1] ),
        .I1(\grp_sum_reg_n_0_[2][1] ),
        .I2(\grp_sum_reg_n_0_[3][1] ),
        .I3(\grp_sum_reg_n_0_[4][1] ),
        .I4(\grp_sum_reg_n_0_[5][1] ),
        .I5(\grp_sum_reg_n_0_[6][1] ),
        .O(tdc_value0__1_carry_i_11__0_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    tdc_value0__1_carry_i_12__0
       (.I0(tdc_value0__1_carry_i_18__0_n_0),
        .I1(\grp_sum_reg_n_0_[0][1] ),
        .I2(\grp_sum_reg_n_0_[7][1] ),
        .I3(\grp_sum_reg_n_0_[6][1] ),
        .I4(\grp_sum_reg_n_0_[4][1] ),
        .I5(\grp_sum_reg_n_0_[5][1] ),
        .O(tdc_value0__1_carry_i_12__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    tdc_value0__1_carry_i_13__0
       (.I0(\grp_sum_reg_n_0_[6][0] ),
        .I1(\grp_sum_reg_n_0_[5][0] ),
        .I2(\grp_sum_reg_n_0_[4][0] ),
        .O(tdc_value0__1_carry_i_13__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEBBE8228)) 
    tdc_value0__1_carry_i_14__0
       (.I0(tdc_value0__1_carry_i_19__0_n_0),
        .I1(\grp_sum_reg_n_0_[5][2] ),
        .I2(\grp_sum_reg_n_0_[4][2] ),
        .I3(\grp_sum_reg_n_0_[6][2] ),
        .I4(tdc_value0__1_carry_i_20__0_n_0),
        .O(tdc_value0__1_carry_i_14__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    tdc_value0__1_carry_i_15__0
       (.I0(\grp_sum_reg_n_0_[1][2] ),
        .I1(\grp_sum_reg_n_0_[2][2] ),
        .I2(\grp_sum_reg_n_0_[3][2] ),
        .I3(tdc_value0__1_carry_i_21__0_n_0),
        .I4(tdc_value0__1_carry_i_22__0_n_0),
        .O(tdc_value0__1_carry_i_15__0_n_0));
  LUT6 #(
    .INIT(64'h157FEA80EA80157F)) 
    tdc_value0__1_carry_i_16__0
       (.I0(\grp_sum_reg_n_0_[0][2] ),
        .I1(\grp_sum_reg_n_0_[7][1] ),
        .I2(\grp_sum_reg_n_0_[0][1] ),
        .I3(\grp_sum_reg_n_0_[7][2] ),
        .I4(tdc_value0__1_carry_i_23__0_n_0),
        .I5(tdc_value0__1_carry_i_24__0_n_0),
        .O(tdc_value0__1_carry_i_16__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    tdc_value0__1_carry_i_17__0
       (.I0(\grp_sum_reg_n_0_[6][0] ),
        .I1(\grp_sum_reg_n_0_[4][0] ),
        .I2(\grp_sum_reg_n_0_[5][0] ),
        .O(tdc_value0__1_carry_i_17__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tdc_value0__1_carry_i_18__0
       (.I0(\grp_sum_reg_n_0_[3][1] ),
        .I1(\grp_sum_reg_n_0_[1][1] ),
        .I2(\grp_sum_reg_n_0_[2][1] ),
        .O(tdc_value0__1_carry_i_18__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tdc_value0__1_carry_i_19__0
       (.I0(\grp_sum_reg_n_0_[3][2] ),
        .I1(\grp_sum_reg_n_0_[1][2] ),
        .I2(\grp_sum_reg_n_0_[2][2] ),
        .O(tdc_value0__1_carry_i_19__0_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    tdc_value0__1_carry_i_1__0
       (.I0(tdc_value0__1_carry_i_9__0_n_0),
        .I1(tdc_value0__1_carry_i_10__0_n_0),
        .I2(tdc_value0__1_carry_i_11__0_n_0),
        .O(tdc_value0__1_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    tdc_value0__1_carry_i_20__0
       (.I0(\grp_sum_reg_n_0_[7][1] ),
        .I1(\grp_sum_reg_n_0_[0][1] ),
        .I2(\grp_sum_reg_n_0_[7][2] ),
        .I3(\grp_sum_reg_n_0_[0][2] ),
        .O(tdc_value0__1_carry_i_20__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tdc_value0__1_carry_i_21__0
       (.I0(\grp_sum_reg_n_0_[3][3] ),
        .I1(\grp_sum_reg_n_0_[1][3] ),
        .I2(\grp_sum_reg_n_0_[2][3] ),
        .O(tdc_value0__1_carry_i_21__0_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    tdc_value0__1_carry_i_22__0
       (.I0(\grp_sum_reg_n_0_[6][2] ),
        .I1(\grp_sum_reg_n_0_[5][2] ),
        .I2(\grp_sum_reg_n_0_[4][2] ),
        .O(tdc_value0__1_carry_i_22__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    tdc_value0__1_carry_i_23__0
       (.I0(\grp_sum_reg_n_0_[5][3] ),
        .I1(\grp_sum_reg_n_0_[4][3] ),
        .I2(\grp_sum_reg_n_0_[6][3] ),
        .I3(\grp_sum_reg_n_0_[7][3] ),
        .I4(\grp_sum_reg_n_0_[0][3] ),
        .O(tdc_value0__1_carry_i_23__0_n_0));
  LUT6 #(
    .INIT(64'h171717FF17FFFFFF)) 
    tdc_value0__1_carry_i_24__0
       (.I0(\grp_sum_reg_n_0_[1][1] ),
        .I1(\grp_sum_reg_n_0_[2][1] ),
        .I2(\grp_sum_reg_n_0_[3][1] ),
        .I3(\grp_sum_reg_n_0_[4][1] ),
        .I4(\grp_sum_reg_n_0_[5][1] ),
        .I5(\grp_sum_reg_n_0_[6][1] ),
        .O(tdc_value0__1_carry_i_24__0_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    tdc_value0__1_carry_i_2__0
       (.I0(tdc_value0__1_carry_i_12__0_n_0),
        .I1(tdc_value0__1_carry_i_13__0_n_0),
        .I2(\grp_sum_reg_n_0_[3][0] ),
        .I3(\grp_sum_reg_n_0_[2][0] ),
        .I4(\grp_sum_reg_n_0_[1][0] ),
        .O(tdc_value0__1_carry_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h99969666)) 
    tdc_value0__1_carry_i_3__0
       (.I0(tdc_value0__1_carry_i_12__0_n_0),
        .I1(tdc_value0__1_carry_i_13__0_n_0),
        .I2(\grp_sum_reg_n_0_[3][0] ),
        .I3(\grp_sum_reg_n_0_[2][0] ),
        .I4(\grp_sum_reg_n_0_[1][0] ),
        .O(tdc_value0__1_carry_i_3__0_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    tdc_value0__1_carry_i_4__0
       (.I0(\grp_sum_reg_n_0_[5][0] ),
        .I1(\grp_sum_reg_n_0_[4][0] ),
        .I2(\grp_sum_reg_n_0_[6][0] ),
        .I3(\grp_sum_reg_n_0_[7][0] ),
        .I4(\grp_sum_reg_n_0_[0][0] ),
        .O(tdc_value0__1_carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    tdc_value0__1_carry_i_5__0
       (.I0(tdc_value0__1_carry_i_11__0_n_0),
        .I1(tdc_value0__1_carry_i_10__0_n_0),
        .I2(tdc_value0__1_carry_i_9__0_n_0),
        .I3(tdc_value0__1_carry_i_14__0_n_0),
        .I4(tdc_value0__1_carry_i_15__0_n_0),
        .I5(tdc_value0__1_carry_i_16__0_n_0),
        .O(tdc_value0__1_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tdc_value0__1_carry_i_6__0
       (.I0(tdc_value0__1_carry_i_2__0_n_0),
        .I1(tdc_value0__1_carry_i_10__0_n_0),
        .I2(tdc_value0__1_carry_i_11__0_n_0),
        .I3(tdc_value0__1_carry_i_9__0_n_0),
        .O(tdc_value0__1_carry_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h566A6A566A56566A)) 
    tdc_value0__1_carry_i_7__0
       (.I0(tdc_value0__1_carry_i_3__0_n_0),
        .I1(\grp_sum_reg_n_0_[0][0] ),
        .I2(\grp_sum_reg_n_0_[7][0] ),
        .I3(\grp_sum_reg_n_0_[6][0] ),
        .I4(\grp_sum_reg_n_0_[4][0] ),
        .I5(\grp_sum_reg_n_0_[5][0] ),
        .O(tdc_value0__1_carry_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    tdc_value0__1_carry_i_8__0
       (.I0(\grp_sum_reg_n_0_[0][0] ),
        .I1(\grp_sum_reg_n_0_[7][0] ),
        .I2(tdc_value0__1_carry_i_17__0_n_0),
        .I3(\grp_sum_reg_n_0_[2][0] ),
        .I4(\grp_sum_reg_n_0_[1][0] ),
        .I5(\grp_sum_reg_n_0_[3][0] ),
        .O(tdc_value0__1_carry_i_8__0_n_0));
  LUT6 #(
    .INIT(64'h8228EBBEEBBE8228)) 
    tdc_value0__1_carry_i_9__0
       (.I0(tdc_value0__1_carry_i_18__0_n_0),
        .I1(\grp_sum_reg_n_0_[5][1] ),
        .I2(\grp_sum_reg_n_0_[4][1] ),
        .I3(\grp_sum_reg_n_0_[6][1] ),
        .I4(\grp_sum_reg_n_0_[7][1] ),
        .I5(\grp_sum_reg_n_0_[0][1] ),
        .O(tdc_value0__1_carry_i_9__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[0]_i_1 
       (.I0(tdc_value0__1_carry_n_7),
        .I1(tdc_value0__1_carry__0_n_1),
        .O(\tdc_value[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[1]_i_1 
       (.I0(tdc_value0__1_carry_n_6),
        .I1(tdc_value0__1_carry__0_n_1),
        .O(\tdc_value[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[2]_i_1 
       (.I0(tdc_value0__1_carry_n_5),
        .I1(tdc_value0__1_carry__0_n_1),
        .O(\tdc_value[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[3]_i_1 
       (.I0(tdc_value0__1_carry_n_4),
        .I1(tdc_value0__1_carry__0_n_1),
        .O(\tdc_value[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[4]_i_1 
       (.I0(tdc_value0__1_carry__0_n_7),
        .I1(tdc_value0__1_carry__0_n_1),
        .O(\tdc_value[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[5]_i_1 
       (.I0(tdc_value0__1_carry__0_n_6),
        .I1(tdc_value0__1_carry__0_n_1),
        .O(\tdc_value[5]_i_1_n_0 ));
  FDRE \tdc_value_reg[0] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\tdc_value[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \tdc_value_reg[1] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\tdc_value[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \tdc_value_reg[2] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\tdc_value[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \tdc_value_reg[3] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\tdc_value[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \tdc_value_reg[4] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\tdc_value[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \tdc_value_reg[5] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\tdc_value[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "ts_engine" *) 
module ps_Counter_Core_0_1_ts_engine
   (\sync_reg[1] ,
    ts_en_d,
    m_axis_tlast,
    out_valid_reg_0,
    CO,
    fifo_level,
    dst_cnt,
    \axi_araddr_reg[3] ,
    m_axis_tdata,
    \gray_s2_reg[31] ,
    clk_fx,
    SR,
    CLK,
    out,
    \gray_s1_reg[0] ,
    pop_is_last,
    s_axi_aclk,
    \pop_cnt_reg[15]_0 ,
    \axi_rdata_reg[4] ,
    pkt_bounded__14,
    m_axis_tready,
    \skip_cnt_reg[31]_0 ,
    pop_is_last1,
    pop_limit_hit0_carry__0_0,
    \axi_rdata_reg[4]_0 ,
    D,
    E);
  output [0:0]\sync_reg[1] ;
  output ts_en_d;
  output m_axis_tlast;
  output out_valid_reg_0;
  output [0:0]CO;
  output [12:0]fifo_level;
  output [30:0]dst_cnt;
  output \axi_araddr_reg[3] ;
  output [63:0]m_axis_tdata;
  output [31:0]\gray_s2_reg[31] ;
  input clk_fx;
  input [0:0]SR;
  input CLK;
  input [0:0]out;
  input [0:0]\gray_s1_reg[0] ;
  input pop_is_last;
  input s_axi_aclk;
  input \pop_cnt_reg[15]_0 ;
  input [1:0]\axi_rdata_reg[4] ;
  input pkt_bounded__14;
  input m_axis_tready;
  input [0:0]\skip_cnt_reg[31]_0 ;
  input [14:0]pop_is_last1;
  input [15:0]pop_limit_hit0_carry__0_0;
  input [1:0]\axi_rdata_reg[4]_0 ;
  input [31:0]D;
  input [0:0]E;

  wire CLK;
  wire [0:0]CO;
  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]SR;
  wire \axi_araddr_reg[3] ;
  wire [1:0]\axi_rdata_reg[4] ;
  wire [1:0]\axi_rdata_reg[4]_0 ;
  wire clk_fx;
  wire [31:1]data1;
  wire do_capture0__25;
  wire [30:0]dst_cnt;
  wire edge_d1;
  wire edge_d2;
  wire edge_raw;
  wire fifo_full0;
  wire fifo_full0_carry_n_1;
  wire fifo_full0_carry_n_2;
  wire fifo_full0_carry_n_3;
  wire [12:0]fifo_level;
  wire fifo_level_carry__0_n_0;
  wire fifo_level_carry__0_n_1;
  wire fifo_level_carry__0_n_2;
  wire fifo_level_carry__0_n_3;
  wire fifo_level_carry__1_n_0;
  wire fifo_level_carry__1_n_1;
  wire fifo_level_carry__1_n_2;
  wire fifo_level_carry__1_n_3;
  wire fifo_level_carry_n_0;
  wire fifo_level_carry_n_1;
  wire fifo_level_carry_n_2;
  wire fifo_level_carry_n_3;
  wire fifo_mem_reg_7_i_10_n_0;
  wire fifo_mem_reg_7_i_1_n_0;
  wire fifo_mem_reg_7_i_2_n_0;
  wire fifo_mem_reg_7_i_6_n_0;
  wire fifo_mem_reg_7_i_7_n_0;
  wire fifo_mem_reg_7_i_8_n_0;
  wire fifo_mem_reg_7_i_9_n_0;
  wire \free_run_cnt[0]_i_2_n_0 ;
  wire [31:0]free_run_cnt_d1;
  wire [31:0]free_run_cnt_d2;
  wire [31:0]free_run_cnt_reg;
  wire \free_run_cnt_reg[0]_i_1_n_0 ;
  wire \free_run_cnt_reg[0]_i_1_n_1 ;
  wire \free_run_cnt_reg[0]_i_1_n_2 ;
  wire \free_run_cnt_reg[0]_i_1_n_3 ;
  wire \free_run_cnt_reg[0]_i_1_n_4 ;
  wire \free_run_cnt_reg[0]_i_1_n_5 ;
  wire \free_run_cnt_reg[0]_i_1_n_6 ;
  wire \free_run_cnt_reg[0]_i_1_n_7 ;
  wire \free_run_cnt_reg[12]_i_1_n_0 ;
  wire \free_run_cnt_reg[12]_i_1_n_1 ;
  wire \free_run_cnt_reg[12]_i_1_n_2 ;
  wire \free_run_cnt_reg[12]_i_1_n_3 ;
  wire \free_run_cnt_reg[12]_i_1_n_4 ;
  wire \free_run_cnt_reg[12]_i_1_n_5 ;
  wire \free_run_cnt_reg[12]_i_1_n_6 ;
  wire \free_run_cnt_reg[12]_i_1_n_7 ;
  wire \free_run_cnt_reg[16]_i_1_n_0 ;
  wire \free_run_cnt_reg[16]_i_1_n_1 ;
  wire \free_run_cnt_reg[16]_i_1_n_2 ;
  wire \free_run_cnt_reg[16]_i_1_n_3 ;
  wire \free_run_cnt_reg[16]_i_1_n_4 ;
  wire \free_run_cnt_reg[16]_i_1_n_5 ;
  wire \free_run_cnt_reg[16]_i_1_n_6 ;
  wire \free_run_cnt_reg[16]_i_1_n_7 ;
  wire \free_run_cnt_reg[20]_i_1_n_0 ;
  wire \free_run_cnt_reg[20]_i_1_n_1 ;
  wire \free_run_cnt_reg[20]_i_1_n_2 ;
  wire \free_run_cnt_reg[20]_i_1_n_3 ;
  wire \free_run_cnt_reg[20]_i_1_n_4 ;
  wire \free_run_cnt_reg[20]_i_1_n_5 ;
  wire \free_run_cnt_reg[20]_i_1_n_6 ;
  wire \free_run_cnt_reg[20]_i_1_n_7 ;
  wire \free_run_cnt_reg[24]_i_1_n_0 ;
  wire \free_run_cnt_reg[24]_i_1_n_1 ;
  wire \free_run_cnt_reg[24]_i_1_n_2 ;
  wire \free_run_cnt_reg[24]_i_1_n_3 ;
  wire \free_run_cnt_reg[24]_i_1_n_4 ;
  wire \free_run_cnt_reg[24]_i_1_n_5 ;
  wire \free_run_cnt_reg[24]_i_1_n_6 ;
  wire \free_run_cnt_reg[24]_i_1_n_7 ;
  wire \free_run_cnt_reg[28]_i_1_n_1 ;
  wire \free_run_cnt_reg[28]_i_1_n_2 ;
  wire \free_run_cnt_reg[28]_i_1_n_3 ;
  wire \free_run_cnt_reg[28]_i_1_n_4 ;
  wire \free_run_cnt_reg[28]_i_1_n_5 ;
  wire \free_run_cnt_reg[28]_i_1_n_6 ;
  wire \free_run_cnt_reg[28]_i_1_n_7 ;
  wire \free_run_cnt_reg[4]_i_1_n_0 ;
  wire \free_run_cnt_reg[4]_i_1_n_1 ;
  wire \free_run_cnt_reg[4]_i_1_n_2 ;
  wire \free_run_cnt_reg[4]_i_1_n_3 ;
  wire \free_run_cnt_reg[4]_i_1_n_4 ;
  wire \free_run_cnt_reg[4]_i_1_n_5 ;
  wire \free_run_cnt_reg[4]_i_1_n_6 ;
  wire \free_run_cnt_reg[4]_i_1_n_7 ;
  wire \free_run_cnt_reg[8]_i_1_n_0 ;
  wire \free_run_cnt_reg[8]_i_1_n_1 ;
  wire \free_run_cnt_reg[8]_i_1_n_2 ;
  wire \free_run_cnt_reg[8]_i_1_n_3 ;
  wire \free_run_cnt_reg[8]_i_1_n_4 ;
  wire \free_run_cnt_reg[8]_i_1_n_5 ;
  wire \free_run_cnt_reg[8]_i_1_n_6 ;
  wire \free_run_cnt_reg[8]_i_1_n_7 ;
  (* async_reg = "true" *) wire [2:0]fx_sync;
  wire [0:0]\gray_s1_reg[0] ;
  wire [31:0]\gray_s2_reg[31] ;
  wire int_empty;
  wire int_empty_carry_n_0;
  wire int_empty_carry_n_1;
  wire int_empty_carry_n_2;
  wire int_empty_carry_n_3;
  wire \lost_count_fs[0]_i_2_n_0 ;
  wire [31:0]lost_count_fs_reg;
  wire \lost_count_fs_reg[0]_i_1_n_0 ;
  wire \lost_count_fs_reg[0]_i_1_n_1 ;
  wire \lost_count_fs_reg[0]_i_1_n_2 ;
  wire \lost_count_fs_reg[0]_i_1_n_3 ;
  wire \lost_count_fs_reg[0]_i_1_n_4 ;
  wire \lost_count_fs_reg[0]_i_1_n_5 ;
  wire \lost_count_fs_reg[0]_i_1_n_6 ;
  wire \lost_count_fs_reg[0]_i_1_n_7 ;
  wire \lost_count_fs_reg[12]_i_1_n_0 ;
  wire \lost_count_fs_reg[12]_i_1_n_1 ;
  wire \lost_count_fs_reg[12]_i_1_n_2 ;
  wire \lost_count_fs_reg[12]_i_1_n_3 ;
  wire \lost_count_fs_reg[12]_i_1_n_4 ;
  wire \lost_count_fs_reg[12]_i_1_n_5 ;
  wire \lost_count_fs_reg[12]_i_1_n_6 ;
  wire \lost_count_fs_reg[12]_i_1_n_7 ;
  wire \lost_count_fs_reg[16]_i_1_n_0 ;
  wire \lost_count_fs_reg[16]_i_1_n_1 ;
  wire \lost_count_fs_reg[16]_i_1_n_2 ;
  wire \lost_count_fs_reg[16]_i_1_n_3 ;
  wire \lost_count_fs_reg[16]_i_1_n_4 ;
  wire \lost_count_fs_reg[16]_i_1_n_5 ;
  wire \lost_count_fs_reg[16]_i_1_n_6 ;
  wire \lost_count_fs_reg[16]_i_1_n_7 ;
  wire \lost_count_fs_reg[20]_i_1_n_0 ;
  wire \lost_count_fs_reg[20]_i_1_n_1 ;
  wire \lost_count_fs_reg[20]_i_1_n_2 ;
  wire \lost_count_fs_reg[20]_i_1_n_3 ;
  wire \lost_count_fs_reg[20]_i_1_n_4 ;
  wire \lost_count_fs_reg[20]_i_1_n_5 ;
  wire \lost_count_fs_reg[20]_i_1_n_6 ;
  wire \lost_count_fs_reg[20]_i_1_n_7 ;
  wire \lost_count_fs_reg[24]_i_1_n_0 ;
  wire \lost_count_fs_reg[24]_i_1_n_1 ;
  wire \lost_count_fs_reg[24]_i_1_n_2 ;
  wire \lost_count_fs_reg[24]_i_1_n_3 ;
  wire \lost_count_fs_reg[24]_i_1_n_4 ;
  wire \lost_count_fs_reg[24]_i_1_n_5 ;
  wire \lost_count_fs_reg[24]_i_1_n_6 ;
  wire \lost_count_fs_reg[24]_i_1_n_7 ;
  wire \lost_count_fs_reg[28]_i_1_n_1 ;
  wire \lost_count_fs_reg[28]_i_1_n_2 ;
  wire \lost_count_fs_reg[28]_i_1_n_3 ;
  wire \lost_count_fs_reg[28]_i_1_n_4 ;
  wire \lost_count_fs_reg[28]_i_1_n_5 ;
  wire \lost_count_fs_reg[28]_i_1_n_6 ;
  wire \lost_count_fs_reg[28]_i_1_n_7 ;
  wire \lost_count_fs_reg[4]_i_1_n_0 ;
  wire \lost_count_fs_reg[4]_i_1_n_1 ;
  wire \lost_count_fs_reg[4]_i_1_n_2 ;
  wire \lost_count_fs_reg[4]_i_1_n_3 ;
  wire \lost_count_fs_reg[4]_i_1_n_4 ;
  wire \lost_count_fs_reg[4]_i_1_n_5 ;
  wire \lost_count_fs_reg[4]_i_1_n_6 ;
  wire \lost_count_fs_reg[4]_i_1_n_7 ;
  wire \lost_count_fs_reg[8]_i_1_n_0 ;
  wire \lost_count_fs_reg[8]_i_1_n_1 ;
  wire \lost_count_fs_reg[8]_i_1_n_2 ;
  wire \lost_count_fs_reg[8]_i_1_n_3 ;
  wire \lost_count_fs_reg[8]_i_1_n_4 ;
  wire \lost_count_fs_reg[8]_i_1_n_5 ;
  wire \lost_count_fs_reg[8]_i_1_n_6 ;
  wire \lost_count_fs_reg[8]_i_1_n_7 ;
  wire [63:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]out;
  wire out_valid_i_1_n_0;
  wire out_valid_reg_0;
  wire ovf_mark;
  wire ovf_sticky;
  wire p_1_in;
  wire p_5_in;
  wire pkt_bounded__14;
  wire \pop_cnt[0]_i_3_n_0 ;
  wire [15:0]pop_cnt_reg;
  wire \pop_cnt_reg[0]_i_2_n_0 ;
  wire \pop_cnt_reg[0]_i_2_n_1 ;
  wire \pop_cnt_reg[0]_i_2_n_2 ;
  wire \pop_cnt_reg[0]_i_2_n_3 ;
  wire \pop_cnt_reg[0]_i_2_n_4 ;
  wire \pop_cnt_reg[0]_i_2_n_5 ;
  wire \pop_cnt_reg[0]_i_2_n_6 ;
  wire \pop_cnt_reg[0]_i_2_n_7 ;
  wire \pop_cnt_reg[12]_i_1_n_1 ;
  wire \pop_cnt_reg[12]_i_1_n_2 ;
  wire \pop_cnt_reg[12]_i_1_n_3 ;
  wire \pop_cnt_reg[12]_i_1_n_4 ;
  wire \pop_cnt_reg[12]_i_1_n_5 ;
  wire \pop_cnt_reg[12]_i_1_n_6 ;
  wire \pop_cnt_reg[12]_i_1_n_7 ;
  wire \pop_cnt_reg[15]_0 ;
  wire \pop_cnt_reg[4]_i_1_n_0 ;
  wire \pop_cnt_reg[4]_i_1_n_1 ;
  wire \pop_cnt_reg[4]_i_1_n_2 ;
  wire \pop_cnt_reg[4]_i_1_n_3 ;
  wire \pop_cnt_reg[4]_i_1_n_4 ;
  wire \pop_cnt_reg[4]_i_1_n_5 ;
  wire \pop_cnt_reg[4]_i_1_n_6 ;
  wire \pop_cnt_reg[4]_i_1_n_7 ;
  wire \pop_cnt_reg[8]_i_1_n_0 ;
  wire \pop_cnt_reg[8]_i_1_n_1 ;
  wire \pop_cnt_reg[8]_i_1_n_2 ;
  wire \pop_cnt_reg[8]_i_1_n_3 ;
  wire \pop_cnt_reg[8]_i_1_n_4 ;
  wire \pop_cnt_reg[8]_i_1_n_5 ;
  wire \pop_cnt_reg[8]_i_1_n_6 ;
  wire \pop_cnt_reg[8]_i_1_n_7 ;
  wire pop_is_last;
  wire pop_is_last0_carry__0_i_1_n_0;
  wire pop_is_last0_carry__0_i_2_n_0;
  wire pop_is_last0_carry__0_n_3;
  wire pop_is_last0_carry_i_1_n_0;
  wire pop_is_last0_carry_i_2_n_0;
  wire pop_is_last0_carry_i_3_n_0;
  wire pop_is_last0_carry_i_4_n_0;
  wire pop_is_last0_carry_n_0;
  wire pop_is_last0_carry_n_1;
  wire pop_is_last0_carry_n_2;
  wire pop_is_last0_carry_n_3;
  wire [14:0]pop_is_last1;
  wire pop_limit_hit0;
  wire [15:0]pop_limit_hit0_carry__0_0;
  wire pop_limit_hit0_carry__0_i_1_n_0;
  wire pop_limit_hit0_carry__0_i_2_n_0;
  wire pop_limit_hit0_carry__0_i_3_n_0;
  wire pop_limit_hit0_carry__0_i_4_n_0;
  wire pop_limit_hit0_carry__0_i_5_n_0;
  wire pop_limit_hit0_carry__0_i_6_n_0;
  wire pop_limit_hit0_carry__0_i_7_n_0;
  wire pop_limit_hit0_carry__0_i_8_n_0;
  wire pop_limit_hit0_carry__0_n_1;
  wire pop_limit_hit0_carry__0_n_2;
  wire pop_limit_hit0_carry__0_n_3;
  wire pop_limit_hit0_carry_i_1_n_0;
  wire pop_limit_hit0_carry_i_2_n_0;
  wire pop_limit_hit0_carry_i_3_n_0;
  wire pop_limit_hit0_carry_i_4_n_0;
  wire pop_limit_hit0_carry_i_5_n_0;
  wire pop_limit_hit0_carry_i_6_n_0;
  wire pop_limit_hit0_carry_i_7_n_0;
  wire pop_limit_hit0_carry_i_8_n_0;
  wire pop_limit_hit0_carry_n_0;
  wire pop_limit_hit0_carry_n_1;
  wire pop_limit_hit0_carry_n_2;
  wire pop_limit_hit0_carry_n_3;
  wire \rd_ptr_bin[0]_i_2_n_0 ;
  wire [12:0]rd_ptr_bin_reg;
  wire \rd_ptr_bin_reg[0]_i_1_n_0 ;
  wire \rd_ptr_bin_reg[0]_i_1_n_1 ;
  wire \rd_ptr_bin_reg[0]_i_1_n_2 ;
  wire \rd_ptr_bin_reg[0]_i_1_n_3 ;
  wire \rd_ptr_bin_reg[0]_i_1_n_4 ;
  wire \rd_ptr_bin_reg[0]_i_1_n_5 ;
  wire \rd_ptr_bin_reg[0]_i_1_n_6 ;
  wire \rd_ptr_bin_reg[0]_i_1_n_7 ;
  wire \rd_ptr_bin_reg[12]_i_1_n_7 ;
  wire \rd_ptr_bin_reg[4]_i_1_n_0 ;
  wire \rd_ptr_bin_reg[4]_i_1_n_1 ;
  wire \rd_ptr_bin_reg[4]_i_1_n_2 ;
  wire \rd_ptr_bin_reg[4]_i_1_n_3 ;
  wire \rd_ptr_bin_reg[4]_i_1_n_4 ;
  wire \rd_ptr_bin_reg[4]_i_1_n_5 ;
  wire \rd_ptr_bin_reg[4]_i_1_n_6 ;
  wire \rd_ptr_bin_reg[4]_i_1_n_7 ;
  wire \rd_ptr_bin_reg[8]_i_1_n_0 ;
  wire \rd_ptr_bin_reg[8]_i_1_n_1 ;
  wire \rd_ptr_bin_reg[8]_i_1_n_2 ;
  wire \rd_ptr_bin_reg[8]_i_1_n_3 ;
  wire \rd_ptr_bin_reg[8]_i_1_n_4 ;
  wire \rd_ptr_bin_reg[8]_i_1_n_5 ;
  wire \rd_ptr_bin_reg[8]_i_1_n_6 ;
  wire \rd_ptr_bin_reg[8]_i_1_n_7 ;
  wire \rd_ptr_bin_reg_rep[11]_i_1_n_2 ;
  wire \rd_ptr_bin_reg_rep[11]_i_1_n_3 ;
  wire \rd_ptr_bin_reg_rep[11]_i_1_n_5 ;
  wire \rd_ptr_bin_reg_rep[11]_i_1_n_6 ;
  wire \rd_ptr_bin_reg_rep[11]_i_1_n_7 ;
  wire \rd_ptr_bin_reg_rep[4]_i_1_n_0 ;
  wire \rd_ptr_bin_reg_rep[4]_i_1_n_1 ;
  wire \rd_ptr_bin_reg_rep[4]_i_1_n_2 ;
  wire \rd_ptr_bin_reg_rep[4]_i_1_n_3 ;
  wire \rd_ptr_bin_reg_rep[4]_i_1_n_4 ;
  wire \rd_ptr_bin_reg_rep[4]_i_1_n_5 ;
  wire \rd_ptr_bin_reg_rep[4]_i_1_n_6 ;
  wire \rd_ptr_bin_reg_rep[4]_i_1_n_7 ;
  wire \rd_ptr_bin_reg_rep[8]_i_1_n_0 ;
  wire \rd_ptr_bin_reg_rep[8]_i_1_n_1 ;
  wire \rd_ptr_bin_reg_rep[8]_i_1_n_2 ;
  wire \rd_ptr_bin_reg_rep[8]_i_1_n_3 ;
  wire \rd_ptr_bin_reg_rep[8]_i_1_n_4 ;
  wire \rd_ptr_bin_reg_rep[8]_i_1_n_5 ;
  wire \rd_ptr_bin_reg_rep[8]_i_1_n_6 ;
  wire \rd_ptr_bin_reg_rep[8]_i_1_n_7 ;
  wire [11:0]rd_ptr_bin_reg_rep__0;
  wire \rd_ptr_bin_rep[0]_i_1_n_0 ;
  wire s_axi_aclk;
  wire \seq_cnt[0]_i_3_n_0 ;
  wire [23:0]seq_cnt_reg;
  wire \seq_cnt_reg[0]_i_2_n_0 ;
  wire \seq_cnt_reg[0]_i_2_n_1 ;
  wire \seq_cnt_reg[0]_i_2_n_2 ;
  wire \seq_cnt_reg[0]_i_2_n_3 ;
  wire \seq_cnt_reg[0]_i_2_n_4 ;
  wire \seq_cnt_reg[0]_i_2_n_5 ;
  wire \seq_cnt_reg[0]_i_2_n_6 ;
  wire \seq_cnt_reg[0]_i_2_n_7 ;
  wire \seq_cnt_reg[12]_i_1_n_0 ;
  wire \seq_cnt_reg[12]_i_1_n_1 ;
  wire \seq_cnt_reg[12]_i_1_n_2 ;
  wire \seq_cnt_reg[12]_i_1_n_3 ;
  wire \seq_cnt_reg[12]_i_1_n_4 ;
  wire \seq_cnt_reg[12]_i_1_n_5 ;
  wire \seq_cnt_reg[12]_i_1_n_6 ;
  wire \seq_cnt_reg[12]_i_1_n_7 ;
  wire \seq_cnt_reg[16]_i_1_n_0 ;
  wire \seq_cnt_reg[16]_i_1_n_1 ;
  wire \seq_cnt_reg[16]_i_1_n_2 ;
  wire \seq_cnt_reg[16]_i_1_n_3 ;
  wire \seq_cnt_reg[16]_i_1_n_4 ;
  wire \seq_cnt_reg[16]_i_1_n_5 ;
  wire \seq_cnt_reg[16]_i_1_n_6 ;
  wire \seq_cnt_reg[16]_i_1_n_7 ;
  wire \seq_cnt_reg[20]_i_1_n_1 ;
  wire \seq_cnt_reg[20]_i_1_n_2 ;
  wire \seq_cnt_reg[20]_i_1_n_3 ;
  wire \seq_cnt_reg[20]_i_1_n_4 ;
  wire \seq_cnt_reg[20]_i_1_n_5 ;
  wire \seq_cnt_reg[20]_i_1_n_6 ;
  wire \seq_cnt_reg[20]_i_1_n_7 ;
  wire \seq_cnt_reg[4]_i_1_n_0 ;
  wire \seq_cnt_reg[4]_i_1_n_1 ;
  wire \seq_cnt_reg[4]_i_1_n_2 ;
  wire \seq_cnt_reg[4]_i_1_n_3 ;
  wire \seq_cnt_reg[4]_i_1_n_4 ;
  wire \seq_cnt_reg[4]_i_1_n_5 ;
  wire \seq_cnt_reg[4]_i_1_n_6 ;
  wire \seq_cnt_reg[4]_i_1_n_7 ;
  wire \seq_cnt_reg[8]_i_1_n_0 ;
  wire \seq_cnt_reg[8]_i_1_n_1 ;
  wire \seq_cnt_reg[8]_i_1_n_2 ;
  wire \seq_cnt_reg[8]_i_1_n_3 ;
  wire \seq_cnt_reg[8]_i_1_n_4 ;
  wire \seq_cnt_reg[8]_i_1_n_5 ;
  wire \seq_cnt_reg[8]_i_1_n_6 ;
  wire \seq_cnt_reg[8]_i_1_n_7 ;
  wire [31:0]skip_cnt;
  wire skip_cnt1_carry__0_i_1_n_0;
  wire skip_cnt1_carry__0_i_2_n_0;
  wire skip_cnt1_carry__0_i_3_n_0;
  wire skip_cnt1_carry__0_i_4_n_0;
  wire skip_cnt1_carry__0_n_0;
  wire skip_cnt1_carry__0_n_1;
  wire skip_cnt1_carry__0_n_2;
  wire skip_cnt1_carry__0_n_3;
  wire skip_cnt1_carry__1_i_1_n_0;
  wire skip_cnt1_carry__1_i_2_n_0;
  wire skip_cnt1_carry__1_i_3_n_0;
  wire skip_cnt1_carry__1_i_4_n_0;
  wire skip_cnt1_carry__1_n_0;
  wire skip_cnt1_carry__1_n_1;
  wire skip_cnt1_carry__1_n_2;
  wire skip_cnt1_carry__1_n_3;
  wire skip_cnt1_carry__2_i_1_n_0;
  wire skip_cnt1_carry__2_i_2_n_0;
  wire skip_cnt1_carry__2_i_3_n_0;
  wire skip_cnt1_carry__2_i_4_n_0;
  wire skip_cnt1_carry__2_n_0;
  wire skip_cnt1_carry__2_n_1;
  wire skip_cnt1_carry__2_n_2;
  wire skip_cnt1_carry__2_n_3;
  wire skip_cnt1_carry__3_i_1_n_0;
  wire skip_cnt1_carry__3_i_2_n_0;
  wire skip_cnt1_carry__3_i_3_n_0;
  wire skip_cnt1_carry__3_i_4_n_0;
  wire skip_cnt1_carry__3_n_0;
  wire skip_cnt1_carry__3_n_1;
  wire skip_cnt1_carry__3_n_2;
  wire skip_cnt1_carry__3_n_3;
  wire skip_cnt1_carry__4_i_1_n_0;
  wire skip_cnt1_carry__4_i_2_n_0;
  wire skip_cnt1_carry__4_i_3_n_0;
  wire skip_cnt1_carry__4_i_4_n_0;
  wire skip_cnt1_carry__4_n_0;
  wire skip_cnt1_carry__4_n_1;
  wire skip_cnt1_carry__4_n_2;
  wire skip_cnt1_carry__4_n_3;
  wire skip_cnt1_carry__5_i_1_n_0;
  wire skip_cnt1_carry__5_i_2_n_0;
  wire skip_cnt1_carry__5_i_3_n_0;
  wire skip_cnt1_carry__5_i_4_n_0;
  wire skip_cnt1_carry__5_n_0;
  wire skip_cnt1_carry__5_n_1;
  wire skip_cnt1_carry__5_n_2;
  wire skip_cnt1_carry__5_n_3;
  wire skip_cnt1_carry__6_i_1_n_0;
  wire skip_cnt1_carry__6_i_2_n_0;
  wire skip_cnt1_carry__6_i_3_n_0;
  wire skip_cnt1_carry__6_n_2;
  wire skip_cnt1_carry__6_n_3;
  wire skip_cnt1_carry_i_1_n_0;
  wire skip_cnt1_carry_i_2_n_0;
  wire skip_cnt1_carry_i_3_n_0;
  wire skip_cnt1_carry_i_4_n_0;
  wire skip_cnt1_carry_n_0;
  wire skip_cnt1_carry_n_1;
  wire skip_cnt1_carry_n_2;
  wire skip_cnt1_carry_n_3;
  wire \skip_cnt[0]_i_1_n_0 ;
  wire \skip_cnt[10]_i_1_n_0 ;
  wire \skip_cnt[11]_i_1_n_0 ;
  wire \skip_cnt[12]_i_1_n_0 ;
  wire \skip_cnt[13]_i_1_n_0 ;
  wire \skip_cnt[14]_i_1_n_0 ;
  wire \skip_cnt[15]_i_1_n_0 ;
  wire \skip_cnt[16]_i_1_n_0 ;
  wire \skip_cnt[17]_i_1_n_0 ;
  wire \skip_cnt[18]_i_1_n_0 ;
  wire \skip_cnt[19]_i_1_n_0 ;
  wire \skip_cnt[1]_i_1_n_0 ;
  wire \skip_cnt[20]_i_1_n_0 ;
  wire \skip_cnt[21]_i_1_n_0 ;
  wire \skip_cnt[22]_i_1_n_0 ;
  wire \skip_cnt[23]_i_1_n_0 ;
  wire \skip_cnt[24]_i_1_n_0 ;
  wire \skip_cnt[25]_i_1_n_0 ;
  wire \skip_cnt[26]_i_1_n_0 ;
  wire \skip_cnt[27]_i_1_n_0 ;
  wire \skip_cnt[28]_i_1_n_0 ;
  wire \skip_cnt[29]_i_1_n_0 ;
  wire \skip_cnt[2]_i_1_n_0 ;
  wire \skip_cnt[30]_i_1_n_0 ;
  wire \skip_cnt[31]_i_1_n_0 ;
  wire \skip_cnt[31]_i_3_n_0 ;
  wire \skip_cnt[31]_i_4_n_0 ;
  wire \skip_cnt[31]_i_5_n_0 ;
  wire \skip_cnt[31]_i_6_n_0 ;
  wire \skip_cnt[31]_i_7_n_0 ;
  wire \skip_cnt[31]_i_8_n_0 ;
  wire \skip_cnt[31]_i_9_n_0 ;
  wire \skip_cnt[3]_i_1_n_0 ;
  wire \skip_cnt[4]_i_1_n_0 ;
  wire \skip_cnt[5]_i_1_n_0 ;
  wire \skip_cnt[6]_i_1_n_0 ;
  wire \skip_cnt[7]_i_1_n_0 ;
  wire \skip_cnt[8]_i_1_n_0 ;
  wire \skip_cnt[9]_i_1_n_0 ;
  wire [0:0]\skip_cnt_reg[31]_0 ;
  wire [31:0]skip_limit;
  wire [0:0]\sync_reg[1] ;
  wire tdc_valid;
  wire [5:0]tdc_value;
  wire \ts_count_fs[0]_i_2_n_0 ;
  wire [31:0]ts_count_fs_reg;
  wire \ts_count_fs_reg[0]_i_1_n_0 ;
  wire \ts_count_fs_reg[0]_i_1_n_1 ;
  wire \ts_count_fs_reg[0]_i_1_n_2 ;
  wire \ts_count_fs_reg[0]_i_1_n_3 ;
  wire \ts_count_fs_reg[0]_i_1_n_4 ;
  wire \ts_count_fs_reg[0]_i_1_n_5 ;
  wire \ts_count_fs_reg[0]_i_1_n_6 ;
  wire \ts_count_fs_reg[0]_i_1_n_7 ;
  wire \ts_count_fs_reg[12]_i_1_n_0 ;
  wire \ts_count_fs_reg[12]_i_1_n_1 ;
  wire \ts_count_fs_reg[12]_i_1_n_2 ;
  wire \ts_count_fs_reg[12]_i_1_n_3 ;
  wire \ts_count_fs_reg[12]_i_1_n_4 ;
  wire \ts_count_fs_reg[12]_i_1_n_5 ;
  wire \ts_count_fs_reg[12]_i_1_n_6 ;
  wire \ts_count_fs_reg[12]_i_1_n_7 ;
  wire \ts_count_fs_reg[16]_i_1_n_0 ;
  wire \ts_count_fs_reg[16]_i_1_n_1 ;
  wire \ts_count_fs_reg[16]_i_1_n_2 ;
  wire \ts_count_fs_reg[16]_i_1_n_3 ;
  wire \ts_count_fs_reg[16]_i_1_n_4 ;
  wire \ts_count_fs_reg[16]_i_1_n_5 ;
  wire \ts_count_fs_reg[16]_i_1_n_6 ;
  wire \ts_count_fs_reg[16]_i_1_n_7 ;
  wire \ts_count_fs_reg[20]_i_1_n_0 ;
  wire \ts_count_fs_reg[20]_i_1_n_1 ;
  wire \ts_count_fs_reg[20]_i_1_n_2 ;
  wire \ts_count_fs_reg[20]_i_1_n_3 ;
  wire \ts_count_fs_reg[20]_i_1_n_4 ;
  wire \ts_count_fs_reg[20]_i_1_n_5 ;
  wire \ts_count_fs_reg[20]_i_1_n_6 ;
  wire \ts_count_fs_reg[20]_i_1_n_7 ;
  wire \ts_count_fs_reg[24]_i_1_n_0 ;
  wire \ts_count_fs_reg[24]_i_1_n_1 ;
  wire \ts_count_fs_reg[24]_i_1_n_2 ;
  wire \ts_count_fs_reg[24]_i_1_n_3 ;
  wire \ts_count_fs_reg[24]_i_1_n_4 ;
  wire \ts_count_fs_reg[24]_i_1_n_5 ;
  wire \ts_count_fs_reg[24]_i_1_n_6 ;
  wire \ts_count_fs_reg[24]_i_1_n_7 ;
  wire \ts_count_fs_reg[28]_i_1_n_1 ;
  wire \ts_count_fs_reg[28]_i_1_n_2 ;
  wire \ts_count_fs_reg[28]_i_1_n_3 ;
  wire \ts_count_fs_reg[28]_i_1_n_4 ;
  wire \ts_count_fs_reg[28]_i_1_n_5 ;
  wire \ts_count_fs_reg[28]_i_1_n_6 ;
  wire \ts_count_fs_reg[28]_i_1_n_7 ;
  wire \ts_count_fs_reg[4]_i_1_n_0 ;
  wire \ts_count_fs_reg[4]_i_1_n_1 ;
  wire \ts_count_fs_reg[4]_i_1_n_2 ;
  wire \ts_count_fs_reg[4]_i_1_n_3 ;
  wire \ts_count_fs_reg[4]_i_1_n_4 ;
  wire \ts_count_fs_reg[4]_i_1_n_5 ;
  wire \ts_count_fs_reg[4]_i_1_n_6 ;
  wire \ts_count_fs_reg[4]_i_1_n_7 ;
  wire \ts_count_fs_reg[8]_i_1_n_0 ;
  wire \ts_count_fs_reg[8]_i_1_n_1 ;
  wire \ts_count_fs_reg[8]_i_1_n_2 ;
  wire \ts_count_fs_reg[8]_i_1_n_3 ;
  wire \ts_count_fs_reg[8]_i_1_n_4 ;
  wire \ts_count_fs_reg[8]_i_1_n_5 ;
  wire \ts_count_fs_reg[8]_i_1_n_6 ;
  wire \ts_count_fs_reg[8]_i_1_n_7 ;
  wire ts_en_d;
  wire u_rd_ptr_cdc_n_0;
  wire u_rd_ptr_cdc_n_1;
  wire u_rd_ptr_cdc_n_2;
  wire u_rd_ptr_cdc_n_3;
  wire u_rd_ptr_cdc_n_4;
  wire u_rd_ptr_cdc_n_5;
  wire u_wr_ptr_cdc_n_10;
  wire u_wr_ptr_cdc_n_11;
  wire u_wr_ptr_cdc_n_12;
  wire u_wr_ptr_cdc_n_13;
  wire u_wr_ptr_cdc_n_14;
  wire u_wr_ptr_cdc_n_15;
  wire u_wr_ptr_cdc_n_16;
  wire u_wr_ptr_cdc_n_17;
  wire u_wr_ptr_cdc_n_18;
  wire u_wr_ptr_cdc_n_19;
  wire u_wr_ptr_cdc_n_20;
  wire u_wr_ptr_cdc_n_21;
  wire u_wr_ptr_cdc_n_22;
  wire u_wr_ptr_cdc_n_23;
  wire u_wr_ptr_cdc_n_24;
  wire u_wr_ptr_cdc_n_25;
  wire u_wr_ptr_cdc_n_26;
  wire u_wr_ptr_cdc_n_27;
  wire u_wr_ptr_cdc_n_28;
  wire u_wr_ptr_cdc_n_29;
  wire u_wr_ptr_cdc_n_9;
  wire wr_drop;
  wire wr_en0;
  wire \wr_ptr_bin[0]_i_2_n_0 ;
  wire [8:0]wr_ptr_bin_at_rd;
  wire \wr_ptr_bin_reg[0]_i_1_n_0 ;
  wire \wr_ptr_bin_reg[0]_i_1_n_1 ;
  wire \wr_ptr_bin_reg[0]_i_1_n_2 ;
  wire \wr_ptr_bin_reg[0]_i_1_n_3 ;
  wire \wr_ptr_bin_reg[0]_i_1_n_4 ;
  wire \wr_ptr_bin_reg[0]_i_1_n_5 ;
  wire \wr_ptr_bin_reg[0]_i_1_n_6 ;
  wire \wr_ptr_bin_reg[0]_i_1_n_7 ;
  wire \wr_ptr_bin_reg[12]_i_1_n_7 ;
  wire \wr_ptr_bin_reg[4]_i_1_n_0 ;
  wire \wr_ptr_bin_reg[4]_i_1_n_1 ;
  wire \wr_ptr_bin_reg[4]_i_1_n_2 ;
  wire \wr_ptr_bin_reg[4]_i_1_n_3 ;
  wire \wr_ptr_bin_reg[4]_i_1_n_4 ;
  wire \wr_ptr_bin_reg[4]_i_1_n_5 ;
  wire \wr_ptr_bin_reg[4]_i_1_n_6 ;
  wire \wr_ptr_bin_reg[4]_i_1_n_7 ;
  wire \wr_ptr_bin_reg[8]_i_1_n_0 ;
  wire \wr_ptr_bin_reg[8]_i_1_n_1 ;
  wire \wr_ptr_bin_reg[8]_i_1_n_2 ;
  wire \wr_ptr_bin_reg[8]_i_1_n_3 ;
  wire \wr_ptr_bin_reg[8]_i_1_n_4 ;
  wire \wr_ptr_bin_reg[8]_i_1_n_5 ;
  wire \wr_ptr_bin_reg[8]_i_1_n_6 ;
  wire \wr_ptr_bin_reg[8]_i_1_n_7 ;
  wire \wr_ptr_bin_reg_n_0_[0] ;
  wire \wr_ptr_bin_reg_n_0_[10] ;
  wire \wr_ptr_bin_reg_n_0_[11] ;
  wire \wr_ptr_bin_reg_n_0_[1] ;
  wire \wr_ptr_bin_reg_n_0_[2] ;
  wire \wr_ptr_bin_reg_n_0_[3] ;
  wire \wr_ptr_bin_reg_n_0_[4] ;
  wire \wr_ptr_bin_reg_n_0_[5] ;
  wire \wr_ptr_bin_reg_n_0_[6] ;
  wire \wr_ptr_bin_reg_n_0_[7] ;
  wire \wr_ptr_bin_reg_n_0_[8] ;
  wire \wr_ptr_bin_reg_n_0_[9] ;
  wire [3:0]NLW_fifo_full0_carry_O_UNCONNECTED;
  wire [3:0]NLW_fifo_level_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_fifo_level_carry__2_O_UNCONNECTED;
  wire NLW_fifo_mem_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_fifo_mem_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_fifo_mem_reg_0_DBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_fifo_mem_reg_0_DOADO_UNCONNECTED;
  wire [31:8]NLW_fifo_mem_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_fifo_mem_reg_0_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_fifo_mem_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_fifo_mem_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_fifo_mem_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_fifo_mem_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_fifo_mem_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_fifo_mem_reg_1_DBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_1_SBITERR_UNCONNECTED;
  wire [31:0]NLW_fifo_mem_reg_1_DOADO_UNCONNECTED;
  wire [31:8]NLW_fifo_mem_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_fifo_mem_reg_1_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_fifo_mem_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_fifo_mem_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_fifo_mem_reg_1_RDADDRECC_UNCONNECTED;
  wire NLW_fifo_mem_reg_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_fifo_mem_reg_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_fifo_mem_reg_2_DBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_2_SBITERR_UNCONNECTED;
  wire [31:0]NLW_fifo_mem_reg_2_DOADO_UNCONNECTED;
  wire [31:8]NLW_fifo_mem_reg_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_fifo_mem_reg_2_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_fifo_mem_reg_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_fifo_mem_reg_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_fifo_mem_reg_2_RDADDRECC_UNCONNECTED;
  wire NLW_fifo_mem_reg_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_fifo_mem_reg_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_fifo_mem_reg_3_DBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_fifo_mem_reg_3_DOADO_UNCONNECTED;
  wire [31:8]NLW_fifo_mem_reg_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_fifo_mem_reg_3_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_fifo_mem_reg_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_fifo_mem_reg_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_fifo_mem_reg_3_RDADDRECC_UNCONNECTED;
  wire NLW_fifo_mem_reg_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_fifo_mem_reg_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_fifo_mem_reg_4_DBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_4_SBITERR_UNCONNECTED;
  wire [31:0]NLW_fifo_mem_reg_4_DOADO_UNCONNECTED;
  wire [31:8]NLW_fifo_mem_reg_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_fifo_mem_reg_4_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_fifo_mem_reg_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_fifo_mem_reg_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_fifo_mem_reg_4_RDADDRECC_UNCONNECTED;
  wire NLW_fifo_mem_reg_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_fifo_mem_reg_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_fifo_mem_reg_5_DBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_5_SBITERR_UNCONNECTED;
  wire [31:0]NLW_fifo_mem_reg_5_DOADO_UNCONNECTED;
  wire [31:8]NLW_fifo_mem_reg_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_fifo_mem_reg_5_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_fifo_mem_reg_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_fifo_mem_reg_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_fifo_mem_reg_5_RDADDRECC_UNCONNECTED;
  wire NLW_fifo_mem_reg_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_fifo_mem_reg_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_fifo_mem_reg_6_DBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_fifo_mem_reg_6_SBITERR_UNCONNECTED;
  wire [31:0]NLW_fifo_mem_reg_6_DOADO_UNCONNECTED;
  wire [31:8]NLW_fifo_mem_reg_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_fifo_mem_reg_6_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_fifo_mem_reg_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_fifo_mem_reg_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_fifo_mem_reg_6_RDADDRECC_UNCONNECTED;
  wire [15:0]NLW_fifo_mem_reg_7_DOADO_UNCONNECTED;
  wire [15:1]NLW_fifo_mem_reg_7_DOBDO_UNCONNECTED;
  wire [1:0]NLW_fifo_mem_reg_7_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_fifo_mem_reg_7_DOPBDOP_UNCONNECTED;
  wire [3:3]\NLW_free_run_cnt_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_int_empty_carry_O_UNCONNECTED;
  wire [3:1]NLW_int_empty_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_int_empty_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_lost_count_fs_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_pop_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_pop_is_last0_carry_O_UNCONNECTED;
  wire [3:2]NLW_pop_is_last0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_pop_is_last0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_pop_limit_hit0_carry_O_UNCONNECTED;
  wire [3:0]NLW_pop_limit_hit0_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_rd_ptr_bin_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_rd_ptr_bin_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_rd_ptr_bin_reg_rep[11]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_rd_ptr_bin_reg_rep[11]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_seq_cnt_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]NLW_skip_cnt1_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_skip_cnt1_carry__6_O_UNCONNECTED;
  wire [3:3]\NLW_ts_count_fs_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_wr_ptr_bin_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wr_ptr_bin_reg[12]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    edge_d1_i_1
       (.I0(fx_sync[1]),
        .I1(fx_sync[2]),
        .O(edge_raw));
  FDRE edge_d1_reg
       (.C(CLK),
        .CE(1'b1),
        .D(edge_raw),
        .Q(edge_d1),
        .R(SR));
  FDRE edge_d2_reg
       (.C(CLK),
        .CE(1'b1),
        .D(edge_d1),
        .Q(edge_d2),
        .R(SR));
  CARRY4 fifo_full0_carry
       (.CI(1'b0),
        .CO({fifo_full0,fifo_full0_carry_n_1,fifo_full0_carry_n_2,fifo_full0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_fifo_full0_carry_O_UNCONNECTED[3:0]),
        .S({u_rd_ptr_cdc_n_2,u_rd_ptr_cdc_n_3,u_rd_ptr_cdc_n_4,u_rd_ptr_cdc_n_5}));
  CARRY4 fifo_level_carry
       (.CI(1'b0),
        .CO({fifo_level_carry_n_0,fifo_level_carry_n_1,fifo_level_carry_n_2,fifo_level_carry_n_3}),
        .CYINIT(1'b1),
        .DI(wr_ptr_bin_at_rd[3:0]),
        .O(fifo_level[3:0]),
        .S({u_wr_ptr_cdc_n_13,u_wr_ptr_cdc_n_14,u_wr_ptr_cdc_n_15,u_wr_ptr_cdc_n_16}));
  CARRY4 fifo_level_carry__0
       (.CI(fifo_level_carry_n_0),
        .CO({fifo_level_carry__0_n_0,fifo_level_carry__0_n_1,fifo_level_carry__0_n_2,fifo_level_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(wr_ptr_bin_at_rd[7:4]),
        .O(fifo_level[7:4]),
        .S({u_wr_ptr_cdc_n_17,u_wr_ptr_cdc_n_18,u_wr_ptr_cdc_n_19,u_wr_ptr_cdc_n_20}));
  CARRY4 fifo_level_carry__1
       (.CI(fifo_level_carry__0_n_0),
        .CO({fifo_level_carry__1_n_0,fifo_level_carry__1_n_1,fifo_level_carry__1_n_2,fifo_level_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({u_wr_ptr_cdc_n_27,u_wr_ptr_cdc_n_28,u_wr_ptr_cdc_n_29,wr_ptr_bin_at_rd[8]}),
        .O(fifo_level[11:8]),
        .S({u_wr_ptr_cdc_n_9,u_wr_ptr_cdc_n_10,u_wr_ptr_cdc_n_11,u_wr_ptr_cdc_n_12}));
  CARRY4 fifo_level_carry__2
       (.CI(fifo_level_carry__1_n_0),
        .CO(NLW_fifo_level_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_fifo_level_carry__2_O_UNCONNECTED[3:1],fifo_level[12]}),
        .S({1'b0,1'b0,1'b0,u_wr_ptr_cdc_n_21}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "fifo_mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "8" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    fifo_mem_reg_0
       (.ADDRARDADDR({1'b1,\wr_ptr_bin_reg_n_0_[11] ,\wr_ptr_bin_reg_n_0_[10] ,\wr_ptr_bin_reg_n_0_[9] ,\wr_ptr_bin_reg_n_0_[8] ,\wr_ptr_bin_reg_n_0_[7] ,\wr_ptr_bin_reg_n_0_[6] ,\wr_ptr_bin_reg_n_0_[5] ,\wr_ptr_bin_reg_n_0_[4] ,\wr_ptr_bin_reg_n_0_[3] ,\wr_ptr_bin_reg_n_0_[2] ,\wr_ptr_bin_reg_n_0_[1] ,\wr_ptr_bin_reg_n_0_[0] ,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,rd_ptr_bin_reg_rep__0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fifo_mem_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fifo_mem_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_fifo_mem_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,seq_cnt_reg[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,seq_cnt_reg[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_fifo_mem_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_fifo_mem_reg_0_DOBDO_UNCONNECTED[31:8],m_axis_tdata[7:0]}),
        .DOPADOP(NLW_fifo_mem_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_fifo_mem_reg_0_DOPBDOP_UNCONNECTED[3:1],m_axis_tdata[8]}),
        .ECCPARITY(NLW_fifo_mem_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(fifo_mem_reg_7_i_1_n_0),
        .ENBWREN(fifo_mem_reg_7_i_2_n_0),
        .INJECTDBITERR(NLW_fifo_mem_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_fifo_mem_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_fifo_mem_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_fifo_mem_reg_0_SBITERR_UNCONNECTED),
        .WEA({wr_en0,wr_en0,wr_en0,wr_en0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "fifo_mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "9" *) 
  (* bram_slice_end = "17" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    fifo_mem_reg_1
       (.ADDRARDADDR({1'b1,\wr_ptr_bin_reg_n_0_[11] ,\wr_ptr_bin_reg_n_0_[10] ,\wr_ptr_bin_reg_n_0_[9] ,\wr_ptr_bin_reg_n_0_[8] ,\wr_ptr_bin_reg_n_0_[7] ,\wr_ptr_bin_reg_n_0_[6] ,\wr_ptr_bin_reg_n_0_[5] ,\wr_ptr_bin_reg_n_0_[4] ,\wr_ptr_bin_reg_n_0_[3] ,\wr_ptr_bin_reg_n_0_[2] ,\wr_ptr_bin_reg_n_0_[1] ,\wr_ptr_bin_reg_n_0_[0] ,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,rd_ptr_bin_reg_rep__0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fifo_mem_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fifo_mem_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_fifo_mem_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,seq_cnt_reg[16:9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,seq_cnt_reg[17]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_fifo_mem_reg_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_fifo_mem_reg_1_DOBDO_UNCONNECTED[31:8],m_axis_tdata[16:9]}),
        .DOPADOP(NLW_fifo_mem_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_fifo_mem_reg_1_DOPBDOP_UNCONNECTED[3:1],m_axis_tdata[17]}),
        .ECCPARITY(NLW_fifo_mem_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(fifo_mem_reg_7_i_1_n_0),
        .ENBWREN(fifo_mem_reg_7_i_2_n_0),
        .INJECTDBITERR(NLW_fifo_mem_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_fifo_mem_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_fifo_mem_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_fifo_mem_reg_1_SBITERR_UNCONNECTED),
        .WEA({wr_en0,wr_en0,wr_en0,wr_en0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "fifo_mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "18" *) 
  (* bram_slice_end = "26" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "26" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    fifo_mem_reg_2
       (.ADDRARDADDR({1'b1,\wr_ptr_bin_reg_n_0_[11] ,\wr_ptr_bin_reg_n_0_[10] ,\wr_ptr_bin_reg_n_0_[9] ,\wr_ptr_bin_reg_n_0_[8] ,\wr_ptr_bin_reg_n_0_[7] ,\wr_ptr_bin_reg_n_0_[6] ,\wr_ptr_bin_reg_n_0_[5] ,\wr_ptr_bin_reg_n_0_[4] ,\wr_ptr_bin_reg_n_0_[3] ,\wr_ptr_bin_reg_n_0_[2] ,\wr_ptr_bin_reg_n_0_[1] ,\wr_ptr_bin_reg_n_0_[0] ,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,rd_ptr_bin_reg_rep__0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fifo_mem_reg_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fifo_mem_reg_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_fifo_mem_reg_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ovf_mark,tdc_valid,seq_cnt_reg[23:18]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,tdc_value[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_fifo_mem_reg_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_fifo_mem_reg_2_DOBDO_UNCONNECTED[31:8],m_axis_tdata[25:18]}),
        .DOPADOP(NLW_fifo_mem_reg_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_fifo_mem_reg_2_DOPBDOP_UNCONNECTED[3:1],m_axis_tdata[26]}),
        .ECCPARITY(NLW_fifo_mem_reg_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(fifo_mem_reg_7_i_1_n_0),
        .ENBWREN(fifo_mem_reg_7_i_2_n_0),
        .INJECTDBITERR(NLW_fifo_mem_reg_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_fifo_mem_reg_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_fifo_mem_reg_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_fifo_mem_reg_2_SBITERR_UNCONNECTED),
        .WEA({wr_en0,wr_en0,wr_en0,wr_en0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "fifo_mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "27" *) 
  (* bram_slice_end = "35" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "35" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    fifo_mem_reg_3
       (.ADDRARDADDR({1'b1,\wr_ptr_bin_reg_n_0_[11] ,\wr_ptr_bin_reg_n_0_[10] ,\wr_ptr_bin_reg_n_0_[9] ,\wr_ptr_bin_reg_n_0_[8] ,\wr_ptr_bin_reg_n_0_[7] ,\wr_ptr_bin_reg_n_0_[6] ,\wr_ptr_bin_reg_n_0_[5] ,\wr_ptr_bin_reg_n_0_[4] ,\wr_ptr_bin_reg_n_0_[3] ,\wr_ptr_bin_reg_n_0_[2] ,\wr_ptr_bin_reg_n_0_[1] ,\wr_ptr_bin_reg_n_0_[0] ,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,rd_ptr_bin_reg_rep__0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fifo_mem_reg_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fifo_mem_reg_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_fifo_mem_reg_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,free_run_cnt_d2[2:0],tdc_value[5:1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,free_run_cnt_d2[3]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_fifo_mem_reg_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_fifo_mem_reg_3_DOBDO_UNCONNECTED[31:8],m_axis_tdata[34:27]}),
        .DOPADOP(NLW_fifo_mem_reg_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_fifo_mem_reg_3_DOPBDOP_UNCONNECTED[3:1],m_axis_tdata[35]}),
        .ECCPARITY(NLW_fifo_mem_reg_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(fifo_mem_reg_7_i_1_n_0),
        .ENBWREN(fifo_mem_reg_7_i_2_n_0),
        .INJECTDBITERR(NLW_fifo_mem_reg_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_fifo_mem_reg_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_fifo_mem_reg_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_fifo_mem_reg_3_SBITERR_UNCONNECTED),
        .WEA({wr_en0,wr_en0,wr_en0,wr_en0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "fifo_mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "36" *) 
  (* bram_slice_end = "44" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "44" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    fifo_mem_reg_4
       (.ADDRARDADDR({1'b1,\wr_ptr_bin_reg_n_0_[11] ,\wr_ptr_bin_reg_n_0_[10] ,\wr_ptr_bin_reg_n_0_[9] ,\wr_ptr_bin_reg_n_0_[8] ,\wr_ptr_bin_reg_n_0_[7] ,\wr_ptr_bin_reg_n_0_[6] ,\wr_ptr_bin_reg_n_0_[5] ,\wr_ptr_bin_reg_n_0_[4] ,\wr_ptr_bin_reg_n_0_[3] ,\wr_ptr_bin_reg_n_0_[2] ,\wr_ptr_bin_reg_n_0_[1] ,\wr_ptr_bin_reg_n_0_[0] ,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,rd_ptr_bin_reg_rep__0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fifo_mem_reg_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fifo_mem_reg_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_fifo_mem_reg_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,free_run_cnt_d2[11:4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,free_run_cnt_d2[12]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_fifo_mem_reg_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_fifo_mem_reg_4_DOBDO_UNCONNECTED[31:8],m_axis_tdata[43:36]}),
        .DOPADOP(NLW_fifo_mem_reg_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_fifo_mem_reg_4_DOPBDOP_UNCONNECTED[3:1],m_axis_tdata[44]}),
        .ECCPARITY(NLW_fifo_mem_reg_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(fifo_mem_reg_7_i_1_n_0),
        .ENBWREN(fifo_mem_reg_7_i_2_n_0),
        .INJECTDBITERR(NLW_fifo_mem_reg_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_fifo_mem_reg_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_fifo_mem_reg_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_fifo_mem_reg_4_SBITERR_UNCONNECTED),
        .WEA({wr_en0,wr_en0,wr_en0,wr_en0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "fifo_mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "45" *) 
  (* bram_slice_end = "53" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "45" *) 
  (* ram_slice_end = "53" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    fifo_mem_reg_5
       (.ADDRARDADDR({1'b1,\wr_ptr_bin_reg_n_0_[11] ,\wr_ptr_bin_reg_n_0_[10] ,\wr_ptr_bin_reg_n_0_[9] ,\wr_ptr_bin_reg_n_0_[8] ,\wr_ptr_bin_reg_n_0_[7] ,\wr_ptr_bin_reg_n_0_[6] ,\wr_ptr_bin_reg_n_0_[5] ,\wr_ptr_bin_reg_n_0_[4] ,\wr_ptr_bin_reg_n_0_[3] ,\wr_ptr_bin_reg_n_0_[2] ,\wr_ptr_bin_reg_n_0_[1] ,\wr_ptr_bin_reg_n_0_[0] ,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,rd_ptr_bin_reg_rep__0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fifo_mem_reg_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fifo_mem_reg_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_fifo_mem_reg_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,free_run_cnt_d2[20:13]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,free_run_cnt_d2[21]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_fifo_mem_reg_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_fifo_mem_reg_5_DOBDO_UNCONNECTED[31:8],m_axis_tdata[52:45]}),
        .DOPADOP(NLW_fifo_mem_reg_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_fifo_mem_reg_5_DOPBDOP_UNCONNECTED[3:1],m_axis_tdata[53]}),
        .ECCPARITY(NLW_fifo_mem_reg_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(fifo_mem_reg_7_i_1_n_0),
        .ENBWREN(fifo_mem_reg_7_i_2_n_0),
        .INJECTDBITERR(NLW_fifo_mem_reg_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_fifo_mem_reg_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_fifo_mem_reg_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_fifo_mem_reg_5_SBITERR_UNCONNECTED),
        .WEA({wr_en0,wr_en0,wr_en0,wr_en0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "fifo_mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "54" *) 
  (* bram_slice_end = "62" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "62" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    fifo_mem_reg_6
       (.ADDRARDADDR({1'b1,\wr_ptr_bin_reg_n_0_[11] ,\wr_ptr_bin_reg_n_0_[10] ,\wr_ptr_bin_reg_n_0_[9] ,\wr_ptr_bin_reg_n_0_[8] ,\wr_ptr_bin_reg_n_0_[7] ,\wr_ptr_bin_reg_n_0_[6] ,\wr_ptr_bin_reg_n_0_[5] ,\wr_ptr_bin_reg_n_0_[4] ,\wr_ptr_bin_reg_n_0_[3] ,\wr_ptr_bin_reg_n_0_[2] ,\wr_ptr_bin_reg_n_0_[1] ,\wr_ptr_bin_reg_n_0_[0] ,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,rd_ptr_bin_reg_rep__0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fifo_mem_reg_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fifo_mem_reg_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_fifo_mem_reg_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,free_run_cnt_d2[29:22]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,free_run_cnt_d2[30]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_fifo_mem_reg_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_fifo_mem_reg_6_DOBDO_UNCONNECTED[31:8],m_axis_tdata[61:54]}),
        .DOPADOP(NLW_fifo_mem_reg_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_fifo_mem_reg_6_DOPBDOP_UNCONNECTED[3:1],m_axis_tdata[62]}),
        .ECCPARITY(NLW_fifo_mem_reg_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(fifo_mem_reg_7_i_1_n_0),
        .ENBWREN(fifo_mem_reg_7_i_2_n_0),
        .INJECTDBITERR(NLW_fifo_mem_reg_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_fifo_mem_reg_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_fifo_mem_reg_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_fifo_mem_reg_6_SBITERR_UNCONNECTED),
        .WEA({wr_en0,wr_en0,wr_en0,wr_en0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "262144" *) 
  (* RTL_RAM_NAME = "fifo_mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "63" *) 
  (* bram_slice_end = "63" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "63" *) 
  (* ram_slice_end = "63" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    fifo_mem_reg_7
       (.ADDRARDADDR({\wr_ptr_bin_reg_n_0_[11] ,\wr_ptr_bin_reg_n_0_[10] ,\wr_ptr_bin_reg_n_0_[9] ,\wr_ptr_bin_reg_n_0_[8] ,\wr_ptr_bin_reg_n_0_[7] ,\wr_ptr_bin_reg_n_0_[6] ,\wr_ptr_bin_reg_n_0_[5] ,\wr_ptr_bin_reg_n_0_[4] ,\wr_ptr_bin_reg_n_0_[3] ,\wr_ptr_bin_reg_n_0_[2] ,\wr_ptr_bin_reg_n_0_[1] ,\wr_ptr_bin_reg_n_0_[0] ,1'b1,1'b1}),
        .ADDRBWRADDR({rd_ptr_bin_reg_rep__0,1'b1,1'b1}),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(s_axi_aclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,free_run_cnt_d2[31]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_fifo_mem_reg_7_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_fifo_mem_reg_7_DOBDO_UNCONNECTED[15:1],m_axis_tdata[63]}),
        .DOPADOP(NLW_fifo_mem_reg_7_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_fifo_mem_reg_7_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(fifo_mem_reg_7_i_1_n_0),
        .ENBWREN(fifo_mem_reg_7_i_2_n_0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wr_en0,wr_en0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_mem_reg_7_i_1
       (.I0(edge_d2),
        .I1(out),
        .I2(do_capture0__25),
        .O(fifo_mem_reg_7_i_1_n_0));
  LUT4 #(
    .INIT(16'hFBFF)) 
    fifo_mem_reg_7_i_10
       (.I0(\skip_cnt[31]_i_7_n_0 ),
        .I1(\skip_cnt[31]_i_8_n_0 ),
        .I2(\skip_cnt[31]_i_5_n_0 ),
        .I3(\skip_cnt[31]_i_6_n_0 ),
        .O(fifo_mem_reg_7_i_10_n_0));
  LUT6 #(
    .INIT(64'h0700070700000000)) 
    fifo_mem_reg_7_i_2
       (.I0(pkt_bounded__14),
        .I1(pop_limit_hit0),
        .I2(int_empty),
        .I3(m_axis_tready),
        .I4(out_valid_reg_0),
        .I5(\axi_rdata_reg[4] [0]),
        .O(fifo_mem_reg_7_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    fifo_mem_reg_7_i_4
       (.I0(fifo_mem_reg_7_i_6_n_0),
        .I1(fifo_mem_reg_7_i_7_n_0),
        .I2(fifo_mem_reg_7_i_8_n_0),
        .I3(fifo_mem_reg_7_i_9_n_0),
        .I4(fifo_mem_reg_7_i_10_n_0),
        .O(do_capture0__25));
  LUT4 #(
    .INIT(16'h0001)) 
    fifo_mem_reg_7_i_6
       (.I0(skip_cnt[19]),
        .I1(skip_cnt[18]),
        .I2(skip_cnt[17]),
        .I3(skip_cnt[16]),
        .O(fifo_mem_reg_7_i_6_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    fifo_mem_reg_7_i_7
       (.I0(skip_cnt[23]),
        .I1(skip_cnt[22]),
        .I2(skip_cnt[21]),
        .I3(skip_cnt[20]),
        .O(fifo_mem_reg_7_i_7_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    fifo_mem_reg_7_i_8
       (.I0(skip_cnt[30]),
        .I1(skip_cnt[31]),
        .I2(skip_cnt[29]),
        .I3(skip_cnt[28]),
        .O(fifo_mem_reg_7_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fifo_mem_reg_7_i_9
       (.I0(skip_cnt[25]),
        .I1(skip_cnt[24]),
        .I2(skip_cnt[27]),
        .I3(skip_cnt[26]),
        .O(fifo_mem_reg_7_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \free_run_cnt[0]_i_2 
       (.I0(free_run_cnt_reg[0]),
        .O(\free_run_cnt[0]_i_2_n_0 ));
  FDRE \free_run_cnt_d1_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[0]),
        .Q(free_run_cnt_d1[0]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[10]),
        .Q(free_run_cnt_d1[10]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[11]),
        .Q(free_run_cnt_d1[11]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[12]),
        .Q(free_run_cnt_d1[12]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[13]),
        .Q(free_run_cnt_d1[13]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[14]),
        .Q(free_run_cnt_d1[14]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[15]),
        .Q(free_run_cnt_d1[15]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[16]),
        .Q(free_run_cnt_d1[16]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[17]),
        .Q(free_run_cnt_d1[17]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[18]),
        .Q(free_run_cnt_d1[18]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[19]),
        .Q(free_run_cnt_d1[19]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[1]),
        .Q(free_run_cnt_d1[1]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[20]),
        .Q(free_run_cnt_d1[20]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[21]),
        .Q(free_run_cnt_d1[21]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[22]),
        .Q(free_run_cnt_d1[22]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[23]),
        .Q(free_run_cnt_d1[23]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[24]),
        .Q(free_run_cnt_d1[24]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[25]),
        .Q(free_run_cnt_d1[25]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[26]),
        .Q(free_run_cnt_d1[26]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[27]),
        .Q(free_run_cnt_d1[27]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[28]),
        .Q(free_run_cnt_d1[28]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[29]),
        .Q(free_run_cnt_d1[29]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[2]),
        .Q(free_run_cnt_d1[2]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[30]),
        .Q(free_run_cnt_d1[30]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[31]),
        .Q(free_run_cnt_d1[31]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[3]),
        .Q(free_run_cnt_d1[3]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[4]),
        .Q(free_run_cnt_d1[4]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[5]),
        .Q(free_run_cnt_d1[5]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[6]),
        .Q(free_run_cnt_d1[6]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[7]),
        .Q(free_run_cnt_d1[7]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[8]),
        .Q(free_run_cnt_d1[8]),
        .R(SR));
  FDRE \free_run_cnt_d1_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_reg[9]),
        .Q(free_run_cnt_d1[9]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[0]),
        .Q(free_run_cnt_d2[0]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[10]),
        .Q(free_run_cnt_d2[10]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[11]),
        .Q(free_run_cnt_d2[11]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[12]),
        .Q(free_run_cnt_d2[12]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[13]),
        .Q(free_run_cnt_d2[13]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[14]),
        .Q(free_run_cnt_d2[14]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[15]),
        .Q(free_run_cnt_d2[15]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[16]),
        .Q(free_run_cnt_d2[16]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[17]),
        .Q(free_run_cnt_d2[17]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[18]),
        .Q(free_run_cnt_d2[18]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[19]),
        .Q(free_run_cnt_d2[19]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[1]),
        .Q(free_run_cnt_d2[1]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[20]),
        .Q(free_run_cnt_d2[20]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[21]),
        .Q(free_run_cnt_d2[21]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[22]),
        .Q(free_run_cnt_d2[22]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[23]),
        .Q(free_run_cnt_d2[23]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[24]),
        .Q(free_run_cnt_d2[24]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[25]),
        .Q(free_run_cnt_d2[25]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[26]),
        .Q(free_run_cnt_d2[26]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[27]),
        .Q(free_run_cnt_d2[27]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[28]),
        .Q(free_run_cnt_d2[28]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[29]),
        .Q(free_run_cnt_d2[29]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[2]),
        .Q(free_run_cnt_d2[2]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[30]),
        .Q(free_run_cnt_d2[30]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[31]),
        .Q(free_run_cnt_d2[31]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[3]),
        .Q(free_run_cnt_d2[3]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[4]),
        .Q(free_run_cnt_d2[4]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[5]),
        .Q(free_run_cnt_d2[5]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[6]),
        .Q(free_run_cnt_d2[6]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[7]),
        .Q(free_run_cnt_d2[7]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[8]),
        .Q(free_run_cnt_d2[8]),
        .R(SR));
  FDRE \free_run_cnt_d2_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(free_run_cnt_d1[9]),
        .Q(free_run_cnt_d2[9]),
        .R(SR));
  FDRE \free_run_cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[0]_i_1_n_7 ),
        .Q(free_run_cnt_reg[0]),
        .R(SR));
  CARRY4 \free_run_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\free_run_cnt_reg[0]_i_1_n_0 ,\free_run_cnt_reg[0]_i_1_n_1 ,\free_run_cnt_reg[0]_i_1_n_2 ,\free_run_cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\free_run_cnt_reg[0]_i_1_n_4 ,\free_run_cnt_reg[0]_i_1_n_5 ,\free_run_cnt_reg[0]_i_1_n_6 ,\free_run_cnt_reg[0]_i_1_n_7 }),
        .S({free_run_cnt_reg[3:1],\free_run_cnt[0]_i_2_n_0 }));
  FDRE \free_run_cnt_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[8]_i_1_n_5 ),
        .Q(free_run_cnt_reg[10]),
        .R(SR));
  FDRE \free_run_cnt_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[8]_i_1_n_4 ),
        .Q(free_run_cnt_reg[11]),
        .R(SR));
  FDRE \free_run_cnt_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[12]_i_1_n_7 ),
        .Q(free_run_cnt_reg[12]),
        .R(SR));
  CARRY4 \free_run_cnt_reg[12]_i_1 
       (.CI(\free_run_cnt_reg[8]_i_1_n_0 ),
        .CO({\free_run_cnt_reg[12]_i_1_n_0 ,\free_run_cnt_reg[12]_i_1_n_1 ,\free_run_cnt_reg[12]_i_1_n_2 ,\free_run_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\free_run_cnt_reg[12]_i_1_n_4 ,\free_run_cnt_reg[12]_i_1_n_5 ,\free_run_cnt_reg[12]_i_1_n_6 ,\free_run_cnt_reg[12]_i_1_n_7 }),
        .S(free_run_cnt_reg[15:12]));
  FDRE \free_run_cnt_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[12]_i_1_n_6 ),
        .Q(free_run_cnt_reg[13]),
        .R(SR));
  FDRE \free_run_cnt_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[12]_i_1_n_5 ),
        .Q(free_run_cnt_reg[14]),
        .R(SR));
  FDRE \free_run_cnt_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[12]_i_1_n_4 ),
        .Q(free_run_cnt_reg[15]),
        .R(SR));
  FDRE \free_run_cnt_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[16]_i_1_n_7 ),
        .Q(free_run_cnt_reg[16]),
        .R(SR));
  CARRY4 \free_run_cnt_reg[16]_i_1 
       (.CI(\free_run_cnt_reg[12]_i_1_n_0 ),
        .CO({\free_run_cnt_reg[16]_i_1_n_0 ,\free_run_cnt_reg[16]_i_1_n_1 ,\free_run_cnt_reg[16]_i_1_n_2 ,\free_run_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\free_run_cnt_reg[16]_i_1_n_4 ,\free_run_cnt_reg[16]_i_1_n_5 ,\free_run_cnt_reg[16]_i_1_n_6 ,\free_run_cnt_reg[16]_i_1_n_7 }),
        .S(free_run_cnt_reg[19:16]));
  FDRE \free_run_cnt_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[16]_i_1_n_6 ),
        .Q(free_run_cnt_reg[17]),
        .R(SR));
  FDRE \free_run_cnt_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[16]_i_1_n_5 ),
        .Q(free_run_cnt_reg[18]),
        .R(SR));
  FDRE \free_run_cnt_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[16]_i_1_n_4 ),
        .Q(free_run_cnt_reg[19]),
        .R(SR));
  FDRE \free_run_cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[0]_i_1_n_6 ),
        .Q(free_run_cnt_reg[1]),
        .R(SR));
  FDRE \free_run_cnt_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[20]_i_1_n_7 ),
        .Q(free_run_cnt_reg[20]),
        .R(SR));
  CARRY4 \free_run_cnt_reg[20]_i_1 
       (.CI(\free_run_cnt_reg[16]_i_1_n_0 ),
        .CO({\free_run_cnt_reg[20]_i_1_n_0 ,\free_run_cnt_reg[20]_i_1_n_1 ,\free_run_cnt_reg[20]_i_1_n_2 ,\free_run_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\free_run_cnt_reg[20]_i_1_n_4 ,\free_run_cnt_reg[20]_i_1_n_5 ,\free_run_cnt_reg[20]_i_1_n_6 ,\free_run_cnt_reg[20]_i_1_n_7 }),
        .S(free_run_cnt_reg[23:20]));
  FDRE \free_run_cnt_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[20]_i_1_n_6 ),
        .Q(free_run_cnt_reg[21]),
        .R(SR));
  FDRE \free_run_cnt_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[20]_i_1_n_5 ),
        .Q(free_run_cnt_reg[22]),
        .R(SR));
  FDRE \free_run_cnt_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[20]_i_1_n_4 ),
        .Q(free_run_cnt_reg[23]),
        .R(SR));
  FDRE \free_run_cnt_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[24]_i_1_n_7 ),
        .Q(free_run_cnt_reg[24]),
        .R(SR));
  CARRY4 \free_run_cnt_reg[24]_i_1 
       (.CI(\free_run_cnt_reg[20]_i_1_n_0 ),
        .CO({\free_run_cnt_reg[24]_i_1_n_0 ,\free_run_cnt_reg[24]_i_1_n_1 ,\free_run_cnt_reg[24]_i_1_n_2 ,\free_run_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\free_run_cnt_reg[24]_i_1_n_4 ,\free_run_cnt_reg[24]_i_1_n_5 ,\free_run_cnt_reg[24]_i_1_n_6 ,\free_run_cnt_reg[24]_i_1_n_7 }),
        .S(free_run_cnt_reg[27:24]));
  FDRE \free_run_cnt_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[24]_i_1_n_6 ),
        .Q(free_run_cnt_reg[25]),
        .R(SR));
  FDRE \free_run_cnt_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[24]_i_1_n_5 ),
        .Q(free_run_cnt_reg[26]),
        .R(SR));
  FDRE \free_run_cnt_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[24]_i_1_n_4 ),
        .Q(free_run_cnt_reg[27]),
        .R(SR));
  FDRE \free_run_cnt_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[28]_i_1_n_7 ),
        .Q(free_run_cnt_reg[28]),
        .R(SR));
  CARRY4 \free_run_cnt_reg[28]_i_1 
       (.CI(\free_run_cnt_reg[24]_i_1_n_0 ),
        .CO({\NLW_free_run_cnt_reg[28]_i_1_CO_UNCONNECTED [3],\free_run_cnt_reg[28]_i_1_n_1 ,\free_run_cnt_reg[28]_i_1_n_2 ,\free_run_cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\free_run_cnt_reg[28]_i_1_n_4 ,\free_run_cnt_reg[28]_i_1_n_5 ,\free_run_cnt_reg[28]_i_1_n_6 ,\free_run_cnt_reg[28]_i_1_n_7 }),
        .S(free_run_cnt_reg[31:28]));
  FDRE \free_run_cnt_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[28]_i_1_n_6 ),
        .Q(free_run_cnt_reg[29]),
        .R(SR));
  FDRE \free_run_cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[0]_i_1_n_5 ),
        .Q(free_run_cnt_reg[2]),
        .R(SR));
  FDRE \free_run_cnt_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[28]_i_1_n_5 ),
        .Q(free_run_cnt_reg[30]),
        .R(SR));
  FDRE \free_run_cnt_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[28]_i_1_n_4 ),
        .Q(free_run_cnt_reg[31]),
        .R(SR));
  FDRE \free_run_cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[0]_i_1_n_4 ),
        .Q(free_run_cnt_reg[3]),
        .R(SR));
  FDRE \free_run_cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[4]_i_1_n_7 ),
        .Q(free_run_cnt_reg[4]),
        .R(SR));
  CARRY4 \free_run_cnt_reg[4]_i_1 
       (.CI(\free_run_cnt_reg[0]_i_1_n_0 ),
        .CO({\free_run_cnt_reg[4]_i_1_n_0 ,\free_run_cnt_reg[4]_i_1_n_1 ,\free_run_cnt_reg[4]_i_1_n_2 ,\free_run_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\free_run_cnt_reg[4]_i_1_n_4 ,\free_run_cnt_reg[4]_i_1_n_5 ,\free_run_cnt_reg[4]_i_1_n_6 ,\free_run_cnt_reg[4]_i_1_n_7 }),
        .S(free_run_cnt_reg[7:4]));
  FDRE \free_run_cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[4]_i_1_n_6 ),
        .Q(free_run_cnt_reg[5]),
        .R(SR));
  FDRE \free_run_cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[4]_i_1_n_5 ),
        .Q(free_run_cnt_reg[6]),
        .R(SR));
  FDRE \free_run_cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[4]_i_1_n_4 ),
        .Q(free_run_cnt_reg[7]),
        .R(SR));
  FDRE \free_run_cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[8]_i_1_n_7 ),
        .Q(free_run_cnt_reg[8]),
        .R(SR));
  CARRY4 \free_run_cnt_reg[8]_i_1 
       (.CI(\free_run_cnt_reg[4]_i_1_n_0 ),
        .CO({\free_run_cnt_reg[8]_i_1_n_0 ,\free_run_cnt_reg[8]_i_1_n_1 ,\free_run_cnt_reg[8]_i_1_n_2 ,\free_run_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\free_run_cnt_reg[8]_i_1_n_4 ,\free_run_cnt_reg[8]_i_1_n_5 ,\free_run_cnt_reg[8]_i_1_n_6 ,\free_run_cnt_reg[8]_i_1_n_7 }),
        .S(free_run_cnt_reg[11:8]));
  FDRE \free_run_cnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\free_run_cnt_reg[8]_i_1_n_6 ),
        .Q(free_run_cnt_reg[9]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \fx_sync_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(clk_fx),
        .Q(fx_sync[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \fx_sync_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(fx_sync[0]),
        .Q(fx_sync[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \fx_sync_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(fx_sync[1]),
        .Q(fx_sync[2]),
        .R(SR));
  CARRY4 int_empty_carry
       (.CI(1'b0),
        .CO({int_empty_carry_n_0,int_empty_carry_n_1,int_empty_carry_n_2,int_empty_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_int_empty_carry_O_UNCONNECTED[3:0]),
        .S({u_wr_ptr_cdc_n_23,u_wr_ptr_cdc_n_24,u_wr_ptr_cdc_n_25,u_wr_ptr_cdc_n_26}));
  CARRY4 int_empty_carry__0
       (.CI(int_empty_carry_n_0),
        .CO({NLW_int_empty_carry__0_CO_UNCONNECTED[3:1],int_empty}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_int_empty_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,u_wr_ptr_cdc_n_22}));
  LUT1 #(
    .INIT(2'h1)) 
    \lost_count_fs[0]_i_2 
       (.I0(lost_count_fs_reg[0]),
        .O(\lost_count_fs[0]_i_2_n_0 ));
  FDRE \lost_count_fs_reg[0] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[0]_i_1_n_7 ),
        .Q(lost_count_fs_reg[0]),
        .R(SR));
  CARRY4 \lost_count_fs_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\lost_count_fs_reg[0]_i_1_n_0 ,\lost_count_fs_reg[0]_i_1_n_1 ,\lost_count_fs_reg[0]_i_1_n_2 ,\lost_count_fs_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\lost_count_fs_reg[0]_i_1_n_4 ,\lost_count_fs_reg[0]_i_1_n_5 ,\lost_count_fs_reg[0]_i_1_n_6 ,\lost_count_fs_reg[0]_i_1_n_7 }),
        .S({lost_count_fs_reg[3:1],\lost_count_fs[0]_i_2_n_0 }));
  FDRE \lost_count_fs_reg[10] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[8]_i_1_n_5 ),
        .Q(lost_count_fs_reg[10]),
        .R(SR));
  FDRE \lost_count_fs_reg[11] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[8]_i_1_n_4 ),
        .Q(lost_count_fs_reg[11]),
        .R(SR));
  FDRE \lost_count_fs_reg[12] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[12]_i_1_n_7 ),
        .Q(lost_count_fs_reg[12]),
        .R(SR));
  CARRY4 \lost_count_fs_reg[12]_i_1 
       (.CI(\lost_count_fs_reg[8]_i_1_n_0 ),
        .CO({\lost_count_fs_reg[12]_i_1_n_0 ,\lost_count_fs_reg[12]_i_1_n_1 ,\lost_count_fs_reg[12]_i_1_n_2 ,\lost_count_fs_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lost_count_fs_reg[12]_i_1_n_4 ,\lost_count_fs_reg[12]_i_1_n_5 ,\lost_count_fs_reg[12]_i_1_n_6 ,\lost_count_fs_reg[12]_i_1_n_7 }),
        .S(lost_count_fs_reg[15:12]));
  FDRE \lost_count_fs_reg[13] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[12]_i_1_n_6 ),
        .Q(lost_count_fs_reg[13]),
        .R(SR));
  FDRE \lost_count_fs_reg[14] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[12]_i_1_n_5 ),
        .Q(lost_count_fs_reg[14]),
        .R(SR));
  FDRE \lost_count_fs_reg[15] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[12]_i_1_n_4 ),
        .Q(lost_count_fs_reg[15]),
        .R(SR));
  FDRE \lost_count_fs_reg[16] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[16]_i_1_n_7 ),
        .Q(lost_count_fs_reg[16]),
        .R(SR));
  CARRY4 \lost_count_fs_reg[16]_i_1 
       (.CI(\lost_count_fs_reg[12]_i_1_n_0 ),
        .CO({\lost_count_fs_reg[16]_i_1_n_0 ,\lost_count_fs_reg[16]_i_1_n_1 ,\lost_count_fs_reg[16]_i_1_n_2 ,\lost_count_fs_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lost_count_fs_reg[16]_i_1_n_4 ,\lost_count_fs_reg[16]_i_1_n_5 ,\lost_count_fs_reg[16]_i_1_n_6 ,\lost_count_fs_reg[16]_i_1_n_7 }),
        .S(lost_count_fs_reg[19:16]));
  FDRE \lost_count_fs_reg[17] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[16]_i_1_n_6 ),
        .Q(lost_count_fs_reg[17]),
        .R(SR));
  FDRE \lost_count_fs_reg[18] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[16]_i_1_n_5 ),
        .Q(lost_count_fs_reg[18]),
        .R(SR));
  FDRE \lost_count_fs_reg[19] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[16]_i_1_n_4 ),
        .Q(lost_count_fs_reg[19]),
        .R(SR));
  FDRE \lost_count_fs_reg[1] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[0]_i_1_n_6 ),
        .Q(lost_count_fs_reg[1]),
        .R(SR));
  FDRE \lost_count_fs_reg[20] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[20]_i_1_n_7 ),
        .Q(lost_count_fs_reg[20]),
        .R(SR));
  CARRY4 \lost_count_fs_reg[20]_i_1 
       (.CI(\lost_count_fs_reg[16]_i_1_n_0 ),
        .CO({\lost_count_fs_reg[20]_i_1_n_0 ,\lost_count_fs_reg[20]_i_1_n_1 ,\lost_count_fs_reg[20]_i_1_n_2 ,\lost_count_fs_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lost_count_fs_reg[20]_i_1_n_4 ,\lost_count_fs_reg[20]_i_1_n_5 ,\lost_count_fs_reg[20]_i_1_n_6 ,\lost_count_fs_reg[20]_i_1_n_7 }),
        .S(lost_count_fs_reg[23:20]));
  FDRE \lost_count_fs_reg[21] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[20]_i_1_n_6 ),
        .Q(lost_count_fs_reg[21]),
        .R(SR));
  FDRE \lost_count_fs_reg[22] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[20]_i_1_n_5 ),
        .Q(lost_count_fs_reg[22]),
        .R(SR));
  FDRE \lost_count_fs_reg[23] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[20]_i_1_n_4 ),
        .Q(lost_count_fs_reg[23]),
        .R(SR));
  FDRE \lost_count_fs_reg[24] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[24]_i_1_n_7 ),
        .Q(lost_count_fs_reg[24]),
        .R(SR));
  CARRY4 \lost_count_fs_reg[24]_i_1 
       (.CI(\lost_count_fs_reg[20]_i_1_n_0 ),
        .CO({\lost_count_fs_reg[24]_i_1_n_0 ,\lost_count_fs_reg[24]_i_1_n_1 ,\lost_count_fs_reg[24]_i_1_n_2 ,\lost_count_fs_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lost_count_fs_reg[24]_i_1_n_4 ,\lost_count_fs_reg[24]_i_1_n_5 ,\lost_count_fs_reg[24]_i_1_n_6 ,\lost_count_fs_reg[24]_i_1_n_7 }),
        .S(lost_count_fs_reg[27:24]));
  FDRE \lost_count_fs_reg[25] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[24]_i_1_n_6 ),
        .Q(lost_count_fs_reg[25]),
        .R(SR));
  FDRE \lost_count_fs_reg[26] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[24]_i_1_n_5 ),
        .Q(lost_count_fs_reg[26]),
        .R(SR));
  FDRE \lost_count_fs_reg[27] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[24]_i_1_n_4 ),
        .Q(lost_count_fs_reg[27]),
        .R(SR));
  FDRE \lost_count_fs_reg[28] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[28]_i_1_n_7 ),
        .Q(lost_count_fs_reg[28]),
        .R(SR));
  CARRY4 \lost_count_fs_reg[28]_i_1 
       (.CI(\lost_count_fs_reg[24]_i_1_n_0 ),
        .CO({\NLW_lost_count_fs_reg[28]_i_1_CO_UNCONNECTED [3],\lost_count_fs_reg[28]_i_1_n_1 ,\lost_count_fs_reg[28]_i_1_n_2 ,\lost_count_fs_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lost_count_fs_reg[28]_i_1_n_4 ,\lost_count_fs_reg[28]_i_1_n_5 ,\lost_count_fs_reg[28]_i_1_n_6 ,\lost_count_fs_reg[28]_i_1_n_7 }),
        .S(lost_count_fs_reg[31:28]));
  FDRE \lost_count_fs_reg[29] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[28]_i_1_n_6 ),
        .Q(lost_count_fs_reg[29]),
        .R(SR));
  FDRE \lost_count_fs_reg[2] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[0]_i_1_n_5 ),
        .Q(lost_count_fs_reg[2]),
        .R(SR));
  FDRE \lost_count_fs_reg[30] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[28]_i_1_n_5 ),
        .Q(lost_count_fs_reg[30]),
        .R(SR));
  FDRE \lost_count_fs_reg[31] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[28]_i_1_n_4 ),
        .Q(lost_count_fs_reg[31]),
        .R(SR));
  FDRE \lost_count_fs_reg[3] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[0]_i_1_n_4 ),
        .Q(lost_count_fs_reg[3]),
        .R(SR));
  FDRE \lost_count_fs_reg[4] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[4]_i_1_n_7 ),
        .Q(lost_count_fs_reg[4]),
        .R(SR));
  CARRY4 \lost_count_fs_reg[4]_i_1 
       (.CI(\lost_count_fs_reg[0]_i_1_n_0 ),
        .CO({\lost_count_fs_reg[4]_i_1_n_0 ,\lost_count_fs_reg[4]_i_1_n_1 ,\lost_count_fs_reg[4]_i_1_n_2 ,\lost_count_fs_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lost_count_fs_reg[4]_i_1_n_4 ,\lost_count_fs_reg[4]_i_1_n_5 ,\lost_count_fs_reg[4]_i_1_n_6 ,\lost_count_fs_reg[4]_i_1_n_7 }),
        .S(lost_count_fs_reg[7:4]));
  FDRE \lost_count_fs_reg[5] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[4]_i_1_n_6 ),
        .Q(lost_count_fs_reg[5]),
        .R(SR));
  FDRE \lost_count_fs_reg[6] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[4]_i_1_n_5 ),
        .Q(lost_count_fs_reg[6]),
        .R(SR));
  FDRE \lost_count_fs_reg[7] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[4]_i_1_n_4 ),
        .Q(lost_count_fs_reg[7]),
        .R(SR));
  FDRE \lost_count_fs_reg[8] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[8]_i_1_n_7 ),
        .Q(lost_count_fs_reg[8]),
        .R(SR));
  CARRY4 \lost_count_fs_reg[8]_i_1 
       (.CI(\lost_count_fs_reg[4]_i_1_n_0 ),
        .CO({\lost_count_fs_reg[8]_i_1_n_0 ,\lost_count_fs_reg[8]_i_1_n_1 ,\lost_count_fs_reg[8]_i_1_n_2 ,\lost_count_fs_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\lost_count_fs_reg[8]_i_1_n_4 ,\lost_count_fs_reg[8]_i_1_n_5 ,\lost_count_fs_reg[8]_i_1_n_6 ,\lost_count_fs_reg[8]_i_1_n_7 }),
        .S(lost_count_fs_reg[11:8]));
  FDRE \lost_count_fs_reg[9] 
       (.C(CLK),
        .CE(wr_drop),
        .D(\lost_count_fs_reg[8]_i_1_n_6 ),
        .Q(lost_count_fs_reg[9]),
        .R(SR));
  FDRE out_last_reg
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(pop_is_last),
        .Q(m_axis_tlast),
        .R(\gray_s1_reg[0] ));
  LUT6 #(
    .INIT(64'h000A0A0ACCCECECE)) 
    out_valid_i_1
       (.I0(\axi_rdata_reg[4] [0]),
        .I1(out_valid_reg_0),
        .I2(int_empty),
        .I3(pop_limit_hit0),
        .I4(pkt_bounded__14),
        .I5(m_axis_tready),
        .O(out_valid_i_1_n_0));
  FDRE out_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out_valid_i_1_n_0),
        .Q(out_valid_reg_0),
        .R(\gray_s1_reg[0] ));
  FDRE ovf_mark_reg
       (.C(CLK),
        .CE(1'b1),
        .D(u_rd_ptr_cdc_n_0),
        .Q(ovf_mark),
        .R(SR));
  FDRE ovf_sticky_reg
       (.C(CLK),
        .CE(wr_drop),
        .D(wr_drop),
        .Q(ovf_sticky),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \pop_cnt[0]_i_3 
       (.I0(pop_cnt_reg[0]),
        .O(\pop_cnt[0]_i_3_n_0 ));
  FDRE \pop_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\pop_cnt_reg[0]_i_2_n_7 ),
        .Q(pop_cnt_reg[0]),
        .R(\pop_cnt_reg[15]_0 ));
  CARRY4 \pop_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\pop_cnt_reg[0]_i_2_n_0 ,\pop_cnt_reg[0]_i_2_n_1 ,\pop_cnt_reg[0]_i_2_n_2 ,\pop_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pop_cnt_reg[0]_i_2_n_4 ,\pop_cnt_reg[0]_i_2_n_5 ,\pop_cnt_reg[0]_i_2_n_6 ,\pop_cnt_reg[0]_i_2_n_7 }),
        .S({pop_cnt_reg[3:1],\pop_cnt[0]_i_3_n_0 }));
  FDRE \pop_cnt_reg[10] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\pop_cnt_reg[8]_i_1_n_5 ),
        .Q(pop_cnt_reg[10]),
        .R(\pop_cnt_reg[15]_0 ));
  FDRE \pop_cnt_reg[11] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\pop_cnt_reg[8]_i_1_n_4 ),
        .Q(pop_cnt_reg[11]),
        .R(\pop_cnt_reg[15]_0 ));
  FDRE \pop_cnt_reg[12] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\pop_cnt_reg[12]_i_1_n_7 ),
        .Q(pop_cnt_reg[12]),
        .R(\pop_cnt_reg[15]_0 ));
  CARRY4 \pop_cnt_reg[12]_i_1 
       (.CI(\pop_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_pop_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\pop_cnt_reg[12]_i_1_n_1 ,\pop_cnt_reg[12]_i_1_n_2 ,\pop_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pop_cnt_reg[12]_i_1_n_4 ,\pop_cnt_reg[12]_i_1_n_5 ,\pop_cnt_reg[12]_i_1_n_6 ,\pop_cnt_reg[12]_i_1_n_7 }),
        .S(pop_cnt_reg[15:12]));
  FDRE \pop_cnt_reg[13] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\pop_cnt_reg[12]_i_1_n_6 ),
        .Q(pop_cnt_reg[13]),
        .R(\pop_cnt_reg[15]_0 ));
  FDRE \pop_cnt_reg[14] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\pop_cnt_reg[12]_i_1_n_5 ),
        .Q(pop_cnt_reg[14]),
        .R(\pop_cnt_reg[15]_0 ));
  FDRE \pop_cnt_reg[15] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\pop_cnt_reg[12]_i_1_n_4 ),
        .Q(pop_cnt_reg[15]),
        .R(\pop_cnt_reg[15]_0 ));
  FDRE \pop_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\pop_cnt_reg[0]_i_2_n_6 ),
        .Q(pop_cnt_reg[1]),
        .R(\pop_cnt_reg[15]_0 ));
  FDRE \pop_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\pop_cnt_reg[0]_i_2_n_5 ),
        .Q(pop_cnt_reg[2]),
        .R(\pop_cnt_reg[15]_0 ));
  FDRE \pop_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\pop_cnt_reg[0]_i_2_n_4 ),
        .Q(pop_cnt_reg[3]),
        .R(\pop_cnt_reg[15]_0 ));
  FDRE \pop_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\pop_cnt_reg[4]_i_1_n_7 ),
        .Q(pop_cnt_reg[4]),
        .R(\pop_cnt_reg[15]_0 ));
  CARRY4 \pop_cnt_reg[4]_i_1 
       (.CI(\pop_cnt_reg[0]_i_2_n_0 ),
        .CO({\pop_cnt_reg[4]_i_1_n_0 ,\pop_cnt_reg[4]_i_1_n_1 ,\pop_cnt_reg[4]_i_1_n_2 ,\pop_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pop_cnt_reg[4]_i_1_n_4 ,\pop_cnt_reg[4]_i_1_n_5 ,\pop_cnt_reg[4]_i_1_n_6 ,\pop_cnt_reg[4]_i_1_n_7 }),
        .S(pop_cnt_reg[7:4]));
  FDRE \pop_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\pop_cnt_reg[4]_i_1_n_6 ),
        .Q(pop_cnt_reg[5]),
        .R(\pop_cnt_reg[15]_0 ));
  FDRE \pop_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\pop_cnt_reg[4]_i_1_n_5 ),
        .Q(pop_cnt_reg[6]),
        .R(\pop_cnt_reg[15]_0 ));
  FDRE \pop_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\pop_cnt_reg[4]_i_1_n_4 ),
        .Q(pop_cnt_reg[7]),
        .R(\pop_cnt_reg[15]_0 ));
  FDRE \pop_cnt_reg[8] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\pop_cnt_reg[8]_i_1_n_7 ),
        .Q(pop_cnt_reg[8]),
        .R(\pop_cnt_reg[15]_0 ));
  CARRY4 \pop_cnt_reg[8]_i_1 
       (.CI(\pop_cnt_reg[4]_i_1_n_0 ),
        .CO({\pop_cnt_reg[8]_i_1_n_0 ,\pop_cnt_reg[8]_i_1_n_1 ,\pop_cnt_reg[8]_i_1_n_2 ,\pop_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pop_cnt_reg[8]_i_1_n_4 ,\pop_cnt_reg[8]_i_1_n_5 ,\pop_cnt_reg[8]_i_1_n_6 ,\pop_cnt_reg[8]_i_1_n_7 }),
        .S(pop_cnt_reg[11:8]));
  FDRE \pop_cnt_reg[9] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\pop_cnt_reg[8]_i_1_n_6 ),
        .Q(pop_cnt_reg[9]),
        .R(\pop_cnt_reg[15]_0 ));
  CARRY4 pop_is_last0_carry
       (.CI(1'b0),
        .CO({pop_is_last0_carry_n_0,pop_is_last0_carry_n_1,pop_is_last0_carry_n_2,pop_is_last0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pop_is_last0_carry_O_UNCONNECTED[3:0]),
        .S({pop_is_last0_carry_i_1_n_0,pop_is_last0_carry_i_2_n_0,pop_is_last0_carry_i_3_n_0,pop_is_last0_carry_i_4_n_0}));
  CARRY4 pop_is_last0_carry__0
       (.CI(pop_is_last0_carry_n_0),
        .CO({NLW_pop_is_last0_carry__0_CO_UNCONNECTED[3:2],CO,pop_is_last0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pop_is_last0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,pop_is_last0_carry__0_i_1_n_0,pop_is_last0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    pop_is_last0_carry__0_i_1
       (.I0(pop_is_last1[14]),
        .I1(pop_cnt_reg[15]),
        .O(pop_is_last0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pop_is_last0_carry__0_i_2
       (.I0(pop_cnt_reg[12]),
        .I1(pop_is_last1[11]),
        .I2(pop_is_last1[13]),
        .I3(pop_cnt_reg[14]),
        .I4(pop_is_last1[12]),
        .I5(pop_cnt_reg[13]),
        .O(pop_is_last0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pop_is_last0_carry_i_1
       (.I0(pop_cnt_reg[9]),
        .I1(pop_is_last1[8]),
        .I2(pop_is_last1[10]),
        .I3(pop_cnt_reg[11]),
        .I4(pop_is_last1[9]),
        .I5(pop_cnt_reg[10]),
        .O(pop_is_last0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pop_is_last0_carry_i_2
       (.I0(pop_cnt_reg[6]),
        .I1(pop_is_last1[5]),
        .I2(pop_is_last1[7]),
        .I3(pop_cnt_reg[8]),
        .I4(pop_is_last1[6]),
        .I5(pop_cnt_reg[7]),
        .O(pop_is_last0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pop_is_last0_carry_i_3
       (.I0(pop_cnt_reg[3]),
        .I1(pop_is_last1[2]),
        .I2(pop_is_last1[4]),
        .I3(pop_cnt_reg[5]),
        .I4(pop_is_last1[3]),
        .I5(pop_cnt_reg[4]),
        .O(pop_is_last0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    pop_is_last0_carry_i_4
       (.I0(pop_is_last1[1]),
        .I1(pop_cnt_reg[2]),
        .I2(pop_is_last1[0]),
        .I3(pop_cnt_reg[1]),
        .I4(pop_cnt_reg[0]),
        .I5(pop_limit_hit0_carry__0_0[0]),
        .O(pop_is_last0_carry_i_4_n_0));
  CARRY4 pop_limit_hit0_carry
       (.CI(1'b0),
        .CO({pop_limit_hit0_carry_n_0,pop_limit_hit0_carry_n_1,pop_limit_hit0_carry_n_2,pop_limit_hit0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({pop_limit_hit0_carry_i_1_n_0,pop_limit_hit0_carry_i_2_n_0,pop_limit_hit0_carry_i_3_n_0,pop_limit_hit0_carry_i_4_n_0}),
        .O(NLW_pop_limit_hit0_carry_O_UNCONNECTED[3:0]),
        .S({pop_limit_hit0_carry_i_5_n_0,pop_limit_hit0_carry_i_6_n_0,pop_limit_hit0_carry_i_7_n_0,pop_limit_hit0_carry_i_8_n_0}));
  CARRY4 pop_limit_hit0_carry__0
       (.CI(pop_limit_hit0_carry_n_0),
        .CO({pop_limit_hit0,pop_limit_hit0_carry__0_n_1,pop_limit_hit0_carry__0_n_2,pop_limit_hit0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({pop_limit_hit0_carry__0_i_1_n_0,pop_limit_hit0_carry__0_i_2_n_0,pop_limit_hit0_carry__0_i_3_n_0,pop_limit_hit0_carry__0_i_4_n_0}),
        .O(NLW_pop_limit_hit0_carry__0_O_UNCONNECTED[3:0]),
        .S({pop_limit_hit0_carry__0_i_5_n_0,pop_limit_hit0_carry__0_i_6_n_0,pop_limit_hit0_carry__0_i_7_n_0,pop_limit_hit0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    pop_limit_hit0_carry__0_i_1
       (.I0(pop_cnt_reg[14]),
        .I1(pop_limit_hit0_carry__0_0[14]),
        .I2(pop_limit_hit0_carry__0_0[15]),
        .I3(pop_cnt_reg[15]),
        .O(pop_limit_hit0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pop_limit_hit0_carry__0_i_2
       (.I0(pop_cnt_reg[12]),
        .I1(pop_limit_hit0_carry__0_0[12]),
        .I2(pop_limit_hit0_carry__0_0[13]),
        .I3(pop_cnt_reg[13]),
        .O(pop_limit_hit0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pop_limit_hit0_carry__0_i_3
       (.I0(pop_cnt_reg[10]),
        .I1(pop_limit_hit0_carry__0_0[10]),
        .I2(pop_limit_hit0_carry__0_0[11]),
        .I3(pop_cnt_reg[11]),
        .O(pop_limit_hit0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pop_limit_hit0_carry__0_i_4
       (.I0(pop_cnt_reg[8]),
        .I1(pop_limit_hit0_carry__0_0[8]),
        .I2(pop_limit_hit0_carry__0_0[9]),
        .I3(pop_cnt_reg[9]),
        .O(pop_limit_hit0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pop_limit_hit0_carry__0_i_5
       (.I0(pop_cnt_reg[14]),
        .I1(pop_limit_hit0_carry__0_0[14]),
        .I2(pop_cnt_reg[15]),
        .I3(pop_limit_hit0_carry__0_0[15]),
        .O(pop_limit_hit0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pop_limit_hit0_carry__0_i_6
       (.I0(pop_cnt_reg[12]),
        .I1(pop_limit_hit0_carry__0_0[12]),
        .I2(pop_cnt_reg[13]),
        .I3(pop_limit_hit0_carry__0_0[13]),
        .O(pop_limit_hit0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pop_limit_hit0_carry__0_i_7
       (.I0(pop_cnt_reg[10]),
        .I1(pop_limit_hit0_carry__0_0[10]),
        .I2(pop_cnt_reg[11]),
        .I3(pop_limit_hit0_carry__0_0[11]),
        .O(pop_limit_hit0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pop_limit_hit0_carry__0_i_8
       (.I0(pop_cnt_reg[8]),
        .I1(pop_limit_hit0_carry__0_0[8]),
        .I2(pop_cnt_reg[9]),
        .I3(pop_limit_hit0_carry__0_0[9]),
        .O(pop_limit_hit0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pop_limit_hit0_carry_i_1
       (.I0(pop_cnt_reg[6]),
        .I1(pop_limit_hit0_carry__0_0[6]),
        .I2(pop_limit_hit0_carry__0_0[7]),
        .I3(pop_cnt_reg[7]),
        .O(pop_limit_hit0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pop_limit_hit0_carry_i_2
       (.I0(pop_cnt_reg[4]),
        .I1(pop_limit_hit0_carry__0_0[4]),
        .I2(pop_limit_hit0_carry__0_0[5]),
        .I3(pop_cnt_reg[5]),
        .O(pop_limit_hit0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pop_limit_hit0_carry_i_3
       (.I0(pop_cnt_reg[2]),
        .I1(pop_limit_hit0_carry__0_0[2]),
        .I2(pop_limit_hit0_carry__0_0[3]),
        .I3(pop_cnt_reg[3]),
        .O(pop_limit_hit0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    pop_limit_hit0_carry_i_4
       (.I0(pop_cnt_reg[0]),
        .I1(pop_limit_hit0_carry__0_0[0]),
        .I2(pop_limit_hit0_carry__0_0[1]),
        .I3(pop_cnt_reg[1]),
        .O(pop_limit_hit0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pop_limit_hit0_carry_i_5
       (.I0(pop_cnt_reg[6]),
        .I1(pop_limit_hit0_carry__0_0[6]),
        .I2(pop_cnt_reg[7]),
        .I3(pop_limit_hit0_carry__0_0[7]),
        .O(pop_limit_hit0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pop_limit_hit0_carry_i_6
       (.I0(pop_cnt_reg[4]),
        .I1(pop_limit_hit0_carry__0_0[4]),
        .I2(pop_cnt_reg[5]),
        .I3(pop_limit_hit0_carry__0_0[5]),
        .O(pop_limit_hit0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pop_limit_hit0_carry_i_7
       (.I0(pop_cnt_reg[2]),
        .I1(pop_limit_hit0_carry__0_0[2]),
        .I2(pop_cnt_reg[3]),
        .I3(pop_limit_hit0_carry__0_0[3]),
        .O(pop_limit_hit0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pop_limit_hit0_carry_i_8
       (.I0(pop_cnt_reg[0]),
        .I1(pop_limit_hit0_carry__0_0[0]),
        .I2(pop_cnt_reg[1]),
        .I3(pop_limit_hit0_carry__0_0[1]),
        .O(pop_limit_hit0_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr_bin[0]_i_2 
       (.I0(rd_ptr_bin_reg[0]),
        .O(\rd_ptr_bin[0]_i_2_n_0 ));
  FDRE \rd_ptr_bin_reg[0] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[0]_i_1_n_7 ),
        .Q(rd_ptr_bin_reg[0]),
        .R(\gray_s1_reg[0] ));
  CARRY4 \rd_ptr_bin_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\rd_ptr_bin_reg[0]_i_1_n_0 ,\rd_ptr_bin_reg[0]_i_1_n_1 ,\rd_ptr_bin_reg[0]_i_1_n_2 ,\rd_ptr_bin_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rd_ptr_bin_reg[0]_i_1_n_4 ,\rd_ptr_bin_reg[0]_i_1_n_5 ,\rd_ptr_bin_reg[0]_i_1_n_6 ,\rd_ptr_bin_reg[0]_i_1_n_7 }),
        .S({rd_ptr_bin_reg[3:1],\rd_ptr_bin[0]_i_2_n_0 }));
  FDRE \rd_ptr_bin_reg[10] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[8]_i_1_n_5 ),
        .Q(rd_ptr_bin_reg[10]),
        .R(\gray_s1_reg[0] ));
  FDRE \rd_ptr_bin_reg[11] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[8]_i_1_n_4 ),
        .Q(rd_ptr_bin_reg[11]),
        .R(\gray_s1_reg[0] ));
  FDRE \rd_ptr_bin_reg[12] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[12]_i_1_n_7 ),
        .Q(rd_ptr_bin_reg[12]),
        .R(\gray_s1_reg[0] ));
  CARRY4 \rd_ptr_bin_reg[12]_i_1 
       (.CI(\rd_ptr_bin_reg[8]_i_1_n_0 ),
        .CO(\NLW_rd_ptr_bin_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rd_ptr_bin_reg[12]_i_1_O_UNCONNECTED [3:1],\rd_ptr_bin_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,rd_ptr_bin_reg[12]}));
  FDRE \rd_ptr_bin_reg[1] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[0]_i_1_n_6 ),
        .Q(rd_ptr_bin_reg[1]),
        .R(\gray_s1_reg[0] ));
  FDRE \rd_ptr_bin_reg[2] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[0]_i_1_n_5 ),
        .Q(rd_ptr_bin_reg[2]),
        .R(\gray_s1_reg[0] ));
  FDRE \rd_ptr_bin_reg[3] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[0]_i_1_n_4 ),
        .Q(rd_ptr_bin_reg[3]),
        .R(\gray_s1_reg[0] ));
  FDRE \rd_ptr_bin_reg[4] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[4]_i_1_n_7 ),
        .Q(rd_ptr_bin_reg[4]),
        .R(\gray_s1_reg[0] ));
  CARRY4 \rd_ptr_bin_reg[4]_i_1 
       (.CI(\rd_ptr_bin_reg[0]_i_1_n_0 ),
        .CO({\rd_ptr_bin_reg[4]_i_1_n_0 ,\rd_ptr_bin_reg[4]_i_1_n_1 ,\rd_ptr_bin_reg[4]_i_1_n_2 ,\rd_ptr_bin_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_ptr_bin_reg[4]_i_1_n_4 ,\rd_ptr_bin_reg[4]_i_1_n_5 ,\rd_ptr_bin_reg[4]_i_1_n_6 ,\rd_ptr_bin_reg[4]_i_1_n_7 }),
        .S(rd_ptr_bin_reg[7:4]));
  FDRE \rd_ptr_bin_reg[5] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[4]_i_1_n_6 ),
        .Q(rd_ptr_bin_reg[5]),
        .R(\gray_s1_reg[0] ));
  FDRE \rd_ptr_bin_reg[6] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[4]_i_1_n_5 ),
        .Q(rd_ptr_bin_reg[6]),
        .R(\gray_s1_reg[0] ));
  FDRE \rd_ptr_bin_reg[7] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[4]_i_1_n_4 ),
        .Q(rd_ptr_bin_reg[7]),
        .R(\gray_s1_reg[0] ));
  FDRE \rd_ptr_bin_reg[8] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[8]_i_1_n_7 ),
        .Q(rd_ptr_bin_reg[8]),
        .R(\gray_s1_reg[0] ));
  CARRY4 \rd_ptr_bin_reg[8]_i_1 
       (.CI(\rd_ptr_bin_reg[4]_i_1_n_0 ),
        .CO({\rd_ptr_bin_reg[8]_i_1_n_0 ,\rd_ptr_bin_reg[8]_i_1_n_1 ,\rd_ptr_bin_reg[8]_i_1_n_2 ,\rd_ptr_bin_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_ptr_bin_reg[8]_i_1_n_4 ,\rd_ptr_bin_reg[8]_i_1_n_5 ,\rd_ptr_bin_reg[8]_i_1_n_6 ,\rd_ptr_bin_reg[8]_i_1_n_7 }),
        .S(rd_ptr_bin_reg[11:8]));
  FDRE \rd_ptr_bin_reg[9] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[8]_i_1_n_6 ),
        .Q(rd_ptr_bin_reg[9]),
        .R(\gray_s1_reg[0] ));
  FDRE \rd_ptr_bin_reg_rep[0] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_rep[0]_i_1_n_0 ),
        .Q(rd_ptr_bin_reg_rep__0[0]),
        .R(\gray_s1_reg[0] ));
  FDRE \rd_ptr_bin_reg_rep[10] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg_rep[11]_i_1_n_6 ),
        .Q(rd_ptr_bin_reg_rep__0[10]),
        .R(\gray_s1_reg[0] ));
  FDRE \rd_ptr_bin_reg_rep[11] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg_rep[11]_i_1_n_5 ),
        .Q(rd_ptr_bin_reg_rep__0[11]),
        .R(\gray_s1_reg[0] ));
  CARRY4 \rd_ptr_bin_reg_rep[11]_i_1 
       (.CI(\rd_ptr_bin_reg_rep[8]_i_1_n_0 ),
        .CO({\NLW_rd_ptr_bin_reg_rep[11]_i_1_CO_UNCONNECTED [3:2],\rd_ptr_bin_reg_rep[11]_i_1_n_2 ,\rd_ptr_bin_reg_rep[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rd_ptr_bin_reg_rep[11]_i_1_O_UNCONNECTED [3],\rd_ptr_bin_reg_rep[11]_i_1_n_5 ,\rd_ptr_bin_reg_rep[11]_i_1_n_6 ,\rd_ptr_bin_reg_rep[11]_i_1_n_7 }),
        .S({1'b0,rd_ptr_bin_reg[11:9]}));
  FDRE \rd_ptr_bin_reg_rep[1] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg_rep[4]_i_1_n_7 ),
        .Q(rd_ptr_bin_reg_rep__0[1]),
        .R(\gray_s1_reg[0] ));
  FDRE \rd_ptr_bin_reg_rep[2] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg_rep[4]_i_1_n_6 ),
        .Q(rd_ptr_bin_reg_rep__0[2]),
        .R(\gray_s1_reg[0] ));
  FDRE \rd_ptr_bin_reg_rep[3] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg_rep[4]_i_1_n_5 ),
        .Q(rd_ptr_bin_reg_rep__0[3]),
        .R(\gray_s1_reg[0] ));
  FDRE \rd_ptr_bin_reg_rep[4] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg_rep[4]_i_1_n_4 ),
        .Q(rd_ptr_bin_reg_rep__0[4]),
        .R(\gray_s1_reg[0] ));
  CARRY4 \rd_ptr_bin_reg_rep[4]_i_1 
       (.CI(1'b0),
        .CO({\rd_ptr_bin_reg_rep[4]_i_1_n_0 ,\rd_ptr_bin_reg_rep[4]_i_1_n_1 ,\rd_ptr_bin_reg_rep[4]_i_1_n_2 ,\rd_ptr_bin_reg_rep[4]_i_1_n_3 }),
        .CYINIT(rd_ptr_bin_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_ptr_bin_reg_rep[4]_i_1_n_4 ,\rd_ptr_bin_reg_rep[4]_i_1_n_5 ,\rd_ptr_bin_reg_rep[4]_i_1_n_6 ,\rd_ptr_bin_reg_rep[4]_i_1_n_7 }),
        .S(rd_ptr_bin_reg[4:1]));
  FDRE \rd_ptr_bin_reg_rep[5] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg_rep[8]_i_1_n_7 ),
        .Q(rd_ptr_bin_reg_rep__0[5]),
        .R(\gray_s1_reg[0] ));
  FDRE \rd_ptr_bin_reg_rep[6] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg_rep[8]_i_1_n_6 ),
        .Q(rd_ptr_bin_reg_rep__0[6]),
        .R(\gray_s1_reg[0] ));
  FDRE \rd_ptr_bin_reg_rep[7] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg_rep[8]_i_1_n_5 ),
        .Q(rd_ptr_bin_reg_rep__0[7]),
        .R(\gray_s1_reg[0] ));
  FDRE \rd_ptr_bin_reg_rep[8] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg_rep[8]_i_1_n_4 ),
        .Q(rd_ptr_bin_reg_rep__0[8]),
        .R(\gray_s1_reg[0] ));
  CARRY4 \rd_ptr_bin_reg_rep[8]_i_1 
       (.CI(\rd_ptr_bin_reg_rep[4]_i_1_n_0 ),
        .CO({\rd_ptr_bin_reg_rep[8]_i_1_n_0 ,\rd_ptr_bin_reg_rep[8]_i_1_n_1 ,\rd_ptr_bin_reg_rep[8]_i_1_n_2 ,\rd_ptr_bin_reg_rep[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_ptr_bin_reg_rep[8]_i_1_n_4 ,\rd_ptr_bin_reg_rep[8]_i_1_n_5 ,\rd_ptr_bin_reg_rep[8]_i_1_n_6 ,\rd_ptr_bin_reg_rep[8]_i_1_n_7 }),
        .S(rd_ptr_bin_reg[8:5]));
  FDRE \rd_ptr_bin_reg_rep[9] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg_rep[11]_i_1_n_7 ),
        .Q(rd_ptr_bin_reg_rep__0[9]),
        .R(\gray_s1_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr_bin_rep[0]_i_1 
       (.I0(rd_ptr_bin_reg[0]),
        .O(\rd_ptr_bin_rep[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \seq_cnt[0]_i_3 
       (.I0(seq_cnt_reg[0]),
        .O(\seq_cnt[0]_i_3_n_0 ));
  FDRE \seq_cnt_reg[0] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[0]_i_2_n_7 ),
        .Q(seq_cnt_reg[0]),
        .R(SR));
  CARRY4 \seq_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\seq_cnt_reg[0]_i_2_n_0 ,\seq_cnt_reg[0]_i_2_n_1 ,\seq_cnt_reg[0]_i_2_n_2 ,\seq_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\seq_cnt_reg[0]_i_2_n_4 ,\seq_cnt_reg[0]_i_2_n_5 ,\seq_cnt_reg[0]_i_2_n_6 ,\seq_cnt_reg[0]_i_2_n_7 }),
        .S({seq_cnt_reg[3:1],\seq_cnt[0]_i_3_n_0 }));
  FDRE \seq_cnt_reg[10] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[8]_i_1_n_5 ),
        .Q(seq_cnt_reg[10]),
        .R(SR));
  FDRE \seq_cnt_reg[11] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[8]_i_1_n_4 ),
        .Q(seq_cnt_reg[11]),
        .R(SR));
  FDRE \seq_cnt_reg[12] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[12]_i_1_n_7 ),
        .Q(seq_cnt_reg[12]),
        .R(SR));
  CARRY4 \seq_cnt_reg[12]_i_1 
       (.CI(\seq_cnt_reg[8]_i_1_n_0 ),
        .CO({\seq_cnt_reg[12]_i_1_n_0 ,\seq_cnt_reg[12]_i_1_n_1 ,\seq_cnt_reg[12]_i_1_n_2 ,\seq_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\seq_cnt_reg[12]_i_1_n_4 ,\seq_cnt_reg[12]_i_1_n_5 ,\seq_cnt_reg[12]_i_1_n_6 ,\seq_cnt_reg[12]_i_1_n_7 }),
        .S(seq_cnt_reg[15:12]));
  FDRE \seq_cnt_reg[13] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[12]_i_1_n_6 ),
        .Q(seq_cnt_reg[13]),
        .R(SR));
  FDRE \seq_cnt_reg[14] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[12]_i_1_n_5 ),
        .Q(seq_cnt_reg[14]),
        .R(SR));
  FDRE \seq_cnt_reg[15] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[12]_i_1_n_4 ),
        .Q(seq_cnt_reg[15]),
        .R(SR));
  FDRE \seq_cnt_reg[16] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[16]_i_1_n_7 ),
        .Q(seq_cnt_reg[16]),
        .R(SR));
  CARRY4 \seq_cnt_reg[16]_i_1 
       (.CI(\seq_cnt_reg[12]_i_1_n_0 ),
        .CO({\seq_cnt_reg[16]_i_1_n_0 ,\seq_cnt_reg[16]_i_1_n_1 ,\seq_cnt_reg[16]_i_1_n_2 ,\seq_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\seq_cnt_reg[16]_i_1_n_4 ,\seq_cnt_reg[16]_i_1_n_5 ,\seq_cnt_reg[16]_i_1_n_6 ,\seq_cnt_reg[16]_i_1_n_7 }),
        .S(seq_cnt_reg[19:16]));
  FDRE \seq_cnt_reg[17] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[16]_i_1_n_6 ),
        .Q(seq_cnt_reg[17]),
        .R(SR));
  FDRE \seq_cnt_reg[18] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[16]_i_1_n_5 ),
        .Q(seq_cnt_reg[18]),
        .R(SR));
  FDRE \seq_cnt_reg[19] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[16]_i_1_n_4 ),
        .Q(seq_cnt_reg[19]),
        .R(SR));
  FDRE \seq_cnt_reg[1] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[0]_i_2_n_6 ),
        .Q(seq_cnt_reg[1]),
        .R(SR));
  FDRE \seq_cnt_reg[20] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[20]_i_1_n_7 ),
        .Q(seq_cnt_reg[20]),
        .R(SR));
  CARRY4 \seq_cnt_reg[20]_i_1 
       (.CI(\seq_cnt_reg[16]_i_1_n_0 ),
        .CO({\NLW_seq_cnt_reg[20]_i_1_CO_UNCONNECTED [3],\seq_cnt_reg[20]_i_1_n_1 ,\seq_cnt_reg[20]_i_1_n_2 ,\seq_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\seq_cnt_reg[20]_i_1_n_4 ,\seq_cnt_reg[20]_i_1_n_5 ,\seq_cnt_reg[20]_i_1_n_6 ,\seq_cnt_reg[20]_i_1_n_7 }),
        .S(seq_cnt_reg[23:20]));
  FDRE \seq_cnt_reg[21] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[20]_i_1_n_6 ),
        .Q(seq_cnt_reg[21]),
        .R(SR));
  FDRE \seq_cnt_reg[22] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[20]_i_1_n_5 ),
        .Q(seq_cnt_reg[22]),
        .R(SR));
  FDRE \seq_cnt_reg[23] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[20]_i_1_n_4 ),
        .Q(seq_cnt_reg[23]),
        .R(SR));
  FDRE \seq_cnt_reg[2] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[0]_i_2_n_5 ),
        .Q(seq_cnt_reg[2]),
        .R(SR));
  FDRE \seq_cnt_reg[3] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[0]_i_2_n_4 ),
        .Q(seq_cnt_reg[3]),
        .R(SR));
  FDRE \seq_cnt_reg[4] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[4]_i_1_n_7 ),
        .Q(seq_cnt_reg[4]),
        .R(SR));
  CARRY4 \seq_cnt_reg[4]_i_1 
       (.CI(\seq_cnt_reg[0]_i_2_n_0 ),
        .CO({\seq_cnt_reg[4]_i_1_n_0 ,\seq_cnt_reg[4]_i_1_n_1 ,\seq_cnt_reg[4]_i_1_n_2 ,\seq_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\seq_cnt_reg[4]_i_1_n_4 ,\seq_cnt_reg[4]_i_1_n_5 ,\seq_cnt_reg[4]_i_1_n_6 ,\seq_cnt_reg[4]_i_1_n_7 }),
        .S(seq_cnt_reg[7:4]));
  FDRE \seq_cnt_reg[5] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[4]_i_1_n_6 ),
        .Q(seq_cnt_reg[5]),
        .R(SR));
  FDRE \seq_cnt_reg[6] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[4]_i_1_n_5 ),
        .Q(seq_cnt_reg[6]),
        .R(SR));
  FDRE \seq_cnt_reg[7] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[4]_i_1_n_4 ),
        .Q(seq_cnt_reg[7]),
        .R(SR));
  FDRE \seq_cnt_reg[8] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[8]_i_1_n_7 ),
        .Q(seq_cnt_reg[8]),
        .R(SR));
  CARRY4 \seq_cnt_reg[8]_i_1 
       (.CI(\seq_cnt_reg[4]_i_1_n_0 ),
        .CO({\seq_cnt_reg[8]_i_1_n_0 ,\seq_cnt_reg[8]_i_1_n_1 ,\seq_cnt_reg[8]_i_1_n_2 ,\seq_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\seq_cnt_reg[8]_i_1_n_4 ,\seq_cnt_reg[8]_i_1_n_5 ,\seq_cnt_reg[8]_i_1_n_6 ,\seq_cnt_reg[8]_i_1_n_7 }),
        .S(seq_cnt_reg[11:8]));
  FDRE \seq_cnt_reg[9] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\seq_cnt_reg[8]_i_1_n_6 ),
        .Q(seq_cnt_reg[9]),
        .R(SR));
  CARRY4 skip_cnt1_carry
       (.CI(1'b0),
        .CO({skip_cnt1_carry_n_0,skip_cnt1_carry_n_1,skip_cnt1_carry_n_2,skip_cnt1_carry_n_3}),
        .CYINIT(skip_cnt[0]),
        .DI(skip_cnt[4:1]),
        .O(data1[4:1]),
        .S({skip_cnt1_carry_i_1_n_0,skip_cnt1_carry_i_2_n_0,skip_cnt1_carry_i_3_n_0,skip_cnt1_carry_i_4_n_0}));
  CARRY4 skip_cnt1_carry__0
       (.CI(skip_cnt1_carry_n_0),
        .CO({skip_cnt1_carry__0_n_0,skip_cnt1_carry__0_n_1,skip_cnt1_carry__0_n_2,skip_cnt1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(skip_cnt[8:5]),
        .O(data1[8:5]),
        .S({skip_cnt1_carry__0_i_1_n_0,skip_cnt1_carry__0_i_2_n_0,skip_cnt1_carry__0_i_3_n_0,skip_cnt1_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__0_i_1
       (.I0(skip_cnt[8]),
        .O(skip_cnt1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__0_i_2
       (.I0(skip_cnt[7]),
        .O(skip_cnt1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__0_i_3
       (.I0(skip_cnt[6]),
        .O(skip_cnt1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__0_i_4
       (.I0(skip_cnt[5]),
        .O(skip_cnt1_carry__0_i_4_n_0));
  CARRY4 skip_cnt1_carry__1
       (.CI(skip_cnt1_carry__0_n_0),
        .CO({skip_cnt1_carry__1_n_0,skip_cnt1_carry__1_n_1,skip_cnt1_carry__1_n_2,skip_cnt1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(skip_cnt[12:9]),
        .O(data1[12:9]),
        .S({skip_cnt1_carry__1_i_1_n_0,skip_cnt1_carry__1_i_2_n_0,skip_cnt1_carry__1_i_3_n_0,skip_cnt1_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__1_i_1
       (.I0(skip_cnt[12]),
        .O(skip_cnt1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__1_i_2
       (.I0(skip_cnt[11]),
        .O(skip_cnt1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__1_i_3
       (.I0(skip_cnt[10]),
        .O(skip_cnt1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__1_i_4
       (.I0(skip_cnt[9]),
        .O(skip_cnt1_carry__1_i_4_n_0));
  CARRY4 skip_cnt1_carry__2
       (.CI(skip_cnt1_carry__1_n_0),
        .CO({skip_cnt1_carry__2_n_0,skip_cnt1_carry__2_n_1,skip_cnt1_carry__2_n_2,skip_cnt1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(skip_cnt[16:13]),
        .O(data1[16:13]),
        .S({skip_cnt1_carry__2_i_1_n_0,skip_cnt1_carry__2_i_2_n_0,skip_cnt1_carry__2_i_3_n_0,skip_cnt1_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__2_i_1
       (.I0(skip_cnt[16]),
        .O(skip_cnt1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__2_i_2
       (.I0(skip_cnt[15]),
        .O(skip_cnt1_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__2_i_3
       (.I0(skip_cnt[14]),
        .O(skip_cnt1_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__2_i_4
       (.I0(skip_cnt[13]),
        .O(skip_cnt1_carry__2_i_4_n_0));
  CARRY4 skip_cnt1_carry__3
       (.CI(skip_cnt1_carry__2_n_0),
        .CO({skip_cnt1_carry__3_n_0,skip_cnt1_carry__3_n_1,skip_cnt1_carry__3_n_2,skip_cnt1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(skip_cnt[20:17]),
        .O(data1[20:17]),
        .S({skip_cnt1_carry__3_i_1_n_0,skip_cnt1_carry__3_i_2_n_0,skip_cnt1_carry__3_i_3_n_0,skip_cnt1_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__3_i_1
       (.I0(skip_cnt[20]),
        .O(skip_cnt1_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__3_i_2
       (.I0(skip_cnt[19]),
        .O(skip_cnt1_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__3_i_3
       (.I0(skip_cnt[18]),
        .O(skip_cnt1_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__3_i_4
       (.I0(skip_cnt[17]),
        .O(skip_cnt1_carry__3_i_4_n_0));
  CARRY4 skip_cnt1_carry__4
       (.CI(skip_cnt1_carry__3_n_0),
        .CO({skip_cnt1_carry__4_n_0,skip_cnt1_carry__4_n_1,skip_cnt1_carry__4_n_2,skip_cnt1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(skip_cnt[24:21]),
        .O(data1[24:21]),
        .S({skip_cnt1_carry__4_i_1_n_0,skip_cnt1_carry__4_i_2_n_0,skip_cnt1_carry__4_i_3_n_0,skip_cnt1_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__4_i_1
       (.I0(skip_cnt[24]),
        .O(skip_cnt1_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__4_i_2
       (.I0(skip_cnt[23]),
        .O(skip_cnt1_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__4_i_3
       (.I0(skip_cnt[22]),
        .O(skip_cnt1_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__4_i_4
       (.I0(skip_cnt[21]),
        .O(skip_cnt1_carry__4_i_4_n_0));
  CARRY4 skip_cnt1_carry__5
       (.CI(skip_cnt1_carry__4_n_0),
        .CO({skip_cnt1_carry__5_n_0,skip_cnt1_carry__5_n_1,skip_cnt1_carry__5_n_2,skip_cnt1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(skip_cnt[28:25]),
        .O(data1[28:25]),
        .S({skip_cnt1_carry__5_i_1_n_0,skip_cnt1_carry__5_i_2_n_0,skip_cnt1_carry__5_i_3_n_0,skip_cnt1_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__5_i_1
       (.I0(skip_cnt[28]),
        .O(skip_cnt1_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__5_i_2
       (.I0(skip_cnt[27]),
        .O(skip_cnt1_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__5_i_3
       (.I0(skip_cnt[26]),
        .O(skip_cnt1_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__5_i_4
       (.I0(skip_cnt[25]),
        .O(skip_cnt1_carry__5_i_4_n_0));
  CARRY4 skip_cnt1_carry__6
       (.CI(skip_cnt1_carry__5_n_0),
        .CO({NLW_skip_cnt1_carry__6_CO_UNCONNECTED[3:2],skip_cnt1_carry__6_n_2,skip_cnt1_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,skip_cnt[30:29]}),
        .O({NLW_skip_cnt1_carry__6_O_UNCONNECTED[3],data1[31:29]}),
        .S({1'b0,skip_cnt1_carry__6_i_1_n_0,skip_cnt1_carry__6_i_2_n_0,skip_cnt1_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__6_i_1
       (.I0(skip_cnt[31]),
        .O(skip_cnt1_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__6_i_2
       (.I0(skip_cnt[30]),
        .O(skip_cnt1_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry__6_i_3
       (.I0(skip_cnt[29]),
        .O(skip_cnt1_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry_i_1
       (.I0(skip_cnt[4]),
        .O(skip_cnt1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry_i_2
       (.I0(skip_cnt[3]),
        .O(skip_cnt1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry_i_3
       (.I0(skip_cnt[2]),
        .O(skip_cnt1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt1_carry_i_4
       (.I0(skip_cnt[1]),
        .O(skip_cnt1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \skip_cnt[0]_i_1 
       (.I0(skip_limit[0]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(skip_cnt[0]),
        .O(\skip_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[10]_i_1 
       (.I0(skip_limit[10]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[10]),
        .O(\skip_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[11]_i_1 
       (.I0(skip_limit[11]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[11]),
        .O(\skip_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[12]_i_1 
       (.I0(skip_limit[12]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[12]),
        .O(\skip_cnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[13]_i_1 
       (.I0(skip_limit[13]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[13]),
        .O(\skip_cnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[14]_i_1 
       (.I0(skip_limit[14]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[14]),
        .O(\skip_cnt[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[15]_i_1 
       (.I0(skip_limit[15]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[15]),
        .O(\skip_cnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[16]_i_1 
       (.I0(skip_limit[16]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[16]),
        .O(\skip_cnt[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[17]_i_1 
       (.I0(skip_limit[17]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[17]),
        .O(\skip_cnt[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[18]_i_1 
       (.I0(skip_limit[18]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[18]),
        .O(\skip_cnt[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[19]_i_1 
       (.I0(skip_limit[19]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[19]),
        .O(\skip_cnt[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[1]_i_1 
       (.I0(skip_limit[1]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[1]),
        .O(\skip_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[20]_i_1 
       (.I0(skip_limit[20]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[20]),
        .O(\skip_cnt[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[21]_i_1 
       (.I0(skip_limit[21]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[21]),
        .O(\skip_cnt[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[22]_i_1 
       (.I0(skip_limit[22]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[22]),
        .O(\skip_cnt[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[23]_i_1 
       (.I0(skip_limit[23]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[23]),
        .O(\skip_cnt[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[24]_i_1 
       (.I0(skip_limit[24]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[24]),
        .O(\skip_cnt[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[25]_i_1 
       (.I0(skip_limit[25]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[25]),
        .O(\skip_cnt[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[26]_i_1 
       (.I0(skip_limit[26]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[26]),
        .O(\skip_cnt[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[27]_i_1 
       (.I0(skip_limit[27]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[27]),
        .O(\skip_cnt[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[28]_i_1 
       (.I0(skip_limit[28]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[28]),
        .O(\skip_cnt[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[29]_i_1 
       (.I0(skip_limit[29]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[29]),
        .O(\skip_cnt[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[2]_i_1 
       (.I0(skip_limit[2]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[2]),
        .O(\skip_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[30]_i_1 
       (.I0(skip_limit[30]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[30]),
        .O(\skip_cnt[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \skip_cnt[31]_i_1 
       (.I0(ts_en_d),
        .I1(out),
        .I2(\skip_cnt_reg[31]_0 ),
        .O(\skip_cnt[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \skip_cnt[31]_i_2 
       (.I0(edge_d2),
        .I1(out),
        .O(p_5_in));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[31]_i_3 
       (.I0(skip_limit[31]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[31]),
        .O(\skip_cnt[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \skip_cnt[31]_i_4 
       (.I0(\skip_cnt[31]_i_5_n_0 ),
        .I1(\skip_cnt[31]_i_6_n_0 ),
        .I2(\skip_cnt[31]_i_7_n_0 ),
        .I3(\skip_cnt[31]_i_8_n_0 ),
        .I4(\skip_cnt[31]_i_9_n_0 ),
        .O(\skip_cnt[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \skip_cnt[31]_i_5 
       (.I0(skip_cnt[9]),
        .I1(skip_cnt[8]),
        .I2(skip_cnt[11]),
        .I3(skip_cnt[10]),
        .O(\skip_cnt[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \skip_cnt[31]_i_6 
       (.I0(skip_cnt[15]),
        .I1(skip_cnt[14]),
        .I2(skip_cnt[13]),
        .I3(skip_cnt[12]),
        .O(\skip_cnt[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \skip_cnt[31]_i_7 
       (.I0(skip_cnt[1]),
        .I1(skip_cnt[0]),
        .I2(skip_cnt[3]),
        .I3(skip_cnt[2]),
        .O(\skip_cnt[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \skip_cnt[31]_i_8 
       (.I0(skip_cnt[7]),
        .I1(skip_cnt[6]),
        .I2(skip_cnt[5]),
        .I3(skip_cnt[4]),
        .O(\skip_cnt[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \skip_cnt[31]_i_9 
       (.I0(fifo_mem_reg_7_i_7_n_0),
        .I1(fifo_mem_reg_7_i_6_n_0),
        .I2(fifo_mem_reg_7_i_8_n_0),
        .I3(fifo_mem_reg_7_i_9_n_0),
        .O(\skip_cnt[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[3]_i_1 
       (.I0(skip_limit[3]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[3]),
        .O(\skip_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[4]_i_1 
       (.I0(skip_limit[4]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[4]),
        .O(\skip_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[5]_i_1 
       (.I0(skip_limit[5]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[5]),
        .O(\skip_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[6]_i_1 
       (.I0(skip_limit[6]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[6]),
        .O(\skip_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[7]_i_1 
       (.I0(skip_limit[7]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[7]),
        .O(\skip_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[8]_i_1 
       (.I0(skip_limit[8]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[8]),
        .O(\skip_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skip_cnt[9]_i_1 
       (.I0(skip_limit[9]),
        .I1(\skip_cnt[31]_i_4_n_0 ),
        .I2(data1[9]),
        .O(\skip_cnt[9]_i_1_n_0 ));
  FDRE \skip_cnt_reg[0] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[0]_i_1_n_0 ),
        .Q(skip_cnt[0]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[10] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[10]_i_1_n_0 ),
        .Q(skip_cnt[10]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[11] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[11]_i_1_n_0 ),
        .Q(skip_cnt[11]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[12] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[12]_i_1_n_0 ),
        .Q(skip_cnt[12]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[13] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[13]_i_1_n_0 ),
        .Q(skip_cnt[13]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[14] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[14]_i_1_n_0 ),
        .Q(skip_cnt[14]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[15] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[15]_i_1_n_0 ),
        .Q(skip_cnt[15]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[16] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[16]_i_1_n_0 ),
        .Q(skip_cnt[16]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[17] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[17]_i_1_n_0 ),
        .Q(skip_cnt[17]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[18] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[18]_i_1_n_0 ),
        .Q(skip_cnt[18]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[19] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[19]_i_1_n_0 ),
        .Q(skip_cnt[19]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[1] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[1]_i_1_n_0 ),
        .Q(skip_cnt[1]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[20] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[20]_i_1_n_0 ),
        .Q(skip_cnt[20]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[21] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[21]_i_1_n_0 ),
        .Q(skip_cnt[21]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[22] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[22]_i_1_n_0 ),
        .Q(skip_cnt[22]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[23] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[23]_i_1_n_0 ),
        .Q(skip_cnt[23]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[24] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[24]_i_1_n_0 ),
        .Q(skip_cnt[24]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[25] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[25]_i_1_n_0 ),
        .Q(skip_cnt[25]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[26] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[26]_i_1_n_0 ),
        .Q(skip_cnt[26]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[27] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[27]_i_1_n_0 ),
        .Q(skip_cnt[27]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[28] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[28]_i_1_n_0 ),
        .Q(skip_cnt[28]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[29] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[29]_i_1_n_0 ),
        .Q(skip_cnt[29]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[2] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[2]_i_1_n_0 ),
        .Q(skip_cnt[2]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[30] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[30]_i_1_n_0 ),
        .Q(skip_cnt[30]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[31] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[31]_i_3_n_0 ),
        .Q(skip_cnt[31]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[3] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[3]_i_1_n_0 ),
        .Q(skip_cnt[3]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[4] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[4]_i_1_n_0 ),
        .Q(skip_cnt[4]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[5] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[5]_i_1_n_0 ),
        .Q(skip_cnt[5]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[6] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[6]_i_1_n_0 ),
        .Q(skip_cnt[6]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[7] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[7]_i_1_n_0 ),
        .Q(skip_cnt[7]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[8] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[8]_i_1_n_0 ),
        .Q(skip_cnt[8]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_cnt_reg[9] 
       (.C(CLK),
        .CE(p_5_in),
        .D(\skip_cnt[9]_i_1_n_0 ),
        .Q(skip_cnt[9]),
        .R(\skip_cnt[31]_i_1_n_0 ));
  FDRE \skip_limit_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(skip_limit[0]),
        .R(SR));
  FDRE \skip_limit_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(D[10]),
        .Q(skip_limit[10]),
        .R(SR));
  FDRE \skip_limit_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(D[11]),
        .Q(skip_limit[11]),
        .R(SR));
  FDRE \skip_limit_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(D[12]),
        .Q(skip_limit[12]),
        .R(SR));
  FDRE \skip_limit_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(D[13]),
        .Q(skip_limit[13]),
        .R(SR));
  FDRE \skip_limit_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(D[14]),
        .Q(skip_limit[14]),
        .R(SR));
  FDRE \skip_limit_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(D[15]),
        .Q(skip_limit[15]),
        .R(SR));
  FDRE \skip_limit_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(D[16]),
        .Q(skip_limit[16]),
        .R(SR));
  FDRE \skip_limit_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(D[17]),
        .Q(skip_limit[17]),
        .R(SR));
  FDRE \skip_limit_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(D[18]),
        .Q(skip_limit[18]),
        .R(SR));
  FDRE \skip_limit_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(D[19]),
        .Q(skip_limit[19]),
        .R(SR));
  FDRE \skip_limit_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(skip_limit[1]),
        .R(SR));
  FDRE \skip_limit_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(D[20]),
        .Q(skip_limit[20]),
        .R(SR));
  FDRE \skip_limit_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(D[21]),
        .Q(skip_limit[21]),
        .R(SR));
  FDRE \skip_limit_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(D[22]),
        .Q(skip_limit[22]),
        .R(SR));
  FDRE \skip_limit_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(D[23]),
        .Q(skip_limit[23]),
        .R(SR));
  FDRE \skip_limit_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(D[24]),
        .Q(skip_limit[24]),
        .R(SR));
  FDRE \skip_limit_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(D[25]),
        .Q(skip_limit[25]),
        .R(SR));
  FDRE \skip_limit_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(D[26]),
        .Q(skip_limit[26]),
        .R(SR));
  FDRE \skip_limit_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(D[27]),
        .Q(skip_limit[27]),
        .R(SR));
  FDRE \skip_limit_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(D[28]),
        .Q(skip_limit[28]),
        .R(SR));
  FDRE \skip_limit_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(D[29]),
        .Q(skip_limit[29]),
        .R(SR));
  FDRE \skip_limit_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(skip_limit[2]),
        .R(SR));
  FDRE \skip_limit_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(D[30]),
        .Q(skip_limit[30]),
        .R(SR));
  FDRE \skip_limit_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(D[31]),
        .Q(skip_limit[31]),
        .R(SR));
  FDRE \skip_limit_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(skip_limit[3]),
        .R(SR));
  FDRE \skip_limit_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(skip_limit[4]),
        .R(SR));
  FDRE \skip_limit_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(skip_limit[5]),
        .R(SR));
  FDRE \skip_limit_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(skip_limit[6]),
        .R(SR));
  FDRE \skip_limit_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(skip_limit[7]),
        .R(SR));
  FDRE \skip_limit_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(D[8]),
        .Q(skip_limit[8]),
        .R(SR));
  FDRE \skip_limit_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(D[9]),
        .Q(skip_limit[9]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \ts_count_fs[0]_i_2 
       (.I0(ts_count_fs_reg[0]),
        .O(\ts_count_fs[0]_i_2_n_0 ));
  FDRE \ts_count_fs_reg[0] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[0]_i_1_n_7 ),
        .Q(ts_count_fs_reg[0]),
        .R(SR));
  CARRY4 \ts_count_fs_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\ts_count_fs_reg[0]_i_1_n_0 ,\ts_count_fs_reg[0]_i_1_n_1 ,\ts_count_fs_reg[0]_i_1_n_2 ,\ts_count_fs_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ts_count_fs_reg[0]_i_1_n_4 ,\ts_count_fs_reg[0]_i_1_n_5 ,\ts_count_fs_reg[0]_i_1_n_6 ,\ts_count_fs_reg[0]_i_1_n_7 }),
        .S({ts_count_fs_reg[3:1],\ts_count_fs[0]_i_2_n_0 }));
  FDRE \ts_count_fs_reg[10] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[8]_i_1_n_5 ),
        .Q(ts_count_fs_reg[10]),
        .R(SR));
  FDRE \ts_count_fs_reg[11] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[8]_i_1_n_4 ),
        .Q(ts_count_fs_reg[11]),
        .R(SR));
  FDRE \ts_count_fs_reg[12] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[12]_i_1_n_7 ),
        .Q(ts_count_fs_reg[12]),
        .R(SR));
  CARRY4 \ts_count_fs_reg[12]_i_1 
       (.CI(\ts_count_fs_reg[8]_i_1_n_0 ),
        .CO({\ts_count_fs_reg[12]_i_1_n_0 ,\ts_count_fs_reg[12]_i_1_n_1 ,\ts_count_fs_reg[12]_i_1_n_2 ,\ts_count_fs_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ts_count_fs_reg[12]_i_1_n_4 ,\ts_count_fs_reg[12]_i_1_n_5 ,\ts_count_fs_reg[12]_i_1_n_6 ,\ts_count_fs_reg[12]_i_1_n_7 }),
        .S(ts_count_fs_reg[15:12]));
  FDRE \ts_count_fs_reg[13] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[12]_i_1_n_6 ),
        .Q(ts_count_fs_reg[13]),
        .R(SR));
  FDRE \ts_count_fs_reg[14] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[12]_i_1_n_5 ),
        .Q(ts_count_fs_reg[14]),
        .R(SR));
  FDRE \ts_count_fs_reg[15] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[12]_i_1_n_4 ),
        .Q(ts_count_fs_reg[15]),
        .R(SR));
  FDRE \ts_count_fs_reg[16] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[16]_i_1_n_7 ),
        .Q(ts_count_fs_reg[16]),
        .R(SR));
  CARRY4 \ts_count_fs_reg[16]_i_1 
       (.CI(\ts_count_fs_reg[12]_i_1_n_0 ),
        .CO({\ts_count_fs_reg[16]_i_1_n_0 ,\ts_count_fs_reg[16]_i_1_n_1 ,\ts_count_fs_reg[16]_i_1_n_2 ,\ts_count_fs_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ts_count_fs_reg[16]_i_1_n_4 ,\ts_count_fs_reg[16]_i_1_n_5 ,\ts_count_fs_reg[16]_i_1_n_6 ,\ts_count_fs_reg[16]_i_1_n_7 }),
        .S(ts_count_fs_reg[19:16]));
  FDRE \ts_count_fs_reg[17] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[16]_i_1_n_6 ),
        .Q(ts_count_fs_reg[17]),
        .R(SR));
  FDRE \ts_count_fs_reg[18] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[16]_i_1_n_5 ),
        .Q(ts_count_fs_reg[18]),
        .R(SR));
  FDRE \ts_count_fs_reg[19] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[16]_i_1_n_4 ),
        .Q(ts_count_fs_reg[19]),
        .R(SR));
  FDRE \ts_count_fs_reg[1] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[0]_i_1_n_6 ),
        .Q(ts_count_fs_reg[1]),
        .R(SR));
  FDRE \ts_count_fs_reg[20] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[20]_i_1_n_7 ),
        .Q(ts_count_fs_reg[20]),
        .R(SR));
  CARRY4 \ts_count_fs_reg[20]_i_1 
       (.CI(\ts_count_fs_reg[16]_i_1_n_0 ),
        .CO({\ts_count_fs_reg[20]_i_1_n_0 ,\ts_count_fs_reg[20]_i_1_n_1 ,\ts_count_fs_reg[20]_i_1_n_2 ,\ts_count_fs_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ts_count_fs_reg[20]_i_1_n_4 ,\ts_count_fs_reg[20]_i_1_n_5 ,\ts_count_fs_reg[20]_i_1_n_6 ,\ts_count_fs_reg[20]_i_1_n_7 }),
        .S(ts_count_fs_reg[23:20]));
  FDRE \ts_count_fs_reg[21] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[20]_i_1_n_6 ),
        .Q(ts_count_fs_reg[21]),
        .R(SR));
  FDRE \ts_count_fs_reg[22] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[20]_i_1_n_5 ),
        .Q(ts_count_fs_reg[22]),
        .R(SR));
  FDRE \ts_count_fs_reg[23] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[20]_i_1_n_4 ),
        .Q(ts_count_fs_reg[23]),
        .R(SR));
  FDRE \ts_count_fs_reg[24] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[24]_i_1_n_7 ),
        .Q(ts_count_fs_reg[24]),
        .R(SR));
  CARRY4 \ts_count_fs_reg[24]_i_1 
       (.CI(\ts_count_fs_reg[20]_i_1_n_0 ),
        .CO({\ts_count_fs_reg[24]_i_1_n_0 ,\ts_count_fs_reg[24]_i_1_n_1 ,\ts_count_fs_reg[24]_i_1_n_2 ,\ts_count_fs_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ts_count_fs_reg[24]_i_1_n_4 ,\ts_count_fs_reg[24]_i_1_n_5 ,\ts_count_fs_reg[24]_i_1_n_6 ,\ts_count_fs_reg[24]_i_1_n_7 }),
        .S(ts_count_fs_reg[27:24]));
  FDRE \ts_count_fs_reg[25] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[24]_i_1_n_6 ),
        .Q(ts_count_fs_reg[25]),
        .R(SR));
  FDRE \ts_count_fs_reg[26] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[24]_i_1_n_5 ),
        .Q(ts_count_fs_reg[26]),
        .R(SR));
  FDRE \ts_count_fs_reg[27] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[24]_i_1_n_4 ),
        .Q(ts_count_fs_reg[27]),
        .R(SR));
  FDRE \ts_count_fs_reg[28] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[28]_i_1_n_7 ),
        .Q(ts_count_fs_reg[28]),
        .R(SR));
  CARRY4 \ts_count_fs_reg[28]_i_1 
       (.CI(\ts_count_fs_reg[24]_i_1_n_0 ),
        .CO({\NLW_ts_count_fs_reg[28]_i_1_CO_UNCONNECTED [3],\ts_count_fs_reg[28]_i_1_n_1 ,\ts_count_fs_reg[28]_i_1_n_2 ,\ts_count_fs_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ts_count_fs_reg[28]_i_1_n_4 ,\ts_count_fs_reg[28]_i_1_n_5 ,\ts_count_fs_reg[28]_i_1_n_6 ,\ts_count_fs_reg[28]_i_1_n_7 }),
        .S(ts_count_fs_reg[31:28]));
  FDRE \ts_count_fs_reg[29] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[28]_i_1_n_6 ),
        .Q(ts_count_fs_reg[29]),
        .R(SR));
  FDRE \ts_count_fs_reg[2] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[0]_i_1_n_5 ),
        .Q(ts_count_fs_reg[2]),
        .R(SR));
  FDRE \ts_count_fs_reg[30] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[28]_i_1_n_5 ),
        .Q(ts_count_fs_reg[30]),
        .R(SR));
  FDRE \ts_count_fs_reg[31] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[28]_i_1_n_4 ),
        .Q(ts_count_fs_reg[31]),
        .R(SR));
  FDRE \ts_count_fs_reg[3] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[0]_i_1_n_4 ),
        .Q(ts_count_fs_reg[3]),
        .R(SR));
  FDRE \ts_count_fs_reg[4] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[4]_i_1_n_7 ),
        .Q(ts_count_fs_reg[4]),
        .R(SR));
  CARRY4 \ts_count_fs_reg[4]_i_1 
       (.CI(\ts_count_fs_reg[0]_i_1_n_0 ),
        .CO({\ts_count_fs_reg[4]_i_1_n_0 ,\ts_count_fs_reg[4]_i_1_n_1 ,\ts_count_fs_reg[4]_i_1_n_2 ,\ts_count_fs_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ts_count_fs_reg[4]_i_1_n_4 ,\ts_count_fs_reg[4]_i_1_n_5 ,\ts_count_fs_reg[4]_i_1_n_6 ,\ts_count_fs_reg[4]_i_1_n_7 }),
        .S(ts_count_fs_reg[7:4]));
  FDRE \ts_count_fs_reg[5] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[4]_i_1_n_6 ),
        .Q(ts_count_fs_reg[5]),
        .R(SR));
  FDRE \ts_count_fs_reg[6] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[4]_i_1_n_5 ),
        .Q(ts_count_fs_reg[6]),
        .R(SR));
  FDRE \ts_count_fs_reg[7] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[4]_i_1_n_4 ),
        .Q(ts_count_fs_reg[7]),
        .R(SR));
  FDRE \ts_count_fs_reg[8] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[8]_i_1_n_7 ),
        .Q(ts_count_fs_reg[8]),
        .R(SR));
  CARRY4 \ts_count_fs_reg[8]_i_1 
       (.CI(\ts_count_fs_reg[4]_i_1_n_0 ),
        .CO({\ts_count_fs_reg[8]_i_1_n_0 ,\ts_count_fs_reg[8]_i_1_n_1 ,\ts_count_fs_reg[8]_i_1_n_2 ,\ts_count_fs_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ts_count_fs_reg[8]_i_1_n_4 ,\ts_count_fs_reg[8]_i_1_n_5 ,\ts_count_fs_reg[8]_i_1_n_6 ,\ts_count_fs_reg[8]_i_1_n_7 }),
        .S(ts_count_fs_reg[11:8]));
  FDRE \ts_count_fs_reg[9] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\ts_count_fs_reg[8]_i_1_n_6 ),
        .Q(ts_count_fs_reg[9]),
        .R(SR));
  FDRE ts_en_d_reg
       (.C(CLK),
        .CE(1'b1),
        .D(out),
        .Q(ts_en_d),
        .R(SR));
  ps_Counter_Core_0_1_cnt_cdc__parameterized0 u_lost_cnt_cdc
       (.CLK(CLK),
        .SR(SR),
        .dst_cnt(\gray_s2_reg[31] ),
        .\gray_s1_reg[0]_0 (\gray_s1_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .src_cnt(lost_count_fs_reg));
  ps_Counter_Core_0_1_bit_sync_6 u_ovf_sync
       (.D(ovf_sticky),
        .s_axi_aclk(s_axi_aclk),
        .\sync_reg[0]_0 (\gray_s1_reg[0] ),
        .\sync_reg[1]_0 (\sync_reg[1] ));
  ps_Counter_Core_0_1_cnt_cdc u_rd_ptr_cdc
       (.CLK(CLK),
        .CO(fifo_full0),
        .E(p_5_in),
        .S({u_rd_ptr_cdc_n_2,u_rd_ptr_cdc_n_3,u_rd_ptr_cdc_n_4,u_rd_ptr_cdc_n_5}),
        .SR(SR),
        .WEA(wr_en0),
        .do_capture0__25(do_capture0__25),
        .edge_d2(edge_d2),
        .edge_d2_reg(u_rd_ptr_cdc_n_1),
        .fifo_full0_carry(\wr_ptr_bin_reg_n_0_[9] ),
        .fifo_full0_carry_0(\wr_ptr_bin_reg_n_0_[11] ),
        .fifo_full0_carry_1(\wr_ptr_bin_reg_n_0_[10] ),
        .fifo_full0_carry_2(\wr_ptr_bin_reg_n_0_[3] ),
        .fifo_full0_carry_3(\wr_ptr_bin_reg_n_0_[4] ),
        .fifo_full0_carry_4(\wr_ptr_bin_reg_n_0_[6] ),
        .fifo_full0_carry_5(\wr_ptr_bin_reg_n_0_[0] ),
        .fifo_full0_carry_6(\wr_ptr_bin_reg_n_0_[2] ),
        .fifo_full0_carry_7(\wr_ptr_bin_reg_n_0_[1] ),
        .fifo_full0_carry_i_2_0(\wr_ptr_bin_reg_n_0_[7] ),
        .fifo_full0_carry_i_2_1(\wr_ptr_bin_reg_n_0_[8] ),
        .fifo_full0_carry_i_3_0(\wr_ptr_bin_reg_n_0_[5] ),
        .\gray_src_reg[0]_0 (\gray_s1_reg[0] ),
        .\gray_src_reg[12]_0 (rd_ptr_bin_reg),
        .out(out),
        .p_1_in(p_1_in),
        .s_axi_aclk(s_axi_aclk),
        .ts_word(ovf_mark),
        .wr_drop(wr_drop),
        .\wr_ptr_bin_reg[12] (u_rd_ptr_cdc_n_0));
  ps_Counter_Core_0_1_tdc u_tdc
       (.CLK(CLK),
        .SR(SR),
        .clk_fx(clk_fx),
        .ts_word({tdc_value,tdc_valid}));
  ps_Counter_Core_0_1_cnt_cdc__parameterized0_7 u_ts_cnt_cdc
       (.CLK(CLK),
        .CO(int_empty),
        .D(D[4]),
        .SR(SR),
        .\axi_araddr_reg[3] (\axi_araddr_reg[3] ),
        .\axi_rdata_reg[4] (\axi_rdata_reg[4]_0 ),
        .\axi_rdata_reg[4]_0 (out_valid_reg_0),
        .\axi_rdata_reg[4]_1 (\axi_rdata_reg[4] [1]),
        .dst_cnt(dst_cnt),
        .\gray_s1_reg[0]_0 (\gray_s1_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .src_cnt(ts_count_fs_reg));
  ps_Counter_Core_0_1_cnt_cdc_8 u_wr_ptr_cdc
       (.CLK(CLK),
        .DI({u_wr_ptr_cdc_n_27,u_wr_ptr_cdc_n_28,u_wr_ptr_cdc_n_29}),
        .S({u_wr_ptr_cdc_n_9,u_wr_ptr_cdc_n_10,u_wr_ptr_cdc_n_11,u_wr_ptr_cdc_n_12}),
        .SR(SR),
        .\gray_s1_reg[0]_0 (\gray_s1_reg[0] ),
        .\gray_s2_reg[11]_0 ({u_wr_ptr_cdc_n_23,u_wr_ptr_cdc_n_24,u_wr_ptr_cdc_n_25,u_wr_ptr_cdc_n_26}),
        .\gray_s2_reg[12]_0 (wr_ptr_bin_at_rd),
        .\gray_s2_reg[12]_1 (u_wr_ptr_cdc_n_21),
        .\gray_s2_reg[12]_2 (u_wr_ptr_cdc_n_22),
        .\gray_s2_reg[9]_0 ({u_wr_ptr_cdc_n_17,u_wr_ptr_cdc_n_18,u_wr_ptr_cdc_n_19,u_wr_ptr_cdc_n_20}),
        .\gray_src_reg[0]_0 (\wr_ptr_bin_reg_n_0_[1] ),
        .\gray_src_reg[0]_1 (\wr_ptr_bin_reg_n_0_[0] ),
        .\gray_src_reg[10]_0 (\wr_ptr_bin_reg_n_0_[11] ),
        .\gray_src_reg[1]_0 (\wr_ptr_bin_reg_n_0_[2] ),
        .\gray_src_reg[2]_0 (\wr_ptr_bin_reg_n_0_[3] ),
        .\gray_src_reg[3]_0 (\wr_ptr_bin_reg_n_0_[4] ),
        .\gray_src_reg[4]_0 (\wr_ptr_bin_reg_n_0_[5] ),
        .\gray_src_reg[5]_0 (\wr_ptr_bin_reg_n_0_[6] ),
        .\gray_src_reg[6]_0 (\wr_ptr_bin_reg_n_0_[7] ),
        .\gray_src_reg[7]_0 (\wr_ptr_bin_reg_n_0_[8] ),
        .\gray_src_reg[8]_0 (\wr_ptr_bin_reg_n_0_[9] ),
        .\gray_src_reg[9]_0 (\wr_ptr_bin_reg_n_0_[10] ),
        .out(rd_ptr_bin_reg),
        .p_1_in(p_1_in),
        .\rd_ptr_bin_reg[3] ({u_wr_ptr_cdc_n_13,u_wr_ptr_cdc_n_14,u_wr_ptr_cdc_n_15,u_wr_ptr_cdc_n_16}),
        .s_axi_aclk(s_axi_aclk));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr_bin[0]_i_2 
       (.I0(\wr_ptr_bin_reg_n_0_[0] ),
        .O(\wr_ptr_bin[0]_i_2_n_0 ));
  FDRE \wr_ptr_bin_reg[0] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\wr_ptr_bin_reg[0]_i_1_n_7 ),
        .Q(\wr_ptr_bin_reg_n_0_[0] ),
        .R(SR));
  CARRY4 \wr_ptr_bin_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\wr_ptr_bin_reg[0]_i_1_n_0 ,\wr_ptr_bin_reg[0]_i_1_n_1 ,\wr_ptr_bin_reg[0]_i_1_n_2 ,\wr_ptr_bin_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wr_ptr_bin_reg[0]_i_1_n_4 ,\wr_ptr_bin_reg[0]_i_1_n_5 ,\wr_ptr_bin_reg[0]_i_1_n_6 ,\wr_ptr_bin_reg[0]_i_1_n_7 }),
        .S({\wr_ptr_bin_reg_n_0_[3] ,\wr_ptr_bin_reg_n_0_[2] ,\wr_ptr_bin_reg_n_0_[1] ,\wr_ptr_bin[0]_i_2_n_0 }));
  FDRE \wr_ptr_bin_reg[10] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\wr_ptr_bin_reg[8]_i_1_n_5 ),
        .Q(\wr_ptr_bin_reg_n_0_[10] ),
        .R(SR));
  FDRE \wr_ptr_bin_reg[11] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\wr_ptr_bin_reg[8]_i_1_n_4 ),
        .Q(\wr_ptr_bin_reg_n_0_[11] ),
        .R(SR));
  FDRE \wr_ptr_bin_reg[12] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\wr_ptr_bin_reg[12]_i_1_n_7 ),
        .Q(p_1_in),
        .R(SR));
  CARRY4 \wr_ptr_bin_reg[12]_i_1 
       (.CI(\wr_ptr_bin_reg[8]_i_1_n_0 ),
        .CO(\NLW_wr_ptr_bin_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wr_ptr_bin_reg[12]_i_1_O_UNCONNECTED [3:1],\wr_ptr_bin_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,p_1_in}));
  FDRE \wr_ptr_bin_reg[1] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\wr_ptr_bin_reg[0]_i_1_n_6 ),
        .Q(\wr_ptr_bin_reg_n_0_[1] ),
        .R(SR));
  FDRE \wr_ptr_bin_reg[2] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\wr_ptr_bin_reg[0]_i_1_n_5 ),
        .Q(\wr_ptr_bin_reg_n_0_[2] ),
        .R(SR));
  FDRE \wr_ptr_bin_reg[3] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\wr_ptr_bin_reg[0]_i_1_n_4 ),
        .Q(\wr_ptr_bin_reg_n_0_[3] ),
        .R(SR));
  FDRE \wr_ptr_bin_reg[4] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\wr_ptr_bin_reg[4]_i_1_n_7 ),
        .Q(\wr_ptr_bin_reg_n_0_[4] ),
        .R(SR));
  CARRY4 \wr_ptr_bin_reg[4]_i_1 
       (.CI(\wr_ptr_bin_reg[0]_i_1_n_0 ),
        .CO({\wr_ptr_bin_reg[4]_i_1_n_0 ,\wr_ptr_bin_reg[4]_i_1_n_1 ,\wr_ptr_bin_reg[4]_i_1_n_2 ,\wr_ptr_bin_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wr_ptr_bin_reg[4]_i_1_n_4 ,\wr_ptr_bin_reg[4]_i_1_n_5 ,\wr_ptr_bin_reg[4]_i_1_n_6 ,\wr_ptr_bin_reg[4]_i_1_n_7 }),
        .S({\wr_ptr_bin_reg_n_0_[7] ,\wr_ptr_bin_reg_n_0_[6] ,\wr_ptr_bin_reg_n_0_[5] ,\wr_ptr_bin_reg_n_0_[4] }));
  FDRE \wr_ptr_bin_reg[5] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\wr_ptr_bin_reg[4]_i_1_n_6 ),
        .Q(\wr_ptr_bin_reg_n_0_[5] ),
        .R(SR));
  FDRE \wr_ptr_bin_reg[6] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\wr_ptr_bin_reg[4]_i_1_n_5 ),
        .Q(\wr_ptr_bin_reg_n_0_[6] ),
        .R(SR));
  FDRE \wr_ptr_bin_reg[7] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\wr_ptr_bin_reg[4]_i_1_n_4 ),
        .Q(\wr_ptr_bin_reg_n_0_[7] ),
        .R(SR));
  FDRE \wr_ptr_bin_reg[8] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\wr_ptr_bin_reg[8]_i_1_n_7 ),
        .Q(\wr_ptr_bin_reg_n_0_[8] ),
        .R(SR));
  CARRY4 \wr_ptr_bin_reg[8]_i_1 
       (.CI(\wr_ptr_bin_reg[4]_i_1_n_0 ),
        .CO({\wr_ptr_bin_reg[8]_i_1_n_0 ,\wr_ptr_bin_reg[8]_i_1_n_1 ,\wr_ptr_bin_reg[8]_i_1_n_2 ,\wr_ptr_bin_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wr_ptr_bin_reg[8]_i_1_n_4 ,\wr_ptr_bin_reg[8]_i_1_n_5 ,\wr_ptr_bin_reg[8]_i_1_n_6 ,\wr_ptr_bin_reg[8]_i_1_n_7 }),
        .S({\wr_ptr_bin_reg_n_0_[11] ,\wr_ptr_bin_reg_n_0_[10] ,\wr_ptr_bin_reg_n_0_[9] ,\wr_ptr_bin_reg_n_0_[8] }));
  FDRE \wr_ptr_bin_reg[9] 
       (.C(CLK),
        .CE(u_rd_ptr_cdc_n_1),
        .D(\wr_ptr_bin_reg[8]_i_1_n_6 ),
        .Q(\wr_ptr_bin_reg_n_0_[9] ),
        .R(SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
