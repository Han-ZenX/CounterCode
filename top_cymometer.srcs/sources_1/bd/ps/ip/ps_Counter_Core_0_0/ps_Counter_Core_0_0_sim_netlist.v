// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Aug 18 11:10:11 2026
// Host        : DESKTOP-9L351U0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/CounterCode/top_cymometer.srcs/sources_1/bd/ps/ip/ps_Counter_Core_0_0/ps_Counter_Core_0_0_sim_netlist.v
// Design      : ps_Counter_Core_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_Counter_Core_0_0,Counter_Core_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "Counter_Core_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module ps_Counter_Core_0_0
   (clk_fs_p,
    clk_fs_n,
    clk_fx_p,
    clk_fx_n,
    clk_10m,
    stream_aresetn,
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
  input clk_10m;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 stream_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output stream_aresetn;
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
  (* IBUF_LOW_PWR = 0 *) (* IOSTANDARD = "LVCMOS33" *) wire clk_10m;
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
  wire stream_aresetn;

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
  ps_Counter_Core_0_0_Counter_Core_v1_0 inst
       (.axi_arready_reg(s_axi_arready),
        .axi_awready_reg(s_axi_awready),
        .axi_wready_reg(s_axi_wready),
        .clk_10m(clk_10m),
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
        .s_axi_wvalid(s_axi_wvalid),
        .stream_aresetn(stream_aresetn));
endmodule

(* ORIG_REF_NAME = "Counter_Core_v1_0" *) 
module ps_Counter_Core_0_0_Counter_Core_v1_0
   (stream_aresetn,
    m_axis_tlast,
    axi_awready_reg,
    axi_wready_reg,
    axi_arready_reg,
    out_valid_reg,
    s_axi_bvalid,
    s_axi_rvalid,
    m_axis_tdata,
    s_axi_rdata,
    s_axi_aclk,
    clk_fs_p,
    clk_fs_n,
    clk_fx_p,
    clk_fx_n,
    clk_10m,
    m_axis_tready,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_wstrb);
  output stream_aresetn;
  output m_axis_tlast;
  output axi_awready_reg;
  output axi_wready_reg;
  output axi_arready_reg;
  output out_valid_reg;
  output s_axi_bvalid;
  output s_axi_rvalid;
  output [63:0]m_axis_tdata;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input clk_fs_p;
  input clk_fs_n;
  input clk_fx_p;
  input clk_fx_n;
  input clk_10m;
  input m_axis_tready;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_arvalid;
  input s_axi_rready;
  input s_axi_aresetn;
  input [3:0]s_axi_awaddr;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_araddr;
  input [3:0]s_axi_wstrb;

  wire Counter_Core_v1_0_S_AXI_inst_n_26;
  wire Counter_Core_v1_0_S_AXI_inst_n_5;
  wire Counter_Core_v1_0_S_AXI_inst_n_6;
  wire Counter_Core_v1_0_S_AXI_inst_n_60;
  wire Counter_Core_v1_0_S_AXI_inst_n_61;
  wire Counter_Core_v1_0_S_AXI_inst_n_62;
  wire Counter_Core_v1_0_S_AXI_inst_n_63;
  wire Counter_Core_v1_0_S_AXI_inst_n_64;
  wire Counter_Core_v1_0_S_AXI_inst_n_65;
  wire Counter_Core_v1_0_S_AXI_inst_n_66;
  wire Counter_Core_v1_0_S_AXI_inst_n_67;
  wire Counter_Core_v1_0_S_AXI_inst_n_8;
  wire Counter_Core_v1_0_S_AXI_inst_n_9;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_wready_reg;
  wire clk_10m;
  wire clk_10m_ibuf;
  wire clk_fs;
  wire clk_fs_ibuf;
  wire clk_fs_n;
  wire clk_fs_p;
  wire clk_fx;
  wire clk_fx_ibuf;
  wire clk_fx_n;
  wire clk_fx_p;
  wire [1:1]div_cnt;
  wire [31:0]edge_skip;
  wire [12:0]fifo_level;
  wire fx_ts;
  wire [31:0]lost_count;
  wire [63:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire out_valid_reg;
  wire overflow;
  wire [15:0]pkt_len;
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
  wire stream_aresetn;
  wire [31:0]ts_count;
  wire ts_en;
  wire ts_en_fs;
  wire ts_running;
  wire \u_ts_engine/int_empty ;
  wire [15:0]\u_ts_engine/pop_cnt_reg ;
  wire \u_ts_engine/pop_is_last ;
  wire \u_ts_engine/pop_is_last0 ;
  wire [15:1]\u_ts_engine/pop_is_last1 ;
  wire \u_ts_engine/pop_limit_hit0 ;
  wire \u_ts_engine/ts_en_d ;

  ps_Counter_Core_0_0_Counter_Core_v1_0_S_AXI Counter_Core_v1_0_S_AXI_inst
       (.CO(\u_ts_engine/int_empty ),
        .D(fx_ts),
        .Q(ts_en),
        .S({Counter_Core_v1_0_S_AXI_inst_n_60,Counter_Core_v1_0_S_AXI_inst_n_61,Counter_Core_v1_0_S_AXI_inst_n_62,Counter_Core_v1_0_S_AXI_inst_n_63}),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .\axi_rdata_reg[0]_0 (ts_running),
        .\axi_rdata_reg[1]_0 (overflow),
        .\axi_rdata_reg[31]_0 (ts_count),
        .axi_wready_reg_0(axi_wready_reg),
        .clk_10m_ibuf(clk_10m_ibuf),
        .clk_fx(clk_fx),
        .div_cnt(div_cnt),
        .dst_cnt(lost_count),
        .fifo_level(fifo_level),
        .m_axis_tready(m_axis_tready),
        .out(ts_en_fs),
        .out_last_reg(\u_ts_engine/pop_is_last0 ),
        .out_valid_reg(out_valid_reg),
        .out_valid_reg_0(\u_ts_engine/pop_limit_hit0 ),
        .pop_cnt_reg(\u_ts_engine/pop_cnt_reg ),
        .pop_is_last(\u_ts_engine/pop_is_last ),
        .pop_is_last1(\u_ts_engine/pop_is_last1 ),
        .\reg_ctrl_reg[0]_0 (Counter_Core_v1_0_S_AXI_inst_n_5),
        .\reg_ctrl_reg[3]_0 (Counter_Core_v1_0_S_AXI_inst_n_8),
        .\reg_ctrl_reg[3]_1 (Counter_Core_v1_0_S_AXI_inst_n_9),
        .\reg_edge_skip_reg[22]_0 (Counter_Core_v1_0_S_AXI_inst_n_26),
        .\reg_edge_skip_reg[31]_0 (edge_skip),
        .\reg_pkt_len_reg[12]_0 (Counter_Core_v1_0_S_AXI_inst_n_6),
        .\reg_pkt_len_reg[15]_0 (pkt_len),
        .\reg_pkt_len_reg[15]_1 ({Counter_Core_v1_0_S_AXI_inst_n_64,Counter_Core_v1_0_S_AXI_inst_n_65,Counter_Core_v1_0_S_AXI_inst_n_66,Counter_Core_v1_0_S_AXI_inst_n_67}),
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
        .s_axi_wvalid(s_axi_wvalid),
        .ts_en_d(\u_ts_engine/ts_en_d ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG bufg_fs
       (.I(clk_fs_ibuf),
        .O(clk_fs));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG bufg_fx
       (.I(clk_fx_ibuf),
        .O(clk_fx));
  ps_Counter_Core_0_0_counter_core counter_core_inst
       (.CO(\u_ts_engine/int_empty ),
        .D(fx_ts),
        .S({Counter_Core_v1_0_S_AXI_inst_n_60,Counter_Core_v1_0_S_AXI_inst_n_61,Counter_Core_v1_0_S_AXI_inst_n_62,Counter_Core_v1_0_S_AXI_inst_n_63}),
        .clk_fs(clk_fs),
        .clk_fx(clk_fx),
        .\div_cnt_reg[1]_0 (div_cnt),
        .dst_cnt(ts_count),
        .fifo_level(fifo_level),
        .fifo_mem_reg_0(Counter_Core_v1_0_S_AXI_inst_n_6),
        .fifo_mem_reg_7_i_4({Counter_Core_v1_0_S_AXI_inst_n_64,Counter_Core_v1_0_S_AXI_inst_n_65,Counter_Core_v1_0_S_AXI_inst_n_66,Counter_Core_v1_0_S_AXI_inst_n_67}),
        .\gray_s2_reg[31] (lost_count),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .out(ts_en_fs),
        .out_valid_reg(out_valid_reg),
        .out_valid_reg_0(Counter_Core_v1_0_S_AXI_inst_n_5),
        .pop_cnt_reg(\u_ts_engine/pop_cnt_reg ),
        .\pop_cnt_reg[15] (\u_ts_engine/pop_limit_hit0 ),
        .\pop_cnt_reg[15]_0 (\u_ts_engine/pop_is_last0 ),
        .pop_is_last(\u_ts_engine/pop_is_last ),
        .pop_is_last1(\u_ts_engine/pop_is_last1 ),
        .pop_limit_hit0_carry__0(pkt_len),
        .s_axi_aclk(s_axi_aclk),
        .\skip_limit_reg[31] (edge_skip),
        .skip_zero_reg(Counter_Core_v1_0_S_AXI_inst_n_26),
        .stream_aresetn(stream_aresetn),
        .\sync_reg[0] (ts_en),
        .\sync_reg[0]_0 (Counter_Core_v1_0_S_AXI_inst_n_8),
        .\sync_reg[1] (ts_running),
        .\sync_reg[1]_0 (overflow),
        .\sync_reg[2] (Counter_Core_v1_0_S_AXI_inst_n_9),
        .ts_en_d(\u_ts_engine/ts_en_d ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF ibuf_10m
       (.I(clk_10m),
        .O(clk_10m_ibuf));
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
module ps_Counter_Core_0_0_Counter_Core_v1_0_S_AXI
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s_axi_bvalid,
    s_axi_rvalid,
    \reg_ctrl_reg[0]_0 ,
    \reg_pkt_len_reg[12]_0 ,
    Q,
    \reg_ctrl_reg[3]_0 ,
    \reg_ctrl_reg[3]_1 ,
    \reg_pkt_len_reg[15]_0 ,
    \reg_edge_skip_reg[22]_0 ,
    \reg_edge_skip_reg[31]_0 ,
    pop_is_last,
    S,
    \reg_pkt_len_reg[15]_1 ,
    D,
    pop_is_last1,
    s_axi_rdata,
    s_axi_aclk,
    CO,
    out_valid_reg,
    m_axis_tready,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_aresetn,
    out_valid_reg_0,
    out,
    ts_en_d,
    out_last_reg,
    pop_cnt_reg,
    \axi_rdata_reg[0]_0 ,
    \axi_rdata_reg[1]_0 ,
    dst_cnt,
    fifo_level,
    \axi_rdata_reg[31]_0 ,
    clk_fx,
    div_cnt,
    clk_10m_ibuf,
    s_axi_awaddr,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_wstrb);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s_axi_bvalid;
  output s_axi_rvalid;
  output \reg_ctrl_reg[0]_0 ;
  output \reg_pkt_len_reg[12]_0 ;
  output [0:0]Q;
  output \reg_ctrl_reg[3]_0 ;
  output \reg_ctrl_reg[3]_1 ;
  output [15:0]\reg_pkt_len_reg[15]_0 ;
  output \reg_edge_skip_reg[22]_0 ;
  output [31:0]\reg_edge_skip_reg[31]_0 ;
  output pop_is_last;
  output [3:0]S;
  output [3:0]\reg_pkt_len_reg[15]_1 ;
  output [0:0]D;
  output [14:0]pop_is_last1;
  output [31:0]s_axi_rdata;
  input s_axi_aclk;
  input [0:0]CO;
  input out_valid_reg;
  input m_axis_tready;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_bready;
  input s_axi_arvalid;
  input s_axi_rready;
  input s_axi_aresetn;
  input [0:0]out_valid_reg_0;
  input [0:0]out;
  input ts_en_d;
  input [0:0]out_last_reg;
  input [15:0]pop_cnt_reg;
  input [0:0]\axi_rdata_reg[0]_0 ;
  input [0:0]\axi_rdata_reg[1]_0 ;
  input [31:0]dst_cnt;
  input [12:0]fifo_level;
  input [31:0]\axi_rdata_reg[31]_0 ;
  input clk_fx;
  input [0:0]div_cnt;
  input clk_10m_ibuf;
  input [3:0]s_axi_awaddr;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_araddr;
  input [3:0]s_axi_wstrb;

  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]Q;
  wire [3:0]S;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[12]_i_7_n_0 ;
  wire \axi_rdata[12]_i_8_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[1]_i_7_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[30]_i_4_n_0 ;
  wire \axi_rdata[30]_i_5_n_0 ;
  wire \axi_rdata[30]_i_6_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[31]_i_6_n_0 ;
  wire \axi_rdata[31]_i_7_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[4]_i_5_n_0 ;
  wire \axi_rdata[4]_i_6_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire [0:0]\axi_rdata_reg[0]_0 ;
  wire [0:0]\axi_rdata_reg[1]_0 ;
  wire [31:0]\axi_rdata_reg[31]_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire clk_10m_ibuf;
  wire clk_fx;
  wire [0:0]div_cnt;
  wire [31:0]dst_cnt;
  wire [12:0]fifo_level;
  wire fifo_mem_reg_7_i_5_n_0;
  wire fifo_mem_reg_7_i_6_n_0;
  wire fifo_mem_reg_7_i_7_n_0;
  wire fifo_mem_reg_7_i_8_n_0;
  wire m_axis_tready;
  wire [0:0]out;
  wire out_last_i_3_n_0;
  wire out_last_i_4_n_0;
  wire out_last_i_5_n_0;
  wire [0:0]out_last_reg;
  wire out_valid_reg;
  wire [0:0]out_valid_reg_0;
  wire p_0_in;
  wire [31:0]p_1_in;
  wire [15:0]pop_cnt_reg;
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
  wire \reg_ctrl_reg[0]_0 ;
  wire \reg_ctrl_reg[3]_0 ;
  wire \reg_ctrl_reg[3]_1 ;
  wire \reg_ctrl_reg_n_0_[10] ;
  wire \reg_ctrl_reg_n_0_[11] ;
  wire \reg_ctrl_reg_n_0_[12] ;
  wire \reg_ctrl_reg_n_0_[13] ;
  wire \reg_ctrl_reg_n_0_[14] ;
  wire \reg_ctrl_reg_n_0_[15] ;
  wire \reg_ctrl_reg_n_0_[16] ;
  wire \reg_ctrl_reg_n_0_[17] ;
  wire \reg_ctrl_reg_n_0_[18] ;
  wire \reg_ctrl_reg_n_0_[19] ;
  wire \reg_ctrl_reg_n_0_[20] ;
  wire \reg_ctrl_reg_n_0_[21] ;
  wire \reg_ctrl_reg_n_0_[22] ;
  wire \reg_ctrl_reg_n_0_[23] ;
  wire \reg_ctrl_reg_n_0_[24] ;
  wire \reg_ctrl_reg_n_0_[25] ;
  wire \reg_ctrl_reg_n_0_[26] ;
  wire \reg_ctrl_reg_n_0_[27] ;
  wire \reg_ctrl_reg_n_0_[28] ;
  wire \reg_ctrl_reg_n_0_[29] ;
  wire \reg_ctrl_reg_n_0_[2] ;
  wire \reg_ctrl_reg_n_0_[30] ;
  wire \reg_ctrl_reg_n_0_[31] ;
  wire \reg_ctrl_reg_n_0_[4] ;
  wire \reg_ctrl_reg_n_0_[5] ;
  wire \reg_ctrl_reg_n_0_[6] ;
  wire \reg_ctrl_reg_n_0_[7] ;
  wire \reg_ctrl_reg_n_0_[8] ;
  wire \reg_ctrl_reg_n_0_[9] ;
  wire [31:0]reg_data_out;
  wire \reg_edge_skip[15]_i_1_n_0 ;
  wire \reg_edge_skip[23]_i_1_n_0 ;
  wire \reg_edge_skip[31]_i_1_n_0 ;
  wire \reg_edge_skip[7]_i_1_n_0 ;
  wire \reg_edge_skip_reg[22]_0 ;
  wire [31:0]\reg_edge_skip_reg[31]_0 ;
  wire \reg_pkt_len[15]_i_1_n_0 ;
  wire \reg_pkt_len[23]_i_1_n_0 ;
  wire \reg_pkt_len[31]_i_1_n_0 ;
  wire \reg_pkt_len[7]_i_1_n_0 ;
  wire \reg_pkt_len_reg[12]_0 ;
  wire [15:0]\reg_pkt_len_reg[15]_0 ;
  wire [3:0]\reg_pkt_len_reg[15]_1 ;
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
  wire [31:0]reg_prescale;
  wire \reg_prescale[15]_i_1_n_0 ;
  wire \reg_prescale[23]_i_1_n_0 ;
  wire \reg_prescale[31]_i_1_n_0 ;
  wire \reg_prescale[7]_i_1_n_0 ;
  wire [31:0]reg_src_sel;
  wire \reg_src_sel[15]_i_1_n_0 ;
  wire \reg_src_sel[23]_i_1_n_0 ;
  wire \reg_src_sel[31]_i_1_n_0 ;
  wire \reg_src_sel[7]_i_1_n_0 ;
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
  wire [3:0]sel0;
  wire skip_zero_i_10_n_0;
  wire skip_zero_i_11_n_0;
  wire skip_zero_i_12_n_0;
  wire skip_zero_i_13_n_0;
  wire skip_zero_i_8_n_0;
  wire skip_zero_i_9_n_0;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire soft_rst;
  wire ts_en_d;
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
        .Q(sel0[0]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[1]),
        .Q(sel0[1]),
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
    .INIT(32'hFFFEFEFE)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .I2(\axi_rdata[0]_i_4_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(reg_src_sel[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[0]_i_2 
       (.I0(\axi_rdata[12]_i_8_n_0 ),
        .I1(\reg_pkt_len_reg[15]_0 [0]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\reg_edge_skip_reg[31]_0 [0]),
        .I4(\axi_rdata_reg[31]_0 [0]),
        .I5(\axi_rdata[31]_i_6_n_0 ),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[0]_i_3 
       (.I0(\axi_rdata[31]_i_7_n_0 ),
        .I1(dst_cnt[0]),
        .I2(\axi_rdata[12]_i_7_n_0 ),
        .I3(fifo_level[0]),
        .I4(reg_prescale[0]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0003000200000002)) 
    \axi_rdata[0]_i_4 
       (.I0(Q),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[0]_0 ),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(reg_src_sel[10]),
        .I3(\axi_rdata[10]_i_3_n_0 ),
        .I4(\axi_rdata[12]_i_4_n_0 ),
        .I5(reg_prescale[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[10]_i_2 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [10]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[10]),
        .I4(fifo_level[10]),
        .I5(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[10]_i_3 
       (.I0(\axi_rdata[30]_i_5_n_0 ),
        .I1(\reg_ctrl_reg_n_0_[10] ),
        .I2(\axi_rdata[12]_i_8_n_0 ),
        .I3(\reg_pkt_len_reg[15]_0 [10]),
        .I4(\reg_edge_skip_reg[31]_0 [10]),
        .I5(\axi_rdata[31]_i_3_n_0 ),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(reg_src_sel[11]),
        .I3(\axi_rdata[11]_i_3_n_0 ),
        .I4(\axi_rdata[12]_i_4_n_0 ),
        .I5(reg_prescale[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[11]_i_2 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [11]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[11]),
        .I4(fifo_level[11]),
        .I5(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[11]_i_3 
       (.I0(\axi_rdata[30]_i_5_n_0 ),
        .I1(\reg_ctrl_reg_n_0_[11] ),
        .I2(\axi_rdata[12]_i_8_n_0 ),
        .I3(\reg_pkt_len_reg[15]_0 [11]),
        .I4(\reg_edge_skip_reg[31]_0 [11]),
        .I5(\axi_rdata[31]_i_3_n_0 ),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(reg_src_sel[12]),
        .I3(\axi_rdata[12]_i_3_n_0 ),
        .I4(\axi_rdata[12]_i_4_n_0 ),
        .I5(reg_prescale[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[12]_i_2 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [12]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[12]),
        .I4(fifo_level[12]),
        .I5(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[12]_i_3 
       (.I0(\axi_rdata[30]_i_5_n_0 ),
        .I1(\reg_ctrl_reg_n_0_[12] ),
        .I2(\axi_rdata[12]_i_8_n_0 ),
        .I3(\reg_pkt_len_reg[15]_0 [12]),
        .I4(\reg_edge_skip_reg[31]_0 [12]),
        .I5(\axi_rdata[31]_i_3_n_0 ),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \axi_rdata[12]_i_4 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .O(\axi_rdata[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \axi_rdata[12]_i_7 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .O(\axi_rdata[12]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \axi_rdata[12]_i_8 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(\axi_rdata[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(\reg_edge_skip_reg[31]_0 [13]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(reg_src_sel[13]),
        .I5(\axi_rdata[13]_i_3_n_0 ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'h00A000000000000C)) 
    \axi_rdata[13]_i_2 
       (.I0(\reg_pkt_len_reg[15]_0 [13]),
        .I1(\reg_ctrl_reg_n_0_[13] ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[13]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [13]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[13]),
        .I4(reg_prescale[13]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(\reg_edge_skip_reg[31]_0 [14]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(reg_src_sel[14]),
        .I5(\axi_rdata[14]_i_3_n_0 ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'h00A000000000000C)) 
    \axi_rdata[14]_i_2 
       (.I0(\reg_pkt_len_reg[15]_0 [14]),
        .I1(\reg_ctrl_reg_n_0_[14] ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[14]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [14]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[14]),
        .I4(reg_prescale[14]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(\reg_edge_skip_reg[31]_0 [15]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(reg_src_sel[15]),
        .I5(\axi_rdata[15]_i_3_n_0 ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'h00A000000000000C)) 
    \axi_rdata[15]_i_2 
       (.I0(\reg_pkt_len_reg[15]_0 [15]),
        .I1(\reg_ctrl_reg_n_0_[15] ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[15]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [15]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[15]),
        .I4(reg_prescale[15]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(reg_src_sel[16]),
        .I2(\axi_rdata[31]_i_4_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata[30]_i_3_n_0 ),
        .I5(\axi_rdata[16]_i_3_n_0 ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[16]_i_2 
       (.I0(\axi_rdata[30]_i_5_n_0 ),
        .I1(\reg_ctrl_reg_n_0_[16] ),
        .I2(\axi_rdata[30]_i_6_n_0 ),
        .I3(\reg_pkt_len_reg_n_0_[16] ),
        .I4(\reg_edge_skip_reg[31]_0 [16]),
        .I5(\axi_rdata[30]_i_3_n_0 ),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[16]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [16]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[16]),
        .I4(reg_prescale[16]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(reg_src_sel[17]),
        .I2(\axi_rdata[31]_i_4_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata[30]_i_3_n_0 ),
        .I5(\axi_rdata[17]_i_3_n_0 ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[17]_i_2 
       (.I0(\axi_rdata[30]_i_5_n_0 ),
        .I1(\reg_ctrl_reg_n_0_[17] ),
        .I2(\axi_rdata[30]_i_6_n_0 ),
        .I3(\reg_pkt_len_reg_n_0_[17] ),
        .I4(\reg_edge_skip_reg[31]_0 [17]),
        .I5(\axi_rdata[30]_i_3_n_0 ),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[17]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [17]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[17]),
        .I4(reg_prescale[17]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(\reg_edge_skip_reg[31]_0 [18]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(reg_src_sel[18]),
        .I5(\axi_rdata[18]_i_3_n_0 ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'h00A000000000000C)) 
    \axi_rdata[18]_i_2 
       (.I0(\reg_pkt_len_reg_n_0_[18] ),
        .I1(\reg_ctrl_reg_n_0_[18] ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[18]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [18]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[18]),
        .I4(reg_prescale[18]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(\reg_edge_skip_reg[31]_0 [19]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(reg_src_sel[19]),
        .I5(\axi_rdata[19]_i_3_n_0 ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'h00A000000000000C)) 
    \axi_rdata[19]_i_2 
       (.I0(\reg_pkt_len_reg_n_0_[19] ),
        .I1(\reg_ctrl_reg_n_0_[19] ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[19]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [19]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[19]),
        .I4(reg_prescale[19]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata[1]_i_3_n_0 ),
        .I2(\axi_rdata[1]_i_4_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(reg_src_sel[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[1]_i_2 
       (.I0(\axi_rdata[31]_i_7_n_0 ),
        .I1(dst_cnt[1]),
        .I2(\axi_rdata[12]_i_7_n_0 ),
        .I3(fifo_level[1]),
        .I4(reg_prescale[1]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A00F0000C)) 
    \axi_rdata[1]_i_3 
       (.I0(\axi_rdata_reg[1]_0 ),
        .I1(ts_rst),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAF00000EECC0000)) 
    \axi_rdata[1]_i_4 
       (.I0(\reg_pkt_len_reg[15]_0 [1]),
        .I1(\reg_edge_skip_reg[31]_0 [1]),
        .I2(\axi_rdata_reg[31]_0 [1]),
        .I3(sel0[3]),
        .I4(\axi_rdata[1]_i_7_n_0 ),
        .I5(sel0[0]),
        .O(\axi_rdata[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[1]_i_7 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .O(\axi_rdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(\reg_edge_skip_reg[31]_0 [20]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(reg_src_sel[20]),
        .I5(\axi_rdata[20]_i_3_n_0 ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'h00A000000000000C)) 
    \axi_rdata[20]_i_2 
       (.I0(\reg_pkt_len_reg_n_0_[20] ),
        .I1(\reg_ctrl_reg_n_0_[20] ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[20]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [20]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[20]),
        .I4(reg_prescale[20]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(\reg_edge_skip_reg[31]_0 [21]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(reg_src_sel[21]),
        .I5(\axi_rdata[21]_i_3_n_0 ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'h00A000000000000C)) 
    \axi_rdata[21]_i_2 
       (.I0(\reg_pkt_len_reg_n_0_[21] ),
        .I1(\reg_ctrl_reg_n_0_[21] ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[21]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [21]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[21]),
        .I4(reg_prescale[21]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(reg_src_sel[22]),
        .I2(\axi_rdata[31]_i_4_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata[30]_i_3_n_0 ),
        .I5(\axi_rdata[22]_i_3_n_0 ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[22]_i_2 
       (.I0(\axi_rdata[30]_i_5_n_0 ),
        .I1(\reg_ctrl_reg_n_0_[22] ),
        .I2(\axi_rdata[30]_i_6_n_0 ),
        .I3(\reg_pkt_len_reg_n_0_[22] ),
        .I4(\reg_edge_skip_reg[31]_0 [22]),
        .I5(\axi_rdata[30]_i_3_n_0 ),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[22]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [22]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[22]),
        .I4(reg_prescale[22]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(\reg_edge_skip_reg[31]_0 [23]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(reg_src_sel[23]),
        .I5(\axi_rdata[23]_i_3_n_0 ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'h00A000000000000C)) 
    \axi_rdata[23]_i_2 
       (.I0(\reg_pkt_len_reg_n_0_[23] ),
        .I1(\reg_ctrl_reg_n_0_[23] ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[23]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [23]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[23]),
        .I4(reg_prescale[23]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(reg_src_sel[24]),
        .I2(\axi_rdata[31]_i_4_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata[30]_i_3_n_0 ),
        .I5(\axi_rdata[24]_i_3_n_0 ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[24]_i_2 
       (.I0(\axi_rdata[30]_i_5_n_0 ),
        .I1(\reg_ctrl_reg_n_0_[24] ),
        .I2(\axi_rdata[30]_i_6_n_0 ),
        .I3(\reg_pkt_len_reg_n_0_[24] ),
        .I4(\reg_edge_skip_reg[31]_0 [24]),
        .I5(\axi_rdata[30]_i_3_n_0 ),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[24]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [24]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[24]),
        .I4(reg_prescale[24]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(reg_src_sel[25]),
        .I2(\axi_rdata[31]_i_4_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata[30]_i_3_n_0 ),
        .I5(\axi_rdata[25]_i_3_n_0 ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[25]_i_2 
       (.I0(\axi_rdata[30]_i_5_n_0 ),
        .I1(\reg_ctrl_reg_n_0_[25] ),
        .I2(\axi_rdata[30]_i_6_n_0 ),
        .I3(\reg_pkt_len_reg_n_0_[25] ),
        .I4(\reg_edge_skip_reg[31]_0 [25]),
        .I5(\axi_rdata[30]_i_3_n_0 ),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[25]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [25]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[25]),
        .I4(reg_prescale[25]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(\reg_edge_skip_reg[31]_0 [26]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(reg_src_sel[26]),
        .I5(\axi_rdata[26]_i_3_n_0 ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'h00A000000000000C)) 
    \axi_rdata[26]_i_2 
       (.I0(\reg_pkt_len_reg_n_0_[26] ),
        .I1(\reg_ctrl_reg_n_0_[26] ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[26]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [26]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[26]),
        .I4(reg_prescale[26]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(\reg_edge_skip_reg[31]_0 [27]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(reg_src_sel[27]),
        .I5(\axi_rdata[27]_i_3_n_0 ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'h00A000000000000C)) 
    \axi_rdata[27]_i_2 
       (.I0(\reg_pkt_len_reg_n_0_[27] ),
        .I1(\reg_ctrl_reg_n_0_[27] ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[27]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [27]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[27]),
        .I4(reg_prescale[27]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(\reg_edge_skip_reg[31]_0 [28]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(reg_src_sel[28]),
        .I5(\axi_rdata[28]_i_3_n_0 ),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'h00A000000000000C)) 
    \axi_rdata[28]_i_2 
       (.I0(\reg_pkt_len_reg_n_0_[28] ),
        .I1(\reg_ctrl_reg_n_0_[28] ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[28]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [28]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[28]),
        .I4(reg_prescale[28]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(\reg_edge_skip_reg[31]_0 [29]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(reg_src_sel[29]),
        .I5(\axi_rdata[29]_i_3_n_0 ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'h00A000000000000C)) 
    \axi_rdata[29]_i_2 
       (.I0(\reg_pkt_len_reg_n_0_[29] ),
        .I1(\reg_ctrl_reg_n_0_[29] ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[29]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [29]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[29]),
        .I4(reg_prescale[29]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(reg_src_sel[2]),
        .I3(\axi_rdata[2]_i_3_n_0 ),
        .I4(\axi_rdata[12]_i_4_n_0 ),
        .I5(reg_prescale[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[2]_i_2 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [2]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[2]),
        .I4(fifo_level[2]),
        .I5(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[2]_i_3 
       (.I0(\axi_rdata[30]_i_5_n_0 ),
        .I1(\reg_ctrl_reg_n_0_[2] ),
        .I2(\axi_rdata[12]_i_8_n_0 ),
        .I3(\reg_pkt_len_reg[15]_0 [2]),
        .I4(\reg_edge_skip_reg[31]_0 [2]),
        .I5(\axi_rdata[31]_i_3_n_0 ),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(reg_src_sel[30]),
        .I2(\axi_rdata[31]_i_4_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata[30]_i_3_n_0 ),
        .I5(\axi_rdata[30]_i_4_n_0 ),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[30]_i_2 
       (.I0(\axi_rdata[30]_i_5_n_0 ),
        .I1(\reg_ctrl_reg_n_0_[30] ),
        .I2(\axi_rdata[30]_i_6_n_0 ),
        .I3(\reg_pkt_len_reg_n_0_[30] ),
        .I4(\reg_edge_skip_reg[31]_0 [30]),
        .I5(\axi_rdata[30]_i_3_n_0 ),
        .O(\axi_rdata[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \axi_rdata[30]_i_3 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[30]_i_4 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [30]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[30]),
        .I4(reg_prescale[30]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[30]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \axi_rdata[30]_i_5 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(\axi_rdata[30]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[30]_i_6 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .O(\axi_rdata[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \axi_rdata[31]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(\reg_edge_skip_reg[31]_0 [31]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(reg_src_sel[31]),
        .I5(\axi_rdata[31]_i_5_n_0 ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'h00A000000000000C)) 
    \axi_rdata[31]_i_2 
       (.I0(\reg_pkt_len_reg_n_0_[31] ),
        .I1(\reg_ctrl_reg_n_0_[31] ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \axi_rdata[31]_i_3 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \axi_rdata[31]_i_4 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[31]_i_5 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [31]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[31]),
        .I4(reg_prescale[31]),
        .I5(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \axi_rdata[31]_i_6 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(\axi_rdata[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \axi_rdata[31]_i_7 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .O(\axi_rdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(reg_src_sel[3]),
        .I3(\axi_rdata[3]_i_3_n_0 ),
        .I4(\axi_rdata[12]_i_4_n_0 ),
        .I5(reg_prescale[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[3]_i_2 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [3]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[3]),
        .I4(fifo_level[3]),
        .I5(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[3]_i_3 
       (.I0(\axi_rdata[30]_i_5_n_0 ),
        .I1(soft_rst),
        .I2(\axi_rdata[12]_i_8_n_0 ),
        .I3(\reg_pkt_len_reg[15]_0 [3]),
        .I4(\reg_edge_skip_reg[31]_0 [3]),
        .I5(\axi_rdata[31]_i_3_n_0 ),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(reg_src_sel[4]),
        .I2(\axi_rdata[31]_i_4_n_0 ),
        .I3(\axi_rdata[4]_i_3_n_0 ),
        .I4(\axi_rdata[4]_i_4_n_0 ),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'h8888F88888888888)) 
    \axi_rdata[4]_i_2 
       (.I0(reg_prescale[4]),
        .I1(\axi_rdata[12]_i_4_n_0 ),
        .I2(\axi_rdata[4]_i_5_n_0 ),
        .I3(\axi_rdata[4]_i_6_n_0 ),
        .I4(out_valid_reg),
        .I5(CO),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[4]_i_3 
       (.I0(\axi_rdata[30]_i_5_n_0 ),
        .I1(\reg_ctrl_reg_n_0_[4] ),
        .I2(\axi_rdata[12]_i_8_n_0 ),
        .I3(\reg_pkt_len_reg[15]_0 [4]),
        .I4(\reg_edge_skip_reg[31]_0 [4]),
        .I5(\axi_rdata[31]_i_3_n_0 ),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[4]_i_4 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [4]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[4]),
        .I4(fifo_level[4]),
        .I5(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \axi_rdata[4]_i_5 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .O(\axi_rdata[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[4]_i_6 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(\axi_rdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(reg_src_sel[5]),
        .I3(\axi_rdata[5]_i_3_n_0 ),
        .I4(\axi_rdata[12]_i_4_n_0 ),
        .I5(reg_prescale[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[5]_i_2 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [5]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[5]),
        .I4(fifo_level[5]),
        .I5(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[5]_i_3 
       (.I0(\axi_rdata[30]_i_5_n_0 ),
        .I1(\reg_ctrl_reg_n_0_[5] ),
        .I2(\axi_rdata[12]_i_8_n_0 ),
        .I3(\reg_pkt_len_reg[15]_0 [5]),
        .I4(\reg_edge_skip_reg[31]_0 [5]),
        .I5(\axi_rdata[31]_i_3_n_0 ),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(reg_src_sel[6]),
        .I3(\axi_rdata[6]_i_3_n_0 ),
        .I4(\axi_rdata[12]_i_4_n_0 ),
        .I5(reg_prescale[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[6]_i_2 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [6]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[6]),
        .I4(fifo_level[6]),
        .I5(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[6]_i_3 
       (.I0(\axi_rdata[30]_i_5_n_0 ),
        .I1(\reg_ctrl_reg_n_0_[6] ),
        .I2(\axi_rdata[12]_i_8_n_0 ),
        .I3(\reg_pkt_len_reg[15]_0 [6]),
        .I4(\reg_edge_skip_reg[31]_0 [6]),
        .I5(\axi_rdata[31]_i_3_n_0 ),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(reg_src_sel[7]),
        .I3(\axi_rdata[7]_i_3_n_0 ),
        .I4(\axi_rdata[12]_i_4_n_0 ),
        .I5(reg_prescale[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[7]_i_2 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [7]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[7]),
        .I4(fifo_level[7]),
        .I5(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[7]_i_3 
       (.I0(\axi_rdata[30]_i_5_n_0 ),
        .I1(\reg_ctrl_reg_n_0_[7] ),
        .I2(\axi_rdata[12]_i_8_n_0 ),
        .I3(\reg_pkt_len_reg[15]_0 [7]),
        .I4(\reg_edge_skip_reg[31]_0 [7]),
        .I5(\axi_rdata[31]_i_3_n_0 ),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \axi_rdata[8]_i_1 
       (.I0(reg_prescale[8]),
        .I1(\axi_rdata[12]_i_4_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_rdata[30]_i_3_n_0 ),
        .I4(\axi_rdata[8]_i_2_n_0 ),
        .I5(\axi_rdata[8]_i_3_n_0 ),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \axi_rdata[8]_i_2 
       (.I0(reg_src_sel[8]),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(\axi_rdata[30]_i_3_n_0 ),
        .I3(\reg_edge_skip_reg[31]_0 [8]),
        .I4(\axi_rdata[8]_i_4_n_0 ),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[8]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [8]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[8]),
        .I4(fifo_level[8]),
        .I5(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00A0000000A0000C)) 
    \axi_rdata[8]_i_4 
       (.I0(\reg_pkt_len_reg[15]_0 [8]),
        .I1(\reg_ctrl_reg_n_0_[8] ),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .I4(sel0[1]),
        .I5(sel0[0]),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(reg_src_sel[9]),
        .I3(\axi_rdata[9]_i_3_n_0 ),
        .I4(\axi_rdata[12]_i_4_n_0 ),
        .I5(reg_prescale[9]),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[9]_i_2 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata_reg[31]_0 [9]),
        .I2(\axi_rdata[31]_i_7_n_0 ),
        .I3(dst_cnt[9]),
        .I4(fifo_level[9]),
        .I5(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[9]_i_3 
       (.I0(\axi_rdata[30]_i_5_n_0 ),
        .I1(\reg_ctrl_reg_n_0_[9] ),
        .I2(\axi_rdata[12]_i_8_n_0 ),
        .I3(\reg_pkt_len_reg[15]_0 [9]),
        .I4(\reg_edge_skip_reg[31]_0 [9]),
        .I5(\axi_rdata[31]_i_3_n_0 ),
        .O(\axi_rdata[9]_i_3_n_0 ));
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
  FDRE \axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s_axi_rdata[15]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s_axi_rdata[16]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s_axi_rdata[17]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s_axi_rdata[18]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s_axi_rdata[19]),
        .R(p_0_in));
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
  FDRE \axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s_axi_rdata[21]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s_axi_rdata[22]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s_axi_rdata[23]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s_axi_rdata[24]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s_axi_rdata[25]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s_axi_rdata[26]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s_axi_rdata[27]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s_axi_rdata[28]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s_axi_rdata[29]),
        .R(p_0_in));
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
  FDRE \axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s_axi_rdata[31]),
        .R(p_0_in));
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \delay_stage[0].carry4_inst_i_1 
       (.I0(reg_prescale[0]),
        .I1(clk_fx),
        .I2(div_cnt),
        .I3(reg_src_sel[0]),
        .I4(clk_10m_ibuf),
        .O(D));
  LUT3 #(
    .INIT(8'h8F)) 
    fifo_mem_reg_7_i_4
       (.I0(fifo_mem_reg_7_i_5_n_0),
        .I1(fifo_mem_reg_7_i_6_n_0),
        .I2(out_valid_reg_0),
        .O(\reg_pkt_len_reg[12]_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    fifo_mem_reg_7_i_5
       (.I0(\reg_pkt_len_reg[15]_0 [12]),
        .I1(\reg_pkt_len_reg[15]_0 [13]),
        .I2(\reg_pkt_len_reg[15]_0 [14]),
        .I3(\reg_pkt_len_reg[15]_0 [15]),
        .I4(fifo_mem_reg_7_i_7_n_0),
        .O(fifo_mem_reg_7_i_5_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    fifo_mem_reg_7_i_6
       (.I0(\reg_pkt_len_reg[15]_0 [2]),
        .I1(\reg_pkt_len_reg[15]_0 [3]),
        .I2(\reg_pkt_len_reg[15]_0 [0]),
        .I3(\reg_pkt_len_reg[15]_0 [1]),
        .I4(fifo_mem_reg_7_i_8_n_0),
        .O(fifo_mem_reg_7_i_6_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    fifo_mem_reg_7_i_7
       (.I0(\reg_pkt_len_reg[15]_0 [11]),
        .I1(\reg_pkt_len_reg[15]_0 [10]),
        .I2(\reg_pkt_len_reg[15]_0 [9]),
        .I3(\reg_pkt_len_reg[15]_0 [8]),
        .O(fifo_mem_reg_7_i_7_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    fifo_mem_reg_7_i_8
       (.I0(\reg_pkt_len_reg[15]_0 [7]),
        .I1(\reg_pkt_len_reg[15]_0 [6]),
        .I2(\reg_pkt_len_reg[15]_0 [5]),
        .I3(\reg_pkt_len_reg[15]_0 [4]),
        .O(fifo_mem_reg_7_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    out_last_i_2
       (.I0(out_last_i_3_n_0),
        .I1(\reg_pkt_len_reg[15]_0 [0]),
        .I2(out_last_reg),
        .I3(out_last_i_4_n_0),
        .I4(out_last_i_5_n_0),
        .O(pop_is_last));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    out_last_i_3
       (.I0(\reg_pkt_len_reg[15]_0 [1]),
        .I1(\reg_pkt_len_reg[15]_0 [4]),
        .I2(\reg_pkt_len_reg[15]_0 [5]),
        .I3(\reg_pkt_len_reg[15]_0 [3]),
        .I4(out_last_reg),
        .I5(\reg_pkt_len_reg[15]_0 [2]),
        .O(out_last_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    out_last_i_4
       (.I0(\reg_pkt_len_reg[15]_0 [11]),
        .I1(\reg_pkt_len_reg[15]_0 [14]),
        .I2(\reg_pkt_len_reg[15]_0 [15]),
        .I3(\reg_pkt_len_reg[15]_0 [13]),
        .I4(out_last_reg),
        .I5(\reg_pkt_len_reg[15]_0 [12]),
        .O(out_last_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    out_last_i_5
       (.I0(\reg_pkt_len_reg[15]_0 [6]),
        .I1(\reg_pkt_len_reg[15]_0 [9]),
        .I2(\reg_pkt_len_reg[15]_0 [10]),
        .I3(\reg_pkt_len_reg[15]_0 [8]),
        .I4(out_last_reg),
        .I5(\reg_pkt_len_reg[15]_0 [7]),
        .O(out_last_i_5_n_0));
  LUT5 #(
    .INIT(32'h2020FF20)) 
    out_valid_i_1
       (.I0(\reg_pkt_len_reg[12]_0 ),
        .I1(CO),
        .I2(Q),
        .I3(out_valid_reg),
        .I4(m_axis_tready),
        .O(\reg_ctrl_reg[0]_0 ));
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
  LUT4 #(
    .INIT(16'h9009)) 
    pop_limit_hit0_carry__0_i_5
       (.I0(\reg_pkt_len_reg[15]_0 [15]),
        .I1(pop_cnt_reg[15]),
        .I2(\reg_pkt_len_reg[15]_0 [14]),
        .I3(pop_cnt_reg[14]),
        .O(\reg_pkt_len_reg[15]_1 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    pop_limit_hit0_carry__0_i_6
       (.I0(\reg_pkt_len_reg[15]_0 [13]),
        .I1(pop_cnt_reg[13]),
        .I2(\reg_pkt_len_reg[15]_0 [12]),
        .I3(pop_cnt_reg[12]),
        .O(\reg_pkt_len_reg[15]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    pop_limit_hit0_carry__0_i_7
       (.I0(\reg_pkt_len_reg[15]_0 [11]),
        .I1(pop_cnt_reg[11]),
        .I2(\reg_pkt_len_reg[15]_0 [10]),
        .I3(pop_cnt_reg[10]),
        .O(\reg_pkt_len_reg[15]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    pop_limit_hit0_carry__0_i_8
       (.I0(\reg_pkt_len_reg[15]_0 [9]),
        .I1(pop_cnt_reg[9]),
        .I2(\reg_pkt_len_reg[15]_0 [8]),
        .I3(pop_cnt_reg[8]),
        .O(\reg_pkt_len_reg[15]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    pop_limit_hit0_carry_i_5
       (.I0(\reg_pkt_len_reg[15]_0 [7]),
        .I1(pop_cnt_reg[7]),
        .I2(\reg_pkt_len_reg[15]_0 [6]),
        .I3(pop_cnt_reg[6]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    pop_limit_hit0_carry_i_6
       (.I0(\reg_pkt_len_reg[15]_0 [5]),
        .I1(pop_cnt_reg[5]),
        .I2(\reg_pkt_len_reg[15]_0 [4]),
        .I3(pop_cnt_reg[4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    pop_limit_hit0_carry_i_7
       (.I0(\reg_pkt_len_reg[15]_0 [3]),
        .I1(pop_cnt_reg[3]),
        .I2(\reg_pkt_len_reg[15]_0 [2]),
        .I3(pop_cnt_reg[2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    pop_limit_hit0_carry_i_8
       (.I0(\reg_pkt_len_reg[15]_0 [1]),
        .I1(pop_cnt_reg[1]),
        .I2(\reg_pkt_len_reg[15]_0 [0]),
        .I3(pop_cnt_reg[0]),
        .O(S[0]));
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
        .Q(Q),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[10]),
        .Q(\reg_ctrl_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[11]),
        .Q(\reg_ctrl_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[12]),
        .Q(\reg_ctrl_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[13]),
        .Q(\reg_ctrl_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[14]),
        .Q(\reg_ctrl_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[15]),
        .Q(\reg_ctrl_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[16]),
        .Q(\reg_ctrl_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[17]),
        .Q(\reg_ctrl_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[18]),
        .Q(\reg_ctrl_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[19]),
        .Q(\reg_ctrl_reg_n_0_[19] ),
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
        .Q(\reg_ctrl_reg_n_0_[20] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[21]),
        .Q(\reg_ctrl_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[22]),
        .Q(\reg_ctrl_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[23]),
        .Q(\reg_ctrl_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[24]),
        .Q(\reg_ctrl_reg_n_0_[24] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[25]),
        .Q(\reg_ctrl_reg_n_0_[25] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[26]),
        .Q(\reg_ctrl_reg_n_0_[26] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[27]),
        .Q(\reg_ctrl_reg_n_0_[27] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[28]),
        .Q(\reg_ctrl_reg_n_0_[28] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[29]),
        .Q(\reg_ctrl_reg_n_0_[29] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[2]),
        .Q(\reg_ctrl_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[30]),
        .Q(\reg_ctrl_reg_n_0_[30] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[31]),
        .Q(\reg_ctrl_reg_n_0_[31] ),
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
        .Q(\reg_ctrl_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[5]),
        .Q(\reg_ctrl_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[6]),
        .Q(\reg_ctrl_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[7]),
        .Q(\reg_ctrl_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[8]),
        .Q(\reg_ctrl_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \reg_ctrl_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_wdata[9]),
        .Q(\reg_ctrl_reg_n_0_[9] ),
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
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \reg_prescale[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(wr_index[3]),
        .I2(s_axi_wstrb[1]),
        .I3(wr_index[2]),
        .I4(wr_index[0]),
        .I5(wr_index[1]),
        .O(\reg_prescale[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \reg_prescale[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(wr_index[3]),
        .I2(s_axi_wstrb[2]),
        .I3(wr_index[2]),
        .I4(wr_index[0]),
        .I5(wr_index[1]),
        .O(\reg_prescale[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \reg_prescale[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(wr_index[3]),
        .I2(s_axi_wstrb[3]),
        .I3(wr_index[2]),
        .I4(wr_index[0]),
        .I5(wr_index[1]),
        .O(\reg_prescale[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \reg_prescale[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(wr_index[3]),
        .I2(s_axi_wstrb[0]),
        .I3(wr_index[2]),
        .I4(wr_index[0]),
        .I5(wr_index[1]),
        .O(\reg_prescale[7]_i_1_n_0 ));
  FDRE \reg_prescale_reg[0] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(reg_prescale[0]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[10] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(reg_prescale[10]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[11] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(reg_prescale[11]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[12] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(reg_prescale[12]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[13] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(reg_prescale[13]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[14] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(reg_prescale[14]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[15] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(reg_prescale[15]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[16] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(reg_prescale[16]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[17] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(reg_prescale[17]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[18] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(reg_prescale[18]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[19] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(reg_prescale[19]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[1] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(reg_prescale[1]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[20] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(reg_prescale[20]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[21] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(reg_prescale[21]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[22] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(reg_prescale[22]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[23] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(reg_prescale[23]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[24] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(reg_prescale[24]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[25] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(reg_prescale[25]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[26] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(reg_prescale[26]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[27] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(reg_prescale[27]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[28] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(reg_prescale[28]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[29] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(reg_prescale[29]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[2] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(reg_prescale[2]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[30] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(reg_prescale[30]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[31] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(reg_prescale[31]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[3] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(reg_prescale[3]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[4] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(reg_prescale[4]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[5] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(reg_prescale[5]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[6] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(reg_prescale[6]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[7] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(reg_prescale[7]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[8] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(reg_prescale[8]),
        .R(p_0_in));
  FDRE \reg_prescale_reg[9] 
       (.C(s_axi_aclk),
        .CE(\reg_prescale[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(reg_prescale[9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \reg_src_sel[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(wr_index[2]),
        .I2(wr_index[3]),
        .I3(wr_index[0]),
        .I4(s_axi_wstrb[1]),
        .I5(wr_index[1]),
        .O(\reg_src_sel[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \reg_src_sel[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(wr_index[2]),
        .I2(wr_index[3]),
        .I3(wr_index[0]),
        .I4(s_axi_wstrb[2]),
        .I5(wr_index[1]),
        .O(\reg_src_sel[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \reg_src_sel[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(wr_index[2]),
        .I2(wr_index[3]),
        .I3(wr_index[0]),
        .I4(s_axi_wstrb[3]),
        .I5(wr_index[1]),
        .O(\reg_src_sel[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \reg_src_sel[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(wr_index[2]),
        .I2(wr_index[3]),
        .I3(wr_index[0]),
        .I4(s_axi_wstrb[0]),
        .I5(wr_index[1]),
        .O(\reg_src_sel[7]_i_1_n_0 ));
  FDRE \reg_src_sel_reg[0] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(reg_src_sel[0]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[10] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(reg_src_sel[10]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[11] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(reg_src_sel[11]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[12] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(reg_src_sel[12]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[13] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(reg_src_sel[13]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[14] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(reg_src_sel[14]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[15] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(reg_src_sel[15]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[16] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(reg_src_sel[16]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[17] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(reg_src_sel[17]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[18] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(reg_src_sel[18]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[19] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(reg_src_sel[19]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[1] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(reg_src_sel[1]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[20] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(reg_src_sel[20]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[21] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(reg_src_sel[21]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[22] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(reg_src_sel[22]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[23] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(reg_src_sel[23]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[24] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(reg_src_sel[24]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[25] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(reg_src_sel[25]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[26] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(reg_src_sel[26]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[27] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(reg_src_sel[27]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[28] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(reg_src_sel[28]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[29] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(reg_src_sel[29]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[2] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(reg_src_sel[2]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[30] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(reg_src_sel[30]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[31] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(reg_src_sel[31]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[3] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(reg_src_sel[3]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[4] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(reg_src_sel[4]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[5] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(reg_src_sel[5]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[6] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(reg_src_sel[6]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[7] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(reg_src_sel[7]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[8] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(reg_src_sel[8]),
        .R(p_0_in));
  FDRE \reg_src_sel_reg[9] 
       (.C(s_axi_aclk),
        .CE(\reg_src_sel[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(reg_src_sel[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0010)) 
    skip_zero_i_10
       (.I0(\reg_edge_skip_reg[31]_0 [1]),
        .I1(\reg_edge_skip_reg[31]_0 [0]),
        .I2(out),
        .I3(ts_en_d),
        .O(skip_zero_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    skip_zero_i_11
       (.I0(\reg_edge_skip_reg[31]_0 [4]),
        .I1(\reg_edge_skip_reg[31]_0 [5]),
        .I2(\reg_edge_skip_reg[31]_0 [2]),
        .I3(\reg_edge_skip_reg[31]_0 [3]),
        .I4(\reg_edge_skip_reg[31]_0 [7]),
        .I5(\reg_edge_skip_reg[31]_0 [6]),
        .O(skip_zero_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    skip_zero_i_12
       (.I0(\reg_edge_skip_reg[31]_0 [16]),
        .I1(\reg_edge_skip_reg[31]_0 [17]),
        .I2(\reg_edge_skip_reg[31]_0 [14]),
        .I3(\reg_edge_skip_reg[31]_0 [15]),
        .I4(\reg_edge_skip_reg[31]_0 [19]),
        .I5(\reg_edge_skip_reg[31]_0 [18]),
        .O(skip_zero_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    skip_zero_i_13
       (.I0(\reg_edge_skip_reg[31]_0 [10]),
        .I1(\reg_edge_skip_reg[31]_0 [11]),
        .I2(\reg_edge_skip_reg[31]_0 [8]),
        .I3(\reg_edge_skip_reg[31]_0 [9]),
        .I4(\reg_edge_skip_reg[31]_0 [13]),
        .I5(\reg_edge_skip_reg[31]_0 [12]),
        .O(skip_zero_i_13_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    skip_zero_i_3
       (.I0(skip_zero_i_8_n_0),
        .I1(skip_zero_i_9_n_0),
        .I2(skip_zero_i_10_n_0),
        .I3(skip_zero_i_11_n_0),
        .I4(skip_zero_i_12_n_0),
        .I5(skip_zero_i_13_n_0),
        .O(\reg_edge_skip_reg[22]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    skip_zero_i_8
       (.I0(\reg_edge_skip_reg[31]_0 [22]),
        .I1(\reg_edge_skip_reg[31]_0 [23]),
        .I2(\reg_edge_skip_reg[31]_0 [20]),
        .I3(\reg_edge_skip_reg[31]_0 [21]),
        .I4(\reg_edge_skip_reg[31]_0 [25]),
        .I5(\reg_edge_skip_reg[31]_0 [24]),
        .O(skip_zero_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    skip_zero_i_9
       (.I0(\reg_edge_skip_reg[31]_0 [28]),
        .I1(\reg_edge_skip_reg[31]_0 [29]),
        .I2(\reg_edge_skip_reg[31]_0 [26]),
        .I3(\reg_edge_skip_reg[31]_0 [27]),
        .I4(\reg_edge_skip_reg[31]_0 [31]),
        .I5(\reg_edge_skip_reg[31]_0 [30]),
        .O(skip_zero_i_9_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid),
        .I2(axi_arready_reg_0),
        .O(slv_reg_rden__0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \sync[2]_i_1 
       (.I0(soft_rst),
        .I1(ts_rst),
        .I2(s_axi_aresetn),
        .O(\reg_ctrl_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sync[2]_i_1__0 
       (.I0(soft_rst),
        .I1(s_axi_aresetn),
        .O(\reg_ctrl_reg[3]_1 ));
endmodule

(* ORIG_REF_NAME = "bit_sync" *) 
module ps_Counter_Core_0_0_bit_sync
   (D,
    E,
    \skip_limit_reg[31] ,
    p_0_in__0,
    clk_fs,
    \sync_reg[0]_0 );
  output [0:0]D;
  output [0:0]E;
  input \skip_limit_reg[31] ;
  input p_0_in__0;
  input clk_fs;
  input [0:0]\sync_reg[0]_0 ;

  wire [0:0]E;
  wire clk_fs;
  wire p_0_in__0;
  wire \skip_limit_reg[31] ;
  (* async_reg = "true" *) wire [1:0]sync;
  wire [0:0]\sync_reg[0]_0 ;

  assign D[0] = sync[1];
  LUT2 #(
    .INIT(4'h2)) 
    \skip_limit[31]_i_1 
       (.I0(sync[1]),
        .I1(\skip_limit_reg[31] ),
        .O(E));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_reg[0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\sync_reg[0]_0 ),
        .Q(sync[0]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_reg[1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(sync[0]),
        .Q(sync[1]),
        .R(p_0_in__0));
endmodule

(* ORIG_REF_NAME = "bit_sync" *) 
module ps_Counter_Core_0_0_bit_sync_2
   (\sync_reg[1]_0 ,
    SR,
    s_axi_aclk,
    out);
  output [0:0]\sync_reg[1]_0 ;
  input [0:0]SR;
  input s_axi_aclk;
  input [0:0]out;

  wire [0:0]SR;
  wire [0:0]out;
  wire s_axi_aclk;
  (* async_reg = "true" *) wire [1:0]sync;

  assign \sync_reg[1]_0 [0] = sync[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out),
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
module ps_Counter_Core_0_0_bit_sync_3
   (\sync_reg[1]_0 ,
    SR,
    s_axi_aclk,
    D);
  output [0:0]\sync_reg[1]_0 ;
  input [0:0]SR;
  input s_axi_aclk;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]SR;
  wire s_axi_aclk;
  (* async_reg = "true" *) wire [1:0]sync;

  assign \sync_reg[1]_0 [0] = sync[1];
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

(* ORIG_REF_NAME = "cnt_cdc" *) 
module ps_Counter_Core_0_0_cnt_cdc
   (rd_ptr_bin_at_wr,
    out,
    SR,
    s_axi_aclk,
    p_0_in__0,
    clk_fs);
  output [12:0]rd_ptr_bin_at_wr;
  input [12:0]out;
  input [0:0]SR;
  input s_axi_aclk;
  input p_0_in__0;
  input clk_fs;

  wire [0:0]SR;
  wire clk_fs;
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
  wire [12:0]out;
  wire p_0_in__0;
  wire \rd_ptr_at_wr_q[1]_i_2_n_0 ;
  wire \rd_ptr_at_wr_q[2]_i_2_n_0 ;
  wire \rd_ptr_at_wr_q[3]_i_2_n_0 ;
  wire \rd_ptr_at_wr_q[4]_i_2_n_0 ;
  wire [11:0]\^rd_ptr_bin_at_wr ;
  wire s_axi_aclk;

  assign rd_ptr_bin_at_wr[12] = gray_s2[12];
  assign rd_ptr_bin_at_wr[11:0] = \^rd_ptr_bin_at_wr [11:0];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_src[0]),
        .Q(gray_s1[0]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[10] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_src[10]),
        .Q(gray_s1[10]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[11] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_src[11]),
        .Q(gray_s1[11]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[12] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_src[12]),
        .Q(gray_s1[12]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_src[1]),
        .Q(gray_s1[1]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_src[2]),
        .Q(gray_s1[2]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_src[3]),
        .Q(gray_s1[3]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_src[4]),
        .Q(gray_s1[4]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_src[5]),
        .Q(gray_s1[5]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[6] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_src[6]),
        .Q(gray_s1[6]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[7] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_src[7]),
        .Q(gray_s1[7]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[8] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_src[8]),
        .Q(gray_s1[8]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[9] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_src[9]),
        .Q(gray_s1[9]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_s1[0]),
        .Q(gray_s2[0]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[10] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_s1[10]),
        .Q(gray_s2[10]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[11] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_s1[11]),
        .Q(gray_s2[11]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[12] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_s1[12]),
        .Q(gray_s2[12]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_s1[1]),
        .Q(gray_s2[1]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_s1[2]),
        .Q(gray_s2[2]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_s1[3]),
        .Q(gray_s2[3]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_s1[4]),
        .Q(gray_s2[4]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_s1[5]),
        .Q(gray_s2[5]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[6] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_s1[6]),
        .Q(gray_s2[6]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[7] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_s1[7]),
        .Q(gray_s2[7]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[8] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_s1[8]),
        .Q(gray_s2[8]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[9] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(gray_s1[9]),
        .Q(gray_s2[9]),
        .R(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[0]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .O(\gray_src[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[10]_i_1 
       (.I0(out[11]),
        .I1(out[10]),
        .O(\gray_src[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[11]_i_1 
       (.I0(out[12]),
        .I1(out[11]),
        .O(\gray_src[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[1]_i_1 
       (.I0(out[2]),
        .I1(out[1]),
        .O(\gray_src[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[2]_i_1 
       (.I0(out[3]),
        .I1(out[2]),
        .O(\gray_src[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[3]_i_1 
       (.I0(out[4]),
        .I1(out[3]),
        .O(\gray_src[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[4]_i_1 
       (.I0(out[5]),
        .I1(out[4]),
        .O(\gray_src[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[5]_i_1 
       (.I0(out[6]),
        .I1(out[5]),
        .O(\gray_src[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[6]_i_1 
       (.I0(out[7]),
        .I1(out[6]),
        .O(\gray_src[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[7]_i_1 
       (.I0(out[8]),
        .I1(out[7]),
        .O(\gray_src[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[8]_i_1 
       (.I0(out[9]),
        .I1(out[8]),
        .O(\gray_src[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[9]_i_1 
       (.I0(out[10]),
        .I1(out[9]),
        .O(\gray_src[9]_i_1_n_0 ));
  FDRE \gray_src_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[0]_i_1_n_0 ),
        .Q(gray_src[0]),
        .R(SR));
  FDRE \gray_src_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[10]_i_1_n_0 ),
        .Q(gray_src[10]),
        .R(SR));
  FDRE \gray_src_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[11]_i_1_n_0 ),
        .Q(gray_src[11]),
        .R(SR));
  FDRE \gray_src_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out[12]),
        .Q(gray_src[12]),
        .R(SR));
  FDRE \gray_src_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[1]_i_1_n_0 ),
        .Q(gray_src[1]),
        .R(SR));
  FDRE \gray_src_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[2]_i_1_n_0 ),
        .Q(gray_src[2]),
        .R(SR));
  FDRE \gray_src_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[3]_i_1_n_0 ),
        .Q(gray_src[3]),
        .R(SR));
  FDRE \gray_src_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[4]_i_1_n_0 ),
        .Q(gray_src[4]),
        .R(SR));
  FDRE \gray_src_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[5]_i_1_n_0 ),
        .Q(gray_src[5]),
        .R(SR));
  FDRE \gray_src_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[6]_i_1_n_0 ),
        .Q(gray_src[6]),
        .R(SR));
  FDRE \gray_src_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[7]_i_1_n_0 ),
        .Q(gray_src[7]),
        .R(SR));
  FDRE \gray_src_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[8]_i_1_n_0 ),
        .Q(gray_src[8]),
        .R(SR));
  FDRE \gray_src_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\gray_src[9]_i_1_n_0 ),
        .Q(gray_src[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \rd_ptr_at_wr_q[0]_i_1 
       (.I0(\^rd_ptr_bin_at_wr [8]),
        .I1(gray_s2[2]),
        .I2(gray_s2[3]),
        .I3(gray_s2[0]),
        .I4(gray_s2[1]),
        .I5(\rd_ptr_at_wr_q[4]_i_2_n_0 ),
        .O(\^rd_ptr_bin_at_wr [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \rd_ptr_at_wr_q[10]_i_1 
       (.I0(gray_s2[12]),
        .I1(gray_s2[10]),
        .I2(gray_s2[11]),
        .O(\^rd_ptr_bin_at_wr [10]));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_at_wr_q[11]_i_1 
       (.I0(gray_s2[12]),
        .I1(gray_s2[11]),
        .O(\^rd_ptr_bin_at_wr [11]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \rd_ptr_at_wr_q[1]_i_1 
       (.I0(\^rd_ptr_bin_at_wr [9]),
        .I1(gray_s2[3]),
        .I2(gray_s2[4]),
        .I3(gray_s2[1]),
        .I4(gray_s2[2]),
        .I5(\rd_ptr_at_wr_q[1]_i_2_n_0 ),
        .O(\^rd_ptr_bin_at_wr [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \rd_ptr_at_wr_q[1]_i_2 
       (.I0(gray_s2[7]),
        .I1(gray_s2[8]),
        .I2(gray_s2[5]),
        .I3(gray_s2[6]),
        .O(\rd_ptr_at_wr_q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \rd_ptr_at_wr_q[2]_i_1 
       (.I0(\^rd_ptr_bin_at_wr [10]),
        .I1(gray_s2[4]),
        .I2(gray_s2[5]),
        .I3(gray_s2[2]),
        .I4(gray_s2[3]),
        .I5(\rd_ptr_at_wr_q[2]_i_2_n_0 ),
        .O(\^rd_ptr_bin_at_wr [2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \rd_ptr_at_wr_q[2]_i_2 
       (.I0(gray_s2[8]),
        .I1(gray_s2[9]),
        .I2(gray_s2[6]),
        .I3(gray_s2[7]),
        .O(\rd_ptr_at_wr_q[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \rd_ptr_at_wr_q[3]_i_1 
       (.I0(\^rd_ptr_bin_at_wr [11]),
        .I1(gray_s2[5]),
        .I2(gray_s2[6]),
        .I3(gray_s2[3]),
        .I4(gray_s2[4]),
        .I5(\rd_ptr_at_wr_q[3]_i_2_n_0 ),
        .O(\^rd_ptr_bin_at_wr [3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \rd_ptr_at_wr_q[3]_i_2 
       (.I0(gray_s2[9]),
        .I1(gray_s2[10]),
        .I2(gray_s2[7]),
        .I3(gray_s2[8]),
        .O(\rd_ptr_at_wr_q[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \rd_ptr_at_wr_q[4]_i_1 
       (.I0(gray_s2[12]),
        .I1(\rd_ptr_at_wr_q[4]_i_2_n_0 ),
        .I2(gray_s2[10]),
        .I3(gray_s2[11]),
        .I4(gray_s2[8]),
        .I5(gray_s2[9]),
        .O(\^rd_ptr_bin_at_wr [4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \rd_ptr_at_wr_q[4]_i_2 
       (.I0(gray_s2[6]),
        .I1(gray_s2[7]),
        .I2(gray_s2[4]),
        .I3(gray_s2[5]),
        .O(\rd_ptr_at_wr_q[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \rd_ptr_at_wr_q[5]_i_1 
       (.I0(\^rd_ptr_bin_at_wr [9]),
        .I1(gray_s2[6]),
        .I2(gray_s2[5]),
        .I3(gray_s2[8]),
        .I4(gray_s2[7]),
        .O(\^rd_ptr_bin_at_wr [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \rd_ptr_at_wr_q[6]_i_1 
       (.I0(\^rd_ptr_bin_at_wr [10]),
        .I1(gray_s2[7]),
        .I2(gray_s2[6]),
        .I3(gray_s2[9]),
        .I4(gray_s2[8]),
        .O(\^rd_ptr_bin_at_wr [6]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \rd_ptr_at_wr_q[7]_i_1 
       (.I0(gray_s2[11]),
        .I1(gray_s2[12]),
        .I2(gray_s2[8]),
        .I3(gray_s2[7]),
        .I4(gray_s2[10]),
        .I5(gray_s2[9]),
        .O(\^rd_ptr_bin_at_wr [7]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \rd_ptr_at_wr_q[8]_i_1 
       (.I0(gray_s2[12]),
        .I1(gray_s2[9]),
        .I2(gray_s2[8]),
        .I3(gray_s2[11]),
        .I4(gray_s2[10]),
        .O(\^rd_ptr_bin_at_wr [8]));
  LUT4 #(
    .INIT(16'h6996)) 
    \rd_ptr_at_wr_q[9]_i_1 
       (.I0(gray_s2[11]),
        .I1(gray_s2[12]),
        .I2(gray_s2[9]),
        .I3(gray_s2[10]),
        .O(\^rd_ptr_bin_at_wr [9]));
endmodule

(* ORIG_REF_NAME = "cnt_cdc" *) 
module ps_Counter_Core_0_0_cnt_cdc_5
   (\gray_s2_reg[12]_0 ,
    S,
    \rd_ptr_bin_reg[3] ,
    \gray_s2_reg[9]_0 ,
    \gray_s2_reg[12]_1 ,
    \gray_s2_reg[12]_2 ,
    \gray_s2_reg[11]_0 ,
    DI,
    out,
    wr_ptr_bin_reg,
    p_0_in__0,
    clk_fs,
    SR,
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
  input [12:0]wr_ptr_bin_reg;
  input p_0_in__0;
  input clk_fs;
  input [0:0]SR;
  input s_axi_aclk;

  wire [2:0]DI;
  wire [3:0]S;
  wire [0:0]SR;
  wire clk_fs;
  wire fifo_level_carry_i_10_n_0;
  wire fifo_level_carry_i_12_n_0;
  wire fifo_level_carry_i_14_n_0;
  wire fifo_level_carry_i_15_n_0;
  (* async_reg = "true" *) wire [12:0]gray_s1;
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
  wire int_empty_carry_i_5_n_0;
  wire int_empty_carry_i_6_n_0;
  wire int_empty_carry_i_7_n_0;
  wire [12:0]out;
  wire p_0_in__0;
  wire [3:0]\rd_ptr_bin_reg[3] ;
  wire s_axi_aclk;
  wire [11:9]wr_ptr_bin_at_rd;
  wire [12:0]wr_ptr_bin_reg;

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
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[10]),
        .Q(gray_s1[10]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[11]),
        .Q(gray_s1[11]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[12]),
        .Q(gray_s1[12]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[1]),
        .Q(gray_s1[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[2]),
        .Q(gray_s1[2]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[3]),
        .Q(gray_s1[3]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[4]),
        .Q(gray_s1[4]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[5]),
        .Q(gray_s1[5]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[6]),
        .Q(gray_s1[6]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[7]),
        .Q(gray_s1[7]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[8]),
        .Q(gray_s1[8]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[9]),
        .Q(gray_s1[9]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[0]),
        .Q(gray_s2[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[10]),
        .Q(gray_s2[10]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[11]),
        .Q(gray_s2[11]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[12]),
        .Q(gray_s2[12]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[1]),
        .Q(gray_s2[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[2]),
        .Q(gray_s2[2]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[3]),
        .Q(gray_s2[3]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[4]),
        .Q(gray_s2[4]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[5]),
        .Q(gray_s2[5]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[6]),
        .Q(gray_s2[6]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[7]),
        .Q(gray_s2[7]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[8]),
        .Q(gray_s2[8]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[9]),
        .Q(gray_s2[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[0]_i_1 
       (.I0(wr_ptr_bin_reg[1]),
        .I1(wr_ptr_bin_reg[0]),
        .O(\gray_src[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[10]_i_1 
       (.I0(wr_ptr_bin_reg[11]),
        .I1(wr_ptr_bin_reg[10]),
        .O(\gray_src[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[11]_i_1 
       (.I0(wr_ptr_bin_reg[12]),
        .I1(wr_ptr_bin_reg[11]),
        .O(\gray_src[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[1]_i_1 
       (.I0(wr_ptr_bin_reg[2]),
        .I1(wr_ptr_bin_reg[1]),
        .O(\gray_src[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[2]_i_1 
       (.I0(wr_ptr_bin_reg[3]),
        .I1(wr_ptr_bin_reg[2]),
        .O(\gray_src[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[3]_i_1 
       (.I0(wr_ptr_bin_reg[4]),
        .I1(wr_ptr_bin_reg[3]),
        .O(\gray_src[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[4]_i_1 
       (.I0(wr_ptr_bin_reg[5]),
        .I1(wr_ptr_bin_reg[4]),
        .O(\gray_src[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[5]_i_1 
       (.I0(wr_ptr_bin_reg[6]),
        .I1(wr_ptr_bin_reg[5]),
        .O(\gray_src[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[6]_i_1 
       (.I0(wr_ptr_bin_reg[7]),
        .I1(wr_ptr_bin_reg[6]),
        .O(\gray_src[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[7]_i_1 
       (.I0(wr_ptr_bin_reg[8]),
        .I1(wr_ptr_bin_reg[7]),
        .O(\gray_src[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[8]_i_1 
       (.I0(wr_ptr_bin_reg[9]),
        .I1(wr_ptr_bin_reg[8]),
        .O(\gray_src[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[9]_i_1 
       (.I0(wr_ptr_bin_reg[10]),
        .I1(wr_ptr_bin_reg[9]),
        .O(\gray_src[9]_i_1_n_0 ));
  FDRE \gray_src_reg[0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[0]_i_1_n_0 ),
        .Q(gray_src[0]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[10] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[10]_i_1_n_0 ),
        .Q(gray_src[10]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[11] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[11]_i_1_n_0 ),
        .Q(gray_src[11]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[12] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(wr_ptr_bin_reg[12]),
        .Q(gray_src[12]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[1]_i_1_n_0 ),
        .Q(gray_src[1]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[2]_i_1_n_0 ),
        .Q(gray_src[2]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[3]_i_1_n_0 ),
        .Q(gray_src[3]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[4]_i_1_n_0 ),
        .Q(gray_src[4]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[5]_i_1_n_0 ),
        .Q(gray_src[5]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[6] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[6]_i_1_n_0 ),
        .Q(gray_src[6]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[7] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[7]_i_1_n_0 ),
        .Q(gray_src[7]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[8] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[8]_i_1_n_0 ),
        .Q(gray_src[8]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[9] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[9]_i_1_n_0 ),
        .Q(gray_src[9]),
        .R(p_0_in__0));
  LUT2 #(
    .INIT(4'h9)) 
    int_empty_carry__0_i_1
       (.I0(gray_s2[12]),
        .I1(out[12]),
        .O(\gray_s2_reg[12]_2 ));
  LUT6 #(
    .INIT(64'h0960600900000000)) 
    int_empty_carry_i_1
       (.I0(gray_s2[11]),
        .I1(gray_s2[12]),
        .I2(out[11]),
        .I3(gray_s2[10]),
        .I4(out[10]),
        .I5(int_empty_carry_i_5_n_0),
        .O(\gray_s2_reg[11]_0 [3]));
  LUT5 #(
    .INIT(32'h90090000)) 
    int_empty_carry_i_2
       (.I0(\gray_s2_reg[12]_0 [8]),
        .I1(out[8]),
        .I2(\gray_s2_reg[12]_0 [7]),
        .I3(out[7]),
        .I4(int_empty_carry_i_6_n_0),
        .O(\gray_s2_reg[11]_0 [2]));
  LUT5 #(
    .INIT(32'h82000082)) 
    int_empty_carry_i_3
       (.I0(int_empty_carry_i_7_n_0),
        .I1(\gray_s2_reg[12]_0 [4]),
        .I2(out[4]),
        .I3(out[3]),
        .I4(\gray_s2_reg[12]_0 [3]),
        .O(\gray_s2_reg[11]_0 [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    int_empty_carry_i_4
       (.I0(\gray_s2_reg[12]_0 [2]),
        .I1(out[2]),
        .I2(\gray_s2_reg[12]_0 [1]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\gray_s2_reg[12]_0 [0]),
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
module ps_Counter_Core_0_0_cnt_cdc__parameterized0
   (dst_cnt,
    src_cnt,
    p_0_in__0,
    clk_fs,
    SR,
    s_axi_aclk);
  output [31:0]dst_cnt;
  input [31:0]src_cnt;
  input p_0_in__0;
  input clk_fs;
  input [0:0]SR;
  input s_axi_aclk;

  wire [0:0]SR;
  wire \axi_rdata[10]_i_8_n_0 ;
  wire \axi_rdata[10]_i_9_n_0 ;
  wire \axi_rdata[11]_i_8_n_0 ;
  wire \axi_rdata[11]_i_9_n_0 ;
  wire \axi_rdata[12]_i_11_n_0 ;
  wire \axi_rdata[12]_i_12_n_0 ;
  wire \axi_rdata[12]_i_14_n_0 ;
  wire \axi_rdata[13]_i_11_n_0 ;
  wire \axi_rdata[13]_i_8_n_0 ;
  wire \axi_rdata[13]_i_9_n_0 ;
  wire \axi_rdata[14]_i_11_n_0 ;
  wire \axi_rdata[14]_i_8_n_0 ;
  wire \axi_rdata[14]_i_9_n_0 ;
  wire \axi_rdata[15]_i_11_n_0 ;
  wire \axi_rdata[15]_i_8_n_0 ;
  wire \axi_rdata[15]_i_9_n_0 ;
  wire \axi_rdata[16]_i_8_n_0 ;
  wire \axi_rdata[16]_i_9_n_0 ;
  wire \axi_rdata[17]_i_8_n_0 ;
  wire \axi_rdata[17]_i_9_n_0 ;
  wire \axi_rdata[18]_i_7_n_0 ;
  wire \axi_rdata[19]_i_7_n_0 ;
  wire \axi_rdata[20]_i_7_n_0 ;
  wire \axi_rdata[21]_i_7_n_0 ;
  wire \axi_rdata[22]_i_7_n_0 ;
  wire \axi_rdata[23]_i_7_n_0 ;
  wire \axi_rdata[2]_i_7_n_0 ;
  wire \axi_rdata[3]_i_7_n_0 ;
  wire \axi_rdata[4]_i_11_n_0 ;
  wire \axi_rdata[4]_i_12_n_0 ;
  wire \axi_rdata[5]_i_8_n_0 ;
  wire \axi_rdata[5]_i_9_n_0 ;
  wire \axi_rdata[6]_i_8_n_0 ;
  wire \axi_rdata[6]_i_9_n_0 ;
  wire \axi_rdata[7]_i_8_n_0 ;
  wire \axi_rdata[7]_i_9_n_0 ;
  wire \axi_rdata[8]_i_10_n_0 ;
  wire \axi_rdata[8]_i_9_n_0 ;
  wire \axi_rdata[9]_i_8_n_0 ;
  wire \axi_rdata[9]_i_9_n_0 ;
  wire clk_fs;
  wire [30:0]\^dst_cnt ;
  (* async_reg = "true" *) wire [31:0]gray_s1;
  (* async_reg = "true" *) wire [31:0]gray_s2;
  wire [31:0]gray_src;
  wire \gray_src[0]_i_1__0_n_0 ;
  wire \gray_src[10]_i_1__0_n_0 ;
  wire \gray_src[11]_i_1__0_n_0 ;
  wire \gray_src[12]_i_1__0_n_0 ;
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
  wire p_0_in__0;
  wire s_axi_aclk;
  wire [31:0]src_cnt;

  assign dst_cnt[31] = gray_s2[31];
  assign dst_cnt[30:0] = \^dst_cnt [30:0];
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[0]_i_6 
       (.I0(\^dst_cnt [16]),
        .I1(\axi_rdata[4]_i_12_n_0 ),
        .I2(gray_s2[1]),
        .I3(gray_s2[0]),
        .I4(\axi_rdata[2]_i_7_n_0 ),
        .I5(\axi_rdata[8]_i_9_n_0 ),
        .O(\^dst_cnt [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[10]_i_5 
       (.I0(\^dst_cnt [26]),
        .I1(\axi_rdata[10]_i_8_n_0 ),
        .I2(\axi_rdata[10]_i_9_n_0 ),
        .O(\^dst_cnt [10]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[10]_i_8 
       (.I0(gray_s2[15]),
        .I1(gray_s2[14]),
        .I2(gray_s2[17]),
        .I3(gray_s2[16]),
        .I4(\axi_rdata[6]_i_8_n_0 ),
        .O(\axi_rdata[10]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[10]_i_9 
       (.I0(gray_s2[23]),
        .I1(gray_s2[22]),
        .I2(gray_s2[25]),
        .I3(gray_s2[24]),
        .I4(\axi_rdata[18]_i_7_n_0 ),
        .O(\axi_rdata[10]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[11]_i_5 
       (.I0(\^dst_cnt [27]),
        .I1(\axi_rdata[11]_i_8_n_0 ),
        .I2(\axi_rdata[11]_i_9_n_0 ),
        .O(\^dst_cnt [11]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[11]_i_8 
       (.I0(gray_s2[16]),
        .I1(gray_s2[15]),
        .I2(gray_s2[18]),
        .I3(gray_s2[17]),
        .I4(\axi_rdata[7]_i_8_n_0 ),
        .O(\axi_rdata[11]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[11]_i_9 
       (.I0(gray_s2[24]),
        .I1(gray_s2[23]),
        .I2(gray_s2[26]),
        .I3(gray_s2[25]),
        .I4(\axi_rdata[19]_i_7_n_0 ),
        .O(\axi_rdata[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[12]_i_11 
       (.I0(gray_s2[17]),
        .I1(gray_s2[16]),
        .I2(gray_s2[19]),
        .I3(gray_s2[18]),
        .I4(\axi_rdata[12]_i_14_n_0 ),
        .O(\axi_rdata[12]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[12]_i_12 
       (.I0(gray_s2[25]),
        .I1(gray_s2[24]),
        .I2(gray_s2[27]),
        .I3(gray_s2[26]),
        .I4(\axi_rdata[20]_i_7_n_0 ),
        .O(\axi_rdata[12]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[12]_i_14 
       (.I0(gray_s2[14]),
        .I1(gray_s2[15]),
        .I2(gray_s2[12]),
        .I3(gray_s2[13]),
        .O(\axi_rdata[12]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[12]_i_6 
       (.I0(gray_s2[29]),
        .I1(gray_s2[28]),
        .I2(gray_s2[31]),
        .I3(gray_s2[30]),
        .I4(\axi_rdata[12]_i_11_n_0 ),
        .I5(\axi_rdata[12]_i_12_n_0 ),
        .O(\^dst_cnt [12]));
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
        .I3(\axi_rdata[13]_i_8_n_0 ),
        .I4(\axi_rdata[13]_i_9_n_0 ),
        .O(\^dst_cnt [13]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[13]_i_8 
       (.I0(gray_s2[18]),
        .I1(gray_s2[17]),
        .I2(gray_s2[20]),
        .I3(gray_s2[19]),
        .I4(\axi_rdata[13]_i_11_n_0 ),
        .O(\axi_rdata[13]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[13]_i_9 
       (.I0(gray_s2[26]),
        .I1(gray_s2[25]),
        .I2(gray_s2[28]),
        .I3(gray_s2[27]),
        .I4(\axi_rdata[21]_i_7_n_0 ),
        .O(\axi_rdata[13]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[14]_i_11 
       (.I0(gray_s2[16]),
        .I1(gray_s2[17]),
        .I2(gray_s2[14]),
        .I3(gray_s2[15]),
        .O(\axi_rdata[14]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[14]_i_5 
       (.I0(gray_s2[30]),
        .I1(gray_s2[31]),
        .I2(\axi_rdata[14]_i_8_n_0 ),
        .I3(\axi_rdata[14]_i_9_n_0 ),
        .O(\^dst_cnt [14]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[14]_i_8 
       (.I0(gray_s2[19]),
        .I1(gray_s2[18]),
        .I2(gray_s2[21]),
        .I3(gray_s2[20]),
        .I4(\axi_rdata[14]_i_11_n_0 ),
        .O(\axi_rdata[14]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[14]_i_9 
       (.I0(gray_s2[27]),
        .I1(gray_s2[26]),
        .I2(gray_s2[29]),
        .I3(gray_s2[28]),
        .I4(\axi_rdata[22]_i_7_n_0 ),
        .O(\axi_rdata[14]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[15]_i_11 
       (.I0(gray_s2[17]),
        .I1(gray_s2[18]),
        .I2(gray_s2[15]),
        .I3(gray_s2[16]),
        .O(\axi_rdata[15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[15]_i_5 
       (.I0(gray_s2[31]),
        .I1(\axi_rdata[15]_i_8_n_0 ),
        .I2(\axi_rdata[15]_i_9_n_0 ),
        .O(\^dst_cnt [15]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[15]_i_8 
       (.I0(gray_s2[20]),
        .I1(gray_s2[19]),
        .I2(gray_s2[22]),
        .I3(gray_s2[21]),
        .I4(\axi_rdata[15]_i_11_n_0 ),
        .O(\axi_rdata[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[15]_i_9 
       (.I0(gray_s2[28]),
        .I1(gray_s2[27]),
        .I2(gray_s2[30]),
        .I3(gray_s2[29]),
        .I4(\axi_rdata[23]_i_7_n_0 ),
        .O(\axi_rdata[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[16]_i_5 
       (.I0(\axi_rdata[16]_i_8_n_0 ),
        .I1(\^dst_cnt [30]),
        .I2(gray_s2[28]),
        .I3(gray_s2[29]),
        .I4(\axi_rdata[16]_i_9_n_0 ),
        .I5(\axi_rdata[20]_i_7_n_0 ),
        .O(\^dst_cnt [16]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[16]_i_8 
       (.I0(gray_s2[26]),
        .I1(gray_s2[27]),
        .I2(gray_s2[24]),
        .I3(gray_s2[25]),
        .O(\axi_rdata[16]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[16]_i_9 
       (.I0(gray_s2[18]),
        .I1(gray_s2[19]),
        .I2(gray_s2[16]),
        .I3(gray_s2[17]),
        .O(\axi_rdata[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[17]_i_5 
       (.I0(\axi_rdata[17]_i_8_n_0 ),
        .I1(gray_s2[31]),
        .I2(gray_s2[29]),
        .I3(gray_s2[30]),
        .I4(\axi_rdata[17]_i_9_n_0 ),
        .I5(\axi_rdata[21]_i_7_n_0 ),
        .O(\^dst_cnt [17]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[17]_i_8 
       (.I0(gray_s2[27]),
        .I1(gray_s2[28]),
        .I2(gray_s2[25]),
        .I3(gray_s2[26]),
        .O(\axi_rdata[17]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[17]_i_9 
       (.I0(gray_s2[19]),
        .I1(gray_s2[20]),
        .I2(gray_s2[17]),
        .I3(gray_s2[18]),
        .O(\axi_rdata[17]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[18]_i_5 
       (.I0(\^dst_cnt [26]),
        .I1(\axi_rdata[18]_i_7_n_0 ),
        .I2(gray_s2[24]),
        .I3(gray_s2[25]),
        .I4(gray_s2[22]),
        .I5(gray_s2[23]),
        .O(\^dst_cnt [18]));
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
       (.I0(\^dst_cnt [27]),
        .I1(\axi_rdata[19]_i_7_n_0 ),
        .I2(gray_s2[25]),
        .I3(gray_s2[26]),
        .I4(gray_s2[23]),
        .I5(gray_s2[24]),
        .O(\^dst_cnt [19]));
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
    \axi_rdata[1]_i_5 
       (.I0(\^dst_cnt [17]),
        .I1(\axi_rdata[5]_i_9_n_0 ),
        .I2(gray_s2[2]),
        .I3(gray_s2[1]),
        .I4(\axi_rdata[3]_i_7_n_0 ),
        .I5(\axi_rdata[9]_i_8_n_0 ),
        .O(\^dst_cnt [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[20]_i_5 
       (.I0(\^dst_cnt [28]),
        .I1(\axi_rdata[20]_i_7_n_0 ),
        .I2(gray_s2[26]),
        .I3(gray_s2[27]),
        .I4(gray_s2[24]),
        .I5(gray_s2[25]),
        .O(\^dst_cnt [20]));
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
       (.I0(\^dst_cnt [29]),
        .I1(\axi_rdata[21]_i_7_n_0 ),
        .I2(gray_s2[27]),
        .I3(gray_s2[28]),
        .I4(gray_s2[25]),
        .I5(gray_s2[26]),
        .O(\^dst_cnt [21]));
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
       (.I0(\^dst_cnt [30]),
        .I1(\axi_rdata[22]_i_7_n_0 ),
        .I2(gray_s2[28]),
        .I3(gray_s2[29]),
        .I4(gray_s2[26]),
        .I5(gray_s2[27]),
        .O(\^dst_cnt [22]));
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
        .O(\^dst_cnt [23]));
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
       (.I0(\^dst_cnt [28]),
        .I1(gray_s2[25]),
        .I2(gray_s2[24]),
        .I3(gray_s2[27]),
        .I4(gray_s2[26]),
        .O(\^dst_cnt [24]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[25]_i_5 
       (.I0(\^dst_cnt [29]),
        .I1(gray_s2[26]),
        .I2(gray_s2[25]),
        .I3(gray_s2[28]),
        .I4(gray_s2[27]),
        .O(\^dst_cnt [25]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[26]_i_5 
       (.I0(gray_s2[30]),
        .I1(gray_s2[31]),
        .I2(gray_s2[27]),
        .I3(gray_s2[26]),
        .I4(gray_s2[29]),
        .I5(gray_s2[28]),
        .O(\^dst_cnt [26]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[27]_i_5 
       (.I0(gray_s2[31]),
        .I1(gray_s2[28]),
        .I2(gray_s2[27]),
        .I3(gray_s2[30]),
        .I4(gray_s2[29]),
        .O(\^dst_cnt [27]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[28]_i_5 
       (.I0(gray_s2[30]),
        .I1(gray_s2[31]),
        .I2(gray_s2[28]),
        .I3(gray_s2[29]),
        .O(\^dst_cnt [28]));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[29]_i_5 
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
        .I5(\axi_rdata[10]_i_8_n_0 ),
        .O(\^dst_cnt [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[2]_i_7 
       (.I0(gray_s2[3]),
        .I1(gray_s2[2]),
        .O(\axi_rdata[2]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[30]_i_8 
       (.I0(gray_s2[31]),
        .I1(gray_s2[30]),
        .O(\^dst_cnt [30]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[3]_i_5 
       (.I0(\^dst_cnt [19]),
        .I1(\axi_rdata[7]_i_9_n_0 ),
        .I2(\axi_rdata[3]_i_7_n_0 ),
        .I3(gray_s2[6]),
        .I4(gray_s2[5]),
        .I5(\axi_rdata[11]_i_8_n_0 ),
        .O(\^dst_cnt [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[3]_i_7 
       (.I0(gray_s2[4]),
        .I1(gray_s2[3]),
        .O(\axi_rdata[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[4]_i_11 
       (.I0(gray_s2[10]),
        .I1(gray_s2[11]),
        .I2(gray_s2[8]),
        .I3(gray_s2[9]),
        .O(\axi_rdata[4]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[4]_i_12 
       (.I0(gray_s2[6]),
        .I1(gray_s2[7]),
        .I2(gray_s2[4]),
        .I3(gray_s2[5]),
        .O(\axi_rdata[4]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[4]_i_8 
       (.I0(\^dst_cnt [20]),
        .I1(\axi_rdata[4]_i_11_n_0 ),
        .I2(\axi_rdata[4]_i_12_n_0 ),
        .I3(\axi_rdata[12]_i_11_n_0 ),
        .O(\^dst_cnt [4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[5]_i_5 
       (.I0(\^dst_cnt [21]),
        .I1(\axi_rdata[5]_i_8_n_0 ),
        .I2(\axi_rdata[5]_i_9_n_0 ),
        .I3(\axi_rdata[13]_i_8_n_0 ),
        .O(\^dst_cnt [5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[5]_i_8 
       (.I0(gray_s2[11]),
        .I1(gray_s2[12]),
        .I2(gray_s2[9]),
        .I3(gray_s2[10]),
        .O(\axi_rdata[5]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[5]_i_9 
       (.I0(gray_s2[7]),
        .I1(gray_s2[8]),
        .I2(gray_s2[5]),
        .I3(gray_s2[6]),
        .O(\axi_rdata[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[6]_i_5 
       (.I0(\axi_rdata[14]_i_9_n_0 ),
        .I1(gray_s2[31]),
        .I2(gray_s2[30]),
        .I3(\axi_rdata[6]_i_8_n_0 ),
        .I4(\axi_rdata[6]_i_9_n_0 ),
        .I5(\axi_rdata[14]_i_8_n_0 ),
        .O(\^dst_cnt [6]));
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
    \axi_rdata[7]_i_5 
       (.I0(\^dst_cnt [23]),
        .I1(\axi_rdata[7]_i_8_n_0 ),
        .I2(\axi_rdata[7]_i_9_n_0 ),
        .I3(\axi_rdata[15]_i_8_n_0 ),
        .O(\^dst_cnt [7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[7]_i_8 
       (.I0(gray_s2[13]),
        .I1(gray_s2[14]),
        .I2(gray_s2[11]),
        .I3(gray_s2[12]),
        .O(\axi_rdata[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[7]_i_9 
       (.I0(gray_s2[9]),
        .I1(gray_s2[10]),
        .I2(gray_s2[7]),
        .I3(gray_s2[8]),
        .O(\axi_rdata[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[8]_i_10 
       (.I0(gray_s2[21]),
        .I1(gray_s2[20]),
        .I2(gray_s2[23]),
        .I3(gray_s2[22]),
        .I4(\axi_rdata[16]_i_9_n_0 ),
        .O(\axi_rdata[8]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[8]_i_6 
       (.I0(\^dst_cnt [24]),
        .I1(\axi_rdata[8]_i_9_n_0 ),
        .I2(\axi_rdata[8]_i_10_n_0 ),
        .O(\^dst_cnt [8]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[8]_i_9 
       (.I0(gray_s2[13]),
        .I1(gray_s2[12]),
        .I2(gray_s2[15]),
        .I3(gray_s2[14]),
        .I4(\axi_rdata[4]_i_11_n_0 ),
        .O(\axi_rdata[8]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[9]_i_5 
       (.I0(\^dst_cnt [25]),
        .I1(\axi_rdata[9]_i_8_n_0 ),
        .I2(\axi_rdata[9]_i_9_n_0 ),
        .O(\^dst_cnt [9]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[9]_i_8 
       (.I0(gray_s2[14]),
        .I1(gray_s2[13]),
        .I2(gray_s2[16]),
        .I3(gray_s2[15]),
        .I4(\axi_rdata[5]_i_8_n_0 ),
        .O(\axi_rdata[9]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[9]_i_9 
       (.I0(gray_s2[22]),
        .I1(gray_s2[21]),
        .I2(gray_s2[24]),
        .I3(gray_s2[23]),
        .I4(\axi_rdata[17]_i_9_n_0 ),
        .O(\axi_rdata[9]_i_9_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[0]),
        .Q(gray_s1[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[10]),
        .Q(gray_s1[10]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[11]),
        .Q(gray_s1[11]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[12]),
        .Q(gray_s1[12]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[13]),
        .Q(gray_s1[13]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[14]),
        .Q(gray_s1[14]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[15]),
        .Q(gray_s1[15]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[16]),
        .Q(gray_s1[16]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[17]),
        .Q(gray_s1[17]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[18]),
        .Q(gray_s1[18]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[19]),
        .Q(gray_s1[19]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[1]),
        .Q(gray_s1[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[20]),
        .Q(gray_s1[20]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[21]),
        .Q(gray_s1[21]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[22]),
        .Q(gray_s1[22]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[23]),
        .Q(gray_s1[23]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[24]),
        .Q(gray_s1[24]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[25]),
        .Q(gray_s1[25]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[26]),
        .Q(gray_s1[26]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[27]),
        .Q(gray_s1[27]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[28]),
        .Q(gray_s1[28]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[29]),
        .Q(gray_s1[29]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[2]),
        .Q(gray_s1[2]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[30]),
        .Q(gray_s1[30]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[31]),
        .Q(gray_s1[31]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[3]),
        .Q(gray_s1[3]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[4]),
        .Q(gray_s1[4]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[5]),
        .Q(gray_s1[5]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[6]),
        .Q(gray_s1[6]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[7]),
        .Q(gray_s1[7]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[8]),
        .Q(gray_s1[8]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[9]),
        .Q(gray_s1[9]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[0]),
        .Q(gray_s2[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[10]),
        .Q(gray_s2[10]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[11]),
        .Q(gray_s2[11]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[12]),
        .Q(gray_s2[12]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[13]),
        .Q(gray_s2[13]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[14]),
        .Q(gray_s2[14]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[15]),
        .Q(gray_s2[15]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[16]),
        .Q(gray_s2[16]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[17]),
        .Q(gray_s2[17]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[18]),
        .Q(gray_s2[18]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[19]),
        .Q(gray_s2[19]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[1]),
        .Q(gray_s2[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[20]),
        .Q(gray_s2[20]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[21]),
        .Q(gray_s2[21]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[22]),
        .Q(gray_s2[22]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[23]),
        .Q(gray_s2[23]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[24]),
        .Q(gray_s2[24]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[25]),
        .Q(gray_s2[25]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[26]),
        .Q(gray_s2[26]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[27]),
        .Q(gray_s2[27]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[28]),
        .Q(gray_s2[28]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[29]),
        .Q(gray_s2[29]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[2]),
        .Q(gray_s2[2]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[30]),
        .Q(gray_s2[30]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[31]),
        .Q(gray_s2[31]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[3]),
        .Q(gray_s2[3]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[4]),
        .Q(gray_s2[4]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[5]),
        .Q(gray_s2[5]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[6]),
        .Q(gray_s2[6]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[7]),
        .Q(gray_s2[7]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[8]),
        .Q(gray_s2[8]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[9]),
        .Q(gray_s2[9]),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[0]_i_1__0 
       (.I0(src_cnt[1]),
        .I1(src_cnt[0]),
        .O(\gray_src[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[10]_i_1__0 
       (.I0(src_cnt[11]),
        .I1(src_cnt[10]),
        .O(\gray_src[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[11]_i_1__0 
       (.I0(src_cnt[12]),
        .I1(src_cnt[11]),
        .O(\gray_src[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[12]_i_1__0 
       (.I0(src_cnt[13]),
        .I1(src_cnt[12]),
        .O(\gray_src[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[13]_i_1__0 
       (.I0(src_cnt[14]),
        .I1(src_cnt[13]),
        .O(\gray_src[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[14]_i_1__0 
       (.I0(src_cnt[15]),
        .I1(src_cnt[14]),
        .O(\gray_src[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[15]_i_1__0 
       (.I0(src_cnt[16]),
        .I1(src_cnt[15]),
        .O(\gray_src[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[16]_i_1__0 
       (.I0(src_cnt[17]),
        .I1(src_cnt[16]),
        .O(\gray_src[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[17]_i_1__0 
       (.I0(src_cnt[18]),
        .I1(src_cnt[17]),
        .O(\gray_src[17]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[18]_i_1__0 
       (.I0(src_cnt[19]),
        .I1(src_cnt[18]),
        .O(\gray_src[18]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[19]_i_1__0 
       (.I0(src_cnt[20]),
        .I1(src_cnt[19]),
        .O(\gray_src[19]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[1]_i_1__0 
       (.I0(src_cnt[2]),
        .I1(src_cnt[1]),
        .O(\gray_src[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[20]_i_1__0 
       (.I0(src_cnt[21]),
        .I1(src_cnt[20]),
        .O(\gray_src[20]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[21]_i_1__0 
       (.I0(src_cnt[22]),
        .I1(src_cnt[21]),
        .O(\gray_src[21]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[22]_i_1__0 
       (.I0(src_cnt[23]),
        .I1(src_cnt[22]),
        .O(\gray_src[22]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[23]_i_1__0 
       (.I0(src_cnt[24]),
        .I1(src_cnt[23]),
        .O(\gray_src[23]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[24]_i_1__0 
       (.I0(src_cnt[25]),
        .I1(src_cnt[24]),
        .O(\gray_src[24]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[25]_i_1__0 
       (.I0(src_cnt[26]),
        .I1(src_cnt[25]),
        .O(\gray_src[25]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[26]_i_1__0 
       (.I0(src_cnt[27]),
        .I1(src_cnt[26]),
        .O(\gray_src[26]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[27]_i_1__0 
       (.I0(src_cnt[28]),
        .I1(src_cnt[27]),
        .O(\gray_src[27]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[28]_i_1__0 
       (.I0(src_cnt[29]),
        .I1(src_cnt[28]),
        .O(\gray_src[28]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[29]_i_1__0 
       (.I0(src_cnt[30]),
        .I1(src_cnt[29]),
        .O(\gray_src[29]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[2]_i_1__0 
       (.I0(src_cnt[3]),
        .I1(src_cnt[2]),
        .O(\gray_src[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[30]_i_1__0 
       (.I0(src_cnt[31]),
        .I1(src_cnt[30]),
        .O(\gray_src[30]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[3]_i_1__0 
       (.I0(src_cnt[4]),
        .I1(src_cnt[3]),
        .O(\gray_src[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[4]_i_1__0 
       (.I0(src_cnt[5]),
        .I1(src_cnt[4]),
        .O(\gray_src[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[5]_i_1__0 
       (.I0(src_cnt[6]),
        .I1(src_cnt[5]),
        .O(\gray_src[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[6]_i_1__0 
       (.I0(src_cnt[7]),
        .I1(src_cnt[6]),
        .O(\gray_src[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[7]_i_1__0 
       (.I0(src_cnt[8]),
        .I1(src_cnt[7]),
        .O(\gray_src[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[8]_i_1__0 
       (.I0(src_cnt[9]),
        .I1(src_cnt[8]),
        .O(\gray_src[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[9]_i_1__0 
       (.I0(src_cnt[10]),
        .I1(src_cnt[9]),
        .O(\gray_src[9]_i_1__0_n_0 ));
  FDRE \gray_src_reg[0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[0]_i_1__0_n_0 ),
        .Q(gray_src[0]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[10] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[10]_i_1__0_n_0 ),
        .Q(gray_src[10]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[11] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[11]_i_1__0_n_0 ),
        .Q(gray_src[11]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[12] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[12]_i_1__0_n_0 ),
        .Q(gray_src[12]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[13] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[13]_i_1__0_n_0 ),
        .Q(gray_src[13]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[14] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[14]_i_1__0_n_0 ),
        .Q(gray_src[14]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[15] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[15]_i_1__0_n_0 ),
        .Q(gray_src[15]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[16] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[16]_i_1__0_n_0 ),
        .Q(gray_src[16]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[17] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[17]_i_1__0_n_0 ),
        .Q(gray_src[17]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[18] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[18]_i_1__0_n_0 ),
        .Q(gray_src[18]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[19] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[19]_i_1__0_n_0 ),
        .Q(gray_src[19]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[1]_i_1__0_n_0 ),
        .Q(gray_src[1]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[20] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[20]_i_1__0_n_0 ),
        .Q(gray_src[20]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[21] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[21]_i_1__0_n_0 ),
        .Q(gray_src[21]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[22] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[22]_i_1__0_n_0 ),
        .Q(gray_src[22]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[23] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[23]_i_1__0_n_0 ),
        .Q(gray_src[23]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[24] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[24]_i_1__0_n_0 ),
        .Q(gray_src[24]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[25] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[25]_i_1__0_n_0 ),
        .Q(gray_src[25]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[26] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[26]_i_1__0_n_0 ),
        .Q(gray_src[26]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[27] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[27]_i_1__0_n_0 ),
        .Q(gray_src[27]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[28] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[28]_i_1__0_n_0 ),
        .Q(gray_src[28]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[29] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[29]_i_1__0_n_0 ),
        .Q(gray_src[29]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[2]_i_1__0_n_0 ),
        .Q(gray_src[2]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[30] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[30]_i_1__0_n_0 ),
        .Q(gray_src[30]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[31] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(src_cnt[31]),
        .Q(gray_src[31]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[3]_i_1__0_n_0 ),
        .Q(gray_src[3]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[4]_i_1__0_n_0 ),
        .Q(gray_src[4]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[5]_i_1__0_n_0 ),
        .Q(gray_src[5]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[6] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[6]_i_1__0_n_0 ),
        .Q(gray_src[6]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[7] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[7]_i_1__0_n_0 ),
        .Q(gray_src[7]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[8] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[8]_i_1__0_n_0 ),
        .Q(gray_src[8]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[9] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[9]_i_1__0_n_0 ),
        .Q(gray_src[9]),
        .R(p_0_in__0));
endmodule

(* ORIG_REF_NAME = "cnt_cdc" *) 
module ps_Counter_Core_0_0_cnt_cdc__parameterized0_4
   (dst_cnt,
    src_cnt,
    p_0_in__0,
    clk_fs,
    SR,
    s_axi_aclk);
  output [31:0]dst_cnt;
  input [31:0]src_cnt;
  input p_0_in__0;
  input clk_fs;
  input [0:0]SR;
  input s_axi_aclk;

  wire [0:0]SR;
  wire \axi_rdata[10]_i_6_n_0 ;
  wire \axi_rdata[10]_i_7_n_0 ;
  wire \axi_rdata[11]_i_6_n_0 ;
  wire \axi_rdata[11]_i_7_n_0 ;
  wire \axi_rdata[12]_i_10_n_0 ;
  wire \axi_rdata[12]_i_13_n_0 ;
  wire \axi_rdata[12]_i_9_n_0 ;
  wire \axi_rdata[13]_i_10_n_0 ;
  wire \axi_rdata[13]_i_6_n_0 ;
  wire \axi_rdata[13]_i_7_n_0 ;
  wire \axi_rdata[14]_i_10_n_0 ;
  wire \axi_rdata[14]_i_6_n_0 ;
  wire \axi_rdata[14]_i_7_n_0 ;
  wire \axi_rdata[15]_i_10_n_0 ;
  wire \axi_rdata[15]_i_6_n_0 ;
  wire \axi_rdata[15]_i_7_n_0 ;
  wire \axi_rdata[16]_i_6_n_0 ;
  wire \axi_rdata[16]_i_7_n_0 ;
  wire \axi_rdata[17]_i_6_n_0 ;
  wire \axi_rdata[17]_i_7_n_0 ;
  wire \axi_rdata[18]_i_6_n_0 ;
  wire \axi_rdata[19]_i_6_n_0 ;
  wire \axi_rdata[20]_i_6_n_0 ;
  wire \axi_rdata[21]_i_6_n_0 ;
  wire \axi_rdata[22]_i_6_n_0 ;
  wire \axi_rdata[23]_i_6_n_0 ;
  wire \axi_rdata[2]_i_6_n_0 ;
  wire \axi_rdata[3]_i_6_n_0 ;
  wire \axi_rdata[4]_i_10_n_0 ;
  wire \axi_rdata[4]_i_9_n_0 ;
  wire \axi_rdata[5]_i_6_n_0 ;
  wire \axi_rdata[5]_i_7_n_0 ;
  wire \axi_rdata[6]_i_6_n_0 ;
  wire \axi_rdata[6]_i_7_n_0 ;
  wire \axi_rdata[7]_i_6_n_0 ;
  wire \axi_rdata[7]_i_7_n_0 ;
  wire \axi_rdata[8]_i_7_n_0 ;
  wire \axi_rdata[8]_i_8_n_0 ;
  wire \axi_rdata[9]_i_6_n_0 ;
  wire \axi_rdata[9]_i_7_n_0 ;
  wire clk_fs;
  wire [30:0]\^dst_cnt ;
  (* async_reg = "true" *) wire [31:0]gray_s1;
  (* async_reg = "true" *) wire [31:0]gray_s2;
  wire [31:0]gray_src;
  wire \gray_src[0]_i_1_n_0 ;
  wire \gray_src[10]_i_1_n_0 ;
  wire \gray_src[11]_i_1_n_0 ;
  wire \gray_src[12]_i_1_n_0 ;
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
  wire p_0_in__0;
  wire s_axi_aclk;
  wire [31:0]src_cnt;

  assign dst_cnt[31] = gray_s2[31];
  assign dst_cnt[30:0] = \^dst_cnt [30:0];
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[0]_i_5 
       (.I0(\^dst_cnt [16]),
        .I1(\axi_rdata[4]_i_10_n_0 ),
        .I2(gray_s2[1]),
        .I3(gray_s2[0]),
        .I4(\axi_rdata[2]_i_6_n_0 ),
        .I5(\axi_rdata[8]_i_7_n_0 ),
        .O(\^dst_cnt [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[10]_i_4 
       (.I0(\^dst_cnt [26]),
        .I1(\axi_rdata[10]_i_6_n_0 ),
        .I2(\axi_rdata[10]_i_7_n_0 ),
        .O(\^dst_cnt [10]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[10]_i_6 
       (.I0(gray_s2[15]),
        .I1(gray_s2[14]),
        .I2(gray_s2[17]),
        .I3(gray_s2[16]),
        .I4(\axi_rdata[6]_i_6_n_0 ),
        .O(\axi_rdata[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[10]_i_7 
       (.I0(gray_s2[23]),
        .I1(gray_s2[22]),
        .I2(gray_s2[25]),
        .I3(gray_s2[24]),
        .I4(\axi_rdata[18]_i_6_n_0 ),
        .O(\axi_rdata[10]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[11]_i_4 
       (.I0(\^dst_cnt [27]),
        .I1(\axi_rdata[11]_i_6_n_0 ),
        .I2(\axi_rdata[11]_i_7_n_0 ),
        .O(\^dst_cnt [11]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[11]_i_6 
       (.I0(gray_s2[16]),
        .I1(gray_s2[15]),
        .I2(gray_s2[18]),
        .I3(gray_s2[17]),
        .I4(\axi_rdata[7]_i_6_n_0 ),
        .O(\axi_rdata[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[11]_i_7 
       (.I0(gray_s2[24]),
        .I1(gray_s2[23]),
        .I2(gray_s2[26]),
        .I3(gray_s2[25]),
        .I4(\axi_rdata[19]_i_6_n_0 ),
        .O(\axi_rdata[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[12]_i_10 
       (.I0(gray_s2[25]),
        .I1(gray_s2[24]),
        .I2(gray_s2[27]),
        .I3(gray_s2[26]),
        .I4(\axi_rdata[20]_i_6_n_0 ),
        .O(\axi_rdata[12]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[12]_i_13 
       (.I0(gray_s2[14]),
        .I1(gray_s2[15]),
        .I2(gray_s2[12]),
        .I3(gray_s2[13]),
        .O(\axi_rdata[12]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[12]_i_5 
       (.I0(gray_s2[29]),
        .I1(gray_s2[28]),
        .I2(gray_s2[31]),
        .I3(gray_s2[30]),
        .I4(\axi_rdata[12]_i_9_n_0 ),
        .I5(\axi_rdata[12]_i_10_n_0 ),
        .O(\^dst_cnt [12]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[12]_i_9 
       (.I0(gray_s2[17]),
        .I1(gray_s2[16]),
        .I2(gray_s2[19]),
        .I3(gray_s2[18]),
        .I4(\axi_rdata[12]_i_13_n_0 ),
        .O(\axi_rdata[12]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[13]_i_10 
       (.I0(gray_s2[15]),
        .I1(gray_s2[16]),
        .I2(gray_s2[13]),
        .I3(gray_s2[14]),
        .O(\axi_rdata[13]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[13]_i_4 
       (.I0(gray_s2[30]),
        .I1(gray_s2[29]),
        .I2(gray_s2[31]),
        .I3(\axi_rdata[13]_i_6_n_0 ),
        .I4(\axi_rdata[13]_i_7_n_0 ),
        .O(\^dst_cnt [13]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[13]_i_6 
       (.I0(gray_s2[18]),
        .I1(gray_s2[17]),
        .I2(gray_s2[20]),
        .I3(gray_s2[19]),
        .I4(\axi_rdata[13]_i_10_n_0 ),
        .O(\axi_rdata[13]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[13]_i_7 
       (.I0(gray_s2[26]),
        .I1(gray_s2[25]),
        .I2(gray_s2[28]),
        .I3(gray_s2[27]),
        .I4(\axi_rdata[21]_i_6_n_0 ),
        .O(\axi_rdata[13]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[14]_i_10 
       (.I0(gray_s2[16]),
        .I1(gray_s2[17]),
        .I2(gray_s2[14]),
        .I3(gray_s2[15]),
        .O(\axi_rdata[14]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[14]_i_4 
       (.I0(gray_s2[30]),
        .I1(gray_s2[31]),
        .I2(\axi_rdata[14]_i_6_n_0 ),
        .I3(\axi_rdata[14]_i_7_n_0 ),
        .O(\^dst_cnt [14]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[14]_i_6 
       (.I0(gray_s2[19]),
        .I1(gray_s2[18]),
        .I2(gray_s2[21]),
        .I3(gray_s2[20]),
        .I4(\axi_rdata[14]_i_10_n_0 ),
        .O(\axi_rdata[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[14]_i_7 
       (.I0(gray_s2[27]),
        .I1(gray_s2[26]),
        .I2(gray_s2[29]),
        .I3(gray_s2[28]),
        .I4(\axi_rdata[22]_i_6_n_0 ),
        .O(\axi_rdata[14]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[15]_i_10 
       (.I0(gray_s2[17]),
        .I1(gray_s2[18]),
        .I2(gray_s2[15]),
        .I3(gray_s2[16]),
        .O(\axi_rdata[15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[15]_i_4 
       (.I0(gray_s2[31]),
        .I1(\axi_rdata[15]_i_6_n_0 ),
        .I2(\axi_rdata[15]_i_7_n_0 ),
        .O(\^dst_cnt [15]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[15]_i_6 
       (.I0(gray_s2[20]),
        .I1(gray_s2[19]),
        .I2(gray_s2[22]),
        .I3(gray_s2[21]),
        .I4(\axi_rdata[15]_i_10_n_0 ),
        .O(\axi_rdata[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[15]_i_7 
       (.I0(gray_s2[28]),
        .I1(gray_s2[27]),
        .I2(gray_s2[30]),
        .I3(gray_s2[29]),
        .I4(\axi_rdata[23]_i_6_n_0 ),
        .O(\axi_rdata[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[16]_i_4 
       (.I0(\axi_rdata[16]_i_6_n_0 ),
        .I1(\^dst_cnt [30]),
        .I2(gray_s2[28]),
        .I3(gray_s2[29]),
        .I4(\axi_rdata[16]_i_7_n_0 ),
        .I5(\axi_rdata[20]_i_6_n_0 ),
        .O(\^dst_cnt [16]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[16]_i_6 
       (.I0(gray_s2[26]),
        .I1(gray_s2[27]),
        .I2(gray_s2[24]),
        .I3(gray_s2[25]),
        .O(\axi_rdata[16]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[16]_i_7 
       (.I0(gray_s2[18]),
        .I1(gray_s2[19]),
        .I2(gray_s2[16]),
        .I3(gray_s2[17]),
        .O(\axi_rdata[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[17]_i_4 
       (.I0(\axi_rdata[17]_i_6_n_0 ),
        .I1(gray_s2[31]),
        .I2(gray_s2[29]),
        .I3(gray_s2[30]),
        .I4(\axi_rdata[17]_i_7_n_0 ),
        .I5(\axi_rdata[21]_i_6_n_0 ),
        .O(\^dst_cnt [17]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[17]_i_6 
       (.I0(gray_s2[27]),
        .I1(gray_s2[28]),
        .I2(gray_s2[25]),
        .I3(gray_s2[26]),
        .O(\axi_rdata[17]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[17]_i_7 
       (.I0(gray_s2[19]),
        .I1(gray_s2[20]),
        .I2(gray_s2[17]),
        .I3(gray_s2[18]),
        .O(\axi_rdata[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[18]_i_4 
       (.I0(\^dst_cnt [26]),
        .I1(\axi_rdata[18]_i_6_n_0 ),
        .I2(gray_s2[24]),
        .I3(gray_s2[25]),
        .I4(gray_s2[22]),
        .I5(gray_s2[23]),
        .O(\^dst_cnt [18]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[18]_i_6 
       (.I0(gray_s2[20]),
        .I1(gray_s2[21]),
        .I2(gray_s2[18]),
        .I3(gray_s2[19]),
        .O(\axi_rdata[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[19]_i_4 
       (.I0(\^dst_cnt [27]),
        .I1(\axi_rdata[19]_i_6_n_0 ),
        .I2(gray_s2[25]),
        .I3(gray_s2[26]),
        .I4(gray_s2[23]),
        .I5(gray_s2[24]),
        .O(\^dst_cnt [19]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[19]_i_6 
       (.I0(gray_s2[21]),
        .I1(gray_s2[22]),
        .I2(gray_s2[19]),
        .I3(gray_s2[20]),
        .O(\axi_rdata[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[1]_i_6 
       (.I0(\^dst_cnt [17]),
        .I1(\axi_rdata[5]_i_7_n_0 ),
        .I2(gray_s2[2]),
        .I3(gray_s2[1]),
        .I4(\axi_rdata[3]_i_6_n_0 ),
        .I5(\axi_rdata[9]_i_6_n_0 ),
        .O(\^dst_cnt [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[20]_i_4 
       (.I0(\^dst_cnt [28]),
        .I1(\axi_rdata[20]_i_6_n_0 ),
        .I2(gray_s2[26]),
        .I3(gray_s2[27]),
        .I4(gray_s2[24]),
        .I5(gray_s2[25]),
        .O(\^dst_cnt [20]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[20]_i_6 
       (.I0(gray_s2[22]),
        .I1(gray_s2[23]),
        .I2(gray_s2[20]),
        .I3(gray_s2[21]),
        .O(\axi_rdata[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[21]_i_4 
       (.I0(\^dst_cnt [29]),
        .I1(\axi_rdata[21]_i_6_n_0 ),
        .I2(gray_s2[27]),
        .I3(gray_s2[28]),
        .I4(gray_s2[25]),
        .I5(gray_s2[26]),
        .O(\^dst_cnt [21]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[21]_i_6 
       (.I0(gray_s2[23]),
        .I1(gray_s2[24]),
        .I2(gray_s2[21]),
        .I3(gray_s2[22]),
        .O(\axi_rdata[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[22]_i_4 
       (.I0(\^dst_cnt [30]),
        .I1(\axi_rdata[22]_i_6_n_0 ),
        .I2(gray_s2[28]),
        .I3(gray_s2[29]),
        .I4(gray_s2[26]),
        .I5(gray_s2[27]),
        .O(\^dst_cnt [22]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[22]_i_6 
       (.I0(gray_s2[24]),
        .I1(gray_s2[25]),
        .I2(gray_s2[22]),
        .I3(gray_s2[23]),
        .O(\axi_rdata[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[23]_i_4 
       (.I0(gray_s2[31]),
        .I1(\axi_rdata[23]_i_6_n_0 ),
        .I2(gray_s2[29]),
        .I3(gray_s2[30]),
        .I4(gray_s2[27]),
        .I5(gray_s2[28]),
        .O(\^dst_cnt [23]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[23]_i_6 
       (.I0(gray_s2[25]),
        .I1(gray_s2[26]),
        .I2(gray_s2[23]),
        .I3(gray_s2[24]),
        .O(\axi_rdata[23]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[24]_i_4 
       (.I0(\^dst_cnt [28]),
        .I1(gray_s2[25]),
        .I2(gray_s2[24]),
        .I3(gray_s2[27]),
        .I4(gray_s2[26]),
        .O(\^dst_cnt [24]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[25]_i_4 
       (.I0(\^dst_cnt [29]),
        .I1(gray_s2[26]),
        .I2(gray_s2[25]),
        .I3(gray_s2[28]),
        .I4(gray_s2[27]),
        .O(\^dst_cnt [25]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[26]_i_4 
       (.I0(gray_s2[30]),
        .I1(gray_s2[31]),
        .I2(gray_s2[27]),
        .I3(gray_s2[26]),
        .I4(gray_s2[29]),
        .I5(gray_s2[28]),
        .O(\^dst_cnt [26]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[27]_i_4 
       (.I0(gray_s2[31]),
        .I1(gray_s2[28]),
        .I2(gray_s2[27]),
        .I3(gray_s2[30]),
        .I4(gray_s2[29]),
        .O(\^dst_cnt [27]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[28]_i_4 
       (.I0(gray_s2[30]),
        .I1(gray_s2[31]),
        .I2(gray_s2[28]),
        .I3(gray_s2[29]),
        .O(\^dst_cnt [28]));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[29]_i_4 
       (.I0(gray_s2[31]),
        .I1(gray_s2[29]),
        .I2(gray_s2[30]),
        .O(\^dst_cnt [29]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[2]_i_4 
       (.I0(\^dst_cnt [18]),
        .I1(\axi_rdata[6]_i_7_n_0 ),
        .I2(\axi_rdata[2]_i_6_n_0 ),
        .I3(gray_s2[5]),
        .I4(gray_s2[4]),
        .I5(\axi_rdata[10]_i_6_n_0 ),
        .O(\^dst_cnt [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[2]_i_6 
       (.I0(gray_s2[3]),
        .I1(gray_s2[2]),
        .O(\axi_rdata[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[30]_i_7 
       (.I0(gray_s2[31]),
        .I1(gray_s2[30]),
        .O(\^dst_cnt [30]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[3]_i_4 
       (.I0(\^dst_cnt [19]),
        .I1(\axi_rdata[7]_i_7_n_0 ),
        .I2(\axi_rdata[3]_i_6_n_0 ),
        .I3(gray_s2[6]),
        .I4(gray_s2[5]),
        .I5(\axi_rdata[11]_i_6_n_0 ),
        .O(\^dst_cnt [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_rdata[3]_i_6 
       (.I0(gray_s2[4]),
        .I1(gray_s2[3]),
        .O(\axi_rdata[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[4]_i_10 
       (.I0(gray_s2[6]),
        .I1(gray_s2[7]),
        .I2(gray_s2[4]),
        .I3(gray_s2[5]),
        .O(\axi_rdata[4]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[4]_i_7 
       (.I0(\^dst_cnt [20]),
        .I1(\axi_rdata[4]_i_9_n_0 ),
        .I2(\axi_rdata[4]_i_10_n_0 ),
        .I3(\axi_rdata[12]_i_9_n_0 ),
        .O(\^dst_cnt [4]));
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
    \axi_rdata[5]_i_4 
       (.I0(\^dst_cnt [21]),
        .I1(\axi_rdata[5]_i_6_n_0 ),
        .I2(\axi_rdata[5]_i_7_n_0 ),
        .I3(\axi_rdata[13]_i_6_n_0 ),
        .O(\^dst_cnt [5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[5]_i_6 
       (.I0(gray_s2[11]),
        .I1(gray_s2[12]),
        .I2(gray_s2[9]),
        .I3(gray_s2[10]),
        .O(\axi_rdata[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[5]_i_7 
       (.I0(gray_s2[7]),
        .I1(gray_s2[8]),
        .I2(gray_s2[5]),
        .I3(gray_s2[6]),
        .O(\axi_rdata[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \axi_rdata[6]_i_4 
       (.I0(\axi_rdata[14]_i_7_n_0 ),
        .I1(gray_s2[31]),
        .I2(gray_s2[30]),
        .I3(\axi_rdata[6]_i_6_n_0 ),
        .I4(\axi_rdata[6]_i_7_n_0 ),
        .I5(\axi_rdata[14]_i_6_n_0 ),
        .O(\^dst_cnt [6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[6]_i_6 
       (.I0(gray_s2[12]),
        .I1(gray_s2[13]),
        .I2(gray_s2[10]),
        .I3(gray_s2[11]),
        .O(\axi_rdata[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[6]_i_7 
       (.I0(gray_s2[8]),
        .I1(gray_s2[9]),
        .I2(gray_s2[6]),
        .I3(gray_s2[7]),
        .O(\axi_rdata[6]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[7]_i_4 
       (.I0(\^dst_cnt [23]),
        .I1(\axi_rdata[7]_i_6_n_0 ),
        .I2(\axi_rdata[7]_i_7_n_0 ),
        .I3(\axi_rdata[15]_i_6_n_0 ),
        .O(\^dst_cnt [7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[7]_i_6 
       (.I0(gray_s2[13]),
        .I1(gray_s2[14]),
        .I2(gray_s2[11]),
        .I3(gray_s2[12]),
        .O(\axi_rdata[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \axi_rdata[7]_i_7 
       (.I0(gray_s2[9]),
        .I1(gray_s2[10]),
        .I2(gray_s2[7]),
        .I3(gray_s2[8]),
        .O(\axi_rdata[7]_i_7_n_0 ));
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
        .I4(\axi_rdata[4]_i_9_n_0 ),
        .O(\axi_rdata[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[8]_i_8 
       (.I0(gray_s2[21]),
        .I1(gray_s2[20]),
        .I2(gray_s2[23]),
        .I3(gray_s2[22]),
        .I4(\axi_rdata[16]_i_7_n_0 ),
        .O(\axi_rdata[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_rdata[9]_i_4 
       (.I0(\^dst_cnt [25]),
        .I1(\axi_rdata[9]_i_6_n_0 ),
        .I2(\axi_rdata[9]_i_7_n_0 ),
        .O(\^dst_cnt [9]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[9]_i_6 
       (.I0(gray_s2[14]),
        .I1(gray_s2[13]),
        .I2(gray_s2[16]),
        .I3(gray_s2[15]),
        .I4(\axi_rdata[5]_i_6_n_0 ),
        .O(\axi_rdata[9]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \axi_rdata[9]_i_7 
       (.I0(gray_s2[22]),
        .I1(gray_s2[21]),
        .I2(gray_s2[24]),
        .I3(gray_s2[23]),
        .I4(\axi_rdata[17]_i_7_n_0 ),
        .O(\axi_rdata[9]_i_7_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[0]),
        .Q(gray_s1[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[10]),
        .Q(gray_s1[10]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[11]),
        .Q(gray_s1[11]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[12]),
        .Q(gray_s1[12]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[13]),
        .Q(gray_s1[13]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[14]),
        .Q(gray_s1[14]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[15]),
        .Q(gray_s1[15]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[16]),
        .Q(gray_s1[16]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[17]),
        .Q(gray_s1[17]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[18]),
        .Q(gray_s1[18]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[19]),
        .Q(gray_s1[19]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[1]),
        .Q(gray_s1[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[20]),
        .Q(gray_s1[20]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[21]),
        .Q(gray_s1[21]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[22]),
        .Q(gray_s1[22]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[23]),
        .Q(gray_s1[23]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[24]),
        .Q(gray_s1[24]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[25]),
        .Q(gray_s1[25]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[26]),
        .Q(gray_s1[26]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[27]),
        .Q(gray_s1[27]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[28]),
        .Q(gray_s1[28]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[29]),
        .Q(gray_s1[29]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[2]),
        .Q(gray_s1[2]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[30]),
        .Q(gray_s1[30]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[31]),
        .Q(gray_s1[31]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[3]),
        .Q(gray_s1[3]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[4]),
        .Q(gray_s1[4]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[5]),
        .Q(gray_s1[5]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[6]),
        .Q(gray_s1[6]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[7]),
        .Q(gray_s1[7]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[8]),
        .Q(gray_s1[8]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_src[9]),
        .Q(gray_s1[9]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[0]),
        .Q(gray_s2[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[10]),
        .Q(gray_s2[10]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[11]),
        .Q(gray_s2[11]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[12]),
        .Q(gray_s2[12]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[13]),
        .Q(gray_s2[13]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[14]),
        .Q(gray_s2[14]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[15]),
        .Q(gray_s2[15]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[16]),
        .Q(gray_s2[16]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[17]),
        .Q(gray_s2[17]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[18]),
        .Q(gray_s2[18]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[19]),
        .Q(gray_s2[19]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[1]),
        .Q(gray_s2[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[20]),
        .Q(gray_s2[20]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[21]),
        .Q(gray_s2[21]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[22]),
        .Q(gray_s2[22]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[23]),
        .Q(gray_s2[23]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[24]),
        .Q(gray_s2[24]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[25]),
        .Q(gray_s2[25]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[26]),
        .Q(gray_s2[26]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[27]),
        .Q(gray_s2[27]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[28]),
        .Q(gray_s2[28]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[29]),
        .Q(gray_s2[29]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[2]),
        .Q(gray_s2[2]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[30]),
        .Q(gray_s2[30]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[31]),
        .Q(gray_s2[31]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[3]),
        .Q(gray_s2[3]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[4]),
        .Q(gray_s2[4]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[5]),
        .Q(gray_s2[5]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[6]),
        .Q(gray_s2[6]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[7]),
        .Q(gray_s2[7]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[8]),
        .Q(gray_s2[8]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \gray_s2_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gray_s1[9]),
        .Q(gray_s2[9]),
        .R(SR));
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[0]_i_1 
       (.I0(src_cnt[1]),
        .I1(src_cnt[0]),
        .O(\gray_src[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[10]_i_1 
       (.I0(src_cnt[11]),
        .I1(src_cnt[10]),
        .O(\gray_src[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[11]_i_1 
       (.I0(src_cnt[12]),
        .I1(src_cnt[11]),
        .O(\gray_src[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[12]_i_1 
       (.I0(src_cnt[13]),
        .I1(src_cnt[12]),
        .O(\gray_src[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[13]_i_1 
       (.I0(src_cnt[14]),
        .I1(src_cnt[13]),
        .O(\gray_src[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[14]_i_1 
       (.I0(src_cnt[15]),
        .I1(src_cnt[14]),
        .O(\gray_src[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[15]_i_1 
       (.I0(src_cnt[16]),
        .I1(src_cnt[15]),
        .O(\gray_src[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[16]_i_1 
       (.I0(src_cnt[17]),
        .I1(src_cnt[16]),
        .O(\gray_src[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[17]_i_1 
       (.I0(src_cnt[18]),
        .I1(src_cnt[17]),
        .O(\gray_src[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[18]_i_1 
       (.I0(src_cnt[19]),
        .I1(src_cnt[18]),
        .O(\gray_src[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[19]_i_1 
       (.I0(src_cnt[20]),
        .I1(src_cnt[19]),
        .O(\gray_src[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[1]_i_1 
       (.I0(src_cnt[2]),
        .I1(src_cnt[1]),
        .O(\gray_src[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[20]_i_1 
       (.I0(src_cnt[21]),
        .I1(src_cnt[20]),
        .O(\gray_src[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[21]_i_1 
       (.I0(src_cnt[22]),
        .I1(src_cnt[21]),
        .O(\gray_src[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[22]_i_1 
       (.I0(src_cnt[23]),
        .I1(src_cnt[22]),
        .O(\gray_src[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[23]_i_1 
       (.I0(src_cnt[24]),
        .I1(src_cnt[23]),
        .O(\gray_src[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[24]_i_1 
       (.I0(src_cnt[25]),
        .I1(src_cnt[24]),
        .O(\gray_src[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[25]_i_1 
       (.I0(src_cnt[26]),
        .I1(src_cnt[25]),
        .O(\gray_src[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[26]_i_1 
       (.I0(src_cnt[27]),
        .I1(src_cnt[26]),
        .O(\gray_src[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[27]_i_1 
       (.I0(src_cnt[28]),
        .I1(src_cnt[27]),
        .O(\gray_src[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[28]_i_1 
       (.I0(src_cnt[29]),
        .I1(src_cnt[28]),
        .O(\gray_src[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[29]_i_1 
       (.I0(src_cnt[30]),
        .I1(src_cnt[29]),
        .O(\gray_src[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[2]_i_1 
       (.I0(src_cnt[3]),
        .I1(src_cnt[2]),
        .O(\gray_src[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[30]_i_1 
       (.I0(src_cnt[31]),
        .I1(src_cnt[30]),
        .O(\gray_src[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[3]_i_1 
       (.I0(src_cnt[4]),
        .I1(src_cnt[3]),
        .O(\gray_src[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[4]_i_1 
       (.I0(src_cnt[5]),
        .I1(src_cnt[4]),
        .O(\gray_src[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[5]_i_1 
       (.I0(src_cnt[6]),
        .I1(src_cnt[5]),
        .O(\gray_src[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[6]_i_1 
       (.I0(src_cnt[7]),
        .I1(src_cnt[6]),
        .O(\gray_src[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[7]_i_1 
       (.I0(src_cnt[8]),
        .I1(src_cnt[7]),
        .O(\gray_src[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[8]_i_1 
       (.I0(src_cnt[9]),
        .I1(src_cnt[8]),
        .O(\gray_src[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gray_src[9]_i_1 
       (.I0(src_cnt[10]),
        .I1(src_cnt[9]),
        .O(\gray_src[9]_i_1_n_0 ));
  FDRE \gray_src_reg[0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[0]_i_1_n_0 ),
        .Q(gray_src[0]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[10] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[10]_i_1_n_0 ),
        .Q(gray_src[10]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[11] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[11]_i_1_n_0 ),
        .Q(gray_src[11]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[12] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[12]_i_1_n_0 ),
        .Q(gray_src[12]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[13] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[13]_i_1_n_0 ),
        .Q(gray_src[13]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[14] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[14]_i_1_n_0 ),
        .Q(gray_src[14]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[15] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[15]_i_1_n_0 ),
        .Q(gray_src[15]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[16] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[16]_i_1_n_0 ),
        .Q(gray_src[16]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[17] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[17]_i_1_n_0 ),
        .Q(gray_src[17]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[18] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[18]_i_1_n_0 ),
        .Q(gray_src[18]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[19] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[19]_i_1_n_0 ),
        .Q(gray_src[19]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[1]_i_1_n_0 ),
        .Q(gray_src[1]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[20] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[20]_i_1_n_0 ),
        .Q(gray_src[20]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[21] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[21]_i_1_n_0 ),
        .Q(gray_src[21]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[22] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[22]_i_1_n_0 ),
        .Q(gray_src[22]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[23] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[23]_i_1_n_0 ),
        .Q(gray_src[23]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[24] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[24]_i_1_n_0 ),
        .Q(gray_src[24]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[25] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[25]_i_1_n_0 ),
        .Q(gray_src[25]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[26] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[26]_i_1_n_0 ),
        .Q(gray_src[26]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[27] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[27]_i_1_n_0 ),
        .Q(gray_src[27]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[28] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[28]_i_1_n_0 ),
        .Q(gray_src[28]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[29] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[29]_i_1_n_0 ),
        .Q(gray_src[29]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[2]_i_1_n_0 ),
        .Q(gray_src[2]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[30] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[30]_i_1_n_0 ),
        .Q(gray_src[30]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[31] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(src_cnt[31]),
        .Q(gray_src[31]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[3]_i_1_n_0 ),
        .Q(gray_src[3]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[4]_i_1_n_0 ),
        .Q(gray_src[4]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[5]_i_1_n_0 ),
        .Q(gray_src[5]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[6] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[6]_i_1_n_0 ),
        .Q(gray_src[6]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[7] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[7]_i_1_n_0 ),
        .Q(gray_src[7]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[8] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[8]_i_1_n_0 ),
        .Q(gray_src[8]),
        .R(p_0_in__0));
  FDRE \gray_src_reg[9] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\gray_src[9]_i_1_n_0 ),
        .Q(gray_src[9]),
        .R(p_0_in__0));
endmodule

(* ORIG_REF_NAME = "counter_core" *) 
module ps_Counter_Core_0_0_counter_core
   (stream_aresetn,
    out,
    \sync_reg[1] ,
    \sync_reg[1]_0 ,
    ts_en_d,
    m_axis_tlast,
    out_valid_reg,
    pop_cnt_reg,
    \pop_cnt_reg[15] ,
    CO,
    \pop_cnt_reg[15]_0 ,
    fifo_level,
    m_axis_tdata,
    \div_cnt_reg[1]_0 ,
    dst_cnt,
    \gray_s2_reg[31] ,
    D,
    clk_fs,
    pop_is_last,
    s_axi_aclk,
    out_valid_reg_0,
    S,
    fifo_mem_reg_7_i_4,
    pop_is_last1,
    \sync_reg[0] ,
    m_axis_tready,
    fifo_mem_reg_0,
    \skip_limit_reg[31] ,
    skip_zero_reg,
    pop_limit_hit0_carry__0,
    clk_fx,
    \sync_reg[2] ,
    \sync_reg[0]_0 );
  output stream_aresetn;
  output [0:0]out;
  output [0:0]\sync_reg[1] ;
  output [0:0]\sync_reg[1]_0 ;
  output ts_en_d;
  output m_axis_tlast;
  output out_valid_reg;
  output [15:0]pop_cnt_reg;
  output [0:0]\pop_cnt_reg[15] ;
  output [0:0]CO;
  output [0:0]\pop_cnt_reg[15]_0 ;
  output [12:0]fifo_level;
  output [63:0]m_axis_tdata;
  output [0:0]\div_cnt_reg[1]_0 ;
  output [31:0]dst_cnt;
  output [31:0]\gray_s2_reg[31] ;
  input [0:0]D;
  input clk_fs;
  input pop_is_last;
  input s_axi_aclk;
  input out_valid_reg_0;
  input [3:0]S;
  input [3:0]fifo_mem_reg_7_i_4;
  input [14:0]pop_is_last1;
  input [0:0]\sync_reg[0] ;
  input m_axis_tready;
  input fifo_mem_reg_0;
  input [31:0]\skip_limit_reg[31] ;
  input skip_zero_reg;
  input [15:0]pop_limit_hit0_carry__0;
  input clk_fx;
  input \sync_reg[2] ;
  input \sync_reg[0]_0 ;

  wire [0:0]CO;
  wire [0:0]D;
  wire [3:0]S;
  wire clk_fs;
  wire clk_fx;
  wire [0:0]div_cnt;
  wire \div_cnt[0]_i_1_n_0 ;
  wire \div_cnt[1]_i_1_n_0 ;
  wire [0:0]\div_cnt_reg[1]_0 ;
  wire [31:0]dst_cnt;
  wire [12:0]fifo_level;
  wire fifo_mem_reg_0;
  wire [3:0]fifo_mem_reg_7_i_4;
  wire [31:0]\gray_s2_reg[31] ;
  wire [63:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]out;
  wire out_valid_reg;
  wire out_valid_reg_0;
  wire [15:0]pop_cnt_reg;
  wire [0:0]\pop_cnt_reg[15] ;
  wire [0:0]\pop_cnt_reg[15]_0 ;
  wire pop_is_last;
  wire [14:0]pop_is_last1;
  wire [15:0]pop_limit_hit0_carry__0;
  wire rst_fx_n;
  wire s_axi_aclk;
  wire [31:0]\skip_limit_reg[31] ;
  wire skip_zero_reg;
  wire stream_aresetn;
  wire [0:0]\sync_reg[0] ;
  wire \sync_reg[0]_0 ;
  wire [0:0]\sync_reg[1] ;
  wire [0:0]\sync_reg[1]_0 ;
  wire \sync_reg[2] ;
  wire ts_en_d;
  wire ts_rst_fs_n;
  wire ts_start;
  wire \u_rd_ptr_cdc/p_0_in__0 ;
  wire \u_ts_cnt_cdc/p_0_in__0 ;
  wire u_ts_rst_ax_n_1;

  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \div_cnt[0]_i_1 
       (.I0(div_cnt),
        .I1(rst_fx_n),
        .O(\div_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \div_cnt[1]_i_1 
       (.I0(\div_cnt_reg[1]_0 ),
        .I1(div_cnt),
        .I2(rst_fx_n),
        .O(\div_cnt[1]_i_1_n_0 ));
  FDRE \div_cnt_reg[0] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\div_cnt[0]_i_1_n_0 ),
        .Q(div_cnt),
        .R(1'b0));
  FDRE \div_cnt_reg[1] 
       (.C(clk_fx),
        .CE(1'b1),
        .D(\div_cnt[1]_i_1_n_0 ),
        .Q(\div_cnt_reg[1]_0 ),
        .R(1'b0));
  ps_Counter_Core_0_0_rst_sync u_rst_fx
       (.clk_fx(clk_fx),
        .out(rst_fx_n),
        .\sync_reg[2]_0 (\sync_reg[2] ));
  ps_Counter_Core_0_0_bit_sync u_ts_en_sync
       (.D(out),
        .E(ts_start),
        .clk_fs(clk_fs),
        .p_0_in__0(\u_ts_cnt_cdc/p_0_in__0 ),
        .\skip_limit_reg[31] (ts_en_d),
        .\sync_reg[0]_0 (\sync_reg[0] ));
  ps_Counter_Core_0_0_ts_engine u_ts_engine
       (.CO(CO),
        .D(D),
        .E(ts_start),
        .S(pop_cnt_reg[3:1]),
        .SR(\u_rd_ptr_cdc/p_0_in__0 ),
        .clk_fs(clk_fs),
        .dst_cnt(dst_cnt),
        .fifo_level(fifo_level),
        .fifo_mem_reg_0_0(\sync_reg[0] ),
        .fifo_mem_reg_0_1(fifo_mem_reg_0),
        .fifo_mem_reg_7_i_4(fifo_mem_reg_7_i_4),
        .\gray_s2_reg[31] (\gray_s2_reg[31] ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .out(ts_rst_fs_n),
        .out_valid_reg_0(out_valid_reg),
        .out_valid_reg_1(out_valid_reg_0),
        .p_0_in__0(\u_ts_cnt_cdc/p_0_in__0 ),
        .\pop_cnt_reg[0]_0 (pop_cnt_reg[0]),
        .\pop_cnt_reg[11]_0 (pop_cnt_reg[11:8]),
        .\pop_cnt_reg[15]_0 (pop_cnt_reg[15:12]),
        .\pop_cnt_reg[15]_1 (\pop_cnt_reg[15] ),
        .\pop_cnt_reg[15]_2 (\pop_cnt_reg[15]_0 ),
        .\pop_cnt_reg[15]_3 (u_ts_rst_ax_n_1),
        .\pop_cnt_reg[7]_0 (pop_cnt_reg[7:4]),
        .pop_is_last(pop_is_last),
        .pop_is_last1(pop_is_last1),
        .pop_limit_hit0_carry__0_0(S),
        .pop_limit_hit0_carry__0_1(pop_limit_hit0_carry__0),
        .s_axi_aclk(s_axi_aclk),
        .\skip_limit_reg[31]_0 (\skip_limit_reg[31] ),
        .skip_zero_reg_0(skip_zero_reg),
        .\sync_reg[1] (\sync_reg[1]_0 ),
        .ts_en_d_reg_0(ts_en_d),
        .ts_en_d_reg_1(out));
  ps_Counter_Core_0_0_rst_sync_0 u_ts_rst_ax
       (.SR(\u_rd_ptr_cdc/p_0_in__0 ),
        .\pop_cnt_reg[15] (\sync_reg[0] ),
        .s_axi_aclk(s_axi_aclk),
        .stream_aresetn(stream_aresetn),
        .\sync_reg[2]_0 (u_ts_rst_ax_n_1),
        .\sync_reg[2]_1 (\sync_reg[0]_0 ));
  ps_Counter_Core_0_0_rst_sync_1 u_ts_rst_fs
       (.clk_fs(clk_fs),
        .out(ts_rst_fs_n),
        .p_0_in__0(\u_ts_cnt_cdc/p_0_in__0 ),
        .\sync_reg[0]_0 (\sync_reg[0]_0 ));
  ps_Counter_Core_0_0_bit_sync_2 u_ts_run_sync
       (.SR(\u_rd_ptr_cdc/p_0_in__0 ),
        .out(out),
        .s_axi_aclk(s_axi_aclk),
        .\sync_reg[1]_0 (\sync_reg[1] ));
endmodule

(* ORIG_REF_NAME = "rst_sync" *) 
module ps_Counter_Core_0_0_rst_sync
   (out,
    clk_fx,
    \sync_reg[2]_0 );
  output [0:0]out;
  input clk_fx;
  input \sync_reg[2]_0 ;

  wire clk_fx;
  (* async_reg = "true" *) wire [2:0]sync;
  wire \sync_reg[2]_0 ;

  assign out[0] = sync[2];
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
module ps_Counter_Core_0_0_rst_sync_0
   (stream_aresetn,
    \sync_reg[2]_0 ,
    SR,
    \pop_cnt_reg[15] ,
    s_axi_aclk,
    \sync_reg[2]_1 );
  output stream_aresetn;
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

  assign stream_aresetn = sync[2];
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
module ps_Counter_Core_0_0_rst_sync_1
   (out,
    p_0_in__0,
    clk_fs,
    \sync_reg[0]_0 );
  output [0:0]out;
  output p_0_in__0;
  input clk_fs;
  input \sync_reg[0]_0 ;

  wire clk_fs;
  wire p_0_in__0;
  (* async_reg = "true" *) wire [2:0]sync;
  wire \sync_reg[0]_0 ;

  assign out[0] = sync[2];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_reg[0] 
       (.C(clk_fs),
        .CE(1'b1),
        .CLR(\sync_reg[0]_0 ),
        .D(1'b1),
        .Q(sync[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_reg[1] 
       (.C(clk_fs),
        .CE(1'b1),
        .CLR(\sync_reg[0]_0 ),
        .D(sync[0]),
        .Q(sync[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE \sync_reg[2] 
       (.C(clk_fs),
        .CE(1'b1),
        .CLR(\sync_reg[0]_0 ),
        .D(sync[1]),
        .Q(sync[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \tap_reg[255]_i_1 
       (.I0(sync[2]),
        .O(p_0_in__0));
endmodule

(* ORIG_REF_NAME = "tdc" *) 
module ps_Counter_Core_0_0_tdc
   (ts_word,
    D,
    p_0_in__0,
    clk_fs);
  output [8:0]ts_word;
  input [0:0]D;
  input p_0_in__0;
  input clk_fs;

  wire [0:0]D;
  wire clk_fs;
  wire [3:3]\delay_stage[0].co ;
  wire [3:3]\delay_stage[10].co ;
  wire [3:3]\delay_stage[11].co ;
  wire [3:3]\delay_stage[12].co ;
  wire [3:3]\delay_stage[13].co ;
  wire [3:3]\delay_stage[14].co ;
  wire [3:3]\delay_stage[15].co ;
  wire [3:3]\delay_stage[16].co ;
  wire [3:3]\delay_stage[17].co ;
  wire [3:3]\delay_stage[18].co ;
  wire [3:3]\delay_stage[19].co ;
  wire [3:3]\delay_stage[1].co ;
  wire [3:3]\delay_stage[20].co ;
  wire [3:3]\delay_stage[21].co ;
  wire [3:3]\delay_stage[22].co ;
  wire [3:3]\delay_stage[23].co ;
  wire [3:3]\delay_stage[24].co ;
  wire [3:3]\delay_stage[25].co ;
  wire [3:3]\delay_stage[26].co ;
  wire [3:3]\delay_stage[27].co ;
  wire [3:3]\delay_stage[28].co ;
  wire [3:3]\delay_stage[29].co ;
  wire [3:3]\delay_stage[2].co ;
  wire [3:3]\delay_stage[30].co ;
  wire [3:3]\delay_stage[31].co ;
  wire [3:3]\delay_stage[32].co ;
  wire [3:3]\delay_stage[33].co ;
  wire [3:3]\delay_stage[34].co ;
  wire [3:3]\delay_stage[35].co ;
  wire [3:3]\delay_stage[36].co ;
  wire [3:3]\delay_stage[37].co ;
  wire [3:3]\delay_stage[38].co ;
  wire [3:3]\delay_stage[39].co ;
  wire [3:3]\delay_stage[3].co ;
  wire [3:3]\delay_stage[40].co ;
  wire [3:3]\delay_stage[41].co ;
  wire [3:3]\delay_stage[42].co ;
  wire [3:3]\delay_stage[43].co ;
  wire [3:3]\delay_stage[44].co ;
  wire [3:3]\delay_stage[45].co ;
  wire [3:3]\delay_stage[46].co ;
  wire [3:3]\delay_stage[47].co ;
  wire [3:3]\delay_stage[48].co ;
  wire [3:3]\delay_stage[49].co ;
  wire [3:3]\delay_stage[4].co ;
  wire [3:3]\delay_stage[50].co ;
  wire [3:3]\delay_stage[51].co ;
  wire [3:3]\delay_stage[52].co ;
  wire [3:3]\delay_stage[53].co ;
  wire [3:3]\delay_stage[54].co ;
  wire [3:3]\delay_stage[55].co ;
  wire [3:3]\delay_stage[56].co ;
  wire [3:3]\delay_stage[57].co ;
  wire [3:3]\delay_stage[58].co ;
  wire [3:3]\delay_stage[59].co ;
  wire [3:3]\delay_stage[5].co ;
  wire [3:3]\delay_stage[60].co ;
  wire [3:3]\delay_stage[61].co ;
  wire [3:3]\delay_stage[62].co ;
  wire [3:3]\delay_stage[6].co ;
  wire [3:3]\delay_stage[7].co ;
  wire [3:3]\delay_stage[8].co ;
  wire [3:3]\delay_stage[9].co ;
  wire \grp_sum[0][0]_i_2_n_0 ;
  wire \grp_sum[0][1]_i_2_n_0 ;
  wire \grp_sum[0][2]_i_2_n_0 ;
  wire \grp_sum[0][3]_i_2_n_0 ;
  wire \grp_sum[0][3]_i_3_n_0 ;
  wire \grp_sum[0][3]_i_4_n_0 ;
  wire \grp_sum[10][0]_i_2_n_0 ;
  wire \grp_sum[10][1]_i_2_n_0 ;
  wire \grp_sum[10][2]_i_2_n_0 ;
  wire \grp_sum[10][3]_i_2_n_0 ;
  wire \grp_sum[10][3]_i_3_n_0 ;
  wire \grp_sum[10][3]_i_4_n_0 ;
  wire \grp_sum[11][0]_i_2_n_0 ;
  wire \grp_sum[11][1]_i_2_n_0 ;
  wire \grp_sum[11][2]_i_2_n_0 ;
  wire \grp_sum[11][3]_i_2_n_0 ;
  wire \grp_sum[11][3]_i_3_n_0 ;
  wire \grp_sum[11][3]_i_4_n_0 ;
  wire \grp_sum[12][0]_i_2_n_0 ;
  wire \grp_sum[12][1]_i_2_n_0 ;
  wire \grp_sum[12][2]_i_2_n_0 ;
  wire \grp_sum[12][3]_i_2_n_0 ;
  wire \grp_sum[12][3]_i_3_n_0 ;
  wire \grp_sum[12][3]_i_4_n_0 ;
  wire \grp_sum[13][0]_i_2_n_0 ;
  wire \grp_sum[13][1]_i_2_n_0 ;
  wire \grp_sum[13][2]_i_2_n_0 ;
  wire \grp_sum[13][3]_i_2_n_0 ;
  wire \grp_sum[13][3]_i_3_n_0 ;
  wire \grp_sum[13][3]_i_4_n_0 ;
  wire \grp_sum[14][0]_i_2_n_0 ;
  wire \grp_sum[14][1]_i_2_n_0 ;
  wire \grp_sum[14][2]_i_2_n_0 ;
  wire \grp_sum[14][3]_i_2_n_0 ;
  wire \grp_sum[14][3]_i_3_n_0 ;
  wire \grp_sum[14][3]_i_4_n_0 ;
  wire \grp_sum[15][0]_i_2_n_0 ;
  wire \grp_sum[15][1]_i_2_n_0 ;
  wire \grp_sum[15][2]_i_2_n_0 ;
  wire \grp_sum[15][3]_i_2_n_0 ;
  wire \grp_sum[15][3]_i_3_n_0 ;
  wire \grp_sum[15][3]_i_4_n_0 ;
  wire \grp_sum[16][0]_i_2_n_0 ;
  wire \grp_sum[16][1]_i_2_n_0 ;
  wire \grp_sum[16][2]_i_2_n_0 ;
  wire \grp_sum[16][3]_i_2_n_0 ;
  wire \grp_sum[16][3]_i_3_n_0 ;
  wire \grp_sum[16][3]_i_4_n_0 ;
  wire \grp_sum[17][0]_i_2_n_0 ;
  wire \grp_sum[17][1]_i_2_n_0 ;
  wire \grp_sum[17][2]_i_2_n_0 ;
  wire \grp_sum[17][3]_i_2_n_0 ;
  wire \grp_sum[17][3]_i_3_n_0 ;
  wire \grp_sum[17][3]_i_4_n_0 ;
  wire \grp_sum[18][0]_i_2_n_0 ;
  wire \grp_sum[18][1]_i_2_n_0 ;
  wire \grp_sum[18][2]_i_2_n_0 ;
  wire \grp_sum[18][3]_i_2_n_0 ;
  wire \grp_sum[18][3]_i_3_n_0 ;
  wire \grp_sum[18][3]_i_4_n_0 ;
  wire \grp_sum[19][0]_i_2_n_0 ;
  wire \grp_sum[19][1]_i_2_n_0 ;
  wire \grp_sum[19][2]_i_2_n_0 ;
  wire \grp_sum[19][3]_i_2_n_0 ;
  wire \grp_sum[19][3]_i_3_n_0 ;
  wire \grp_sum[19][3]_i_4_n_0 ;
  wire \grp_sum[1][0]_i_2_n_0 ;
  wire \grp_sum[1][1]_i_2_n_0 ;
  wire \grp_sum[1][2]_i_2_n_0 ;
  wire \grp_sum[1][3]_i_2_n_0 ;
  wire \grp_sum[1][3]_i_3_n_0 ;
  wire \grp_sum[1][3]_i_4_n_0 ;
  wire \grp_sum[20][0]_i_2_n_0 ;
  wire \grp_sum[20][1]_i_2_n_0 ;
  wire \grp_sum[20][2]_i_2_n_0 ;
  wire \grp_sum[20][3]_i_2_n_0 ;
  wire \grp_sum[20][3]_i_3_n_0 ;
  wire \grp_sum[20][3]_i_4_n_0 ;
  wire \grp_sum[21][0]_i_2_n_0 ;
  wire \grp_sum[21][1]_i_2_n_0 ;
  wire \grp_sum[21][2]_i_2_n_0 ;
  wire \grp_sum[21][3]_i_2_n_0 ;
  wire \grp_sum[21][3]_i_3_n_0 ;
  wire \grp_sum[21][3]_i_4_n_0 ;
  wire \grp_sum[22][0]_i_2_n_0 ;
  wire \grp_sum[22][1]_i_2_n_0 ;
  wire \grp_sum[22][2]_i_2_n_0 ;
  wire \grp_sum[22][3]_i_2_n_0 ;
  wire \grp_sum[22][3]_i_3_n_0 ;
  wire \grp_sum[22][3]_i_4_n_0 ;
  wire \grp_sum[23][0]_i_2_n_0 ;
  wire \grp_sum[23][1]_i_2_n_0 ;
  wire \grp_sum[23][2]_i_2_n_0 ;
  wire \grp_sum[23][3]_i_2_n_0 ;
  wire \grp_sum[23][3]_i_3_n_0 ;
  wire \grp_sum[23][3]_i_4_n_0 ;
  wire \grp_sum[24][0]_i_2_n_0 ;
  wire \grp_sum[24][1]_i_2_n_0 ;
  wire \grp_sum[24][2]_i_2_n_0 ;
  wire \grp_sum[24][3]_i_2_n_0 ;
  wire \grp_sum[24][3]_i_3_n_0 ;
  wire \grp_sum[24][3]_i_4_n_0 ;
  wire \grp_sum[25][0]_i_2_n_0 ;
  wire \grp_sum[25][1]_i_2_n_0 ;
  wire \grp_sum[25][2]_i_2_n_0 ;
  wire \grp_sum[25][3]_i_2_n_0 ;
  wire \grp_sum[25][3]_i_3_n_0 ;
  wire \grp_sum[25][3]_i_4_n_0 ;
  wire \grp_sum[26][0]_i_2_n_0 ;
  wire \grp_sum[26][1]_i_2_n_0 ;
  wire \grp_sum[26][2]_i_2_n_0 ;
  wire \grp_sum[26][3]_i_2_n_0 ;
  wire \grp_sum[26][3]_i_3_n_0 ;
  wire \grp_sum[26][3]_i_4_n_0 ;
  wire \grp_sum[27][0]_i_2_n_0 ;
  wire \grp_sum[27][1]_i_2_n_0 ;
  wire \grp_sum[27][2]_i_2_n_0 ;
  wire \grp_sum[27][3]_i_2_n_0 ;
  wire \grp_sum[27][3]_i_3_n_0 ;
  wire \grp_sum[27][3]_i_4_n_0 ;
  wire \grp_sum[28][0]_i_2_n_0 ;
  wire \grp_sum[28][1]_i_2_n_0 ;
  wire \grp_sum[28][2]_i_2_n_0 ;
  wire \grp_sum[28][3]_i_2_n_0 ;
  wire \grp_sum[28][3]_i_3_n_0 ;
  wire \grp_sum[28][3]_i_4_n_0 ;
  wire \grp_sum[29][0]_i_2_n_0 ;
  wire \grp_sum[29][1]_i_2_n_0 ;
  wire \grp_sum[29][2]_i_2_n_0 ;
  wire \grp_sum[29][3]_i_2_n_0 ;
  wire \grp_sum[29][3]_i_3_n_0 ;
  wire \grp_sum[29][3]_i_4_n_0 ;
  wire \grp_sum[2][0]_i_2_n_0 ;
  wire \grp_sum[2][1]_i_2_n_0 ;
  wire \grp_sum[2][2]_i_2_n_0 ;
  wire \grp_sum[2][3]_i_2_n_0 ;
  wire \grp_sum[2][3]_i_3_n_0 ;
  wire \grp_sum[2][3]_i_4_n_0 ;
  wire \grp_sum[30][0]_i_2_n_0 ;
  wire \grp_sum[30][1]_i_2_n_0 ;
  wire \grp_sum[30][2]_i_2_n_0 ;
  wire \grp_sum[30][3]_i_2_n_0 ;
  wire \grp_sum[30][3]_i_3_n_0 ;
  wire \grp_sum[30][3]_i_4_n_0 ;
  wire \grp_sum[31][0]_i_2_n_0 ;
  wire \grp_sum[31][1]_i_2_n_0 ;
  wire \grp_sum[31][2]_i_2_n_0 ;
  wire \grp_sum[31][3]_i_2_n_0 ;
  wire \grp_sum[31][3]_i_3_n_0 ;
  wire \grp_sum[31][3]_i_4_n_0 ;
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
  wire \grp_sum[8][0]_i_2_n_0 ;
  wire \grp_sum[8][1]_i_2_n_0 ;
  wire \grp_sum[8][2]_i_2_n_0 ;
  wire \grp_sum[8][3]_i_2_n_0 ;
  wire \grp_sum[8][3]_i_3_n_0 ;
  wire \grp_sum[8][3]_i_4_n_0 ;
  wire \grp_sum[9][0]_i_2_n_0 ;
  wire \grp_sum[9][1]_i_2_n_0 ;
  wire \grp_sum[9][2]_i_2_n_0 ;
  wire \grp_sum[9][3]_i_2_n_0 ;
  wire \grp_sum[9][3]_i_3_n_0 ;
  wire \grp_sum[9][3]_i_4_n_0 ;
  wire [3:0]\grp_sum_reg[0]_56 ;
  wire [3:0]\grp_sum_reg[10]_8 ;
  wire [3:0]\grp_sum_reg[11]_7 ;
  wire [3:0]\grp_sum_reg[12]_4 ;
  wire [3:0]\grp_sum_reg[13]_3 ;
  wire [3:0]\grp_sum_reg[14]_1 ;
  wire [3:0]\grp_sum_reg[15]_0 ;
  wire [3:0]\grp_sum_reg[16]_26 ;
  wire [3:0]\grp_sum_reg[17]_25 ;
  wire [3:0]\grp_sum_reg[18]_23 ;
  wire [3:0]\grp_sum_reg[19]_22 ;
  wire [3:0]\grp_sum_reg[1]_55 ;
  wire [3:0]\grp_sum_reg[20]_19 ;
  wire [3:0]\grp_sum_reg[21]_18 ;
  wire [3:0]\grp_sum_reg[22]_16 ;
  wire [3:0]\grp_sum_reg[23]_15 ;
  wire [3:0]\grp_sum_reg[24]_41 ;
  wire [3:0]\grp_sum_reg[25]_40 ;
  wire [3:0]\grp_sum_reg[26]_38 ;
  wire [3:0]\grp_sum_reg[27]_37 ;
  wire [3:0]\grp_sum_reg[28]_34 ;
  wire [3:0]\grp_sum_reg[29]_33 ;
  wire [3:0]\grp_sum_reg[2]_53 ;
  wire [3:0]\grp_sum_reg[30]_31 ;
  wire [3:0]\grp_sum_reg[31]_30 ;
  wire [3:0]\grp_sum_reg[3]_52 ;
  wire [3:0]\grp_sum_reg[4]_49 ;
  wire [3:0]\grp_sum_reg[5]_48 ;
  wire [3:0]\grp_sum_reg[6]_46 ;
  wire [3:0]\grp_sum_reg[7]_45 ;
  wire [3:0]\grp_sum_reg[8]_11 ;
  wire [3:0]\grp_sum_reg[9]_10 ;
  wire \oct_sum[0][3]_i_2_n_0 ;
  wire \oct_sum[0][3]_i_3_n_0 ;
  wire \oct_sum[0][3]_i_4_n_0 ;
  wire \oct_sum[0][3]_i_5_n_0 ;
  wire \oct_sum[0][6]_i_2_n_0 ;
  wire \oct_sum[0][6]_i_3_n_0 ;
  wire \oct_sum[1][3]_i_2_n_0 ;
  wire \oct_sum[1][3]_i_3_n_0 ;
  wire \oct_sum[1][3]_i_4_n_0 ;
  wire \oct_sum[1][3]_i_5_n_0 ;
  wire \oct_sum[1][6]_i_2_n_0 ;
  wire \oct_sum[1][6]_i_3_n_0 ;
  wire \oct_sum[2][3]_i_2_n_0 ;
  wire \oct_sum[2][3]_i_3_n_0 ;
  wire \oct_sum[2][3]_i_4_n_0 ;
  wire \oct_sum[2][3]_i_5_n_0 ;
  wire \oct_sum[2][6]_i_2_n_0 ;
  wire \oct_sum[2][6]_i_3_n_0 ;
  wire \oct_sum[3][3]_i_2_n_0 ;
  wire \oct_sum[3][3]_i_3_n_0 ;
  wire \oct_sum[3][3]_i_4_n_0 ;
  wire \oct_sum[3][3]_i_5_n_0 ;
  wire \oct_sum[3][6]_i_2_n_0 ;
  wire \oct_sum[3][6]_i_3_n_0 ;
  wire \oct_sum_reg[0][3]_i_1_n_0 ;
  wire \oct_sum_reg[0][3]_i_1_n_1 ;
  wire \oct_sum_reg[0][3]_i_1_n_2 ;
  wire \oct_sum_reg[0][3]_i_1_n_3 ;
  wire \oct_sum_reg[0][3]_i_1_n_4 ;
  wire \oct_sum_reg[0][3]_i_1_n_5 ;
  wire \oct_sum_reg[0][3]_i_1_n_6 ;
  wire \oct_sum_reg[0][3]_i_1_n_7 ;
  wire \oct_sum_reg[0][6]_i_1_n_1 ;
  wire \oct_sum_reg[0][6]_i_1_n_3 ;
  wire \oct_sum_reg[0][6]_i_1_n_6 ;
  wire \oct_sum_reg[0][6]_i_1_n_7 ;
  wire [6:0]\oct_sum_reg[0]_59 ;
  wire \oct_sum_reg[1][3]_i_1_n_0 ;
  wire \oct_sum_reg[1][3]_i_1_n_1 ;
  wire \oct_sum_reg[1][3]_i_1_n_2 ;
  wire \oct_sum_reg[1][3]_i_1_n_3 ;
  wire \oct_sum_reg[1][6]_i_1_n_3 ;
  wire [6:0]\oct_sum_reg[1]_14 ;
  wire \oct_sum_reg[2][3]_i_1_n_0 ;
  wire \oct_sum_reg[2][3]_i_1_n_1 ;
  wire \oct_sum_reg[2][3]_i_1_n_2 ;
  wire \oct_sum_reg[2][3]_i_1_n_3 ;
  wire \oct_sum_reg[2][6]_i_1_n_3 ;
  wire [6:0]\oct_sum_reg[2]_29 ;
  wire \oct_sum_reg[3][3]_i_1_n_0 ;
  wire \oct_sum_reg[3][3]_i_1_n_1 ;
  wire \oct_sum_reg[3][3]_i_1_n_2 ;
  wire \oct_sum_reg[3][3]_i_1_n_3 ;
  wire \oct_sum_reg[3][3]_i_1_n_4 ;
  wire \oct_sum_reg[3][3]_i_1_n_5 ;
  wire \oct_sum_reg[3][3]_i_1_n_6 ;
  wire \oct_sum_reg[3][3]_i_1_n_7 ;
  wire \oct_sum_reg[3][6]_i_1_n_1 ;
  wire \oct_sum_reg[3][6]_i_1_n_3 ;
  wire \oct_sum_reg[3][6]_i_1_n_6 ;
  wire \oct_sum_reg[3][6]_i_1_n_7 ;
  wire [6:0]\oct_sum_reg[3]_44 ;
  wire p_0_in__0;
  wire [4:0]p_0_out;
  wire \p_0_out_inferred__0/pair_sum[15][4]_i_2_n_0 ;
  wire \p_0_out_inferred__1/quad_sum[7][0]_i_1_n_0 ;
  wire \p_0_out_inferred__1/quad_sum[7][1]_i_1_n_0 ;
  wire \p_0_out_inferred__1/quad_sum[7][2]_i_1_n_0 ;
  wire \p_0_out_inferred__1/quad_sum[7][3]_i_1_n_0 ;
  wire \p_0_out_inferred__1/quad_sum[7][4]_i_1_n_0 ;
  wire \p_0_out_inferred__1/quad_sum[7][5]_i_1_n_0 ;
  wire \p_0_out_inferred__1/quad_sum[7][5]_i_2_n_0 ;
  wire [5:0]p_12_out__0;
  wire \p_12_out_inferred__0/pair_sum[11][0]_i_1_n_0 ;
  wire \p_12_out_inferred__0/pair_sum[11][1]_i_1_n_0 ;
  wire \p_12_out_inferred__0/pair_sum[11][2]_i_1_n_0 ;
  wire \p_12_out_inferred__0/pair_sum[11][3]_i_1_n_0 ;
  wire \p_12_out_inferred__0/pair_sum[11][4]_i_1_n_0 ;
  wire \p_12_out_inferred__0/pair_sum[11][4]_i_2_n_0 ;
  wire [5:0]p_15_out__0;
  wire \p_15_out_inferred__0/pair_sum[10][0]_i_1_n_0 ;
  wire \p_15_out_inferred__0/pair_sum[10][1]_i_1_n_0 ;
  wire \p_15_out_inferred__0/pair_sum[10][2]_i_1_n_0 ;
  wire \p_15_out_inferred__0/pair_sum[10][3]_i_1_n_0 ;
  wire \p_15_out_inferred__0/pair_sum[10][4]_i_1_n_0 ;
  wire \p_15_out_inferred__0/pair_sum[10][4]_i_2_n_0 ;
  wire [4:0]p_18_out__0;
  wire \p_18_out_inferred__0/quad_sum[1][0]_i_1_n_0 ;
  wire \p_18_out_inferred__0/quad_sum[1][1]_i_1_n_0 ;
  wire \p_18_out_inferred__0/quad_sum[1][2]_i_1_n_0 ;
  wire \p_18_out_inferred__0/quad_sum[1][3]_i_1_n_0 ;
  wire \p_18_out_inferred__0/quad_sum[1][4]_i_1_n_0 ;
  wire \p_18_out_inferred__0/quad_sum[1][5]_i_1_n_0 ;
  wire \p_18_out_inferred__0/quad_sum[1][5]_i_2_n_0 ;
  wire p_1_in;
  wire [4:0]p_21_out__0;
  wire \p_21_out_inferred__0/quad_sum[0][0]_i_1_n_0 ;
  wire \p_21_out_inferred__0/quad_sum[0][1]_i_1_n_0 ;
  wire \p_21_out_inferred__0/quad_sum[0][2]_i_1_n_0 ;
  wire \p_21_out_inferred__0/quad_sum[0][3]_i_1_n_0 ;
  wire \p_21_out_inferred__0/quad_sum[0][4]_i_1_n_0 ;
  wire \p_21_out_inferred__0/quad_sum[0][5]_i_1_n_0 ;
  wire \p_21_out_inferred__0/quad_sum[0][5]_i_2_n_0 ;
  wire [4:0]p_24_out__0;
  wire [4:0]p_27_out__0;
  wire [4:0]p_30_out__0;
  wire [4:0]p_33_out__0;
  wire [4:0]p_36_out__0;
  wire [4:0]p_39_out__0;
  wire [6:0]p_3_out;
  wire \p_3_out_inferred__0/pair_sum[14][0]_i_1_n_0 ;
  wire \p_3_out_inferred__0/pair_sum[14][1]_i_1_n_0 ;
  wire \p_3_out_inferred__0/pair_sum[14][2]_i_1_n_0 ;
  wire \p_3_out_inferred__0/pair_sum[14][3]_i_1_n_0 ;
  wire \p_3_out_inferred__0/pair_sum[14][4]_i_1_n_0 ;
  wire \p_3_out_inferred__0/pair_sum[14][4]_i_2_n_0 ;
  wire \p_3_out_inferred__1/quad_sum[6][0]_i_1_n_0 ;
  wire \p_3_out_inferred__1/quad_sum[6][1]_i_1_n_0 ;
  wire \p_3_out_inferred__1/quad_sum[6][2]_i_1_n_0 ;
  wire \p_3_out_inferred__1/quad_sum[6][3]_i_1_n_0 ;
  wire \p_3_out_inferred__1/quad_sum[6][4]_i_1_n_0 ;
  wire \p_3_out_inferred__1/quad_sum[6][5]_i_1_n_0 ;
  wire \p_3_out_inferred__1/quad_sum[6][5]_i_2_n_0 ;
  wire [4:0]p_42_out__0;
  wire [4:0]p_45_out__0;
  wire [6:0]p_6_out;
  wire \p_6_out_inferred__0/quad_sum[5][0]_i_1_n_0 ;
  wire \p_6_out_inferred__0/quad_sum[5][1]_i_1_n_0 ;
  wire \p_6_out_inferred__0/quad_sum[5][2]_i_1_n_0 ;
  wire \p_6_out_inferred__0/quad_sum[5][3]_i_1_n_0 ;
  wire \p_6_out_inferred__0/quad_sum[5][4]_i_1_n_0 ;
  wire \p_6_out_inferred__0/quad_sum[5][5]_i_1_n_0 ;
  wire \p_6_out_inferred__0/quad_sum[5][5]_i_2_n_0 ;
  wire \p_6_out_inferred__1/pair_sum[13][0]_i_1_n_0 ;
  wire \p_6_out_inferred__1/pair_sum[13][1]_i_1_n_0 ;
  wire \p_6_out_inferred__1/pair_sum[13][2]_i_1_n_0 ;
  wire \p_6_out_inferred__1/pair_sum[13][3]_i_1_n_0 ;
  wire \p_6_out_inferred__1/pair_sum[13][4]_i_1_n_0 ;
  wire \p_6_out_inferred__1/pair_sum[13][4]_i_2_n_0 ;
  wire [5:0]p_9_out__0;
  wire \p_9_out_inferred__0/pair_sum[12][0]_i_1_n_0 ;
  wire \p_9_out_inferred__0/pair_sum[12][1]_i_1_n_0 ;
  wire \p_9_out_inferred__0/pair_sum[12][2]_i_1_n_0 ;
  wire \p_9_out_inferred__0/pair_sum[12][3]_i_1_n_0 ;
  wire \p_9_out_inferred__0/pair_sum[12][4]_i_1_n_0 ;
  wire \p_9_out_inferred__0/pair_sum[12][4]_i_2_n_0 ;
  wire \pair_sum[0][4]_i_2_n_0 ;
  wire \pair_sum[1][4]_i_2_n_0 ;
  wire \pair_sum[2][4]_i_2_n_0 ;
  wire \pair_sum[3][4]_i_2_n_0 ;
  wire \pair_sum[4][4]_i_2_n_0 ;
  wire \pair_sum[5][4]_i_2_n_0 ;
  wire \pair_sum[6][4]_i_2_n_0 ;
  wire \pair_sum[7][4]_i_2_n_0 ;
  wire \pair_sum[8][4]_i_2_n_0 ;
  wire \pair_sum[9][4]_i_2_n_0 ;
  wire [4:0]\pair_sum_reg[0]_57 ;
  wire [4:0]\pair_sum_reg[10]_20 ;
  wire [4:0]\pair_sum_reg[11]_17 ;
  wire [4:0]\pair_sum_reg[12]_42 ;
  wire [4:0]\pair_sum_reg[13]_39 ;
  wire [4:0]\pair_sum_reg[14]_35 ;
  wire [4:0]\pair_sum_reg[15]_32 ;
  wire [4:0]\pair_sum_reg[1]_54 ;
  wire [4:0]\pair_sum_reg[2]_50 ;
  wire [4:0]\pair_sum_reg[3]_47 ;
  wire [4:0]\pair_sum_reg[4]_12 ;
  wire [4:0]\pair_sum_reg[5]_9 ;
  wire [4:0]\pair_sum_reg[6]_5 ;
  wire [4:0]\pair_sum_reg[7]_2 ;
  wire [4:0]\pair_sum_reg[8]_27 ;
  wire [4:0]\pair_sum_reg[9]_24 ;
  wire [3:0]popcount80_return;
  wire [3:0]popcount810_return;
  wire [3:0]popcount811_return;
  wire [3:0]popcount812_return;
  wire [3:0]popcount813_return;
  wire [3:0]popcount814_return;
  wire [3:0]popcount815_return;
  wire [3:0]popcount816_return;
  wire [3:0]popcount817_return;
  wire [3:0]popcount818_return;
  wire [3:0]popcount819_return;
  wire [3:0]popcount81_return;
  wire [3:0]popcount820_return;
  wire [3:0]popcount821_return;
  wire [3:0]popcount822_return;
  wire [3:0]popcount823_return;
  wire [3:0]popcount824_return;
  wire [3:0]popcount825_return;
  wire [3:0]popcount826_return;
  wire [3:0]popcount827_return;
  wire [3:0]popcount828_return;
  wire [3:0]popcount829_return;
  wire [3:0]popcount82_return;
  wire [3:0]popcount830_return;
  wire [3:0]popcount83_return;
  wire [3:0]popcount84_return;
  wire [3:0]popcount85_return;
  wire [3:0]popcount86_return;
  wire [3:0]popcount87_return;
  wire [3:0]popcount88_return;
  wire [3:0]popcount89_return;
  wire [3:0]popcount8_return;
  wire \quad_sum[2][5]_i_2_n_0 ;
  wire \quad_sum[3][5]_i_2_n_0 ;
  wire \quad_sum[4][5]_i_2_n_0 ;
  wire [5:0]\quad_sum_reg[0]_58 ;
  wire [5:0]\quad_sum_reg[1]_51 ;
  wire [5:0]\quad_sum_reg[2]_13 ;
  wire [5:0]\quad_sum_reg[3]_6 ;
  wire [5:0]\quad_sum_reg[4]_28 ;
  wire [5:0]\quad_sum_reg[5]_21 ;
  wire [5:0]\quad_sum_reg[6]_43 ;
  wire [5:0]\quad_sum_reg[7]_36 ;
  wire [8:0]sum_comb;
  wire [255:0]tap_orig;
  (* async_reg = "true" *) wire [255:0]tap_reg;
  wire tdc_valid_i_2_n_0;
  wire tdc_value0__2_carry__0_i_10_n_0;
  wire tdc_value0__2_carry__0_i_11_n_0;
  wire tdc_value0__2_carry__0_i_12_n_0;
  wire tdc_value0__2_carry__0_i_1_n_0;
  wire tdc_value0__2_carry__0_i_2_n_0;
  wire tdc_value0__2_carry__0_i_3_n_0;
  wire tdc_value0__2_carry__0_i_4_n_0;
  wire tdc_value0__2_carry__0_i_5_n_0;
  wire tdc_value0__2_carry__0_i_6_n_0;
  wire tdc_value0__2_carry__0_i_7_n_0;
  wire tdc_value0__2_carry__0_i_8_n_0;
  wire tdc_value0__2_carry__0_i_9_n_0;
  wire tdc_value0__2_carry__0_n_0;
  wire tdc_value0__2_carry__0_n_1;
  wire tdc_value0__2_carry__0_n_2;
  wire tdc_value0__2_carry__0_n_3;
  wire tdc_value0__2_carry_i_1_n_0;
  wire tdc_value0__2_carry_i_2_n_0;
  wire tdc_value0__2_carry_i_3_n_0;
  wire tdc_value0__2_carry_i_4_n_0;
  wire tdc_value0__2_carry_i_5_n_0;
  wire tdc_value0__2_carry_i_6_n_0;
  wire tdc_value0__2_carry_i_7_n_0;
  wire tdc_value0__2_carry_i_8_n_0;
  wire tdc_value0__2_carry_i_9_n_0;
  wire tdc_value0__2_carry_n_0;
  wire tdc_value0__2_carry_n_1;
  wire tdc_value0__2_carry_n_2;
  wire tdc_value0__2_carry_n_3;
  wire \tdc_value[0]_i_1_n_0 ;
  wire \tdc_value[1]_i_1_n_0 ;
  wire \tdc_value[2]_i_1_n_0 ;
  wire \tdc_value[3]_i_1_n_0 ;
  wire \tdc_value[4]_i_1_n_0 ;
  wire \tdc_value[5]_i_1_n_0 ;
  wire \tdc_value[6]_i_1_n_0 ;
  wire \tdc_value[7]_i_1_n_0 ;
  wire [8:0]ts_word;
  wire [2:0]\NLW_delay_stage[0].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[10].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[11].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[12].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[13].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[14].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[15].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[16].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[17].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[18].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[19].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[1].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[20].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[21].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[22].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[23].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[24].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[25].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[26].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[27].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[28].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[29].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[2].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[30].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[31].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[32].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[33].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[34].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[35].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[36].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[37].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[38].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[39].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[3].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[40].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[41].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[42].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[43].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[44].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[45].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[46].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[47].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[48].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[49].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[4].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[50].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[51].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[52].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[53].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[54].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[55].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[56].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[57].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[58].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[59].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[5].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[60].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[61].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[62].carry4_inst_CO_UNCONNECTED ;
  wire [3:0]\NLW_delay_stage[63].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[6].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[7].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[8].carry4_inst_CO_UNCONNECTED ;
  wire [2:0]\NLW_delay_stage[9].carry4_inst_CO_UNCONNECTED ;
  wire [3:1]\NLW_oct_sum_reg[0][6]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_oct_sum_reg[0][6]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_oct_sum_reg[1][6]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_oct_sum_reg[1][6]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_oct_sum_reg[2][6]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_oct_sum_reg[2][6]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_oct_sum_reg[3][6]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_oct_sum_reg[3][6]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_tdc_value_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_tdc_value_reg[7]_i_2_O_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[0].carry4_inst 
       (.CI(1'b0),
        .CO({\delay_stage[0].co ,\NLW_delay_stage[0].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(D),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[10].carry4_inst 
       (.CI(\delay_stage[9].co ),
        .CO({\delay_stage[10].co ,\NLW_delay_stage[10].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[43:40]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[11].carry4_inst 
       (.CI(\delay_stage[10].co ),
        .CO({\delay_stage[11].co ,\NLW_delay_stage[11].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[47:44]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[12].carry4_inst 
       (.CI(\delay_stage[11].co ),
        .CO({\delay_stage[12].co ,\NLW_delay_stage[12].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[51:48]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[13].carry4_inst 
       (.CI(\delay_stage[12].co ),
        .CO({\delay_stage[13].co ,\NLW_delay_stage[13].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[55:52]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[14].carry4_inst 
       (.CI(\delay_stage[13].co ),
        .CO({\delay_stage[14].co ,\NLW_delay_stage[14].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[59:56]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[15].carry4_inst 
       (.CI(\delay_stage[14].co ),
        .CO({\delay_stage[15].co ,\NLW_delay_stage[15].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[63:60]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[16].carry4_inst 
       (.CI(\delay_stage[15].co ),
        .CO({\delay_stage[16].co ,\NLW_delay_stage[16].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[67:64]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[17].carry4_inst 
       (.CI(\delay_stage[16].co ),
        .CO({\delay_stage[17].co ,\NLW_delay_stage[17].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[71:68]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[18].carry4_inst 
       (.CI(\delay_stage[17].co ),
        .CO({\delay_stage[18].co ,\NLW_delay_stage[18].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[75:72]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[19].carry4_inst 
       (.CI(\delay_stage[18].co ),
        .CO({\delay_stage[19].co ,\NLW_delay_stage[19].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[79:76]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[1].carry4_inst 
       (.CI(\delay_stage[0].co ),
        .CO({\delay_stage[1].co ,\NLW_delay_stage[1].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[7:4]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[20].carry4_inst 
       (.CI(\delay_stage[19].co ),
        .CO({\delay_stage[20].co ,\NLW_delay_stage[20].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[83:80]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[21].carry4_inst 
       (.CI(\delay_stage[20].co ),
        .CO({\delay_stage[21].co ,\NLW_delay_stage[21].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[87:84]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[22].carry4_inst 
       (.CI(\delay_stage[21].co ),
        .CO({\delay_stage[22].co ,\NLW_delay_stage[22].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[91:88]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[23].carry4_inst 
       (.CI(\delay_stage[22].co ),
        .CO({\delay_stage[23].co ,\NLW_delay_stage[23].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[95:92]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[24].carry4_inst 
       (.CI(\delay_stage[23].co ),
        .CO({\delay_stage[24].co ,\NLW_delay_stage[24].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[99:96]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[25].carry4_inst 
       (.CI(\delay_stage[24].co ),
        .CO({\delay_stage[25].co ,\NLW_delay_stage[25].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[103:100]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[26].carry4_inst 
       (.CI(\delay_stage[25].co ),
        .CO({\delay_stage[26].co ,\NLW_delay_stage[26].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[107:104]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[27].carry4_inst 
       (.CI(\delay_stage[26].co ),
        .CO({\delay_stage[27].co ,\NLW_delay_stage[27].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[111:108]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[28].carry4_inst 
       (.CI(\delay_stage[27].co ),
        .CO({\delay_stage[28].co ,\NLW_delay_stage[28].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[115:112]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[29].carry4_inst 
       (.CI(\delay_stage[28].co ),
        .CO({\delay_stage[29].co ,\NLW_delay_stage[29].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[119:116]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[2].carry4_inst 
       (.CI(\delay_stage[1].co ),
        .CO({\delay_stage[2].co ,\NLW_delay_stage[2].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[11:8]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[30].carry4_inst 
       (.CI(\delay_stage[29].co ),
        .CO({\delay_stage[30].co ,\NLW_delay_stage[30].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[123:120]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[31].carry4_inst 
       (.CI(\delay_stage[30].co ),
        .CO({\delay_stage[31].co ,\NLW_delay_stage[31].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[127:124]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[32].carry4_inst 
       (.CI(\delay_stage[31].co ),
        .CO({\delay_stage[32].co ,\NLW_delay_stage[32].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[131:128]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[33].carry4_inst 
       (.CI(\delay_stage[32].co ),
        .CO({\delay_stage[33].co ,\NLW_delay_stage[33].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[135:132]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[34].carry4_inst 
       (.CI(\delay_stage[33].co ),
        .CO({\delay_stage[34].co ,\NLW_delay_stage[34].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[139:136]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[35].carry4_inst 
       (.CI(\delay_stage[34].co ),
        .CO({\delay_stage[35].co ,\NLW_delay_stage[35].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[143:140]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[36].carry4_inst 
       (.CI(\delay_stage[35].co ),
        .CO({\delay_stage[36].co ,\NLW_delay_stage[36].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[147:144]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[37].carry4_inst 
       (.CI(\delay_stage[36].co ),
        .CO({\delay_stage[37].co ,\NLW_delay_stage[37].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[151:148]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[38].carry4_inst 
       (.CI(\delay_stage[37].co ),
        .CO({\delay_stage[38].co ,\NLW_delay_stage[38].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[155:152]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[39].carry4_inst 
       (.CI(\delay_stage[38].co ),
        .CO({\delay_stage[39].co ,\NLW_delay_stage[39].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[159:156]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[3].carry4_inst 
       (.CI(\delay_stage[2].co ),
        .CO({\delay_stage[3].co ,\NLW_delay_stage[3].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[15:12]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[40].carry4_inst 
       (.CI(\delay_stage[39].co ),
        .CO({\delay_stage[40].co ,\NLW_delay_stage[40].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[163:160]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[41].carry4_inst 
       (.CI(\delay_stage[40].co ),
        .CO({\delay_stage[41].co ,\NLW_delay_stage[41].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[167:164]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[42].carry4_inst 
       (.CI(\delay_stage[41].co ),
        .CO({\delay_stage[42].co ,\NLW_delay_stage[42].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[171:168]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[43].carry4_inst 
       (.CI(\delay_stage[42].co ),
        .CO({\delay_stage[43].co ,\NLW_delay_stage[43].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[175:172]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[44].carry4_inst 
       (.CI(\delay_stage[43].co ),
        .CO({\delay_stage[44].co ,\NLW_delay_stage[44].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[179:176]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[45].carry4_inst 
       (.CI(\delay_stage[44].co ),
        .CO({\delay_stage[45].co ,\NLW_delay_stage[45].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[183:180]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[46].carry4_inst 
       (.CI(\delay_stage[45].co ),
        .CO({\delay_stage[46].co ,\NLW_delay_stage[46].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[187:184]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[47].carry4_inst 
       (.CI(\delay_stage[46].co ),
        .CO({\delay_stage[47].co ,\NLW_delay_stage[47].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[191:188]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[48].carry4_inst 
       (.CI(\delay_stage[47].co ),
        .CO({\delay_stage[48].co ,\NLW_delay_stage[48].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[195:192]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[49].carry4_inst 
       (.CI(\delay_stage[48].co ),
        .CO({\delay_stage[49].co ,\NLW_delay_stage[49].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[199:196]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[4].carry4_inst 
       (.CI(\delay_stage[3].co ),
        .CO({\delay_stage[4].co ,\NLW_delay_stage[4].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[19:16]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[50].carry4_inst 
       (.CI(\delay_stage[49].co ),
        .CO({\delay_stage[50].co ,\NLW_delay_stage[50].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[203:200]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[51].carry4_inst 
       (.CI(\delay_stage[50].co ),
        .CO({\delay_stage[51].co ,\NLW_delay_stage[51].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[207:204]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[52].carry4_inst 
       (.CI(\delay_stage[51].co ),
        .CO({\delay_stage[52].co ,\NLW_delay_stage[52].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[211:208]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[53].carry4_inst 
       (.CI(\delay_stage[52].co ),
        .CO({\delay_stage[53].co ,\NLW_delay_stage[53].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[215:212]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[54].carry4_inst 
       (.CI(\delay_stage[53].co ),
        .CO({\delay_stage[54].co ,\NLW_delay_stage[54].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[219:216]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[55].carry4_inst 
       (.CI(\delay_stage[54].co ),
        .CO({\delay_stage[55].co ,\NLW_delay_stage[55].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[223:220]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[56].carry4_inst 
       (.CI(\delay_stage[55].co ),
        .CO({\delay_stage[56].co ,\NLW_delay_stage[56].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[227:224]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[57].carry4_inst 
       (.CI(\delay_stage[56].co ),
        .CO({\delay_stage[57].co ,\NLW_delay_stage[57].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[231:228]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[58].carry4_inst 
       (.CI(\delay_stage[57].co ),
        .CO({\delay_stage[58].co ,\NLW_delay_stage[58].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[235:232]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[59].carry4_inst 
       (.CI(\delay_stage[58].co ),
        .CO({\delay_stage[59].co ,\NLW_delay_stage[59].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[239:236]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[5].carry4_inst 
       (.CI(\delay_stage[4].co ),
        .CO({\delay_stage[5].co ,\NLW_delay_stage[5].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[23:20]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[60].carry4_inst 
       (.CI(\delay_stage[59].co ),
        .CO({\delay_stage[60].co ,\NLW_delay_stage[60].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[243:240]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[61].carry4_inst 
       (.CI(\delay_stage[60].co ),
        .CO({\delay_stage[61].co ,\NLW_delay_stage[61].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[247:244]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[62].carry4_inst 
       (.CI(\delay_stage[61].co ),
        .CO({\delay_stage[62].co ,\NLW_delay_stage[62].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[251:248]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[63].carry4_inst 
       (.CI(\delay_stage[62].co ),
        .CO(\NLW_delay_stage[63].carry4_inst_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[255:252]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[6].carry4_inst 
       (.CI(\delay_stage[5].co ),
        .CO({\delay_stage[6].co ,\NLW_delay_stage[6].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[27:24]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[7].carry4_inst 
       (.CI(\delay_stage[6].co ),
        .CO({\delay_stage[7].co ,\NLW_delay_stage[7].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[31:28]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[8].carry4_inst 
       (.CI(\delay_stage[7].co ),
        .CO({\delay_stage[8].co ,\NLW_delay_stage[8].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[35:32]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 \delay_stage[9].carry4_inst 
       (.CI(\delay_stage[8].co ),
        .CO({\delay_stage[9].co ,\NLW_delay_stage[9].carry4_inst_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tap_orig[39:36]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[0][0]_i_1 
       (.I0(tap_reg[0]),
        .I1(tap_reg[7]),
        .I2(\grp_sum[0][0]_i_2_n_0 ),
        .I3(tap_reg[2]),
        .I4(tap_reg[1]),
        .I5(tap_reg[3]),
        .O(popcount8_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
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
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[0][2]_i_1 
       (.I0(\grp_sum[0][3]_i_2_n_0 ),
        .I1(\grp_sum[0][3]_i_3_n_0 ),
        .I2(\grp_sum[0][2]_i_2_n_0 ),
        .I3(tap_reg[4]),
        .I4(tap_reg[5]),
        .I5(tap_reg[6]),
        .O(popcount8_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[0][2]_i_2 
       (.I0(tap_reg[1]),
        .I1(tap_reg[2]),
        .I2(tap_reg[3]),
        .O(\grp_sum[0][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[0][3]_i_1 
       (.I0(\grp_sum[0][3]_i_2_n_0 ),
        .I1(\grp_sum[0][3]_i_3_n_0 ),
        .I2(tap_reg[3]),
        .I3(tap_reg[2]),
        .I4(tap_reg[1]),
        .I5(\grp_sum[0][3]_i_4_n_0 ),
        .O(popcount8_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[0][3]_i_2 
       (.I0(tap_reg[2]),
        .I1(tap_reg[1]),
        .I2(tap_reg[3]),
        .I3(tap_reg[0]),
        .I4(tap_reg[7]),
        .I5(\grp_sum[0][0]_i_2_n_0 ),
        .O(\grp_sum[0][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[0][3]_i_3 
       (.I0(tap_reg[7]),
        .I1(tap_reg[0]),
        .I2(tap_reg[5]),
        .I3(tap_reg[4]),
        .I4(tap_reg[6]),
        .O(\grp_sum[0][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[0][3]_i_4 
       (.I0(tap_reg[4]),
        .I1(tap_reg[5]),
        .I2(tap_reg[6]),
        .O(\grp_sum[0][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[10][0]_i_1 
       (.I0(tap_reg[80]),
        .I1(tap_reg[87]),
        .I2(\grp_sum[10][0]_i_2_n_0 ),
        .I3(tap_reg[82]),
        .I4(tap_reg[81]),
        .I5(tap_reg[83]),
        .O(popcount89_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[10][0]_i_2 
       (.I0(tap_reg[86]),
        .I1(tap_reg[84]),
        .I2(tap_reg[85]),
        .O(\grp_sum[10][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[10][1]_i_1 
       (.I0(\grp_sum[10][3]_i_2_n_0 ),
        .I1(\grp_sum[10][1]_i_2_n_0 ),
        .I2(\grp_sum[10][3]_i_3_n_0 ),
        .O(popcount89_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[10][1]_i_2 
       (.I0(tap_reg[83]),
        .I1(tap_reg[82]),
        .I2(tap_reg[81]),
        .I3(tap_reg[86]),
        .I4(tap_reg[85]),
        .I5(tap_reg[84]),
        .O(\grp_sum[10][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[10][2]_i_1 
       (.I0(\grp_sum[10][3]_i_2_n_0 ),
        .I1(\grp_sum[10][3]_i_3_n_0 ),
        .I2(\grp_sum[10][2]_i_2_n_0 ),
        .I3(tap_reg[84]),
        .I4(tap_reg[85]),
        .I5(tap_reg[86]),
        .O(popcount89_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[10][2]_i_2 
       (.I0(tap_reg[81]),
        .I1(tap_reg[82]),
        .I2(tap_reg[83]),
        .O(\grp_sum[10][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[10][3]_i_1 
       (.I0(\grp_sum[10][3]_i_2_n_0 ),
        .I1(\grp_sum[10][3]_i_3_n_0 ),
        .I2(tap_reg[83]),
        .I3(tap_reg[82]),
        .I4(tap_reg[81]),
        .I5(\grp_sum[10][3]_i_4_n_0 ),
        .O(popcount89_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[10][3]_i_2 
       (.I0(tap_reg[82]),
        .I1(tap_reg[81]),
        .I2(tap_reg[83]),
        .I3(tap_reg[80]),
        .I4(tap_reg[87]),
        .I5(\grp_sum[10][0]_i_2_n_0 ),
        .O(\grp_sum[10][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[10][3]_i_3 
       (.I0(tap_reg[87]),
        .I1(tap_reg[80]),
        .I2(tap_reg[85]),
        .I3(tap_reg[84]),
        .I4(tap_reg[86]),
        .O(\grp_sum[10][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[10][3]_i_4 
       (.I0(tap_reg[84]),
        .I1(tap_reg[85]),
        .I2(tap_reg[86]),
        .O(\grp_sum[10][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[11][0]_i_1 
       (.I0(tap_reg[88]),
        .I1(tap_reg[95]),
        .I2(\grp_sum[11][0]_i_2_n_0 ),
        .I3(tap_reg[90]),
        .I4(tap_reg[89]),
        .I5(tap_reg[91]),
        .O(popcount810_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[11][0]_i_2 
       (.I0(tap_reg[94]),
        .I1(tap_reg[92]),
        .I2(tap_reg[93]),
        .O(\grp_sum[11][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[11][1]_i_1 
       (.I0(\grp_sum[11][3]_i_2_n_0 ),
        .I1(\grp_sum[11][1]_i_2_n_0 ),
        .I2(\grp_sum[11][3]_i_3_n_0 ),
        .O(popcount810_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[11][1]_i_2 
       (.I0(tap_reg[91]),
        .I1(tap_reg[90]),
        .I2(tap_reg[89]),
        .I3(tap_reg[94]),
        .I4(tap_reg[93]),
        .I5(tap_reg[92]),
        .O(\grp_sum[11][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[11][2]_i_1 
       (.I0(\grp_sum[11][3]_i_2_n_0 ),
        .I1(\grp_sum[11][3]_i_3_n_0 ),
        .I2(\grp_sum[11][2]_i_2_n_0 ),
        .I3(tap_reg[92]),
        .I4(tap_reg[93]),
        .I5(tap_reg[94]),
        .O(popcount810_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[11][2]_i_2 
       (.I0(tap_reg[89]),
        .I1(tap_reg[90]),
        .I2(tap_reg[91]),
        .O(\grp_sum[11][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[11][3]_i_1 
       (.I0(\grp_sum[11][3]_i_2_n_0 ),
        .I1(\grp_sum[11][3]_i_3_n_0 ),
        .I2(tap_reg[91]),
        .I3(tap_reg[90]),
        .I4(tap_reg[89]),
        .I5(\grp_sum[11][3]_i_4_n_0 ),
        .O(popcount810_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[11][3]_i_2 
       (.I0(tap_reg[90]),
        .I1(tap_reg[89]),
        .I2(tap_reg[91]),
        .I3(tap_reg[88]),
        .I4(tap_reg[95]),
        .I5(\grp_sum[11][0]_i_2_n_0 ),
        .O(\grp_sum[11][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[11][3]_i_3 
       (.I0(tap_reg[95]),
        .I1(tap_reg[88]),
        .I2(tap_reg[93]),
        .I3(tap_reg[92]),
        .I4(tap_reg[94]),
        .O(\grp_sum[11][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[11][3]_i_4 
       (.I0(tap_reg[92]),
        .I1(tap_reg[93]),
        .I2(tap_reg[94]),
        .O(\grp_sum[11][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[12][0]_i_1 
       (.I0(tap_reg[96]),
        .I1(tap_reg[103]),
        .I2(\grp_sum[12][0]_i_2_n_0 ),
        .I3(tap_reg[98]),
        .I4(tap_reg[97]),
        .I5(tap_reg[99]),
        .O(popcount811_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[12][0]_i_2 
       (.I0(tap_reg[102]),
        .I1(tap_reg[100]),
        .I2(tap_reg[101]),
        .O(\grp_sum[12][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[12][1]_i_1 
       (.I0(\grp_sum[12][3]_i_2_n_0 ),
        .I1(\grp_sum[12][1]_i_2_n_0 ),
        .I2(\grp_sum[12][3]_i_3_n_0 ),
        .O(popcount811_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[12][1]_i_2 
       (.I0(tap_reg[99]),
        .I1(tap_reg[98]),
        .I2(tap_reg[97]),
        .I3(tap_reg[102]),
        .I4(tap_reg[101]),
        .I5(tap_reg[100]),
        .O(\grp_sum[12][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[12][2]_i_1 
       (.I0(\grp_sum[12][3]_i_2_n_0 ),
        .I1(\grp_sum[12][3]_i_3_n_0 ),
        .I2(\grp_sum[12][2]_i_2_n_0 ),
        .I3(tap_reg[100]),
        .I4(tap_reg[101]),
        .I5(tap_reg[102]),
        .O(popcount811_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[12][2]_i_2 
       (.I0(tap_reg[97]),
        .I1(tap_reg[98]),
        .I2(tap_reg[99]),
        .O(\grp_sum[12][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[12][3]_i_1 
       (.I0(\grp_sum[12][3]_i_2_n_0 ),
        .I1(\grp_sum[12][3]_i_3_n_0 ),
        .I2(tap_reg[99]),
        .I3(tap_reg[98]),
        .I4(tap_reg[97]),
        .I5(\grp_sum[12][3]_i_4_n_0 ),
        .O(popcount811_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[12][3]_i_2 
       (.I0(tap_reg[98]),
        .I1(tap_reg[97]),
        .I2(tap_reg[99]),
        .I3(tap_reg[96]),
        .I4(tap_reg[103]),
        .I5(\grp_sum[12][0]_i_2_n_0 ),
        .O(\grp_sum[12][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[12][3]_i_3 
       (.I0(tap_reg[103]),
        .I1(tap_reg[96]),
        .I2(tap_reg[101]),
        .I3(tap_reg[100]),
        .I4(tap_reg[102]),
        .O(\grp_sum[12][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[12][3]_i_4 
       (.I0(tap_reg[100]),
        .I1(tap_reg[101]),
        .I2(tap_reg[102]),
        .O(\grp_sum[12][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[13][0]_i_1 
       (.I0(tap_reg[104]),
        .I1(tap_reg[111]),
        .I2(\grp_sum[13][0]_i_2_n_0 ),
        .I3(tap_reg[106]),
        .I4(tap_reg[105]),
        .I5(tap_reg[107]),
        .O(popcount812_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[13][0]_i_2 
       (.I0(tap_reg[110]),
        .I1(tap_reg[108]),
        .I2(tap_reg[109]),
        .O(\grp_sum[13][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[13][1]_i_1 
       (.I0(\grp_sum[13][3]_i_2_n_0 ),
        .I1(\grp_sum[13][1]_i_2_n_0 ),
        .I2(\grp_sum[13][3]_i_3_n_0 ),
        .O(popcount812_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[13][1]_i_2 
       (.I0(tap_reg[107]),
        .I1(tap_reg[106]),
        .I2(tap_reg[105]),
        .I3(tap_reg[110]),
        .I4(tap_reg[109]),
        .I5(tap_reg[108]),
        .O(\grp_sum[13][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[13][2]_i_1 
       (.I0(\grp_sum[13][3]_i_2_n_0 ),
        .I1(\grp_sum[13][3]_i_3_n_0 ),
        .I2(\grp_sum[13][2]_i_2_n_0 ),
        .I3(tap_reg[108]),
        .I4(tap_reg[109]),
        .I5(tap_reg[110]),
        .O(popcount812_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[13][2]_i_2 
       (.I0(tap_reg[105]),
        .I1(tap_reg[106]),
        .I2(tap_reg[107]),
        .O(\grp_sum[13][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[13][3]_i_1 
       (.I0(\grp_sum[13][3]_i_2_n_0 ),
        .I1(\grp_sum[13][3]_i_3_n_0 ),
        .I2(tap_reg[107]),
        .I3(tap_reg[106]),
        .I4(tap_reg[105]),
        .I5(\grp_sum[13][3]_i_4_n_0 ),
        .O(popcount812_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[13][3]_i_2 
       (.I0(tap_reg[106]),
        .I1(tap_reg[105]),
        .I2(tap_reg[107]),
        .I3(tap_reg[104]),
        .I4(tap_reg[111]),
        .I5(\grp_sum[13][0]_i_2_n_0 ),
        .O(\grp_sum[13][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[13][3]_i_3 
       (.I0(tap_reg[111]),
        .I1(tap_reg[104]),
        .I2(tap_reg[109]),
        .I3(tap_reg[108]),
        .I4(tap_reg[110]),
        .O(\grp_sum[13][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[13][3]_i_4 
       (.I0(tap_reg[108]),
        .I1(tap_reg[109]),
        .I2(tap_reg[110]),
        .O(\grp_sum[13][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[14][0]_i_1 
       (.I0(tap_reg[112]),
        .I1(tap_reg[119]),
        .I2(\grp_sum[14][0]_i_2_n_0 ),
        .I3(tap_reg[114]),
        .I4(tap_reg[113]),
        .I5(tap_reg[115]),
        .O(popcount813_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[14][0]_i_2 
       (.I0(tap_reg[118]),
        .I1(tap_reg[116]),
        .I2(tap_reg[117]),
        .O(\grp_sum[14][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[14][1]_i_1 
       (.I0(\grp_sum[14][3]_i_2_n_0 ),
        .I1(\grp_sum[14][1]_i_2_n_0 ),
        .I2(\grp_sum[14][3]_i_3_n_0 ),
        .O(popcount813_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[14][1]_i_2 
       (.I0(tap_reg[115]),
        .I1(tap_reg[114]),
        .I2(tap_reg[113]),
        .I3(tap_reg[118]),
        .I4(tap_reg[117]),
        .I5(tap_reg[116]),
        .O(\grp_sum[14][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[14][2]_i_1 
       (.I0(\grp_sum[14][3]_i_2_n_0 ),
        .I1(\grp_sum[14][3]_i_3_n_0 ),
        .I2(\grp_sum[14][2]_i_2_n_0 ),
        .I3(tap_reg[116]),
        .I4(tap_reg[117]),
        .I5(tap_reg[118]),
        .O(popcount813_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[14][2]_i_2 
       (.I0(tap_reg[113]),
        .I1(tap_reg[114]),
        .I2(tap_reg[115]),
        .O(\grp_sum[14][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[14][3]_i_1 
       (.I0(\grp_sum[14][3]_i_2_n_0 ),
        .I1(\grp_sum[14][3]_i_3_n_0 ),
        .I2(tap_reg[115]),
        .I3(tap_reg[114]),
        .I4(tap_reg[113]),
        .I5(\grp_sum[14][3]_i_4_n_0 ),
        .O(popcount813_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[14][3]_i_2 
       (.I0(tap_reg[114]),
        .I1(tap_reg[113]),
        .I2(tap_reg[115]),
        .I3(tap_reg[112]),
        .I4(tap_reg[119]),
        .I5(\grp_sum[14][0]_i_2_n_0 ),
        .O(\grp_sum[14][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[14][3]_i_3 
       (.I0(tap_reg[119]),
        .I1(tap_reg[112]),
        .I2(tap_reg[117]),
        .I3(tap_reg[116]),
        .I4(tap_reg[118]),
        .O(\grp_sum[14][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[14][3]_i_4 
       (.I0(tap_reg[116]),
        .I1(tap_reg[117]),
        .I2(tap_reg[118]),
        .O(\grp_sum[14][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[15][0]_i_1 
       (.I0(tap_reg[120]),
        .I1(tap_reg[127]),
        .I2(\grp_sum[15][0]_i_2_n_0 ),
        .I3(tap_reg[122]),
        .I4(tap_reg[121]),
        .I5(tap_reg[123]),
        .O(popcount814_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[15][0]_i_2 
       (.I0(tap_reg[126]),
        .I1(tap_reg[124]),
        .I2(tap_reg[125]),
        .O(\grp_sum[15][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[15][1]_i_1 
       (.I0(\grp_sum[15][3]_i_2_n_0 ),
        .I1(\grp_sum[15][1]_i_2_n_0 ),
        .I2(\grp_sum[15][3]_i_3_n_0 ),
        .O(popcount814_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[15][1]_i_2 
       (.I0(tap_reg[123]),
        .I1(tap_reg[122]),
        .I2(tap_reg[121]),
        .I3(tap_reg[126]),
        .I4(tap_reg[125]),
        .I5(tap_reg[124]),
        .O(\grp_sum[15][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[15][2]_i_1 
       (.I0(\grp_sum[15][3]_i_2_n_0 ),
        .I1(\grp_sum[15][3]_i_3_n_0 ),
        .I2(\grp_sum[15][2]_i_2_n_0 ),
        .I3(tap_reg[124]),
        .I4(tap_reg[125]),
        .I5(tap_reg[126]),
        .O(popcount814_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[15][2]_i_2 
       (.I0(tap_reg[121]),
        .I1(tap_reg[122]),
        .I2(tap_reg[123]),
        .O(\grp_sum[15][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[15][3]_i_1 
       (.I0(\grp_sum[15][3]_i_2_n_0 ),
        .I1(\grp_sum[15][3]_i_3_n_0 ),
        .I2(tap_reg[123]),
        .I3(tap_reg[122]),
        .I4(tap_reg[121]),
        .I5(\grp_sum[15][3]_i_4_n_0 ),
        .O(popcount814_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[15][3]_i_2 
       (.I0(tap_reg[122]),
        .I1(tap_reg[121]),
        .I2(tap_reg[123]),
        .I3(tap_reg[120]),
        .I4(tap_reg[127]),
        .I5(\grp_sum[15][0]_i_2_n_0 ),
        .O(\grp_sum[15][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[15][3]_i_3 
       (.I0(tap_reg[127]),
        .I1(tap_reg[120]),
        .I2(tap_reg[125]),
        .I3(tap_reg[124]),
        .I4(tap_reg[126]),
        .O(\grp_sum[15][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[15][3]_i_4 
       (.I0(tap_reg[124]),
        .I1(tap_reg[125]),
        .I2(tap_reg[126]),
        .O(\grp_sum[15][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[16][0]_i_1 
       (.I0(tap_reg[128]),
        .I1(tap_reg[135]),
        .I2(\grp_sum[16][0]_i_2_n_0 ),
        .I3(tap_reg[130]),
        .I4(tap_reg[129]),
        .I5(tap_reg[131]),
        .O(popcount815_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[16][0]_i_2 
       (.I0(tap_reg[134]),
        .I1(tap_reg[132]),
        .I2(tap_reg[133]),
        .O(\grp_sum[16][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[16][1]_i_1 
       (.I0(\grp_sum[16][3]_i_2_n_0 ),
        .I1(\grp_sum[16][1]_i_2_n_0 ),
        .I2(\grp_sum[16][3]_i_3_n_0 ),
        .O(popcount815_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[16][1]_i_2 
       (.I0(tap_reg[131]),
        .I1(tap_reg[130]),
        .I2(tap_reg[129]),
        .I3(tap_reg[134]),
        .I4(tap_reg[133]),
        .I5(tap_reg[132]),
        .O(\grp_sum[16][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[16][2]_i_1 
       (.I0(\grp_sum[16][3]_i_2_n_0 ),
        .I1(\grp_sum[16][3]_i_3_n_0 ),
        .I2(\grp_sum[16][2]_i_2_n_0 ),
        .I3(tap_reg[132]),
        .I4(tap_reg[133]),
        .I5(tap_reg[134]),
        .O(popcount815_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[16][2]_i_2 
       (.I0(tap_reg[129]),
        .I1(tap_reg[130]),
        .I2(tap_reg[131]),
        .O(\grp_sum[16][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[16][3]_i_1 
       (.I0(\grp_sum[16][3]_i_2_n_0 ),
        .I1(\grp_sum[16][3]_i_3_n_0 ),
        .I2(tap_reg[131]),
        .I3(tap_reg[130]),
        .I4(tap_reg[129]),
        .I5(\grp_sum[16][3]_i_4_n_0 ),
        .O(popcount815_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[16][3]_i_2 
       (.I0(tap_reg[130]),
        .I1(tap_reg[129]),
        .I2(tap_reg[131]),
        .I3(tap_reg[128]),
        .I4(tap_reg[135]),
        .I5(\grp_sum[16][0]_i_2_n_0 ),
        .O(\grp_sum[16][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[16][3]_i_3 
       (.I0(tap_reg[135]),
        .I1(tap_reg[128]),
        .I2(tap_reg[133]),
        .I3(tap_reg[132]),
        .I4(tap_reg[134]),
        .O(\grp_sum[16][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[16][3]_i_4 
       (.I0(tap_reg[132]),
        .I1(tap_reg[133]),
        .I2(tap_reg[134]),
        .O(\grp_sum[16][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[17][0]_i_1 
       (.I0(tap_reg[136]),
        .I1(tap_reg[143]),
        .I2(\grp_sum[17][0]_i_2_n_0 ),
        .I3(tap_reg[138]),
        .I4(tap_reg[137]),
        .I5(tap_reg[139]),
        .O(popcount816_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[17][0]_i_2 
       (.I0(tap_reg[142]),
        .I1(tap_reg[140]),
        .I2(tap_reg[141]),
        .O(\grp_sum[17][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[17][1]_i_1 
       (.I0(\grp_sum[17][3]_i_2_n_0 ),
        .I1(\grp_sum[17][1]_i_2_n_0 ),
        .I2(\grp_sum[17][3]_i_3_n_0 ),
        .O(popcount816_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[17][1]_i_2 
       (.I0(tap_reg[139]),
        .I1(tap_reg[138]),
        .I2(tap_reg[137]),
        .I3(tap_reg[142]),
        .I4(tap_reg[141]),
        .I5(tap_reg[140]),
        .O(\grp_sum[17][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[17][2]_i_1 
       (.I0(\grp_sum[17][3]_i_2_n_0 ),
        .I1(\grp_sum[17][3]_i_3_n_0 ),
        .I2(\grp_sum[17][2]_i_2_n_0 ),
        .I3(tap_reg[140]),
        .I4(tap_reg[141]),
        .I5(tap_reg[142]),
        .O(popcount816_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[17][2]_i_2 
       (.I0(tap_reg[137]),
        .I1(tap_reg[138]),
        .I2(tap_reg[139]),
        .O(\grp_sum[17][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[17][3]_i_1 
       (.I0(\grp_sum[17][3]_i_2_n_0 ),
        .I1(\grp_sum[17][3]_i_3_n_0 ),
        .I2(tap_reg[139]),
        .I3(tap_reg[138]),
        .I4(tap_reg[137]),
        .I5(\grp_sum[17][3]_i_4_n_0 ),
        .O(popcount816_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[17][3]_i_2 
       (.I0(tap_reg[138]),
        .I1(tap_reg[137]),
        .I2(tap_reg[139]),
        .I3(tap_reg[136]),
        .I4(tap_reg[143]),
        .I5(\grp_sum[17][0]_i_2_n_0 ),
        .O(\grp_sum[17][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[17][3]_i_3 
       (.I0(tap_reg[143]),
        .I1(tap_reg[136]),
        .I2(tap_reg[141]),
        .I3(tap_reg[140]),
        .I4(tap_reg[142]),
        .O(\grp_sum[17][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[17][3]_i_4 
       (.I0(tap_reg[140]),
        .I1(tap_reg[141]),
        .I2(tap_reg[142]),
        .O(\grp_sum[17][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[18][0]_i_1 
       (.I0(tap_reg[144]),
        .I1(tap_reg[151]),
        .I2(\grp_sum[18][0]_i_2_n_0 ),
        .I3(tap_reg[146]),
        .I4(tap_reg[145]),
        .I5(tap_reg[147]),
        .O(popcount817_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[18][0]_i_2 
       (.I0(tap_reg[150]),
        .I1(tap_reg[148]),
        .I2(tap_reg[149]),
        .O(\grp_sum[18][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[18][1]_i_1 
       (.I0(\grp_sum[18][3]_i_2_n_0 ),
        .I1(\grp_sum[18][1]_i_2_n_0 ),
        .I2(\grp_sum[18][3]_i_3_n_0 ),
        .O(popcount817_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[18][1]_i_2 
       (.I0(tap_reg[147]),
        .I1(tap_reg[146]),
        .I2(tap_reg[145]),
        .I3(tap_reg[150]),
        .I4(tap_reg[149]),
        .I5(tap_reg[148]),
        .O(\grp_sum[18][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[18][2]_i_1 
       (.I0(\grp_sum[18][3]_i_2_n_0 ),
        .I1(\grp_sum[18][3]_i_3_n_0 ),
        .I2(\grp_sum[18][2]_i_2_n_0 ),
        .I3(tap_reg[148]),
        .I4(tap_reg[149]),
        .I5(tap_reg[150]),
        .O(popcount817_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[18][2]_i_2 
       (.I0(tap_reg[145]),
        .I1(tap_reg[146]),
        .I2(tap_reg[147]),
        .O(\grp_sum[18][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[18][3]_i_1 
       (.I0(\grp_sum[18][3]_i_2_n_0 ),
        .I1(\grp_sum[18][3]_i_3_n_0 ),
        .I2(tap_reg[147]),
        .I3(tap_reg[146]),
        .I4(tap_reg[145]),
        .I5(\grp_sum[18][3]_i_4_n_0 ),
        .O(popcount817_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[18][3]_i_2 
       (.I0(tap_reg[146]),
        .I1(tap_reg[145]),
        .I2(tap_reg[147]),
        .I3(tap_reg[144]),
        .I4(tap_reg[151]),
        .I5(\grp_sum[18][0]_i_2_n_0 ),
        .O(\grp_sum[18][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[18][3]_i_3 
       (.I0(tap_reg[151]),
        .I1(tap_reg[144]),
        .I2(tap_reg[149]),
        .I3(tap_reg[148]),
        .I4(tap_reg[150]),
        .O(\grp_sum[18][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[18][3]_i_4 
       (.I0(tap_reg[148]),
        .I1(tap_reg[149]),
        .I2(tap_reg[150]),
        .O(\grp_sum[18][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[19][0]_i_1 
       (.I0(tap_reg[152]),
        .I1(tap_reg[159]),
        .I2(\grp_sum[19][0]_i_2_n_0 ),
        .I3(tap_reg[154]),
        .I4(tap_reg[153]),
        .I5(tap_reg[155]),
        .O(popcount818_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[19][0]_i_2 
       (.I0(tap_reg[158]),
        .I1(tap_reg[156]),
        .I2(tap_reg[157]),
        .O(\grp_sum[19][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[19][1]_i_1 
       (.I0(\grp_sum[19][3]_i_2_n_0 ),
        .I1(\grp_sum[19][1]_i_2_n_0 ),
        .I2(\grp_sum[19][3]_i_3_n_0 ),
        .O(popcount818_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[19][1]_i_2 
       (.I0(tap_reg[155]),
        .I1(tap_reg[154]),
        .I2(tap_reg[153]),
        .I3(tap_reg[158]),
        .I4(tap_reg[157]),
        .I5(tap_reg[156]),
        .O(\grp_sum[19][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[19][2]_i_1 
       (.I0(\grp_sum[19][3]_i_2_n_0 ),
        .I1(\grp_sum[19][3]_i_3_n_0 ),
        .I2(\grp_sum[19][2]_i_2_n_0 ),
        .I3(tap_reg[156]),
        .I4(tap_reg[157]),
        .I5(tap_reg[158]),
        .O(popcount818_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[19][2]_i_2 
       (.I0(tap_reg[153]),
        .I1(tap_reg[154]),
        .I2(tap_reg[155]),
        .O(\grp_sum[19][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[19][3]_i_1 
       (.I0(\grp_sum[19][3]_i_2_n_0 ),
        .I1(\grp_sum[19][3]_i_3_n_0 ),
        .I2(tap_reg[155]),
        .I3(tap_reg[154]),
        .I4(tap_reg[153]),
        .I5(\grp_sum[19][3]_i_4_n_0 ),
        .O(popcount818_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[19][3]_i_2 
       (.I0(tap_reg[154]),
        .I1(tap_reg[153]),
        .I2(tap_reg[155]),
        .I3(tap_reg[152]),
        .I4(tap_reg[159]),
        .I5(\grp_sum[19][0]_i_2_n_0 ),
        .O(\grp_sum[19][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[19][3]_i_3 
       (.I0(tap_reg[159]),
        .I1(tap_reg[152]),
        .I2(tap_reg[157]),
        .I3(tap_reg[156]),
        .I4(tap_reg[158]),
        .O(\grp_sum[19][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[19][3]_i_4 
       (.I0(tap_reg[156]),
        .I1(tap_reg[157]),
        .I2(tap_reg[158]),
        .O(\grp_sum[19][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[1][0]_i_1 
       (.I0(tap_reg[8]),
        .I1(tap_reg[15]),
        .I2(\grp_sum[1][0]_i_2_n_0 ),
        .I3(tap_reg[10]),
        .I4(tap_reg[9]),
        .I5(tap_reg[11]),
        .O(popcount80_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
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
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[1][2]_i_1 
       (.I0(\grp_sum[1][3]_i_2_n_0 ),
        .I1(\grp_sum[1][3]_i_3_n_0 ),
        .I2(\grp_sum[1][2]_i_2_n_0 ),
        .I3(tap_reg[12]),
        .I4(tap_reg[13]),
        .I5(tap_reg[14]),
        .O(popcount80_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[1][2]_i_2 
       (.I0(tap_reg[9]),
        .I1(tap_reg[10]),
        .I2(tap_reg[11]),
        .O(\grp_sum[1][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[1][3]_i_1 
       (.I0(\grp_sum[1][3]_i_2_n_0 ),
        .I1(\grp_sum[1][3]_i_3_n_0 ),
        .I2(tap_reg[11]),
        .I3(tap_reg[10]),
        .I4(tap_reg[9]),
        .I5(\grp_sum[1][3]_i_4_n_0 ),
        .O(popcount80_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[1][3]_i_2 
       (.I0(tap_reg[10]),
        .I1(tap_reg[9]),
        .I2(tap_reg[11]),
        .I3(tap_reg[8]),
        .I4(tap_reg[15]),
        .I5(\grp_sum[1][0]_i_2_n_0 ),
        .O(\grp_sum[1][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[1][3]_i_3 
       (.I0(tap_reg[15]),
        .I1(tap_reg[8]),
        .I2(tap_reg[13]),
        .I3(tap_reg[12]),
        .I4(tap_reg[14]),
        .O(\grp_sum[1][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[1][3]_i_4 
       (.I0(tap_reg[12]),
        .I1(tap_reg[13]),
        .I2(tap_reg[14]),
        .O(\grp_sum[1][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[20][0]_i_1 
       (.I0(tap_reg[160]),
        .I1(tap_reg[167]),
        .I2(\grp_sum[20][0]_i_2_n_0 ),
        .I3(tap_reg[162]),
        .I4(tap_reg[161]),
        .I5(tap_reg[163]),
        .O(popcount819_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[20][0]_i_2 
       (.I0(tap_reg[166]),
        .I1(tap_reg[164]),
        .I2(tap_reg[165]),
        .O(\grp_sum[20][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[20][1]_i_1 
       (.I0(\grp_sum[20][3]_i_2_n_0 ),
        .I1(\grp_sum[20][1]_i_2_n_0 ),
        .I2(\grp_sum[20][3]_i_3_n_0 ),
        .O(popcount819_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[20][1]_i_2 
       (.I0(tap_reg[163]),
        .I1(tap_reg[162]),
        .I2(tap_reg[161]),
        .I3(tap_reg[166]),
        .I4(tap_reg[165]),
        .I5(tap_reg[164]),
        .O(\grp_sum[20][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[20][2]_i_1 
       (.I0(\grp_sum[20][3]_i_2_n_0 ),
        .I1(\grp_sum[20][3]_i_3_n_0 ),
        .I2(\grp_sum[20][2]_i_2_n_0 ),
        .I3(tap_reg[164]),
        .I4(tap_reg[165]),
        .I5(tap_reg[166]),
        .O(popcount819_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[20][2]_i_2 
       (.I0(tap_reg[161]),
        .I1(tap_reg[162]),
        .I2(tap_reg[163]),
        .O(\grp_sum[20][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[20][3]_i_1 
       (.I0(\grp_sum[20][3]_i_2_n_0 ),
        .I1(\grp_sum[20][3]_i_3_n_0 ),
        .I2(tap_reg[163]),
        .I3(tap_reg[162]),
        .I4(tap_reg[161]),
        .I5(\grp_sum[20][3]_i_4_n_0 ),
        .O(popcount819_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[20][3]_i_2 
       (.I0(tap_reg[162]),
        .I1(tap_reg[161]),
        .I2(tap_reg[163]),
        .I3(tap_reg[160]),
        .I4(tap_reg[167]),
        .I5(\grp_sum[20][0]_i_2_n_0 ),
        .O(\grp_sum[20][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[20][3]_i_3 
       (.I0(tap_reg[167]),
        .I1(tap_reg[160]),
        .I2(tap_reg[165]),
        .I3(tap_reg[164]),
        .I4(tap_reg[166]),
        .O(\grp_sum[20][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[20][3]_i_4 
       (.I0(tap_reg[164]),
        .I1(tap_reg[165]),
        .I2(tap_reg[166]),
        .O(\grp_sum[20][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[21][0]_i_1 
       (.I0(tap_reg[168]),
        .I1(tap_reg[175]),
        .I2(\grp_sum[21][0]_i_2_n_0 ),
        .I3(tap_reg[170]),
        .I4(tap_reg[169]),
        .I5(tap_reg[171]),
        .O(popcount820_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[21][0]_i_2 
       (.I0(tap_reg[174]),
        .I1(tap_reg[172]),
        .I2(tap_reg[173]),
        .O(\grp_sum[21][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[21][1]_i_1 
       (.I0(\grp_sum[21][3]_i_2_n_0 ),
        .I1(\grp_sum[21][1]_i_2_n_0 ),
        .I2(\grp_sum[21][3]_i_3_n_0 ),
        .O(popcount820_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[21][1]_i_2 
       (.I0(tap_reg[171]),
        .I1(tap_reg[170]),
        .I2(tap_reg[169]),
        .I3(tap_reg[174]),
        .I4(tap_reg[173]),
        .I5(tap_reg[172]),
        .O(\grp_sum[21][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[21][2]_i_1 
       (.I0(\grp_sum[21][3]_i_2_n_0 ),
        .I1(\grp_sum[21][3]_i_3_n_0 ),
        .I2(\grp_sum[21][2]_i_2_n_0 ),
        .I3(tap_reg[172]),
        .I4(tap_reg[173]),
        .I5(tap_reg[174]),
        .O(popcount820_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[21][2]_i_2 
       (.I0(tap_reg[169]),
        .I1(tap_reg[170]),
        .I2(tap_reg[171]),
        .O(\grp_sum[21][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[21][3]_i_1 
       (.I0(\grp_sum[21][3]_i_2_n_0 ),
        .I1(\grp_sum[21][3]_i_3_n_0 ),
        .I2(tap_reg[171]),
        .I3(tap_reg[170]),
        .I4(tap_reg[169]),
        .I5(\grp_sum[21][3]_i_4_n_0 ),
        .O(popcount820_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[21][3]_i_2 
       (.I0(tap_reg[170]),
        .I1(tap_reg[169]),
        .I2(tap_reg[171]),
        .I3(tap_reg[168]),
        .I4(tap_reg[175]),
        .I5(\grp_sum[21][0]_i_2_n_0 ),
        .O(\grp_sum[21][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[21][3]_i_3 
       (.I0(tap_reg[175]),
        .I1(tap_reg[168]),
        .I2(tap_reg[173]),
        .I3(tap_reg[172]),
        .I4(tap_reg[174]),
        .O(\grp_sum[21][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[21][3]_i_4 
       (.I0(tap_reg[172]),
        .I1(tap_reg[173]),
        .I2(tap_reg[174]),
        .O(\grp_sum[21][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[22][0]_i_1 
       (.I0(tap_reg[176]),
        .I1(tap_reg[183]),
        .I2(\grp_sum[22][0]_i_2_n_0 ),
        .I3(tap_reg[178]),
        .I4(tap_reg[177]),
        .I5(tap_reg[179]),
        .O(popcount821_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[22][0]_i_2 
       (.I0(tap_reg[182]),
        .I1(tap_reg[180]),
        .I2(tap_reg[181]),
        .O(\grp_sum[22][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[22][1]_i_1 
       (.I0(\grp_sum[22][3]_i_2_n_0 ),
        .I1(\grp_sum[22][1]_i_2_n_0 ),
        .I2(\grp_sum[22][3]_i_3_n_0 ),
        .O(popcount821_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[22][1]_i_2 
       (.I0(tap_reg[179]),
        .I1(tap_reg[178]),
        .I2(tap_reg[177]),
        .I3(tap_reg[182]),
        .I4(tap_reg[181]),
        .I5(tap_reg[180]),
        .O(\grp_sum[22][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[22][2]_i_1 
       (.I0(\grp_sum[22][3]_i_2_n_0 ),
        .I1(\grp_sum[22][3]_i_3_n_0 ),
        .I2(\grp_sum[22][2]_i_2_n_0 ),
        .I3(tap_reg[180]),
        .I4(tap_reg[181]),
        .I5(tap_reg[182]),
        .O(popcount821_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[22][2]_i_2 
       (.I0(tap_reg[177]),
        .I1(tap_reg[178]),
        .I2(tap_reg[179]),
        .O(\grp_sum[22][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[22][3]_i_1 
       (.I0(\grp_sum[22][3]_i_2_n_0 ),
        .I1(\grp_sum[22][3]_i_3_n_0 ),
        .I2(tap_reg[179]),
        .I3(tap_reg[178]),
        .I4(tap_reg[177]),
        .I5(\grp_sum[22][3]_i_4_n_0 ),
        .O(popcount821_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[22][3]_i_2 
       (.I0(tap_reg[178]),
        .I1(tap_reg[177]),
        .I2(tap_reg[179]),
        .I3(tap_reg[176]),
        .I4(tap_reg[183]),
        .I5(\grp_sum[22][0]_i_2_n_0 ),
        .O(\grp_sum[22][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[22][3]_i_3 
       (.I0(tap_reg[183]),
        .I1(tap_reg[176]),
        .I2(tap_reg[181]),
        .I3(tap_reg[180]),
        .I4(tap_reg[182]),
        .O(\grp_sum[22][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[22][3]_i_4 
       (.I0(tap_reg[180]),
        .I1(tap_reg[181]),
        .I2(tap_reg[182]),
        .O(\grp_sum[22][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[23][0]_i_1 
       (.I0(tap_reg[184]),
        .I1(tap_reg[191]),
        .I2(\grp_sum[23][0]_i_2_n_0 ),
        .I3(tap_reg[186]),
        .I4(tap_reg[185]),
        .I5(tap_reg[187]),
        .O(popcount822_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[23][0]_i_2 
       (.I0(tap_reg[190]),
        .I1(tap_reg[188]),
        .I2(tap_reg[189]),
        .O(\grp_sum[23][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[23][1]_i_1 
       (.I0(\grp_sum[23][3]_i_2_n_0 ),
        .I1(\grp_sum[23][1]_i_2_n_0 ),
        .I2(\grp_sum[23][3]_i_3_n_0 ),
        .O(popcount822_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[23][1]_i_2 
       (.I0(tap_reg[187]),
        .I1(tap_reg[186]),
        .I2(tap_reg[185]),
        .I3(tap_reg[190]),
        .I4(tap_reg[189]),
        .I5(tap_reg[188]),
        .O(\grp_sum[23][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[23][2]_i_1 
       (.I0(\grp_sum[23][3]_i_2_n_0 ),
        .I1(\grp_sum[23][3]_i_3_n_0 ),
        .I2(\grp_sum[23][2]_i_2_n_0 ),
        .I3(tap_reg[188]),
        .I4(tap_reg[189]),
        .I5(tap_reg[190]),
        .O(popcount822_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[23][2]_i_2 
       (.I0(tap_reg[185]),
        .I1(tap_reg[186]),
        .I2(tap_reg[187]),
        .O(\grp_sum[23][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[23][3]_i_1 
       (.I0(\grp_sum[23][3]_i_2_n_0 ),
        .I1(\grp_sum[23][3]_i_3_n_0 ),
        .I2(tap_reg[187]),
        .I3(tap_reg[186]),
        .I4(tap_reg[185]),
        .I5(\grp_sum[23][3]_i_4_n_0 ),
        .O(popcount822_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[23][3]_i_2 
       (.I0(tap_reg[186]),
        .I1(tap_reg[185]),
        .I2(tap_reg[187]),
        .I3(tap_reg[184]),
        .I4(tap_reg[191]),
        .I5(\grp_sum[23][0]_i_2_n_0 ),
        .O(\grp_sum[23][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[23][3]_i_3 
       (.I0(tap_reg[191]),
        .I1(tap_reg[184]),
        .I2(tap_reg[189]),
        .I3(tap_reg[188]),
        .I4(tap_reg[190]),
        .O(\grp_sum[23][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[23][3]_i_4 
       (.I0(tap_reg[188]),
        .I1(tap_reg[189]),
        .I2(tap_reg[190]),
        .O(\grp_sum[23][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[24][0]_i_1 
       (.I0(tap_reg[192]),
        .I1(tap_reg[199]),
        .I2(\grp_sum[24][0]_i_2_n_0 ),
        .I3(tap_reg[194]),
        .I4(tap_reg[193]),
        .I5(tap_reg[195]),
        .O(popcount823_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[24][0]_i_2 
       (.I0(tap_reg[198]),
        .I1(tap_reg[196]),
        .I2(tap_reg[197]),
        .O(\grp_sum[24][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[24][1]_i_1 
       (.I0(\grp_sum[24][3]_i_2_n_0 ),
        .I1(\grp_sum[24][1]_i_2_n_0 ),
        .I2(\grp_sum[24][3]_i_3_n_0 ),
        .O(popcount823_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[24][1]_i_2 
       (.I0(tap_reg[195]),
        .I1(tap_reg[194]),
        .I2(tap_reg[193]),
        .I3(tap_reg[198]),
        .I4(tap_reg[197]),
        .I5(tap_reg[196]),
        .O(\grp_sum[24][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[24][2]_i_1 
       (.I0(\grp_sum[24][3]_i_2_n_0 ),
        .I1(\grp_sum[24][3]_i_3_n_0 ),
        .I2(\grp_sum[24][2]_i_2_n_0 ),
        .I3(tap_reg[196]),
        .I4(tap_reg[197]),
        .I5(tap_reg[198]),
        .O(popcount823_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[24][2]_i_2 
       (.I0(tap_reg[193]),
        .I1(tap_reg[194]),
        .I2(tap_reg[195]),
        .O(\grp_sum[24][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[24][3]_i_1 
       (.I0(\grp_sum[24][3]_i_2_n_0 ),
        .I1(\grp_sum[24][3]_i_3_n_0 ),
        .I2(tap_reg[195]),
        .I3(tap_reg[194]),
        .I4(tap_reg[193]),
        .I5(\grp_sum[24][3]_i_4_n_0 ),
        .O(popcount823_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[24][3]_i_2 
       (.I0(tap_reg[194]),
        .I1(tap_reg[193]),
        .I2(tap_reg[195]),
        .I3(tap_reg[192]),
        .I4(tap_reg[199]),
        .I5(\grp_sum[24][0]_i_2_n_0 ),
        .O(\grp_sum[24][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[24][3]_i_3 
       (.I0(tap_reg[199]),
        .I1(tap_reg[192]),
        .I2(tap_reg[197]),
        .I3(tap_reg[196]),
        .I4(tap_reg[198]),
        .O(\grp_sum[24][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[24][3]_i_4 
       (.I0(tap_reg[196]),
        .I1(tap_reg[197]),
        .I2(tap_reg[198]),
        .O(\grp_sum[24][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[25][0]_i_1 
       (.I0(tap_reg[200]),
        .I1(tap_reg[207]),
        .I2(\grp_sum[25][0]_i_2_n_0 ),
        .I3(tap_reg[202]),
        .I4(tap_reg[201]),
        .I5(tap_reg[203]),
        .O(popcount824_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[25][0]_i_2 
       (.I0(tap_reg[206]),
        .I1(tap_reg[204]),
        .I2(tap_reg[205]),
        .O(\grp_sum[25][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[25][1]_i_1 
       (.I0(\grp_sum[25][3]_i_2_n_0 ),
        .I1(\grp_sum[25][1]_i_2_n_0 ),
        .I2(\grp_sum[25][3]_i_3_n_0 ),
        .O(popcount824_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[25][1]_i_2 
       (.I0(tap_reg[203]),
        .I1(tap_reg[202]),
        .I2(tap_reg[201]),
        .I3(tap_reg[206]),
        .I4(tap_reg[205]),
        .I5(tap_reg[204]),
        .O(\grp_sum[25][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[25][2]_i_1 
       (.I0(\grp_sum[25][3]_i_2_n_0 ),
        .I1(\grp_sum[25][3]_i_3_n_0 ),
        .I2(\grp_sum[25][2]_i_2_n_0 ),
        .I3(tap_reg[204]),
        .I4(tap_reg[205]),
        .I5(tap_reg[206]),
        .O(popcount824_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[25][2]_i_2 
       (.I0(tap_reg[201]),
        .I1(tap_reg[202]),
        .I2(tap_reg[203]),
        .O(\grp_sum[25][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[25][3]_i_1 
       (.I0(\grp_sum[25][3]_i_2_n_0 ),
        .I1(\grp_sum[25][3]_i_3_n_0 ),
        .I2(tap_reg[203]),
        .I3(tap_reg[202]),
        .I4(tap_reg[201]),
        .I5(\grp_sum[25][3]_i_4_n_0 ),
        .O(popcount824_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[25][3]_i_2 
       (.I0(tap_reg[202]),
        .I1(tap_reg[201]),
        .I2(tap_reg[203]),
        .I3(tap_reg[200]),
        .I4(tap_reg[207]),
        .I5(\grp_sum[25][0]_i_2_n_0 ),
        .O(\grp_sum[25][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[25][3]_i_3 
       (.I0(tap_reg[207]),
        .I1(tap_reg[200]),
        .I2(tap_reg[205]),
        .I3(tap_reg[204]),
        .I4(tap_reg[206]),
        .O(\grp_sum[25][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[25][3]_i_4 
       (.I0(tap_reg[204]),
        .I1(tap_reg[205]),
        .I2(tap_reg[206]),
        .O(\grp_sum[25][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[26][0]_i_1 
       (.I0(tap_reg[208]),
        .I1(tap_reg[215]),
        .I2(\grp_sum[26][0]_i_2_n_0 ),
        .I3(tap_reg[210]),
        .I4(tap_reg[209]),
        .I5(tap_reg[211]),
        .O(popcount825_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[26][0]_i_2 
       (.I0(tap_reg[214]),
        .I1(tap_reg[212]),
        .I2(tap_reg[213]),
        .O(\grp_sum[26][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[26][1]_i_1 
       (.I0(\grp_sum[26][3]_i_2_n_0 ),
        .I1(\grp_sum[26][1]_i_2_n_0 ),
        .I2(\grp_sum[26][3]_i_3_n_0 ),
        .O(popcount825_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[26][1]_i_2 
       (.I0(tap_reg[211]),
        .I1(tap_reg[210]),
        .I2(tap_reg[209]),
        .I3(tap_reg[214]),
        .I4(tap_reg[213]),
        .I5(tap_reg[212]),
        .O(\grp_sum[26][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[26][2]_i_1 
       (.I0(\grp_sum[26][3]_i_2_n_0 ),
        .I1(\grp_sum[26][3]_i_3_n_0 ),
        .I2(\grp_sum[26][2]_i_2_n_0 ),
        .I3(tap_reg[212]),
        .I4(tap_reg[213]),
        .I5(tap_reg[214]),
        .O(popcount825_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[26][2]_i_2 
       (.I0(tap_reg[209]),
        .I1(tap_reg[210]),
        .I2(tap_reg[211]),
        .O(\grp_sum[26][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[26][3]_i_1 
       (.I0(\grp_sum[26][3]_i_2_n_0 ),
        .I1(\grp_sum[26][3]_i_3_n_0 ),
        .I2(tap_reg[211]),
        .I3(tap_reg[210]),
        .I4(tap_reg[209]),
        .I5(\grp_sum[26][3]_i_4_n_0 ),
        .O(popcount825_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[26][3]_i_2 
       (.I0(tap_reg[210]),
        .I1(tap_reg[209]),
        .I2(tap_reg[211]),
        .I3(tap_reg[208]),
        .I4(tap_reg[215]),
        .I5(\grp_sum[26][0]_i_2_n_0 ),
        .O(\grp_sum[26][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[26][3]_i_3 
       (.I0(tap_reg[215]),
        .I1(tap_reg[208]),
        .I2(tap_reg[213]),
        .I3(tap_reg[212]),
        .I4(tap_reg[214]),
        .O(\grp_sum[26][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[26][3]_i_4 
       (.I0(tap_reg[212]),
        .I1(tap_reg[213]),
        .I2(tap_reg[214]),
        .O(\grp_sum[26][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[27][0]_i_1 
       (.I0(tap_reg[216]),
        .I1(tap_reg[223]),
        .I2(\grp_sum[27][0]_i_2_n_0 ),
        .I3(tap_reg[218]),
        .I4(tap_reg[217]),
        .I5(tap_reg[219]),
        .O(popcount826_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[27][0]_i_2 
       (.I0(tap_reg[222]),
        .I1(tap_reg[220]),
        .I2(tap_reg[221]),
        .O(\grp_sum[27][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[27][1]_i_1 
       (.I0(\grp_sum[27][3]_i_2_n_0 ),
        .I1(\grp_sum[27][1]_i_2_n_0 ),
        .I2(\grp_sum[27][3]_i_3_n_0 ),
        .O(popcount826_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[27][1]_i_2 
       (.I0(tap_reg[219]),
        .I1(tap_reg[218]),
        .I2(tap_reg[217]),
        .I3(tap_reg[222]),
        .I4(tap_reg[221]),
        .I5(tap_reg[220]),
        .O(\grp_sum[27][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[27][2]_i_1 
       (.I0(\grp_sum[27][3]_i_2_n_0 ),
        .I1(\grp_sum[27][3]_i_3_n_0 ),
        .I2(\grp_sum[27][2]_i_2_n_0 ),
        .I3(tap_reg[220]),
        .I4(tap_reg[221]),
        .I5(tap_reg[222]),
        .O(popcount826_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[27][2]_i_2 
       (.I0(tap_reg[217]),
        .I1(tap_reg[218]),
        .I2(tap_reg[219]),
        .O(\grp_sum[27][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[27][3]_i_1 
       (.I0(\grp_sum[27][3]_i_2_n_0 ),
        .I1(\grp_sum[27][3]_i_3_n_0 ),
        .I2(tap_reg[219]),
        .I3(tap_reg[218]),
        .I4(tap_reg[217]),
        .I5(\grp_sum[27][3]_i_4_n_0 ),
        .O(popcount826_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[27][3]_i_2 
       (.I0(tap_reg[218]),
        .I1(tap_reg[217]),
        .I2(tap_reg[219]),
        .I3(tap_reg[216]),
        .I4(tap_reg[223]),
        .I5(\grp_sum[27][0]_i_2_n_0 ),
        .O(\grp_sum[27][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[27][3]_i_3 
       (.I0(tap_reg[223]),
        .I1(tap_reg[216]),
        .I2(tap_reg[221]),
        .I3(tap_reg[220]),
        .I4(tap_reg[222]),
        .O(\grp_sum[27][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[27][3]_i_4 
       (.I0(tap_reg[220]),
        .I1(tap_reg[221]),
        .I2(tap_reg[222]),
        .O(\grp_sum[27][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[28][0]_i_1 
       (.I0(tap_reg[224]),
        .I1(tap_reg[231]),
        .I2(\grp_sum[28][0]_i_2_n_0 ),
        .I3(tap_reg[226]),
        .I4(tap_reg[225]),
        .I5(tap_reg[227]),
        .O(popcount827_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[28][0]_i_2 
       (.I0(tap_reg[230]),
        .I1(tap_reg[228]),
        .I2(tap_reg[229]),
        .O(\grp_sum[28][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[28][1]_i_1 
       (.I0(\grp_sum[28][3]_i_2_n_0 ),
        .I1(\grp_sum[28][1]_i_2_n_0 ),
        .I2(\grp_sum[28][3]_i_3_n_0 ),
        .O(popcount827_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[28][1]_i_2 
       (.I0(tap_reg[227]),
        .I1(tap_reg[226]),
        .I2(tap_reg[225]),
        .I3(tap_reg[230]),
        .I4(tap_reg[229]),
        .I5(tap_reg[228]),
        .O(\grp_sum[28][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[28][2]_i_1 
       (.I0(\grp_sum[28][3]_i_2_n_0 ),
        .I1(\grp_sum[28][3]_i_3_n_0 ),
        .I2(\grp_sum[28][2]_i_2_n_0 ),
        .I3(tap_reg[228]),
        .I4(tap_reg[229]),
        .I5(tap_reg[230]),
        .O(popcount827_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[28][2]_i_2 
       (.I0(tap_reg[225]),
        .I1(tap_reg[226]),
        .I2(tap_reg[227]),
        .O(\grp_sum[28][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[28][3]_i_1 
       (.I0(\grp_sum[28][3]_i_2_n_0 ),
        .I1(\grp_sum[28][3]_i_3_n_0 ),
        .I2(tap_reg[227]),
        .I3(tap_reg[226]),
        .I4(tap_reg[225]),
        .I5(\grp_sum[28][3]_i_4_n_0 ),
        .O(popcount827_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[28][3]_i_2 
       (.I0(tap_reg[226]),
        .I1(tap_reg[225]),
        .I2(tap_reg[227]),
        .I3(tap_reg[224]),
        .I4(tap_reg[231]),
        .I5(\grp_sum[28][0]_i_2_n_0 ),
        .O(\grp_sum[28][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[28][3]_i_3 
       (.I0(tap_reg[231]),
        .I1(tap_reg[224]),
        .I2(tap_reg[229]),
        .I3(tap_reg[228]),
        .I4(tap_reg[230]),
        .O(\grp_sum[28][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[28][3]_i_4 
       (.I0(tap_reg[228]),
        .I1(tap_reg[229]),
        .I2(tap_reg[230]),
        .O(\grp_sum[28][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[29][0]_i_1 
       (.I0(tap_reg[232]),
        .I1(tap_reg[239]),
        .I2(\grp_sum[29][0]_i_2_n_0 ),
        .I3(tap_reg[234]),
        .I4(tap_reg[233]),
        .I5(tap_reg[235]),
        .O(popcount828_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[29][0]_i_2 
       (.I0(tap_reg[238]),
        .I1(tap_reg[236]),
        .I2(tap_reg[237]),
        .O(\grp_sum[29][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[29][1]_i_1 
       (.I0(\grp_sum[29][3]_i_2_n_0 ),
        .I1(\grp_sum[29][1]_i_2_n_0 ),
        .I2(\grp_sum[29][3]_i_3_n_0 ),
        .O(popcount828_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[29][1]_i_2 
       (.I0(tap_reg[235]),
        .I1(tap_reg[234]),
        .I2(tap_reg[233]),
        .I3(tap_reg[238]),
        .I4(tap_reg[237]),
        .I5(tap_reg[236]),
        .O(\grp_sum[29][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[29][2]_i_1 
       (.I0(\grp_sum[29][3]_i_2_n_0 ),
        .I1(\grp_sum[29][3]_i_3_n_0 ),
        .I2(\grp_sum[29][2]_i_2_n_0 ),
        .I3(tap_reg[236]),
        .I4(tap_reg[237]),
        .I5(tap_reg[238]),
        .O(popcount828_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[29][2]_i_2 
       (.I0(tap_reg[233]),
        .I1(tap_reg[234]),
        .I2(tap_reg[235]),
        .O(\grp_sum[29][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[29][3]_i_1 
       (.I0(\grp_sum[29][3]_i_2_n_0 ),
        .I1(\grp_sum[29][3]_i_3_n_0 ),
        .I2(tap_reg[235]),
        .I3(tap_reg[234]),
        .I4(tap_reg[233]),
        .I5(\grp_sum[29][3]_i_4_n_0 ),
        .O(popcount828_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[29][3]_i_2 
       (.I0(tap_reg[234]),
        .I1(tap_reg[233]),
        .I2(tap_reg[235]),
        .I3(tap_reg[232]),
        .I4(tap_reg[239]),
        .I5(\grp_sum[29][0]_i_2_n_0 ),
        .O(\grp_sum[29][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[29][3]_i_3 
       (.I0(tap_reg[239]),
        .I1(tap_reg[232]),
        .I2(tap_reg[237]),
        .I3(tap_reg[236]),
        .I4(tap_reg[238]),
        .O(\grp_sum[29][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[29][3]_i_4 
       (.I0(tap_reg[236]),
        .I1(tap_reg[237]),
        .I2(tap_reg[238]),
        .O(\grp_sum[29][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[2][0]_i_1 
       (.I0(tap_reg[16]),
        .I1(tap_reg[23]),
        .I2(\grp_sum[2][0]_i_2_n_0 ),
        .I3(tap_reg[18]),
        .I4(tap_reg[17]),
        .I5(tap_reg[19]),
        .O(popcount81_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
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
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[2][2]_i_1 
       (.I0(\grp_sum[2][3]_i_2_n_0 ),
        .I1(\grp_sum[2][3]_i_3_n_0 ),
        .I2(\grp_sum[2][2]_i_2_n_0 ),
        .I3(tap_reg[20]),
        .I4(tap_reg[21]),
        .I5(tap_reg[22]),
        .O(popcount81_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[2][2]_i_2 
       (.I0(tap_reg[17]),
        .I1(tap_reg[18]),
        .I2(tap_reg[19]),
        .O(\grp_sum[2][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[2][3]_i_1 
       (.I0(\grp_sum[2][3]_i_2_n_0 ),
        .I1(\grp_sum[2][3]_i_3_n_0 ),
        .I2(tap_reg[19]),
        .I3(tap_reg[18]),
        .I4(tap_reg[17]),
        .I5(\grp_sum[2][3]_i_4_n_0 ),
        .O(popcount81_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[2][3]_i_2 
       (.I0(tap_reg[18]),
        .I1(tap_reg[17]),
        .I2(tap_reg[19]),
        .I3(tap_reg[16]),
        .I4(tap_reg[23]),
        .I5(\grp_sum[2][0]_i_2_n_0 ),
        .O(\grp_sum[2][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[2][3]_i_3 
       (.I0(tap_reg[23]),
        .I1(tap_reg[16]),
        .I2(tap_reg[21]),
        .I3(tap_reg[20]),
        .I4(tap_reg[22]),
        .O(\grp_sum[2][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[2][3]_i_4 
       (.I0(tap_reg[20]),
        .I1(tap_reg[21]),
        .I2(tap_reg[22]),
        .O(\grp_sum[2][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[30][0]_i_1 
       (.I0(tap_reg[240]),
        .I1(tap_reg[247]),
        .I2(\grp_sum[30][0]_i_2_n_0 ),
        .I3(tap_reg[242]),
        .I4(tap_reg[241]),
        .I5(tap_reg[243]),
        .O(popcount829_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[30][0]_i_2 
       (.I0(tap_reg[246]),
        .I1(tap_reg[244]),
        .I2(tap_reg[245]),
        .O(\grp_sum[30][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[30][1]_i_1 
       (.I0(\grp_sum[30][3]_i_2_n_0 ),
        .I1(\grp_sum[30][1]_i_2_n_0 ),
        .I2(\grp_sum[30][3]_i_3_n_0 ),
        .O(popcount829_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[30][1]_i_2 
       (.I0(tap_reg[243]),
        .I1(tap_reg[242]),
        .I2(tap_reg[241]),
        .I3(tap_reg[246]),
        .I4(tap_reg[245]),
        .I5(tap_reg[244]),
        .O(\grp_sum[30][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[30][2]_i_1 
       (.I0(\grp_sum[30][3]_i_2_n_0 ),
        .I1(\grp_sum[30][3]_i_3_n_0 ),
        .I2(\grp_sum[30][2]_i_2_n_0 ),
        .I3(tap_reg[244]),
        .I4(tap_reg[245]),
        .I5(tap_reg[246]),
        .O(popcount829_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[30][2]_i_2 
       (.I0(tap_reg[241]),
        .I1(tap_reg[242]),
        .I2(tap_reg[243]),
        .O(\grp_sum[30][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[30][3]_i_1 
       (.I0(\grp_sum[30][3]_i_2_n_0 ),
        .I1(\grp_sum[30][3]_i_3_n_0 ),
        .I2(tap_reg[243]),
        .I3(tap_reg[242]),
        .I4(tap_reg[241]),
        .I5(\grp_sum[30][3]_i_4_n_0 ),
        .O(popcount829_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[30][3]_i_2 
       (.I0(tap_reg[242]),
        .I1(tap_reg[241]),
        .I2(tap_reg[243]),
        .I3(tap_reg[240]),
        .I4(tap_reg[247]),
        .I5(\grp_sum[30][0]_i_2_n_0 ),
        .O(\grp_sum[30][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[30][3]_i_3 
       (.I0(tap_reg[247]),
        .I1(tap_reg[240]),
        .I2(tap_reg[245]),
        .I3(tap_reg[244]),
        .I4(tap_reg[246]),
        .O(\grp_sum[30][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[30][3]_i_4 
       (.I0(tap_reg[244]),
        .I1(tap_reg[245]),
        .I2(tap_reg[246]),
        .O(\grp_sum[30][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[31][0]_i_1 
       (.I0(tap_reg[248]),
        .I1(tap_reg[255]),
        .I2(\grp_sum[31][0]_i_2_n_0 ),
        .I3(tap_reg[250]),
        .I4(tap_reg[249]),
        .I5(tap_reg[251]),
        .O(popcount830_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[31][0]_i_2 
       (.I0(tap_reg[254]),
        .I1(tap_reg[252]),
        .I2(tap_reg[253]),
        .O(\grp_sum[31][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[31][1]_i_1 
       (.I0(\grp_sum[31][3]_i_2_n_0 ),
        .I1(\grp_sum[31][1]_i_2_n_0 ),
        .I2(\grp_sum[31][3]_i_3_n_0 ),
        .O(popcount830_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[31][1]_i_2 
       (.I0(tap_reg[251]),
        .I1(tap_reg[250]),
        .I2(tap_reg[249]),
        .I3(tap_reg[254]),
        .I4(tap_reg[253]),
        .I5(tap_reg[252]),
        .O(\grp_sum[31][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[31][2]_i_1 
       (.I0(\grp_sum[31][3]_i_2_n_0 ),
        .I1(\grp_sum[31][3]_i_3_n_0 ),
        .I2(\grp_sum[31][2]_i_2_n_0 ),
        .I3(tap_reg[252]),
        .I4(tap_reg[253]),
        .I5(tap_reg[254]),
        .O(popcount830_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[31][2]_i_2 
       (.I0(tap_reg[249]),
        .I1(tap_reg[250]),
        .I2(tap_reg[251]),
        .O(\grp_sum[31][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[31][3]_i_1 
       (.I0(\grp_sum[31][3]_i_2_n_0 ),
        .I1(\grp_sum[31][3]_i_3_n_0 ),
        .I2(tap_reg[251]),
        .I3(tap_reg[250]),
        .I4(tap_reg[249]),
        .I5(\grp_sum[31][3]_i_4_n_0 ),
        .O(popcount830_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[31][3]_i_2 
       (.I0(tap_reg[250]),
        .I1(tap_reg[249]),
        .I2(tap_reg[251]),
        .I3(tap_reg[248]),
        .I4(tap_reg[255]),
        .I5(\grp_sum[31][0]_i_2_n_0 ),
        .O(\grp_sum[31][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[31][3]_i_3 
       (.I0(tap_reg[255]),
        .I1(tap_reg[248]),
        .I2(tap_reg[253]),
        .I3(tap_reg[252]),
        .I4(tap_reg[254]),
        .O(\grp_sum[31][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[31][3]_i_4 
       (.I0(tap_reg[252]),
        .I1(tap_reg[253]),
        .I2(tap_reg[254]),
        .O(\grp_sum[31][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[3][0]_i_1 
       (.I0(tap_reg[24]),
        .I1(tap_reg[31]),
        .I2(\grp_sum[3][0]_i_2_n_0 ),
        .I3(tap_reg[26]),
        .I4(tap_reg[25]),
        .I5(tap_reg[27]),
        .O(popcount82_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
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
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[3][2]_i_1 
       (.I0(\grp_sum[3][3]_i_2_n_0 ),
        .I1(\grp_sum[3][3]_i_3_n_0 ),
        .I2(\grp_sum[3][2]_i_2_n_0 ),
        .I3(tap_reg[28]),
        .I4(tap_reg[29]),
        .I5(tap_reg[30]),
        .O(popcount82_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[3][2]_i_2 
       (.I0(tap_reg[25]),
        .I1(tap_reg[26]),
        .I2(tap_reg[27]),
        .O(\grp_sum[3][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[3][3]_i_1 
       (.I0(\grp_sum[3][3]_i_2_n_0 ),
        .I1(\grp_sum[3][3]_i_3_n_0 ),
        .I2(tap_reg[27]),
        .I3(tap_reg[26]),
        .I4(tap_reg[25]),
        .I5(\grp_sum[3][3]_i_4_n_0 ),
        .O(popcount82_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[3][3]_i_2 
       (.I0(tap_reg[26]),
        .I1(tap_reg[25]),
        .I2(tap_reg[27]),
        .I3(tap_reg[24]),
        .I4(tap_reg[31]),
        .I5(\grp_sum[3][0]_i_2_n_0 ),
        .O(\grp_sum[3][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[3][3]_i_3 
       (.I0(tap_reg[31]),
        .I1(tap_reg[24]),
        .I2(tap_reg[29]),
        .I3(tap_reg[28]),
        .I4(tap_reg[30]),
        .O(\grp_sum[3][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[3][3]_i_4 
       (.I0(tap_reg[28]),
        .I1(tap_reg[29]),
        .I2(tap_reg[30]),
        .O(\grp_sum[3][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[4][0]_i_1 
       (.I0(tap_reg[32]),
        .I1(tap_reg[39]),
        .I2(\grp_sum[4][0]_i_2_n_0 ),
        .I3(tap_reg[34]),
        .I4(tap_reg[33]),
        .I5(tap_reg[35]),
        .O(popcount83_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
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
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[4][2]_i_1 
       (.I0(\grp_sum[4][3]_i_2_n_0 ),
        .I1(\grp_sum[4][3]_i_3_n_0 ),
        .I2(\grp_sum[4][2]_i_2_n_0 ),
        .I3(tap_reg[36]),
        .I4(tap_reg[37]),
        .I5(tap_reg[38]),
        .O(popcount83_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[4][2]_i_2 
       (.I0(tap_reg[33]),
        .I1(tap_reg[34]),
        .I2(tap_reg[35]),
        .O(\grp_sum[4][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[4][3]_i_1 
       (.I0(\grp_sum[4][3]_i_2_n_0 ),
        .I1(\grp_sum[4][3]_i_3_n_0 ),
        .I2(tap_reg[35]),
        .I3(tap_reg[34]),
        .I4(tap_reg[33]),
        .I5(\grp_sum[4][3]_i_4_n_0 ),
        .O(popcount83_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[4][3]_i_2 
       (.I0(tap_reg[34]),
        .I1(tap_reg[33]),
        .I2(tap_reg[35]),
        .I3(tap_reg[32]),
        .I4(tap_reg[39]),
        .I5(\grp_sum[4][0]_i_2_n_0 ),
        .O(\grp_sum[4][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[4][3]_i_3 
       (.I0(tap_reg[39]),
        .I1(tap_reg[32]),
        .I2(tap_reg[37]),
        .I3(tap_reg[36]),
        .I4(tap_reg[38]),
        .O(\grp_sum[4][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[4][3]_i_4 
       (.I0(tap_reg[36]),
        .I1(tap_reg[37]),
        .I2(tap_reg[38]),
        .O(\grp_sum[4][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[5][0]_i_1 
       (.I0(tap_reg[40]),
        .I1(tap_reg[47]),
        .I2(\grp_sum[5][0]_i_2_n_0 ),
        .I3(tap_reg[42]),
        .I4(tap_reg[41]),
        .I5(tap_reg[43]),
        .O(popcount84_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
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
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[5][2]_i_1 
       (.I0(\grp_sum[5][3]_i_2_n_0 ),
        .I1(\grp_sum[5][3]_i_3_n_0 ),
        .I2(\grp_sum[5][2]_i_2_n_0 ),
        .I3(tap_reg[44]),
        .I4(tap_reg[45]),
        .I5(tap_reg[46]),
        .O(popcount84_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[5][2]_i_2 
       (.I0(tap_reg[41]),
        .I1(tap_reg[42]),
        .I2(tap_reg[43]),
        .O(\grp_sum[5][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[5][3]_i_1 
       (.I0(\grp_sum[5][3]_i_2_n_0 ),
        .I1(\grp_sum[5][3]_i_3_n_0 ),
        .I2(tap_reg[43]),
        .I3(tap_reg[42]),
        .I4(tap_reg[41]),
        .I5(\grp_sum[5][3]_i_4_n_0 ),
        .O(popcount84_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[5][3]_i_2 
       (.I0(tap_reg[42]),
        .I1(tap_reg[41]),
        .I2(tap_reg[43]),
        .I3(tap_reg[40]),
        .I4(tap_reg[47]),
        .I5(\grp_sum[5][0]_i_2_n_0 ),
        .O(\grp_sum[5][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[5][3]_i_3 
       (.I0(tap_reg[47]),
        .I1(tap_reg[40]),
        .I2(tap_reg[45]),
        .I3(tap_reg[44]),
        .I4(tap_reg[46]),
        .O(\grp_sum[5][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[5][3]_i_4 
       (.I0(tap_reg[44]),
        .I1(tap_reg[45]),
        .I2(tap_reg[46]),
        .O(\grp_sum[5][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[6][0]_i_1 
       (.I0(tap_reg[48]),
        .I1(tap_reg[55]),
        .I2(\grp_sum[6][0]_i_2_n_0 ),
        .I3(tap_reg[50]),
        .I4(tap_reg[49]),
        .I5(tap_reg[51]),
        .O(popcount85_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
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
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[6][2]_i_1 
       (.I0(\grp_sum[6][3]_i_2_n_0 ),
        .I1(\grp_sum[6][3]_i_3_n_0 ),
        .I2(\grp_sum[6][2]_i_2_n_0 ),
        .I3(tap_reg[52]),
        .I4(tap_reg[53]),
        .I5(tap_reg[54]),
        .O(popcount85_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[6][2]_i_2 
       (.I0(tap_reg[49]),
        .I1(tap_reg[50]),
        .I2(tap_reg[51]),
        .O(\grp_sum[6][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[6][3]_i_1 
       (.I0(\grp_sum[6][3]_i_2_n_0 ),
        .I1(\grp_sum[6][3]_i_3_n_0 ),
        .I2(tap_reg[51]),
        .I3(tap_reg[50]),
        .I4(tap_reg[49]),
        .I5(\grp_sum[6][3]_i_4_n_0 ),
        .O(popcount85_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[6][3]_i_2 
       (.I0(tap_reg[50]),
        .I1(tap_reg[49]),
        .I2(tap_reg[51]),
        .I3(tap_reg[48]),
        .I4(tap_reg[55]),
        .I5(\grp_sum[6][0]_i_2_n_0 ),
        .O(\grp_sum[6][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[6][3]_i_3 
       (.I0(tap_reg[55]),
        .I1(tap_reg[48]),
        .I2(tap_reg[53]),
        .I3(tap_reg[52]),
        .I4(tap_reg[54]),
        .O(\grp_sum[6][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[6][3]_i_4 
       (.I0(tap_reg[52]),
        .I1(tap_reg[53]),
        .I2(tap_reg[54]),
        .O(\grp_sum[6][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[7][0]_i_1 
       (.I0(tap_reg[56]),
        .I1(tap_reg[63]),
        .I2(\grp_sum[7][0]_i_2_n_0 ),
        .I3(tap_reg[58]),
        .I4(tap_reg[57]),
        .I5(tap_reg[59]),
        .O(popcount86_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
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
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[7][2]_i_1 
       (.I0(\grp_sum[7][3]_i_2_n_0 ),
        .I1(\grp_sum[7][3]_i_3_n_0 ),
        .I2(\grp_sum[7][2]_i_2_n_0 ),
        .I3(tap_reg[60]),
        .I4(tap_reg[61]),
        .I5(tap_reg[62]),
        .O(popcount86_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[7][2]_i_2 
       (.I0(tap_reg[57]),
        .I1(tap_reg[58]),
        .I2(tap_reg[59]),
        .O(\grp_sum[7][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[7][3]_i_1 
       (.I0(\grp_sum[7][3]_i_2_n_0 ),
        .I1(\grp_sum[7][3]_i_3_n_0 ),
        .I2(tap_reg[59]),
        .I3(tap_reg[58]),
        .I4(tap_reg[57]),
        .I5(\grp_sum[7][3]_i_4_n_0 ),
        .O(popcount86_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[7][3]_i_2 
       (.I0(tap_reg[58]),
        .I1(tap_reg[57]),
        .I2(tap_reg[59]),
        .I3(tap_reg[56]),
        .I4(tap_reg[63]),
        .I5(\grp_sum[7][0]_i_2_n_0 ),
        .O(\grp_sum[7][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[7][3]_i_3 
       (.I0(tap_reg[63]),
        .I1(tap_reg[56]),
        .I2(tap_reg[61]),
        .I3(tap_reg[60]),
        .I4(tap_reg[62]),
        .O(\grp_sum[7][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[7][3]_i_4 
       (.I0(tap_reg[60]),
        .I1(tap_reg[61]),
        .I2(tap_reg[62]),
        .O(\grp_sum[7][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[8][0]_i_1 
       (.I0(tap_reg[64]),
        .I1(tap_reg[71]),
        .I2(\grp_sum[8][0]_i_2_n_0 ),
        .I3(tap_reg[66]),
        .I4(tap_reg[65]),
        .I5(tap_reg[67]),
        .O(popcount87_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[8][0]_i_2 
       (.I0(tap_reg[70]),
        .I1(tap_reg[68]),
        .I2(tap_reg[69]),
        .O(\grp_sum[8][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[8][1]_i_1 
       (.I0(\grp_sum[8][3]_i_2_n_0 ),
        .I1(\grp_sum[8][1]_i_2_n_0 ),
        .I2(\grp_sum[8][3]_i_3_n_0 ),
        .O(popcount87_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[8][1]_i_2 
       (.I0(tap_reg[67]),
        .I1(tap_reg[66]),
        .I2(tap_reg[65]),
        .I3(tap_reg[70]),
        .I4(tap_reg[69]),
        .I5(tap_reg[68]),
        .O(\grp_sum[8][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[8][2]_i_1 
       (.I0(\grp_sum[8][3]_i_2_n_0 ),
        .I1(\grp_sum[8][3]_i_3_n_0 ),
        .I2(\grp_sum[8][2]_i_2_n_0 ),
        .I3(tap_reg[68]),
        .I4(tap_reg[69]),
        .I5(tap_reg[70]),
        .O(popcount87_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[8][2]_i_2 
       (.I0(tap_reg[65]),
        .I1(tap_reg[66]),
        .I2(tap_reg[67]),
        .O(\grp_sum[8][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[8][3]_i_1 
       (.I0(\grp_sum[8][3]_i_2_n_0 ),
        .I1(\grp_sum[8][3]_i_3_n_0 ),
        .I2(tap_reg[67]),
        .I3(tap_reg[66]),
        .I4(tap_reg[65]),
        .I5(\grp_sum[8][3]_i_4_n_0 ),
        .O(popcount87_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[8][3]_i_2 
       (.I0(tap_reg[66]),
        .I1(tap_reg[65]),
        .I2(tap_reg[67]),
        .I3(tap_reg[64]),
        .I4(tap_reg[71]),
        .I5(\grp_sum[8][0]_i_2_n_0 ),
        .O(\grp_sum[8][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[8][3]_i_3 
       (.I0(tap_reg[71]),
        .I1(tap_reg[64]),
        .I2(tap_reg[69]),
        .I3(tap_reg[68]),
        .I4(tap_reg[70]),
        .O(\grp_sum[8][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[8][3]_i_4 
       (.I0(tap_reg[68]),
        .I1(tap_reg[69]),
        .I2(tap_reg[70]),
        .O(\grp_sum[8][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \grp_sum[9][0]_i_1 
       (.I0(tap_reg[72]),
        .I1(tap_reg[79]),
        .I2(\grp_sum[9][0]_i_2_n_0 ),
        .I3(tap_reg[74]),
        .I4(tap_reg[73]),
        .I5(tap_reg[75]),
        .O(popcount88_return[0]));
  LUT3 #(
    .INIT(8'h69)) 
    \grp_sum[9][0]_i_2 
       (.I0(tap_reg[78]),
        .I1(tap_reg[76]),
        .I2(tap_reg[77]),
        .O(\grp_sum[9][0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \grp_sum[9][1]_i_1 
       (.I0(\grp_sum[9][3]_i_2_n_0 ),
        .I1(\grp_sum[9][1]_i_2_n_0 ),
        .I2(\grp_sum[9][3]_i_3_n_0 ),
        .O(popcount88_return[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \grp_sum[9][1]_i_2 
       (.I0(tap_reg[75]),
        .I1(tap_reg[74]),
        .I2(tap_reg[73]),
        .I3(tap_reg[78]),
        .I4(tap_reg[77]),
        .I5(tap_reg[76]),
        .O(\grp_sum[9][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E87EE87E7E7E)) 
    \grp_sum[9][2]_i_1 
       (.I0(\grp_sum[9][3]_i_2_n_0 ),
        .I1(\grp_sum[9][3]_i_3_n_0 ),
        .I2(\grp_sum[9][2]_i_2_n_0 ),
        .I3(tap_reg[76]),
        .I4(tap_reg[77]),
        .I5(tap_reg[78]),
        .O(popcount88_return[2]));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[9][2]_i_2 
       (.I0(tap_reg[73]),
        .I1(tap_reg[74]),
        .I2(tap_reg[75]),
        .O(\grp_sum[9][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008088800000000)) 
    \grp_sum[9][3]_i_1 
       (.I0(\grp_sum[9][3]_i_2_n_0 ),
        .I1(\grp_sum[9][3]_i_3_n_0 ),
        .I2(tap_reg[75]),
        .I3(tap_reg[74]),
        .I4(tap_reg[73]),
        .I5(\grp_sum[9][3]_i_4_n_0 ),
        .O(popcount88_return[3]));
  LUT6 #(
    .INIT(64'h6900006900696900)) 
    \grp_sum[9][3]_i_2 
       (.I0(tap_reg[74]),
        .I1(tap_reg[73]),
        .I2(tap_reg[75]),
        .I3(tap_reg[72]),
        .I4(tap_reg[79]),
        .I5(\grp_sum[9][0]_i_2_n_0 ),
        .O(\grp_sum[9][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h17717117)) 
    \grp_sum[9][3]_i_3 
       (.I0(tap_reg[79]),
        .I1(tap_reg[72]),
        .I2(tap_reg[77]),
        .I3(tap_reg[76]),
        .I4(tap_reg[78]),
        .O(\grp_sum[9][3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \grp_sum[9][3]_i_4 
       (.I0(tap_reg[76]),
        .I1(tap_reg[77]),
        .I2(tap_reg[78]),
        .O(\grp_sum[9][3]_i_4_n_0 ));
  FDRE \grp_sum_reg[0][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount8_return[0]),
        .Q(\grp_sum_reg[0]_56 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[0][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount8_return[1]),
        .Q(\grp_sum_reg[0]_56 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[0][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount8_return[2]),
        .Q(\grp_sum_reg[0]_56 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[0][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount8_return[3]),
        .Q(\grp_sum_reg[0]_56 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[10][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount89_return[0]),
        .Q(\grp_sum_reg[10]_8 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[10][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount89_return[1]),
        .Q(\grp_sum_reg[10]_8 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[10][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount89_return[2]),
        .Q(\grp_sum_reg[10]_8 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[10][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount89_return[3]),
        .Q(\grp_sum_reg[10]_8 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[11][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount810_return[0]),
        .Q(\grp_sum_reg[11]_7 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[11][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount810_return[1]),
        .Q(\grp_sum_reg[11]_7 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[11][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount810_return[2]),
        .Q(\grp_sum_reg[11]_7 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[11][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount810_return[3]),
        .Q(\grp_sum_reg[11]_7 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[12][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount811_return[0]),
        .Q(\grp_sum_reg[12]_4 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[12][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount811_return[1]),
        .Q(\grp_sum_reg[12]_4 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[12][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount811_return[2]),
        .Q(\grp_sum_reg[12]_4 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[12][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount811_return[3]),
        .Q(\grp_sum_reg[12]_4 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[13][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount812_return[0]),
        .Q(\grp_sum_reg[13]_3 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[13][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount812_return[1]),
        .Q(\grp_sum_reg[13]_3 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[13][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount812_return[2]),
        .Q(\grp_sum_reg[13]_3 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[13][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount812_return[3]),
        .Q(\grp_sum_reg[13]_3 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[14][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount813_return[0]),
        .Q(\grp_sum_reg[14]_1 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[14][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount813_return[1]),
        .Q(\grp_sum_reg[14]_1 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[14][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount813_return[2]),
        .Q(\grp_sum_reg[14]_1 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[14][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount813_return[3]),
        .Q(\grp_sum_reg[14]_1 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[15][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount814_return[0]),
        .Q(\grp_sum_reg[15]_0 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[15][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount814_return[1]),
        .Q(\grp_sum_reg[15]_0 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[15][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount814_return[2]),
        .Q(\grp_sum_reg[15]_0 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[15][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount814_return[3]),
        .Q(\grp_sum_reg[15]_0 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[16][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount815_return[0]),
        .Q(\grp_sum_reg[16]_26 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[16][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount815_return[1]),
        .Q(\grp_sum_reg[16]_26 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[16][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount815_return[2]),
        .Q(\grp_sum_reg[16]_26 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[16][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount815_return[3]),
        .Q(\grp_sum_reg[16]_26 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[17][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount816_return[0]),
        .Q(\grp_sum_reg[17]_25 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[17][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount816_return[1]),
        .Q(\grp_sum_reg[17]_25 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[17][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount816_return[2]),
        .Q(\grp_sum_reg[17]_25 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[17][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount816_return[3]),
        .Q(\grp_sum_reg[17]_25 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[18][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount817_return[0]),
        .Q(\grp_sum_reg[18]_23 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[18][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount817_return[1]),
        .Q(\grp_sum_reg[18]_23 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[18][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount817_return[2]),
        .Q(\grp_sum_reg[18]_23 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[18][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount817_return[3]),
        .Q(\grp_sum_reg[18]_23 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[19][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount818_return[0]),
        .Q(\grp_sum_reg[19]_22 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[19][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount818_return[1]),
        .Q(\grp_sum_reg[19]_22 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[19][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount818_return[2]),
        .Q(\grp_sum_reg[19]_22 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[19][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount818_return[3]),
        .Q(\grp_sum_reg[19]_22 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[1][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount80_return[0]),
        .Q(\grp_sum_reg[1]_55 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[1][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount80_return[1]),
        .Q(\grp_sum_reg[1]_55 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[1][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount80_return[2]),
        .Q(\grp_sum_reg[1]_55 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[1][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount80_return[3]),
        .Q(\grp_sum_reg[1]_55 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[20][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount819_return[0]),
        .Q(\grp_sum_reg[20]_19 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[20][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount819_return[1]),
        .Q(\grp_sum_reg[20]_19 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[20][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount819_return[2]),
        .Q(\grp_sum_reg[20]_19 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[20][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount819_return[3]),
        .Q(\grp_sum_reg[20]_19 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[21][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount820_return[0]),
        .Q(\grp_sum_reg[21]_18 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[21][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount820_return[1]),
        .Q(\grp_sum_reg[21]_18 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[21][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount820_return[2]),
        .Q(\grp_sum_reg[21]_18 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[21][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount820_return[3]),
        .Q(\grp_sum_reg[21]_18 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[22][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount821_return[0]),
        .Q(\grp_sum_reg[22]_16 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[22][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount821_return[1]),
        .Q(\grp_sum_reg[22]_16 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[22][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount821_return[2]),
        .Q(\grp_sum_reg[22]_16 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[22][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount821_return[3]),
        .Q(\grp_sum_reg[22]_16 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[23][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount822_return[0]),
        .Q(\grp_sum_reg[23]_15 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[23][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount822_return[1]),
        .Q(\grp_sum_reg[23]_15 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[23][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount822_return[2]),
        .Q(\grp_sum_reg[23]_15 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[23][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount822_return[3]),
        .Q(\grp_sum_reg[23]_15 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[24][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount823_return[0]),
        .Q(\grp_sum_reg[24]_41 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[24][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount823_return[1]),
        .Q(\grp_sum_reg[24]_41 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[24][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount823_return[2]),
        .Q(\grp_sum_reg[24]_41 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[24][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount823_return[3]),
        .Q(\grp_sum_reg[24]_41 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[25][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount824_return[0]),
        .Q(\grp_sum_reg[25]_40 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[25][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount824_return[1]),
        .Q(\grp_sum_reg[25]_40 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[25][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount824_return[2]),
        .Q(\grp_sum_reg[25]_40 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[25][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount824_return[3]),
        .Q(\grp_sum_reg[25]_40 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[26][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount825_return[0]),
        .Q(\grp_sum_reg[26]_38 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[26][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount825_return[1]),
        .Q(\grp_sum_reg[26]_38 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[26][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount825_return[2]),
        .Q(\grp_sum_reg[26]_38 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[26][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount825_return[3]),
        .Q(\grp_sum_reg[26]_38 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[27][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount826_return[0]),
        .Q(\grp_sum_reg[27]_37 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[27][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount826_return[1]),
        .Q(\grp_sum_reg[27]_37 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[27][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount826_return[2]),
        .Q(\grp_sum_reg[27]_37 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[27][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount826_return[3]),
        .Q(\grp_sum_reg[27]_37 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[28][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount827_return[0]),
        .Q(\grp_sum_reg[28]_34 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[28][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount827_return[1]),
        .Q(\grp_sum_reg[28]_34 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[28][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount827_return[2]),
        .Q(\grp_sum_reg[28]_34 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[28][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount827_return[3]),
        .Q(\grp_sum_reg[28]_34 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[29][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount828_return[0]),
        .Q(\grp_sum_reg[29]_33 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[29][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount828_return[1]),
        .Q(\grp_sum_reg[29]_33 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[29][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount828_return[2]),
        .Q(\grp_sum_reg[29]_33 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[29][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount828_return[3]),
        .Q(\grp_sum_reg[29]_33 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[2][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount81_return[0]),
        .Q(\grp_sum_reg[2]_53 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[2][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount81_return[1]),
        .Q(\grp_sum_reg[2]_53 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[2][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount81_return[2]),
        .Q(\grp_sum_reg[2]_53 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[2][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount81_return[3]),
        .Q(\grp_sum_reg[2]_53 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[30][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount829_return[0]),
        .Q(\grp_sum_reg[30]_31 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[30][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount829_return[1]),
        .Q(\grp_sum_reg[30]_31 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[30][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount829_return[2]),
        .Q(\grp_sum_reg[30]_31 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[30][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount829_return[3]),
        .Q(\grp_sum_reg[30]_31 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[31][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount830_return[0]),
        .Q(\grp_sum_reg[31]_30 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[31][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount830_return[1]),
        .Q(\grp_sum_reg[31]_30 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[31][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount830_return[2]),
        .Q(\grp_sum_reg[31]_30 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[31][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount830_return[3]),
        .Q(\grp_sum_reg[31]_30 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[3][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount82_return[0]),
        .Q(\grp_sum_reg[3]_52 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[3][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount82_return[1]),
        .Q(\grp_sum_reg[3]_52 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[3][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount82_return[2]),
        .Q(\grp_sum_reg[3]_52 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[3][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount82_return[3]),
        .Q(\grp_sum_reg[3]_52 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[4][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount83_return[0]),
        .Q(\grp_sum_reg[4]_49 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[4][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount83_return[1]),
        .Q(\grp_sum_reg[4]_49 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[4][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount83_return[2]),
        .Q(\grp_sum_reg[4]_49 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[4][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount83_return[3]),
        .Q(\grp_sum_reg[4]_49 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[5][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount84_return[0]),
        .Q(\grp_sum_reg[5]_48 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[5][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount84_return[1]),
        .Q(\grp_sum_reg[5]_48 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[5][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount84_return[2]),
        .Q(\grp_sum_reg[5]_48 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[5][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount84_return[3]),
        .Q(\grp_sum_reg[5]_48 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[6][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount85_return[0]),
        .Q(\grp_sum_reg[6]_46 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[6][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount85_return[1]),
        .Q(\grp_sum_reg[6]_46 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[6][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount85_return[2]),
        .Q(\grp_sum_reg[6]_46 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[6][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount85_return[3]),
        .Q(\grp_sum_reg[6]_46 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[7][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount86_return[0]),
        .Q(\grp_sum_reg[7]_45 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[7][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount86_return[1]),
        .Q(\grp_sum_reg[7]_45 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[7][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount86_return[2]),
        .Q(\grp_sum_reg[7]_45 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[7][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount86_return[3]),
        .Q(\grp_sum_reg[7]_45 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[8][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount87_return[0]),
        .Q(\grp_sum_reg[8]_11 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[8][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount87_return[1]),
        .Q(\grp_sum_reg[8]_11 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[8][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount87_return[2]),
        .Q(\grp_sum_reg[8]_11 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[8][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount87_return[3]),
        .Q(\grp_sum_reg[8]_11 [3]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[9][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount88_return[0]),
        .Q(\grp_sum_reg[9]_10 [0]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[9][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount88_return[1]),
        .Q(\grp_sum_reg[9]_10 [1]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[9][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount88_return[2]),
        .Q(\grp_sum_reg[9]_10 [2]),
        .R(p_0_in__0));
  FDRE \grp_sum_reg[9][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(popcount88_return[3]),
        .Q(\grp_sum_reg[9]_10 [3]),
        .R(p_0_in__0));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[0][3]_i_2 
       (.I0(\quad_sum_reg[0]_58 [3]),
        .I1(\quad_sum_reg[1]_51 [3]),
        .O(\oct_sum[0][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[0][3]_i_3 
       (.I0(\quad_sum_reg[0]_58 [2]),
        .I1(\quad_sum_reg[1]_51 [2]),
        .O(\oct_sum[0][3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[0][3]_i_4 
       (.I0(\quad_sum_reg[0]_58 [1]),
        .I1(\quad_sum_reg[1]_51 [1]),
        .O(\oct_sum[0][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[0][3]_i_5 
       (.I0(\quad_sum_reg[0]_58 [0]),
        .I1(\quad_sum_reg[1]_51 [0]),
        .O(\oct_sum[0][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[0][6]_i_2 
       (.I0(\quad_sum_reg[0]_58 [5]),
        .I1(\quad_sum_reg[1]_51 [5]),
        .O(\oct_sum[0][6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[0][6]_i_3 
       (.I0(\quad_sum_reg[0]_58 [4]),
        .I1(\quad_sum_reg[1]_51 [4]),
        .O(\oct_sum[0][6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[1][3]_i_2 
       (.I0(\quad_sum_reg[2]_13 [3]),
        .I1(\quad_sum_reg[3]_6 [3]),
        .O(\oct_sum[1][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[1][3]_i_3 
       (.I0(\quad_sum_reg[2]_13 [2]),
        .I1(\quad_sum_reg[3]_6 [2]),
        .O(\oct_sum[1][3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[1][3]_i_4 
       (.I0(\quad_sum_reg[2]_13 [1]),
        .I1(\quad_sum_reg[3]_6 [1]),
        .O(\oct_sum[1][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[1][3]_i_5 
       (.I0(\quad_sum_reg[2]_13 [0]),
        .I1(\quad_sum_reg[3]_6 [0]),
        .O(\oct_sum[1][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[1][6]_i_2 
       (.I0(\quad_sum_reg[2]_13 [5]),
        .I1(\quad_sum_reg[3]_6 [5]),
        .O(\oct_sum[1][6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[1][6]_i_3 
       (.I0(\quad_sum_reg[2]_13 [4]),
        .I1(\quad_sum_reg[3]_6 [4]),
        .O(\oct_sum[1][6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[2][3]_i_2 
       (.I0(\quad_sum_reg[4]_28 [3]),
        .I1(\quad_sum_reg[5]_21 [3]),
        .O(\oct_sum[2][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[2][3]_i_3 
       (.I0(\quad_sum_reg[4]_28 [2]),
        .I1(\quad_sum_reg[5]_21 [2]),
        .O(\oct_sum[2][3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[2][3]_i_4 
       (.I0(\quad_sum_reg[4]_28 [1]),
        .I1(\quad_sum_reg[5]_21 [1]),
        .O(\oct_sum[2][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[2][3]_i_5 
       (.I0(\quad_sum_reg[4]_28 [0]),
        .I1(\quad_sum_reg[5]_21 [0]),
        .O(\oct_sum[2][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[2][6]_i_2 
       (.I0(\quad_sum_reg[4]_28 [5]),
        .I1(\quad_sum_reg[5]_21 [5]),
        .O(\oct_sum[2][6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[2][6]_i_3 
       (.I0(\quad_sum_reg[4]_28 [4]),
        .I1(\quad_sum_reg[5]_21 [4]),
        .O(\oct_sum[2][6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[3][3]_i_2 
       (.I0(\quad_sum_reg[6]_43 [3]),
        .I1(\quad_sum_reg[7]_36 [3]),
        .O(\oct_sum[3][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[3][3]_i_3 
       (.I0(\quad_sum_reg[6]_43 [2]),
        .I1(\quad_sum_reg[7]_36 [2]),
        .O(\oct_sum[3][3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[3][3]_i_4 
       (.I0(\quad_sum_reg[6]_43 [1]),
        .I1(\quad_sum_reg[7]_36 [1]),
        .O(\oct_sum[3][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[3][3]_i_5 
       (.I0(\quad_sum_reg[6]_43 [0]),
        .I1(\quad_sum_reg[7]_36 [0]),
        .O(\oct_sum[3][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[3][6]_i_2 
       (.I0(\quad_sum_reg[6]_43 [5]),
        .I1(\quad_sum_reg[7]_36 [5]),
        .O(\oct_sum[3][6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oct_sum[3][6]_i_3 
       (.I0(\quad_sum_reg[6]_43 [4]),
        .I1(\quad_sum_reg[7]_36 [4]),
        .O(\oct_sum[3][6]_i_3_n_0 ));
  FDRE \oct_sum_reg[0][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\oct_sum_reg[0][3]_i_1_n_7 ),
        .Q(\oct_sum_reg[0]_59 [0]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[0][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\oct_sum_reg[0][3]_i_1_n_6 ),
        .Q(\oct_sum_reg[0]_59 [1]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[0][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\oct_sum_reg[0][3]_i_1_n_5 ),
        .Q(\oct_sum_reg[0]_59 [2]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[0][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\oct_sum_reg[0][3]_i_1_n_4 ),
        .Q(\oct_sum_reg[0]_59 [3]),
        .R(p_0_in__0));
  CARRY4 \oct_sum_reg[0][3]_i_1 
       (.CI(1'b0),
        .CO({\oct_sum_reg[0][3]_i_1_n_0 ,\oct_sum_reg[0][3]_i_1_n_1 ,\oct_sum_reg[0][3]_i_1_n_2 ,\oct_sum_reg[0][3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\quad_sum_reg[0]_58 [3:0]),
        .O({\oct_sum_reg[0][3]_i_1_n_4 ,\oct_sum_reg[0][3]_i_1_n_5 ,\oct_sum_reg[0][3]_i_1_n_6 ,\oct_sum_reg[0][3]_i_1_n_7 }),
        .S({\oct_sum[0][3]_i_2_n_0 ,\oct_sum[0][3]_i_3_n_0 ,\oct_sum[0][3]_i_4_n_0 ,\oct_sum[0][3]_i_5_n_0 }));
  FDRE \oct_sum_reg[0][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\oct_sum_reg[0][6]_i_1_n_7 ),
        .Q(\oct_sum_reg[0]_59 [4]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[0][5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\oct_sum_reg[0][6]_i_1_n_6 ),
        .Q(\oct_sum_reg[0]_59 [5]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[0][6] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\oct_sum_reg[0][6]_i_1_n_1 ),
        .Q(\oct_sum_reg[0]_59 [6]),
        .R(p_0_in__0));
  CARRY4 \oct_sum_reg[0][6]_i_1 
       (.CI(\oct_sum_reg[0][3]_i_1_n_0 ),
        .CO({\NLW_oct_sum_reg[0][6]_i_1_CO_UNCONNECTED [3],\oct_sum_reg[0][6]_i_1_n_1 ,\NLW_oct_sum_reg[0][6]_i_1_CO_UNCONNECTED [1],\oct_sum_reg[0][6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\quad_sum_reg[0]_58 [5:4]}),
        .O({\NLW_oct_sum_reg[0][6]_i_1_O_UNCONNECTED [3:2],\oct_sum_reg[0][6]_i_1_n_6 ,\oct_sum_reg[0][6]_i_1_n_7 }),
        .S({1'b0,1'b1,\oct_sum[0][6]_i_2_n_0 ,\oct_sum[0][6]_i_3_n_0 }));
  FDRE \oct_sum_reg[1][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_6_out[0]),
        .Q(\oct_sum_reg[1]_14 [0]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[1][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_6_out[1]),
        .Q(\oct_sum_reg[1]_14 [1]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[1][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_6_out[2]),
        .Q(\oct_sum_reg[1]_14 [2]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[1][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_6_out[3]),
        .Q(\oct_sum_reg[1]_14 [3]),
        .R(p_0_in__0));
  CARRY4 \oct_sum_reg[1][3]_i_1 
       (.CI(1'b0),
        .CO({\oct_sum_reg[1][3]_i_1_n_0 ,\oct_sum_reg[1][3]_i_1_n_1 ,\oct_sum_reg[1][3]_i_1_n_2 ,\oct_sum_reg[1][3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\quad_sum_reg[2]_13 [3:0]),
        .O(p_6_out[3:0]),
        .S({\oct_sum[1][3]_i_2_n_0 ,\oct_sum[1][3]_i_3_n_0 ,\oct_sum[1][3]_i_4_n_0 ,\oct_sum[1][3]_i_5_n_0 }));
  FDRE \oct_sum_reg[1][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_6_out[4]),
        .Q(\oct_sum_reg[1]_14 [4]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[1][5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_6_out[5]),
        .Q(\oct_sum_reg[1]_14 [5]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[1][6] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_6_out[6]),
        .Q(\oct_sum_reg[1]_14 [6]),
        .R(p_0_in__0));
  CARRY4 \oct_sum_reg[1][6]_i_1 
       (.CI(\oct_sum_reg[1][3]_i_1_n_0 ),
        .CO({\NLW_oct_sum_reg[1][6]_i_1_CO_UNCONNECTED [3],p_6_out[6],\NLW_oct_sum_reg[1][6]_i_1_CO_UNCONNECTED [1],\oct_sum_reg[1][6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\quad_sum_reg[2]_13 [5:4]}),
        .O({\NLW_oct_sum_reg[1][6]_i_1_O_UNCONNECTED [3:2],p_6_out[5:4]}),
        .S({1'b0,1'b1,\oct_sum[1][6]_i_2_n_0 ,\oct_sum[1][6]_i_3_n_0 }));
  FDRE \oct_sum_reg[2][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_3_out[0]),
        .Q(\oct_sum_reg[2]_29 [0]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[2][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_3_out[1]),
        .Q(\oct_sum_reg[2]_29 [1]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[2][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_3_out[2]),
        .Q(\oct_sum_reg[2]_29 [2]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[2][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_3_out[3]),
        .Q(\oct_sum_reg[2]_29 [3]),
        .R(p_0_in__0));
  CARRY4 \oct_sum_reg[2][3]_i_1 
       (.CI(1'b0),
        .CO({\oct_sum_reg[2][3]_i_1_n_0 ,\oct_sum_reg[2][3]_i_1_n_1 ,\oct_sum_reg[2][3]_i_1_n_2 ,\oct_sum_reg[2][3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\quad_sum_reg[4]_28 [3:0]),
        .O(p_3_out[3:0]),
        .S({\oct_sum[2][3]_i_2_n_0 ,\oct_sum[2][3]_i_3_n_0 ,\oct_sum[2][3]_i_4_n_0 ,\oct_sum[2][3]_i_5_n_0 }));
  FDRE \oct_sum_reg[2][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_3_out[4]),
        .Q(\oct_sum_reg[2]_29 [4]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[2][5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_3_out[5]),
        .Q(\oct_sum_reg[2]_29 [5]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[2][6] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_3_out[6]),
        .Q(\oct_sum_reg[2]_29 [6]),
        .R(p_0_in__0));
  CARRY4 \oct_sum_reg[2][6]_i_1 
       (.CI(\oct_sum_reg[2][3]_i_1_n_0 ),
        .CO({\NLW_oct_sum_reg[2][6]_i_1_CO_UNCONNECTED [3],p_3_out[6],\NLW_oct_sum_reg[2][6]_i_1_CO_UNCONNECTED [1],\oct_sum_reg[2][6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\quad_sum_reg[4]_28 [5:4]}),
        .O({\NLW_oct_sum_reg[2][6]_i_1_O_UNCONNECTED [3:2],p_3_out[5:4]}),
        .S({1'b0,1'b1,\oct_sum[2][6]_i_2_n_0 ,\oct_sum[2][6]_i_3_n_0 }));
  FDRE \oct_sum_reg[3][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\oct_sum_reg[3][3]_i_1_n_7 ),
        .Q(\oct_sum_reg[3]_44 [0]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[3][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\oct_sum_reg[3][3]_i_1_n_6 ),
        .Q(\oct_sum_reg[3]_44 [1]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[3][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\oct_sum_reg[3][3]_i_1_n_5 ),
        .Q(\oct_sum_reg[3]_44 [2]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[3][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\oct_sum_reg[3][3]_i_1_n_4 ),
        .Q(\oct_sum_reg[3]_44 [3]),
        .R(p_0_in__0));
  CARRY4 \oct_sum_reg[3][3]_i_1 
       (.CI(1'b0),
        .CO({\oct_sum_reg[3][3]_i_1_n_0 ,\oct_sum_reg[3][3]_i_1_n_1 ,\oct_sum_reg[3][3]_i_1_n_2 ,\oct_sum_reg[3][3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\quad_sum_reg[6]_43 [3:0]),
        .O({\oct_sum_reg[3][3]_i_1_n_4 ,\oct_sum_reg[3][3]_i_1_n_5 ,\oct_sum_reg[3][3]_i_1_n_6 ,\oct_sum_reg[3][3]_i_1_n_7 }),
        .S({\oct_sum[3][3]_i_2_n_0 ,\oct_sum[3][3]_i_3_n_0 ,\oct_sum[3][3]_i_4_n_0 ,\oct_sum[3][3]_i_5_n_0 }));
  FDRE \oct_sum_reg[3][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\oct_sum_reg[3][6]_i_1_n_7 ),
        .Q(\oct_sum_reg[3]_44 [4]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[3][5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\oct_sum_reg[3][6]_i_1_n_6 ),
        .Q(\oct_sum_reg[3]_44 [5]),
        .R(p_0_in__0));
  FDRE \oct_sum_reg[3][6] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\oct_sum_reg[3][6]_i_1_n_1 ),
        .Q(\oct_sum_reg[3]_44 [6]),
        .R(p_0_in__0));
  CARRY4 \oct_sum_reg[3][6]_i_1 
       (.CI(\oct_sum_reg[3][3]_i_1_n_0 ),
        .CO({\NLW_oct_sum_reg[3][6]_i_1_CO_UNCONNECTED [3],\oct_sum_reg[3][6]_i_1_n_1 ,\NLW_oct_sum_reg[3][6]_i_1_CO_UNCONNECTED [1],\oct_sum_reg[3][6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\quad_sum_reg[6]_43 [5:4]}),
        .O({\NLW_oct_sum_reg[3][6]_i_1_O_UNCONNECTED [3:2],\oct_sum_reg[3][6]_i_1_n_6 ,\oct_sum_reg[3][6]_i_1_n_7 }),
        .S({1'b0,1'b1,\oct_sum[3][6]_i_2_n_0 ,\oct_sum[3][6]_i_3_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_0_out_inferred__0/pair_sum[15][0]_i_1 
       (.I0(\grp_sum_reg[30]_31 [0]),
        .I1(\grp_sum_reg[31]_30 [0]),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \p_0_out_inferred__0/pair_sum[15][1]_i_1 
       (.I0(\grp_sum_reg[30]_31 [0]),
        .I1(\grp_sum_reg[31]_30 [0]),
        .I2(\grp_sum_reg[31]_30 [1]),
        .I3(\grp_sum_reg[30]_31 [1]),
        .O(p_0_out[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \p_0_out_inferred__0/pair_sum[15][2]_i_1 
       (.I0(\grp_sum_reg[31]_30 [0]),
        .I1(\grp_sum_reg[30]_31 [0]),
        .I2(\grp_sum_reg[30]_31 [1]),
        .I3(\grp_sum_reg[31]_30 [1]),
        .I4(\grp_sum_reg[31]_30 [2]),
        .I5(\grp_sum_reg[30]_31 [2]),
        .O(p_0_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \p_0_out_inferred__0/pair_sum[15][3]_i_1 
       (.I0(\p_0_out_inferred__0/pair_sum[15][4]_i_2_n_0 ),
        .I1(\grp_sum_reg[31]_30 [3]),
        .I2(\grp_sum_reg[30]_31 [3]),
        .O(p_0_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \p_0_out_inferred__0/pair_sum[15][4]_i_1 
       (.I0(\grp_sum_reg[31]_30 [3]),
        .I1(\grp_sum_reg[30]_31 [3]),
        .I2(\p_0_out_inferred__0/pair_sum[15][4]_i_2_n_0 ),
        .O(p_0_out[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \p_0_out_inferred__0/pair_sum[15][4]_i_2 
       (.I0(\grp_sum_reg[31]_30 [2]),
        .I1(\grp_sum_reg[30]_31 [2]),
        .I2(\grp_sum_reg[31]_30 [0]),
        .I3(\grp_sum_reg[30]_31 [0]),
        .I4(\grp_sum_reg[30]_31 [1]),
        .I5(\grp_sum_reg[31]_30 [1]),
        .O(\p_0_out_inferred__0/pair_sum[15][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_0_out_inferred__1/quad_sum[7][0]_i_1 
       (.I0(\pair_sum_reg[14]_35 [0]),
        .I1(\pair_sum_reg[15]_32 [0]),
        .O(\p_0_out_inferred__1/quad_sum[7][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \p_0_out_inferred__1/quad_sum[7][1]_i_1 
       (.I0(\pair_sum_reg[14]_35 [0]),
        .I1(\pair_sum_reg[15]_32 [0]),
        .I2(\pair_sum_reg[15]_32 [1]),
        .I3(\pair_sum_reg[14]_35 [1]),
        .O(\p_0_out_inferred__1/quad_sum[7][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \p_0_out_inferred__1/quad_sum[7][2]_i_1 
       (.I0(\pair_sum_reg[15]_32 [0]),
        .I1(\pair_sum_reg[14]_35 [0]),
        .I2(\pair_sum_reg[14]_35 [1]),
        .I3(\pair_sum_reg[15]_32 [1]),
        .I4(\pair_sum_reg[15]_32 [2]),
        .I5(\pair_sum_reg[14]_35 [2]),
        .O(\p_0_out_inferred__1/quad_sum[7][2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \p_0_out_inferred__1/quad_sum[7][3]_i_1 
       (.I0(\p_0_out_inferred__1/quad_sum[7][5]_i_2_n_0 ),
        .I1(\pair_sum_reg[15]_32 [3]),
        .I2(\pair_sum_reg[14]_35 [3]),
        .O(\p_0_out_inferred__1/quad_sum[7][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \p_0_out_inferred__1/quad_sum[7][4]_i_1 
       (.I0(\p_0_out_inferred__1/quad_sum[7][5]_i_2_n_0 ),
        .I1(\pair_sum_reg[14]_35 [3]),
        .I2(\pair_sum_reg[15]_32 [3]),
        .I3(\pair_sum_reg[15]_32 [4]),
        .I4(\pair_sum_reg[14]_35 [4]),
        .O(\p_0_out_inferred__1/quad_sum[7][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \p_0_out_inferred__1/quad_sum[7][5]_i_1 
       (.I0(\pair_sum_reg[15]_32 [4]),
        .I1(\pair_sum_reg[14]_35 [4]),
        .I2(\p_0_out_inferred__1/quad_sum[7][5]_i_2_n_0 ),
        .I3(\pair_sum_reg[14]_35 [3]),
        .I4(\pair_sum_reg[15]_32 [3]),
        .O(\p_0_out_inferred__1/quad_sum[7][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \p_0_out_inferred__1/quad_sum[7][5]_i_2 
       (.I0(\pair_sum_reg[15]_32 [2]),
        .I1(\pair_sum_reg[14]_35 [2]),
        .I2(\pair_sum_reg[15]_32 [0]),
        .I3(\pair_sum_reg[14]_35 [0]),
        .I4(\pair_sum_reg[14]_35 [1]),
        .I5(\pair_sum_reg[15]_32 [1]),
        .O(\p_0_out_inferred__1/quad_sum[7][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_12_out_inferred__0/pair_sum[11][0]_i_1 
       (.I0(\grp_sum_reg[22]_16 [0]),
        .I1(\grp_sum_reg[23]_15 [0]),
        .O(\p_12_out_inferred__0/pair_sum[11][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \p_12_out_inferred__0/pair_sum[11][1]_i_1 
       (.I0(\grp_sum_reg[22]_16 [0]),
        .I1(\grp_sum_reg[23]_15 [0]),
        .I2(\grp_sum_reg[23]_15 [1]),
        .I3(\grp_sum_reg[22]_16 [1]),
        .O(\p_12_out_inferred__0/pair_sum[11][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \p_12_out_inferred__0/pair_sum[11][2]_i_1 
       (.I0(\grp_sum_reg[23]_15 [0]),
        .I1(\grp_sum_reg[22]_16 [0]),
        .I2(\grp_sum_reg[22]_16 [1]),
        .I3(\grp_sum_reg[23]_15 [1]),
        .I4(\grp_sum_reg[23]_15 [2]),
        .I5(\grp_sum_reg[22]_16 [2]),
        .O(\p_12_out_inferred__0/pair_sum[11][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \p_12_out_inferred__0/pair_sum[11][3]_i_1 
       (.I0(\p_12_out_inferred__0/pair_sum[11][4]_i_2_n_0 ),
        .I1(\grp_sum_reg[23]_15 [3]),
        .I2(\grp_sum_reg[22]_16 [3]),
        .O(\p_12_out_inferred__0/pair_sum[11][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \p_12_out_inferred__0/pair_sum[11][4]_i_1 
       (.I0(\grp_sum_reg[23]_15 [3]),
        .I1(\grp_sum_reg[22]_16 [3]),
        .I2(\p_12_out_inferred__0/pair_sum[11][4]_i_2_n_0 ),
        .O(\p_12_out_inferred__0/pair_sum[11][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \p_12_out_inferred__0/pair_sum[11][4]_i_2 
       (.I0(\grp_sum_reg[23]_15 [2]),
        .I1(\grp_sum_reg[22]_16 [2]),
        .I2(\grp_sum_reg[23]_15 [0]),
        .I3(\grp_sum_reg[22]_16 [0]),
        .I4(\grp_sum_reg[22]_16 [1]),
        .I5(\grp_sum_reg[23]_15 [1]),
        .O(\p_12_out_inferred__0/pair_sum[11][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_15_out_inferred__0/pair_sum[10][0]_i_1 
       (.I0(\grp_sum_reg[20]_19 [0]),
        .I1(\grp_sum_reg[21]_18 [0]),
        .O(\p_15_out_inferred__0/pair_sum[10][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \p_15_out_inferred__0/pair_sum[10][1]_i_1 
       (.I0(\grp_sum_reg[20]_19 [0]),
        .I1(\grp_sum_reg[21]_18 [0]),
        .I2(\grp_sum_reg[21]_18 [1]),
        .I3(\grp_sum_reg[20]_19 [1]),
        .O(\p_15_out_inferred__0/pair_sum[10][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \p_15_out_inferred__0/pair_sum[10][2]_i_1 
       (.I0(\grp_sum_reg[21]_18 [0]),
        .I1(\grp_sum_reg[20]_19 [0]),
        .I2(\grp_sum_reg[20]_19 [1]),
        .I3(\grp_sum_reg[21]_18 [1]),
        .I4(\grp_sum_reg[21]_18 [2]),
        .I5(\grp_sum_reg[20]_19 [2]),
        .O(\p_15_out_inferred__0/pair_sum[10][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \p_15_out_inferred__0/pair_sum[10][3]_i_1 
       (.I0(\p_15_out_inferred__0/pair_sum[10][4]_i_2_n_0 ),
        .I1(\grp_sum_reg[21]_18 [3]),
        .I2(\grp_sum_reg[20]_19 [3]),
        .O(\p_15_out_inferred__0/pair_sum[10][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \p_15_out_inferred__0/pair_sum[10][4]_i_1 
       (.I0(\grp_sum_reg[21]_18 [3]),
        .I1(\grp_sum_reg[20]_19 [3]),
        .I2(\p_15_out_inferred__0/pair_sum[10][4]_i_2_n_0 ),
        .O(\p_15_out_inferred__0/pair_sum[10][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \p_15_out_inferred__0/pair_sum[10][4]_i_2 
       (.I0(\grp_sum_reg[21]_18 [2]),
        .I1(\grp_sum_reg[20]_19 [2]),
        .I2(\grp_sum_reg[21]_18 [0]),
        .I3(\grp_sum_reg[20]_19 [0]),
        .I4(\grp_sum_reg[20]_19 [1]),
        .I5(\grp_sum_reg[21]_18 [1]),
        .O(\p_15_out_inferred__0/pair_sum[10][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_18_out_inferred__0/quad_sum[1][0]_i_1 
       (.I0(\pair_sum_reg[2]_50 [0]),
        .I1(\pair_sum_reg[3]_47 [0]),
        .O(\p_18_out_inferred__0/quad_sum[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \p_18_out_inferred__0/quad_sum[1][1]_i_1 
       (.I0(\pair_sum_reg[2]_50 [0]),
        .I1(\pair_sum_reg[3]_47 [0]),
        .I2(\pair_sum_reg[3]_47 [1]),
        .I3(\pair_sum_reg[2]_50 [1]),
        .O(\p_18_out_inferred__0/quad_sum[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \p_18_out_inferred__0/quad_sum[1][2]_i_1 
       (.I0(\pair_sum_reg[3]_47 [0]),
        .I1(\pair_sum_reg[2]_50 [0]),
        .I2(\pair_sum_reg[2]_50 [1]),
        .I3(\pair_sum_reg[3]_47 [1]),
        .I4(\pair_sum_reg[3]_47 [2]),
        .I5(\pair_sum_reg[2]_50 [2]),
        .O(\p_18_out_inferred__0/quad_sum[1][2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \p_18_out_inferred__0/quad_sum[1][3]_i_1 
       (.I0(\p_18_out_inferred__0/quad_sum[1][5]_i_2_n_0 ),
        .I1(\pair_sum_reg[3]_47 [3]),
        .I2(\pair_sum_reg[2]_50 [3]),
        .O(\p_18_out_inferred__0/quad_sum[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \p_18_out_inferred__0/quad_sum[1][4]_i_1 
       (.I0(\p_18_out_inferred__0/quad_sum[1][5]_i_2_n_0 ),
        .I1(\pair_sum_reg[2]_50 [3]),
        .I2(\pair_sum_reg[3]_47 [3]),
        .I3(\pair_sum_reg[3]_47 [4]),
        .I4(\pair_sum_reg[2]_50 [4]),
        .O(\p_18_out_inferred__0/quad_sum[1][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \p_18_out_inferred__0/quad_sum[1][5]_i_1 
       (.I0(\pair_sum_reg[3]_47 [4]),
        .I1(\pair_sum_reg[2]_50 [4]),
        .I2(\p_18_out_inferred__0/quad_sum[1][5]_i_2_n_0 ),
        .I3(\pair_sum_reg[2]_50 [3]),
        .I4(\pair_sum_reg[3]_47 [3]),
        .O(\p_18_out_inferred__0/quad_sum[1][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \p_18_out_inferred__0/quad_sum[1][5]_i_2 
       (.I0(\pair_sum_reg[3]_47 [2]),
        .I1(\pair_sum_reg[2]_50 [2]),
        .I2(\pair_sum_reg[3]_47 [0]),
        .I3(\pair_sum_reg[2]_50 [0]),
        .I4(\pair_sum_reg[2]_50 [1]),
        .I5(\pair_sum_reg[3]_47 [1]),
        .O(\p_18_out_inferred__0/quad_sum[1][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_21_out_inferred__0/quad_sum[0][0]_i_1 
       (.I0(\pair_sum_reg[0]_57 [0]),
        .I1(\pair_sum_reg[1]_54 [0]),
        .O(\p_21_out_inferred__0/quad_sum[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \p_21_out_inferred__0/quad_sum[0][1]_i_1 
       (.I0(\pair_sum_reg[0]_57 [0]),
        .I1(\pair_sum_reg[1]_54 [0]),
        .I2(\pair_sum_reg[1]_54 [1]),
        .I3(\pair_sum_reg[0]_57 [1]),
        .O(\p_21_out_inferred__0/quad_sum[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \p_21_out_inferred__0/quad_sum[0][2]_i_1 
       (.I0(\pair_sum_reg[1]_54 [0]),
        .I1(\pair_sum_reg[0]_57 [0]),
        .I2(\pair_sum_reg[0]_57 [1]),
        .I3(\pair_sum_reg[1]_54 [1]),
        .I4(\pair_sum_reg[1]_54 [2]),
        .I5(\pair_sum_reg[0]_57 [2]),
        .O(\p_21_out_inferred__0/quad_sum[0][2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \p_21_out_inferred__0/quad_sum[0][3]_i_1 
       (.I0(\p_21_out_inferred__0/quad_sum[0][5]_i_2_n_0 ),
        .I1(\pair_sum_reg[1]_54 [3]),
        .I2(\pair_sum_reg[0]_57 [3]),
        .O(\p_21_out_inferred__0/quad_sum[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \p_21_out_inferred__0/quad_sum[0][4]_i_1 
       (.I0(\p_21_out_inferred__0/quad_sum[0][5]_i_2_n_0 ),
        .I1(\pair_sum_reg[0]_57 [3]),
        .I2(\pair_sum_reg[1]_54 [3]),
        .I3(\pair_sum_reg[1]_54 [4]),
        .I4(\pair_sum_reg[0]_57 [4]),
        .O(\p_21_out_inferred__0/quad_sum[0][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \p_21_out_inferred__0/quad_sum[0][5]_i_1 
       (.I0(\pair_sum_reg[1]_54 [4]),
        .I1(\pair_sum_reg[0]_57 [4]),
        .I2(\p_21_out_inferred__0/quad_sum[0][5]_i_2_n_0 ),
        .I3(\pair_sum_reg[0]_57 [3]),
        .I4(\pair_sum_reg[1]_54 [3]),
        .O(\p_21_out_inferred__0/quad_sum[0][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \p_21_out_inferred__0/quad_sum[0][5]_i_2 
       (.I0(\pair_sum_reg[1]_54 [2]),
        .I1(\pair_sum_reg[0]_57 [2]),
        .I2(\pair_sum_reg[1]_54 [0]),
        .I3(\pair_sum_reg[0]_57 [0]),
        .I4(\pair_sum_reg[0]_57 [1]),
        .I5(\pair_sum_reg[1]_54 [1]),
        .O(\p_21_out_inferred__0/quad_sum[0][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_3_out_inferred__0/pair_sum[14][0]_i_1 
       (.I0(\grp_sum_reg[28]_34 [0]),
        .I1(\grp_sum_reg[29]_33 [0]),
        .O(\p_3_out_inferred__0/pair_sum[14][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \p_3_out_inferred__0/pair_sum[14][1]_i_1 
       (.I0(\grp_sum_reg[28]_34 [0]),
        .I1(\grp_sum_reg[29]_33 [0]),
        .I2(\grp_sum_reg[29]_33 [1]),
        .I3(\grp_sum_reg[28]_34 [1]),
        .O(\p_3_out_inferred__0/pair_sum[14][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \p_3_out_inferred__0/pair_sum[14][2]_i_1 
       (.I0(\grp_sum_reg[29]_33 [0]),
        .I1(\grp_sum_reg[28]_34 [0]),
        .I2(\grp_sum_reg[28]_34 [1]),
        .I3(\grp_sum_reg[29]_33 [1]),
        .I4(\grp_sum_reg[29]_33 [2]),
        .I5(\grp_sum_reg[28]_34 [2]),
        .O(\p_3_out_inferred__0/pair_sum[14][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \p_3_out_inferred__0/pair_sum[14][3]_i_1 
       (.I0(\p_3_out_inferred__0/pair_sum[14][4]_i_2_n_0 ),
        .I1(\grp_sum_reg[29]_33 [3]),
        .I2(\grp_sum_reg[28]_34 [3]),
        .O(\p_3_out_inferred__0/pair_sum[14][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \p_3_out_inferred__0/pair_sum[14][4]_i_1 
       (.I0(\grp_sum_reg[29]_33 [3]),
        .I1(\grp_sum_reg[28]_34 [3]),
        .I2(\p_3_out_inferred__0/pair_sum[14][4]_i_2_n_0 ),
        .O(\p_3_out_inferred__0/pair_sum[14][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \p_3_out_inferred__0/pair_sum[14][4]_i_2 
       (.I0(\grp_sum_reg[29]_33 [2]),
        .I1(\grp_sum_reg[28]_34 [2]),
        .I2(\grp_sum_reg[29]_33 [0]),
        .I3(\grp_sum_reg[28]_34 [0]),
        .I4(\grp_sum_reg[28]_34 [1]),
        .I5(\grp_sum_reg[29]_33 [1]),
        .O(\p_3_out_inferred__0/pair_sum[14][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_3_out_inferred__1/quad_sum[6][0]_i_1 
       (.I0(\pair_sum_reg[12]_42 [0]),
        .I1(\pair_sum_reg[13]_39 [0]),
        .O(\p_3_out_inferred__1/quad_sum[6][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \p_3_out_inferred__1/quad_sum[6][1]_i_1 
       (.I0(\pair_sum_reg[12]_42 [0]),
        .I1(\pair_sum_reg[13]_39 [0]),
        .I2(\pair_sum_reg[13]_39 [1]),
        .I3(\pair_sum_reg[12]_42 [1]),
        .O(\p_3_out_inferred__1/quad_sum[6][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \p_3_out_inferred__1/quad_sum[6][2]_i_1 
       (.I0(\pair_sum_reg[13]_39 [0]),
        .I1(\pair_sum_reg[12]_42 [0]),
        .I2(\pair_sum_reg[12]_42 [1]),
        .I3(\pair_sum_reg[13]_39 [1]),
        .I4(\pair_sum_reg[13]_39 [2]),
        .I5(\pair_sum_reg[12]_42 [2]),
        .O(\p_3_out_inferred__1/quad_sum[6][2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \p_3_out_inferred__1/quad_sum[6][3]_i_1 
       (.I0(\p_3_out_inferred__1/quad_sum[6][5]_i_2_n_0 ),
        .I1(\pair_sum_reg[13]_39 [3]),
        .I2(\pair_sum_reg[12]_42 [3]),
        .O(\p_3_out_inferred__1/quad_sum[6][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \p_3_out_inferred__1/quad_sum[6][4]_i_1 
       (.I0(\p_3_out_inferred__1/quad_sum[6][5]_i_2_n_0 ),
        .I1(\pair_sum_reg[12]_42 [3]),
        .I2(\pair_sum_reg[13]_39 [3]),
        .I3(\pair_sum_reg[13]_39 [4]),
        .I4(\pair_sum_reg[12]_42 [4]),
        .O(\p_3_out_inferred__1/quad_sum[6][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \p_3_out_inferred__1/quad_sum[6][5]_i_1 
       (.I0(\pair_sum_reg[13]_39 [4]),
        .I1(\pair_sum_reg[12]_42 [4]),
        .I2(\p_3_out_inferred__1/quad_sum[6][5]_i_2_n_0 ),
        .I3(\pair_sum_reg[12]_42 [3]),
        .I4(\pair_sum_reg[13]_39 [3]),
        .O(\p_3_out_inferred__1/quad_sum[6][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \p_3_out_inferred__1/quad_sum[6][5]_i_2 
       (.I0(\pair_sum_reg[13]_39 [2]),
        .I1(\pair_sum_reg[12]_42 [2]),
        .I2(\pair_sum_reg[13]_39 [0]),
        .I3(\pair_sum_reg[12]_42 [0]),
        .I4(\pair_sum_reg[12]_42 [1]),
        .I5(\pair_sum_reg[13]_39 [1]),
        .O(\p_3_out_inferred__1/quad_sum[6][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_6_out_inferred__0/quad_sum[5][0]_i_1 
       (.I0(\pair_sum_reg[10]_20 [0]),
        .I1(\pair_sum_reg[11]_17 [0]),
        .O(\p_6_out_inferred__0/quad_sum[5][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \p_6_out_inferred__0/quad_sum[5][1]_i_1 
       (.I0(\pair_sum_reg[10]_20 [0]),
        .I1(\pair_sum_reg[11]_17 [0]),
        .I2(\pair_sum_reg[11]_17 [1]),
        .I3(\pair_sum_reg[10]_20 [1]),
        .O(\p_6_out_inferred__0/quad_sum[5][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \p_6_out_inferred__0/quad_sum[5][2]_i_1 
       (.I0(\pair_sum_reg[11]_17 [0]),
        .I1(\pair_sum_reg[10]_20 [0]),
        .I2(\pair_sum_reg[10]_20 [1]),
        .I3(\pair_sum_reg[11]_17 [1]),
        .I4(\pair_sum_reg[11]_17 [2]),
        .I5(\pair_sum_reg[10]_20 [2]),
        .O(\p_6_out_inferred__0/quad_sum[5][2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \p_6_out_inferred__0/quad_sum[5][3]_i_1 
       (.I0(\p_6_out_inferred__0/quad_sum[5][5]_i_2_n_0 ),
        .I1(\pair_sum_reg[11]_17 [3]),
        .I2(\pair_sum_reg[10]_20 [3]),
        .O(\p_6_out_inferred__0/quad_sum[5][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \p_6_out_inferred__0/quad_sum[5][4]_i_1 
       (.I0(\p_6_out_inferred__0/quad_sum[5][5]_i_2_n_0 ),
        .I1(\pair_sum_reg[10]_20 [3]),
        .I2(\pair_sum_reg[11]_17 [3]),
        .I3(\pair_sum_reg[11]_17 [4]),
        .I4(\pair_sum_reg[10]_20 [4]),
        .O(\p_6_out_inferred__0/quad_sum[5][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \p_6_out_inferred__0/quad_sum[5][5]_i_1 
       (.I0(\pair_sum_reg[11]_17 [4]),
        .I1(\pair_sum_reg[10]_20 [4]),
        .I2(\p_6_out_inferred__0/quad_sum[5][5]_i_2_n_0 ),
        .I3(\pair_sum_reg[10]_20 [3]),
        .I4(\pair_sum_reg[11]_17 [3]),
        .O(\p_6_out_inferred__0/quad_sum[5][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \p_6_out_inferred__0/quad_sum[5][5]_i_2 
       (.I0(\pair_sum_reg[11]_17 [2]),
        .I1(\pair_sum_reg[10]_20 [2]),
        .I2(\pair_sum_reg[11]_17 [0]),
        .I3(\pair_sum_reg[10]_20 [0]),
        .I4(\pair_sum_reg[10]_20 [1]),
        .I5(\pair_sum_reg[11]_17 [1]),
        .O(\p_6_out_inferred__0/quad_sum[5][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_6_out_inferred__1/pair_sum[13][0]_i_1 
       (.I0(\grp_sum_reg[26]_38 [0]),
        .I1(\grp_sum_reg[27]_37 [0]),
        .O(\p_6_out_inferred__1/pair_sum[13][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \p_6_out_inferred__1/pair_sum[13][1]_i_1 
       (.I0(\grp_sum_reg[26]_38 [0]),
        .I1(\grp_sum_reg[27]_37 [0]),
        .I2(\grp_sum_reg[27]_37 [1]),
        .I3(\grp_sum_reg[26]_38 [1]),
        .O(\p_6_out_inferred__1/pair_sum[13][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \p_6_out_inferred__1/pair_sum[13][2]_i_1 
       (.I0(\grp_sum_reg[27]_37 [0]),
        .I1(\grp_sum_reg[26]_38 [0]),
        .I2(\grp_sum_reg[26]_38 [1]),
        .I3(\grp_sum_reg[27]_37 [1]),
        .I4(\grp_sum_reg[27]_37 [2]),
        .I5(\grp_sum_reg[26]_38 [2]),
        .O(\p_6_out_inferred__1/pair_sum[13][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \p_6_out_inferred__1/pair_sum[13][3]_i_1 
       (.I0(\p_6_out_inferred__1/pair_sum[13][4]_i_2_n_0 ),
        .I1(\grp_sum_reg[27]_37 [3]),
        .I2(\grp_sum_reg[26]_38 [3]),
        .O(\p_6_out_inferred__1/pair_sum[13][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \p_6_out_inferred__1/pair_sum[13][4]_i_1 
       (.I0(\grp_sum_reg[27]_37 [3]),
        .I1(\grp_sum_reg[26]_38 [3]),
        .I2(\p_6_out_inferred__1/pair_sum[13][4]_i_2_n_0 ),
        .O(\p_6_out_inferred__1/pair_sum[13][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \p_6_out_inferred__1/pair_sum[13][4]_i_2 
       (.I0(\grp_sum_reg[27]_37 [2]),
        .I1(\grp_sum_reg[26]_38 [2]),
        .I2(\grp_sum_reg[27]_37 [0]),
        .I3(\grp_sum_reg[26]_38 [0]),
        .I4(\grp_sum_reg[26]_38 [1]),
        .I5(\grp_sum_reg[27]_37 [1]),
        .O(\p_6_out_inferred__1/pair_sum[13][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \p_9_out_inferred__0/pair_sum[12][0]_i_1 
       (.I0(\grp_sum_reg[24]_41 [0]),
        .I1(\grp_sum_reg[25]_40 [0]),
        .O(\p_9_out_inferred__0/pair_sum[12][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \p_9_out_inferred__0/pair_sum[12][1]_i_1 
       (.I0(\grp_sum_reg[24]_41 [0]),
        .I1(\grp_sum_reg[25]_40 [0]),
        .I2(\grp_sum_reg[25]_40 [1]),
        .I3(\grp_sum_reg[24]_41 [1]),
        .O(\p_9_out_inferred__0/pair_sum[12][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \p_9_out_inferred__0/pair_sum[12][2]_i_1 
       (.I0(\grp_sum_reg[25]_40 [0]),
        .I1(\grp_sum_reg[24]_41 [0]),
        .I2(\grp_sum_reg[24]_41 [1]),
        .I3(\grp_sum_reg[25]_40 [1]),
        .I4(\grp_sum_reg[25]_40 [2]),
        .I5(\grp_sum_reg[24]_41 [2]),
        .O(\p_9_out_inferred__0/pair_sum[12][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \p_9_out_inferred__0/pair_sum[12][3]_i_1 
       (.I0(\p_9_out_inferred__0/pair_sum[12][4]_i_2_n_0 ),
        .I1(\grp_sum_reg[25]_40 [3]),
        .I2(\grp_sum_reg[24]_41 [3]),
        .O(\p_9_out_inferred__0/pair_sum[12][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \p_9_out_inferred__0/pair_sum[12][4]_i_1 
       (.I0(\grp_sum_reg[25]_40 [3]),
        .I1(\grp_sum_reg[24]_41 [3]),
        .I2(\p_9_out_inferred__0/pair_sum[12][4]_i_2_n_0 ),
        .O(\p_9_out_inferred__0/pair_sum[12][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \p_9_out_inferred__0/pair_sum[12][4]_i_2 
       (.I0(\grp_sum_reg[25]_40 [2]),
        .I1(\grp_sum_reg[24]_41 [2]),
        .I2(\grp_sum_reg[25]_40 [0]),
        .I3(\grp_sum_reg[24]_41 [0]),
        .I4(\grp_sum_reg[24]_41 [1]),
        .I5(\grp_sum_reg[25]_40 [1]),
        .O(\p_9_out_inferred__0/pair_sum[12][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pair_sum[0][0]_i_1 
       (.I0(\grp_sum_reg[0]_56 [0]),
        .I1(\grp_sum_reg[1]_55 [0]),
        .O(p_45_out__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \pair_sum[0][1]_i_1 
       (.I0(\grp_sum_reg[0]_56 [0]),
        .I1(\grp_sum_reg[1]_55 [0]),
        .I2(\grp_sum_reg[1]_55 [1]),
        .I3(\grp_sum_reg[0]_56 [1]),
        .O(p_45_out__0[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \pair_sum[0][2]_i_1 
       (.I0(\grp_sum_reg[1]_55 [0]),
        .I1(\grp_sum_reg[0]_56 [0]),
        .I2(\grp_sum_reg[0]_56 [1]),
        .I3(\grp_sum_reg[1]_55 [1]),
        .I4(\grp_sum_reg[1]_55 [2]),
        .I5(\grp_sum_reg[0]_56 [2]),
        .O(p_45_out__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \pair_sum[0][3]_i_1 
       (.I0(\pair_sum[0][4]_i_2_n_0 ),
        .I1(\grp_sum_reg[1]_55 [3]),
        .I2(\grp_sum_reg[0]_56 [3]),
        .O(p_45_out__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pair_sum[0][4]_i_1 
       (.I0(\grp_sum_reg[1]_55 [3]),
        .I1(\grp_sum_reg[0]_56 [3]),
        .I2(\pair_sum[0][4]_i_2_n_0 ),
        .O(p_45_out__0[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \pair_sum[0][4]_i_2 
       (.I0(\grp_sum_reg[1]_55 [2]),
        .I1(\grp_sum_reg[0]_56 [2]),
        .I2(\grp_sum_reg[1]_55 [0]),
        .I3(\grp_sum_reg[0]_56 [0]),
        .I4(\grp_sum_reg[0]_56 [1]),
        .I5(\grp_sum_reg[1]_55 [1]),
        .O(\pair_sum[0][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pair_sum[1][0]_i_1 
       (.I0(\grp_sum_reg[2]_53 [0]),
        .I1(\grp_sum_reg[3]_52 [0]),
        .O(p_42_out__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \pair_sum[1][1]_i_1 
       (.I0(\grp_sum_reg[2]_53 [0]),
        .I1(\grp_sum_reg[3]_52 [0]),
        .I2(\grp_sum_reg[3]_52 [1]),
        .I3(\grp_sum_reg[2]_53 [1]),
        .O(p_42_out__0[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \pair_sum[1][2]_i_1 
       (.I0(\grp_sum_reg[3]_52 [0]),
        .I1(\grp_sum_reg[2]_53 [0]),
        .I2(\grp_sum_reg[2]_53 [1]),
        .I3(\grp_sum_reg[3]_52 [1]),
        .I4(\grp_sum_reg[3]_52 [2]),
        .I5(\grp_sum_reg[2]_53 [2]),
        .O(p_42_out__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \pair_sum[1][3]_i_1 
       (.I0(\pair_sum[1][4]_i_2_n_0 ),
        .I1(\grp_sum_reg[3]_52 [3]),
        .I2(\grp_sum_reg[2]_53 [3]),
        .O(p_42_out__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pair_sum[1][4]_i_1 
       (.I0(\grp_sum_reg[3]_52 [3]),
        .I1(\grp_sum_reg[2]_53 [3]),
        .I2(\pair_sum[1][4]_i_2_n_0 ),
        .O(p_42_out__0[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \pair_sum[1][4]_i_2 
       (.I0(\grp_sum_reg[3]_52 [2]),
        .I1(\grp_sum_reg[2]_53 [2]),
        .I2(\grp_sum_reg[3]_52 [0]),
        .I3(\grp_sum_reg[2]_53 [0]),
        .I4(\grp_sum_reg[2]_53 [1]),
        .I5(\grp_sum_reg[3]_52 [1]),
        .O(\pair_sum[1][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pair_sum[2][0]_i_1 
       (.I0(\grp_sum_reg[4]_49 [0]),
        .I1(\grp_sum_reg[5]_48 [0]),
        .O(p_39_out__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \pair_sum[2][1]_i_1 
       (.I0(\grp_sum_reg[4]_49 [0]),
        .I1(\grp_sum_reg[5]_48 [0]),
        .I2(\grp_sum_reg[5]_48 [1]),
        .I3(\grp_sum_reg[4]_49 [1]),
        .O(p_39_out__0[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \pair_sum[2][2]_i_1 
       (.I0(\grp_sum_reg[5]_48 [0]),
        .I1(\grp_sum_reg[4]_49 [0]),
        .I2(\grp_sum_reg[4]_49 [1]),
        .I3(\grp_sum_reg[5]_48 [1]),
        .I4(\grp_sum_reg[5]_48 [2]),
        .I5(\grp_sum_reg[4]_49 [2]),
        .O(p_39_out__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \pair_sum[2][3]_i_1 
       (.I0(\pair_sum[2][4]_i_2_n_0 ),
        .I1(\grp_sum_reg[5]_48 [3]),
        .I2(\grp_sum_reg[4]_49 [3]),
        .O(p_39_out__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pair_sum[2][4]_i_1 
       (.I0(\grp_sum_reg[5]_48 [3]),
        .I1(\grp_sum_reg[4]_49 [3]),
        .I2(\pair_sum[2][4]_i_2_n_0 ),
        .O(p_39_out__0[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \pair_sum[2][4]_i_2 
       (.I0(\grp_sum_reg[5]_48 [2]),
        .I1(\grp_sum_reg[4]_49 [2]),
        .I2(\grp_sum_reg[5]_48 [0]),
        .I3(\grp_sum_reg[4]_49 [0]),
        .I4(\grp_sum_reg[4]_49 [1]),
        .I5(\grp_sum_reg[5]_48 [1]),
        .O(\pair_sum[2][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pair_sum[3][0]_i_1 
       (.I0(\grp_sum_reg[6]_46 [0]),
        .I1(\grp_sum_reg[7]_45 [0]),
        .O(p_36_out__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \pair_sum[3][1]_i_1 
       (.I0(\grp_sum_reg[6]_46 [0]),
        .I1(\grp_sum_reg[7]_45 [0]),
        .I2(\grp_sum_reg[7]_45 [1]),
        .I3(\grp_sum_reg[6]_46 [1]),
        .O(p_36_out__0[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \pair_sum[3][2]_i_1 
       (.I0(\grp_sum_reg[7]_45 [0]),
        .I1(\grp_sum_reg[6]_46 [0]),
        .I2(\grp_sum_reg[6]_46 [1]),
        .I3(\grp_sum_reg[7]_45 [1]),
        .I4(\grp_sum_reg[7]_45 [2]),
        .I5(\grp_sum_reg[6]_46 [2]),
        .O(p_36_out__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \pair_sum[3][3]_i_1 
       (.I0(\pair_sum[3][4]_i_2_n_0 ),
        .I1(\grp_sum_reg[7]_45 [3]),
        .I2(\grp_sum_reg[6]_46 [3]),
        .O(p_36_out__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pair_sum[3][4]_i_1 
       (.I0(\grp_sum_reg[7]_45 [3]),
        .I1(\grp_sum_reg[6]_46 [3]),
        .I2(\pair_sum[3][4]_i_2_n_0 ),
        .O(p_36_out__0[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \pair_sum[3][4]_i_2 
       (.I0(\grp_sum_reg[7]_45 [2]),
        .I1(\grp_sum_reg[6]_46 [2]),
        .I2(\grp_sum_reg[7]_45 [0]),
        .I3(\grp_sum_reg[6]_46 [0]),
        .I4(\grp_sum_reg[6]_46 [1]),
        .I5(\grp_sum_reg[7]_45 [1]),
        .O(\pair_sum[3][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pair_sum[4][0]_i_1 
       (.I0(\grp_sum_reg[8]_11 [0]),
        .I1(\grp_sum_reg[9]_10 [0]),
        .O(p_33_out__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \pair_sum[4][1]_i_1 
       (.I0(\grp_sum_reg[8]_11 [0]),
        .I1(\grp_sum_reg[9]_10 [0]),
        .I2(\grp_sum_reg[9]_10 [1]),
        .I3(\grp_sum_reg[8]_11 [1]),
        .O(p_33_out__0[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \pair_sum[4][2]_i_1 
       (.I0(\grp_sum_reg[9]_10 [0]),
        .I1(\grp_sum_reg[8]_11 [0]),
        .I2(\grp_sum_reg[8]_11 [1]),
        .I3(\grp_sum_reg[9]_10 [1]),
        .I4(\grp_sum_reg[9]_10 [2]),
        .I5(\grp_sum_reg[8]_11 [2]),
        .O(p_33_out__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \pair_sum[4][3]_i_1 
       (.I0(\pair_sum[4][4]_i_2_n_0 ),
        .I1(\grp_sum_reg[9]_10 [3]),
        .I2(\grp_sum_reg[8]_11 [3]),
        .O(p_33_out__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pair_sum[4][4]_i_1 
       (.I0(\grp_sum_reg[9]_10 [3]),
        .I1(\grp_sum_reg[8]_11 [3]),
        .I2(\pair_sum[4][4]_i_2_n_0 ),
        .O(p_33_out__0[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \pair_sum[4][4]_i_2 
       (.I0(\grp_sum_reg[9]_10 [2]),
        .I1(\grp_sum_reg[8]_11 [2]),
        .I2(\grp_sum_reg[9]_10 [0]),
        .I3(\grp_sum_reg[8]_11 [0]),
        .I4(\grp_sum_reg[8]_11 [1]),
        .I5(\grp_sum_reg[9]_10 [1]),
        .O(\pair_sum[4][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pair_sum[5][0]_i_1 
       (.I0(\grp_sum_reg[10]_8 [0]),
        .I1(\grp_sum_reg[11]_7 [0]),
        .O(p_30_out__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \pair_sum[5][1]_i_1 
       (.I0(\grp_sum_reg[10]_8 [0]),
        .I1(\grp_sum_reg[11]_7 [0]),
        .I2(\grp_sum_reg[11]_7 [1]),
        .I3(\grp_sum_reg[10]_8 [1]),
        .O(p_30_out__0[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \pair_sum[5][2]_i_1 
       (.I0(\grp_sum_reg[11]_7 [0]),
        .I1(\grp_sum_reg[10]_8 [0]),
        .I2(\grp_sum_reg[10]_8 [1]),
        .I3(\grp_sum_reg[11]_7 [1]),
        .I4(\grp_sum_reg[11]_7 [2]),
        .I5(\grp_sum_reg[10]_8 [2]),
        .O(p_30_out__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \pair_sum[5][3]_i_1 
       (.I0(\pair_sum[5][4]_i_2_n_0 ),
        .I1(\grp_sum_reg[11]_7 [3]),
        .I2(\grp_sum_reg[10]_8 [3]),
        .O(p_30_out__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pair_sum[5][4]_i_1 
       (.I0(\grp_sum_reg[11]_7 [3]),
        .I1(\grp_sum_reg[10]_8 [3]),
        .I2(\pair_sum[5][4]_i_2_n_0 ),
        .O(p_30_out__0[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \pair_sum[5][4]_i_2 
       (.I0(\grp_sum_reg[11]_7 [2]),
        .I1(\grp_sum_reg[10]_8 [2]),
        .I2(\grp_sum_reg[11]_7 [0]),
        .I3(\grp_sum_reg[10]_8 [0]),
        .I4(\grp_sum_reg[10]_8 [1]),
        .I5(\grp_sum_reg[11]_7 [1]),
        .O(\pair_sum[5][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pair_sum[6][0]_i_1 
       (.I0(\grp_sum_reg[12]_4 [0]),
        .I1(\grp_sum_reg[13]_3 [0]),
        .O(p_27_out__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \pair_sum[6][1]_i_1 
       (.I0(\grp_sum_reg[12]_4 [0]),
        .I1(\grp_sum_reg[13]_3 [0]),
        .I2(\grp_sum_reg[13]_3 [1]),
        .I3(\grp_sum_reg[12]_4 [1]),
        .O(p_27_out__0[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \pair_sum[6][2]_i_1 
       (.I0(\grp_sum_reg[13]_3 [0]),
        .I1(\grp_sum_reg[12]_4 [0]),
        .I2(\grp_sum_reg[12]_4 [1]),
        .I3(\grp_sum_reg[13]_3 [1]),
        .I4(\grp_sum_reg[13]_3 [2]),
        .I5(\grp_sum_reg[12]_4 [2]),
        .O(p_27_out__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \pair_sum[6][3]_i_1 
       (.I0(\pair_sum[6][4]_i_2_n_0 ),
        .I1(\grp_sum_reg[13]_3 [3]),
        .I2(\grp_sum_reg[12]_4 [3]),
        .O(p_27_out__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pair_sum[6][4]_i_1 
       (.I0(\grp_sum_reg[13]_3 [3]),
        .I1(\grp_sum_reg[12]_4 [3]),
        .I2(\pair_sum[6][4]_i_2_n_0 ),
        .O(p_27_out__0[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \pair_sum[6][4]_i_2 
       (.I0(\grp_sum_reg[13]_3 [2]),
        .I1(\grp_sum_reg[12]_4 [2]),
        .I2(\grp_sum_reg[13]_3 [0]),
        .I3(\grp_sum_reg[12]_4 [0]),
        .I4(\grp_sum_reg[12]_4 [1]),
        .I5(\grp_sum_reg[13]_3 [1]),
        .O(\pair_sum[6][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pair_sum[7][0]_i_1 
       (.I0(\grp_sum_reg[14]_1 [0]),
        .I1(\grp_sum_reg[15]_0 [0]),
        .O(p_24_out__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \pair_sum[7][1]_i_1 
       (.I0(\grp_sum_reg[14]_1 [0]),
        .I1(\grp_sum_reg[15]_0 [0]),
        .I2(\grp_sum_reg[15]_0 [1]),
        .I3(\grp_sum_reg[14]_1 [1]),
        .O(p_24_out__0[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \pair_sum[7][2]_i_1 
       (.I0(\grp_sum_reg[15]_0 [0]),
        .I1(\grp_sum_reg[14]_1 [0]),
        .I2(\grp_sum_reg[14]_1 [1]),
        .I3(\grp_sum_reg[15]_0 [1]),
        .I4(\grp_sum_reg[15]_0 [2]),
        .I5(\grp_sum_reg[14]_1 [2]),
        .O(p_24_out__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \pair_sum[7][3]_i_1 
       (.I0(\pair_sum[7][4]_i_2_n_0 ),
        .I1(\grp_sum_reg[15]_0 [3]),
        .I2(\grp_sum_reg[14]_1 [3]),
        .O(p_24_out__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pair_sum[7][4]_i_1 
       (.I0(\grp_sum_reg[15]_0 [3]),
        .I1(\grp_sum_reg[14]_1 [3]),
        .I2(\pair_sum[7][4]_i_2_n_0 ),
        .O(p_24_out__0[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \pair_sum[7][4]_i_2 
       (.I0(\grp_sum_reg[15]_0 [2]),
        .I1(\grp_sum_reg[14]_1 [2]),
        .I2(\grp_sum_reg[15]_0 [0]),
        .I3(\grp_sum_reg[14]_1 [0]),
        .I4(\grp_sum_reg[14]_1 [1]),
        .I5(\grp_sum_reg[15]_0 [1]),
        .O(\pair_sum[7][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pair_sum[8][0]_i_1 
       (.I0(\grp_sum_reg[16]_26 [0]),
        .I1(\grp_sum_reg[17]_25 [0]),
        .O(p_21_out__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \pair_sum[8][1]_i_1 
       (.I0(\grp_sum_reg[16]_26 [0]),
        .I1(\grp_sum_reg[17]_25 [0]),
        .I2(\grp_sum_reg[17]_25 [1]),
        .I3(\grp_sum_reg[16]_26 [1]),
        .O(p_21_out__0[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \pair_sum[8][2]_i_1 
       (.I0(\grp_sum_reg[17]_25 [0]),
        .I1(\grp_sum_reg[16]_26 [0]),
        .I2(\grp_sum_reg[16]_26 [1]),
        .I3(\grp_sum_reg[17]_25 [1]),
        .I4(\grp_sum_reg[17]_25 [2]),
        .I5(\grp_sum_reg[16]_26 [2]),
        .O(p_21_out__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \pair_sum[8][3]_i_1 
       (.I0(\pair_sum[8][4]_i_2_n_0 ),
        .I1(\grp_sum_reg[17]_25 [3]),
        .I2(\grp_sum_reg[16]_26 [3]),
        .O(p_21_out__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pair_sum[8][4]_i_1 
       (.I0(\grp_sum_reg[17]_25 [3]),
        .I1(\grp_sum_reg[16]_26 [3]),
        .I2(\pair_sum[8][4]_i_2_n_0 ),
        .O(p_21_out__0[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \pair_sum[8][4]_i_2 
       (.I0(\grp_sum_reg[17]_25 [2]),
        .I1(\grp_sum_reg[16]_26 [2]),
        .I2(\grp_sum_reg[17]_25 [0]),
        .I3(\grp_sum_reg[16]_26 [0]),
        .I4(\grp_sum_reg[16]_26 [1]),
        .I5(\grp_sum_reg[17]_25 [1]),
        .O(\pair_sum[8][4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pair_sum[9][0]_i_1 
       (.I0(\grp_sum_reg[18]_23 [0]),
        .I1(\grp_sum_reg[19]_22 [0]),
        .O(p_18_out__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \pair_sum[9][1]_i_1 
       (.I0(\grp_sum_reg[18]_23 [0]),
        .I1(\grp_sum_reg[19]_22 [0]),
        .I2(\grp_sum_reg[19]_22 [1]),
        .I3(\grp_sum_reg[18]_23 [1]),
        .O(p_18_out__0[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \pair_sum[9][2]_i_1 
       (.I0(\grp_sum_reg[19]_22 [0]),
        .I1(\grp_sum_reg[18]_23 [0]),
        .I2(\grp_sum_reg[18]_23 [1]),
        .I3(\grp_sum_reg[19]_22 [1]),
        .I4(\grp_sum_reg[19]_22 [2]),
        .I5(\grp_sum_reg[18]_23 [2]),
        .O(p_18_out__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \pair_sum[9][3]_i_1 
       (.I0(\pair_sum[9][4]_i_2_n_0 ),
        .I1(\grp_sum_reg[19]_22 [3]),
        .I2(\grp_sum_reg[18]_23 [3]),
        .O(p_18_out__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \pair_sum[9][4]_i_1 
       (.I0(\grp_sum_reg[19]_22 [3]),
        .I1(\grp_sum_reg[18]_23 [3]),
        .I2(\pair_sum[9][4]_i_2_n_0 ),
        .O(p_18_out__0[4]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \pair_sum[9][4]_i_2 
       (.I0(\grp_sum_reg[19]_22 [2]),
        .I1(\grp_sum_reg[18]_23 [2]),
        .I2(\grp_sum_reg[19]_22 [0]),
        .I3(\grp_sum_reg[18]_23 [0]),
        .I4(\grp_sum_reg[18]_23 [1]),
        .I5(\grp_sum_reg[19]_22 [1]),
        .O(\pair_sum[9][4]_i_2_n_0 ));
  FDRE \pair_sum_reg[0][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_45_out__0[0]),
        .Q(\pair_sum_reg[0]_57 [0]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[0][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_45_out__0[1]),
        .Q(\pair_sum_reg[0]_57 [1]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[0][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_45_out__0[2]),
        .Q(\pair_sum_reg[0]_57 [2]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[0][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_45_out__0[3]),
        .Q(\pair_sum_reg[0]_57 [3]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[0][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_45_out__0[4]),
        .Q(\pair_sum_reg[0]_57 [4]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[10][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_15_out_inferred__0/pair_sum[10][0]_i_1_n_0 ),
        .Q(\pair_sum_reg[10]_20 [0]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[10][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_15_out_inferred__0/pair_sum[10][1]_i_1_n_0 ),
        .Q(\pair_sum_reg[10]_20 [1]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[10][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_15_out_inferred__0/pair_sum[10][2]_i_1_n_0 ),
        .Q(\pair_sum_reg[10]_20 [2]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[10][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_15_out_inferred__0/pair_sum[10][3]_i_1_n_0 ),
        .Q(\pair_sum_reg[10]_20 [3]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[10][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_15_out_inferred__0/pair_sum[10][4]_i_1_n_0 ),
        .Q(\pair_sum_reg[10]_20 [4]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[11][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_12_out_inferred__0/pair_sum[11][0]_i_1_n_0 ),
        .Q(\pair_sum_reg[11]_17 [0]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[11][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_12_out_inferred__0/pair_sum[11][1]_i_1_n_0 ),
        .Q(\pair_sum_reg[11]_17 [1]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[11][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_12_out_inferred__0/pair_sum[11][2]_i_1_n_0 ),
        .Q(\pair_sum_reg[11]_17 [2]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[11][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_12_out_inferred__0/pair_sum[11][3]_i_1_n_0 ),
        .Q(\pair_sum_reg[11]_17 [3]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[11][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_12_out_inferred__0/pair_sum[11][4]_i_1_n_0 ),
        .Q(\pair_sum_reg[11]_17 [4]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[12][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_9_out_inferred__0/pair_sum[12][0]_i_1_n_0 ),
        .Q(\pair_sum_reg[12]_42 [0]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[12][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_9_out_inferred__0/pair_sum[12][1]_i_1_n_0 ),
        .Q(\pair_sum_reg[12]_42 [1]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[12][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_9_out_inferred__0/pair_sum[12][2]_i_1_n_0 ),
        .Q(\pair_sum_reg[12]_42 [2]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[12][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_9_out_inferred__0/pair_sum[12][3]_i_1_n_0 ),
        .Q(\pair_sum_reg[12]_42 [3]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[12][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_9_out_inferred__0/pair_sum[12][4]_i_1_n_0 ),
        .Q(\pair_sum_reg[12]_42 [4]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[13][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_6_out_inferred__1/pair_sum[13][0]_i_1_n_0 ),
        .Q(\pair_sum_reg[13]_39 [0]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[13][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_6_out_inferred__1/pair_sum[13][1]_i_1_n_0 ),
        .Q(\pair_sum_reg[13]_39 [1]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[13][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_6_out_inferred__1/pair_sum[13][2]_i_1_n_0 ),
        .Q(\pair_sum_reg[13]_39 [2]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[13][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_6_out_inferred__1/pair_sum[13][3]_i_1_n_0 ),
        .Q(\pair_sum_reg[13]_39 [3]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[13][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_6_out_inferred__1/pair_sum[13][4]_i_1_n_0 ),
        .Q(\pair_sum_reg[13]_39 [4]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[14][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_3_out_inferred__0/pair_sum[14][0]_i_1_n_0 ),
        .Q(\pair_sum_reg[14]_35 [0]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[14][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_3_out_inferred__0/pair_sum[14][1]_i_1_n_0 ),
        .Q(\pair_sum_reg[14]_35 [1]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[14][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_3_out_inferred__0/pair_sum[14][2]_i_1_n_0 ),
        .Q(\pair_sum_reg[14]_35 [2]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[14][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_3_out_inferred__0/pair_sum[14][3]_i_1_n_0 ),
        .Q(\pair_sum_reg[14]_35 [3]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[14][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_3_out_inferred__0/pair_sum[14][4]_i_1_n_0 ),
        .Q(\pair_sum_reg[14]_35 [4]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[15][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(\pair_sum_reg[15]_32 [0]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[15][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(\pair_sum_reg[15]_32 [1]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[15][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_0_out[2]),
        .Q(\pair_sum_reg[15]_32 [2]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[15][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_0_out[3]),
        .Q(\pair_sum_reg[15]_32 [3]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[15][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_0_out[4]),
        .Q(\pair_sum_reg[15]_32 [4]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[1][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_42_out__0[0]),
        .Q(\pair_sum_reg[1]_54 [0]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[1][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_42_out__0[1]),
        .Q(\pair_sum_reg[1]_54 [1]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[1][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_42_out__0[2]),
        .Q(\pair_sum_reg[1]_54 [2]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[1][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_42_out__0[3]),
        .Q(\pair_sum_reg[1]_54 [3]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[1][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_42_out__0[4]),
        .Q(\pair_sum_reg[1]_54 [4]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[2][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_39_out__0[0]),
        .Q(\pair_sum_reg[2]_50 [0]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[2][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_39_out__0[1]),
        .Q(\pair_sum_reg[2]_50 [1]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[2][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_39_out__0[2]),
        .Q(\pair_sum_reg[2]_50 [2]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[2][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_39_out__0[3]),
        .Q(\pair_sum_reg[2]_50 [3]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[2][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_39_out__0[4]),
        .Q(\pair_sum_reg[2]_50 [4]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[3][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_36_out__0[0]),
        .Q(\pair_sum_reg[3]_47 [0]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[3][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_36_out__0[1]),
        .Q(\pair_sum_reg[3]_47 [1]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[3][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_36_out__0[2]),
        .Q(\pair_sum_reg[3]_47 [2]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[3][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_36_out__0[3]),
        .Q(\pair_sum_reg[3]_47 [3]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[3][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_36_out__0[4]),
        .Q(\pair_sum_reg[3]_47 [4]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[4][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_33_out__0[0]),
        .Q(\pair_sum_reg[4]_12 [0]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[4][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_33_out__0[1]),
        .Q(\pair_sum_reg[4]_12 [1]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[4][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_33_out__0[2]),
        .Q(\pair_sum_reg[4]_12 [2]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[4][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_33_out__0[3]),
        .Q(\pair_sum_reg[4]_12 [3]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[4][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_33_out__0[4]),
        .Q(\pair_sum_reg[4]_12 [4]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[5][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_30_out__0[0]),
        .Q(\pair_sum_reg[5]_9 [0]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[5][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_30_out__0[1]),
        .Q(\pair_sum_reg[5]_9 [1]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[5][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_30_out__0[2]),
        .Q(\pair_sum_reg[5]_9 [2]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[5][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_30_out__0[3]),
        .Q(\pair_sum_reg[5]_9 [3]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[5][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_30_out__0[4]),
        .Q(\pair_sum_reg[5]_9 [4]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[6][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_27_out__0[0]),
        .Q(\pair_sum_reg[6]_5 [0]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[6][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_27_out__0[1]),
        .Q(\pair_sum_reg[6]_5 [1]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[6][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_27_out__0[2]),
        .Q(\pair_sum_reg[6]_5 [2]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[6][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_27_out__0[3]),
        .Q(\pair_sum_reg[6]_5 [3]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[6][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_27_out__0[4]),
        .Q(\pair_sum_reg[6]_5 [4]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[7][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_24_out__0[0]),
        .Q(\pair_sum_reg[7]_2 [0]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[7][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_24_out__0[1]),
        .Q(\pair_sum_reg[7]_2 [1]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[7][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_24_out__0[2]),
        .Q(\pair_sum_reg[7]_2 [2]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[7][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_24_out__0[3]),
        .Q(\pair_sum_reg[7]_2 [3]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[7][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_24_out__0[4]),
        .Q(\pair_sum_reg[7]_2 [4]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[8][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_21_out__0[0]),
        .Q(\pair_sum_reg[8]_27 [0]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[8][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_21_out__0[1]),
        .Q(\pair_sum_reg[8]_27 [1]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[8][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_21_out__0[2]),
        .Q(\pair_sum_reg[8]_27 [2]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[8][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_21_out__0[3]),
        .Q(\pair_sum_reg[8]_27 [3]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[8][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_21_out__0[4]),
        .Q(\pair_sum_reg[8]_27 [4]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[9][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_18_out__0[0]),
        .Q(\pair_sum_reg[9]_24 [0]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[9][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_18_out__0[1]),
        .Q(\pair_sum_reg[9]_24 [1]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[9][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_18_out__0[2]),
        .Q(\pair_sum_reg[9]_24 [2]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[9][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_18_out__0[3]),
        .Q(\pair_sum_reg[9]_24 [3]),
        .R(p_0_in__0));
  FDRE \pair_sum_reg[9][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_18_out__0[4]),
        .Q(\pair_sum_reg[9]_24 [4]),
        .R(p_0_in__0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \quad_sum[2][0]_i_1 
       (.I0(\pair_sum_reg[4]_12 [0]),
        .I1(\pair_sum_reg[5]_9 [0]),
        .O(p_15_out__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \quad_sum[2][1]_i_1 
       (.I0(\pair_sum_reg[4]_12 [0]),
        .I1(\pair_sum_reg[5]_9 [0]),
        .I2(\pair_sum_reg[5]_9 [1]),
        .I3(\pair_sum_reg[4]_12 [1]),
        .O(p_15_out__0[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \quad_sum[2][2]_i_1 
       (.I0(\pair_sum_reg[5]_9 [0]),
        .I1(\pair_sum_reg[4]_12 [0]),
        .I2(\pair_sum_reg[4]_12 [1]),
        .I3(\pair_sum_reg[5]_9 [1]),
        .I4(\pair_sum_reg[5]_9 [2]),
        .I5(\pair_sum_reg[4]_12 [2]),
        .O(p_15_out__0[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \quad_sum[2][3]_i_1 
       (.I0(\quad_sum[2][5]_i_2_n_0 ),
        .I1(\pair_sum_reg[5]_9 [3]),
        .I2(\pair_sum_reg[4]_12 [3]),
        .O(p_15_out__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \quad_sum[2][4]_i_1 
       (.I0(\quad_sum[2][5]_i_2_n_0 ),
        .I1(\pair_sum_reg[4]_12 [3]),
        .I2(\pair_sum_reg[5]_9 [3]),
        .I3(\pair_sum_reg[5]_9 [4]),
        .I4(\pair_sum_reg[4]_12 [4]),
        .O(p_15_out__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \quad_sum[2][5]_i_1 
       (.I0(\pair_sum_reg[5]_9 [4]),
        .I1(\pair_sum_reg[4]_12 [4]),
        .I2(\quad_sum[2][5]_i_2_n_0 ),
        .I3(\pair_sum_reg[4]_12 [3]),
        .I4(\pair_sum_reg[5]_9 [3]),
        .O(p_15_out__0[5]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \quad_sum[2][5]_i_2 
       (.I0(\pair_sum_reg[5]_9 [2]),
        .I1(\pair_sum_reg[4]_12 [2]),
        .I2(\pair_sum_reg[5]_9 [0]),
        .I3(\pair_sum_reg[4]_12 [0]),
        .I4(\pair_sum_reg[4]_12 [1]),
        .I5(\pair_sum_reg[5]_9 [1]),
        .O(\quad_sum[2][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \quad_sum[3][0]_i_1 
       (.I0(\pair_sum_reg[6]_5 [0]),
        .I1(\pair_sum_reg[7]_2 [0]),
        .O(p_12_out__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \quad_sum[3][1]_i_1 
       (.I0(\pair_sum_reg[6]_5 [0]),
        .I1(\pair_sum_reg[7]_2 [0]),
        .I2(\pair_sum_reg[7]_2 [1]),
        .I3(\pair_sum_reg[6]_5 [1]),
        .O(p_12_out__0[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \quad_sum[3][2]_i_1 
       (.I0(\pair_sum_reg[7]_2 [0]),
        .I1(\pair_sum_reg[6]_5 [0]),
        .I2(\pair_sum_reg[6]_5 [1]),
        .I3(\pair_sum_reg[7]_2 [1]),
        .I4(\pair_sum_reg[7]_2 [2]),
        .I5(\pair_sum_reg[6]_5 [2]),
        .O(p_12_out__0[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \quad_sum[3][3]_i_1 
       (.I0(\quad_sum[3][5]_i_2_n_0 ),
        .I1(\pair_sum_reg[7]_2 [3]),
        .I2(\pair_sum_reg[6]_5 [3]),
        .O(p_12_out__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \quad_sum[3][4]_i_1 
       (.I0(\quad_sum[3][5]_i_2_n_0 ),
        .I1(\pair_sum_reg[6]_5 [3]),
        .I2(\pair_sum_reg[7]_2 [3]),
        .I3(\pair_sum_reg[7]_2 [4]),
        .I4(\pair_sum_reg[6]_5 [4]),
        .O(p_12_out__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \quad_sum[3][5]_i_1 
       (.I0(\pair_sum_reg[7]_2 [4]),
        .I1(\pair_sum_reg[6]_5 [4]),
        .I2(\quad_sum[3][5]_i_2_n_0 ),
        .I3(\pair_sum_reg[6]_5 [3]),
        .I4(\pair_sum_reg[7]_2 [3]),
        .O(p_12_out__0[5]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \quad_sum[3][5]_i_2 
       (.I0(\pair_sum_reg[7]_2 [2]),
        .I1(\pair_sum_reg[6]_5 [2]),
        .I2(\pair_sum_reg[7]_2 [0]),
        .I3(\pair_sum_reg[6]_5 [0]),
        .I4(\pair_sum_reg[6]_5 [1]),
        .I5(\pair_sum_reg[7]_2 [1]),
        .O(\quad_sum[3][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \quad_sum[4][0]_i_1 
       (.I0(\pair_sum_reg[8]_27 [0]),
        .I1(\pair_sum_reg[9]_24 [0]),
        .O(p_9_out__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \quad_sum[4][1]_i_1 
       (.I0(\pair_sum_reg[8]_27 [0]),
        .I1(\pair_sum_reg[9]_24 [0]),
        .I2(\pair_sum_reg[9]_24 [1]),
        .I3(\pair_sum_reg[8]_27 [1]),
        .O(p_9_out__0[1]));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    \quad_sum[4][2]_i_1 
       (.I0(\pair_sum_reg[9]_24 [0]),
        .I1(\pair_sum_reg[8]_27 [0]),
        .I2(\pair_sum_reg[8]_27 [1]),
        .I3(\pair_sum_reg[9]_24 [1]),
        .I4(\pair_sum_reg[9]_24 [2]),
        .I5(\pair_sum_reg[8]_27 [2]),
        .O(p_9_out__0[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \quad_sum[4][3]_i_1 
       (.I0(\quad_sum[4][5]_i_2_n_0 ),
        .I1(\pair_sum_reg[9]_24 [3]),
        .I2(\pair_sum_reg[8]_27 [3]),
        .O(p_9_out__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \quad_sum[4][4]_i_1 
       (.I0(\quad_sum[4][5]_i_2_n_0 ),
        .I1(\pair_sum_reg[8]_27 [3]),
        .I2(\pair_sum_reg[9]_24 [3]),
        .I3(\pair_sum_reg[9]_24 [4]),
        .I4(\pair_sum_reg[8]_27 [4]),
        .O(p_9_out__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \quad_sum[4][5]_i_1 
       (.I0(\pair_sum_reg[9]_24 [4]),
        .I1(\pair_sum_reg[8]_27 [4]),
        .I2(\quad_sum[4][5]_i_2_n_0 ),
        .I3(\pair_sum_reg[8]_27 [3]),
        .I4(\pair_sum_reg[9]_24 [3]),
        .O(p_9_out__0[5]));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    \quad_sum[4][5]_i_2 
       (.I0(\pair_sum_reg[9]_24 [2]),
        .I1(\pair_sum_reg[8]_27 [2]),
        .I2(\pair_sum_reg[9]_24 [0]),
        .I3(\pair_sum_reg[8]_27 [0]),
        .I4(\pair_sum_reg[8]_27 [1]),
        .I5(\pair_sum_reg[9]_24 [1]),
        .O(\quad_sum[4][5]_i_2_n_0 ));
  FDRE \quad_sum_reg[0][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_21_out_inferred__0/quad_sum[0][0]_i_1_n_0 ),
        .Q(\quad_sum_reg[0]_58 [0]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[0][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_21_out_inferred__0/quad_sum[0][1]_i_1_n_0 ),
        .Q(\quad_sum_reg[0]_58 [1]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[0][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_21_out_inferred__0/quad_sum[0][2]_i_1_n_0 ),
        .Q(\quad_sum_reg[0]_58 [2]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[0][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_21_out_inferred__0/quad_sum[0][3]_i_1_n_0 ),
        .Q(\quad_sum_reg[0]_58 [3]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[0][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_21_out_inferred__0/quad_sum[0][4]_i_1_n_0 ),
        .Q(\quad_sum_reg[0]_58 [4]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[0][5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_21_out_inferred__0/quad_sum[0][5]_i_1_n_0 ),
        .Q(\quad_sum_reg[0]_58 [5]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[1][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_18_out_inferred__0/quad_sum[1][0]_i_1_n_0 ),
        .Q(\quad_sum_reg[1]_51 [0]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[1][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_18_out_inferred__0/quad_sum[1][1]_i_1_n_0 ),
        .Q(\quad_sum_reg[1]_51 [1]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[1][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_18_out_inferred__0/quad_sum[1][2]_i_1_n_0 ),
        .Q(\quad_sum_reg[1]_51 [2]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[1][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_18_out_inferred__0/quad_sum[1][3]_i_1_n_0 ),
        .Q(\quad_sum_reg[1]_51 [3]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[1][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_18_out_inferred__0/quad_sum[1][4]_i_1_n_0 ),
        .Q(\quad_sum_reg[1]_51 [4]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[1][5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_18_out_inferred__0/quad_sum[1][5]_i_1_n_0 ),
        .Q(\quad_sum_reg[1]_51 [5]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[2][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_15_out__0[0]),
        .Q(\quad_sum_reg[2]_13 [0]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[2][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_15_out__0[1]),
        .Q(\quad_sum_reg[2]_13 [1]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[2][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_15_out__0[2]),
        .Q(\quad_sum_reg[2]_13 [2]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[2][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_15_out__0[3]),
        .Q(\quad_sum_reg[2]_13 [3]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[2][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_15_out__0[4]),
        .Q(\quad_sum_reg[2]_13 [4]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[2][5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_15_out__0[5]),
        .Q(\quad_sum_reg[2]_13 [5]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[3][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_12_out__0[0]),
        .Q(\quad_sum_reg[3]_6 [0]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[3][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_12_out__0[1]),
        .Q(\quad_sum_reg[3]_6 [1]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[3][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_12_out__0[2]),
        .Q(\quad_sum_reg[3]_6 [2]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[3][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_12_out__0[3]),
        .Q(\quad_sum_reg[3]_6 [3]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[3][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_12_out__0[4]),
        .Q(\quad_sum_reg[3]_6 [4]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[3][5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_12_out__0[5]),
        .Q(\quad_sum_reg[3]_6 [5]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[4][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_9_out__0[0]),
        .Q(\quad_sum_reg[4]_28 [0]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[4][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_9_out__0[1]),
        .Q(\quad_sum_reg[4]_28 [1]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[4][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_9_out__0[2]),
        .Q(\quad_sum_reg[4]_28 [2]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[4][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_9_out__0[3]),
        .Q(\quad_sum_reg[4]_28 [3]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[4][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_9_out__0[4]),
        .Q(\quad_sum_reg[4]_28 [4]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[4][5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_9_out__0[5]),
        .Q(\quad_sum_reg[4]_28 [5]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[5][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_6_out_inferred__0/quad_sum[5][0]_i_1_n_0 ),
        .Q(\quad_sum_reg[5]_21 [0]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[5][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_6_out_inferred__0/quad_sum[5][1]_i_1_n_0 ),
        .Q(\quad_sum_reg[5]_21 [1]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[5][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_6_out_inferred__0/quad_sum[5][2]_i_1_n_0 ),
        .Q(\quad_sum_reg[5]_21 [2]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[5][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_6_out_inferred__0/quad_sum[5][3]_i_1_n_0 ),
        .Q(\quad_sum_reg[5]_21 [3]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[5][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_6_out_inferred__0/quad_sum[5][4]_i_1_n_0 ),
        .Q(\quad_sum_reg[5]_21 [4]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[5][5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_6_out_inferred__0/quad_sum[5][5]_i_1_n_0 ),
        .Q(\quad_sum_reg[5]_21 [5]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[6][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_3_out_inferred__1/quad_sum[6][0]_i_1_n_0 ),
        .Q(\quad_sum_reg[6]_43 [0]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[6][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_3_out_inferred__1/quad_sum[6][1]_i_1_n_0 ),
        .Q(\quad_sum_reg[6]_43 [1]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[6][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_3_out_inferred__1/quad_sum[6][2]_i_1_n_0 ),
        .Q(\quad_sum_reg[6]_43 [2]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[6][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_3_out_inferred__1/quad_sum[6][3]_i_1_n_0 ),
        .Q(\quad_sum_reg[6]_43 [3]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[6][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_3_out_inferred__1/quad_sum[6][4]_i_1_n_0 ),
        .Q(\quad_sum_reg[6]_43 [4]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[6][5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_3_out_inferred__1/quad_sum[6][5]_i_1_n_0 ),
        .Q(\quad_sum_reg[6]_43 [5]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[7][0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_0_out_inferred__1/quad_sum[7][0]_i_1_n_0 ),
        .Q(\quad_sum_reg[7]_36 [0]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[7][1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_0_out_inferred__1/quad_sum[7][1]_i_1_n_0 ),
        .Q(\quad_sum_reg[7]_36 [1]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[7][2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_0_out_inferred__1/quad_sum[7][2]_i_1_n_0 ),
        .Q(\quad_sum_reg[7]_36 [2]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[7][3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_0_out_inferred__1/quad_sum[7][3]_i_1_n_0 ),
        .Q(\quad_sum_reg[7]_36 [3]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[7][4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_0_out_inferred__1/quad_sum[7][4]_i_1_n_0 ),
        .Q(\quad_sum_reg[7]_36 [4]),
        .R(p_0_in__0));
  FDRE \quad_sum_reg[7][5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\p_0_out_inferred__1/quad_sum[7][5]_i_1_n_0 ),
        .Q(\quad_sum_reg[7]_36 [5]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[0]),
        .Q(tap_reg[0]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[100] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[100]),
        .Q(tap_reg[100]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[101] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[101]),
        .Q(tap_reg[101]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[102] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[102]),
        .Q(tap_reg[102]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[103] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[103]),
        .Q(tap_reg[103]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[104] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[104]),
        .Q(tap_reg[104]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[105] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[105]),
        .Q(tap_reg[105]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[106] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[106]),
        .Q(tap_reg[106]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[107] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[107]),
        .Q(tap_reg[107]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[108] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[108]),
        .Q(tap_reg[108]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[109] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[109]),
        .Q(tap_reg[109]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[10] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[10]),
        .Q(tap_reg[10]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[110] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[110]),
        .Q(tap_reg[110]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[111] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[111]),
        .Q(tap_reg[111]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[112] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[112]),
        .Q(tap_reg[112]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[113] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[113]),
        .Q(tap_reg[113]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[114] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[114]),
        .Q(tap_reg[114]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[115] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[115]),
        .Q(tap_reg[115]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[116] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[116]),
        .Q(tap_reg[116]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[117] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[117]),
        .Q(tap_reg[117]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[118] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[118]),
        .Q(tap_reg[118]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[119] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[119]),
        .Q(tap_reg[119]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[11] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[11]),
        .Q(tap_reg[11]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[120] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[120]),
        .Q(tap_reg[120]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[121] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[121]),
        .Q(tap_reg[121]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[122] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[122]),
        .Q(tap_reg[122]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[123] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[123]),
        .Q(tap_reg[123]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[124] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[124]),
        .Q(tap_reg[124]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[125] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[125]),
        .Q(tap_reg[125]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[126] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[126]),
        .Q(tap_reg[126]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[127] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[127]),
        .Q(tap_reg[127]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[128] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[128]),
        .Q(tap_reg[128]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[129] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[129]),
        .Q(tap_reg[129]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[12] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[12]),
        .Q(tap_reg[12]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[130] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[130]),
        .Q(tap_reg[130]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[131] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[131]),
        .Q(tap_reg[131]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[132] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[132]),
        .Q(tap_reg[132]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[133] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[133]),
        .Q(tap_reg[133]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[134] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[134]),
        .Q(tap_reg[134]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[135] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[135]),
        .Q(tap_reg[135]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[136] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[136]),
        .Q(tap_reg[136]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[137] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[137]),
        .Q(tap_reg[137]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[138] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[138]),
        .Q(tap_reg[138]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[139] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[139]),
        .Q(tap_reg[139]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[13] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[13]),
        .Q(tap_reg[13]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[140] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[140]),
        .Q(tap_reg[140]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[141] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[141]),
        .Q(tap_reg[141]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[142] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[142]),
        .Q(tap_reg[142]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[143] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[143]),
        .Q(tap_reg[143]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[144] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[144]),
        .Q(tap_reg[144]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[145] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[145]),
        .Q(tap_reg[145]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[146] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[146]),
        .Q(tap_reg[146]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[147] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[147]),
        .Q(tap_reg[147]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[148] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[148]),
        .Q(tap_reg[148]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[149] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[149]),
        .Q(tap_reg[149]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[14] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[14]),
        .Q(tap_reg[14]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[150] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[150]),
        .Q(tap_reg[150]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[151] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[151]),
        .Q(tap_reg[151]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[152] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[152]),
        .Q(tap_reg[152]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[153] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[153]),
        .Q(tap_reg[153]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[154] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[154]),
        .Q(tap_reg[154]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[155] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[155]),
        .Q(tap_reg[155]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[156] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[156]),
        .Q(tap_reg[156]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[157] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[157]),
        .Q(tap_reg[157]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[158] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[158]),
        .Q(tap_reg[158]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[159] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[159]),
        .Q(tap_reg[159]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[15] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[15]),
        .Q(tap_reg[15]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[160] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[160]),
        .Q(tap_reg[160]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[161] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[161]),
        .Q(tap_reg[161]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[162] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[162]),
        .Q(tap_reg[162]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[163] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[163]),
        .Q(tap_reg[163]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[164] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[164]),
        .Q(tap_reg[164]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[165] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[165]),
        .Q(tap_reg[165]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[166] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[166]),
        .Q(tap_reg[166]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[167] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[167]),
        .Q(tap_reg[167]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[168] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[168]),
        .Q(tap_reg[168]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[169] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[169]),
        .Q(tap_reg[169]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[16] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[16]),
        .Q(tap_reg[16]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[170] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[170]),
        .Q(tap_reg[170]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[171] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[171]),
        .Q(tap_reg[171]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[172] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[172]),
        .Q(tap_reg[172]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[173] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[173]),
        .Q(tap_reg[173]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[174] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[174]),
        .Q(tap_reg[174]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[175] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[175]),
        .Q(tap_reg[175]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[176] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[176]),
        .Q(tap_reg[176]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[177] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[177]),
        .Q(tap_reg[177]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[178] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[178]),
        .Q(tap_reg[178]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[179] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[179]),
        .Q(tap_reg[179]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[17] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[17]),
        .Q(tap_reg[17]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[180] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[180]),
        .Q(tap_reg[180]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[181] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[181]),
        .Q(tap_reg[181]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[182] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[182]),
        .Q(tap_reg[182]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[183] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[183]),
        .Q(tap_reg[183]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[184] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[184]),
        .Q(tap_reg[184]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[185] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[185]),
        .Q(tap_reg[185]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[186] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[186]),
        .Q(tap_reg[186]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[187] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[187]),
        .Q(tap_reg[187]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[188] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[188]),
        .Q(tap_reg[188]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[189] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[189]),
        .Q(tap_reg[189]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[18] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[18]),
        .Q(tap_reg[18]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[190] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[190]),
        .Q(tap_reg[190]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[191] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[191]),
        .Q(tap_reg[191]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[192] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[192]),
        .Q(tap_reg[192]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[193] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[193]),
        .Q(tap_reg[193]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[194] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[194]),
        .Q(tap_reg[194]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[195] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[195]),
        .Q(tap_reg[195]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[196] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[196]),
        .Q(tap_reg[196]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[197] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[197]),
        .Q(tap_reg[197]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[198] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[198]),
        .Q(tap_reg[198]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[199] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[199]),
        .Q(tap_reg[199]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[19] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[19]),
        .Q(tap_reg[19]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[1]),
        .Q(tap_reg[1]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[200] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[200]),
        .Q(tap_reg[200]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[201] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[201]),
        .Q(tap_reg[201]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[202] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[202]),
        .Q(tap_reg[202]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[203] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[203]),
        .Q(tap_reg[203]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[204] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[204]),
        .Q(tap_reg[204]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[205] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[205]),
        .Q(tap_reg[205]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[206] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[206]),
        .Q(tap_reg[206]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[207] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[207]),
        .Q(tap_reg[207]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[208] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[208]),
        .Q(tap_reg[208]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[209] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[209]),
        .Q(tap_reg[209]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[20] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[20]),
        .Q(tap_reg[20]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[210] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[210]),
        .Q(tap_reg[210]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[211] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[211]),
        .Q(tap_reg[211]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[212] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[212]),
        .Q(tap_reg[212]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[213] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[213]),
        .Q(tap_reg[213]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[214] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[214]),
        .Q(tap_reg[214]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[215] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[215]),
        .Q(tap_reg[215]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[216] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[216]),
        .Q(tap_reg[216]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[217] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[217]),
        .Q(tap_reg[217]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[218] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[218]),
        .Q(tap_reg[218]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[219] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[219]),
        .Q(tap_reg[219]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[21] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[21]),
        .Q(tap_reg[21]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[220] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[220]),
        .Q(tap_reg[220]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[221] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[221]),
        .Q(tap_reg[221]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[222] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[222]),
        .Q(tap_reg[222]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[223] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[223]),
        .Q(tap_reg[223]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[224] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[224]),
        .Q(tap_reg[224]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[225] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[225]),
        .Q(tap_reg[225]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[226] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[226]),
        .Q(tap_reg[226]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[227] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[227]),
        .Q(tap_reg[227]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[228] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[228]),
        .Q(tap_reg[228]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[229] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[229]),
        .Q(tap_reg[229]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[22] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[22]),
        .Q(tap_reg[22]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[230] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[230]),
        .Q(tap_reg[230]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[231] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[231]),
        .Q(tap_reg[231]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[232] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[232]),
        .Q(tap_reg[232]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[233] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[233]),
        .Q(tap_reg[233]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[234] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[234]),
        .Q(tap_reg[234]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[235] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[235]),
        .Q(tap_reg[235]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[236] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[236]),
        .Q(tap_reg[236]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[237] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[237]),
        .Q(tap_reg[237]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[238] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[238]),
        .Q(tap_reg[238]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[239] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[239]),
        .Q(tap_reg[239]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[23] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[23]),
        .Q(tap_reg[23]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[240] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[240]),
        .Q(tap_reg[240]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[241] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[241]),
        .Q(tap_reg[241]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[242] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[242]),
        .Q(tap_reg[242]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[243] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[243]),
        .Q(tap_reg[243]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[244] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[244]),
        .Q(tap_reg[244]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[245] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[245]),
        .Q(tap_reg[245]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[246] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[246]),
        .Q(tap_reg[246]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[247] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[247]),
        .Q(tap_reg[247]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[248] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[248]),
        .Q(tap_reg[248]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[249] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[249]),
        .Q(tap_reg[249]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[24] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[24]),
        .Q(tap_reg[24]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[250] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[250]),
        .Q(tap_reg[250]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[251] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[251]),
        .Q(tap_reg[251]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[252] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[252]),
        .Q(tap_reg[252]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[253] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[253]),
        .Q(tap_reg[253]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[254] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[254]),
        .Q(tap_reg[254]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[255] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[255]),
        .Q(tap_reg[255]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[25] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[25]),
        .Q(tap_reg[25]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[26] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[26]),
        .Q(tap_reg[26]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[27] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[27]),
        .Q(tap_reg[27]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[28] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[28]),
        .Q(tap_reg[28]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[29] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[29]),
        .Q(tap_reg[29]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[2]),
        .Q(tap_reg[2]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[30] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[30]),
        .Q(tap_reg[30]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[31] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[31]),
        .Q(tap_reg[31]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[32] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[32]),
        .Q(tap_reg[32]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[33] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[33]),
        .Q(tap_reg[33]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[34] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[34]),
        .Q(tap_reg[34]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[35] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[35]),
        .Q(tap_reg[35]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[36] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[36]),
        .Q(tap_reg[36]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[37] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[37]),
        .Q(tap_reg[37]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[38] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[38]),
        .Q(tap_reg[38]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[39] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[39]),
        .Q(tap_reg[39]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[3]),
        .Q(tap_reg[3]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[40] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[40]),
        .Q(tap_reg[40]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[41] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[41]),
        .Q(tap_reg[41]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[42] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[42]),
        .Q(tap_reg[42]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[43] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[43]),
        .Q(tap_reg[43]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[44] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[44]),
        .Q(tap_reg[44]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[45] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[45]),
        .Q(tap_reg[45]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[46] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[46]),
        .Q(tap_reg[46]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[47] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[47]),
        .Q(tap_reg[47]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[48] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[48]),
        .Q(tap_reg[48]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[49] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[49]),
        .Q(tap_reg[49]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[4]),
        .Q(tap_reg[4]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[50] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[50]),
        .Q(tap_reg[50]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[51] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[51]),
        .Q(tap_reg[51]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[52] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[52]),
        .Q(tap_reg[52]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[53] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[53]),
        .Q(tap_reg[53]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[54] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[54]),
        .Q(tap_reg[54]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[55] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[55]),
        .Q(tap_reg[55]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[56] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[56]),
        .Q(tap_reg[56]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[57] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[57]),
        .Q(tap_reg[57]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[58] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[58]),
        .Q(tap_reg[58]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[59] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[59]),
        .Q(tap_reg[59]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[5]),
        .Q(tap_reg[5]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[60] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[60]),
        .Q(tap_reg[60]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[61] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[61]),
        .Q(tap_reg[61]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[62] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[62]),
        .Q(tap_reg[62]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[63] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[63]),
        .Q(tap_reg[63]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[64] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[64]),
        .Q(tap_reg[64]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[65] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[65]),
        .Q(tap_reg[65]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[66] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[66]),
        .Q(tap_reg[66]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[67] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[67]),
        .Q(tap_reg[67]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[68] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[68]),
        .Q(tap_reg[68]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[69] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[69]),
        .Q(tap_reg[69]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[6] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[6]),
        .Q(tap_reg[6]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[70] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[70]),
        .Q(tap_reg[70]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[71] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[71]),
        .Q(tap_reg[71]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[72] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[72]),
        .Q(tap_reg[72]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[73] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[73]),
        .Q(tap_reg[73]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[74] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[74]),
        .Q(tap_reg[74]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[75] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[75]),
        .Q(tap_reg[75]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[76] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[76]),
        .Q(tap_reg[76]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[77] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[77]),
        .Q(tap_reg[77]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[78] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[78]),
        .Q(tap_reg[78]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[79] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[79]),
        .Q(tap_reg[79]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[7] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[7]),
        .Q(tap_reg[7]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[80] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[80]),
        .Q(tap_reg[80]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[81] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[81]),
        .Q(tap_reg[81]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[82] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[82]),
        .Q(tap_reg[82]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[83] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[83]),
        .Q(tap_reg[83]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[84] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[84]),
        .Q(tap_reg[84]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[85] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[85]),
        .Q(tap_reg[85]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[86] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[86]),
        .Q(tap_reg[86]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[87] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[87]),
        .Q(tap_reg[87]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[88] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[88]),
        .Q(tap_reg[88]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[89] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[89]),
        .Q(tap_reg[89]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[8] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[8]),
        .Q(tap_reg[8]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[90] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[90]),
        .Q(tap_reg[90]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[91] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[91]),
        .Q(tap_reg[91]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[92] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[92]),
        .Q(tap_reg[92]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[93] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[93]),
        .Q(tap_reg[93]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[94] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[94]),
        .Q(tap_reg[94]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[95] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[95]),
        .Q(tap_reg[95]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[96] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[96]),
        .Q(tap_reg[96]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[97] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[97]),
        .Q(tap_reg[97]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[98] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[98]),
        .Q(tap_reg[98]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[99] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[99]),
        .Q(tap_reg[99]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \tap_reg_reg[9] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(tap_orig[9]),
        .Q(tap_reg[9]),
        .R(p_0_in__0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    tdc_valid_i_1
       (.I0(sum_comb[5]),
        .I1(sum_comb[4]),
        .I2(sum_comb[7]),
        .I3(sum_comb[6]),
        .I4(tdc_valid_i_2_n_0),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    tdc_valid_i_2
       (.I0(sum_comb[2]),
        .I1(sum_comb[3]),
        .I2(sum_comb[0]),
        .I3(sum_comb[1]),
        .O(tdc_valid_i_2_n_0));
  FDRE tdc_valid_reg
       (.C(clk_fs),
        .CE(1'b1),
        .D(p_1_in),
        .Q(ts_word[0]),
        .R(p_0_in__0));
  CARRY4 tdc_value0__2_carry
       (.CI(1'b0),
        .CO({tdc_value0__2_carry_n_0,tdc_value0__2_carry_n_1,tdc_value0__2_carry_n_2,tdc_value0__2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({tdc_value0__2_carry_i_1_n_0,tdc_value0__2_carry_i_2_n_0,tdc_value0__2_carry_i_3_n_0,\oct_sum_reg[0]_59 [0]}),
        .O(sum_comb[3:0]),
        .S({tdc_value0__2_carry_i_4_n_0,tdc_value0__2_carry_i_5_n_0,tdc_value0__2_carry_i_6_n_0,tdc_value0__2_carry_i_7_n_0}));
  CARRY4 tdc_value0__2_carry__0
       (.CI(tdc_value0__2_carry_n_0),
        .CO({tdc_value0__2_carry__0_n_0,tdc_value0__2_carry__0_n_1,tdc_value0__2_carry__0_n_2,tdc_value0__2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({tdc_value0__2_carry__0_i_1_n_0,tdc_value0__2_carry__0_i_2_n_0,tdc_value0__2_carry__0_i_3_n_0,tdc_value0__2_carry__0_i_4_n_0}),
        .O(sum_comb[7:4]),
        .S({tdc_value0__2_carry__0_i_5_n_0,tdc_value0__2_carry__0_i_6_n_0,tdc_value0__2_carry__0_i_7_n_0,tdc_value0__2_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    tdc_value0__2_carry__0_i_1
       (.I0(\oct_sum_reg[0]_59 [6]),
        .I1(tdc_value0__2_carry__0_i_9_n_0),
        .I2(\oct_sum_reg[3]_44 [5]),
        .I3(\oct_sum_reg[2]_29 [5]),
        .I4(\oct_sum_reg[1]_14 [5]),
        .O(tdc_value0__2_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h96)) 
    tdc_value0__2_carry__0_i_10
       (.I0(\oct_sum_reg[3]_44 [5]),
        .I1(\oct_sum_reg[1]_14 [5]),
        .I2(\oct_sum_reg[2]_29 [5]),
        .O(tdc_value0__2_carry__0_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tdc_value0__2_carry__0_i_11
       (.I0(\oct_sum_reg[3]_44 [4]),
        .I1(\oct_sum_reg[1]_14 [4]),
        .I2(\oct_sum_reg[2]_29 [4]),
        .O(tdc_value0__2_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    tdc_value0__2_carry__0_i_12
       (.I0(\oct_sum_reg[1]_14 [5]),
        .I1(\oct_sum_reg[2]_29 [5]),
        .I2(\oct_sum_reg[3]_44 [5]),
        .O(tdc_value0__2_carry__0_i_12_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    tdc_value0__2_carry__0_i_2
       (.I0(\oct_sum_reg[0]_59 [5]),
        .I1(tdc_value0__2_carry__0_i_10_n_0),
        .I2(\oct_sum_reg[3]_44 [4]),
        .I3(\oct_sum_reg[2]_29 [4]),
        .I4(\oct_sum_reg[1]_14 [4]),
        .O(tdc_value0__2_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    tdc_value0__2_carry__0_i_3
       (.I0(\oct_sum_reg[0]_59 [4]),
        .I1(tdc_value0__2_carry__0_i_11_n_0),
        .I2(\oct_sum_reg[3]_44 [3]),
        .I3(\oct_sum_reg[2]_29 [3]),
        .I4(\oct_sum_reg[1]_14 [3]),
        .O(tdc_value0__2_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    tdc_value0__2_carry__0_i_4
       (.I0(\oct_sum_reg[0]_59 [3]),
        .I1(tdc_value0__2_carry_i_9_n_0),
        .I2(\oct_sum_reg[3]_44 [2]),
        .I3(\oct_sum_reg[2]_29 [2]),
        .I4(\oct_sum_reg[1]_14 [2]),
        .O(tdc_value0__2_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h177E7EE8)) 
    tdc_value0__2_carry__0_i_5
       (.I0(tdc_value0__2_carry__0_i_12_n_0),
        .I1(\oct_sum_reg[0]_59 [6]),
        .I2(\oct_sum_reg[3]_44 [6]),
        .I3(\oct_sum_reg[2]_29 [6]),
        .I4(\oct_sum_reg[1]_14 [6]),
        .O(tdc_value0__2_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    tdc_value0__2_carry__0_i_6
       (.I0(tdc_value0__2_carry__0_i_2_n_0),
        .I1(tdc_value0__2_carry__0_i_9_n_0),
        .I2(\oct_sum_reg[0]_59 [6]),
        .I3(\oct_sum_reg[1]_14 [5]),
        .I4(\oct_sum_reg[2]_29 [5]),
        .I5(\oct_sum_reg[3]_44 [5]),
        .O(tdc_value0__2_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    tdc_value0__2_carry__0_i_7
       (.I0(tdc_value0__2_carry__0_i_3_n_0),
        .I1(tdc_value0__2_carry__0_i_10_n_0),
        .I2(\oct_sum_reg[0]_59 [5]),
        .I3(\oct_sum_reg[1]_14 [4]),
        .I4(\oct_sum_reg[2]_29 [4]),
        .I5(\oct_sum_reg[3]_44 [4]),
        .O(tdc_value0__2_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    tdc_value0__2_carry__0_i_8
       (.I0(tdc_value0__2_carry__0_i_4_n_0),
        .I1(tdc_value0__2_carry__0_i_11_n_0),
        .I2(\oct_sum_reg[0]_59 [4]),
        .I3(\oct_sum_reg[1]_14 [3]),
        .I4(\oct_sum_reg[2]_29 [3]),
        .I5(\oct_sum_reg[3]_44 [3]),
        .O(tdc_value0__2_carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tdc_value0__2_carry__0_i_9
       (.I0(\oct_sum_reg[3]_44 [6]),
        .I1(\oct_sum_reg[1]_14 [6]),
        .I2(\oct_sum_reg[2]_29 [6]),
        .O(tdc_value0__2_carry__0_i_9_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    tdc_value0__2_carry_i_1
       (.I0(\oct_sum_reg[0]_59 [2]),
        .I1(tdc_value0__2_carry_i_8_n_0),
        .I2(\oct_sum_reg[3]_44 [1]),
        .I3(\oct_sum_reg[2]_29 [1]),
        .I4(\oct_sum_reg[1]_14 [1]),
        .O(tdc_value0__2_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    tdc_value0__2_carry_i_2
       (.I0(\oct_sum_reg[3]_44 [1]),
        .I1(\oct_sum_reg[2]_29 [1]),
        .I2(\oct_sum_reg[1]_14 [1]),
        .I3(\oct_sum_reg[0]_59 [2]),
        .I4(tdc_value0__2_carry_i_8_n_0),
        .O(tdc_value0__2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tdc_value0__2_carry_i_3
       (.I0(\oct_sum_reg[2]_29 [1]),
        .I1(\oct_sum_reg[1]_14 [1]),
        .I2(\oct_sum_reg[3]_44 [1]),
        .I3(\oct_sum_reg[0]_59 [1]),
        .O(tdc_value0__2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    tdc_value0__2_carry_i_4
       (.I0(tdc_value0__2_carry_i_1_n_0),
        .I1(tdc_value0__2_carry_i_9_n_0),
        .I2(\oct_sum_reg[0]_59 [3]),
        .I3(\oct_sum_reg[1]_14 [2]),
        .I4(\oct_sum_reg[2]_29 [2]),
        .I5(\oct_sum_reg[3]_44 [2]),
        .O(tdc_value0__2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    tdc_value0__2_carry_i_5
       (.I0(tdc_value0__2_carry_i_8_n_0),
        .I1(\oct_sum_reg[0]_59 [2]),
        .I2(\oct_sum_reg[3]_44 [1]),
        .I3(\oct_sum_reg[1]_14 [1]),
        .I4(\oct_sum_reg[2]_29 [1]),
        .I5(\oct_sum_reg[0]_59 [1]),
        .O(tdc_value0__2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h566A)) 
    tdc_value0__2_carry_i_6
       (.I0(tdc_value0__2_carry_i_3_n_0),
        .I1(\oct_sum_reg[3]_44 [0]),
        .I2(\oct_sum_reg[2]_29 [0]),
        .I3(\oct_sum_reg[1]_14 [0]),
        .O(tdc_value0__2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    tdc_value0__2_carry_i_7
       (.I0(\oct_sum_reg[2]_29 [0]),
        .I1(\oct_sum_reg[1]_14 [0]),
        .I2(\oct_sum_reg[3]_44 [0]),
        .I3(\oct_sum_reg[0]_59 [0]),
        .O(tdc_value0__2_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tdc_value0__2_carry_i_8
       (.I0(\oct_sum_reg[3]_44 [2]),
        .I1(\oct_sum_reg[1]_14 [2]),
        .I2(\oct_sum_reg[2]_29 [2]),
        .O(tdc_value0__2_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    tdc_value0__2_carry_i_9
       (.I0(\oct_sum_reg[3]_44 [3]),
        .I1(\oct_sum_reg[1]_14 [3]),
        .I2(\oct_sum_reg[2]_29 [3]),
        .O(tdc_value0__2_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[0]_i_1 
       (.I0(sum_comb[0]),
        .I1(sum_comb[8]),
        .O(\tdc_value[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[1]_i_1 
       (.I0(sum_comb[1]),
        .I1(sum_comb[8]),
        .O(\tdc_value[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[2]_i_1 
       (.I0(sum_comb[2]),
        .I1(sum_comb[8]),
        .O(\tdc_value[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[3]_i_1 
       (.I0(sum_comb[3]),
        .I1(sum_comb[8]),
        .O(\tdc_value[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[4]_i_1 
       (.I0(sum_comb[4]),
        .I1(sum_comb[8]),
        .O(\tdc_value[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[5]_i_1 
       (.I0(sum_comb[5]),
        .I1(sum_comb[8]),
        .O(\tdc_value[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[6]_i_1 
       (.I0(sum_comb[6]),
        .I1(sum_comb[8]),
        .O(\tdc_value[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tdc_value[7]_i_1 
       (.I0(sum_comb[7]),
        .I1(sum_comb[8]),
        .O(\tdc_value[7]_i_1_n_0 ));
  FDRE \tdc_value_reg[0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\tdc_value[0]_i_1_n_0 ),
        .Q(ts_word[1]),
        .R(p_0_in__0));
  FDRE \tdc_value_reg[1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\tdc_value[1]_i_1_n_0 ),
        .Q(ts_word[2]),
        .R(p_0_in__0));
  FDRE \tdc_value_reg[2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\tdc_value[2]_i_1_n_0 ),
        .Q(ts_word[3]),
        .R(p_0_in__0));
  FDRE \tdc_value_reg[3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\tdc_value[3]_i_1_n_0 ),
        .Q(ts_word[4]),
        .R(p_0_in__0));
  FDRE \tdc_value_reg[4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\tdc_value[4]_i_1_n_0 ),
        .Q(ts_word[5]),
        .R(p_0_in__0));
  FDRE \tdc_value_reg[5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\tdc_value[5]_i_1_n_0 ),
        .Q(ts_word[6]),
        .R(p_0_in__0));
  FDRE \tdc_value_reg[6] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\tdc_value[6]_i_1_n_0 ),
        .Q(ts_word[7]),
        .R(p_0_in__0));
  FDRE \tdc_value_reg[7] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\tdc_value[7]_i_1_n_0 ),
        .Q(ts_word[8]),
        .R(p_0_in__0));
  CARRY4 \tdc_value_reg[7]_i_2 
       (.CI(tdc_value0__2_carry__0_n_0),
        .CO({\NLW_tdc_value_reg[7]_i_2_CO_UNCONNECTED [3:1],sum_comb[8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_tdc_value_reg[7]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

(* ORIG_REF_NAME = "ts_engine" *) 
module ps_Counter_Core_0_0_ts_engine
   (\sync_reg[1] ,
    ts_en_d_reg_0,
    m_axis_tlast,
    out_valid_reg_0,
    \pop_cnt_reg[0]_0 ,
    S,
    \pop_cnt_reg[7]_0 ,
    \pop_cnt_reg[11]_0 ,
    \pop_cnt_reg[15]_0 ,
    \pop_cnt_reg[15]_1 ,
    CO,
    \pop_cnt_reg[15]_2 ,
    fifo_level,
    m_axis_tdata,
    dst_cnt,
    \gray_s2_reg[31] ,
    D,
    p_0_in__0,
    clk_fs,
    ts_en_d_reg_1,
    SR,
    pop_is_last,
    s_axi_aclk,
    out_valid_reg_1,
    \pop_cnt_reg[15]_3 ,
    pop_limit_hit0_carry__0_0,
    fifo_mem_reg_7_i_4,
    pop_is_last1,
    out,
    m_axis_tready,
    fifo_mem_reg_0_0,
    fifo_mem_reg_0_1,
    \skip_limit_reg[31]_0 ,
    skip_zero_reg_0,
    pop_limit_hit0_carry__0_1,
    E);
  output [0:0]\sync_reg[1] ;
  output ts_en_d_reg_0;
  output m_axis_tlast;
  output out_valid_reg_0;
  output \pop_cnt_reg[0]_0 ;
  output [2:0]S;
  output [3:0]\pop_cnt_reg[7]_0 ;
  output [3:0]\pop_cnt_reg[11]_0 ;
  output [3:0]\pop_cnt_reg[15]_0 ;
  output [0:0]\pop_cnt_reg[15]_1 ;
  output [0:0]CO;
  output [0:0]\pop_cnt_reg[15]_2 ;
  output [12:0]fifo_level;
  output [63:0]m_axis_tdata;
  output [31:0]dst_cnt;
  output [31:0]\gray_s2_reg[31] ;
  input [0:0]D;
  input p_0_in__0;
  input clk_fs;
  input [0:0]ts_en_d_reg_1;
  input [0:0]SR;
  input pop_is_last;
  input s_axi_aclk;
  input out_valid_reg_1;
  input \pop_cnt_reg[15]_3 ;
  input [3:0]pop_limit_hit0_carry__0_0;
  input [3:0]fifo_mem_reg_7_i_4;
  input [14:0]pop_is_last1;
  input [0:0]out;
  input m_axis_tready;
  input [0:0]fifo_mem_reg_0_0;
  input fifo_mem_reg_0_1;
  input [31:0]\skip_limit_reg[31]_0 ;
  input skip_zero_reg_0;
  input [15:0]pop_limit_hit0_carry__0_1;
  input [0:0]E;

  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]S;
  wire [0:0]SR;
  wire clk_fs;
  wire [31:0]dst_cnt;
  wire edge_d2_reg_srl2___inst_counter_core_inst_u_ts_engine_free_run_cnt_d2_reg_r_n_0;
  wire edge_d3_reg_gate_n_0;
  wire edge_d3_reg_inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0;
  wire edge_d4;
  wire edge_raw;
  wire fifo_full;
  wire [12:3]fifo_full10_out;
  wire fifo_full1_carry__0_i_1_n_0;
  wire fifo_full1_carry__0_i_2_n_0;
  wire fifo_full1_carry__0_i_3_n_0;
  wire fifo_full1_carry__0_i_4_n_0;
  wire fifo_full1_carry__0_n_0;
  wire fifo_full1_carry__0_n_1;
  wire fifo_full1_carry__0_n_2;
  wire fifo_full1_carry__0_n_3;
  wire fifo_full1_carry__1_i_1_n_0;
  wire fifo_full1_carry__1_i_2_n_0;
  wire fifo_full1_carry__1_i_3_n_0;
  wire fifo_full1_carry__1_i_4_n_0;
  wire fifo_full1_carry__1_n_0;
  wire fifo_full1_carry__1_n_1;
  wire fifo_full1_carry__1_n_2;
  wire fifo_full1_carry__1_n_3;
  wire fifo_full1_carry__2_i_1_n_0;
  wire fifo_full1_carry_i_1_n_0;
  wire fifo_full1_carry_i_2_n_0;
  wire fifo_full1_carry_i_3_n_0;
  wire fifo_full1_carry_i_4_n_0;
  wire fifo_full1_carry_n_0;
  wire fifo_full1_carry_n_1;
  wire fifo_full1_carry_n_2;
  wire fifo_full1_carry_n_3;
  wire fifo_full_i_1_n_0;
  wire fifo_full_i_2_n_0;
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
  wire [0:0]fifo_mem_reg_0_0;
  wire fifo_mem_reg_0_1;
  wire fifo_mem_reg_7_i_1_n_0;
  wire fifo_mem_reg_7_i_2_n_0;
  wire [3:0]fifo_mem_reg_7_i_4;
  wire free_run_cnt_d1_reg_r_n_0;
  wire free_run_cnt_d2_reg_r_n_0;
  wire \free_run_cnt_d3_reg[0]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[10]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[11]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[12]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[13]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[14]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[15]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[16]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[17]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[18]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[19]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[1]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[20]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[21]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[22]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[23]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[24]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[25]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[26]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[27]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[28]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[29]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[2]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[30]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[31]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[3]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[4]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[5]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[6]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[7]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[8]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire \free_run_cnt_d3_reg[9]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ;
  wire free_run_cnt_d3_reg_r_n_0;
  wire \free_run_cnt_d4_reg[0]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[10]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[11]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[12]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[13]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[14]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[15]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[16]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[17]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[18]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[19]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[1]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[20]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[21]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[22]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[23]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[24]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[25]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[26]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[27]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[28]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[29]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[2]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[30]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[31]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[3]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[4]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[5]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[6]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[7]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[8]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire \free_run_cnt_d4_reg[9]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ;
  wire free_run_cnt_d4_reg_gate__0_n_0;
  wire free_run_cnt_d4_reg_gate__10_n_0;
  wire free_run_cnt_d4_reg_gate__11_n_0;
  wire free_run_cnt_d4_reg_gate__12_n_0;
  wire free_run_cnt_d4_reg_gate__13_n_0;
  wire free_run_cnt_d4_reg_gate__14_n_0;
  wire free_run_cnt_d4_reg_gate__15_n_0;
  wire free_run_cnt_d4_reg_gate__16_n_0;
  wire free_run_cnt_d4_reg_gate__17_n_0;
  wire free_run_cnt_d4_reg_gate__18_n_0;
  wire free_run_cnt_d4_reg_gate__19_n_0;
  wire free_run_cnt_d4_reg_gate__1_n_0;
  wire free_run_cnt_d4_reg_gate__20_n_0;
  wire free_run_cnt_d4_reg_gate__21_n_0;
  wire free_run_cnt_d4_reg_gate__22_n_0;
  wire free_run_cnt_d4_reg_gate__23_n_0;
  wire free_run_cnt_d4_reg_gate__24_n_0;
  wire free_run_cnt_d4_reg_gate__25_n_0;
  wire free_run_cnt_d4_reg_gate__26_n_0;
  wire free_run_cnt_d4_reg_gate__27_n_0;
  wire free_run_cnt_d4_reg_gate__28_n_0;
  wire free_run_cnt_d4_reg_gate__29_n_0;
  wire free_run_cnt_d4_reg_gate__2_n_0;
  wire free_run_cnt_d4_reg_gate__30_n_0;
  wire free_run_cnt_d4_reg_gate__3_n_0;
  wire free_run_cnt_d4_reg_gate__4_n_0;
  wire free_run_cnt_d4_reg_gate__5_n_0;
  wire free_run_cnt_d4_reg_gate__6_n_0;
  wire free_run_cnt_d4_reg_gate__7_n_0;
  wire free_run_cnt_d4_reg_gate__8_n_0;
  wire free_run_cnt_d4_reg_gate__9_n_0;
  wire free_run_cnt_d4_reg_gate_n_0;
  wire free_run_cnt_d4_reg_r_n_0;
  wire [31:0]free_run_cnt_d5;
  wire [31:0]free_run_cnt_reg;
  (* async_reg = "true" *) wire [2:0]fx_sync;
  wire [31:0]\gray_s2_reg[31] ;
  wire \i_/i_/i___161_carry__0_n_0 ;
  wire \i_/i_/i___161_carry__0_n_1 ;
  wire \i_/i_/i___161_carry__0_n_2 ;
  wire \i_/i_/i___161_carry__0_n_3 ;
  wire \i_/i_/i___161_carry__0_n_4 ;
  wire \i_/i_/i___161_carry__0_n_5 ;
  wire \i_/i_/i___161_carry__0_n_6 ;
  wire \i_/i_/i___161_carry__0_n_7 ;
  wire \i_/i_/i___161_carry__1_n_0 ;
  wire \i_/i_/i___161_carry__1_n_1 ;
  wire \i_/i_/i___161_carry__1_n_2 ;
  wire \i_/i_/i___161_carry__1_n_3 ;
  wire \i_/i_/i___161_carry__1_n_4 ;
  wire \i_/i_/i___161_carry__1_n_5 ;
  wire \i_/i_/i___161_carry__1_n_6 ;
  wire \i_/i_/i___161_carry__1_n_7 ;
  wire \i_/i_/i___161_carry__2_n_0 ;
  wire \i_/i_/i___161_carry__2_n_1 ;
  wire \i_/i_/i___161_carry__2_n_2 ;
  wire \i_/i_/i___161_carry__2_n_3 ;
  wire \i_/i_/i___161_carry__2_n_4 ;
  wire \i_/i_/i___161_carry__2_n_5 ;
  wire \i_/i_/i___161_carry__2_n_6 ;
  wire \i_/i_/i___161_carry__2_n_7 ;
  wire \i_/i_/i___161_carry__3_n_0 ;
  wire \i_/i_/i___161_carry__3_n_1 ;
  wire \i_/i_/i___161_carry__3_n_2 ;
  wire \i_/i_/i___161_carry__3_n_3 ;
  wire \i_/i_/i___161_carry__3_n_4 ;
  wire \i_/i_/i___161_carry__3_n_5 ;
  wire \i_/i_/i___161_carry__3_n_6 ;
  wire \i_/i_/i___161_carry__3_n_7 ;
  wire \i_/i_/i___161_carry__4_n_0 ;
  wire \i_/i_/i___161_carry__4_n_1 ;
  wire \i_/i_/i___161_carry__4_n_2 ;
  wire \i_/i_/i___161_carry__4_n_3 ;
  wire \i_/i_/i___161_carry__4_n_4 ;
  wire \i_/i_/i___161_carry__4_n_5 ;
  wire \i_/i_/i___161_carry__4_n_6 ;
  wire \i_/i_/i___161_carry__4_n_7 ;
  wire \i_/i_/i___161_carry__5_n_0 ;
  wire \i_/i_/i___161_carry__5_n_1 ;
  wire \i_/i_/i___161_carry__5_n_2 ;
  wire \i_/i_/i___161_carry__5_n_3 ;
  wire \i_/i_/i___161_carry__5_n_4 ;
  wire \i_/i_/i___161_carry__5_n_5 ;
  wire \i_/i_/i___161_carry__5_n_6 ;
  wire \i_/i_/i___161_carry__5_n_7 ;
  wire \i_/i_/i___161_carry__6_n_1 ;
  wire \i_/i_/i___161_carry__6_n_2 ;
  wire \i_/i_/i___161_carry__6_n_3 ;
  wire \i_/i_/i___161_carry__6_n_4 ;
  wire \i_/i_/i___161_carry__6_n_5 ;
  wire \i_/i_/i___161_carry__6_n_6 ;
  wire \i_/i_/i___161_carry__6_n_7 ;
  wire \i_/i_/i___161_carry_n_0 ;
  wire \i_/i_/i___161_carry_n_1 ;
  wire \i_/i_/i___161_carry_n_2 ;
  wire \i_/i_/i___161_carry_n_3 ;
  wire \i_/i_/i___161_carry_n_4 ;
  wire \i_/i_/i___161_carry_n_5 ;
  wire \i_/i_/i___161_carry_n_6 ;
  wire \i_/i_/i___161_carry_n_7 ;
  wire \i_/i_/i___224_carry__0_n_0 ;
  wire \i_/i_/i___224_carry__0_n_1 ;
  wire \i_/i_/i___224_carry__0_n_2 ;
  wire \i_/i_/i___224_carry__0_n_3 ;
  wire \i_/i_/i___224_carry__0_n_4 ;
  wire \i_/i_/i___224_carry__0_n_5 ;
  wire \i_/i_/i___224_carry__0_n_6 ;
  wire \i_/i_/i___224_carry__0_n_7 ;
  wire \i_/i_/i___224_carry__1_n_0 ;
  wire \i_/i_/i___224_carry__1_n_1 ;
  wire \i_/i_/i___224_carry__1_n_2 ;
  wire \i_/i_/i___224_carry__1_n_3 ;
  wire \i_/i_/i___224_carry__1_n_4 ;
  wire \i_/i_/i___224_carry__1_n_5 ;
  wire \i_/i_/i___224_carry__1_n_6 ;
  wire \i_/i_/i___224_carry__1_n_7 ;
  wire \i_/i_/i___224_carry__2_n_0 ;
  wire \i_/i_/i___224_carry__2_n_1 ;
  wire \i_/i_/i___224_carry__2_n_2 ;
  wire \i_/i_/i___224_carry__2_n_3 ;
  wire \i_/i_/i___224_carry__2_n_4 ;
  wire \i_/i_/i___224_carry__2_n_5 ;
  wire \i_/i_/i___224_carry__2_n_6 ;
  wire \i_/i_/i___224_carry__2_n_7 ;
  wire \i_/i_/i___224_carry__3_n_0 ;
  wire \i_/i_/i___224_carry__3_n_1 ;
  wire \i_/i_/i___224_carry__3_n_2 ;
  wire \i_/i_/i___224_carry__3_n_3 ;
  wire \i_/i_/i___224_carry__3_n_4 ;
  wire \i_/i_/i___224_carry__3_n_5 ;
  wire \i_/i_/i___224_carry__3_n_6 ;
  wire \i_/i_/i___224_carry__3_n_7 ;
  wire \i_/i_/i___224_carry__4_n_0 ;
  wire \i_/i_/i___224_carry__4_n_1 ;
  wire \i_/i_/i___224_carry__4_n_2 ;
  wire \i_/i_/i___224_carry__4_n_3 ;
  wire \i_/i_/i___224_carry__4_n_4 ;
  wire \i_/i_/i___224_carry__4_n_5 ;
  wire \i_/i_/i___224_carry__4_n_6 ;
  wire \i_/i_/i___224_carry__4_n_7 ;
  wire \i_/i_/i___224_carry__5_n_0 ;
  wire \i_/i_/i___224_carry__5_n_1 ;
  wire \i_/i_/i___224_carry__5_n_2 ;
  wire \i_/i_/i___224_carry__5_n_3 ;
  wire \i_/i_/i___224_carry__5_n_4 ;
  wire \i_/i_/i___224_carry__5_n_5 ;
  wire \i_/i_/i___224_carry__5_n_6 ;
  wire \i_/i_/i___224_carry__5_n_7 ;
  wire \i_/i_/i___224_carry__6_n_1 ;
  wire \i_/i_/i___224_carry__6_n_2 ;
  wire \i_/i_/i___224_carry__6_n_3 ;
  wire \i_/i_/i___224_carry__6_n_4 ;
  wire \i_/i_/i___224_carry__6_n_5 ;
  wire \i_/i_/i___224_carry__6_n_6 ;
  wire \i_/i_/i___224_carry__6_n_7 ;
  wire \i_/i_/i___224_carry_n_0 ;
  wire \i_/i_/i___224_carry_n_1 ;
  wire \i_/i_/i___224_carry_n_2 ;
  wire \i_/i_/i___224_carry_n_3 ;
  wire \i_/i_/i___224_carry_n_4 ;
  wire \i_/i_/i___224_carry_n_5 ;
  wire \i_/i_/i___224_carry_n_6 ;
  wire \i_/i_/i___224_carry_n_7 ;
  wire \i_/i_/i___30_carry__0_n_0 ;
  wire \i_/i_/i___30_carry__0_n_1 ;
  wire \i_/i_/i___30_carry__0_n_2 ;
  wire \i_/i_/i___30_carry__0_n_3 ;
  wire \i_/i_/i___30_carry__0_n_4 ;
  wire \i_/i_/i___30_carry__0_n_5 ;
  wire \i_/i_/i___30_carry__0_n_6 ;
  wire \i_/i_/i___30_carry__0_n_7 ;
  wire \i_/i_/i___30_carry__1_n_0 ;
  wire \i_/i_/i___30_carry__1_n_1 ;
  wire \i_/i_/i___30_carry__1_n_2 ;
  wire \i_/i_/i___30_carry__1_n_3 ;
  wire \i_/i_/i___30_carry__1_n_4 ;
  wire \i_/i_/i___30_carry__1_n_5 ;
  wire \i_/i_/i___30_carry__1_n_6 ;
  wire \i_/i_/i___30_carry__1_n_7 ;
  wire \i_/i_/i___30_carry__2_n_7 ;
  wire \i_/i_/i___30_carry_n_0 ;
  wire \i_/i_/i___30_carry_n_1 ;
  wire \i_/i_/i___30_carry_n_2 ;
  wire \i_/i_/i___30_carry_n_3 ;
  wire \i_/i_/i___30_carry_n_4 ;
  wire \i_/i_/i___30_carry_n_5 ;
  wire \i_/i_/i___30_carry_n_6 ;
  wire \i_/i_/i___30_carry_n_7 ;
  wire \i_/i_/i___55_carry__0_n_0 ;
  wire \i_/i_/i___55_carry__0_n_1 ;
  wire \i_/i_/i___55_carry__0_n_2 ;
  wire \i_/i_/i___55_carry__0_n_3 ;
  wire \i_/i_/i___55_carry__0_n_4 ;
  wire \i_/i_/i___55_carry__0_n_5 ;
  wire \i_/i_/i___55_carry__0_n_6 ;
  wire \i_/i_/i___55_carry__0_n_7 ;
  wire \i_/i_/i___55_carry__1_n_0 ;
  wire \i_/i_/i___55_carry__1_n_1 ;
  wire \i_/i_/i___55_carry__1_n_2 ;
  wire \i_/i_/i___55_carry__1_n_3 ;
  wire \i_/i_/i___55_carry__1_n_4 ;
  wire \i_/i_/i___55_carry__1_n_5 ;
  wire \i_/i_/i___55_carry__1_n_6 ;
  wire \i_/i_/i___55_carry__1_n_7 ;
  wire \i_/i_/i___55_carry__2_n_0 ;
  wire \i_/i_/i___55_carry__2_n_1 ;
  wire \i_/i_/i___55_carry__2_n_2 ;
  wire \i_/i_/i___55_carry__2_n_3 ;
  wire \i_/i_/i___55_carry__2_n_4 ;
  wire \i_/i_/i___55_carry__2_n_5 ;
  wire \i_/i_/i___55_carry__2_n_6 ;
  wire \i_/i_/i___55_carry__2_n_7 ;
  wire \i_/i_/i___55_carry__3_n_0 ;
  wire \i_/i_/i___55_carry__3_n_1 ;
  wire \i_/i_/i___55_carry__3_n_2 ;
  wire \i_/i_/i___55_carry__3_n_3 ;
  wire \i_/i_/i___55_carry__3_n_4 ;
  wire \i_/i_/i___55_carry__3_n_5 ;
  wire \i_/i_/i___55_carry__3_n_6 ;
  wire \i_/i_/i___55_carry__3_n_7 ;
  wire \i_/i_/i___55_carry__4_n_3 ;
  wire \i_/i_/i___55_carry__4_n_6 ;
  wire \i_/i_/i___55_carry__4_n_7 ;
  wire \i_/i_/i___55_carry_n_0 ;
  wire \i_/i_/i___55_carry_n_1 ;
  wire \i_/i_/i___55_carry_n_2 ;
  wire \i_/i_/i___55_carry_n_3 ;
  wire \i_/i_/i___55_carry_n_4 ;
  wire \i_/i_/i___55_carry_n_5 ;
  wire \i_/i_/i___55_carry_n_6 ;
  wire \i_/i_/i___55_carry_n_7 ;
  wire \i_/i_/i___98_carry__0_n_0 ;
  wire \i_/i_/i___98_carry__0_n_1 ;
  wire \i_/i_/i___98_carry__0_n_2 ;
  wire \i_/i_/i___98_carry__0_n_3 ;
  wire \i_/i_/i___98_carry__0_n_4 ;
  wire \i_/i_/i___98_carry__0_n_5 ;
  wire \i_/i_/i___98_carry__0_n_6 ;
  wire \i_/i_/i___98_carry__0_n_7 ;
  wire \i_/i_/i___98_carry__1_n_0 ;
  wire \i_/i_/i___98_carry__1_n_1 ;
  wire \i_/i_/i___98_carry__1_n_2 ;
  wire \i_/i_/i___98_carry__1_n_3 ;
  wire \i_/i_/i___98_carry__1_n_4 ;
  wire \i_/i_/i___98_carry__1_n_5 ;
  wire \i_/i_/i___98_carry__1_n_6 ;
  wire \i_/i_/i___98_carry__1_n_7 ;
  wire \i_/i_/i___98_carry__2_n_0 ;
  wire \i_/i_/i___98_carry__2_n_1 ;
  wire \i_/i_/i___98_carry__2_n_2 ;
  wire \i_/i_/i___98_carry__2_n_3 ;
  wire \i_/i_/i___98_carry__2_n_4 ;
  wire \i_/i_/i___98_carry__2_n_5 ;
  wire \i_/i_/i___98_carry__2_n_6 ;
  wire \i_/i_/i___98_carry__2_n_7 ;
  wire \i_/i_/i___98_carry__3_n_0 ;
  wire \i_/i_/i___98_carry__3_n_1 ;
  wire \i_/i_/i___98_carry__3_n_2 ;
  wire \i_/i_/i___98_carry__3_n_3 ;
  wire \i_/i_/i___98_carry__3_n_4 ;
  wire \i_/i_/i___98_carry__3_n_5 ;
  wire \i_/i_/i___98_carry__3_n_6 ;
  wire \i_/i_/i___98_carry__3_n_7 ;
  wire \i_/i_/i___98_carry__4_n_0 ;
  wire \i_/i_/i___98_carry__4_n_1 ;
  wire \i_/i_/i___98_carry__4_n_2 ;
  wire \i_/i_/i___98_carry__4_n_3 ;
  wire \i_/i_/i___98_carry__4_n_4 ;
  wire \i_/i_/i___98_carry__4_n_5 ;
  wire \i_/i_/i___98_carry__4_n_6 ;
  wire \i_/i_/i___98_carry__4_n_7 ;
  wire \i_/i_/i___98_carry__5_n_0 ;
  wire \i_/i_/i___98_carry__5_n_1 ;
  wire \i_/i_/i___98_carry__5_n_2 ;
  wire \i_/i_/i___98_carry__5_n_3 ;
  wire \i_/i_/i___98_carry__5_n_4 ;
  wire \i_/i_/i___98_carry__5_n_5 ;
  wire \i_/i_/i___98_carry__5_n_6 ;
  wire \i_/i_/i___98_carry__5_n_7 ;
  wire \i_/i_/i___98_carry__6_n_1 ;
  wire \i_/i_/i___98_carry__6_n_2 ;
  wire \i_/i_/i___98_carry__6_n_3 ;
  wire \i_/i_/i___98_carry__6_n_4 ;
  wire \i_/i_/i___98_carry__6_n_5 ;
  wire \i_/i_/i___98_carry__6_n_6 ;
  wire \i_/i_/i___98_carry__6_n_7 ;
  wire \i_/i_/i___98_carry_n_0 ;
  wire \i_/i_/i___98_carry_n_1 ;
  wire \i_/i_/i___98_carry_n_2 ;
  wire \i_/i_/i___98_carry_n_3 ;
  wire \i_/i_/i___98_carry_n_4 ;
  wire \i_/i_/i___98_carry_n_5 ;
  wire \i_/i_/i___98_carry_n_6 ;
  wire \i_/i_/i___98_carry_n_7 ;
  wire \i_/i_/i__carry__0_n_0 ;
  wire \i_/i_/i__carry__0_n_1 ;
  wire \i_/i_/i__carry__0_n_2 ;
  wire \i_/i_/i__carry__0_n_3 ;
  wire \i_/i_/i__carry__0_n_4 ;
  wire \i_/i_/i__carry__0_n_5 ;
  wire \i_/i_/i__carry__0_n_6 ;
  wire \i_/i_/i__carry__0_n_7 ;
  wire \i_/i_/i__carry__1_n_0 ;
  wire \i_/i_/i__carry__1_n_1 ;
  wire \i_/i_/i__carry__1_n_2 ;
  wire \i_/i_/i__carry__1_n_3 ;
  wire \i_/i_/i__carry__1_n_4 ;
  wire \i_/i_/i__carry__1_n_5 ;
  wire \i_/i_/i__carry__1_n_6 ;
  wire \i_/i_/i__carry__1_n_7 ;
  wire \i_/i_/i__carry__2_n_1 ;
  wire \i_/i_/i__carry__2_n_2 ;
  wire \i_/i_/i__carry__2_n_3 ;
  wire \i_/i_/i__carry__2_n_4 ;
  wire \i_/i_/i__carry__2_n_5 ;
  wire \i_/i_/i__carry__2_n_6 ;
  wire \i_/i_/i__carry__2_n_7 ;
  wire \i_/i_/i__carry_n_0 ;
  wire \i_/i_/i__carry_n_1 ;
  wire \i_/i_/i__carry_n_2 ;
  wire \i_/i_/i__carry_n_3 ;
  wire \i_/i_/i__carry_n_4 ;
  wire \i_/i_/i__carry_n_5 ;
  wire \i_/i_/i__carry_n_6 ;
  wire \i_/i_/i__carry_n_7 ;
  wire i___161_carry_i_1_n_0;
  wire i___224_carry_i_1_n_0;
  wire i___30_carry_i_1_n_0;
  wire i___55_carry_i_1_n_0;
  wire i___98_carry_i_1_n_0;
  wire i__carry_i_1_n_0;
  wire int_empty_carry_n_0;
  wire int_empty_carry_n_1;
  wire int_empty_carry_n_2;
  wire int_empty_carry_n_3;
  wire [31:0]lost_count_fs_reg;
  wire [63:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [0:0]out;
  wire out_valid_reg_0;
  wire out_valid_reg_1;
  wire ovf_mark;
  wire ovf_mark_i_1_n_0;
  wire ovf_sticky;
  wire p_0_in__0;
  wire [31:0]p_2_in;
  wire \pop_cnt_reg[0]_0 ;
  wire [3:0]\pop_cnt_reg[11]_0 ;
  wire [3:0]\pop_cnt_reg[15]_0 ;
  wire [0:0]\pop_cnt_reg[15]_1 ;
  wire [0:0]\pop_cnt_reg[15]_2 ;
  wire \pop_cnt_reg[15]_3 ;
  wire [3:0]\pop_cnt_reg[7]_0 ;
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
  wire [3:0]pop_limit_hit0_carry__0_0;
  wire [15:0]pop_limit_hit0_carry__0_1;
  wire pop_limit_hit0_carry__0_i_1_n_0;
  wire pop_limit_hit0_carry__0_i_2_n_0;
  wire pop_limit_hit0_carry__0_i_3_n_0;
  wire pop_limit_hit0_carry__0_i_4_n_0;
  wire pop_limit_hit0_carry__0_n_1;
  wire pop_limit_hit0_carry__0_n_2;
  wire pop_limit_hit0_carry__0_n_3;
  wire pop_limit_hit0_carry_i_1_n_0;
  wire pop_limit_hit0_carry_i_2_n_0;
  wire pop_limit_hit0_carry_i_3_n_0;
  wire pop_limit_hit0_carry_i_4_n_0;
  wire pop_limit_hit0_carry_n_0;
  wire pop_limit_hit0_carry_n_1;
  wire pop_limit_hit0_carry_n_2;
  wire pop_limit_hit0_carry_n_3;
  wire [12:0]rd_ptr_at_wr_q;
  wire \rd_ptr_bin[0]_i_2_n_0 ;
  wire [12:0]rd_ptr_bin_at_wr;
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
  wire [21:0]seq_cnt_reg;
  wire [31:0]skip_cnt;
  wire [31:1]skip_cnt0;
  wire skip_cnt0_carry__0_i_1_n_0;
  wire skip_cnt0_carry__0_i_2_n_0;
  wire skip_cnt0_carry__0_i_3_n_0;
  wire skip_cnt0_carry__0_i_4_n_0;
  wire skip_cnt0_carry__0_n_0;
  wire skip_cnt0_carry__0_n_1;
  wire skip_cnt0_carry__0_n_2;
  wire skip_cnt0_carry__0_n_3;
  wire skip_cnt0_carry__1_i_1_n_0;
  wire skip_cnt0_carry__1_i_2_n_0;
  wire skip_cnt0_carry__1_i_3_n_0;
  wire skip_cnt0_carry__1_i_4_n_0;
  wire skip_cnt0_carry__1_n_0;
  wire skip_cnt0_carry__1_n_1;
  wire skip_cnt0_carry__1_n_2;
  wire skip_cnt0_carry__1_n_3;
  wire skip_cnt0_carry__2_i_1_n_0;
  wire skip_cnt0_carry__2_i_2_n_0;
  wire skip_cnt0_carry__2_i_3_n_0;
  wire skip_cnt0_carry__2_i_4_n_0;
  wire skip_cnt0_carry__2_n_0;
  wire skip_cnt0_carry__2_n_1;
  wire skip_cnt0_carry__2_n_2;
  wire skip_cnt0_carry__2_n_3;
  wire skip_cnt0_carry__3_i_1_n_0;
  wire skip_cnt0_carry__3_i_2_n_0;
  wire skip_cnt0_carry__3_i_3_n_0;
  wire skip_cnt0_carry__3_i_4_n_0;
  wire skip_cnt0_carry__3_n_0;
  wire skip_cnt0_carry__3_n_1;
  wire skip_cnt0_carry__3_n_2;
  wire skip_cnt0_carry__3_n_3;
  wire skip_cnt0_carry__4_i_1_n_0;
  wire skip_cnt0_carry__4_i_2_n_0;
  wire skip_cnt0_carry__4_i_3_n_0;
  wire skip_cnt0_carry__4_i_4_n_0;
  wire skip_cnt0_carry__4_n_0;
  wire skip_cnt0_carry__4_n_1;
  wire skip_cnt0_carry__4_n_2;
  wire skip_cnt0_carry__4_n_3;
  wire skip_cnt0_carry__5_i_1_n_0;
  wire skip_cnt0_carry__5_i_2_n_0;
  wire skip_cnt0_carry__5_i_3_n_0;
  wire skip_cnt0_carry__5_i_4_n_0;
  wire skip_cnt0_carry__5_n_0;
  wire skip_cnt0_carry__5_n_1;
  wire skip_cnt0_carry__5_n_2;
  wire skip_cnt0_carry__5_n_3;
  wire skip_cnt0_carry__6_i_1_n_0;
  wire skip_cnt0_carry__6_i_2_n_0;
  wire skip_cnt0_carry__6_i_3_n_0;
  wire skip_cnt0_carry__6_n_2;
  wire skip_cnt0_carry__6_n_3;
  wire skip_cnt0_carry_i_1_n_0;
  wire skip_cnt0_carry_i_2_n_0;
  wire skip_cnt0_carry_i_3_n_0;
  wire skip_cnt0_carry_i_4_n_0;
  wire skip_cnt0_carry_n_0;
  wire skip_cnt0_carry_n_1;
  wire skip_cnt0_carry_n_2;
  wire skip_cnt0_carry_n_3;
  wire \skip_cnt[31]_i_1_n_0 ;
  wire \skip_cnt[31]_i_3_n_0 ;
  wire \skip_cnt[31]_i_4_n_0 ;
  wire \skip_cnt[31]_i_5_n_0 ;
  wire [31:0]skip_limit;
  wire [31:0]\skip_limit_reg[31]_0 ;
  wire skip_zero;
  wire skip_zero_i_14_n_0;
  wire skip_zero_i_15_n_0;
  wire skip_zero_i_16_n_0;
  wire skip_zero_i_17_n_0;
  wire skip_zero_i_18_n_0;
  wire skip_zero_i_19_n_0;
  wire skip_zero_i_1_n_0;
  wire skip_zero_i_20_n_0;
  wire skip_zero_i_21_n_0;
  wire skip_zero_i_22_n_0;
  wire skip_zero_i_2_n_0;
  wire skip_zero_i_4_n_0;
  wire skip_zero_i_5_n_0;
  wire skip_zero_i_6_n_0;
  wire skip_zero_i_7_n_0;
  wire skip_zero_reg_0;
  wire [0:0]\sync_reg[1] ;
  wire tdc_valid;
  wire [7:0]tdc_value;
  wire [31:0]ts_count_fs_reg;
  wire ts_en_d_reg_0;
  wire [0:0]ts_en_d_reg_1;
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
  wire wr_en;
  wire wr_en0;
  wire [8:0]wr_ptr_bin_at_rd;
  wire [12:0]wr_ptr_bin_reg;
  wire [2:0]NLW_fifo_full1_carry_O_UNCONNECTED;
  wire [3:0]NLW_fifo_full1_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_fifo_full1_carry__2_O_UNCONNECTED;
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
  wire [3:3]\NLW_i_/i_/i___161_carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___224_carry__6_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_/i_/i___30_carry__2_CO_UNCONNECTED ;
  wire [3:1]\NLW_i_/i_/i___30_carry__2_O_UNCONNECTED ;
  wire [3:1]\NLW_i_/i_/i___55_carry__4_CO_UNCONNECTED ;
  wire [3:2]\NLW_i_/i_/i___55_carry__4_O_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i___98_carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_/i_/i__carry__2_CO_UNCONNECTED ;
  wire [3:0]NLW_int_empty_carry_O_UNCONNECTED;
  wire [3:1]NLW_int_empty_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_int_empty_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_pop_is_last0_carry_O_UNCONNECTED;
  wire [3:2]NLW_pop_is_last0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_pop_is_last0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_pop_limit_hit0_carry_O_UNCONNECTED;
  wire [3:0]NLW_pop_limit_hit0_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_rd_ptr_bin_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_rd_ptr_bin_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_rd_ptr_bin_reg_rep[11]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_rd_ptr_bin_reg_rep[11]_i_1_O_UNCONNECTED ;
  wire [3:2]NLW_skip_cnt0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_skip_cnt0_carry__6_O_UNCONNECTED;

  (* srl_name = "\inst/counter_core_inst/u_ts_engine/edge_d2_reg_srl2___inst_counter_core_inst_u_ts_engine_free_run_cnt_d2_reg_r " *) 
  SRL16E edge_d2_reg_srl2___inst_counter_core_inst_u_ts_engine_free_run_cnt_d2_reg_r
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(edge_raw),
        .Q(edge_d2_reg_srl2___inst_counter_core_inst_u_ts_engine_free_run_cnt_d2_reg_r_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    edge_d2_reg_srl2___inst_counter_core_inst_u_ts_engine_free_run_cnt_d2_reg_r_i_1
       (.I0(fx_sync[1]),
        .I1(fx_sync[2]),
        .O(edge_raw));
  LUT2 #(
    .INIT(4'h8)) 
    edge_d3_reg_gate
       (.I0(edge_d3_reg_inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0),
        .I1(free_run_cnt_d3_reg_r_n_0),
        .O(edge_d3_reg_gate_n_0));
  FDRE edge_d3_reg_inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r
       (.C(clk_fs),
        .CE(1'b1),
        .D(edge_d2_reg_srl2___inst_counter_core_inst_u_ts_engine_free_run_cnt_d2_reg_r_n_0),
        .Q(edge_d3_reg_inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0),
        .R(1'b0));
  FDRE edge_d4_reg
       (.C(clk_fs),
        .CE(1'b1),
        .D(edge_d3_reg_gate_n_0),
        .Q(edge_d4),
        .R(p_0_in__0));
  CARRY4 fifo_full1_carry
       (.CI(1'b0),
        .CO({fifo_full1_carry_n_0,fifo_full1_carry_n_1,fifo_full1_carry_n_2,fifo_full1_carry_n_3}),
        .CYINIT(1'b1),
        .DI(wr_ptr_bin_reg[3:0]),
        .O({fifo_full10_out[3],NLW_fifo_full1_carry_O_UNCONNECTED[2:0]}),
        .S({fifo_full1_carry_i_1_n_0,fifo_full1_carry_i_2_n_0,fifo_full1_carry_i_3_n_0,fifo_full1_carry_i_4_n_0}));
  CARRY4 fifo_full1_carry__0
       (.CI(fifo_full1_carry_n_0),
        .CO({fifo_full1_carry__0_n_0,fifo_full1_carry__0_n_1,fifo_full1_carry__0_n_2,fifo_full1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(wr_ptr_bin_reg[7:4]),
        .O(fifo_full10_out[7:4]),
        .S({fifo_full1_carry__0_i_1_n_0,fifo_full1_carry__0_i_2_n_0,fifo_full1_carry__0_i_3_n_0,fifo_full1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_full1_carry__0_i_1
       (.I0(wr_ptr_bin_reg[7]),
        .I1(rd_ptr_at_wr_q[7]),
        .O(fifo_full1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_full1_carry__0_i_2
       (.I0(wr_ptr_bin_reg[6]),
        .I1(rd_ptr_at_wr_q[6]),
        .O(fifo_full1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_full1_carry__0_i_3
       (.I0(wr_ptr_bin_reg[5]),
        .I1(rd_ptr_at_wr_q[5]),
        .O(fifo_full1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_full1_carry__0_i_4
       (.I0(wr_ptr_bin_reg[4]),
        .I1(rd_ptr_at_wr_q[4]),
        .O(fifo_full1_carry__0_i_4_n_0));
  CARRY4 fifo_full1_carry__1
       (.CI(fifo_full1_carry__0_n_0),
        .CO({fifo_full1_carry__1_n_0,fifo_full1_carry__1_n_1,fifo_full1_carry__1_n_2,fifo_full1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(wr_ptr_bin_reg[11:8]),
        .O(fifo_full10_out[11:8]),
        .S({fifo_full1_carry__1_i_1_n_0,fifo_full1_carry__1_i_2_n_0,fifo_full1_carry__1_i_3_n_0,fifo_full1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_full1_carry__1_i_1
       (.I0(wr_ptr_bin_reg[11]),
        .I1(rd_ptr_at_wr_q[11]),
        .O(fifo_full1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_full1_carry__1_i_2
       (.I0(wr_ptr_bin_reg[10]),
        .I1(rd_ptr_at_wr_q[10]),
        .O(fifo_full1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_full1_carry__1_i_3
       (.I0(wr_ptr_bin_reg[9]),
        .I1(rd_ptr_at_wr_q[9]),
        .O(fifo_full1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_full1_carry__1_i_4
       (.I0(wr_ptr_bin_reg[8]),
        .I1(rd_ptr_at_wr_q[8]),
        .O(fifo_full1_carry__1_i_4_n_0));
  CARRY4 fifo_full1_carry__2
       (.CI(fifo_full1_carry__1_n_0),
        .CO(NLW_fifo_full1_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_fifo_full1_carry__2_O_UNCONNECTED[3:1],fifo_full10_out[12]}),
        .S({1'b0,1'b0,1'b0,fifo_full1_carry__2_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_full1_carry__2_i_1
       (.I0(wr_ptr_bin_reg[12]),
        .I1(rd_ptr_at_wr_q[12]),
        .O(fifo_full1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_full1_carry_i_1
       (.I0(wr_ptr_bin_reg[3]),
        .I1(rd_ptr_at_wr_q[3]),
        .O(fifo_full1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_full1_carry_i_2
       (.I0(wr_ptr_bin_reg[2]),
        .I1(rd_ptr_at_wr_q[2]),
        .O(fifo_full1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_full1_carry_i_3
       (.I0(wr_ptr_bin_reg[1]),
        .I1(rd_ptr_at_wr_q[1]),
        .O(fifo_full1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_full1_carry_i_4
       (.I0(wr_ptr_bin_reg[0]),
        .I1(rd_ptr_at_wr_q[0]),
        .O(fifo_full1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    fifo_full_i_1
       (.I0(fifo_full_i_2_n_0),
        .I1(fifo_full10_out[5]),
        .I2(fifo_full10_out[4]),
        .I3(fifo_full10_out[3]),
        .I4(fifo_full10_out[12]),
        .O(fifo_full_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    fifo_full_i_2
       (.I0(fifo_full10_out[8]),
        .I1(fifo_full10_out[9]),
        .I2(fifo_full10_out[6]),
        .I3(fifo_full10_out[7]),
        .I4(fifo_full10_out[11]),
        .I5(fifo_full10_out[10]),
        .O(fifo_full_i_2_n_0));
  FDRE fifo_full_reg
       (.C(clk_fs),
        .CE(1'b1),
        .D(fifo_full_i_1_n_0),
        .Q(fifo_full),
        .R(p_0_in__0));
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
       (.ADDRARDADDR({1'b1,wr_ptr_bin_reg[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,rd_ptr_bin_reg_rep__0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fifo_mem_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fifo_mem_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_fs),
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
       (.ADDRARDADDR({1'b1,wr_ptr_bin_reg[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,rd_ptr_bin_reg_rep__0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fifo_mem_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fifo_mem_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_fs),
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
       (.ADDRARDADDR({1'b1,wr_ptr_bin_reg[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,rd_ptr_bin_reg_rep__0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fifo_mem_reg_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fifo_mem_reg_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_fs),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_fifo_mem_reg_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,tdc_value[1:0],ovf_mark,tdc_valid,seq_cnt_reg[21:18]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,tdc_value[2]}),
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
       (.ADDRARDADDR({1'b1,wr_ptr_bin_reg[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,rd_ptr_bin_reg_rep__0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fifo_mem_reg_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fifo_mem_reg_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_fs),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_fifo_mem_reg_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,free_run_cnt_d5[2:0],tdc_value[7:3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,free_run_cnt_d5[3]}),
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
       (.ADDRARDADDR({1'b1,wr_ptr_bin_reg[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,rd_ptr_bin_reg_rep__0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fifo_mem_reg_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fifo_mem_reg_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_fs),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_fifo_mem_reg_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,free_run_cnt_d5[11:4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,free_run_cnt_d5[12]}),
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
       (.ADDRARDADDR({1'b1,wr_ptr_bin_reg[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,rd_ptr_bin_reg_rep__0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fifo_mem_reg_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fifo_mem_reg_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_fs),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_fifo_mem_reg_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,free_run_cnt_d5[20:13]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,free_run_cnt_d5[21]}),
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
       (.ADDRARDADDR({1'b1,wr_ptr_bin_reg[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,rd_ptr_bin_reg_rep__0,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fifo_mem_reg_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fifo_mem_reg_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_fs),
        .CLKBWRCLK(s_axi_aclk),
        .DBITERR(NLW_fifo_mem_reg_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,free_run_cnt_d5[29:22]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,free_run_cnt_d5[30]}),
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
       (.ADDRARDADDR({wr_ptr_bin_reg[11:0],1'b1,1'b1}),
        .ADDRBWRADDR({rd_ptr_bin_reg_rep__0,1'b1,1'b1}),
        .CLKARDCLK(clk_fs),
        .CLKBWRCLK(s_axi_aclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,free_run_cnt_d5[31]}),
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
       (.I0(ts_en_d_reg_1),
        .I1(edge_d4),
        .I2(skip_zero),
        .O(fifo_mem_reg_7_i_1_n_0));
  LUT5 #(
    .INIT(32'h00B00000)) 
    fifo_mem_reg_7_i_2
       (.I0(m_axis_tready),
        .I1(out_valid_reg_0),
        .I2(fifo_mem_reg_0_0),
        .I3(CO),
        .I4(fifo_mem_reg_0_1),
        .O(fifo_mem_reg_7_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fifo_mem_reg_7_i_3
       (.I0(fifo_full),
        .O(wr_en0));
  FDRE free_run_cnt_d1_reg_r
       (.C(clk_fs),
        .CE(1'b1),
        .D(1'b1),
        .Q(free_run_cnt_d1_reg_r_n_0),
        .R(p_0_in__0));
  FDRE free_run_cnt_d2_reg_r
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d1_reg_r_n_0),
        .Q(free_run_cnt_d2_reg_r_n_0),
        .R(p_0_in__0));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[0]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[0]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[0]),
        .Q(\free_run_cnt_d3_reg[0]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[10]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[10]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[10]),
        .Q(\free_run_cnt_d3_reg[10]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[11]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[11]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[11]),
        .Q(\free_run_cnt_d3_reg[11]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[12]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[12]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[12]),
        .Q(\free_run_cnt_d3_reg[12]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[13]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[13]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[13]),
        .Q(\free_run_cnt_d3_reg[13]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[14]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[14]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[14]),
        .Q(\free_run_cnt_d3_reg[14]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[15]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[15]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[15]),
        .Q(\free_run_cnt_d3_reg[15]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[16]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[16]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[16]),
        .Q(\free_run_cnt_d3_reg[16]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[17]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[17]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[17]),
        .Q(\free_run_cnt_d3_reg[17]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[18]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[18]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[18]),
        .Q(\free_run_cnt_d3_reg[18]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[19]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[19]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[19]),
        .Q(\free_run_cnt_d3_reg[19]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[1]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[1]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[1]),
        .Q(\free_run_cnt_d3_reg[1]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[20]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[20]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[20]),
        .Q(\free_run_cnt_d3_reg[20]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[21]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[21]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[21]),
        .Q(\free_run_cnt_d3_reg[21]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[22]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[22]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[22]),
        .Q(\free_run_cnt_d3_reg[22]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[23]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[23]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[23]),
        .Q(\free_run_cnt_d3_reg[23]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[24]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[24]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[24]),
        .Q(\free_run_cnt_d3_reg[24]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[25]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[25]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[25]),
        .Q(\free_run_cnt_d3_reg[25]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[26]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[26]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[26]),
        .Q(\free_run_cnt_d3_reg[26]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[27]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[27]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[27]),
        .Q(\free_run_cnt_d3_reg[27]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[28]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[28]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[28]),
        .Q(\free_run_cnt_d3_reg[28]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[29]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[29]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[29]),
        .Q(\free_run_cnt_d3_reg[29]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[2]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[2]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[2]),
        .Q(\free_run_cnt_d3_reg[2]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[30]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[30]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[30]),
        .Q(\free_run_cnt_d3_reg[30]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[31]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[31]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[31]),
        .Q(\free_run_cnt_d3_reg[31]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[3]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[3]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[3]),
        .Q(\free_run_cnt_d3_reg[3]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[4]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[4]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[4]),
        .Q(\free_run_cnt_d3_reg[4]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[5]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[5]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[5]),
        .Q(\free_run_cnt_d3_reg[5]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[6]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[6]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[6]),
        .Q(\free_run_cnt_d3_reg[6]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[7]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[7]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[7]),
        .Q(\free_run_cnt_d3_reg[7]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[8]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[8]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[8]),
        .Q(\free_run_cnt_d3_reg[8]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  (* srl_bus_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg " *) 
  (* srl_name = "\inst/counter_core_inst/u_ts_engine/free_run_cnt_d3_reg[9]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r " *) 
  SRL16E \free_run_cnt_d3_reg[9]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_fs),
        .D(free_run_cnt_reg[9]),
        .Q(\free_run_cnt_d3_reg[9]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ));
  FDRE free_run_cnt_d3_reg_r
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d2_reg_r_n_0),
        .Q(free_run_cnt_d3_reg_r_n_0),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d4_reg[0]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[0]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[0]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[10]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[10]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[10]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[11]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[11]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[11]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[12]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[12]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[12]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[13]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[13]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[13]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[14]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[14]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[14]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[15]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[15]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[15]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[16]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[16]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[16]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[17]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[17]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[17]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[18]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[18]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[18]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[19]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[19]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[19]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[1]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[1]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[1]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[20]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[20]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[20]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[21]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[21]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[21]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[22]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[22]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[22]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[23]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[23]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[23]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[24]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[24]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[24]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[25]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[25]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[25]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[26]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[26]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[26]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[27]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[27]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[27]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[28]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[28]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[28]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[29]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[29]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[29]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[2]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[2]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[2]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[30]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[30]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[30]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[31]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[31]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[31]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[3]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[3]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[3]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[4]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[4]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[4]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[5]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[5]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[5]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[6]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[6]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[6]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[7]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[7]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[7]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[8]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[8]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[8]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  FDRE \free_run_cnt_d4_reg[9]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\free_run_cnt_d3_reg[9]_srl3___inst_counter_core_inst_u_ts_engine_free_run_cnt_d3_reg_r_n_0 ),
        .Q(\free_run_cnt_d4_reg[9]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate
       (.I0(\free_run_cnt_d4_reg[31]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__0
       (.I0(\free_run_cnt_d4_reg[30]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__1
       (.I0(\free_run_cnt_d4_reg[29]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__10
       (.I0(\free_run_cnt_d4_reg[20]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__11
       (.I0(\free_run_cnt_d4_reg[19]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__12
       (.I0(\free_run_cnt_d4_reg[18]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__13
       (.I0(\free_run_cnt_d4_reg[17]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__14
       (.I0(\free_run_cnt_d4_reg[16]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__15
       (.I0(\free_run_cnt_d4_reg[15]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__16
       (.I0(\free_run_cnt_d4_reg[14]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__17
       (.I0(\free_run_cnt_d4_reg[13]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__18
       (.I0(\free_run_cnt_d4_reg[12]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__19
       (.I0(\free_run_cnt_d4_reg[11]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__2
       (.I0(\free_run_cnt_d4_reg[28]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__20
       (.I0(\free_run_cnt_d4_reg[10]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__21
       (.I0(\free_run_cnt_d4_reg[9]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__22
       (.I0(\free_run_cnt_d4_reg[8]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__23
       (.I0(\free_run_cnt_d4_reg[7]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__24
       (.I0(\free_run_cnt_d4_reg[6]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__25
       (.I0(\free_run_cnt_d4_reg[5]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__26
       (.I0(\free_run_cnt_d4_reg[4]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__27
       (.I0(\free_run_cnt_d4_reg[3]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__28
       (.I0(\free_run_cnt_d4_reg[2]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__29
       (.I0(\free_run_cnt_d4_reg[1]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__29_n_0));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__3
       (.I0(\free_run_cnt_d4_reg[27]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__30
       (.I0(\free_run_cnt_d4_reg[0]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__30_n_0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__4
       (.I0(\free_run_cnt_d4_reg[26]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__5
       (.I0(\free_run_cnt_d4_reg[25]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__6
       (.I0(\free_run_cnt_d4_reg[24]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__7
       (.I0(\free_run_cnt_d4_reg[23]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__8
       (.I0(\free_run_cnt_d4_reg[22]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    free_run_cnt_d4_reg_gate__9
       (.I0(\free_run_cnt_d4_reg[21]_inst_counter_core_inst_u_ts_engine_free_run_cnt_d4_reg_r_n_0 ),
        .I1(free_run_cnt_d4_reg_r_n_0),
        .O(free_run_cnt_d4_reg_gate__9_n_0));
  FDRE free_run_cnt_d4_reg_r
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d3_reg_r_n_0),
        .Q(free_run_cnt_d4_reg_r_n_0),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__30_n_0),
        .Q(free_run_cnt_d5[0]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[10] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__20_n_0),
        .Q(free_run_cnt_d5[10]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[11] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__19_n_0),
        .Q(free_run_cnt_d5[11]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[12] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__18_n_0),
        .Q(free_run_cnt_d5[12]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[13] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__17_n_0),
        .Q(free_run_cnt_d5[13]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[14] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__16_n_0),
        .Q(free_run_cnt_d5[14]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[15] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__15_n_0),
        .Q(free_run_cnt_d5[15]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[16] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__14_n_0),
        .Q(free_run_cnt_d5[16]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[17] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__13_n_0),
        .Q(free_run_cnt_d5[17]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[18] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__12_n_0),
        .Q(free_run_cnt_d5[18]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[19] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__11_n_0),
        .Q(free_run_cnt_d5[19]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__29_n_0),
        .Q(free_run_cnt_d5[1]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[20] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__10_n_0),
        .Q(free_run_cnt_d5[20]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[21] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__9_n_0),
        .Q(free_run_cnt_d5[21]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[22] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__8_n_0),
        .Q(free_run_cnt_d5[22]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[23] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__7_n_0),
        .Q(free_run_cnt_d5[23]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[24] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__6_n_0),
        .Q(free_run_cnt_d5[24]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[25] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__5_n_0),
        .Q(free_run_cnt_d5[25]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[26] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__4_n_0),
        .Q(free_run_cnt_d5[26]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[27] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__3_n_0),
        .Q(free_run_cnt_d5[27]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[28] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__2_n_0),
        .Q(free_run_cnt_d5[28]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[29] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__1_n_0),
        .Q(free_run_cnt_d5[29]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__28_n_0),
        .Q(free_run_cnt_d5[2]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[30] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__0_n_0),
        .Q(free_run_cnt_d5[30]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[31] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate_n_0),
        .Q(free_run_cnt_d5[31]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__27_n_0),
        .Q(free_run_cnt_d5[3]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__26_n_0),
        .Q(free_run_cnt_d5[4]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__25_n_0),
        .Q(free_run_cnt_d5[5]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[6] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__24_n_0),
        .Q(free_run_cnt_d5[6]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[7] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__23_n_0),
        .Q(free_run_cnt_d5[7]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[8] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__22_n_0),
        .Q(free_run_cnt_d5[8]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_d5_reg[9] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(free_run_cnt_d4_reg_gate__21_n_0),
        .Q(free_run_cnt_d5[9]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry_n_7 ),
        .Q(free_run_cnt_reg[0]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[10] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__1_n_5 ),
        .Q(free_run_cnt_reg[10]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[11] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__1_n_4 ),
        .Q(free_run_cnt_reg[11]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[12] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__2_n_7 ),
        .Q(free_run_cnt_reg[12]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[13] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__2_n_6 ),
        .Q(free_run_cnt_reg[13]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[14] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__2_n_5 ),
        .Q(free_run_cnt_reg[14]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[15] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__2_n_4 ),
        .Q(free_run_cnt_reg[15]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[16] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__3_n_7 ),
        .Q(free_run_cnt_reg[16]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[17] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__3_n_6 ),
        .Q(free_run_cnt_reg[17]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[18] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__3_n_5 ),
        .Q(free_run_cnt_reg[18]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[19] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__3_n_4 ),
        .Q(free_run_cnt_reg[19]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry_n_6 ),
        .Q(free_run_cnt_reg[1]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[20] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__4_n_7 ),
        .Q(free_run_cnt_reg[20]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[21] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__4_n_6 ),
        .Q(free_run_cnt_reg[21]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[22] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__4_n_5 ),
        .Q(free_run_cnt_reg[22]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[23] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__4_n_4 ),
        .Q(free_run_cnt_reg[23]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[24] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__5_n_7 ),
        .Q(free_run_cnt_reg[24]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[25] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__5_n_6 ),
        .Q(free_run_cnt_reg[25]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[26] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__5_n_5 ),
        .Q(free_run_cnt_reg[26]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[27] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__5_n_4 ),
        .Q(free_run_cnt_reg[27]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[28] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__6_n_7 ),
        .Q(free_run_cnt_reg[28]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[29] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__6_n_6 ),
        .Q(free_run_cnt_reg[29]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry_n_5 ),
        .Q(free_run_cnt_reg[2]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[30] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__6_n_5 ),
        .Q(free_run_cnt_reg[30]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[31] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__6_n_4 ),
        .Q(free_run_cnt_reg[31]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry_n_4 ),
        .Q(free_run_cnt_reg[3]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__0_n_7 ),
        .Q(free_run_cnt_reg[4]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__0_n_6 ),
        .Q(free_run_cnt_reg[5]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[6] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__0_n_5 ),
        .Q(free_run_cnt_reg[6]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[7] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__0_n_4 ),
        .Q(free_run_cnt_reg[7]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[8] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__1_n_7 ),
        .Q(free_run_cnt_reg[8]),
        .R(p_0_in__0));
  FDRE \free_run_cnt_reg[9] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(\i_/i_/i___98_carry__1_n_6 ),
        .Q(free_run_cnt_reg[9]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \fx_sync_reg[0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(D),
        .Q(fx_sync[0]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \fx_sync_reg[1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(fx_sync[0]),
        .Q(fx_sync[1]),
        .R(p_0_in__0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \fx_sync_reg[2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(fx_sync[1]),
        .Q(fx_sync[2]),
        .R(p_0_in__0));
  CARRY4 \i_/i_/i___161_carry 
       (.CI(1'b0),
        .CO({\i_/i_/i___161_carry_n_0 ,\i_/i_/i___161_carry_n_1 ,\i_/i_/i___161_carry_n_2 ,\i_/i_/i___161_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\i_/i_/i___161_carry_n_4 ,\i_/i_/i___161_carry_n_5 ,\i_/i_/i___161_carry_n_6 ,\i_/i_/i___161_carry_n_7 }),
        .S({ts_count_fs_reg[3:1],i___161_carry_i_1_n_0}));
  CARRY4 \i_/i_/i___161_carry__0 
       (.CI(\i_/i_/i___161_carry_n_0 ),
        .CO({\i_/i_/i___161_carry__0_n_0 ,\i_/i_/i___161_carry__0_n_1 ,\i_/i_/i___161_carry__0_n_2 ,\i_/i_/i___161_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___161_carry__0_n_4 ,\i_/i_/i___161_carry__0_n_5 ,\i_/i_/i___161_carry__0_n_6 ,\i_/i_/i___161_carry__0_n_7 }),
        .S(ts_count_fs_reg[7:4]));
  CARRY4 \i_/i_/i___161_carry__1 
       (.CI(\i_/i_/i___161_carry__0_n_0 ),
        .CO({\i_/i_/i___161_carry__1_n_0 ,\i_/i_/i___161_carry__1_n_1 ,\i_/i_/i___161_carry__1_n_2 ,\i_/i_/i___161_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___161_carry__1_n_4 ,\i_/i_/i___161_carry__1_n_5 ,\i_/i_/i___161_carry__1_n_6 ,\i_/i_/i___161_carry__1_n_7 }),
        .S(ts_count_fs_reg[11:8]));
  CARRY4 \i_/i_/i___161_carry__2 
       (.CI(\i_/i_/i___161_carry__1_n_0 ),
        .CO({\i_/i_/i___161_carry__2_n_0 ,\i_/i_/i___161_carry__2_n_1 ,\i_/i_/i___161_carry__2_n_2 ,\i_/i_/i___161_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___161_carry__2_n_4 ,\i_/i_/i___161_carry__2_n_5 ,\i_/i_/i___161_carry__2_n_6 ,\i_/i_/i___161_carry__2_n_7 }),
        .S(ts_count_fs_reg[15:12]));
  CARRY4 \i_/i_/i___161_carry__3 
       (.CI(\i_/i_/i___161_carry__2_n_0 ),
        .CO({\i_/i_/i___161_carry__3_n_0 ,\i_/i_/i___161_carry__3_n_1 ,\i_/i_/i___161_carry__3_n_2 ,\i_/i_/i___161_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___161_carry__3_n_4 ,\i_/i_/i___161_carry__3_n_5 ,\i_/i_/i___161_carry__3_n_6 ,\i_/i_/i___161_carry__3_n_7 }),
        .S(ts_count_fs_reg[19:16]));
  CARRY4 \i_/i_/i___161_carry__4 
       (.CI(\i_/i_/i___161_carry__3_n_0 ),
        .CO({\i_/i_/i___161_carry__4_n_0 ,\i_/i_/i___161_carry__4_n_1 ,\i_/i_/i___161_carry__4_n_2 ,\i_/i_/i___161_carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___161_carry__4_n_4 ,\i_/i_/i___161_carry__4_n_5 ,\i_/i_/i___161_carry__4_n_6 ,\i_/i_/i___161_carry__4_n_7 }),
        .S(ts_count_fs_reg[23:20]));
  CARRY4 \i_/i_/i___161_carry__5 
       (.CI(\i_/i_/i___161_carry__4_n_0 ),
        .CO({\i_/i_/i___161_carry__5_n_0 ,\i_/i_/i___161_carry__5_n_1 ,\i_/i_/i___161_carry__5_n_2 ,\i_/i_/i___161_carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___161_carry__5_n_4 ,\i_/i_/i___161_carry__5_n_5 ,\i_/i_/i___161_carry__5_n_6 ,\i_/i_/i___161_carry__5_n_7 }),
        .S(ts_count_fs_reg[27:24]));
  CARRY4 \i_/i_/i___161_carry__6 
       (.CI(\i_/i_/i___161_carry__5_n_0 ),
        .CO({\NLW_i_/i_/i___161_carry__6_CO_UNCONNECTED [3],\i_/i_/i___161_carry__6_n_1 ,\i_/i_/i___161_carry__6_n_2 ,\i_/i_/i___161_carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___161_carry__6_n_4 ,\i_/i_/i___161_carry__6_n_5 ,\i_/i_/i___161_carry__6_n_6 ,\i_/i_/i___161_carry__6_n_7 }),
        .S(ts_count_fs_reg[31:28]));
  CARRY4 \i_/i_/i___224_carry 
       (.CI(1'b0),
        .CO({\i_/i_/i___224_carry_n_0 ,\i_/i_/i___224_carry_n_1 ,\i_/i_/i___224_carry_n_2 ,\i_/i_/i___224_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\i_/i_/i___224_carry_n_4 ,\i_/i_/i___224_carry_n_5 ,\i_/i_/i___224_carry_n_6 ,\i_/i_/i___224_carry_n_7 }),
        .S({lost_count_fs_reg[3:1],i___224_carry_i_1_n_0}));
  CARRY4 \i_/i_/i___224_carry__0 
       (.CI(\i_/i_/i___224_carry_n_0 ),
        .CO({\i_/i_/i___224_carry__0_n_0 ,\i_/i_/i___224_carry__0_n_1 ,\i_/i_/i___224_carry__0_n_2 ,\i_/i_/i___224_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___224_carry__0_n_4 ,\i_/i_/i___224_carry__0_n_5 ,\i_/i_/i___224_carry__0_n_6 ,\i_/i_/i___224_carry__0_n_7 }),
        .S(lost_count_fs_reg[7:4]));
  CARRY4 \i_/i_/i___224_carry__1 
       (.CI(\i_/i_/i___224_carry__0_n_0 ),
        .CO({\i_/i_/i___224_carry__1_n_0 ,\i_/i_/i___224_carry__1_n_1 ,\i_/i_/i___224_carry__1_n_2 ,\i_/i_/i___224_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___224_carry__1_n_4 ,\i_/i_/i___224_carry__1_n_5 ,\i_/i_/i___224_carry__1_n_6 ,\i_/i_/i___224_carry__1_n_7 }),
        .S(lost_count_fs_reg[11:8]));
  CARRY4 \i_/i_/i___224_carry__2 
       (.CI(\i_/i_/i___224_carry__1_n_0 ),
        .CO({\i_/i_/i___224_carry__2_n_0 ,\i_/i_/i___224_carry__2_n_1 ,\i_/i_/i___224_carry__2_n_2 ,\i_/i_/i___224_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___224_carry__2_n_4 ,\i_/i_/i___224_carry__2_n_5 ,\i_/i_/i___224_carry__2_n_6 ,\i_/i_/i___224_carry__2_n_7 }),
        .S(lost_count_fs_reg[15:12]));
  CARRY4 \i_/i_/i___224_carry__3 
       (.CI(\i_/i_/i___224_carry__2_n_0 ),
        .CO({\i_/i_/i___224_carry__3_n_0 ,\i_/i_/i___224_carry__3_n_1 ,\i_/i_/i___224_carry__3_n_2 ,\i_/i_/i___224_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___224_carry__3_n_4 ,\i_/i_/i___224_carry__3_n_5 ,\i_/i_/i___224_carry__3_n_6 ,\i_/i_/i___224_carry__3_n_7 }),
        .S(lost_count_fs_reg[19:16]));
  CARRY4 \i_/i_/i___224_carry__4 
       (.CI(\i_/i_/i___224_carry__3_n_0 ),
        .CO({\i_/i_/i___224_carry__4_n_0 ,\i_/i_/i___224_carry__4_n_1 ,\i_/i_/i___224_carry__4_n_2 ,\i_/i_/i___224_carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___224_carry__4_n_4 ,\i_/i_/i___224_carry__4_n_5 ,\i_/i_/i___224_carry__4_n_6 ,\i_/i_/i___224_carry__4_n_7 }),
        .S(lost_count_fs_reg[23:20]));
  CARRY4 \i_/i_/i___224_carry__5 
       (.CI(\i_/i_/i___224_carry__4_n_0 ),
        .CO({\i_/i_/i___224_carry__5_n_0 ,\i_/i_/i___224_carry__5_n_1 ,\i_/i_/i___224_carry__5_n_2 ,\i_/i_/i___224_carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___224_carry__5_n_4 ,\i_/i_/i___224_carry__5_n_5 ,\i_/i_/i___224_carry__5_n_6 ,\i_/i_/i___224_carry__5_n_7 }),
        .S(lost_count_fs_reg[27:24]));
  CARRY4 \i_/i_/i___224_carry__6 
       (.CI(\i_/i_/i___224_carry__5_n_0 ),
        .CO({\NLW_i_/i_/i___224_carry__6_CO_UNCONNECTED [3],\i_/i_/i___224_carry__6_n_1 ,\i_/i_/i___224_carry__6_n_2 ,\i_/i_/i___224_carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___224_carry__6_n_4 ,\i_/i_/i___224_carry__6_n_5 ,\i_/i_/i___224_carry__6_n_6 ,\i_/i_/i___224_carry__6_n_7 }),
        .S(lost_count_fs_reg[31:28]));
  CARRY4 \i_/i_/i___30_carry 
       (.CI(1'b0),
        .CO({\i_/i_/i___30_carry_n_0 ,\i_/i_/i___30_carry_n_1 ,\i_/i_/i___30_carry_n_2 ,\i_/i_/i___30_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\i_/i_/i___30_carry_n_4 ,\i_/i_/i___30_carry_n_5 ,\i_/i_/i___30_carry_n_6 ,\i_/i_/i___30_carry_n_7 }),
        .S({wr_ptr_bin_reg[3:1],i___30_carry_i_1_n_0}));
  CARRY4 \i_/i_/i___30_carry__0 
       (.CI(\i_/i_/i___30_carry_n_0 ),
        .CO({\i_/i_/i___30_carry__0_n_0 ,\i_/i_/i___30_carry__0_n_1 ,\i_/i_/i___30_carry__0_n_2 ,\i_/i_/i___30_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___30_carry__0_n_4 ,\i_/i_/i___30_carry__0_n_5 ,\i_/i_/i___30_carry__0_n_6 ,\i_/i_/i___30_carry__0_n_7 }),
        .S(wr_ptr_bin_reg[7:4]));
  CARRY4 \i_/i_/i___30_carry__1 
       (.CI(\i_/i_/i___30_carry__0_n_0 ),
        .CO({\i_/i_/i___30_carry__1_n_0 ,\i_/i_/i___30_carry__1_n_1 ,\i_/i_/i___30_carry__1_n_2 ,\i_/i_/i___30_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___30_carry__1_n_4 ,\i_/i_/i___30_carry__1_n_5 ,\i_/i_/i___30_carry__1_n_6 ,\i_/i_/i___30_carry__1_n_7 }),
        .S(wr_ptr_bin_reg[11:8]));
  CARRY4 \i_/i_/i___30_carry__2 
       (.CI(\i_/i_/i___30_carry__1_n_0 ),
        .CO(\NLW_i_/i_/i___30_carry__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_/i_/i___30_carry__2_O_UNCONNECTED [3:1],\i_/i_/i___30_carry__2_n_7 }),
        .S({1'b0,1'b0,1'b0,wr_ptr_bin_reg[12]}));
  CARRY4 \i_/i_/i___55_carry 
       (.CI(1'b0),
        .CO({\i_/i_/i___55_carry_n_0 ,\i_/i_/i___55_carry_n_1 ,\i_/i_/i___55_carry_n_2 ,\i_/i_/i___55_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\i_/i_/i___55_carry_n_4 ,\i_/i_/i___55_carry_n_5 ,\i_/i_/i___55_carry_n_6 ,\i_/i_/i___55_carry_n_7 }),
        .S({seq_cnt_reg[3:1],i___55_carry_i_1_n_0}));
  CARRY4 \i_/i_/i___55_carry__0 
       (.CI(\i_/i_/i___55_carry_n_0 ),
        .CO({\i_/i_/i___55_carry__0_n_0 ,\i_/i_/i___55_carry__0_n_1 ,\i_/i_/i___55_carry__0_n_2 ,\i_/i_/i___55_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___55_carry__0_n_4 ,\i_/i_/i___55_carry__0_n_5 ,\i_/i_/i___55_carry__0_n_6 ,\i_/i_/i___55_carry__0_n_7 }),
        .S(seq_cnt_reg[7:4]));
  CARRY4 \i_/i_/i___55_carry__1 
       (.CI(\i_/i_/i___55_carry__0_n_0 ),
        .CO({\i_/i_/i___55_carry__1_n_0 ,\i_/i_/i___55_carry__1_n_1 ,\i_/i_/i___55_carry__1_n_2 ,\i_/i_/i___55_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___55_carry__1_n_4 ,\i_/i_/i___55_carry__1_n_5 ,\i_/i_/i___55_carry__1_n_6 ,\i_/i_/i___55_carry__1_n_7 }),
        .S(seq_cnt_reg[11:8]));
  CARRY4 \i_/i_/i___55_carry__2 
       (.CI(\i_/i_/i___55_carry__1_n_0 ),
        .CO({\i_/i_/i___55_carry__2_n_0 ,\i_/i_/i___55_carry__2_n_1 ,\i_/i_/i___55_carry__2_n_2 ,\i_/i_/i___55_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___55_carry__2_n_4 ,\i_/i_/i___55_carry__2_n_5 ,\i_/i_/i___55_carry__2_n_6 ,\i_/i_/i___55_carry__2_n_7 }),
        .S(seq_cnt_reg[15:12]));
  CARRY4 \i_/i_/i___55_carry__3 
       (.CI(\i_/i_/i___55_carry__2_n_0 ),
        .CO({\i_/i_/i___55_carry__3_n_0 ,\i_/i_/i___55_carry__3_n_1 ,\i_/i_/i___55_carry__3_n_2 ,\i_/i_/i___55_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___55_carry__3_n_4 ,\i_/i_/i___55_carry__3_n_5 ,\i_/i_/i___55_carry__3_n_6 ,\i_/i_/i___55_carry__3_n_7 }),
        .S(seq_cnt_reg[19:16]));
  CARRY4 \i_/i_/i___55_carry__4 
       (.CI(\i_/i_/i___55_carry__3_n_0 ),
        .CO({\NLW_i_/i_/i___55_carry__4_CO_UNCONNECTED [3:1],\i_/i_/i___55_carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_/i_/i___55_carry__4_O_UNCONNECTED [3:2],\i_/i_/i___55_carry__4_n_6 ,\i_/i_/i___55_carry__4_n_7 }),
        .S({1'b0,1'b0,seq_cnt_reg[21:20]}));
  CARRY4 \i_/i_/i___98_carry 
       (.CI(1'b0),
        .CO({\i_/i_/i___98_carry_n_0 ,\i_/i_/i___98_carry_n_1 ,\i_/i_/i___98_carry_n_2 ,\i_/i_/i___98_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\i_/i_/i___98_carry_n_4 ,\i_/i_/i___98_carry_n_5 ,\i_/i_/i___98_carry_n_6 ,\i_/i_/i___98_carry_n_7 }),
        .S({free_run_cnt_reg[3:1],i___98_carry_i_1_n_0}));
  CARRY4 \i_/i_/i___98_carry__0 
       (.CI(\i_/i_/i___98_carry_n_0 ),
        .CO({\i_/i_/i___98_carry__0_n_0 ,\i_/i_/i___98_carry__0_n_1 ,\i_/i_/i___98_carry__0_n_2 ,\i_/i_/i___98_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___98_carry__0_n_4 ,\i_/i_/i___98_carry__0_n_5 ,\i_/i_/i___98_carry__0_n_6 ,\i_/i_/i___98_carry__0_n_7 }),
        .S(free_run_cnt_reg[7:4]));
  CARRY4 \i_/i_/i___98_carry__1 
       (.CI(\i_/i_/i___98_carry__0_n_0 ),
        .CO({\i_/i_/i___98_carry__1_n_0 ,\i_/i_/i___98_carry__1_n_1 ,\i_/i_/i___98_carry__1_n_2 ,\i_/i_/i___98_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___98_carry__1_n_4 ,\i_/i_/i___98_carry__1_n_5 ,\i_/i_/i___98_carry__1_n_6 ,\i_/i_/i___98_carry__1_n_7 }),
        .S(free_run_cnt_reg[11:8]));
  CARRY4 \i_/i_/i___98_carry__2 
       (.CI(\i_/i_/i___98_carry__1_n_0 ),
        .CO({\i_/i_/i___98_carry__2_n_0 ,\i_/i_/i___98_carry__2_n_1 ,\i_/i_/i___98_carry__2_n_2 ,\i_/i_/i___98_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___98_carry__2_n_4 ,\i_/i_/i___98_carry__2_n_5 ,\i_/i_/i___98_carry__2_n_6 ,\i_/i_/i___98_carry__2_n_7 }),
        .S(free_run_cnt_reg[15:12]));
  CARRY4 \i_/i_/i___98_carry__3 
       (.CI(\i_/i_/i___98_carry__2_n_0 ),
        .CO({\i_/i_/i___98_carry__3_n_0 ,\i_/i_/i___98_carry__3_n_1 ,\i_/i_/i___98_carry__3_n_2 ,\i_/i_/i___98_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___98_carry__3_n_4 ,\i_/i_/i___98_carry__3_n_5 ,\i_/i_/i___98_carry__3_n_6 ,\i_/i_/i___98_carry__3_n_7 }),
        .S(free_run_cnt_reg[19:16]));
  CARRY4 \i_/i_/i___98_carry__4 
       (.CI(\i_/i_/i___98_carry__3_n_0 ),
        .CO({\i_/i_/i___98_carry__4_n_0 ,\i_/i_/i___98_carry__4_n_1 ,\i_/i_/i___98_carry__4_n_2 ,\i_/i_/i___98_carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___98_carry__4_n_4 ,\i_/i_/i___98_carry__4_n_5 ,\i_/i_/i___98_carry__4_n_6 ,\i_/i_/i___98_carry__4_n_7 }),
        .S(free_run_cnt_reg[23:20]));
  CARRY4 \i_/i_/i___98_carry__5 
       (.CI(\i_/i_/i___98_carry__4_n_0 ),
        .CO({\i_/i_/i___98_carry__5_n_0 ,\i_/i_/i___98_carry__5_n_1 ,\i_/i_/i___98_carry__5_n_2 ,\i_/i_/i___98_carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___98_carry__5_n_4 ,\i_/i_/i___98_carry__5_n_5 ,\i_/i_/i___98_carry__5_n_6 ,\i_/i_/i___98_carry__5_n_7 }),
        .S(free_run_cnt_reg[27:24]));
  CARRY4 \i_/i_/i___98_carry__6 
       (.CI(\i_/i_/i___98_carry__5_n_0 ),
        .CO({\NLW_i_/i_/i___98_carry__6_CO_UNCONNECTED [3],\i_/i_/i___98_carry__6_n_1 ,\i_/i_/i___98_carry__6_n_2 ,\i_/i_/i___98_carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i___98_carry__6_n_4 ,\i_/i_/i___98_carry__6_n_5 ,\i_/i_/i___98_carry__6_n_6 ,\i_/i_/i___98_carry__6_n_7 }),
        .S(free_run_cnt_reg[31:28]));
  CARRY4 \i_/i_/i__carry 
       (.CI(1'b0),
        .CO({\i_/i_/i__carry_n_0 ,\i_/i_/i__carry_n_1 ,\i_/i_/i__carry_n_2 ,\i_/i_/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\i_/i_/i__carry_n_4 ,\i_/i_/i__carry_n_5 ,\i_/i_/i__carry_n_6 ,\i_/i_/i__carry_n_7 }),
        .S({S,i__carry_i_1_n_0}));
  CARRY4 \i_/i_/i__carry__0 
       (.CI(\i_/i_/i__carry_n_0 ),
        .CO({\i_/i_/i__carry__0_n_0 ,\i_/i_/i__carry__0_n_1 ,\i_/i_/i__carry__0_n_2 ,\i_/i_/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__0_n_4 ,\i_/i_/i__carry__0_n_5 ,\i_/i_/i__carry__0_n_6 ,\i_/i_/i__carry__0_n_7 }),
        .S(\pop_cnt_reg[7]_0 ));
  CARRY4 \i_/i_/i__carry__1 
       (.CI(\i_/i_/i__carry__0_n_0 ),
        .CO({\i_/i_/i__carry__1_n_0 ,\i_/i_/i__carry__1_n_1 ,\i_/i_/i__carry__1_n_2 ,\i_/i_/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__1_n_4 ,\i_/i_/i__carry__1_n_5 ,\i_/i_/i__carry__1_n_6 ,\i_/i_/i__carry__1_n_7 }),
        .S(\pop_cnt_reg[11]_0 ));
  CARRY4 \i_/i_/i__carry__2 
       (.CI(\i_/i_/i__carry__1_n_0 ),
        .CO({\NLW_i_/i_/i__carry__2_CO_UNCONNECTED [3],\i_/i_/i__carry__2_n_1 ,\i_/i_/i__carry__2_n_2 ,\i_/i_/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__2_n_4 ,\i_/i_/i__carry__2_n_5 ,\i_/i_/i__carry__2_n_6 ,\i_/i_/i__carry__2_n_7 }),
        .S(\pop_cnt_reg[15]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    i___161_carry_i_1
       (.I0(ts_count_fs_reg[0]),
        .O(i___161_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___224_carry_i_1
       (.I0(lost_count_fs_reg[0]),
        .O(i___224_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___30_carry_i_1
       (.I0(wr_ptr_bin_reg[0]),
        .O(i___30_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___55_carry_i_1
       (.I0(seq_cnt_reg[0]),
        .O(i___55_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i___98_carry_i_1
       (.I0(free_run_cnt_reg[0]),
        .O(i___98_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(\pop_cnt_reg[0]_0 ),
        .O(i__carry_i_1_n_0));
  CARRY4 int_empty_carry
       (.CI(1'b0),
        .CO({int_empty_carry_n_0,int_empty_carry_n_1,int_empty_carry_n_2,int_empty_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_int_empty_carry_O_UNCONNECTED[3:0]),
        .S({u_wr_ptr_cdc_n_23,u_wr_ptr_cdc_n_24,u_wr_ptr_cdc_n_25,u_wr_ptr_cdc_n_26}));
  CARRY4 int_empty_carry__0
       (.CI(int_empty_carry_n_0),
        .CO({NLW_int_empty_carry__0_CO_UNCONNECTED[3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_int_empty_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,u_wr_ptr_cdc_n_22}));
  FDRE \lost_count_fs_reg[0] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry_n_7 ),
        .Q(lost_count_fs_reg[0]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[10] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__1_n_5 ),
        .Q(lost_count_fs_reg[10]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[11] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__1_n_4 ),
        .Q(lost_count_fs_reg[11]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[12] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__2_n_7 ),
        .Q(lost_count_fs_reg[12]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[13] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__2_n_6 ),
        .Q(lost_count_fs_reg[13]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[14] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__2_n_5 ),
        .Q(lost_count_fs_reg[14]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[15] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__2_n_4 ),
        .Q(lost_count_fs_reg[15]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[16] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__3_n_7 ),
        .Q(lost_count_fs_reg[16]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[17] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__3_n_6 ),
        .Q(lost_count_fs_reg[17]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[18] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__3_n_5 ),
        .Q(lost_count_fs_reg[18]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[19] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__3_n_4 ),
        .Q(lost_count_fs_reg[19]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[1] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry_n_6 ),
        .Q(lost_count_fs_reg[1]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[20] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__4_n_7 ),
        .Q(lost_count_fs_reg[20]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[21] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__4_n_6 ),
        .Q(lost_count_fs_reg[21]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[22] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__4_n_5 ),
        .Q(lost_count_fs_reg[22]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[23] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__4_n_4 ),
        .Q(lost_count_fs_reg[23]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[24] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__5_n_7 ),
        .Q(lost_count_fs_reg[24]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[25] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__5_n_6 ),
        .Q(lost_count_fs_reg[25]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[26] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__5_n_5 ),
        .Q(lost_count_fs_reg[26]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[27] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__5_n_4 ),
        .Q(lost_count_fs_reg[27]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[28] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__6_n_7 ),
        .Q(lost_count_fs_reg[28]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[29] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__6_n_6 ),
        .Q(lost_count_fs_reg[29]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[2] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry_n_5 ),
        .Q(lost_count_fs_reg[2]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[30] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__6_n_5 ),
        .Q(lost_count_fs_reg[30]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[31] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__6_n_4 ),
        .Q(lost_count_fs_reg[31]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[3] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry_n_4 ),
        .Q(lost_count_fs_reg[3]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[4] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__0_n_7 ),
        .Q(lost_count_fs_reg[4]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[5] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__0_n_6 ),
        .Q(lost_count_fs_reg[5]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[6] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__0_n_5 ),
        .Q(lost_count_fs_reg[6]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[7] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__0_n_4 ),
        .Q(lost_count_fs_reg[7]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[8] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__1_n_7 ),
        .Q(lost_count_fs_reg[8]),
        .R(p_0_in__0));
  FDRE \lost_count_fs_reg[9] 
       (.C(clk_fs),
        .CE(wr_drop),
        .D(\i_/i_/i___224_carry__1_n_6 ),
        .Q(lost_count_fs_reg[9]),
        .R(p_0_in__0));
  FDRE out_last_reg
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(pop_is_last),
        .Q(m_axis_tlast),
        .R(SR));
  FDRE out_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(out_valid_reg_1),
        .Q(out_valid_reg_0),
        .R(SR));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    ovf_mark_i_1
       (.I0(fifo_full),
        .I1(ts_en_d_reg_1),
        .I2(edge_d4),
        .I3(skip_zero),
        .I4(ovf_mark),
        .O(ovf_mark_i_1_n_0));
  FDRE ovf_mark_reg
       (.C(clk_fs),
        .CE(1'b1),
        .D(ovf_mark_i_1_n_0),
        .Q(ovf_mark),
        .R(p_0_in__0));
  LUT4 #(
    .INIT(16'h8000)) 
    ovf_sticky_i_1
       (.I0(skip_zero),
        .I1(edge_d4),
        .I2(ts_en_d_reg_1),
        .I3(fifo_full),
        .O(wr_drop));
  FDRE ovf_sticky_reg
       (.C(clk_fs),
        .CE(wr_drop),
        .D(wr_drop),
        .Q(ovf_sticky),
        .R(p_0_in__0));
  FDRE \pop_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\i_/i_/i__carry_n_7 ),
        .Q(\pop_cnt_reg[0]_0 ),
        .R(\pop_cnt_reg[15]_3 ));
  FDRE \pop_cnt_reg[10] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\i_/i_/i__carry__1_n_5 ),
        .Q(\pop_cnt_reg[11]_0 [2]),
        .R(\pop_cnt_reg[15]_3 ));
  FDRE \pop_cnt_reg[11] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\i_/i_/i__carry__1_n_4 ),
        .Q(\pop_cnt_reg[11]_0 [3]),
        .R(\pop_cnt_reg[15]_3 ));
  FDRE \pop_cnt_reg[12] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\i_/i_/i__carry__2_n_7 ),
        .Q(\pop_cnt_reg[15]_0 [0]),
        .R(\pop_cnt_reg[15]_3 ));
  FDRE \pop_cnt_reg[13] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\i_/i_/i__carry__2_n_6 ),
        .Q(\pop_cnt_reg[15]_0 [1]),
        .R(\pop_cnt_reg[15]_3 ));
  FDRE \pop_cnt_reg[14] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\i_/i_/i__carry__2_n_5 ),
        .Q(\pop_cnt_reg[15]_0 [2]),
        .R(\pop_cnt_reg[15]_3 ));
  FDRE \pop_cnt_reg[15] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\i_/i_/i__carry__2_n_4 ),
        .Q(\pop_cnt_reg[15]_0 [3]),
        .R(\pop_cnt_reg[15]_3 ));
  FDRE \pop_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\i_/i_/i__carry_n_6 ),
        .Q(S[0]),
        .R(\pop_cnt_reg[15]_3 ));
  FDRE \pop_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\i_/i_/i__carry_n_5 ),
        .Q(S[1]),
        .R(\pop_cnt_reg[15]_3 ));
  FDRE \pop_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\i_/i_/i__carry_n_4 ),
        .Q(S[2]),
        .R(\pop_cnt_reg[15]_3 ));
  FDRE \pop_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\i_/i_/i__carry__0_n_7 ),
        .Q(\pop_cnt_reg[7]_0 [0]),
        .R(\pop_cnt_reg[15]_3 ));
  FDRE \pop_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\i_/i_/i__carry__0_n_6 ),
        .Q(\pop_cnt_reg[7]_0 [1]),
        .R(\pop_cnt_reg[15]_3 ));
  FDRE \pop_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\i_/i_/i__carry__0_n_5 ),
        .Q(\pop_cnt_reg[7]_0 [2]),
        .R(\pop_cnt_reg[15]_3 ));
  FDRE \pop_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\i_/i_/i__carry__0_n_4 ),
        .Q(\pop_cnt_reg[7]_0 [3]),
        .R(\pop_cnt_reg[15]_3 ));
  FDRE \pop_cnt_reg[8] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\i_/i_/i__carry__1_n_7 ),
        .Q(\pop_cnt_reg[11]_0 [0]),
        .R(\pop_cnt_reg[15]_3 ));
  FDRE \pop_cnt_reg[9] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\i_/i_/i__carry__1_n_6 ),
        .Q(\pop_cnt_reg[11]_0 [1]),
        .R(\pop_cnt_reg[15]_3 ));
  CARRY4 pop_is_last0_carry
       (.CI(1'b0),
        .CO({pop_is_last0_carry_n_0,pop_is_last0_carry_n_1,pop_is_last0_carry_n_2,pop_is_last0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pop_is_last0_carry_O_UNCONNECTED[3:0]),
        .S({pop_is_last0_carry_i_1_n_0,pop_is_last0_carry_i_2_n_0,pop_is_last0_carry_i_3_n_0,pop_is_last0_carry_i_4_n_0}));
  CARRY4 pop_is_last0_carry__0
       (.CI(pop_is_last0_carry_n_0),
        .CO({NLW_pop_is_last0_carry__0_CO_UNCONNECTED[3:2],\pop_cnt_reg[15]_2 ,pop_is_last0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_pop_is_last0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,pop_is_last0_carry__0_i_1_n_0,pop_is_last0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    pop_is_last0_carry__0_i_1
       (.I0(pop_is_last1[14]),
        .I1(\pop_cnt_reg[15]_0 [3]),
        .O(pop_is_last0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pop_is_last0_carry__0_i_2
       (.I0(pop_is_last1[13]),
        .I1(\pop_cnt_reg[15]_0 [2]),
        .I2(pop_is_last1[12]),
        .I3(\pop_cnt_reg[15]_0 [1]),
        .I4(\pop_cnt_reg[15]_0 [0]),
        .I5(pop_is_last1[11]),
        .O(pop_is_last0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pop_is_last0_carry_i_1
       (.I0(pop_is_last1[10]),
        .I1(\pop_cnt_reg[11]_0 [3]),
        .I2(pop_is_last1[9]),
        .I3(\pop_cnt_reg[11]_0 [2]),
        .I4(\pop_cnt_reg[11]_0 [1]),
        .I5(pop_is_last1[8]),
        .O(pop_is_last0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pop_is_last0_carry_i_2
       (.I0(pop_is_last1[7]),
        .I1(\pop_cnt_reg[11]_0 [0]),
        .I2(pop_is_last1[6]),
        .I3(\pop_cnt_reg[7]_0 [3]),
        .I4(\pop_cnt_reg[7]_0 [2]),
        .I5(pop_is_last1[5]),
        .O(pop_is_last0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    pop_is_last0_carry_i_3
       (.I0(pop_is_last1[4]),
        .I1(\pop_cnt_reg[7]_0 [1]),
        .I2(pop_is_last1[3]),
        .I3(\pop_cnt_reg[7]_0 [0]),
        .I4(S[2]),
        .I5(pop_is_last1[2]),
        .O(pop_is_last0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    pop_is_last0_carry_i_4
       (.I0(pop_is_last1[1]),
        .I1(S[1]),
        .I2(pop_is_last1[0]),
        .I3(S[0]),
        .I4(\pop_cnt_reg[0]_0 ),
        .I5(pop_limit_hit0_carry__0_1[0]),
        .O(pop_is_last0_carry_i_4_n_0));
  CARRY4 pop_limit_hit0_carry
       (.CI(1'b0),
        .CO({pop_limit_hit0_carry_n_0,pop_limit_hit0_carry_n_1,pop_limit_hit0_carry_n_2,pop_limit_hit0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({pop_limit_hit0_carry_i_1_n_0,pop_limit_hit0_carry_i_2_n_0,pop_limit_hit0_carry_i_3_n_0,pop_limit_hit0_carry_i_4_n_0}),
        .O(NLW_pop_limit_hit0_carry_O_UNCONNECTED[3:0]),
        .S(pop_limit_hit0_carry__0_0));
  CARRY4 pop_limit_hit0_carry__0
       (.CI(pop_limit_hit0_carry_n_0),
        .CO({\pop_cnt_reg[15]_1 ,pop_limit_hit0_carry__0_n_1,pop_limit_hit0_carry__0_n_2,pop_limit_hit0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({pop_limit_hit0_carry__0_i_1_n_0,pop_limit_hit0_carry__0_i_2_n_0,pop_limit_hit0_carry__0_i_3_n_0,pop_limit_hit0_carry__0_i_4_n_0}),
        .O(NLW_pop_limit_hit0_carry__0_O_UNCONNECTED[3:0]),
        .S(fifo_mem_reg_7_i_4));
  LUT4 #(
    .INIT(16'h22B2)) 
    pop_limit_hit0_carry__0_i_1
       (.I0(\pop_cnt_reg[15]_0 [3]),
        .I1(pop_limit_hit0_carry__0_1[15]),
        .I2(\pop_cnt_reg[15]_0 [2]),
        .I3(pop_limit_hit0_carry__0_1[14]),
        .O(pop_limit_hit0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pop_limit_hit0_carry__0_i_2
       (.I0(\pop_cnt_reg[15]_0 [1]),
        .I1(pop_limit_hit0_carry__0_1[13]),
        .I2(\pop_cnt_reg[15]_0 [0]),
        .I3(pop_limit_hit0_carry__0_1[12]),
        .O(pop_limit_hit0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pop_limit_hit0_carry__0_i_3
       (.I0(\pop_cnt_reg[11]_0 [3]),
        .I1(pop_limit_hit0_carry__0_1[11]),
        .I2(\pop_cnt_reg[11]_0 [2]),
        .I3(pop_limit_hit0_carry__0_1[10]),
        .O(pop_limit_hit0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pop_limit_hit0_carry__0_i_4
       (.I0(\pop_cnt_reg[11]_0 [1]),
        .I1(pop_limit_hit0_carry__0_1[9]),
        .I2(\pop_cnt_reg[11]_0 [0]),
        .I3(pop_limit_hit0_carry__0_1[8]),
        .O(pop_limit_hit0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pop_limit_hit0_carry_i_1
       (.I0(\pop_cnt_reg[7]_0 [3]),
        .I1(pop_limit_hit0_carry__0_1[7]),
        .I2(\pop_cnt_reg[7]_0 [2]),
        .I3(pop_limit_hit0_carry__0_1[6]),
        .O(pop_limit_hit0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pop_limit_hit0_carry_i_2
       (.I0(\pop_cnt_reg[7]_0 [1]),
        .I1(pop_limit_hit0_carry__0_1[5]),
        .I2(\pop_cnt_reg[7]_0 [0]),
        .I3(pop_limit_hit0_carry__0_1[4]),
        .O(pop_limit_hit0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pop_limit_hit0_carry_i_3
       (.I0(S[2]),
        .I1(pop_limit_hit0_carry__0_1[3]),
        .I2(S[1]),
        .I3(pop_limit_hit0_carry__0_1[2]),
        .O(pop_limit_hit0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pop_limit_hit0_carry_i_4
       (.I0(S[0]),
        .I1(pop_limit_hit0_carry__0_1[1]),
        .I2(\pop_cnt_reg[0]_0 ),
        .I3(pop_limit_hit0_carry__0_1[0]),
        .O(pop_limit_hit0_carry_i_4_n_0));
  FDRE \rd_ptr_at_wr_q_reg[0] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(rd_ptr_bin_at_wr[0]),
        .Q(rd_ptr_at_wr_q[0]),
        .R(p_0_in__0));
  FDRE \rd_ptr_at_wr_q_reg[10] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(rd_ptr_bin_at_wr[10]),
        .Q(rd_ptr_at_wr_q[10]),
        .R(p_0_in__0));
  FDRE \rd_ptr_at_wr_q_reg[11] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(rd_ptr_bin_at_wr[11]),
        .Q(rd_ptr_at_wr_q[11]),
        .R(p_0_in__0));
  FDRE \rd_ptr_at_wr_q_reg[12] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(rd_ptr_bin_at_wr[12]),
        .Q(rd_ptr_at_wr_q[12]),
        .R(p_0_in__0));
  FDRE \rd_ptr_at_wr_q_reg[1] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(rd_ptr_bin_at_wr[1]),
        .Q(rd_ptr_at_wr_q[1]),
        .R(p_0_in__0));
  FDRE \rd_ptr_at_wr_q_reg[2] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(rd_ptr_bin_at_wr[2]),
        .Q(rd_ptr_at_wr_q[2]),
        .R(p_0_in__0));
  FDRE \rd_ptr_at_wr_q_reg[3] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(rd_ptr_bin_at_wr[3]),
        .Q(rd_ptr_at_wr_q[3]),
        .R(p_0_in__0));
  FDRE \rd_ptr_at_wr_q_reg[4] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(rd_ptr_bin_at_wr[4]),
        .Q(rd_ptr_at_wr_q[4]),
        .R(p_0_in__0));
  FDRE \rd_ptr_at_wr_q_reg[5] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(rd_ptr_bin_at_wr[5]),
        .Q(rd_ptr_at_wr_q[5]),
        .R(p_0_in__0));
  FDRE \rd_ptr_at_wr_q_reg[6] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(rd_ptr_bin_at_wr[6]),
        .Q(rd_ptr_at_wr_q[6]),
        .R(p_0_in__0));
  FDRE \rd_ptr_at_wr_q_reg[7] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(rd_ptr_bin_at_wr[7]),
        .Q(rd_ptr_at_wr_q[7]),
        .R(p_0_in__0));
  FDRE \rd_ptr_at_wr_q_reg[8] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(rd_ptr_bin_at_wr[8]),
        .Q(rd_ptr_at_wr_q[8]),
        .R(p_0_in__0));
  FDRE \rd_ptr_at_wr_q_reg[9] 
       (.C(clk_fs),
        .CE(1'b1),
        .D(rd_ptr_bin_at_wr[9]),
        .Q(rd_ptr_at_wr_q[9]),
        .R(p_0_in__0));
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
        .R(SR));
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
        .R(SR));
  FDRE \rd_ptr_bin_reg[11] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[8]_i_1_n_4 ),
        .Q(rd_ptr_bin_reg[11]),
        .R(SR));
  FDRE \rd_ptr_bin_reg[12] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[12]_i_1_n_7 ),
        .Q(rd_ptr_bin_reg[12]),
        .R(SR));
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
        .R(SR));
  FDRE \rd_ptr_bin_reg[2] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[0]_i_1_n_5 ),
        .Q(rd_ptr_bin_reg[2]),
        .R(SR));
  FDRE \rd_ptr_bin_reg[3] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[0]_i_1_n_4 ),
        .Q(rd_ptr_bin_reg[3]),
        .R(SR));
  FDRE \rd_ptr_bin_reg[4] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[4]_i_1_n_7 ),
        .Q(rd_ptr_bin_reg[4]),
        .R(SR));
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
        .R(SR));
  FDRE \rd_ptr_bin_reg[6] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[4]_i_1_n_5 ),
        .Q(rd_ptr_bin_reg[6]),
        .R(SR));
  FDRE \rd_ptr_bin_reg[7] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[4]_i_1_n_4 ),
        .Q(rd_ptr_bin_reg[7]),
        .R(SR));
  FDRE \rd_ptr_bin_reg[8] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg[8]_i_1_n_7 ),
        .Q(rd_ptr_bin_reg[8]),
        .R(SR));
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
        .R(SR));
  FDRE \rd_ptr_bin_reg_rep[0] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_rep[0]_i_1_n_0 ),
        .Q(rd_ptr_bin_reg_rep__0[0]),
        .R(SR));
  FDRE \rd_ptr_bin_reg_rep[10] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg_rep[11]_i_1_n_6 ),
        .Q(rd_ptr_bin_reg_rep__0[10]),
        .R(SR));
  FDRE \rd_ptr_bin_reg_rep[11] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg_rep[11]_i_1_n_5 ),
        .Q(rd_ptr_bin_reg_rep__0[11]),
        .R(SR));
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
        .R(SR));
  FDRE \rd_ptr_bin_reg_rep[2] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg_rep[4]_i_1_n_6 ),
        .Q(rd_ptr_bin_reg_rep__0[2]),
        .R(SR));
  FDRE \rd_ptr_bin_reg_rep[3] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg_rep[4]_i_1_n_5 ),
        .Q(rd_ptr_bin_reg_rep__0[3]),
        .R(SR));
  FDRE \rd_ptr_bin_reg_rep[4] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg_rep[4]_i_1_n_4 ),
        .Q(rd_ptr_bin_reg_rep__0[4]),
        .R(SR));
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
        .R(SR));
  FDRE \rd_ptr_bin_reg_rep[6] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg_rep[8]_i_1_n_6 ),
        .Q(rd_ptr_bin_reg_rep__0[6]),
        .R(SR));
  FDRE \rd_ptr_bin_reg_rep[7] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg_rep[8]_i_1_n_5 ),
        .Q(rd_ptr_bin_reg_rep__0[7]),
        .R(SR));
  FDRE \rd_ptr_bin_reg_rep[8] 
       (.C(s_axi_aclk),
        .CE(fifo_mem_reg_7_i_2_n_0),
        .D(\rd_ptr_bin_reg_rep[8]_i_1_n_4 ),
        .Q(rd_ptr_bin_reg_rep__0[8]),
        .R(SR));
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
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr_bin_rep[0]_i_1 
       (.I0(rd_ptr_bin_reg[0]),
        .O(\rd_ptr_bin_rep[0]_i_1_n_0 ));
  FDRE \seq_cnt_reg[0] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry_n_7 ),
        .Q(seq_cnt_reg[0]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[10] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry__1_n_5 ),
        .Q(seq_cnt_reg[10]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[11] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry__1_n_4 ),
        .Q(seq_cnt_reg[11]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[12] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry__2_n_7 ),
        .Q(seq_cnt_reg[12]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[13] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry__2_n_6 ),
        .Q(seq_cnt_reg[13]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[14] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry__2_n_5 ),
        .Q(seq_cnt_reg[14]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[15] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry__2_n_4 ),
        .Q(seq_cnt_reg[15]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[16] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry__3_n_7 ),
        .Q(seq_cnt_reg[16]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[17] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry__3_n_6 ),
        .Q(seq_cnt_reg[17]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[18] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry__3_n_5 ),
        .Q(seq_cnt_reg[18]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[19] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry__3_n_4 ),
        .Q(seq_cnt_reg[19]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[1] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry_n_6 ),
        .Q(seq_cnt_reg[1]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[20] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry__4_n_7 ),
        .Q(seq_cnt_reg[20]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[21] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry__4_n_6 ),
        .Q(seq_cnt_reg[21]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[2] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry_n_5 ),
        .Q(seq_cnt_reg[2]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[3] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry_n_4 ),
        .Q(seq_cnt_reg[3]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[4] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry__0_n_7 ),
        .Q(seq_cnt_reg[4]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[5] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry__0_n_6 ),
        .Q(seq_cnt_reg[5]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[6] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry__0_n_5 ),
        .Q(seq_cnt_reg[6]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[7] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry__0_n_4 ),
        .Q(seq_cnt_reg[7]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[8] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry__1_n_7 ),
        .Q(seq_cnt_reg[8]),
        .R(p_0_in__0));
  FDRE \seq_cnt_reg[9] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___55_carry__1_n_6 ),
        .Q(seq_cnt_reg[9]),
        .R(p_0_in__0));
  CARRY4 skip_cnt0_carry
       (.CI(1'b0),
        .CO({skip_cnt0_carry_n_0,skip_cnt0_carry_n_1,skip_cnt0_carry_n_2,skip_cnt0_carry_n_3}),
        .CYINIT(skip_cnt[0]),
        .DI(skip_cnt[4:1]),
        .O(skip_cnt0[4:1]),
        .S({skip_cnt0_carry_i_1_n_0,skip_cnt0_carry_i_2_n_0,skip_cnt0_carry_i_3_n_0,skip_cnt0_carry_i_4_n_0}));
  CARRY4 skip_cnt0_carry__0
       (.CI(skip_cnt0_carry_n_0),
        .CO({skip_cnt0_carry__0_n_0,skip_cnt0_carry__0_n_1,skip_cnt0_carry__0_n_2,skip_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(skip_cnt[8:5]),
        .O(skip_cnt0[8:5]),
        .S({skip_cnt0_carry__0_i_1_n_0,skip_cnt0_carry__0_i_2_n_0,skip_cnt0_carry__0_i_3_n_0,skip_cnt0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__0_i_1
       (.I0(skip_cnt[8]),
        .O(skip_cnt0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__0_i_2
       (.I0(skip_cnt[7]),
        .O(skip_cnt0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__0_i_3
       (.I0(skip_cnt[6]),
        .O(skip_cnt0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__0_i_4
       (.I0(skip_cnt[5]),
        .O(skip_cnt0_carry__0_i_4_n_0));
  CARRY4 skip_cnt0_carry__1
       (.CI(skip_cnt0_carry__0_n_0),
        .CO({skip_cnt0_carry__1_n_0,skip_cnt0_carry__1_n_1,skip_cnt0_carry__1_n_2,skip_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(skip_cnt[12:9]),
        .O(skip_cnt0[12:9]),
        .S({skip_cnt0_carry__1_i_1_n_0,skip_cnt0_carry__1_i_2_n_0,skip_cnt0_carry__1_i_3_n_0,skip_cnt0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__1_i_1
       (.I0(skip_cnt[12]),
        .O(skip_cnt0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__1_i_2
       (.I0(skip_cnt[11]),
        .O(skip_cnt0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__1_i_3
       (.I0(skip_cnt[10]),
        .O(skip_cnt0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__1_i_4
       (.I0(skip_cnt[9]),
        .O(skip_cnt0_carry__1_i_4_n_0));
  CARRY4 skip_cnt0_carry__2
       (.CI(skip_cnt0_carry__1_n_0),
        .CO({skip_cnt0_carry__2_n_0,skip_cnt0_carry__2_n_1,skip_cnt0_carry__2_n_2,skip_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(skip_cnt[16:13]),
        .O(skip_cnt0[16:13]),
        .S({skip_cnt0_carry__2_i_1_n_0,skip_cnt0_carry__2_i_2_n_0,skip_cnt0_carry__2_i_3_n_0,skip_cnt0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__2_i_1
       (.I0(skip_cnt[16]),
        .O(skip_cnt0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__2_i_2
       (.I0(skip_cnt[15]),
        .O(skip_cnt0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__2_i_3
       (.I0(skip_cnt[14]),
        .O(skip_cnt0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__2_i_4
       (.I0(skip_cnt[13]),
        .O(skip_cnt0_carry__2_i_4_n_0));
  CARRY4 skip_cnt0_carry__3
       (.CI(skip_cnt0_carry__2_n_0),
        .CO({skip_cnt0_carry__3_n_0,skip_cnt0_carry__3_n_1,skip_cnt0_carry__3_n_2,skip_cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(skip_cnt[20:17]),
        .O(skip_cnt0[20:17]),
        .S({skip_cnt0_carry__3_i_1_n_0,skip_cnt0_carry__3_i_2_n_0,skip_cnt0_carry__3_i_3_n_0,skip_cnt0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__3_i_1
       (.I0(skip_cnt[20]),
        .O(skip_cnt0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__3_i_2
       (.I0(skip_cnt[19]),
        .O(skip_cnt0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__3_i_3
       (.I0(skip_cnt[18]),
        .O(skip_cnt0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__3_i_4
       (.I0(skip_cnt[17]),
        .O(skip_cnt0_carry__3_i_4_n_0));
  CARRY4 skip_cnt0_carry__4
       (.CI(skip_cnt0_carry__3_n_0),
        .CO({skip_cnt0_carry__4_n_0,skip_cnt0_carry__4_n_1,skip_cnt0_carry__4_n_2,skip_cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(skip_cnt[24:21]),
        .O(skip_cnt0[24:21]),
        .S({skip_cnt0_carry__4_i_1_n_0,skip_cnt0_carry__4_i_2_n_0,skip_cnt0_carry__4_i_3_n_0,skip_cnt0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__4_i_1
       (.I0(skip_cnt[24]),
        .O(skip_cnt0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__4_i_2
       (.I0(skip_cnt[23]),
        .O(skip_cnt0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__4_i_3
       (.I0(skip_cnt[22]),
        .O(skip_cnt0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__4_i_4
       (.I0(skip_cnt[21]),
        .O(skip_cnt0_carry__4_i_4_n_0));
  CARRY4 skip_cnt0_carry__5
       (.CI(skip_cnt0_carry__4_n_0),
        .CO({skip_cnt0_carry__5_n_0,skip_cnt0_carry__5_n_1,skip_cnt0_carry__5_n_2,skip_cnt0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(skip_cnt[28:25]),
        .O(skip_cnt0[28:25]),
        .S({skip_cnt0_carry__5_i_1_n_0,skip_cnt0_carry__5_i_2_n_0,skip_cnt0_carry__5_i_3_n_0,skip_cnt0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__5_i_1
       (.I0(skip_cnt[28]),
        .O(skip_cnt0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__5_i_2
       (.I0(skip_cnt[27]),
        .O(skip_cnt0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__5_i_3
       (.I0(skip_cnt[26]),
        .O(skip_cnt0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__5_i_4
       (.I0(skip_cnt[25]),
        .O(skip_cnt0_carry__5_i_4_n_0));
  CARRY4 skip_cnt0_carry__6
       (.CI(skip_cnt0_carry__5_n_0),
        .CO({NLW_skip_cnt0_carry__6_CO_UNCONNECTED[3:2],skip_cnt0_carry__6_n_2,skip_cnt0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,skip_cnt[30:29]}),
        .O({NLW_skip_cnt0_carry__6_O_UNCONNECTED[3],skip_cnt0[31:29]}),
        .S({1'b0,skip_cnt0_carry__6_i_1_n_0,skip_cnt0_carry__6_i_2_n_0,skip_cnt0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__6_i_1
       (.I0(skip_cnt[31]),
        .O(skip_cnt0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__6_i_2
       (.I0(skip_cnt[30]),
        .O(skip_cnt0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry__6_i_3
       (.I0(skip_cnt[29]),
        .O(skip_cnt0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry_i_1
       (.I0(skip_cnt[4]),
        .O(skip_cnt0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry_i_2
       (.I0(skip_cnt[3]),
        .O(skip_cnt0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry_i_3
       (.I0(skip_cnt[2]),
        .O(skip_cnt0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    skip_cnt0_carry_i_4
       (.I0(skip_cnt[1]),
        .O(skip_cnt0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \skip_cnt[0]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt[0]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[0]),
        .I4(\skip_limit_reg[31]_0 [0]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[10]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[10]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[10]),
        .I4(\skip_limit_reg[31]_0 [10]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[11]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[11]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[11]),
        .I4(\skip_limit_reg[31]_0 [11]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[12]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[12]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[12]),
        .I4(\skip_limit_reg[31]_0 [12]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[13]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[13]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[13]),
        .I4(\skip_limit_reg[31]_0 [13]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[14]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[14]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[14]),
        .I4(\skip_limit_reg[31]_0 [14]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[15]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[15]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[15]),
        .I4(\skip_limit_reg[31]_0 [15]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[16]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[16]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[16]),
        .I4(\skip_limit_reg[31]_0 [16]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[17]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[17]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[17]),
        .I4(\skip_limit_reg[31]_0 [17]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[18]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[18]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[18]),
        .I4(\skip_limit_reg[31]_0 [18]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[19]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[19]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[19]),
        .I4(\skip_limit_reg[31]_0 [19]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[1]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[1]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[1]),
        .I4(\skip_limit_reg[31]_0 [1]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[20]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[20]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[20]),
        .I4(\skip_limit_reg[31]_0 [20]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[21]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[21]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[21]),
        .I4(\skip_limit_reg[31]_0 [21]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[22]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[22]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[22]),
        .I4(\skip_limit_reg[31]_0 [22]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[23]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[23]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[23]),
        .I4(\skip_limit_reg[31]_0 [23]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[24]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[24]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[24]),
        .I4(\skip_limit_reg[31]_0 [24]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[25]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[25]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[25]),
        .I4(\skip_limit_reg[31]_0 [25]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[26]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[26]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[26]),
        .I4(\skip_limit_reg[31]_0 [26]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[27]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[27]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[27]),
        .I4(\skip_limit_reg[31]_0 [27]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[28]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[28]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[28]),
        .I4(\skip_limit_reg[31]_0 [28]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[29]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[29]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[29]),
        .I4(\skip_limit_reg[31]_0 [29]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[2]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[2]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[2]),
        .I4(\skip_limit_reg[31]_0 [2]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[30]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[30]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[30]),
        .I4(\skip_limit_reg[31]_0 [30]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[30]));
  LUT3 #(
    .INIT(8'h8C)) 
    \skip_cnt[31]_i_1 
       (.I0(edge_d4),
        .I1(ts_en_d_reg_1),
        .I2(ts_en_d_reg_0),
        .O(\skip_cnt[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[31]_i_2 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[31]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[31]),
        .I4(\skip_limit_reg[31]_0 [31]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[31]));
  LUT3 #(
    .INIT(8'h0D)) 
    \skip_cnt[31]_i_3 
       (.I0(ts_en_d_reg_1),
        .I1(ts_en_d_reg_0),
        .I2(skip_zero),
        .O(\skip_cnt[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \skip_cnt[31]_i_4 
       (.I0(ts_en_d_reg_1),
        .I1(ts_en_d_reg_0),
        .I2(skip_zero),
        .O(\skip_cnt[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \skip_cnt[31]_i_5 
       (.I0(edge_d4),
        .I1(skip_zero),
        .I2(ts_en_d_reg_1),
        .I3(ts_en_d_reg_0),
        .O(\skip_cnt[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[3]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[3]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[3]),
        .I4(\skip_limit_reg[31]_0 [3]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[4]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[4]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[4]),
        .I4(\skip_limit_reg[31]_0 [4]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[5]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[5]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[5]),
        .I4(\skip_limit_reg[31]_0 [5]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[6]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[6]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[6]),
        .I4(\skip_limit_reg[31]_0 [6]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[7]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[7]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[7]),
        .I4(\skip_limit_reg[31]_0 [7]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[8]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[8]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[8]),
        .I4(\skip_limit_reg[31]_0 [8]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \skip_cnt[9]_i_1 
       (.I0(\skip_cnt[31]_i_3_n_0 ),
        .I1(skip_cnt0[9]),
        .I2(\skip_cnt[31]_i_4_n_0 ),
        .I3(skip_limit[9]),
        .I4(\skip_limit_reg[31]_0 [9]),
        .I5(\skip_cnt[31]_i_5_n_0 ),
        .O(p_2_in[9]));
  FDRE \skip_cnt_reg[0] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(skip_cnt[0]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[10] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(skip_cnt[10]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[11] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(skip_cnt[11]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[12] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(skip_cnt[12]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[13] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(skip_cnt[13]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[14] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[14]),
        .Q(skip_cnt[14]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[15] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[15]),
        .Q(skip_cnt[15]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[16] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[16]),
        .Q(skip_cnt[16]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[17] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[17]),
        .Q(skip_cnt[17]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[18] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[18]),
        .Q(skip_cnt[18]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[19] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[19]),
        .Q(skip_cnt[19]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[1] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(skip_cnt[1]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[20] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[20]),
        .Q(skip_cnt[20]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[21] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[21]),
        .Q(skip_cnt[21]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[22] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[22]),
        .Q(skip_cnt[22]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[23] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[23]),
        .Q(skip_cnt[23]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[24] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[24]),
        .Q(skip_cnt[24]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[25] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[25]),
        .Q(skip_cnt[25]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[26] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[26]),
        .Q(skip_cnt[26]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[27] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[27]),
        .Q(skip_cnt[27]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[28] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[28]),
        .Q(skip_cnt[28]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[29] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[29]),
        .Q(skip_cnt[29]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[2] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(skip_cnt[2]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[30] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[30]),
        .Q(skip_cnt[30]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[31] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[31]),
        .Q(skip_cnt[31]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[3] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(skip_cnt[3]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[4] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(skip_cnt[4]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[5] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(skip_cnt[5]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[6] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(skip_cnt[6]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[7] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(skip_cnt[7]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[8] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(skip_cnt[8]),
        .R(p_0_in__0));
  FDRE \skip_cnt_reg[9] 
       (.C(clk_fs),
        .CE(\skip_cnt[31]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(skip_cnt[9]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[0] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [0]),
        .Q(skip_limit[0]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[10] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [10]),
        .Q(skip_limit[10]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[11] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [11]),
        .Q(skip_limit[11]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[12] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [12]),
        .Q(skip_limit[12]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[13] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [13]),
        .Q(skip_limit[13]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[14] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [14]),
        .Q(skip_limit[14]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[15] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [15]),
        .Q(skip_limit[15]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[16] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [16]),
        .Q(skip_limit[16]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[17] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [17]),
        .Q(skip_limit[17]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[18] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [18]),
        .Q(skip_limit[18]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[19] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [19]),
        .Q(skip_limit[19]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[1] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [1]),
        .Q(skip_limit[1]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[20] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [20]),
        .Q(skip_limit[20]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[21] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [21]),
        .Q(skip_limit[21]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[22] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [22]),
        .Q(skip_limit[22]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[23] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [23]),
        .Q(skip_limit[23]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[24] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [24]),
        .Q(skip_limit[24]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[25] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [25]),
        .Q(skip_limit[25]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[26] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [26]),
        .Q(skip_limit[26]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[27] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [27]),
        .Q(skip_limit[27]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[28] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [28]),
        .Q(skip_limit[28]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[29] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [29]),
        .Q(skip_limit[29]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[2] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [2]),
        .Q(skip_limit[2]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[30] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [30]),
        .Q(skip_limit[30]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[31] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [31]),
        .Q(skip_limit[31]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[3] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [3]),
        .Q(skip_limit[3]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[4] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [4]),
        .Q(skip_limit[4]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[5] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [5]),
        .Q(skip_limit[5]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[6] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [6]),
        .Q(skip_limit[6]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[7] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [7]),
        .Q(skip_limit[7]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[8] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [8]),
        .Q(skip_limit[8]),
        .R(p_0_in__0));
  FDRE \skip_limit_reg[9] 
       (.C(clk_fs),
        .CE(E),
        .D(\skip_limit_reg[31]_0 [9]),
        .Q(skip_limit[9]),
        .R(p_0_in__0));
  LUT6 #(
    .INIT(64'hDDFFDF55FFFF5F55)) 
    skip_zero_i_1
       (.I0(out),
        .I1(skip_zero_i_2_n_0),
        .I2(ts_en_d_reg_0),
        .I3(ts_en_d_reg_1),
        .I4(skip_zero),
        .I5(edge_d4),
        .O(skip_zero_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    skip_zero_i_14
       (.I0(skip_cnt[22]),
        .I1(skip_cnt[23]),
        .I2(skip_cnt[20]),
        .I3(skip_cnt[21]),
        .I4(skip_cnt[25]),
        .I5(skip_cnt[24]),
        .O(skip_zero_i_14_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    skip_zero_i_15
       (.I0(skip_cnt[28]),
        .I1(skip_cnt[29]),
        .I2(skip_cnt[26]),
        .I3(skip_cnt[27]),
        .I4(skip_cnt[31]),
        .I5(skip_cnt[30]),
        .O(skip_zero_i_15_n_0));
  LUT5 #(
    .INIT(32'h04000404)) 
    skip_zero_i_16
       (.I0(skip_cnt[1]),
        .I1(skip_cnt[0]),
        .I2(skip_zero),
        .I3(ts_en_d_reg_0),
        .I4(ts_en_d_reg_1),
        .O(skip_zero_i_16_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    skip_zero_i_17
       (.I0(skip_cnt[4]),
        .I1(skip_cnt[5]),
        .I2(skip_cnt[2]),
        .I3(skip_cnt[3]),
        .I4(skip_cnt[7]),
        .I5(skip_cnt[6]),
        .O(skip_zero_i_17_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    skip_zero_i_18
       (.I0(skip_cnt[16]),
        .I1(skip_cnt[17]),
        .I2(skip_cnt[14]),
        .I3(skip_cnt[15]),
        .I4(skip_cnt[19]),
        .I5(skip_cnt[18]),
        .O(skip_zero_i_18_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    skip_zero_i_19
       (.I0(skip_cnt[10]),
        .I1(skip_cnt[11]),
        .I2(skip_cnt[8]),
        .I3(skip_cnt[9]),
        .I4(skip_cnt[13]),
        .I5(skip_cnt[12]),
        .O(skip_zero_i_19_n_0));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    skip_zero_i_2
       (.I0(skip_zero_reg_0),
        .I1(skip_zero_i_4_n_0),
        .I2(skip_zero_i_5_n_0),
        .I3(skip_zero_i_6_n_0),
        .I4(skip_zero_i_7_n_0),
        .O(skip_zero_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    skip_zero_i_20
       (.I0(skip_limit[10]),
        .I1(skip_limit[11]),
        .I2(skip_limit[8]),
        .I3(skip_limit[9]),
        .I4(skip_limit[13]),
        .I5(skip_limit[12]),
        .O(skip_zero_i_20_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    skip_zero_i_21
       (.I0(skip_limit[16]),
        .I1(skip_limit[17]),
        .I2(skip_limit[14]),
        .I3(skip_limit[15]),
        .I4(skip_limit[19]),
        .I5(skip_limit[18]),
        .O(skip_zero_i_21_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    skip_zero_i_22
       (.I0(skip_limit[4]),
        .I1(skip_limit[5]),
        .I2(skip_limit[2]),
        .I3(skip_limit[3]),
        .I4(skip_limit[7]),
        .I5(skip_limit[6]),
        .O(skip_zero_i_22_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    skip_zero_i_4
       (.I0(skip_zero_i_14_n_0),
        .I1(skip_zero_i_15_n_0),
        .I2(skip_zero_i_16_n_0),
        .I3(skip_zero_i_17_n_0),
        .I4(skip_zero_i_18_n_0),
        .I5(skip_zero_i_19_n_0),
        .O(skip_zero_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    skip_zero_i_5
       (.I0(skip_limit[22]),
        .I1(skip_limit[23]),
        .I2(skip_limit[20]),
        .I3(skip_limit[21]),
        .I4(skip_limit[25]),
        .I5(skip_limit[24]),
        .O(skip_zero_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    skip_zero_i_6
       (.I0(skip_limit[28]),
        .I1(skip_limit[29]),
        .I2(skip_limit[26]),
        .I3(skip_limit[27]),
        .I4(skip_limit[31]),
        .I5(skip_limit[30]),
        .O(skip_zero_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    skip_zero_i_7
       (.I0(skip_zero_i_20_n_0),
        .I1(skip_zero_i_21_n_0),
        .I2(skip_zero_i_22_n_0),
        .I3(skip_limit[1]),
        .I4(skip_limit[0]),
        .I5(\skip_cnt[31]_i_4_n_0 ),
        .O(skip_zero_i_7_n_0));
  FDRE skip_zero_reg
       (.C(clk_fs),
        .CE(1'b1),
        .D(skip_zero_i_1_n_0),
        .Q(skip_zero),
        .R(1'b0));
  FDRE \ts_count_fs_reg[0] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry_n_7 ),
        .Q(ts_count_fs_reg[0]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[10] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__1_n_5 ),
        .Q(ts_count_fs_reg[10]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[11] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__1_n_4 ),
        .Q(ts_count_fs_reg[11]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[12] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__2_n_7 ),
        .Q(ts_count_fs_reg[12]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[13] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__2_n_6 ),
        .Q(ts_count_fs_reg[13]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[14] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__2_n_5 ),
        .Q(ts_count_fs_reg[14]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[15] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__2_n_4 ),
        .Q(ts_count_fs_reg[15]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[16] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__3_n_7 ),
        .Q(ts_count_fs_reg[16]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[17] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__3_n_6 ),
        .Q(ts_count_fs_reg[17]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[18] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__3_n_5 ),
        .Q(ts_count_fs_reg[18]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[19] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__3_n_4 ),
        .Q(ts_count_fs_reg[19]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[1] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry_n_6 ),
        .Q(ts_count_fs_reg[1]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[20] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__4_n_7 ),
        .Q(ts_count_fs_reg[20]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[21] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__4_n_6 ),
        .Q(ts_count_fs_reg[21]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[22] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__4_n_5 ),
        .Q(ts_count_fs_reg[22]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[23] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__4_n_4 ),
        .Q(ts_count_fs_reg[23]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[24] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__5_n_7 ),
        .Q(ts_count_fs_reg[24]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[25] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__5_n_6 ),
        .Q(ts_count_fs_reg[25]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[26] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__5_n_5 ),
        .Q(ts_count_fs_reg[26]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[27] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__5_n_4 ),
        .Q(ts_count_fs_reg[27]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[28] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__6_n_7 ),
        .Q(ts_count_fs_reg[28]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[29] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__6_n_6 ),
        .Q(ts_count_fs_reg[29]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[2] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry_n_5 ),
        .Q(ts_count_fs_reg[2]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[30] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__6_n_5 ),
        .Q(ts_count_fs_reg[30]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[31] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__6_n_4 ),
        .Q(ts_count_fs_reg[31]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[3] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry_n_4 ),
        .Q(ts_count_fs_reg[3]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[4] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__0_n_7 ),
        .Q(ts_count_fs_reg[4]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[5] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__0_n_6 ),
        .Q(ts_count_fs_reg[5]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[6] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__0_n_5 ),
        .Q(ts_count_fs_reg[6]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[7] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__0_n_4 ),
        .Q(ts_count_fs_reg[7]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[8] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__1_n_7 ),
        .Q(ts_count_fs_reg[8]),
        .R(p_0_in__0));
  FDRE \ts_count_fs_reg[9] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___161_carry__1_n_6 ),
        .Q(ts_count_fs_reg[9]),
        .R(p_0_in__0));
  FDRE ts_en_d_reg
       (.C(clk_fs),
        .CE(1'b1),
        .D(ts_en_d_reg_1),
        .Q(ts_en_d_reg_0),
        .R(p_0_in__0));
  ps_Counter_Core_0_0_cnt_cdc__parameterized0 u_lost_cnt_cdc
       (.SR(SR),
        .clk_fs(clk_fs),
        .dst_cnt(\gray_s2_reg[31] ),
        .p_0_in__0(p_0_in__0),
        .s_axi_aclk(s_axi_aclk),
        .src_cnt(lost_count_fs_reg));
  ps_Counter_Core_0_0_bit_sync_3 u_ovf_sync
       (.D(ovf_sticky),
        .SR(SR),
        .s_axi_aclk(s_axi_aclk),
        .\sync_reg[1]_0 (\sync_reg[1] ));
  ps_Counter_Core_0_0_cnt_cdc u_rd_ptr_cdc
       (.SR(SR),
        .clk_fs(clk_fs),
        .out(rd_ptr_bin_reg),
        .p_0_in__0(p_0_in__0),
        .rd_ptr_bin_at_wr(rd_ptr_bin_at_wr),
        .s_axi_aclk(s_axi_aclk));
  ps_Counter_Core_0_0_tdc u_tdc
       (.D(D),
        .clk_fs(clk_fs),
        .p_0_in__0(p_0_in__0),
        .ts_word({tdc_value,tdc_valid}));
  ps_Counter_Core_0_0_cnt_cdc__parameterized0_4 u_ts_cnt_cdc
       (.SR(SR),
        .clk_fs(clk_fs),
        .dst_cnt(dst_cnt),
        .p_0_in__0(p_0_in__0),
        .s_axi_aclk(s_axi_aclk),
        .src_cnt(ts_count_fs_reg));
  ps_Counter_Core_0_0_cnt_cdc_5 u_wr_ptr_cdc
       (.DI({u_wr_ptr_cdc_n_27,u_wr_ptr_cdc_n_28,u_wr_ptr_cdc_n_29}),
        .S({u_wr_ptr_cdc_n_9,u_wr_ptr_cdc_n_10,u_wr_ptr_cdc_n_11,u_wr_ptr_cdc_n_12}),
        .SR(SR),
        .clk_fs(clk_fs),
        .\gray_s2_reg[11]_0 ({u_wr_ptr_cdc_n_23,u_wr_ptr_cdc_n_24,u_wr_ptr_cdc_n_25,u_wr_ptr_cdc_n_26}),
        .\gray_s2_reg[12]_0 (wr_ptr_bin_at_rd),
        .\gray_s2_reg[12]_1 (u_wr_ptr_cdc_n_21),
        .\gray_s2_reg[12]_2 (u_wr_ptr_cdc_n_22),
        .\gray_s2_reg[9]_0 ({u_wr_ptr_cdc_n_17,u_wr_ptr_cdc_n_18,u_wr_ptr_cdc_n_19,u_wr_ptr_cdc_n_20}),
        .out(rd_ptr_bin_reg),
        .p_0_in__0(p_0_in__0),
        .\rd_ptr_bin_reg[3] ({u_wr_ptr_cdc_n_13,u_wr_ptr_cdc_n_14,u_wr_ptr_cdc_n_15,u_wr_ptr_cdc_n_16}),
        .s_axi_aclk(s_axi_aclk),
        .wr_ptr_bin_reg(wr_ptr_bin_reg));
  LUT4 #(
    .INIT(16'h0080)) 
    \wr_ptr_bin[0]_i_1 
       (.I0(skip_zero),
        .I1(edge_d4),
        .I2(ts_en_d_reg_1),
        .I3(fifo_full),
        .O(wr_en));
  FDRE \wr_ptr_bin_reg[0] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___30_carry_n_7 ),
        .Q(wr_ptr_bin_reg[0]),
        .R(p_0_in__0));
  FDRE \wr_ptr_bin_reg[10] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___30_carry__1_n_5 ),
        .Q(wr_ptr_bin_reg[10]),
        .R(p_0_in__0));
  FDRE \wr_ptr_bin_reg[11] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___30_carry__1_n_4 ),
        .Q(wr_ptr_bin_reg[11]),
        .R(p_0_in__0));
  FDRE \wr_ptr_bin_reg[12] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___30_carry__2_n_7 ),
        .Q(wr_ptr_bin_reg[12]),
        .R(p_0_in__0));
  FDRE \wr_ptr_bin_reg[1] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___30_carry_n_6 ),
        .Q(wr_ptr_bin_reg[1]),
        .R(p_0_in__0));
  FDRE \wr_ptr_bin_reg[2] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___30_carry_n_5 ),
        .Q(wr_ptr_bin_reg[2]),
        .R(p_0_in__0));
  FDRE \wr_ptr_bin_reg[3] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___30_carry_n_4 ),
        .Q(wr_ptr_bin_reg[3]),
        .R(p_0_in__0));
  FDRE \wr_ptr_bin_reg[4] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___30_carry__0_n_7 ),
        .Q(wr_ptr_bin_reg[4]),
        .R(p_0_in__0));
  FDRE \wr_ptr_bin_reg[5] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___30_carry__0_n_6 ),
        .Q(wr_ptr_bin_reg[5]),
        .R(p_0_in__0));
  FDRE \wr_ptr_bin_reg[6] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___30_carry__0_n_5 ),
        .Q(wr_ptr_bin_reg[6]),
        .R(p_0_in__0));
  FDRE \wr_ptr_bin_reg[7] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___30_carry__0_n_4 ),
        .Q(wr_ptr_bin_reg[7]),
        .R(p_0_in__0));
  FDRE \wr_ptr_bin_reg[8] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___30_carry__1_n_7 ),
        .Q(wr_ptr_bin_reg[8]),
        .R(p_0_in__0));
  FDRE \wr_ptr_bin_reg[9] 
       (.C(clk_fs),
        .CE(wr_en),
        .D(\i_/i_/i___30_carry__1_n_6 ),
        .Q(wr_ptr_bin_reg[9]),
        .R(p_0_in__0));
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
