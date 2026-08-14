-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Aug 14 22:25:47 2026
-- Host        : DESKTOP-9L351U0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Vivado/CounterCode/top_cymometer.srcs/sources_1/bd/ps/ip/ps_Counter_Core_0_1/ps_Counter_Core_0_1_sim_netlist.vhdl
-- Design      : ps_Counter_Core_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_Counter_Core_v1_0_S_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    \reg_ctrl_reg[3]_0\ : out STD_LOGIC;
    \reg_ctrl_reg[1]_0\ : out STD_LOGIC;
    \axi_araddr_reg[3]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \reg_pkt_len_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pop_is_last : out STD_LOGIC;
    \pkt_bounded__14\ : out STD_LOGIC;
    \reg_edge_skip_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \reg_ctrl_reg[4]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pop_is_last1 : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \reg_gate_len_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    fifo_level : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \axi_rdata_reg[13]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[0]_0\ : in STD_LOGIC;
    dst_cnt : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[1]_0\ : in STD_LOGIC;
    \axi_rdata_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[2]_0\ : in STD_LOGIC;
    \axi_rdata_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[3]_0\ : in STD_LOGIC;
    \axi_rdata_reg[3]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[4]_0\ : in STD_LOGIC;
    \axi_rdata_reg[4]_1\ : in STD_LOGIC;
    \axi_rdata_reg[5]_0\ : in STD_LOGIC;
    \axi_rdata_reg[6]_0\ : in STD_LOGIC;
    \axi_rdata_reg[7]_0\ : in STD_LOGIC;
    \axi_rdata_reg[8]_0\ : in STD_LOGIC;
    \axi_rdata_reg[9]_0\ : in STD_LOGIC;
    \axi_rdata_reg[10]_0\ : in STD_LOGIC;
    \axi_rdata_reg[11]_0\ : in STD_LOGIC;
    \axi_rdata_reg[12]_0\ : in STD_LOGIC;
    \axi_rdata_reg[13]_1\ : in STD_LOGIC;
    \axi_rdata_reg[14]_0\ : in STD_LOGIC;
    \axi_rdata_reg[15]_0\ : in STD_LOGIC;
    \axi_rdata_reg[16]_0\ : in STD_LOGIC;
    \axi_rdata_reg[17]_0\ : in STD_LOGIC;
    \axi_rdata_reg[18]_0\ : in STD_LOGIC;
    \axi_rdata_reg[19]_0\ : in STD_LOGIC;
    \axi_rdata_reg[20]_0\ : in STD_LOGIC;
    \axi_rdata_reg[21]_0\ : in STD_LOGIC;
    \axi_rdata_reg[22]_0\ : in STD_LOGIC;
    \axi_rdata_reg[23]_0\ : in STD_LOGIC;
    \axi_rdata_reg[24]_0\ : in STD_LOGIC;
    \axi_rdata_reg[25]_0\ : in STD_LOGIC;
    \axi_rdata_reg[26]_0\ : in STD_LOGIC;
    \axi_rdata_reg[27]_0\ : in STD_LOGIC;
    \axi_rdata_reg[28]_0\ : in STD_LOGIC;
    \axi_rdata_reg[29]_0\ : in STD_LOGIC;
    \axi_rdata_reg[30]_0\ : in STD_LOGIC;
    \axi_rdata_reg[31]_0\ : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_Counter_Core_v1_0_S_AXI : entity is "Counter_Core_v1_0_S_AXI";
end ps_Counter_Core_0_1_Counter_Core_v1_0_S_AXI;

architecture STRUCTURE of ps_Counter_Core_0_1_Counter_Core_v1_0_S_AXI is
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal \^axi_araddr_reg[3]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal fifo_mem_reg_7_i_11_n_0 : STD_LOGIC;
  signal fifo_mem_reg_7_i_12_n_0 : STD_LOGIC;
  signal fifo_mem_reg_7_i_13_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^pkt_bounded__14\ : STD_LOGIC;
  signal \pop_is_last0_carry__0_i_3_n_2\ : STD_LOGIC;
  signal \pop_is_last0_carry__0_i_3_n_3\ : STD_LOGIC;
  signal \pop_is_last0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pop_is_last0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pop_is_last0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal pop_is_last0_carry_i_10_n_0 : STD_LOGIC;
  signal pop_is_last0_carry_i_11_n_0 : STD_LOGIC;
  signal pop_is_last0_carry_i_12_n_0 : STD_LOGIC;
  signal pop_is_last0_carry_i_13_n_0 : STD_LOGIC;
  signal pop_is_last0_carry_i_14_n_0 : STD_LOGIC;
  signal pop_is_last0_carry_i_15_n_0 : STD_LOGIC;
  signal pop_is_last0_carry_i_16_n_0 : STD_LOGIC;
  signal pop_is_last0_carry_i_17_n_0 : STD_LOGIC;
  signal pop_is_last0_carry_i_18_n_0 : STD_LOGIC;
  signal pop_is_last0_carry_i_19_n_0 : STD_LOGIC;
  signal pop_is_last0_carry_i_5_n_0 : STD_LOGIC;
  signal pop_is_last0_carry_i_5_n_1 : STD_LOGIC;
  signal pop_is_last0_carry_i_5_n_2 : STD_LOGIC;
  signal pop_is_last0_carry_i_5_n_3 : STD_LOGIC;
  signal pop_is_last0_carry_i_6_n_0 : STD_LOGIC;
  signal pop_is_last0_carry_i_6_n_1 : STD_LOGIC;
  signal pop_is_last0_carry_i_6_n_2 : STD_LOGIC;
  signal pop_is_last0_carry_i_6_n_3 : STD_LOGIC;
  signal pop_is_last0_carry_i_7_n_0 : STD_LOGIC;
  signal pop_is_last0_carry_i_7_n_1 : STD_LOGIC;
  signal pop_is_last0_carry_i_7_n_2 : STD_LOGIC;
  signal pop_is_last0_carry_i_7_n_3 : STD_LOGIC;
  signal pop_is_last0_carry_i_8_n_0 : STD_LOGIC;
  signal pop_is_last0_carry_i_9_n_0 : STD_LOGIC;
  signal reg_ctrl : STD_LOGIC_VECTOR ( 31 downto 5 );
  signal \^reg_ctrl_reg[4]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_edge_skip[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg_edge_skip[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg_edge_skip[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg_edge_skip[7]_i_1_n_0\ : STD_LOGIC;
  signal \^reg_edge_skip_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_gate_len[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg_gate_len[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg_gate_len[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg_gate_len[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pkt_len[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pkt_len[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pkt_len[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg_pkt_len[7]_i_1_n_0\ : STD_LOGIC;
  signal \^reg_pkt_len_reg[15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \reg_pkt_len_reg_n_0_[16]\ : STD_LOGIC;
  signal \reg_pkt_len_reg_n_0_[17]\ : STD_LOGIC;
  signal \reg_pkt_len_reg_n_0_[18]\ : STD_LOGIC;
  signal \reg_pkt_len_reg_n_0_[19]\ : STD_LOGIC;
  signal \reg_pkt_len_reg_n_0_[20]\ : STD_LOGIC;
  signal \reg_pkt_len_reg_n_0_[21]\ : STD_LOGIC;
  signal \reg_pkt_len_reg_n_0_[22]\ : STD_LOGIC;
  signal \reg_pkt_len_reg_n_0_[23]\ : STD_LOGIC;
  signal \reg_pkt_len_reg_n_0_[24]\ : STD_LOGIC;
  signal \reg_pkt_len_reg_n_0_[25]\ : STD_LOGIC;
  signal \reg_pkt_len_reg_n_0_[26]\ : STD_LOGIC;
  signal \reg_pkt_len_reg_n_0_[27]\ : STD_LOGIC;
  signal \reg_pkt_len_reg_n_0_[28]\ : STD_LOGIC;
  signal \reg_pkt_len_reg_n_0_[29]\ : STD_LOGIC;
  signal \reg_pkt_len_reg_n_0_[30]\ : STD_LOGIC;
  signal \reg_pkt_len_reg_n_0_[31]\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  signal soft_rst : STD_LOGIC;
  signal ts_rst : STD_LOGIC;
  signal wr_index : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pop_is_last0_carry__0_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pop_is_last0_carry__0_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reg_ctrl[31]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sync[2]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sync[2]_i_1__1\ : label is "soft_lutpair1";
begin
  \axi_araddr_reg[3]_0\(1 downto 0) <= \^axi_araddr_reg[3]_0\(1 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  \pkt_bounded__14\ <= \^pkt_bounded__14\;
  \reg_ctrl_reg[4]_0\(2 downto 0) <= \^reg_ctrl_reg[4]_0\(2 downto 0);
  \reg_edge_skip_reg[31]_0\(31 downto 0) <= \^reg_edge_skip_reg[31]_0\(31 downto 0);
  \reg_pkt_len_reg[15]_0\(15 downto 0) <= \^reg_pkt_len_reg[15]_0\(15 downto 0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^axi_awready_reg_0\,
      I3 => s_axi_wvalid,
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => p_0_in
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_arready0,
      D => s_axi_araddr(0),
      Q => \^axi_araddr_reg[3]_0\(0),
      R => p_0_in
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_arready0,
      D => s_axi_araddr(1),
      Q => \^axi_araddr_reg[3]_0\(1),
      R => p_0_in
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_arready0,
      D => s_axi_araddr(2),
      Q => sel0(2),
      R => p_0_in
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_arready0,
      D => s_axi_araddr(3),
      Q => sel0(3),
      R => p_0_in
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => p_0_in
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_awready0,
      D => s_axi_awaddr(0),
      Q => wr_index(0),
      R => p_0_in
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_awready0,
      D => s_axi_awaddr(1),
      Q => wr_index(1),
      R => p_0_in
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_awready0,
      D => s_axi_awaddr(2),
      Q => wr_index(2),
      R => p_0_in
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_awready0,
      D => s_axi_awaddr(3),
      Q => wr_index(3),
      R => p_0_in
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => p_0_in
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => aw_en_reg_n_0,
      I3 => s_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \^axi_wready_reg_0\,
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => p_0_in
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[0]_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[0]_i_4_n_0\,
      O => reg_data_out(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => Q(0),
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => fifo_level(0),
      I3 => \^axi_araddr_reg[3]_0\(1),
      I4 => \^reg_pkt_len_reg[15]_0\(0),
      I5 => sel0(2),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dst_cnt(0),
      I1 => \^reg_edge_skip_reg[31]_0\(0),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => \out\(0),
      I4 => \^axi_araddr_reg[3]_0\(0),
      I5 => \^reg_ctrl_reg[4]_0\(0),
      O => \axi_rdata[0]_i_4_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[10]_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[10]_i_4_n_0\,
      O => reg_data_out(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => \axi_rdata_reg[13]_0\(2),
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => fifo_level(10),
      I3 => \^axi_araddr_reg[3]_0\(1),
      I4 => \^reg_pkt_len_reg[15]_0\(10),
      I5 => sel0(2),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(9),
      I1 => \^reg_edge_skip_reg[31]_0\(10),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(10),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[10]_i_4_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[11]_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[11]_i_4_n_0\,
      O => reg_data_out(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => \axi_rdata_reg[13]_0\(3),
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => fifo_level(11),
      I3 => \^axi_araddr_reg[3]_0\(1),
      I4 => \^reg_pkt_len_reg[15]_0\(11),
      I5 => sel0(2),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(10),
      I1 => \^reg_edge_skip_reg[31]_0\(11),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(11),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[11]_i_4_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[12]_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[12]_i_4_n_0\,
      O => reg_data_out(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => \axi_rdata_reg[13]_0\(4),
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => fifo_level(12),
      I3 => \^axi_araddr_reg[3]_0\(1),
      I4 => \^reg_pkt_len_reg[15]_0\(12),
      I5 => sel0(2),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(11),
      I1 => \^reg_edge_skip_reg[31]_0\(12),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(12),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[12]_i_4_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[13]_1\,
      I3 => sel0(2),
      I4 => \axi_rdata[13]_i_4_n_0\,
      O => reg_data_out(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A404"
    )
        port map (
      I0 => \^axi_araddr_reg[3]_0\(0),
      I1 => \axi_rdata_reg[13]_0\(5),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => \^reg_pkt_len_reg[15]_0\(13),
      I4 => sel0(2),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(12),
      I1 => \^reg_edge_skip_reg[31]_0\(13),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(13),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[13]_i_4_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800000"
    )
        port map (
      I0 => \^axi_araddr_reg[3]_0\(0),
      I1 => \^reg_pkt_len_reg[15]_0\(14),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \axi_rdata_reg[14]_i_2_n_0\,
      O => reg_data_out(14)
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(13),
      I1 => \^reg_edge_skip_reg[31]_0\(14),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(14),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[14]_i_3_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800000"
    )
        port map (
      I0 => \^axi_araddr_reg[3]_0\(0),
      I1 => \^reg_pkt_len_reg[15]_0\(15),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \axi_rdata_reg[15]_i_2_n_0\,
      O => reg_data_out(15)
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(14),
      I1 => \^reg_edge_skip_reg[31]_0\(15),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(15),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[15]_i_3_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B0FFFF00B00000"
    )
        port map (
      I0 => \reg_pkt_len_reg_n_0_[16]\,
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \axi_rdata_reg[16]_i_2_n_0\,
      O => reg_data_out(16)
    );
\axi_rdata[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(15),
      I1 => \^reg_edge_skip_reg[31]_0\(16),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(16),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[16]_i_3_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B0FFFF00B00000"
    )
        port map (
      I0 => \reg_pkt_len_reg_n_0_[17]\,
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \axi_rdata_reg[17]_i_2_n_0\,
      O => reg_data_out(17)
    );
\axi_rdata[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(16),
      I1 => \^reg_edge_skip_reg[31]_0\(17),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(17),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[17]_i_3_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800000"
    )
        port map (
      I0 => \^axi_araddr_reg[3]_0\(0),
      I1 => \reg_pkt_len_reg_n_0_[18]\,
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \axi_rdata_reg[18]_i_2_n_0\,
      O => reg_data_out(18)
    );
\axi_rdata[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(17),
      I1 => \^reg_edge_skip_reg[31]_0\(18),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(18),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[18]_i_3_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800000"
    )
        port map (
      I0 => \^axi_araddr_reg[3]_0\(0),
      I1 => \reg_pkt_len_reg_n_0_[19]\,
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \axi_rdata_reg[19]_i_2_n_0\,
      O => reg_data_out(19)
    );
\axi_rdata[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(18),
      I1 => \^reg_edge_skip_reg[31]_0\(19),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(19),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[19]_i_3_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[1]_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[1]_i_4_n_0\,
      O => reg_data_out(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => Q(1),
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => fifo_level(1),
      I3 => \^axi_araddr_reg[3]_0\(1),
      I4 => \^reg_pkt_len_reg[15]_0\(1),
      I5 => sel0(2),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dst_cnt(1),
      I1 => \^reg_edge_skip_reg[31]_0\(1),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => \axi_rdata_reg[1]_1\(0),
      I4 => \^axi_araddr_reg[3]_0\(0),
      I5 => ts_rst,
      O => \axi_rdata[1]_i_4_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800000"
    )
        port map (
      I0 => \^axi_araddr_reg[3]_0\(0),
      I1 => \reg_pkt_len_reg_n_0_[20]\,
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \axi_rdata_reg[20]_i_2_n_0\,
      O => reg_data_out(20)
    );
\axi_rdata[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(19),
      I1 => \^reg_edge_skip_reg[31]_0\(20),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(20),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[20]_i_3_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800000"
    )
        port map (
      I0 => \^axi_araddr_reg[3]_0\(0),
      I1 => \reg_pkt_len_reg_n_0_[21]\,
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \axi_rdata_reg[21]_i_2_n_0\,
      O => reg_data_out(21)
    );
\axi_rdata[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(20),
      I1 => \^reg_edge_skip_reg[31]_0\(21),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(21),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[21]_i_3_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B0FFFF00B00000"
    )
        port map (
      I0 => \reg_pkt_len_reg_n_0_[22]\,
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \axi_rdata_reg[22]_i_2_n_0\,
      O => reg_data_out(22)
    );
\axi_rdata[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(21),
      I1 => \^reg_edge_skip_reg[31]_0\(22),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(22),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[22]_i_3_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800000"
    )
        port map (
      I0 => \^axi_araddr_reg[3]_0\(0),
      I1 => \reg_pkt_len_reg_n_0_[23]\,
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \axi_rdata_reg[23]_i_2_n_0\,
      O => reg_data_out(23)
    );
\axi_rdata[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(22),
      I1 => \^reg_edge_skip_reg[31]_0\(23),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(23),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[23]_i_3_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B0FFFF00B00000"
    )
        port map (
      I0 => \reg_pkt_len_reg_n_0_[24]\,
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \axi_rdata_reg[24]_i_2_n_0\,
      O => reg_data_out(24)
    );
\axi_rdata[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(23),
      I1 => \^reg_edge_skip_reg[31]_0\(24),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(24),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[24]_i_3_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B0FFFF00B00000"
    )
        port map (
      I0 => \reg_pkt_len_reg_n_0_[25]\,
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \axi_rdata_reg[25]_i_2_n_0\,
      O => reg_data_out(25)
    );
\axi_rdata[25]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(24),
      I1 => \^reg_edge_skip_reg[31]_0\(25),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(25),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[25]_i_3_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800000"
    )
        port map (
      I0 => \^axi_araddr_reg[3]_0\(0),
      I1 => \reg_pkt_len_reg_n_0_[26]\,
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \axi_rdata_reg[26]_i_2_n_0\,
      O => reg_data_out(26)
    );
\axi_rdata[26]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(25),
      I1 => \^reg_edge_skip_reg[31]_0\(26),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(26),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[26]_i_3_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800000"
    )
        port map (
      I0 => \^axi_araddr_reg[3]_0\(0),
      I1 => \reg_pkt_len_reg_n_0_[27]\,
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \axi_rdata_reg[27]_i_2_n_0\,
      O => reg_data_out(27)
    );
\axi_rdata[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(26),
      I1 => \^reg_edge_skip_reg[31]_0\(27),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(27),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[27]_i_3_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800000"
    )
        port map (
      I0 => \^axi_araddr_reg[3]_0\(0),
      I1 => \reg_pkt_len_reg_n_0_[28]\,
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \axi_rdata_reg[28]_i_2_n_0\,
      O => reg_data_out(28)
    );
\axi_rdata[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(27),
      I1 => \^reg_edge_skip_reg[31]_0\(28),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(28),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[28]_i_3_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800000"
    )
        port map (
      I0 => \^axi_araddr_reg[3]_0\(0),
      I1 => \reg_pkt_len_reg_n_0_[29]\,
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \axi_rdata_reg[29]_i_2_n_0\,
      O => reg_data_out(29)
    );
\axi_rdata[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(28),
      I1 => \^reg_edge_skip_reg[31]_0\(29),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(29),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[29]_i_3_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[2]_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[2]_i_4_n_0\,
      O => reg_data_out(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => Q(2),
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => fifo_level(2),
      I3 => \^axi_araddr_reg[3]_0\(1),
      I4 => \^reg_pkt_len_reg[15]_0\(2),
      I5 => sel0(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dst_cnt(2),
      I1 => \^reg_edge_skip_reg[31]_0\(2),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => \axi_rdata_reg[2]_1\(0),
      I4 => \^axi_araddr_reg[3]_0\(0),
      I5 => \^reg_ctrl_reg[4]_0\(1),
      O => \axi_rdata[2]_i_4_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B0FFFF00B00000"
    )
        port map (
      I0 => \reg_pkt_len_reg_n_0_[30]\,
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \axi_rdata_reg[30]_i_2_n_0\,
      O => reg_data_out(30)
    );
\axi_rdata[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(29),
      I1 => \^reg_edge_skip_reg[31]_0\(30),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(30),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[30]_i_3_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FFFF00800000"
    )
        port map (
      I0 => \^axi_araddr_reg[3]_0\(0),
      I1 => \reg_pkt_len_reg_n_0_[31]\,
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => sel0(2),
      I4 => sel0(3),
      I5 => \axi_rdata_reg[31]_i_2_n_0\,
      O => reg_data_out(31)
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(30),
      I1 => \^reg_edge_skip_reg[31]_0\(31),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(31),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[3]_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[3]_i_4_n_0\,
      O => reg_data_out(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => Q(3),
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => fifo_level(3),
      I3 => \^axi_araddr_reg[3]_0\(1),
      I4 => \^reg_pkt_len_reg[15]_0\(3),
      I5 => sel0(2),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => dst_cnt(3),
      I1 => \^reg_edge_skip_reg[31]_0\(3),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => \axi_rdata_reg[3]_1\(0),
      I4 => \^axi_araddr_reg[3]_0\(0),
      I5 => soft_rst,
      O => \axi_rdata[3]_i_4_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[4]_0\,
      I3 => sel0(2),
      I4 => \axi_rdata_reg[4]_1\,
      O => reg_data_out(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => Q(4),
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => fifo_level(4),
      I3 => \^axi_araddr_reg[3]_0\(1),
      I4 => \^reg_pkt_len_reg[15]_0\(4),
      I5 => sel0(2),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[5]_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[5]_i_4_n_0\,
      O => reg_data_out(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => Q(5),
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => fifo_level(5),
      I3 => \^axi_araddr_reg[3]_0\(1),
      I4 => \^reg_pkt_len_reg[15]_0\(5),
      I5 => sel0(2),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(4),
      I1 => \^reg_edge_skip_reg[31]_0\(5),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(5),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[5]_i_4_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[6]_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[6]_i_4_n_0\,
      O => reg_data_out(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C808"
    )
        port map (
      I0 => fifo_level(6),
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => \^reg_pkt_len_reg[15]_0\(6),
      I4 => sel0(2),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(5),
      I1 => \^reg_edge_skip_reg[31]_0\(6),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(6),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[6]_i_4_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[7]_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[7]_i_4_n_0\,
      O => reg_data_out(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C808"
    )
        port map (
      I0 => fifo_level(7),
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => \^reg_pkt_len_reg[15]_0\(7),
      I4 => sel0(2),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(6),
      I1 => \^reg_edge_skip_reg[31]_0\(7),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(7),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[7]_i_4_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[8]_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[8]_i_4_n_0\,
      O => reg_data_out(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE233E2"
    )
        port map (
      I0 => \axi_rdata_reg[13]_0\(0),
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => fifo_level(8),
      I3 => \^axi_araddr_reg[3]_0\(1),
      I4 => \^reg_pkt_len_reg[15]_0\(8),
      I5 => sel0(2),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(7),
      I1 => \^reg_edge_skip_reg[31]_0\(8),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(8),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[8]_i_4_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => sel0(3),
      I2 => \axi_rdata_reg[9]_0\,
      I3 => sel0(2),
      I4 => \axi_rdata[9]_i_4_n_0\,
      O => reg_data_out(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCE200E2"
    )
        port map (
      I0 => \axi_rdata_reg[13]_0\(1),
      I1 => \^axi_araddr_reg[3]_0\(0),
      I2 => fifo_level(9),
      I3 => \^axi_araddr_reg[3]_0\(1),
      I4 => \^reg_pkt_len_reg[15]_0\(9),
      I5 => sel0(2),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => dst_cnt(8),
      I1 => \^reg_edge_skip_reg[31]_0\(9),
      I2 => \^axi_araddr_reg[3]_0\(1),
      I3 => reg_ctrl(9),
      I4 => \^axi_araddr_reg[3]_0\(0),
      O => \axi_rdata[9]_i_4_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s_axi_rdata(0),
      R => p_0_in
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s_axi_rdata(10),
      R => p_0_in
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s_axi_rdata(11),
      R => p_0_in
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s_axi_rdata(12),
      R => p_0_in
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s_axi_rdata(13),
      R => p_0_in
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s_axi_rdata(14),
      R => p_0_in
    );
\axi_rdata_reg[14]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[14]_i_3_n_0\,
      I1 => \axi_rdata_reg[14]_0\,
      O => \axi_rdata_reg[14]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s_axi_rdata(15),
      R => p_0_in
    );
\axi_rdata_reg[15]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[15]_i_3_n_0\,
      I1 => \axi_rdata_reg[15]_0\,
      O => \axi_rdata_reg[15]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s_axi_rdata(16),
      R => p_0_in
    );
\axi_rdata_reg[16]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[16]_i_3_n_0\,
      I1 => \axi_rdata_reg[16]_0\,
      O => \axi_rdata_reg[16]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s_axi_rdata(17),
      R => p_0_in
    );
\axi_rdata_reg[17]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[17]_i_3_n_0\,
      I1 => \axi_rdata_reg[17]_0\,
      O => \axi_rdata_reg[17]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s_axi_rdata(18),
      R => p_0_in
    );
\axi_rdata_reg[18]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[18]_i_3_n_0\,
      I1 => \axi_rdata_reg[18]_0\,
      O => \axi_rdata_reg[18]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s_axi_rdata(19),
      R => p_0_in
    );
\axi_rdata_reg[19]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[19]_i_3_n_0\,
      I1 => \axi_rdata_reg[19]_0\,
      O => \axi_rdata_reg[19]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s_axi_rdata(1),
      R => p_0_in
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s_axi_rdata(20),
      R => p_0_in
    );
\axi_rdata_reg[20]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[20]_i_3_n_0\,
      I1 => \axi_rdata_reg[20]_0\,
      O => \axi_rdata_reg[20]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s_axi_rdata(21),
      R => p_0_in
    );
\axi_rdata_reg[21]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[21]_i_3_n_0\,
      I1 => \axi_rdata_reg[21]_0\,
      O => \axi_rdata_reg[21]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s_axi_rdata(22),
      R => p_0_in
    );
\axi_rdata_reg[22]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[22]_i_3_n_0\,
      I1 => \axi_rdata_reg[22]_0\,
      O => \axi_rdata_reg[22]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s_axi_rdata(23),
      R => p_0_in
    );
\axi_rdata_reg[23]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[23]_i_3_n_0\,
      I1 => \axi_rdata_reg[23]_0\,
      O => \axi_rdata_reg[23]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s_axi_rdata(24),
      R => p_0_in
    );
\axi_rdata_reg[24]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[24]_i_3_n_0\,
      I1 => \axi_rdata_reg[24]_0\,
      O => \axi_rdata_reg[24]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s_axi_rdata(25),
      R => p_0_in
    );
\axi_rdata_reg[25]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[25]_i_3_n_0\,
      I1 => \axi_rdata_reg[25]_0\,
      O => \axi_rdata_reg[25]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s_axi_rdata(26),
      R => p_0_in
    );
\axi_rdata_reg[26]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[26]_i_3_n_0\,
      I1 => \axi_rdata_reg[26]_0\,
      O => \axi_rdata_reg[26]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s_axi_rdata(27),
      R => p_0_in
    );
\axi_rdata_reg[27]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[27]_i_3_n_0\,
      I1 => \axi_rdata_reg[27]_0\,
      O => \axi_rdata_reg[27]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s_axi_rdata(28),
      R => p_0_in
    );
\axi_rdata_reg[28]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[28]_i_3_n_0\,
      I1 => \axi_rdata_reg[28]_0\,
      O => \axi_rdata_reg[28]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s_axi_rdata(29),
      R => p_0_in
    );
\axi_rdata_reg[29]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[29]_i_3_n_0\,
      I1 => \axi_rdata_reg[29]_0\,
      O => \axi_rdata_reg[29]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s_axi_rdata(2),
      R => p_0_in
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s_axi_rdata(30),
      R => p_0_in
    );
\axi_rdata_reg[30]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[30]_i_3_n_0\,
      I1 => \axi_rdata_reg[30]_0\,
      O => \axi_rdata_reg[30]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s_axi_rdata(31),
      R => p_0_in
    );
\axi_rdata_reg[31]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[31]_i_3_n_0\,
      I1 => \axi_rdata_reg[31]_0\,
      O => \axi_rdata_reg[31]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s_axi_rdata(3),
      R => p_0_in
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s_axi_rdata(4),
      R => p_0_in
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s_axi_rdata(5),
      R => p_0_in
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s_axi_rdata(6),
      R => p_0_in
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s_axi_rdata(7),
      R => p_0_in
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s_axi_rdata(8),
      R => p_0_in
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s_axi_rdata(9),
      R => p_0_in
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s_axi_arvalid,
      I2 => \^s_axi_rvalid\,
      I3 => s_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => p_0_in
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => p_0_in
    );
fifo_mem_reg_7_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^reg_pkt_len_reg[15]_0\(1),
      I1 => \^reg_pkt_len_reg[15]_0\(0),
      I2 => \^reg_pkt_len_reg[15]_0\(3),
      I3 => \^reg_pkt_len_reg[15]_0\(2),
      O => fifo_mem_reg_7_i_11_n_0
    );
fifo_mem_reg_7_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^reg_pkt_len_reg[15]_0\(12),
      I1 => \^reg_pkt_len_reg[15]_0\(13),
      I2 => \^reg_pkt_len_reg[15]_0\(15),
      I3 => \^reg_pkt_len_reg[15]_0\(14),
      I4 => fifo_mem_reg_7_i_13_n_0,
      O => fifo_mem_reg_7_i_12_n_0
    );
fifo_mem_reg_7_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^reg_pkt_len_reg[15]_0\(9),
      I1 => \^reg_pkt_len_reg[15]_0\(8),
      I2 => \^reg_pkt_len_reg[15]_0\(11),
      I3 => \^reg_pkt_len_reg[15]_0\(10),
      O => fifo_mem_reg_7_i_13_n_0
    );
fifo_mem_reg_7_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => fifo_mem_reg_7_i_11_n_0,
      I1 => \^reg_pkt_len_reg[15]_0\(7),
      I2 => \^reg_pkt_len_reg[15]_0\(6),
      I3 => \^reg_pkt_len_reg[15]_0\(5),
      I4 => \^reg_pkt_len_reg[15]_0\(4),
      I5 => fifo_mem_reg_7_i_12_n_0,
      O => \^pkt_bounded__14\
    );
out_last_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^pkt_bounded__14\,
      I1 => CO(0),
      O => pop_is_last
    );
\pop_is_last0_carry__0_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => pop_is_last0_carry_i_5_n_0,
      CO(3 downto 2) => \NLW_pop_is_last0_carry__0_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \pop_is_last0_carry__0_i_3_n_2\,
      CO(0) => \pop_is_last0_carry__0_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^reg_pkt_len_reg[15]_0\(14 downto 13),
      O(3) => \NLW_pop_is_last0_carry__0_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => pop_is_last1(14 downto 12),
      S(3) => '0',
      S(2) => \pop_is_last0_carry__0_i_4_n_0\,
      S(1) => \pop_is_last0_carry__0_i_5_n_0\,
      S(0) => \pop_is_last0_carry__0_i_6_n_0\
    );
\pop_is_last0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reg_pkt_len_reg[15]_0\(15),
      O => \pop_is_last0_carry__0_i_4_n_0\
    );
\pop_is_last0_carry__0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reg_pkt_len_reg[15]_0\(14),
      O => \pop_is_last0_carry__0_i_5_n_0\
    );
\pop_is_last0_carry__0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reg_pkt_len_reg[15]_0\(13),
      O => \pop_is_last0_carry__0_i_6_n_0\
    );
pop_is_last0_carry_i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reg_pkt_len_reg[15]_0\(10),
      O => pop_is_last0_carry_i_10_n_0
    );
pop_is_last0_carry_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reg_pkt_len_reg[15]_0\(9),
      O => pop_is_last0_carry_i_11_n_0
    );
pop_is_last0_carry_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reg_pkt_len_reg[15]_0\(8),
      O => pop_is_last0_carry_i_12_n_0
    );
pop_is_last0_carry_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reg_pkt_len_reg[15]_0\(7),
      O => pop_is_last0_carry_i_13_n_0
    );
pop_is_last0_carry_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reg_pkt_len_reg[15]_0\(6),
      O => pop_is_last0_carry_i_14_n_0
    );
pop_is_last0_carry_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reg_pkt_len_reg[15]_0\(5),
      O => pop_is_last0_carry_i_15_n_0
    );
pop_is_last0_carry_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reg_pkt_len_reg[15]_0\(4),
      O => pop_is_last0_carry_i_16_n_0
    );
pop_is_last0_carry_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reg_pkt_len_reg[15]_0\(3),
      O => pop_is_last0_carry_i_17_n_0
    );
pop_is_last0_carry_i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reg_pkt_len_reg[15]_0\(2),
      O => pop_is_last0_carry_i_18_n_0
    );
pop_is_last0_carry_i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reg_pkt_len_reg[15]_0\(1),
      O => pop_is_last0_carry_i_19_n_0
    );
pop_is_last0_carry_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => pop_is_last0_carry_i_6_n_0,
      CO(3) => pop_is_last0_carry_i_5_n_0,
      CO(2) => pop_is_last0_carry_i_5_n_1,
      CO(1) => pop_is_last0_carry_i_5_n_2,
      CO(0) => pop_is_last0_carry_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^reg_pkt_len_reg[15]_0\(12 downto 9),
      O(3 downto 0) => pop_is_last1(11 downto 8),
      S(3) => pop_is_last0_carry_i_8_n_0,
      S(2) => pop_is_last0_carry_i_9_n_0,
      S(1) => pop_is_last0_carry_i_10_n_0,
      S(0) => pop_is_last0_carry_i_11_n_0
    );
pop_is_last0_carry_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => pop_is_last0_carry_i_7_n_0,
      CO(3) => pop_is_last0_carry_i_6_n_0,
      CO(2) => pop_is_last0_carry_i_6_n_1,
      CO(1) => pop_is_last0_carry_i_6_n_2,
      CO(0) => pop_is_last0_carry_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^reg_pkt_len_reg[15]_0\(8 downto 5),
      O(3 downto 0) => pop_is_last1(7 downto 4),
      S(3) => pop_is_last0_carry_i_12_n_0,
      S(2) => pop_is_last0_carry_i_13_n_0,
      S(1) => pop_is_last0_carry_i_14_n_0,
      S(0) => pop_is_last0_carry_i_15_n_0
    );
pop_is_last0_carry_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pop_is_last0_carry_i_7_n_0,
      CO(2) => pop_is_last0_carry_i_7_n_1,
      CO(1) => pop_is_last0_carry_i_7_n_2,
      CO(0) => pop_is_last0_carry_i_7_n_3,
      CYINIT => \^reg_pkt_len_reg[15]_0\(0),
      DI(3 downto 0) => \^reg_pkt_len_reg[15]_0\(4 downto 1),
      O(3 downto 0) => pop_is_last1(3 downto 0),
      S(3) => pop_is_last0_carry_i_16_n_0,
      S(2) => pop_is_last0_carry_i_17_n_0,
      S(1) => pop_is_last0_carry_i_18_n_0,
      S(0) => pop_is_last0_carry_i_19_n_0
    );
pop_is_last0_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reg_pkt_len_reg[15]_0\(12),
      O => pop_is_last0_carry_i_8_n_0
    );
pop_is_last0_carry_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^reg_pkt_len_reg[15]_0\(11),
      O => pop_is_last0_carry_i_9_n_0
    );
\reg_ctrl[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => wr_index(0),
      I2 => wr_index(3),
      I3 => wr_index(1),
      I4 => wr_index(2),
      I5 => s_axi_wstrb(1),
      O => p_1_in(15)
    );
\reg_ctrl[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => wr_index(0),
      I2 => wr_index(3),
      I3 => wr_index(1),
      I4 => wr_index(2),
      I5 => s_axi_wstrb(2),
      O => p_1_in(23)
    );
\reg_ctrl[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => wr_index(0),
      I2 => wr_index(3),
      I3 => wr_index(1),
      I4 => wr_index(2),
      I5 => s_axi_wstrb(3),
      O => p_1_in(31)
    );
\reg_ctrl[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => \^axi_awready_reg_0\,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\reg_ctrl[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => wr_index(0),
      I2 => wr_index(3),
      I3 => wr_index(1),
      I4 => wr_index(2),
      I5 => s_axi_wstrb(0),
      O => p_1_in(0)
    );
\reg_ctrl_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(0),
      Q => \^reg_ctrl_reg[4]_0\(0),
      R => p_0_in
    );
\reg_ctrl_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(10),
      Q => reg_ctrl(10),
      R => p_0_in
    );
\reg_ctrl_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(11),
      Q => reg_ctrl(11),
      R => p_0_in
    );
\reg_ctrl_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(12),
      Q => reg_ctrl(12),
      R => p_0_in
    );
\reg_ctrl_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(13),
      Q => reg_ctrl(13),
      R => p_0_in
    );
\reg_ctrl_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(14),
      Q => reg_ctrl(14),
      R => p_0_in
    );
\reg_ctrl_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(15),
      Q => reg_ctrl(15),
      R => p_0_in
    );
\reg_ctrl_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(16),
      Q => reg_ctrl(16),
      R => p_0_in
    );
\reg_ctrl_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(17),
      Q => reg_ctrl(17),
      R => p_0_in
    );
\reg_ctrl_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(18),
      Q => reg_ctrl(18),
      R => p_0_in
    );
\reg_ctrl_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(19),
      Q => reg_ctrl(19),
      R => p_0_in
    );
\reg_ctrl_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(1),
      Q => ts_rst,
      R => p_0_in
    );
\reg_ctrl_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(20),
      Q => reg_ctrl(20),
      R => p_0_in
    );
\reg_ctrl_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(21),
      Q => reg_ctrl(21),
      R => p_0_in
    );
\reg_ctrl_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(22),
      Q => reg_ctrl(22),
      R => p_0_in
    );
\reg_ctrl_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(23),
      D => s_axi_wdata(23),
      Q => reg_ctrl(23),
      R => p_0_in
    );
\reg_ctrl_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(24),
      Q => reg_ctrl(24),
      R => p_0_in
    );
\reg_ctrl_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(25),
      Q => reg_ctrl(25),
      R => p_0_in
    );
\reg_ctrl_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(26),
      Q => reg_ctrl(26),
      R => p_0_in
    );
\reg_ctrl_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(27),
      Q => reg_ctrl(27),
      R => p_0_in
    );
\reg_ctrl_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(28),
      Q => reg_ctrl(28),
      R => p_0_in
    );
\reg_ctrl_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(29),
      Q => reg_ctrl(29),
      R => p_0_in
    );
\reg_ctrl_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(2),
      Q => \^reg_ctrl_reg[4]_0\(1),
      R => p_0_in
    );
\reg_ctrl_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(30),
      Q => reg_ctrl(30),
      R => p_0_in
    );
\reg_ctrl_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(31),
      D => s_axi_wdata(31),
      Q => reg_ctrl(31),
      R => p_0_in
    );
\reg_ctrl_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(3),
      Q => soft_rst,
      R => p_0_in
    );
\reg_ctrl_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(4),
      Q => \^reg_ctrl_reg[4]_0\(2),
      R => p_0_in
    );
\reg_ctrl_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(5),
      Q => reg_ctrl(5),
      R => p_0_in
    );
\reg_ctrl_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(6),
      Q => reg_ctrl(6),
      R => p_0_in
    );
\reg_ctrl_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(0),
      D => s_axi_wdata(7),
      Q => reg_ctrl(7),
      R => p_0_in
    );
\reg_ctrl_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(8),
      Q => reg_ctrl(8),
      R => p_0_in
    );
\reg_ctrl_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => p_1_in(15),
      D => s_axi_wdata(9),
      Q => reg_ctrl(9),
      R => p_0_in
    );
\reg_edge_skip[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s_axi_wstrb(1),
      I2 => wr_index(3),
      I3 => wr_index(0),
      I4 => wr_index(2),
      I5 => wr_index(1),
      O => \reg_edge_skip[15]_i_1_n_0\
    );
\reg_edge_skip[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s_axi_wstrb(2),
      I2 => wr_index(3),
      I3 => wr_index(0),
      I4 => wr_index(2),
      I5 => wr_index(1),
      O => \reg_edge_skip[23]_i_1_n_0\
    );
\reg_edge_skip[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s_axi_wstrb(3),
      I2 => wr_index(3),
      I3 => wr_index(0),
      I4 => wr_index(2),
      I5 => wr_index(1),
      O => \reg_edge_skip[31]_i_1_n_0\
    );
\reg_edge_skip[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s_axi_wstrb(0),
      I2 => wr_index(3),
      I3 => wr_index(0),
      I4 => wr_index(2),
      I5 => wr_index(1),
      O => \reg_edge_skip[7]_i_1_n_0\
    );
\reg_edge_skip_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => \^reg_edge_skip_reg[31]_0\(0),
      R => p_0_in
    );
\reg_edge_skip_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => \^reg_edge_skip_reg[31]_0\(10),
      R => p_0_in
    );
\reg_edge_skip_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => \^reg_edge_skip_reg[31]_0\(11),
      R => p_0_in
    );
\reg_edge_skip_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => \^reg_edge_skip_reg[31]_0\(12),
      R => p_0_in
    );
\reg_edge_skip_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => \^reg_edge_skip_reg[31]_0\(13),
      R => p_0_in
    );
\reg_edge_skip_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => \^reg_edge_skip_reg[31]_0\(14),
      R => p_0_in
    );
\reg_edge_skip_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => \^reg_edge_skip_reg[31]_0\(15),
      R => p_0_in
    );
\reg_edge_skip_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => \^reg_edge_skip_reg[31]_0\(16),
      R => p_0_in
    );
\reg_edge_skip_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => \^reg_edge_skip_reg[31]_0\(17),
      R => p_0_in
    );
\reg_edge_skip_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => \^reg_edge_skip_reg[31]_0\(18),
      R => p_0_in
    );
\reg_edge_skip_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => \^reg_edge_skip_reg[31]_0\(19),
      R => p_0_in
    );
\reg_edge_skip_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => \^reg_edge_skip_reg[31]_0\(1),
      R => p_0_in
    );
\reg_edge_skip_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => \^reg_edge_skip_reg[31]_0\(20),
      R => p_0_in
    );
\reg_edge_skip_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => \^reg_edge_skip_reg[31]_0\(21),
      R => p_0_in
    );
\reg_edge_skip_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => \^reg_edge_skip_reg[31]_0\(22),
      R => p_0_in
    );
\reg_edge_skip_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => \^reg_edge_skip_reg[31]_0\(23),
      R => p_0_in
    );
\reg_edge_skip_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => \^reg_edge_skip_reg[31]_0\(24),
      R => p_0_in
    );
\reg_edge_skip_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => \^reg_edge_skip_reg[31]_0\(25),
      R => p_0_in
    );
\reg_edge_skip_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => \^reg_edge_skip_reg[31]_0\(26),
      R => p_0_in
    );
\reg_edge_skip_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => \^reg_edge_skip_reg[31]_0\(27),
      R => p_0_in
    );
\reg_edge_skip_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => \^reg_edge_skip_reg[31]_0\(28),
      R => p_0_in
    );
\reg_edge_skip_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => \^reg_edge_skip_reg[31]_0\(29),
      R => p_0_in
    );
\reg_edge_skip_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => \^reg_edge_skip_reg[31]_0\(2),
      R => p_0_in
    );
\reg_edge_skip_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => \^reg_edge_skip_reg[31]_0\(30),
      R => p_0_in
    );
\reg_edge_skip_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => \^reg_edge_skip_reg[31]_0\(31),
      R => p_0_in
    );
\reg_edge_skip_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => \^reg_edge_skip_reg[31]_0\(3),
      R => p_0_in
    );
\reg_edge_skip_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => \^reg_edge_skip_reg[31]_0\(4),
      R => p_0_in
    );
\reg_edge_skip_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => \^reg_edge_skip_reg[31]_0\(5),
      R => p_0_in
    );
\reg_edge_skip_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => \^reg_edge_skip_reg[31]_0\(6),
      R => p_0_in
    );
\reg_edge_skip_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => \^reg_edge_skip_reg[31]_0\(7),
      R => p_0_in
    );
\reg_edge_skip_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => \^reg_edge_skip_reg[31]_0\(8),
      R => p_0_in
    );
\reg_edge_skip_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_edge_skip[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => \^reg_edge_skip_reg[31]_0\(9),
      R => p_0_in
    );
\reg_gate_len[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s_axi_wstrb(1),
      I2 => wr_index(0),
      I3 => wr_index(2),
      I4 => wr_index(1),
      I5 => wr_index(3),
      O => \reg_gate_len[15]_i_1_n_0\
    );
\reg_gate_len[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s_axi_wstrb(2),
      I2 => wr_index(0),
      I3 => wr_index(2),
      I4 => wr_index(1),
      I5 => wr_index(3),
      O => \reg_gate_len[23]_i_1_n_0\
    );
\reg_gate_len[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s_axi_wstrb(3),
      I2 => wr_index(0),
      I3 => wr_index(2),
      I4 => wr_index(1),
      I5 => wr_index(3),
      O => \reg_gate_len[31]_i_1_n_0\
    );
\reg_gate_len[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s_axi_wstrb(0),
      I2 => wr_index(0),
      I3 => wr_index(2),
      I4 => wr_index(1),
      I5 => wr_index(3),
      O => \reg_gate_len[7]_i_1_n_0\
    );
\reg_gate_len_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => \reg_gate_len_reg[31]_0\(0),
      R => p_0_in
    );
\reg_gate_len_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => \reg_gate_len_reg[31]_0\(10),
      R => p_0_in
    );
\reg_gate_len_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => \reg_gate_len_reg[31]_0\(11),
      R => p_0_in
    );
\reg_gate_len_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => \reg_gate_len_reg[31]_0\(12),
      R => p_0_in
    );
\reg_gate_len_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => \reg_gate_len_reg[31]_0\(13),
      R => p_0_in
    );
\reg_gate_len_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => \reg_gate_len_reg[31]_0\(14),
      R => p_0_in
    );
\reg_gate_len_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => \reg_gate_len_reg[31]_0\(15),
      R => p_0_in
    );
\reg_gate_len_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => \reg_gate_len_reg[31]_0\(16),
      R => p_0_in
    );
\reg_gate_len_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => \reg_gate_len_reg[31]_0\(17),
      R => p_0_in
    );
\reg_gate_len_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => \reg_gate_len_reg[31]_0\(18),
      R => p_0_in
    );
\reg_gate_len_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => \reg_gate_len_reg[31]_0\(19),
      R => p_0_in
    );
\reg_gate_len_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => \reg_gate_len_reg[31]_0\(1),
      R => p_0_in
    );
\reg_gate_len_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => \reg_gate_len_reg[31]_0\(20),
      R => p_0_in
    );
\reg_gate_len_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => \reg_gate_len_reg[31]_0\(21),
      R => p_0_in
    );
\reg_gate_len_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => \reg_gate_len_reg[31]_0\(22),
      R => p_0_in
    );
\reg_gate_len_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => \reg_gate_len_reg[31]_0\(23),
      R => p_0_in
    );
\reg_gate_len_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => \reg_gate_len_reg[31]_0\(24),
      R => p_0_in
    );
\reg_gate_len_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => \reg_gate_len_reg[31]_0\(25),
      R => p_0_in
    );
\reg_gate_len_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => \reg_gate_len_reg[31]_0\(26),
      R => p_0_in
    );
\reg_gate_len_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => \reg_gate_len_reg[31]_0\(27),
      R => p_0_in
    );
\reg_gate_len_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => \reg_gate_len_reg[31]_0\(28),
      R => p_0_in
    );
\reg_gate_len_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => \reg_gate_len_reg[31]_0\(29),
      R => p_0_in
    );
\reg_gate_len_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => \reg_gate_len_reg[31]_0\(2),
      R => p_0_in
    );
\reg_gate_len_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => \reg_gate_len_reg[31]_0\(30),
      R => p_0_in
    );
\reg_gate_len_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => \reg_gate_len_reg[31]_0\(31),
      R => p_0_in
    );
\reg_gate_len_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => \reg_gate_len_reg[31]_0\(3),
      R => p_0_in
    );
\reg_gate_len_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => \reg_gate_len_reg[31]_0\(4),
      R => p_0_in
    );
\reg_gate_len_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => \reg_gate_len_reg[31]_0\(5),
      R => p_0_in
    );
\reg_gate_len_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => \reg_gate_len_reg[31]_0\(6),
      R => p_0_in
    );
\reg_gate_len_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => \reg_gate_len_reg[31]_0\(7),
      R => p_0_in
    );
\reg_gate_len_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => \reg_gate_len_reg[31]_0\(8),
      R => p_0_in
    );
\reg_gate_len_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_gate_len[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => \reg_gate_len_reg[31]_0\(9),
      R => p_0_in
    );
\reg_pkt_len[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s_axi_wstrb(1),
      I2 => wr_index(3),
      I3 => wr_index(0),
      I4 => wr_index(1),
      I5 => wr_index(2),
      O => \reg_pkt_len[15]_i_1_n_0\
    );
\reg_pkt_len[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s_axi_wstrb(2),
      I2 => wr_index(3),
      I3 => wr_index(0),
      I4 => wr_index(1),
      I5 => wr_index(2),
      O => \reg_pkt_len[23]_i_1_n_0\
    );
\reg_pkt_len[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s_axi_wstrb(3),
      I2 => wr_index(3),
      I3 => wr_index(0),
      I4 => wr_index(1),
      I5 => wr_index(2),
      O => \reg_pkt_len[31]_i_1_n_0\
    );
\reg_pkt_len[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s_axi_wstrb(0),
      I2 => wr_index(3),
      I3 => wr_index(0),
      I4 => wr_index(1),
      I5 => wr_index(2),
      O => \reg_pkt_len[7]_i_1_n_0\
    );
\reg_pkt_len_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => \^reg_pkt_len_reg[15]_0\(0),
      R => p_0_in
    );
\reg_pkt_len_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => \^reg_pkt_len_reg[15]_0\(10),
      R => p_0_in
    );
\reg_pkt_len_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => \^reg_pkt_len_reg[15]_0\(11),
      R => p_0_in
    );
\reg_pkt_len_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => \^reg_pkt_len_reg[15]_0\(12),
      R => p_0_in
    );
\reg_pkt_len_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => \^reg_pkt_len_reg[15]_0\(13),
      R => p_0_in
    );
\reg_pkt_len_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => \^reg_pkt_len_reg[15]_0\(14),
      R => p_0_in
    );
\reg_pkt_len_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => \^reg_pkt_len_reg[15]_0\(15),
      R => p_0_in
    );
\reg_pkt_len_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => \reg_pkt_len_reg_n_0_[16]\,
      R => p_0_in
    );
\reg_pkt_len_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => \reg_pkt_len_reg_n_0_[17]\,
      R => p_0_in
    );
\reg_pkt_len_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => \reg_pkt_len_reg_n_0_[18]\,
      R => p_0_in
    );
\reg_pkt_len_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => \reg_pkt_len_reg_n_0_[19]\,
      R => p_0_in
    );
\reg_pkt_len_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => \^reg_pkt_len_reg[15]_0\(1),
      R => p_0_in
    );
\reg_pkt_len_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => \reg_pkt_len_reg_n_0_[20]\,
      R => p_0_in
    );
\reg_pkt_len_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => \reg_pkt_len_reg_n_0_[21]\,
      R => p_0_in
    );
\reg_pkt_len_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => \reg_pkt_len_reg_n_0_[22]\,
      R => p_0_in
    );
\reg_pkt_len_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => \reg_pkt_len_reg_n_0_[23]\,
      R => p_0_in
    );
\reg_pkt_len_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => \reg_pkt_len_reg_n_0_[24]\,
      R => p_0_in
    );
\reg_pkt_len_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => \reg_pkt_len_reg_n_0_[25]\,
      R => p_0_in
    );
\reg_pkt_len_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => \reg_pkt_len_reg_n_0_[26]\,
      R => p_0_in
    );
\reg_pkt_len_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => \reg_pkt_len_reg_n_0_[27]\,
      R => p_0_in
    );
\reg_pkt_len_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => \reg_pkt_len_reg_n_0_[28]\,
      R => p_0_in
    );
\reg_pkt_len_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => \reg_pkt_len_reg_n_0_[29]\,
      R => p_0_in
    );
\reg_pkt_len_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => \^reg_pkt_len_reg[15]_0\(2),
      R => p_0_in
    );
\reg_pkt_len_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => \reg_pkt_len_reg_n_0_[30]\,
      R => p_0_in
    );
\reg_pkt_len_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => \reg_pkt_len_reg_n_0_[31]\,
      R => p_0_in
    );
\reg_pkt_len_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => \^reg_pkt_len_reg[15]_0\(3),
      R => p_0_in
    );
\reg_pkt_len_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => \^reg_pkt_len_reg[15]_0\(4),
      R => p_0_in
    );
\reg_pkt_len_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => \^reg_pkt_len_reg[15]_0\(5),
      R => p_0_in
    );
\reg_pkt_len_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => \^reg_pkt_len_reg[15]_0\(6),
      R => p_0_in
    );
\reg_pkt_len_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => \^reg_pkt_len_reg[15]_0\(7),
      R => p_0_in
    );
\reg_pkt_len_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => \^reg_pkt_len_reg[15]_0\(8),
      R => p_0_in
    );
\reg_pkt_len_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \reg_pkt_len[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => \^reg_pkt_len_reg[15]_0\(9),
      R => p_0_in
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_rvalid\,
      I2 => \^axi_arready_reg_0\,
      O => \slv_reg_rden__0\
    );
\sync[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => soft_rst,
      I1 => s_axi_aresetn,
      O => \reg_ctrl_reg[3]_0\
    );
\sync[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => ts_rst,
      I1 => soft_rst,
      I2 => s_axi_aresetn,
      O => \reg_ctrl_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_bit_sync is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \sync_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_bit_sync : entity is "bit_sync";
end ps_Counter_Core_0_1_bit_sync;

architecture STRUCTURE of ps_Counter_Core_0_1_bit_sync is
  signal sync : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync_reg[1]\ : label is "yes";
begin
  \out\(0) <= sync(1);
\sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \sync_reg[0]_0\(0),
      Q => sync(0),
      R => SR(0)
    );
\sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => sync(0),
      Q => sync(1),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_bit_sync_10 is
  port (
    \sync_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sync_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_bit_sync_10 : entity is "bit_sync";
end ps_Counter_Core_0_1_bit_sync_10;

architecture STRUCTURE of ps_Counter_Core_0_1_bit_sync_10 is
  signal sync : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync_reg[1]\ : label is "yes";
begin
  \sync_reg[1]_0\(0) <= sync(1);
\sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(0),
      Q => sync(0),
      R => \sync_reg[1]_1\(0)
    );
\sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sync(0),
      Q => sync(1),
      R => \sync_reg[1]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_bit_sync_2 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ts_en_d : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \sync_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_bit_sync_2 : entity is "bit_sync";
end ps_Counter_Core_0_1_bit_sync_2;

architecture STRUCTURE of ps_Counter_Core_0_1_bit_sync_2 is
  signal sync : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync_reg[1]\ : label is "yes";
begin
  \out\(0) <= sync(1);
\skip_limit[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sync(1),
      I1 => ts_en_d,
      O => E(0)
    );
\sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \sync_reg[0]_0\(0),
      Q => sync(0),
      R => SR(0)
    );
\sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => sync(0),
      Q => sync(1),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_bit_sync_5 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_bit_sync_5 : entity is "bit_sync";
end ps_Counter_Core_0_1_bit_sync_5;

architecture STRUCTURE of ps_Counter_Core_0_1_bit_sync_5 is
  signal sync : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync_reg[1]\ : label is "yes";
begin
  \out\(0) <= sync(1);
\sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(0),
      Q => sync(0),
      R => SR(0)
    );
\sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sync(0),
      Q => sync(1),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_bit_sync_6 is
  port (
    \sync_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sync_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_bit_sync_6 : entity is "bit_sync";
end ps_Counter_Core_0_1_bit_sync_6;

architecture STRUCTURE of ps_Counter_Core_0_1_bit_sync_6 is
  signal sync : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync_reg[1]\ : label is "yes";
begin
  \sync_reg[1]_0\(0) <= sync(1);
\sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(0),
      Q => sync(0),
      R => \sync_reg[0]_0\(0)
    );
\sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sync(0),
      Q => sync(1),
      R => \sync_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_bit_sync_9 is
  port (
    \sync_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sync_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    busy : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_bit_sync_9 : entity is "bit_sync";
end ps_Counter_Core_0_1_bit_sync_9;

architecture STRUCTURE of ps_Counter_Core_0_1_bit_sync_9 is
  signal sync : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync_reg[1]\ : label is "yes";
begin
  \sync_reg[1]_0\(0) <= sync(1);
\sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => busy,
      Q => sync(0),
      R => \sync_reg[0]_0\(0)
    );
\sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => sync(0),
      Q => sync(1),
      R => \sync_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_Counter_Core_0_1_bit_sync__parameterized0\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    gate_fx_d_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sync_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    gate_fx_d : in STD_LOGIC;
    \test_cnt_reg[31]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_fx : in STD_LOGIC;
    \sync_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_Counter_Core_0_1_bit_sync__parameterized0\ : entity is "bit_sync";
end \ps_Counter_Core_0_1_bit_sync__parameterized0\;

architecture STRUCTURE of \ps_Counter_Core_0_1_bit_sync__parameterized0\ is
  signal sync : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync_reg[2]\ : label is "yes";
begin
  \out\(0) <= sync(2);
\sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \sync_reg[0]_0\,
      Q => sync(0),
      R => SR(0)
    );
\sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => sync(0),
      Q => sync(1),
      R => SR(0)
    );
\sync_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => sync(1),
      Q => sync(2),
      R => SR(0)
    );
\tdc_rise_fx[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sync(2),
      I1 => gate_fx_d,
      O => \sync_reg[2]_0\(0)
    );
\test_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => gate_fx_d,
      I1 => sync(2),
      I2 => \test_cnt_reg[31]\(0),
      O => gate_fx_d_reg
    );
\test_result[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => gate_fx_d,
      I1 => sync(2),
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_cnt_cdc is
  port (
    \wr_ptr_bin_reg[12]\ : out STD_LOGIC;
    edge_d2_reg : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_drop : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \do_capture0__25\ : in STD_LOGIC;
    ts_word : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_full0_carry_i_3_0 : in STD_LOGIC;
    edge_d2 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_full0_carry : in STD_LOGIC;
    fifo_full0_carry_0 : in STD_LOGIC;
    fifo_full0_carry_1 : in STD_LOGIC;
    fifo_full0_carry_2 : in STD_LOGIC;
    fifo_full0_carry_3 : in STD_LOGIC;
    fifo_full0_carry_4 : in STD_LOGIC;
    fifo_full0_carry_i_2_0 : in STD_LOGIC;
    fifo_full0_carry_i_2_1 : in STD_LOGIC;
    fifo_full0_carry_5 : in STD_LOGIC;
    fifo_full0_carry_6 : in STD_LOGIC;
    fifo_full0_carry_7 : in STD_LOGIC;
    \gray_src_reg[12]_0\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \gray_src_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_cnt_cdc : entity is "cnt_cdc";
end ps_Counter_Core_0_1_cnt_cdc;

architecture STRUCTURE of ps_Counter_Core_0_1_cnt_cdc is
  signal fifo_full0_carry_i_11_n_0 : STD_LOGIC;
  signal fifo_full0_carry_i_16_n_0 : STD_LOGIC;
  signal fifo_full0_carry_i_18_n_0 : STD_LOGIC;
  signal fifo_full0_carry_i_19_n_0 : STD_LOGIC;
  signal fifo_full0_carry_i_8_n_0 : STD_LOGIC;
  signal fifo_full0_carry_i_9_n_0 : STD_LOGIC;
  signal gray_s1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute async_reg : string;
  attribute async_reg of gray_s1 : signal is "true";
  signal gray_s2 : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute async_reg of gray_s2 : signal is "true";
  signal gray_src : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \gray_src[0]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[10]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[11]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[1]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[2]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[3]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[4]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[5]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[6]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[7]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[8]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[9]_i_1_n_0\ : STD_LOGIC;
  signal rd_ptr_bin_at_wr : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \gray_s1_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \gray_s1_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[10]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[11]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[12]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[2]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[3]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[4]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[5]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[6]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[7]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[8]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[9]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[10]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[11]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[12]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[2]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[3]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[4]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[5]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[6]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[7]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[8]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[9]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[9]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gray_src[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \gray_src[10]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gray_src[11]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gray_src[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \gray_src[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gray_src[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gray_src[4]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gray_src[5]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gray_src[6]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \gray_src[7]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \gray_src[8]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gray_src[9]_i_1\ : label is "soft_lutpair36";
begin
fifo_full0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => fifo_full0_carry,
      I1 => rd_ptr_bin_at_wr(9),
      I2 => rd_ptr_bin_at_wr(11),
      I3 => fifo_full0_carry_0,
      I4 => rd_ptr_bin_at_wr(10),
      I5 => fifo_full0_carry_1,
      O => S(3)
    );
fifo_full0_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => rd_ptr_bin_at_wr(11),
      I1 => gray_s2(5),
      I2 => gray_s2(6),
      I3 => gray_s2(3),
      I4 => gray_s2(4),
      I5 => fifo_full0_carry_i_16_n_0,
      O => rd_ptr_bin_at_wr(3)
    );
fifo_full0_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => gray_s2(7),
      I1 => gray_s2(8),
      I2 => gray_s2(5),
      I3 => gray_s2(6),
      I4 => rd_ptr_bin_at_wr(9),
      I5 => fifo_full0_carry_i_3_0,
      O => fifo_full0_carry_i_11_n_0
    );
fifo_full0_carry_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => gray_s2(12),
      I1 => fifo_full0_carry_i_18_n_0,
      I2 => gray_s2(10),
      I3 => gray_s2(11),
      I4 => gray_s2(8),
      I5 => gray_s2(9),
      O => rd_ptr_bin_at_wr(4)
    );
fifo_full0_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => rd_ptr_bin_at_wr(8),
      I1 => gray_s2(2),
      I2 => gray_s2(3),
      I3 => gray_s2(0),
      I4 => gray_s2(1),
      I5 => fifo_full0_carry_i_18_n_0,
      O => rd_ptr_bin_at_wr(0)
    );
fifo_full0_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => rd_ptr_bin_at_wr(10),
      I1 => gray_s2(4),
      I2 => gray_s2(5),
      I3 => gray_s2(2),
      I4 => gray_s2(3),
      I5 => fifo_full0_carry_i_8_n_0,
      O => rd_ptr_bin_at_wr(2)
    );
fifo_full0_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => rd_ptr_bin_at_wr(9),
      I1 => gray_s2(3),
      I2 => gray_s2(4),
      I3 => gray_s2(1),
      I4 => gray_s2(2),
      I5 => fifo_full0_carry_i_19_n_0,
      O => rd_ptr_bin_at_wr(1)
    );
fifo_full0_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(9),
      I1 => gray_s2(10),
      I2 => gray_s2(7),
      I3 => gray_s2(8),
      O => fifo_full0_carry_i_16_n_0
    );
fifo_full0_carry_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(12),
      I1 => gray_s2(9),
      I2 => gray_s2(8),
      I3 => gray_s2(11),
      I4 => gray_s2(10),
      O => rd_ptr_bin_at_wr(8)
    );
fifo_full0_carry_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(6),
      I1 => gray_s2(7),
      I2 => gray_s2(4),
      I3 => gray_s2(5),
      O => fifo_full0_carry_i_18_n_0
    );
fifo_full0_carry_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(7),
      I1 => gray_s2(8),
      I2 => gray_s2(5),
      I3 => gray_s2(6),
      O => fifo_full0_carry_i_19_n_0
    );
fifo_full0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966900000000"
    )
        port map (
      I0 => fifo_full0_carry_4,
      I1 => gray_s2(11),
      I2 => gray_s2(10),
      I3 => gray_s2(12),
      I4 => fifo_full0_carry_i_8_n_0,
      I5 => fifo_full0_carry_i_9_n_0,
      O => S(2)
    );
fifo_full0_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000090"
    )
        port map (
      I0 => fifo_full0_carry_2,
      I1 => rd_ptr_bin_at_wr(3),
      I2 => fifo_full0_carry_i_11_n_0,
      I3 => rd_ptr_bin_at_wr(4),
      I4 => fifo_full0_carry_3,
      O => S(1)
    );
fifo_full0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => fifo_full0_carry_5,
      I1 => rd_ptr_bin_at_wr(0),
      I2 => rd_ptr_bin_at_wr(2),
      I3 => fifo_full0_carry_6,
      I4 => rd_ptr_bin_at_wr(1),
      I5 => fifo_full0_carry_7,
      O => S(0)
    );
fifo_full0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(11),
      I1 => gray_s2(12),
      I2 => gray_s2(9),
      I3 => gray_s2(10),
      O => rd_ptr_bin_at_wr(9)
    );
fifo_full0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gray_s2(12),
      I1 => gray_s2(11),
      O => rd_ptr_bin_at_wr(11)
    );
fifo_full0_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => gray_s2(12),
      I1 => gray_s2(10),
      I2 => gray_s2(11),
      O => rd_ptr_bin_at_wr(10)
    );
fifo_full0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(8),
      I1 => gray_s2(9),
      I2 => gray_s2(6),
      I3 => gray_s2(7),
      O => fifo_full0_carry_i_8_n_0
    );
fifo_full0_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669000000009669"
    )
        port map (
      I0 => fifo_full0_carry_i_2_0,
      I1 => gray_s2(11),
      I2 => gray_s2(12),
      I3 => fifo_full0_carry_i_16_n_0,
      I4 => fifo_full0_carry_i_2_1,
      I5 => rd_ptr_bin_at_wr(8),
      O => fifo_full0_carry_i_9_n_0
    );
fifo_mem_reg_7_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => CO(0),
      I1 => gray_s2(12),
      I2 => p_1_in,
      O => WEA(0)
    );
\gray_s1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_src(0),
      Q => gray_s1(0),
      R => SR(0)
    );
\gray_s1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_src(10),
      Q => gray_s1(10),
      R => SR(0)
    );
\gray_s1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_src(11),
      Q => gray_s1(11),
      R => SR(0)
    );
\gray_s1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_src(12),
      Q => gray_s1(12),
      R => SR(0)
    );
\gray_s1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_src(1),
      Q => gray_s1(1),
      R => SR(0)
    );
\gray_s1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_src(2),
      Q => gray_s1(2),
      R => SR(0)
    );
\gray_s1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_src(3),
      Q => gray_s1(3),
      R => SR(0)
    );
\gray_s1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_src(4),
      Q => gray_s1(4),
      R => SR(0)
    );
\gray_s1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_src(5),
      Q => gray_s1(5),
      R => SR(0)
    );
\gray_s1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_src(6),
      Q => gray_s1(6),
      R => SR(0)
    );
\gray_s1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_src(7),
      Q => gray_s1(7),
      R => SR(0)
    );
\gray_s1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_src(8),
      Q => gray_s1(8),
      R => SR(0)
    );
\gray_s1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_src(9),
      Q => gray_s1(9),
      R => SR(0)
    );
\gray_s2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_s1(0),
      Q => gray_s2(0),
      R => SR(0)
    );
\gray_s2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_s1(10),
      Q => gray_s2(10),
      R => SR(0)
    );
\gray_s2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_s1(11),
      Q => gray_s2(11),
      R => SR(0)
    );
\gray_s2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_s1(12),
      Q => gray_s2(12),
      R => SR(0)
    );
\gray_s2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_s1(1),
      Q => gray_s2(1),
      R => SR(0)
    );
\gray_s2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_s1(2),
      Q => gray_s2(2),
      R => SR(0)
    );
\gray_s2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_s1(3),
      Q => gray_s2(3),
      R => SR(0)
    );
\gray_s2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_s1(4),
      Q => gray_s2(4),
      R => SR(0)
    );
\gray_s2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_s1(5),
      Q => gray_s2(5),
      R => SR(0)
    );
\gray_s2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_s1(6),
      Q => gray_s2(6),
      R => SR(0)
    );
\gray_s2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_s1(7),
      Q => gray_s2(7),
      R => SR(0)
    );
\gray_s2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_s1(8),
      Q => gray_s2(8),
      R => SR(0)
    );
\gray_s2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gray_s1(9),
      Q => gray_s2(9),
      R => SR(0)
    );
\gray_src[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[12]_0\(1),
      I1 => \gray_src_reg[12]_0\(0),
      O => \gray_src[0]_i_1_n_0\
    );
\gray_src[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[12]_0\(11),
      I1 => \gray_src_reg[12]_0\(10),
      O => \gray_src[10]_i_1_n_0\
    );
\gray_src[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[12]_0\(12),
      I1 => \gray_src_reg[12]_0\(11),
      O => \gray_src[11]_i_1_n_0\
    );
\gray_src[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[12]_0\(2),
      I1 => \gray_src_reg[12]_0\(1),
      O => \gray_src[1]_i_1_n_0\
    );
\gray_src[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[12]_0\(3),
      I1 => \gray_src_reg[12]_0\(2),
      O => \gray_src[2]_i_1_n_0\
    );
\gray_src[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[12]_0\(4),
      I1 => \gray_src_reg[12]_0\(3),
      O => \gray_src[3]_i_1_n_0\
    );
\gray_src[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[12]_0\(5),
      I1 => \gray_src_reg[12]_0\(4),
      O => \gray_src[4]_i_1_n_0\
    );
\gray_src[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[12]_0\(6),
      I1 => \gray_src_reg[12]_0\(5),
      O => \gray_src[5]_i_1_n_0\
    );
\gray_src[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[12]_0\(7),
      I1 => \gray_src_reg[12]_0\(6),
      O => \gray_src[6]_i_1_n_0\
    );
\gray_src[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[12]_0\(8),
      I1 => \gray_src_reg[12]_0\(7),
      O => \gray_src[7]_i_1_n_0\
    );
\gray_src[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[12]_0\(9),
      I1 => \gray_src_reg[12]_0\(8),
      O => \gray_src[8]_i_1_n_0\
    );
\gray_src[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[12]_0\(10),
      I1 => \gray_src_reg[12]_0\(9),
      O => \gray_src[9]_i_1_n_0\
    );
\gray_src_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gray_src[0]_i_1_n_0\,
      Q => gray_src(0),
      R => \gray_src_reg[0]_0\(0)
    );
\gray_src_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gray_src[10]_i_1_n_0\,
      Q => gray_src(10),
      R => \gray_src_reg[0]_0\(0)
    );
\gray_src_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gray_src[11]_i_1_n_0\,
      Q => gray_src(11),
      R => \gray_src_reg[0]_0\(0)
    );
\gray_src_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gray_src_reg[12]_0\(12),
      Q => gray_src(12),
      R => \gray_src_reg[0]_0\(0)
    );
\gray_src_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gray_src[1]_i_1_n_0\,
      Q => gray_src(1),
      R => \gray_src_reg[0]_0\(0)
    );
\gray_src_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gray_src[2]_i_1_n_0\,
      Q => gray_src(2),
      R => \gray_src_reg[0]_0\(0)
    );
\gray_src_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gray_src[3]_i_1_n_0\,
      Q => gray_src(3),
      R => \gray_src_reg[0]_0\(0)
    );
\gray_src_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gray_src[4]_i_1_n_0\,
      Q => gray_src(4),
      R => \gray_src_reg[0]_0\(0)
    );
\gray_src_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gray_src[5]_i_1_n_0\,
      Q => gray_src(5),
      R => \gray_src_reg[0]_0\(0)
    );
\gray_src_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gray_src[6]_i_1_n_0\,
      Q => gray_src(6),
      R => \gray_src_reg[0]_0\(0)
    );
\gray_src_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gray_src[7]_i_1_n_0\,
      Q => gray_src(7),
      R => \gray_src_reg[0]_0\(0)
    );
\gray_src_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gray_src[8]_i_1_n_0\,
      Q => gray_src(8),
      R => \gray_src_reg[0]_0\(0)
    );
\gray_src_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gray_src[9]_i_1_n_0\,
      Q => gray_src(9),
      R => \gray_src_reg[0]_0\(0)
    );
ovf_mark_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"60FFFFFF60000000"
    )
        port map (
      I0 => p_1_in,
      I1 => gray_s2(12),
      I2 => CO(0),
      I3 => E(0),
      I4 => \do_capture0__25\,
      I5 => ts_word(0),
      O => \wr_ptr_bin_reg[12]\
    );
ovf_sticky_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800080000000"
    )
        port map (
      I0 => \do_capture0__25\,
      I1 => edge_d2,
      I2 => \out\(0),
      I3 => CO(0),
      I4 => gray_s2(12),
      I5 => p_1_in,
      O => wr_drop
    );
\seq_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080008000808080"
    )
        port map (
      I0 => \do_capture0__25\,
      I1 => edge_d2,
      I2 => \out\(0),
      I3 => CO(0),
      I4 => gray_s2(12),
      I5 => p_1_in,
      O => edge_d2_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_cnt_cdc_8 is
  port (
    \gray_s2_reg[12]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rd_ptr_bin_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gray_s2_reg[9]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gray_s2_reg[12]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gray_s2_reg[12]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gray_s2_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \gray_src_reg[0]_0\ : in STD_LOGIC;
    \gray_src_reg[0]_1\ : in STD_LOGIC;
    \gray_src_reg[1]_0\ : in STD_LOGIC;
    \gray_src_reg[2]_0\ : in STD_LOGIC;
    \gray_src_reg[3]_0\ : in STD_LOGIC;
    \gray_src_reg[4]_0\ : in STD_LOGIC;
    \gray_src_reg[5]_0\ : in STD_LOGIC;
    \gray_src_reg[6]_0\ : in STD_LOGIC;
    \gray_src_reg[7]_0\ : in STD_LOGIC;
    \gray_src_reg[8]_0\ : in STD_LOGIC;
    \gray_src_reg[9]_0\ : in STD_LOGIC;
    \gray_src_reg[10]_0\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \gray_s1_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_cnt_cdc_8 : entity is "cnt_cdc";
end ps_Counter_Core_0_1_cnt_cdc_8;

architecture STRUCTURE of ps_Counter_Core_0_1_cnt_cdc_8 is
  signal fifo_level_carry_i_10_n_0 : STD_LOGIC;
  signal fifo_level_carry_i_12_n_0 : STD_LOGIC;
  signal fifo_level_carry_i_14_n_0 : STD_LOGIC;
  signal fifo_level_carry_i_15_n_0 : STD_LOGIC;
  signal gray_s1 : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute async_reg : string;
  attribute async_reg of gray_s1 : signal is "true";
  signal gray_s2 : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute async_reg of gray_s2 : signal is "true";
  signal \^gray_s2_reg[12]_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal gray_src : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \gray_src[0]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[10]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[11]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[1]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[2]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[3]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[4]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[5]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[6]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[7]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[8]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[9]_i_1_n_0\ : STD_LOGIC;
  signal int_empty_carry_i_5_n_0 : STD_LOGIC;
  signal int_empty_carry_i_6_n_0 : STD_LOGIC;
  signal int_empty_carry_i_7_n_0 : STD_LOGIC;
  signal wr_ptr_bin_at_rd : STD_LOGIC_VECTOR ( 11 downto 9 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \gray_s1_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \gray_s1_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[10]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[11]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[12]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[2]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[3]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[4]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[5]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[6]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[7]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[8]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[9]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[10]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[11]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[12]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[2]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[3]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[4]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[5]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[6]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[7]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[8]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[9]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[9]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gray_src[0]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \gray_src[10]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \gray_src[11]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \gray_src[1]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \gray_src[2]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \gray_src[3]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \gray_src[4]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \gray_src[5]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \gray_src[6]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \gray_src[7]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \gray_src[8]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \gray_src[9]_i_1\ : label is "soft_lutpair66";
begin
  \gray_s2_reg[12]_0\(8 downto 0) <= \^gray_s2_reg[12]_0\(8 downto 0);
\fifo_level_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => gray_s2(11),
      I1 => gray_s2(12),
      I2 => gray_s2(8),
      I3 => gray_s2(7),
      I4 => gray_s2(10),
      I5 => gray_s2(9),
      O => \^gray_s2_reg[12]_0\(7)
    );
\fifo_level_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => wr_ptr_bin_at_rd(10),
      I1 => gray_s2(7),
      I2 => gray_s2(6),
      I3 => gray_s2(9),
      I4 => gray_s2(8),
      O => \^gray_s2_reg[12]_0\(6)
    );
\fifo_level_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => wr_ptr_bin_at_rd(9),
      I1 => gray_s2(6),
      I2 => gray_s2(5),
      I3 => gray_s2(8),
      I4 => gray_s2(7),
      O => \^gray_s2_reg[12]_0\(5)
    );
\fifo_level_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => gray_s2(12),
      I1 => fifo_level_carry_i_15_n_0,
      I2 => gray_s2(10),
      I3 => gray_s2(11),
      I4 => gray_s2(8),
      I5 => gray_s2(9),
      O => \^gray_s2_reg[12]_0\(4)
    );
\fifo_level_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => gray_s2(9),
      I1 => gray_s2(10),
      I2 => gray_s2(7),
      I3 => gray_s2(8),
      I4 => wr_ptr_bin_at_rd(11),
      I5 => \out\(7),
      O => \gray_s2_reg[9]_0\(3)
    );
\fifo_level_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => gray_s2(8),
      I1 => gray_s2(9),
      I2 => gray_s2(6),
      I3 => gray_s2(7),
      I4 => wr_ptr_bin_at_rd(10),
      I5 => \out\(6),
      O => \gray_s2_reg[9]_0\(2)
    );
\fifo_level_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => gray_s2(7),
      I1 => gray_s2(8),
      I2 => gray_s2(5),
      I3 => gray_s2(6),
      I4 => wr_ptr_bin_at_rd(9),
      I5 => \out\(5),
      O => \gray_s2_reg[9]_0\(1)
    );
\fifo_level_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray_s2_reg[12]_0\(4),
      I1 => \out\(4),
      O => \gray_s2_reg[9]_0\(0)
    );
\fifo_level_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gray_s2(12),
      I1 => gray_s2(11),
      O => DI(2)
    );
\fifo_level_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => gray_s2(12),
      I1 => gray_s2(10),
      I2 => gray_s2(11),
      O => DI(1)
    );
\fifo_level_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(11),
      I1 => gray_s2(12),
      I2 => gray_s2(9),
      I3 => gray_s2(10),
      O => DI(0)
    );
\fifo_level_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(12),
      I1 => gray_s2(9),
      I2 => gray_s2(8),
      I3 => gray_s2(11),
      I4 => gray_s2(10),
      O => \^gray_s2_reg[12]_0\(8)
    );
\fifo_level_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => gray_s2(11),
      I1 => gray_s2(12),
      I2 => \out\(11),
      O => S(3)
    );
\fifo_level_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => gray_s2(11),
      I1 => gray_s2(10),
      I2 => gray_s2(12),
      I3 => \out\(10),
      O => S(2)
    );
\fifo_level_carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => gray_s2(10),
      I1 => gray_s2(9),
      I2 => gray_s2(12),
      I3 => gray_s2(11),
      I4 => \out\(9),
      O => S(1)
    );
\fifo_level_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => gray_s2(10),
      I1 => gray_s2(11),
      I2 => gray_s2(8),
      I3 => gray_s2(9),
      I4 => gray_s2(12),
      I5 => \out\(8),
      O => S(0)
    );
\fifo_level_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gray_s2(12),
      I1 => \out\(12),
      O => \gray_s2_reg[12]_1\(0)
    );
fifo_level_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => wr_ptr_bin_at_rd(11),
      I1 => gray_s2(5),
      I2 => gray_s2(6),
      I3 => gray_s2(3),
      I4 => gray_s2(4),
      I5 => fifo_level_carry_i_10_n_0,
      O => \^gray_s2_reg[12]_0\(3)
    );
fifo_level_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(9),
      I1 => gray_s2(10),
      I2 => gray_s2(7),
      I3 => gray_s2(8),
      O => fifo_level_carry_i_10_n_0
    );
fifo_level_carry_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => gray_s2(12),
      I1 => gray_s2(10),
      I2 => gray_s2(11),
      O => wr_ptr_bin_at_rd(10)
    );
fifo_level_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(8),
      I1 => gray_s2(9),
      I2 => gray_s2(6),
      I3 => gray_s2(7),
      O => fifo_level_carry_i_12_n_0
    );
fifo_level_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(11),
      I1 => gray_s2(12),
      I2 => gray_s2(9),
      I3 => gray_s2(10),
      O => wr_ptr_bin_at_rd(9)
    );
fifo_level_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(7),
      I1 => gray_s2(8),
      I2 => gray_s2(5),
      I3 => gray_s2(6),
      O => fifo_level_carry_i_14_n_0
    );
fifo_level_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(6),
      I1 => gray_s2(7),
      I2 => gray_s2(4),
      I3 => gray_s2(5),
      O => fifo_level_carry_i_15_n_0
    );
fifo_level_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => wr_ptr_bin_at_rd(10),
      I1 => gray_s2(4),
      I2 => gray_s2(5),
      I3 => gray_s2(2),
      I4 => gray_s2(3),
      I5 => fifo_level_carry_i_12_n_0,
      O => \^gray_s2_reg[12]_0\(2)
    );
fifo_level_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => wr_ptr_bin_at_rd(9),
      I1 => gray_s2(3),
      I2 => gray_s2(4),
      I3 => gray_s2(1),
      I4 => gray_s2(2),
      I5 => fifo_level_carry_i_14_n_0,
      O => \^gray_s2_reg[12]_0\(1)
    );
fifo_level_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^gray_s2_reg[12]_0\(8),
      I1 => gray_s2(2),
      I2 => gray_s2(3),
      I3 => gray_s2(0),
      I4 => gray_s2(1),
      I5 => fifo_level_carry_i_15_n_0,
      O => \^gray_s2_reg[12]_0\(0)
    );
fifo_level_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray_s2_reg[12]_0\(3),
      I1 => \out\(3),
      O => \rd_ptr_bin_reg[3]\(3)
    );
fifo_level_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray_s2_reg[12]_0\(2),
      I1 => \out\(2),
      O => \rd_ptr_bin_reg[3]\(2)
    );
fifo_level_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray_s2_reg[12]_0\(1),
      I1 => \out\(1),
      O => \rd_ptr_bin_reg[3]\(1)
    );
fifo_level_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^gray_s2_reg[12]_0\(0),
      I1 => \out\(0),
      O => \rd_ptr_bin_reg[3]\(0)
    );
fifo_level_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gray_s2(12),
      I1 => gray_s2(11),
      O => wr_ptr_bin_at_rd(11)
    );
\gray_s1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(0),
      Q => gray_s1(0),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(10),
      Q => gray_s1(10),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(11),
      Q => gray_s1(11),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(12),
      Q => gray_s1(12),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(1),
      Q => gray_s1(1),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(2),
      Q => gray_s1(2),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(3),
      Q => gray_s1(3),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(4),
      Q => gray_s1(4),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(5),
      Q => gray_s1(5),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(6),
      Q => gray_s1(6),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(7),
      Q => gray_s1(7),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(8),
      Q => gray_s1(8),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(9),
      Q => gray_s1(9),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(0),
      Q => gray_s2(0),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(10),
      Q => gray_s2(10),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(11),
      Q => gray_s2(11),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(12),
      Q => gray_s2(12),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(1),
      Q => gray_s2(1),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(2),
      Q => gray_s2(2),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(3),
      Q => gray_s2(3),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(4),
      Q => gray_s2(4),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(5),
      Q => gray_s2(5),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(6),
      Q => gray_s2(6),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(7),
      Q => gray_s2(7),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(8),
      Q => gray_s2(8),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(9),
      Q => gray_s2(9),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_src[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[0]_0\,
      I1 => \gray_src_reg[0]_1\,
      O => \gray_src[0]_i_1_n_0\
    );
\gray_src[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[10]_0\,
      I1 => \gray_src_reg[9]_0\,
      O => \gray_src[10]_i_1_n_0\
    );
\gray_src[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in,
      I1 => \gray_src_reg[10]_0\,
      O => \gray_src[11]_i_1_n_0\
    );
\gray_src[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[1]_0\,
      I1 => \gray_src_reg[0]_0\,
      O => \gray_src[1]_i_1_n_0\
    );
\gray_src[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[2]_0\,
      I1 => \gray_src_reg[1]_0\,
      O => \gray_src[2]_i_1_n_0\
    );
\gray_src[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[3]_0\,
      I1 => \gray_src_reg[2]_0\,
      O => \gray_src[3]_i_1_n_0\
    );
\gray_src[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[4]_0\,
      I1 => \gray_src_reg[3]_0\,
      O => \gray_src[4]_i_1_n_0\
    );
\gray_src[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[5]_0\,
      I1 => \gray_src_reg[4]_0\,
      O => \gray_src[5]_i_1_n_0\
    );
\gray_src[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[6]_0\,
      I1 => \gray_src_reg[5]_0\,
      O => \gray_src[6]_i_1_n_0\
    );
\gray_src[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[7]_0\,
      I1 => \gray_src_reg[6]_0\,
      O => \gray_src[7]_i_1_n_0\
    );
\gray_src[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[8]_0\,
      I1 => \gray_src_reg[7]_0\,
      O => \gray_src[8]_i_1_n_0\
    );
\gray_src[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gray_src_reg[9]_0\,
      I1 => \gray_src_reg[8]_0\,
      O => \gray_src[9]_i_1_n_0\
    );
\gray_src_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[0]_i_1_n_0\,
      Q => gray_src(0),
      R => SR(0)
    );
\gray_src_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[10]_i_1_n_0\,
      Q => gray_src(10),
      R => SR(0)
    );
\gray_src_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[11]_i_1_n_0\,
      Q => gray_src(11),
      R => SR(0)
    );
\gray_src_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_1_in,
      Q => gray_src(12),
      R => SR(0)
    );
\gray_src_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[1]_i_1_n_0\,
      Q => gray_src(1),
      R => SR(0)
    );
\gray_src_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[2]_i_1_n_0\,
      Q => gray_src(2),
      R => SR(0)
    );
\gray_src_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[3]_i_1_n_0\,
      Q => gray_src(3),
      R => SR(0)
    );
\gray_src_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[4]_i_1_n_0\,
      Q => gray_src(4),
      R => SR(0)
    );
\gray_src_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[5]_i_1_n_0\,
      Q => gray_src(5),
      R => SR(0)
    );
\gray_src_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[6]_i_1_n_0\,
      Q => gray_src(6),
      R => SR(0)
    );
\gray_src_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[7]_i_1_n_0\,
      Q => gray_src(7),
      R => SR(0)
    );
\gray_src_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[8]_i_1_n_0\,
      Q => gray_src(8),
      R => SR(0)
    );
\gray_src_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[9]_i_1_n_0\,
      Q => gray_src(9),
      R => SR(0)
    );
\int_empty_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gray_s2(12),
      I1 => \out\(12),
      O => \gray_s2_reg[12]_2\(0)
    );
int_empty_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0082280028000082"
    )
        port map (
      I0 => int_empty_carry_i_5_n_0,
      I1 => gray_s2(11),
      I2 => gray_s2(12),
      I3 => \out\(11),
      I4 => gray_s2(10),
      I5 => \out\(10),
      O => \gray_s2_reg[11]_0\(3)
    );
int_empty_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => int_empty_carry_i_6_n_0,
      I1 => \^gray_s2_reg[12]_0\(8),
      I2 => \out\(8),
      I3 => \^gray_s2_reg[12]_0\(7),
      I4 => \out\(7),
      O => \gray_s2_reg[11]_0\(2)
    );
int_empty_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000090"
    )
        port map (
      I0 => \out\(3),
      I1 => \^gray_s2_reg[12]_0\(3),
      I2 => int_empty_carry_i_7_n_0,
      I3 => \^gray_s2_reg[12]_0\(4),
      I4 => \out\(4),
      O => \gray_s2_reg[11]_0\(1)
    );
int_empty_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \out\(0),
      I1 => \^gray_s2_reg[12]_0\(0),
      I2 => \^gray_s2_reg[12]_0\(2),
      I3 => \out\(2),
      I4 => \^gray_s2_reg[12]_0\(1),
      I5 => \out\(1),
      O => \gray_s2_reg[11]_0\(0)
    );
int_empty_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => gray_s2(10),
      I1 => gray_s2(9),
      I2 => gray_s2(12),
      I3 => gray_s2(11),
      I4 => \out\(9),
      O => int_empty_carry_i_5_n_0
    );
int_empty_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => gray_s2(8),
      I1 => gray_s2(9),
      I2 => gray_s2(6),
      I3 => gray_s2(7),
      I4 => wr_ptr_bin_at_rd(10),
      I5 => \out\(6),
      O => int_empty_carry_i_6_n_0
    );
int_empty_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => gray_s2(7),
      I1 => gray_s2(8),
      I2 => gray_s2(5),
      I3 => gray_s2(6),
      I4 => wr_ptr_bin_at_rd(9),
      I5 => \out\(5),
      O => int_empty_carry_i_7_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_Counter_Core_0_1_cnt_cdc__parameterized0\ is
  port (
    dst_cnt : out STD_LOGIC_VECTOR ( 31 downto 0 );
    src_cnt : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \gray_s1_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_Counter_Core_0_1_cnt_cdc__parameterized0\ : entity is "cnt_cdc";
end \ps_Counter_Core_0_1_cnt_cdc__parameterized0\;

architecture STRUCTURE of \ps_Counter_Core_0_1_cnt_cdc__parameterized0\ is
  signal \axi_rdata[10]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_15_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_8_n_0\ : STD_LOGIC;
  signal \^dst_cnt\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal gray_s1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute async_reg : string;
  attribute async_reg of gray_s1 : signal is "true";
  signal gray_s2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute async_reg of gray_s2 : signal is "true";
  signal gray_src : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \gray_src[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \gray_src[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[17]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[18]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[19]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[21]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[22]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[25]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[26]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[27]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[28]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[29]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[30]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[9]_i_1__0_n_0\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \gray_s1_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \gray_s1_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[10]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[11]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[12]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[13]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[14]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[15]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[16]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[17]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[18]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[18]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[19]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[19]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[20]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[20]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[21]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[21]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[22]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[22]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[23]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[23]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[24]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[24]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[25]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[25]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[26]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[26]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[27]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[27]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[28]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[28]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[29]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[29]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[2]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[30]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[30]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[31]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[31]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[3]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[4]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[5]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[6]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[7]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[8]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[9]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[10]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[11]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[12]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[13]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[14]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[15]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[16]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[17]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[18]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[18]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[19]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[19]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[20]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[20]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[21]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[21]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[22]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[22]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[23]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[23]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[24]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[24]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[25]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[25]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[26]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[26]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[27]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[27]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[28]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[28]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[29]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[29]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[2]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[30]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[30]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[31]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[31]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[3]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[4]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[5]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[6]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[7]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[8]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[9]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[9]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gray_src[10]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gray_src[11]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gray_src[12]_i_1__1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gray_src[13]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gray_src[14]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gray_src[15]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gray_src[16]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gray_src[17]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gray_src[18]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gray_src[19]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \gray_src[1]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \gray_src[20]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \gray_src[21]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gray_src[22]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gray_src[23]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gray_src[24]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gray_src[25]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \gray_src[26]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \gray_src[27]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \gray_src[28]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \gray_src[29]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \gray_src[2]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \gray_src[30]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \gray_src[3]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gray_src[4]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gray_src[5]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gray_src[6]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gray_src[7]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gray_src[8]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gray_src[9]_i_1__0\ : label is "soft_lutpair18";
begin
  dst_cnt(31) <= gray_s2(31);
  dst_cnt(30 downto 0) <= \^dst_cnt\(30 downto 0);
\axi_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dst_cnt\(16),
      I1 => \axi_rdata[4]_i_8_n_0\,
      I2 => gray_s2(1),
      I3 => gray_s2(0),
      I4 => \axi_rdata[2]_i_7_n_0\,
      I5 => \axi_rdata[8]_i_7_n_0\,
      O => \^dst_cnt\(0)
    );
\axi_rdata[10]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^dst_cnt\(26),
      I1 => \axi_rdata[10]_i_7_n_0\,
      I2 => \axi_rdata[10]_i_8_n_0\,
      O => \^dst_cnt\(10)
    );
\axi_rdata[10]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(15),
      I1 => gray_s2(14),
      I2 => gray_s2(17),
      I3 => gray_s2(16),
      I4 => \axi_rdata[6]_i_8_n_0\,
      O => \axi_rdata[10]_i_7_n_0\
    );
\axi_rdata[10]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(23),
      I1 => gray_s2(22),
      I2 => gray_s2(25),
      I3 => gray_s2(24),
      I4 => \axi_rdata[18]_i_8_n_0\,
      O => \axi_rdata[10]_i_8_n_0\
    );
\axi_rdata[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^dst_cnt\(27),
      I1 => \axi_rdata[11]_i_7_n_0\,
      I2 => \axi_rdata[11]_i_8_n_0\,
      O => \^dst_cnt\(11)
    );
\axi_rdata[11]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(16),
      I1 => gray_s2(15),
      I2 => gray_s2(18),
      I3 => gray_s2(17),
      I4 => \axi_rdata[7]_i_7_n_0\,
      O => \axi_rdata[11]_i_7_n_0\
    );
\axi_rdata[11]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(24),
      I1 => gray_s2(23),
      I2 => gray_s2(26),
      I3 => gray_s2(25),
      I4 => \axi_rdata[19]_i_8_n_0\,
      O => \axi_rdata[11]_i_8_n_0\
    );
\axi_rdata[12]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(14),
      I1 => gray_s2(15),
      I2 => gray_s2(12),
      I3 => gray_s2(13),
      O => \axi_rdata[12]_i_11_n_0\
    );
\axi_rdata[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => gray_s2(29),
      I1 => gray_s2(28),
      I2 => gray_s2(31),
      I3 => gray_s2(30),
      I4 => \axi_rdata[12]_i_7_n_0\,
      I5 => \axi_rdata[12]_i_8_n_0\,
      O => \^dst_cnt\(12)
    );
\axi_rdata[12]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(17),
      I1 => gray_s2(16),
      I2 => gray_s2(19),
      I3 => gray_s2(18),
      I4 => \axi_rdata[12]_i_11_n_0\,
      O => \axi_rdata[12]_i_7_n_0\
    );
\axi_rdata[12]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(25),
      I1 => gray_s2(24),
      I2 => gray_s2(27),
      I3 => gray_s2(26),
      I4 => \axi_rdata[20]_i_8_n_0\,
      O => \axi_rdata[12]_i_8_n_0\
    );
\axi_rdata[13]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(15),
      I1 => gray_s2(16),
      I2 => gray_s2(13),
      I3 => gray_s2(14),
      O => \axi_rdata[13]_i_11_n_0\
    );
\axi_rdata[13]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(30),
      I1 => gray_s2(29),
      I2 => gray_s2(31),
      I3 => \axi_rdata[13]_i_7_n_0\,
      I4 => \axi_rdata[13]_i_8_n_0\,
      O => \^dst_cnt\(13)
    );
\axi_rdata[13]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(18),
      I1 => gray_s2(17),
      I2 => gray_s2(20),
      I3 => gray_s2(19),
      I4 => \axi_rdata[13]_i_11_n_0\,
      O => \axi_rdata[13]_i_7_n_0\
    );
\axi_rdata[13]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(26),
      I1 => gray_s2(25),
      I2 => gray_s2(28),
      I3 => gray_s2(27),
      I4 => \axi_rdata[21]_i_8_n_0\,
      O => \axi_rdata[13]_i_8_n_0\
    );
\axi_rdata[14]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(30),
      I1 => gray_s2(31),
      I2 => \axi_rdata[6]_i_10_n_0\,
      I3 => \axi_rdata[6]_i_7_n_0\,
      O => \^dst_cnt\(14)
    );
\axi_rdata[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => gray_s2(31),
      I1 => \axi_rdata[7]_i_9_n_0\,
      I2 => \axi_rdata[15]_i_8_n_0\,
      O => \^dst_cnt\(15)
    );
\axi_rdata[15]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(28),
      I1 => gray_s2(27),
      I2 => gray_s2(30),
      I3 => gray_s2(29),
      I4 => \axi_rdata[23]_i_8_n_0\,
      O => \axi_rdata[15]_i_8_n_0\
    );
\axi_rdata[16]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(18),
      I1 => gray_s2(19),
      I2 => gray_s2(16),
      I3 => gray_s2(17),
      O => \axi_rdata[16]_i_10_n_0\
    );
\axi_rdata[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \axi_rdata[16]_i_9_n_0\,
      I1 => \^dst_cnt\(30),
      I2 => gray_s2(28),
      I3 => gray_s2(29),
      I4 => \axi_rdata[16]_i_10_n_0\,
      I5 => \axi_rdata[20]_i_8_n_0\,
      O => \^dst_cnt\(16)
    );
\axi_rdata[16]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(26),
      I1 => gray_s2(27),
      I2 => gray_s2(24),
      I3 => gray_s2(25),
      O => \axi_rdata[16]_i_9_n_0\
    );
\axi_rdata[17]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(19),
      I1 => gray_s2(20),
      I2 => gray_s2(17),
      I3 => gray_s2(18),
      O => \axi_rdata[17]_i_10_n_0\
    );
\axi_rdata[17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \axi_rdata[17]_i_9_n_0\,
      I1 => gray_s2(31),
      I2 => gray_s2(29),
      I3 => gray_s2(30),
      I4 => \axi_rdata[17]_i_10_n_0\,
      I5 => \axi_rdata[21]_i_8_n_0\,
      O => \^dst_cnt\(17)
    );
\axi_rdata[17]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(27),
      I1 => gray_s2(28),
      I2 => gray_s2(25),
      I3 => gray_s2(26),
      O => \axi_rdata[17]_i_9_n_0\
    );
\axi_rdata[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dst_cnt\(26),
      I1 => \axi_rdata[18]_i_8_n_0\,
      I2 => gray_s2(24),
      I3 => gray_s2(25),
      I4 => gray_s2(22),
      I5 => gray_s2(23),
      O => \^dst_cnt\(18)
    );
\axi_rdata[18]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(20),
      I1 => gray_s2(21),
      I2 => gray_s2(18),
      I3 => gray_s2(19),
      O => \axi_rdata[18]_i_8_n_0\
    );
\axi_rdata[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dst_cnt\(27),
      I1 => \axi_rdata[19]_i_8_n_0\,
      I2 => gray_s2(25),
      I3 => gray_s2(26),
      I4 => gray_s2(23),
      I5 => gray_s2(24),
      O => \^dst_cnt\(19)
    );
\axi_rdata[19]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(21),
      I1 => gray_s2(22),
      I2 => gray_s2(19),
      I3 => gray_s2(20),
      O => \axi_rdata[19]_i_8_n_0\
    );
\axi_rdata[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dst_cnt\(17),
      I1 => \axi_rdata[5]_i_8_n_0\,
      I2 => gray_s2(2),
      I3 => gray_s2(1),
      I4 => \axi_rdata[3]_i_7_n_0\,
      I5 => \axi_rdata[9]_i_7_n_0\,
      O => \^dst_cnt\(1)
    );
\axi_rdata[20]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dst_cnt\(28),
      I1 => \axi_rdata[20]_i_8_n_0\,
      I2 => gray_s2(26),
      I3 => gray_s2(27),
      I4 => gray_s2(24),
      I5 => gray_s2(25),
      O => \^dst_cnt\(20)
    );
\axi_rdata[20]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(22),
      I1 => gray_s2(23),
      I2 => gray_s2(20),
      I3 => gray_s2(21),
      O => \axi_rdata[20]_i_8_n_0\
    );
\axi_rdata[21]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dst_cnt\(29),
      I1 => \axi_rdata[21]_i_8_n_0\,
      I2 => gray_s2(27),
      I3 => gray_s2(28),
      I4 => gray_s2(25),
      I5 => gray_s2(26),
      O => \^dst_cnt\(21)
    );
\axi_rdata[21]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(23),
      I1 => gray_s2(24),
      I2 => gray_s2(21),
      I3 => gray_s2(22),
      O => \axi_rdata[21]_i_8_n_0\
    );
\axi_rdata[22]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dst_cnt\(30),
      I1 => \axi_rdata[22]_i_8_n_0\,
      I2 => gray_s2(28),
      I3 => gray_s2(29),
      I4 => gray_s2(26),
      I5 => gray_s2(27),
      O => \^dst_cnt\(22)
    );
\axi_rdata[22]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(24),
      I1 => gray_s2(25),
      I2 => gray_s2(22),
      I3 => gray_s2(23),
      O => \axi_rdata[22]_i_8_n_0\
    );
\axi_rdata[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => gray_s2(31),
      I1 => \axi_rdata[23]_i_8_n_0\,
      I2 => gray_s2(29),
      I3 => gray_s2(30),
      I4 => gray_s2(27),
      I5 => gray_s2(28),
      O => \^dst_cnt\(23)
    );
\axi_rdata[23]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(25),
      I1 => gray_s2(26),
      I2 => gray_s2(23),
      I3 => gray_s2(24),
      O => \axi_rdata[23]_i_8_n_0\
    );
\axi_rdata[24]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \^dst_cnt\(28),
      I1 => gray_s2(25),
      I2 => gray_s2(24),
      I3 => gray_s2(27),
      I4 => gray_s2(26),
      O => \^dst_cnt\(24)
    );
\axi_rdata[25]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \^dst_cnt\(29),
      I1 => gray_s2(26),
      I2 => gray_s2(25),
      I3 => gray_s2(28),
      I4 => gray_s2(27),
      O => \^dst_cnt\(25)
    );
\axi_rdata[26]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => gray_s2(30),
      I1 => gray_s2(31),
      I2 => gray_s2(27),
      I3 => gray_s2(26),
      I4 => gray_s2(29),
      I5 => gray_s2(28),
      O => \^dst_cnt\(26)
    );
\axi_rdata[27]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(31),
      I1 => gray_s2(28),
      I2 => gray_s2(27),
      I3 => gray_s2(30),
      I4 => gray_s2(29),
      O => \^dst_cnt\(27)
    );
\axi_rdata[28]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(30),
      I1 => gray_s2(31),
      I2 => gray_s2(28),
      I3 => gray_s2(29),
      O => \^dst_cnt\(28)
    );
\axi_rdata[29]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => gray_s2(31),
      I1 => gray_s2(29),
      I2 => gray_s2(30),
      O => \^dst_cnt\(29)
    );
\axi_rdata[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dst_cnt\(18),
      I1 => \axi_rdata[6]_i_9_n_0\,
      I2 => \axi_rdata[2]_i_7_n_0\,
      I3 => gray_s2(5),
      I4 => gray_s2(4),
      I5 => \axi_rdata[10]_i_7_n_0\,
      O => \^dst_cnt\(2)
    );
\axi_rdata[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gray_s2(3),
      I1 => gray_s2(2),
      O => \axi_rdata[2]_i_7_n_0\
    );
\axi_rdata[30]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gray_s2(31),
      I1 => gray_s2(30),
      O => \^dst_cnt\(30)
    );
\axi_rdata[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dst_cnt\(19),
      I1 => \axi_rdata[7]_i_8_n_0\,
      I2 => \axi_rdata[3]_i_7_n_0\,
      I3 => gray_s2(6),
      I4 => gray_s2(5),
      I5 => \axi_rdata[11]_i_7_n_0\,
      O => \^dst_cnt\(3)
    );
\axi_rdata[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gray_s2(4),
      I1 => gray_s2(3),
      O => \axi_rdata[3]_i_7_n_0\
    );
\axi_rdata[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^dst_cnt\(20),
      I1 => \axi_rdata[4]_i_7_n_0\,
      I2 => \axi_rdata[4]_i_8_n_0\,
      I3 => \axi_rdata[12]_i_7_n_0\,
      O => \^dst_cnt\(4)
    );
\axi_rdata[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(10),
      I1 => gray_s2(11),
      I2 => gray_s2(8),
      I3 => gray_s2(9),
      O => \axi_rdata[4]_i_7_n_0\
    );
\axi_rdata[4]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(6),
      I1 => gray_s2(7),
      I2 => gray_s2(4),
      I3 => gray_s2(5),
      O => \axi_rdata[4]_i_8_n_0\
    );
\axi_rdata[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^dst_cnt\(21),
      I1 => \axi_rdata[5]_i_7_n_0\,
      I2 => \axi_rdata[5]_i_8_n_0\,
      I3 => \axi_rdata[13]_i_7_n_0\,
      O => \^dst_cnt\(5)
    );
\axi_rdata[5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(11),
      I1 => gray_s2(12),
      I2 => gray_s2(9),
      I3 => gray_s2(10),
      O => \axi_rdata[5]_i_7_n_0\
    );
\axi_rdata[5]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(7),
      I1 => gray_s2(8),
      I2 => gray_s2(5),
      I3 => gray_s2(6),
      O => \axi_rdata[5]_i_8_n_0\
    );
\axi_rdata[6]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(19),
      I1 => gray_s2(18),
      I2 => gray_s2(21),
      I3 => gray_s2(20),
      I4 => \axi_rdata[6]_i_15_n_0\,
      O => \axi_rdata[6]_i_10_n_0\
    );
\axi_rdata[6]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(16),
      I1 => gray_s2(17),
      I2 => gray_s2(14),
      I3 => gray_s2(15),
      O => \axi_rdata[6]_i_15_n_0\
    );
\axi_rdata[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \axi_rdata[6]_i_7_n_0\,
      I1 => gray_s2(31),
      I2 => gray_s2(30),
      I3 => \axi_rdata[6]_i_8_n_0\,
      I4 => \axi_rdata[6]_i_9_n_0\,
      I5 => \axi_rdata[6]_i_10_n_0\,
      O => \^dst_cnt\(6)
    );
\axi_rdata[6]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(27),
      I1 => gray_s2(26),
      I2 => gray_s2(29),
      I3 => gray_s2(28),
      I4 => \axi_rdata[22]_i_8_n_0\,
      O => \axi_rdata[6]_i_7_n_0\
    );
\axi_rdata[6]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(12),
      I1 => gray_s2(13),
      I2 => gray_s2(10),
      I3 => gray_s2(11),
      O => \axi_rdata[6]_i_8_n_0\
    );
\axi_rdata[6]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(8),
      I1 => gray_s2(9),
      I2 => gray_s2(6),
      I3 => gray_s2(7),
      O => \axi_rdata[6]_i_9_n_0\
    );
\axi_rdata[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(17),
      I1 => gray_s2(18),
      I2 => gray_s2(15),
      I3 => gray_s2(16),
      O => \axi_rdata[7]_i_13_n_0\
    );
\axi_rdata[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^dst_cnt\(23),
      I1 => \axi_rdata[7]_i_7_n_0\,
      I2 => \axi_rdata[7]_i_8_n_0\,
      I3 => \axi_rdata[7]_i_9_n_0\,
      O => \^dst_cnt\(7)
    );
\axi_rdata[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(13),
      I1 => gray_s2(14),
      I2 => gray_s2(11),
      I3 => gray_s2(12),
      O => \axi_rdata[7]_i_7_n_0\
    );
\axi_rdata[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(9),
      I1 => gray_s2(10),
      I2 => gray_s2(7),
      I3 => gray_s2(8),
      O => \axi_rdata[7]_i_8_n_0\
    );
\axi_rdata[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(20),
      I1 => gray_s2(19),
      I2 => gray_s2(22),
      I3 => gray_s2(21),
      I4 => \axi_rdata[7]_i_13_n_0\,
      O => \axi_rdata[7]_i_9_n_0\
    );
\axi_rdata[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^dst_cnt\(24),
      I1 => \axi_rdata[8]_i_7_n_0\,
      I2 => \axi_rdata[8]_i_8_n_0\,
      O => \^dst_cnt\(8)
    );
\axi_rdata[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(13),
      I1 => gray_s2(12),
      I2 => gray_s2(15),
      I3 => gray_s2(14),
      I4 => \axi_rdata[4]_i_7_n_0\,
      O => \axi_rdata[8]_i_7_n_0\
    );
\axi_rdata[8]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(21),
      I1 => gray_s2(20),
      I2 => gray_s2(23),
      I3 => gray_s2(22),
      I4 => \axi_rdata[16]_i_10_n_0\,
      O => \axi_rdata[8]_i_8_n_0\
    );
\axi_rdata[9]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^dst_cnt\(25),
      I1 => \axi_rdata[9]_i_7_n_0\,
      I2 => \axi_rdata[9]_i_8_n_0\,
      O => \^dst_cnt\(9)
    );
\axi_rdata[9]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(14),
      I1 => gray_s2(13),
      I2 => gray_s2(16),
      I3 => gray_s2(15),
      I4 => \axi_rdata[5]_i_7_n_0\,
      O => \axi_rdata[9]_i_7_n_0\
    );
\axi_rdata[9]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(22),
      I1 => gray_s2(21),
      I2 => gray_s2(24),
      I3 => gray_s2(23),
      I4 => \axi_rdata[17]_i_10_n_0\,
      O => \axi_rdata[9]_i_8_n_0\
    );
\gray_s1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(0),
      Q => gray_s1(0),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(10),
      Q => gray_s1(10),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(11),
      Q => gray_s1(11),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(12),
      Q => gray_s1(12),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(13),
      Q => gray_s1(13),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(14),
      Q => gray_s1(14),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(15),
      Q => gray_s1(15),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(16),
      Q => gray_s1(16),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(17),
      Q => gray_s1(17),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(18),
      Q => gray_s1(18),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(19),
      Q => gray_s1(19),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(1),
      Q => gray_s1(1),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(20),
      Q => gray_s1(20),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(21),
      Q => gray_s1(21),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(22),
      Q => gray_s1(22),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(23),
      Q => gray_s1(23),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(24),
      Q => gray_s1(24),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(25),
      Q => gray_s1(25),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(26),
      Q => gray_s1(26),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(27),
      Q => gray_s1(27),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(28),
      Q => gray_s1(28),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(29),
      Q => gray_s1(29),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(2),
      Q => gray_s1(2),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(30),
      Q => gray_s1(30),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(31),
      Q => gray_s1(31),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(3),
      Q => gray_s1(3),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(4),
      Q => gray_s1(4),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(5),
      Q => gray_s1(5),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(6),
      Q => gray_s1(6),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(7),
      Q => gray_s1(7),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(8),
      Q => gray_s1(8),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(9),
      Q => gray_s1(9),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(0),
      Q => gray_s2(0),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(10),
      Q => gray_s2(10),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(11),
      Q => gray_s2(11),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(12),
      Q => gray_s2(12),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(13),
      Q => gray_s2(13),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(14),
      Q => gray_s2(14),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(15),
      Q => gray_s2(15),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(16),
      Q => gray_s2(16),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(17),
      Q => gray_s2(17),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(18),
      Q => gray_s2(18),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(19),
      Q => gray_s2(19),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(1),
      Q => gray_s2(1),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(20),
      Q => gray_s2(20),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(21),
      Q => gray_s2(21),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(22),
      Q => gray_s2(22),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(23),
      Q => gray_s2(23),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(24),
      Q => gray_s2(24),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(25),
      Q => gray_s2(25),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(26),
      Q => gray_s2(26),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(27),
      Q => gray_s2(27),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(28),
      Q => gray_s2(28),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(29),
      Q => gray_s2(29),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(2),
      Q => gray_s2(2),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(30),
      Q => gray_s2(30),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(31),
      Q => gray_s2(31),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(3),
      Q => gray_s2(3),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(4),
      Q => gray_s2(4),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(5),
      Q => gray_s2(5),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(6),
      Q => gray_s2(6),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(7),
      Q => gray_s2(7),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(8),
      Q => gray_s2(8),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(9),
      Q => gray_s2(9),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_src[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(1),
      I1 => src_cnt(0),
      O => \gray_src[0]_i_1__0_n_0\
    );
\gray_src[10]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(11),
      I1 => src_cnt(10),
      O => \gray_src[10]_i_1__0_n_0\
    );
\gray_src[11]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(12),
      I1 => src_cnt(11),
      O => \gray_src[11]_i_1__0_n_0\
    );
\gray_src[12]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(13),
      I1 => src_cnt(12),
      O => \gray_src[12]_i_1__1_n_0\
    );
\gray_src[13]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(14),
      I1 => src_cnt(13),
      O => \gray_src[13]_i_1__0_n_0\
    );
\gray_src[14]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(15),
      I1 => src_cnt(14),
      O => \gray_src[14]_i_1__0_n_0\
    );
\gray_src[15]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(16),
      I1 => src_cnt(15),
      O => \gray_src[15]_i_1__0_n_0\
    );
\gray_src[16]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(17),
      I1 => src_cnt(16),
      O => \gray_src[16]_i_1__0_n_0\
    );
\gray_src[17]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(18),
      I1 => src_cnt(17),
      O => \gray_src[17]_i_1__0_n_0\
    );
\gray_src[18]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(19),
      I1 => src_cnt(18),
      O => \gray_src[18]_i_1__0_n_0\
    );
\gray_src[19]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(20),
      I1 => src_cnt(19),
      O => \gray_src[19]_i_1__0_n_0\
    );
\gray_src[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(2),
      I1 => src_cnt(1),
      O => \gray_src[1]_i_1__0_n_0\
    );
\gray_src[20]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(21),
      I1 => src_cnt(20),
      O => \gray_src[20]_i_1__0_n_0\
    );
\gray_src[21]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(22),
      I1 => src_cnt(21),
      O => \gray_src[21]_i_1__0_n_0\
    );
\gray_src[22]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(23),
      I1 => src_cnt(22),
      O => \gray_src[22]_i_1__0_n_0\
    );
\gray_src[23]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(24),
      I1 => src_cnt(23),
      O => \gray_src[23]_i_1__0_n_0\
    );
\gray_src[24]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(25),
      I1 => src_cnt(24),
      O => \gray_src[24]_i_1__0_n_0\
    );
\gray_src[25]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(26),
      I1 => src_cnt(25),
      O => \gray_src[25]_i_1__0_n_0\
    );
\gray_src[26]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(27),
      I1 => src_cnt(26),
      O => \gray_src[26]_i_1__0_n_0\
    );
\gray_src[27]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(28),
      I1 => src_cnt(27),
      O => \gray_src[27]_i_1__0_n_0\
    );
\gray_src[28]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(29),
      I1 => src_cnt(28),
      O => \gray_src[28]_i_1__0_n_0\
    );
\gray_src[29]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(30),
      I1 => src_cnt(29),
      O => \gray_src[29]_i_1__0_n_0\
    );
\gray_src[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(3),
      I1 => src_cnt(2),
      O => \gray_src[2]_i_1__0_n_0\
    );
\gray_src[30]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(31),
      I1 => src_cnt(30),
      O => \gray_src[30]_i_1__0_n_0\
    );
\gray_src[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(4),
      I1 => src_cnt(3),
      O => \gray_src[3]_i_1__0_n_0\
    );
\gray_src[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(5),
      I1 => src_cnt(4),
      O => \gray_src[4]_i_1__0_n_0\
    );
\gray_src[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(6),
      I1 => src_cnt(5),
      O => \gray_src[5]_i_1__0_n_0\
    );
\gray_src[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(7),
      I1 => src_cnt(6),
      O => \gray_src[6]_i_1__0_n_0\
    );
\gray_src[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(8),
      I1 => src_cnt(7),
      O => \gray_src[7]_i_1__0_n_0\
    );
\gray_src[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(9),
      I1 => src_cnt(8),
      O => \gray_src[8]_i_1__0_n_0\
    );
\gray_src[9]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(10),
      I1 => src_cnt(9),
      O => \gray_src[9]_i_1__0_n_0\
    );
\gray_src_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[0]_i_1__0_n_0\,
      Q => gray_src(0),
      R => SR(0)
    );
\gray_src_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[10]_i_1__0_n_0\,
      Q => gray_src(10),
      R => SR(0)
    );
\gray_src_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[11]_i_1__0_n_0\,
      Q => gray_src(11),
      R => SR(0)
    );
\gray_src_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[12]_i_1__1_n_0\,
      Q => gray_src(12),
      R => SR(0)
    );
\gray_src_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[13]_i_1__0_n_0\,
      Q => gray_src(13),
      R => SR(0)
    );
\gray_src_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[14]_i_1__0_n_0\,
      Q => gray_src(14),
      R => SR(0)
    );
\gray_src_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[15]_i_1__0_n_0\,
      Q => gray_src(15),
      R => SR(0)
    );
\gray_src_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[16]_i_1__0_n_0\,
      Q => gray_src(16),
      R => SR(0)
    );
\gray_src_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[17]_i_1__0_n_0\,
      Q => gray_src(17),
      R => SR(0)
    );
\gray_src_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[18]_i_1__0_n_0\,
      Q => gray_src(18),
      R => SR(0)
    );
\gray_src_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[19]_i_1__0_n_0\,
      Q => gray_src(19),
      R => SR(0)
    );
\gray_src_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[1]_i_1__0_n_0\,
      Q => gray_src(1),
      R => SR(0)
    );
\gray_src_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[20]_i_1__0_n_0\,
      Q => gray_src(20),
      R => SR(0)
    );
\gray_src_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[21]_i_1__0_n_0\,
      Q => gray_src(21),
      R => SR(0)
    );
\gray_src_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[22]_i_1__0_n_0\,
      Q => gray_src(22),
      R => SR(0)
    );
\gray_src_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[23]_i_1__0_n_0\,
      Q => gray_src(23),
      R => SR(0)
    );
\gray_src_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[24]_i_1__0_n_0\,
      Q => gray_src(24),
      R => SR(0)
    );
\gray_src_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[25]_i_1__0_n_0\,
      Q => gray_src(25),
      R => SR(0)
    );
\gray_src_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[26]_i_1__0_n_0\,
      Q => gray_src(26),
      R => SR(0)
    );
\gray_src_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[27]_i_1__0_n_0\,
      Q => gray_src(27),
      R => SR(0)
    );
\gray_src_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[28]_i_1__0_n_0\,
      Q => gray_src(28),
      R => SR(0)
    );
\gray_src_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[29]_i_1__0_n_0\,
      Q => gray_src(29),
      R => SR(0)
    );
\gray_src_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[2]_i_1__0_n_0\,
      Q => gray_src(2),
      R => SR(0)
    );
\gray_src_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[30]_i_1__0_n_0\,
      Q => gray_src(30),
      R => SR(0)
    );
\gray_src_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => src_cnt(31),
      Q => gray_src(31),
      R => SR(0)
    );
\gray_src_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[3]_i_1__0_n_0\,
      Q => gray_src(3),
      R => SR(0)
    );
\gray_src_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[4]_i_1__0_n_0\,
      Q => gray_src(4),
      R => SR(0)
    );
\gray_src_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[5]_i_1__0_n_0\,
      Q => gray_src(5),
      R => SR(0)
    );
\gray_src_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[6]_i_1__0_n_0\,
      Q => gray_src(6),
      R => SR(0)
    );
\gray_src_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[7]_i_1__0_n_0\,
      Q => gray_src(7),
      R => SR(0)
    );
\gray_src_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[8]_i_1__0_n_0\,
      Q => gray_src(8),
      R => SR(0)
    );
\gray_src_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[9]_i_1__0_n_0\,
      Q => gray_src(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \ps_Counter_Core_0_1_cnt_cdc__parameterized0_7\ is
  port (
    dst_cnt : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \axi_araddr_reg[3]\ : out STD_LOGIC;
    \axi_rdata_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[4]_0\ : in STD_LOGIC;
    \axi_rdata_reg[4]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    src_cnt : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \gray_s1_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \ps_Counter_Core_0_1_cnt_cdc__parameterized0_7\ : entity is "cnt_cdc";
end \ps_Counter_Core_0_1_cnt_cdc__parameterized0_7\;

architecture STRUCTURE of \ps_Counter_Core_0_1_cnt_cdc__parameterized0_7\ is
  signal \axi_rdata[10]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_16_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_9_n_0\ : STD_LOGIC;
  signal \^dst_cnt\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal gray_s1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute async_reg : string;
  attribute async_reg of gray_s1 : signal is "true";
  signal gray_s2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute async_reg of gray_s2 : signal is "true";
  signal gray_src : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \gray_src[0]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[10]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[11]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \gray_src[13]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[14]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[15]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[16]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[17]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[18]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[19]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[1]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[20]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[21]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[22]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[23]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[24]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[25]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[26]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[27]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[28]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[29]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[2]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[30]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[3]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[4]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[5]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[6]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[7]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[8]_i_1_n_0\ : STD_LOGIC;
  signal \gray_src[9]_i_1_n_0\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \gray_s1_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \gray_s1_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[10]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[11]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[12]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[13]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[14]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[15]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[16]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[17]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[18]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[18]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[19]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[19]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[20]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[20]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[21]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[21]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[22]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[22]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[23]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[23]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[24]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[24]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[25]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[25]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[26]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[26]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[27]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[27]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[28]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[28]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[29]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[29]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[2]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[30]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[30]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[31]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[31]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[3]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[4]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[5]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[6]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[7]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[8]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s1_reg[9]\ : label is std.standard.true;
  attribute KEEP of \gray_s1_reg[9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[10]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[11]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[12]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[13]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[14]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[15]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[16]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[17]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[18]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[18]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[19]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[19]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[20]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[20]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[21]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[21]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[22]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[22]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[23]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[23]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[24]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[24]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[25]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[25]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[26]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[26]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[27]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[27]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[28]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[28]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[29]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[29]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[2]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[30]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[30]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[31]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[31]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[3]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[4]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[5]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[6]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[7]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[8]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \gray_s2_reg[9]\ : label is std.standard.true;
  attribute KEEP of \gray_s2_reg[9]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gray_src[0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \gray_src[10]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \gray_src[11]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \gray_src[12]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \gray_src[13]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \gray_src[14]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \gray_src[15]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \gray_src[16]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \gray_src[17]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \gray_src[19]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \gray_src[1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \gray_src[20]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \gray_src[21]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \gray_src[22]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \gray_src[23]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \gray_src[24]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \gray_src[25]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \gray_src[26]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \gray_src[27]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \gray_src[28]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \gray_src[29]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \gray_src[2]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \gray_src[30]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \gray_src[3]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \gray_src[4]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \gray_src[5]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \gray_src[6]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \gray_src[7]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \gray_src[8]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \gray_src[9]_i_1\ : label is "soft_lutpair48";
begin
  dst_cnt(30) <= gray_s2(31);
  dst_cnt(29 downto 0) <= \^dst_cnt\(29 downto 0);
\axi_rdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dst_cnt\(15),
      I1 => \axi_rdata[4]_i_10_n_0\,
      I2 => gray_s2(1),
      I3 => gray_s2(0),
      I4 => \axi_rdata[2]_i_8_n_0\,
      I5 => \axi_rdata[8]_i_9_n_0\,
      O => \^dst_cnt\(0)
    );
\axi_rdata[10]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(23),
      I1 => gray_s2(22),
      I2 => gray_s2(25),
      I3 => gray_s2(24),
      I4 => \axi_rdata[18]_i_7_n_0\,
      O => \axi_rdata[10]_i_10_n_0\
    );
\axi_rdata[10]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^dst_cnt\(25),
      I1 => \axi_rdata[10]_i_9_n_0\,
      I2 => \axi_rdata[10]_i_10_n_0\,
      O => \^dst_cnt\(9)
    );
\axi_rdata[10]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(15),
      I1 => gray_s2(14),
      I2 => gray_s2(17),
      I3 => gray_s2(16),
      I4 => \axi_rdata[6]_i_12_n_0\,
      O => \axi_rdata[10]_i_9_n_0\
    );
\axi_rdata[11]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(24),
      I1 => gray_s2(23),
      I2 => gray_s2(26),
      I3 => gray_s2(25),
      I4 => \axi_rdata[19]_i_7_n_0\,
      O => \axi_rdata[11]_i_10_n_0\
    );
\axi_rdata[11]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^dst_cnt\(26),
      I1 => \axi_rdata[11]_i_9_n_0\,
      I2 => \axi_rdata[11]_i_10_n_0\,
      O => \^dst_cnt\(10)
    );
\axi_rdata[11]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(16),
      I1 => gray_s2(15),
      I2 => gray_s2(18),
      I3 => gray_s2(17),
      I4 => \axi_rdata[7]_i_10_n_0\,
      O => \axi_rdata[11]_i_9_n_0\
    );
\axi_rdata[12]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(25),
      I1 => gray_s2(24),
      I2 => gray_s2(27),
      I3 => gray_s2(26),
      I4 => \axi_rdata[20]_i_7_n_0\,
      O => \axi_rdata[12]_i_10_n_0\
    );
\axi_rdata[12]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(14),
      I1 => gray_s2(15),
      I2 => gray_s2(12),
      I3 => gray_s2(13),
      O => \axi_rdata[12]_i_12_n_0\
    );
\axi_rdata[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => gray_s2(29),
      I1 => gray_s2(28),
      I2 => gray_s2(31),
      I3 => gray_s2(30),
      I4 => \axi_rdata[12]_i_9_n_0\,
      I5 => \axi_rdata[12]_i_10_n_0\,
      O => \^dst_cnt\(11)
    );
\axi_rdata[12]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(17),
      I1 => gray_s2(16),
      I2 => gray_s2(19),
      I3 => gray_s2(18),
      I4 => \axi_rdata[12]_i_12_n_0\,
      O => \axi_rdata[12]_i_9_n_0\
    );
\axi_rdata[13]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(26),
      I1 => gray_s2(25),
      I2 => gray_s2(28),
      I3 => gray_s2(27),
      I4 => \axi_rdata[21]_i_7_n_0\,
      O => \axi_rdata[13]_i_10_n_0\
    );
\axi_rdata[13]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(15),
      I1 => gray_s2(16),
      I2 => gray_s2(13),
      I3 => gray_s2(14),
      O => \axi_rdata[13]_i_12_n_0\
    );
\axi_rdata[13]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(30),
      I1 => gray_s2(29),
      I2 => gray_s2(31),
      I3 => \axi_rdata[13]_i_9_n_0\,
      I4 => \axi_rdata[13]_i_10_n_0\,
      O => \^dst_cnt\(12)
    );
\axi_rdata[13]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(18),
      I1 => gray_s2(17),
      I2 => gray_s2(20),
      I3 => gray_s2(19),
      I4 => \axi_rdata[13]_i_12_n_0\,
      O => \axi_rdata[13]_i_9_n_0\
    );
\axi_rdata[14]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(30),
      I1 => gray_s2(31),
      I2 => \axi_rdata[6]_i_14_n_0\,
      I3 => \axi_rdata[6]_i_11_n_0\,
      O => \^dst_cnt\(13)
    );
\axi_rdata[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => gray_s2(31),
      I1 => \axi_rdata[7]_i_12_n_0\,
      I2 => \axi_rdata[15]_i_7_n_0\,
      O => \^dst_cnt\(14)
    );
\axi_rdata[15]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(28),
      I1 => gray_s2(27),
      I2 => gray_s2(30),
      I3 => gray_s2(29),
      I4 => \axi_rdata[23]_i_7_n_0\,
      O => \axi_rdata[15]_i_7_n_0\
    );
\axi_rdata[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \axi_rdata[16]_i_7_n_0\,
      I1 => \^dst_cnt\(29),
      I2 => gray_s2(28),
      I3 => gray_s2(29),
      I4 => \axi_rdata[16]_i_8_n_0\,
      I5 => \axi_rdata[20]_i_7_n_0\,
      O => \^dst_cnt\(15)
    );
\axi_rdata[16]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(26),
      I1 => gray_s2(27),
      I2 => gray_s2(24),
      I3 => gray_s2(25),
      O => \axi_rdata[16]_i_7_n_0\
    );
\axi_rdata[16]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(18),
      I1 => gray_s2(19),
      I2 => gray_s2(16),
      I3 => gray_s2(17),
      O => \axi_rdata[16]_i_8_n_0\
    );
\axi_rdata[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \axi_rdata[17]_i_7_n_0\,
      I1 => gray_s2(31),
      I2 => gray_s2(29),
      I3 => gray_s2(30),
      I4 => \axi_rdata[17]_i_8_n_0\,
      I5 => \axi_rdata[21]_i_7_n_0\,
      O => \^dst_cnt\(16)
    );
\axi_rdata[17]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(27),
      I1 => gray_s2(28),
      I2 => gray_s2(25),
      I3 => gray_s2(26),
      O => \axi_rdata[17]_i_7_n_0\
    );
\axi_rdata[17]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(19),
      I1 => gray_s2(20),
      I2 => gray_s2(17),
      I3 => gray_s2(18),
      O => \axi_rdata[17]_i_8_n_0\
    );
\axi_rdata[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dst_cnt\(25),
      I1 => \axi_rdata[18]_i_7_n_0\,
      I2 => gray_s2(24),
      I3 => gray_s2(25),
      I4 => gray_s2(22),
      I5 => gray_s2(23),
      O => \^dst_cnt\(17)
    );
\axi_rdata[18]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(20),
      I1 => gray_s2(21),
      I2 => gray_s2(18),
      I3 => gray_s2(19),
      O => \axi_rdata[18]_i_7_n_0\
    );
\axi_rdata[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dst_cnt\(26),
      I1 => \axi_rdata[19]_i_7_n_0\,
      I2 => gray_s2(25),
      I3 => gray_s2(26),
      I4 => gray_s2(23),
      I5 => gray_s2(24),
      O => \^dst_cnt\(18)
    );
\axi_rdata[19]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(21),
      I1 => gray_s2(22),
      I2 => gray_s2(19),
      I3 => gray_s2(20),
      O => \axi_rdata[19]_i_7_n_0\
    );
\axi_rdata[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dst_cnt\(16),
      I1 => \axi_rdata[5]_i_10_n_0\,
      I2 => gray_s2(2),
      I3 => gray_s2(1),
      I4 => \axi_rdata[3]_i_8_n_0\,
      I5 => \axi_rdata[9]_i_9_n_0\,
      O => \^dst_cnt\(1)
    );
\axi_rdata[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dst_cnt\(27),
      I1 => \axi_rdata[20]_i_7_n_0\,
      I2 => gray_s2(26),
      I3 => gray_s2(27),
      I4 => gray_s2(24),
      I5 => gray_s2(25),
      O => \^dst_cnt\(19)
    );
\axi_rdata[20]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(22),
      I1 => gray_s2(23),
      I2 => gray_s2(20),
      I3 => gray_s2(21),
      O => \axi_rdata[20]_i_7_n_0\
    );
\axi_rdata[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dst_cnt\(28),
      I1 => \axi_rdata[21]_i_7_n_0\,
      I2 => gray_s2(27),
      I3 => gray_s2(28),
      I4 => gray_s2(25),
      I5 => gray_s2(26),
      O => \^dst_cnt\(20)
    );
\axi_rdata[21]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(23),
      I1 => gray_s2(24),
      I2 => gray_s2(21),
      I3 => gray_s2(22),
      O => \axi_rdata[21]_i_7_n_0\
    );
\axi_rdata[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dst_cnt\(29),
      I1 => \axi_rdata[22]_i_7_n_0\,
      I2 => gray_s2(28),
      I3 => gray_s2(29),
      I4 => gray_s2(26),
      I5 => gray_s2(27),
      O => \^dst_cnt\(21)
    );
\axi_rdata[22]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(24),
      I1 => gray_s2(25),
      I2 => gray_s2(22),
      I3 => gray_s2(23),
      O => \axi_rdata[22]_i_7_n_0\
    );
\axi_rdata[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => gray_s2(31),
      I1 => \axi_rdata[23]_i_7_n_0\,
      I2 => gray_s2(29),
      I3 => gray_s2(30),
      I4 => gray_s2(27),
      I5 => gray_s2(28),
      O => \^dst_cnt\(22)
    );
\axi_rdata[23]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(25),
      I1 => gray_s2(26),
      I2 => gray_s2(23),
      I3 => gray_s2(24),
      O => \axi_rdata[23]_i_7_n_0\
    );
\axi_rdata[24]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \^dst_cnt\(27),
      I1 => gray_s2(25),
      I2 => gray_s2(24),
      I3 => gray_s2(27),
      I4 => gray_s2(26),
      O => \^dst_cnt\(23)
    );
\axi_rdata[25]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \^dst_cnt\(28),
      I1 => gray_s2(26),
      I2 => gray_s2(25),
      I3 => gray_s2(28),
      I4 => gray_s2(27),
      O => \^dst_cnt\(24)
    );
\axi_rdata[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => gray_s2(30),
      I1 => gray_s2(31),
      I2 => gray_s2(27),
      I3 => gray_s2(26),
      I4 => gray_s2(29),
      I5 => gray_s2(28),
      O => \^dst_cnt\(25)
    );
\axi_rdata[27]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(31),
      I1 => gray_s2(28),
      I2 => gray_s2(27),
      I3 => gray_s2(30),
      I4 => gray_s2(29),
      O => \^dst_cnt\(26)
    );
\axi_rdata[28]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(30),
      I1 => gray_s2(31),
      I2 => gray_s2(28),
      I3 => gray_s2(29),
      O => \^dst_cnt\(27)
    );
\axi_rdata[29]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => gray_s2(31),
      I1 => gray_s2(29),
      I2 => gray_s2(30),
      O => \^dst_cnt\(28)
    );
\axi_rdata[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dst_cnt\(17),
      I1 => \axi_rdata[6]_i_13_n_0\,
      I2 => \axi_rdata[2]_i_8_n_0\,
      I3 => gray_s2(5),
      I4 => gray_s2(4),
      I5 => \axi_rdata[10]_i_9_n_0\,
      O => \^dst_cnt\(2)
    );
\axi_rdata[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gray_s2(3),
      I1 => gray_s2(2),
      O => \axi_rdata[2]_i_8_n_0\
    );
\axi_rdata[30]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gray_s2(31),
      I1 => gray_s2(30),
      O => \^dst_cnt\(29)
    );
\axi_rdata[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^dst_cnt\(18),
      I1 => \axi_rdata[7]_i_11_n_0\,
      I2 => \axi_rdata[3]_i_8_n_0\,
      I3 => gray_s2(6),
      I4 => gray_s2(5),
      I5 => \axi_rdata[11]_i_9_n_0\,
      O => \^dst_cnt\(3)
    );
\axi_rdata[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gray_s2(4),
      I1 => gray_s2(3),
      O => \axi_rdata[3]_i_8_n_0\
    );
\axi_rdata[4]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(6),
      I1 => gray_s2(7),
      I2 => gray_s2(4),
      I3 => gray_s2(5),
      O => \axi_rdata[4]_i_10_n_0\
    );
\axi_rdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \axi_rdata[4]_i_6_n_0\,
      I1 => \axi_rdata_reg[4]\(1),
      I2 => CO(0),
      I3 => \axi_rdata_reg[4]_0\,
      I4 => \axi_rdata_reg[4]\(0),
      I5 => \axi_rdata_reg[4]_1\(0),
      O => \axi_araddr_reg[3]\
    );
\axi_rdata[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996FFFF69960000"
    )
        port map (
      I0 => \^dst_cnt\(19),
      I1 => \axi_rdata[4]_i_9_n_0\,
      I2 => \axi_rdata[4]_i_10_n_0\,
      I3 => \axi_rdata[12]_i_9_n_0\,
      I4 => \axi_rdata_reg[4]\(0),
      I5 => D(0),
      O => \axi_rdata[4]_i_6_n_0\
    );
\axi_rdata[4]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(10),
      I1 => gray_s2(11),
      I2 => gray_s2(8),
      I3 => gray_s2(9),
      O => \axi_rdata[4]_i_9_n_0\
    );
\axi_rdata[5]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(7),
      I1 => gray_s2(8),
      I2 => gray_s2(5),
      I3 => gray_s2(6),
      O => \axi_rdata[5]_i_10_n_0\
    );
\axi_rdata[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^dst_cnt\(20),
      I1 => \axi_rdata[5]_i_9_n_0\,
      I2 => \axi_rdata[5]_i_10_n_0\,
      I3 => \axi_rdata[13]_i_9_n_0\,
      O => \^dst_cnt\(4)
    );
\axi_rdata[5]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(11),
      I1 => gray_s2(12),
      I2 => gray_s2(9),
      I3 => gray_s2(10),
      O => \axi_rdata[5]_i_9_n_0\
    );
\axi_rdata[6]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(27),
      I1 => gray_s2(26),
      I2 => gray_s2(29),
      I3 => gray_s2(28),
      I4 => \axi_rdata[22]_i_7_n_0\,
      O => \axi_rdata[6]_i_11_n_0\
    );
\axi_rdata[6]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(12),
      I1 => gray_s2(13),
      I2 => gray_s2(10),
      I3 => gray_s2(11),
      O => \axi_rdata[6]_i_12_n_0\
    );
\axi_rdata[6]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(8),
      I1 => gray_s2(9),
      I2 => gray_s2(6),
      I3 => gray_s2(7),
      O => \axi_rdata[6]_i_13_n_0\
    );
\axi_rdata[6]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(19),
      I1 => gray_s2(18),
      I2 => gray_s2(21),
      I3 => gray_s2(20),
      I4 => \axi_rdata[6]_i_16_n_0\,
      O => \axi_rdata[6]_i_14_n_0\
    );
\axi_rdata[6]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(16),
      I1 => gray_s2(17),
      I2 => gray_s2(14),
      I3 => gray_s2(15),
      O => \axi_rdata[6]_i_16_n_0\
    );
\axi_rdata[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \axi_rdata[6]_i_11_n_0\,
      I1 => gray_s2(31),
      I2 => gray_s2(30),
      I3 => \axi_rdata[6]_i_12_n_0\,
      I4 => \axi_rdata[6]_i_13_n_0\,
      I5 => \axi_rdata[6]_i_14_n_0\,
      O => \^dst_cnt\(5)
    );
\axi_rdata[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(13),
      I1 => gray_s2(14),
      I2 => gray_s2(11),
      I3 => gray_s2(12),
      O => \axi_rdata[7]_i_10_n_0\
    );
\axi_rdata[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(9),
      I1 => gray_s2(10),
      I2 => gray_s2(7),
      I3 => gray_s2(8),
      O => \axi_rdata[7]_i_11_n_0\
    );
\axi_rdata[7]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(20),
      I1 => gray_s2(19),
      I2 => gray_s2(22),
      I3 => gray_s2(21),
      I4 => \axi_rdata[7]_i_14_n_0\,
      O => \axi_rdata[7]_i_12_n_0\
    );
\axi_rdata[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => gray_s2(17),
      I1 => gray_s2(18),
      I2 => gray_s2(15),
      I3 => gray_s2(16),
      O => \axi_rdata[7]_i_14_n_0\
    );
\axi_rdata[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^dst_cnt\(22),
      I1 => \axi_rdata[7]_i_10_n_0\,
      I2 => \axi_rdata[7]_i_11_n_0\,
      I3 => \axi_rdata[7]_i_12_n_0\,
      O => \^dst_cnt\(6)
    );
\axi_rdata[8]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(21),
      I1 => gray_s2(20),
      I2 => gray_s2(23),
      I3 => gray_s2(22),
      I4 => \axi_rdata[16]_i_8_n_0\,
      O => \axi_rdata[8]_i_10_n_0\
    );
\axi_rdata[8]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^dst_cnt\(23),
      I1 => \axi_rdata[8]_i_9_n_0\,
      I2 => \axi_rdata[8]_i_10_n_0\,
      O => \^dst_cnt\(7)
    );
\axi_rdata[8]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(13),
      I1 => gray_s2(12),
      I2 => gray_s2(15),
      I3 => gray_s2(14),
      I4 => \axi_rdata[4]_i_9_n_0\,
      O => \axi_rdata[8]_i_9_n_0\
    );
\axi_rdata[9]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(22),
      I1 => gray_s2(21),
      I2 => gray_s2(24),
      I3 => gray_s2(23),
      I4 => \axi_rdata[17]_i_8_n_0\,
      O => \axi_rdata[9]_i_10_n_0\
    );
\axi_rdata[9]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^dst_cnt\(24),
      I1 => \axi_rdata[9]_i_9_n_0\,
      I2 => \axi_rdata[9]_i_10_n_0\,
      O => \^dst_cnt\(8)
    );
\axi_rdata[9]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => gray_s2(14),
      I1 => gray_s2(13),
      I2 => gray_s2(16),
      I3 => gray_s2(15),
      I4 => \axi_rdata[5]_i_9_n_0\,
      O => \axi_rdata[9]_i_9_n_0\
    );
\gray_s1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(0),
      Q => gray_s1(0),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(10),
      Q => gray_s1(10),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(11),
      Q => gray_s1(11),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(12),
      Q => gray_s1(12),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(13),
      Q => gray_s1(13),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(14),
      Q => gray_s1(14),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(15),
      Q => gray_s1(15),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(16),
      Q => gray_s1(16),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(17),
      Q => gray_s1(17),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(18),
      Q => gray_s1(18),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(19),
      Q => gray_s1(19),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(1),
      Q => gray_s1(1),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(20),
      Q => gray_s1(20),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(21),
      Q => gray_s1(21),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(22),
      Q => gray_s1(22),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(23),
      Q => gray_s1(23),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(24),
      Q => gray_s1(24),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(25),
      Q => gray_s1(25),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(26),
      Q => gray_s1(26),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(27),
      Q => gray_s1(27),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(28),
      Q => gray_s1(28),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(29),
      Q => gray_s1(29),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(2),
      Q => gray_s1(2),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(30),
      Q => gray_s1(30),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(31),
      Q => gray_s1(31),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(3),
      Q => gray_s1(3),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(4),
      Q => gray_s1(4),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(5),
      Q => gray_s1(5),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(6),
      Q => gray_s1(6),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(7),
      Q => gray_s1(7),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(8),
      Q => gray_s1(8),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_src(9),
      Q => gray_s1(9),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(0),
      Q => gray_s2(0),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(10),
      Q => gray_s2(10),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(11),
      Q => gray_s2(11),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(12),
      Q => gray_s2(12),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(13),
      Q => gray_s2(13),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(14),
      Q => gray_s2(14),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(15),
      Q => gray_s2(15),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(16),
      Q => gray_s2(16),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(17),
      Q => gray_s2(17),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(18),
      Q => gray_s2(18),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(19),
      Q => gray_s2(19),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(1),
      Q => gray_s2(1),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(20),
      Q => gray_s2(20),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(21),
      Q => gray_s2(21),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(22),
      Q => gray_s2(22),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(23),
      Q => gray_s2(23),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(24),
      Q => gray_s2(24),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(25),
      Q => gray_s2(25),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(26),
      Q => gray_s2(26),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(27),
      Q => gray_s2(27),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(28),
      Q => gray_s2(28),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(29),
      Q => gray_s2(29),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(2),
      Q => gray_s2(2),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(30),
      Q => gray_s2(30),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(31),
      Q => gray_s2(31),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(3),
      Q => gray_s2(3),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(4),
      Q => gray_s2(4),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(5),
      Q => gray_s2(5),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(6),
      Q => gray_s2(6),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(7),
      Q => gray_s2(7),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(8),
      Q => gray_s2(8),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_s2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gray_s1(9),
      Q => gray_s2(9),
      R => \gray_s1_reg[0]_0\(0)
    );
\gray_src[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(1),
      I1 => src_cnt(0),
      O => \gray_src[0]_i_1_n_0\
    );
\gray_src[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(11),
      I1 => src_cnt(10),
      O => \gray_src[10]_i_1_n_0\
    );
\gray_src[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(12),
      I1 => src_cnt(11),
      O => \gray_src[11]_i_1_n_0\
    );
\gray_src[12]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(13),
      I1 => src_cnt(12),
      O => \gray_src[12]_i_1__0_n_0\
    );
\gray_src[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(14),
      I1 => src_cnt(13),
      O => \gray_src[13]_i_1_n_0\
    );
\gray_src[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(15),
      I1 => src_cnt(14),
      O => \gray_src[14]_i_1_n_0\
    );
\gray_src[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(16),
      I1 => src_cnt(15),
      O => \gray_src[15]_i_1_n_0\
    );
\gray_src[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(17),
      I1 => src_cnt(16),
      O => \gray_src[16]_i_1_n_0\
    );
\gray_src[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(18),
      I1 => src_cnt(17),
      O => \gray_src[17]_i_1_n_0\
    );
\gray_src[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(19),
      I1 => src_cnt(18),
      O => \gray_src[18]_i_1_n_0\
    );
\gray_src[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(20),
      I1 => src_cnt(19),
      O => \gray_src[19]_i_1_n_0\
    );
\gray_src[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(2),
      I1 => src_cnt(1),
      O => \gray_src[1]_i_1_n_0\
    );
\gray_src[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(21),
      I1 => src_cnt(20),
      O => \gray_src[20]_i_1_n_0\
    );
\gray_src[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(22),
      I1 => src_cnt(21),
      O => \gray_src[21]_i_1_n_0\
    );
\gray_src[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(23),
      I1 => src_cnt(22),
      O => \gray_src[22]_i_1_n_0\
    );
\gray_src[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(24),
      I1 => src_cnt(23),
      O => \gray_src[23]_i_1_n_0\
    );
\gray_src[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(25),
      I1 => src_cnt(24),
      O => \gray_src[24]_i_1_n_0\
    );
\gray_src[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(26),
      I1 => src_cnt(25),
      O => \gray_src[25]_i_1_n_0\
    );
\gray_src[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(27),
      I1 => src_cnt(26),
      O => \gray_src[26]_i_1_n_0\
    );
\gray_src[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(28),
      I1 => src_cnt(27),
      O => \gray_src[27]_i_1_n_0\
    );
\gray_src[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(29),
      I1 => src_cnt(28),
      O => \gray_src[28]_i_1_n_0\
    );
\gray_src[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(30),
      I1 => src_cnt(29),
      O => \gray_src[29]_i_1_n_0\
    );
\gray_src[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(3),
      I1 => src_cnt(2),
      O => \gray_src[2]_i_1_n_0\
    );
\gray_src[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(31),
      I1 => src_cnt(30),
      O => \gray_src[30]_i_1_n_0\
    );
\gray_src[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(4),
      I1 => src_cnt(3),
      O => \gray_src[3]_i_1_n_0\
    );
\gray_src[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(5),
      I1 => src_cnt(4),
      O => \gray_src[4]_i_1_n_0\
    );
\gray_src[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(6),
      I1 => src_cnt(5),
      O => \gray_src[5]_i_1_n_0\
    );
\gray_src[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(7),
      I1 => src_cnt(6),
      O => \gray_src[6]_i_1_n_0\
    );
\gray_src[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(8),
      I1 => src_cnt(7),
      O => \gray_src[7]_i_1_n_0\
    );
\gray_src[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(9),
      I1 => src_cnt(8),
      O => \gray_src[8]_i_1_n_0\
    );
\gray_src[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_cnt(10),
      I1 => src_cnt(9),
      O => \gray_src[9]_i_1_n_0\
    );
\gray_src_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[0]_i_1_n_0\,
      Q => gray_src(0),
      R => SR(0)
    );
\gray_src_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[10]_i_1_n_0\,
      Q => gray_src(10),
      R => SR(0)
    );
\gray_src_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[11]_i_1_n_0\,
      Q => gray_src(11),
      R => SR(0)
    );
\gray_src_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[12]_i_1__0_n_0\,
      Q => gray_src(12),
      R => SR(0)
    );
\gray_src_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[13]_i_1_n_0\,
      Q => gray_src(13),
      R => SR(0)
    );
\gray_src_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[14]_i_1_n_0\,
      Q => gray_src(14),
      R => SR(0)
    );
\gray_src_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[15]_i_1_n_0\,
      Q => gray_src(15),
      R => SR(0)
    );
\gray_src_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[16]_i_1_n_0\,
      Q => gray_src(16),
      R => SR(0)
    );
\gray_src_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[17]_i_1_n_0\,
      Q => gray_src(17),
      R => SR(0)
    );
\gray_src_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[18]_i_1_n_0\,
      Q => gray_src(18),
      R => SR(0)
    );
\gray_src_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[19]_i_1_n_0\,
      Q => gray_src(19),
      R => SR(0)
    );
\gray_src_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[1]_i_1_n_0\,
      Q => gray_src(1),
      R => SR(0)
    );
\gray_src_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[20]_i_1_n_0\,
      Q => gray_src(20),
      R => SR(0)
    );
\gray_src_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[21]_i_1_n_0\,
      Q => gray_src(21),
      R => SR(0)
    );
\gray_src_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[22]_i_1_n_0\,
      Q => gray_src(22),
      R => SR(0)
    );
\gray_src_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[23]_i_1_n_0\,
      Q => gray_src(23),
      R => SR(0)
    );
\gray_src_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[24]_i_1_n_0\,
      Q => gray_src(24),
      R => SR(0)
    );
\gray_src_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[25]_i_1_n_0\,
      Q => gray_src(25),
      R => SR(0)
    );
\gray_src_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[26]_i_1_n_0\,
      Q => gray_src(26),
      R => SR(0)
    );
\gray_src_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[27]_i_1_n_0\,
      Q => gray_src(27),
      R => SR(0)
    );
\gray_src_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[28]_i_1_n_0\,
      Q => gray_src(28),
      R => SR(0)
    );
\gray_src_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[29]_i_1_n_0\,
      Q => gray_src(29),
      R => SR(0)
    );
\gray_src_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[2]_i_1_n_0\,
      Q => gray_src(2),
      R => SR(0)
    );
\gray_src_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[30]_i_1_n_0\,
      Q => gray_src(30),
      R => SR(0)
    );
\gray_src_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => src_cnt(31),
      Q => gray_src(31),
      R => SR(0)
    );
\gray_src_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[3]_i_1_n_0\,
      Q => gray_src(3),
      R => SR(0)
    );
\gray_src_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[4]_i_1_n_0\,
      Q => gray_src(4),
      R => SR(0)
    );
\gray_src_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[5]_i_1_n_0\,
      Q => gray_src(5),
      R => SR(0)
    );
\gray_src_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[6]_i_1_n_0\,
      Q => gray_src(6),
      R => SR(0)
    );
\gray_src_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[7]_i_1_n_0\,
      Q => gray_src(7),
      R => SR(0)
    );
\gray_src_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[8]_i_1_n_0\,
      Q => gray_src(8),
      R => SR(0)
    );
\gray_src_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gray_src[9]_i_1_n_0\,
      Q => gray_src(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_rst_sync is
  port (
    \sync_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    \sync_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_rst_sync : entity is "rst_sync";
end ps_Counter_Core_0_1_rst_sync;

architecture STRUCTURE of ps_Counter_Core_0_1_rst_sync is
  signal sync : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync_reg[2]\ : label is "yes";
begin
\sync[1]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sync(2),
      O => \sync_reg[2]_0\(0)
    );
\sync_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \sync_reg[1]_0\,
      D => '1',
      Q => sync(0)
    );
\sync_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \sync_reg[1]_0\,
      D => sync(0),
      Q => sync(1)
    );
\sync_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \sync_reg[1]_0\,
      D => sync(1),
      Q => sync(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_rst_sync_0 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \sync_reg[2]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_rst_sync_0 : entity is "rst_sync";
end ps_Counter_Core_0_1_rst_sync_0;

architecture STRUCTURE of ps_Counter_Core_0_1_rst_sync_0 is
  signal sync : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync_reg[2]\ : label is "yes";
begin
  \out\(0) <= sync(2);
\sync[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sync(2),
      O => SR(0)
    );
\sync_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \sync_reg[2]_0\,
      D => '1',
      Q => sync(0)
    );
\sync_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \sync_reg[2]_0\,
      D => sync(0),
      Q => sync(1)
    );
\sync_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \sync_reg[2]_0\,
      D => sync(1),
      Q => sync(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_rst_sync_1 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_fx : in STD_LOGIC;
    \sync_reg[2]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_rst_sync_1 : entity is "rst_sync";
end ps_Counter_Core_0_1_rst_sync_1;

architecture STRUCTURE of ps_Counter_Core_0_1_rst_sync_1 is
  signal sync : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync_reg[2]\ : label is "yes";
begin
  \out\(0) <= sync(2);
\sync[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sync(2),
      O => SR(0)
    );
\sync_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_fx,
      CE => '1',
      CLR => \sync_reg[2]_0\,
      D => '1',
      Q => sync(0)
    );
\sync_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_fx,
      CE => '1',
      CLR => \sync_reg[2]_0\,
      D => sync(0),
      Q => sync(1)
    );
\sync_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_fx,
      CE => '1',
      CLR => \sync_reg[2]_0\,
      D => sync(1),
      Q => sync(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_rst_sync_3 is
  port (
    \sync_reg[2]_0\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \pop_cnt_reg[15]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    \sync_reg[2]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_rst_sync_3 : entity is "rst_sync";
end ps_Counter_Core_0_1_rst_sync_3;

architecture STRUCTURE of ps_Counter_Core_0_1_rst_sync_3 is
  signal sync : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync_reg[2]\ : label is "yes";
begin
out_last_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sync(2),
      O => SR(0)
    );
\pop_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sync(2),
      I1 => \pop_cnt_reg[15]\(0),
      O => \sync_reg[2]_0\
    );
\sync_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \sync_reg[2]_1\,
      D => '1',
      Q => sync(0)
    );
\sync_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \sync_reg[2]_1\,
      D => sync(0),
      Q => sync(1)
    );
\sync_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \sync_reg[2]_1\,
      D => sync(1),
      Q => sync(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_rst_sync_4 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \sync_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_rst_sync_4 : entity is "rst_sync";
end ps_Counter_Core_0_1_rst_sync_4;

architecture STRUCTURE of ps_Counter_Core_0_1_rst_sync_4 is
  signal sync : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of sync : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \sync_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \sync_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \sync_reg[2]\ : label is std.standard.true;
  attribute KEEP of \sync_reg[2]\ : label is "yes";
begin
  \out\(0) <= sync(2);
\gray_src[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sync(2),
      O => SR(0)
    );
\sync_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \sync_reg[0]_0\,
      D => '1',
      Q => sync(0)
    );
\sync_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \sync_reg[0]_0\,
      D => sync(0),
      Q => sync(1)
    );
\sync_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \sync_reg[0]_0\,
      D => sync(1),
      Q => sync(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_tdc is
  port (
    ts_word : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk_fx : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_tdc : entity is "tdc";
end ps_Counter_Core_0_1_tdc;

architecture STRUCTURE of ps_Counter_Core_0_1_tdc is
  signal carry_1 : STD_LOGIC;
  signal carry_10 : STD_LOGIC;
  signal carry_11 : STD_LOGIC;
  signal carry_12 : STD_LOGIC;
  signal carry_13 : STD_LOGIC;
  signal carry_14 : STD_LOGIC;
  signal carry_15 : STD_LOGIC;
  signal carry_2 : STD_LOGIC;
  signal carry_3 : STD_LOGIC;
  signal carry_4 : STD_LOGIC;
  signal carry_5 : STD_LOGIC;
  signal carry_6 : STD_LOGIC;
  signal carry_7 : STD_LOGIC;
  signal carry_8 : STD_LOGIC;
  signal carry_9 : STD_LOGIC;
  signal \grp_sum[0][0]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[0][1]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[0][2]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[0][3]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[0][3]_i_3_n_0\ : STD_LOGIC;
  signal \grp_sum[0][3]_i_4_n_0\ : STD_LOGIC;
  signal \grp_sum[1][0]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[1][1]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[1][2]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[1][3]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[1][3]_i_3_n_0\ : STD_LOGIC;
  signal \grp_sum[1][3]_i_4_n_0\ : STD_LOGIC;
  signal \grp_sum[2][0]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[2][1]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[2][2]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[2][3]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[2][3]_i_3_n_0\ : STD_LOGIC;
  signal \grp_sum[2][3]_i_4_n_0\ : STD_LOGIC;
  signal \grp_sum[3][0]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[3][1]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[3][2]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[3][3]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[3][3]_i_3_n_0\ : STD_LOGIC;
  signal \grp_sum[3][3]_i_4_n_0\ : STD_LOGIC;
  signal \grp_sum[4][0]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[4][1]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[4][2]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[4][3]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[4][3]_i_3_n_0\ : STD_LOGIC;
  signal \grp_sum[4][3]_i_4_n_0\ : STD_LOGIC;
  signal \grp_sum[5][0]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[5][1]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[5][2]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[5][3]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[5][3]_i_3_n_0\ : STD_LOGIC;
  signal \grp_sum[5][3]_i_4_n_0\ : STD_LOGIC;
  signal \grp_sum[6][0]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[6][1]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[6][2]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[6][3]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[6][3]_i_3_n_0\ : STD_LOGIC;
  signal \grp_sum[6][3]_i_4_n_0\ : STD_LOGIC;
  signal \grp_sum[7][0]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[7][1]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[7][2]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[7][3]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[7][3]_i_3_n_0\ : STD_LOGIC;
  signal \grp_sum[7][3]_i_4_n_0\ : STD_LOGIC;
  signal \grp_sum_reg[0]_7\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \grp_sum_reg[1]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \grp_sum_reg[2]_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \grp_sum_reg[3]_2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \grp_sum_reg[4]_3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \grp_sum_reg[5]_4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \grp_sum_reg[6]_5\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \grp_sum_reg[7]_6\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal popcount80_return : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal popcount81_return : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal popcount82_return : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal popcount83_return : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal popcount84_return : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal popcount85_return : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal popcount86_return : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal popcount8_return : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sum_comb : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal tap_orig : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal tap_reg : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute async_reg : string;
  attribute async_reg of tap_reg : signal is "true";
  signal tdc_valid_i_1_n_0 : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_n_3\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_10_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_11_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_12_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_13_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_14_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_15_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_16_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_17_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_18_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_19_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_1_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_20_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_21_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_22_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_23_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_24_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_2_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_3_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_4_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_5_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_6_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_7_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_8_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_9_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_n_1\ : STD_LOGIC;
  signal \tdc_value0__1_carry_n_2\ : STD_LOGIC;
  signal \tdc_value0__1_carry_n_3\ : STD_LOGIC;
  signal \tdc_value[0]_i_1_n_0\ : STD_LOGIC;
  signal \tdc_value[1]_i_1_n_0\ : STD_LOGIC;
  signal \tdc_value[2]_i_1_n_0\ : STD_LOGIC;
  signal \tdc_value[3]_i_1_n_0\ : STD_LOGIC;
  signal \tdc_value[4]_i_1_n_0\ : STD_LOGIC;
  signal \tdc_value[5]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_delay_stage[0].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[10].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[11].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[12].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[13].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[14].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[15].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_delay_stage[1].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[2].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[3].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[4].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[5].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[6].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[7].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[8].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[9].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_tdc_value0__1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_tdc_value0__1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \delay_stage[0].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[10].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[11].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[12].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[13].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[14].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[15].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[1].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[2].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[3].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[4].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[5].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[6].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[7].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[8].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[9].carry4_inst\ : label is "PRIMITIVE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \tap_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \tap_reg_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[10]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[11]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[12]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[13]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[14]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[15]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[16]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[17]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[18]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[18]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[19]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[19]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[20]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[20]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[21]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[21]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[22]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[22]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[23]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[23]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[24]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[24]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[25]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[25]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[26]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[26]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[27]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[27]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[28]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[28]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[29]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[29]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[30]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[30]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[31]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[31]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[32]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[32]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[33]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[33]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[34]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[34]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[35]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[35]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[36]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[36]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[37]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[37]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[38]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[38]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[39]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[39]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[40]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[40]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[41]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[41]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[42]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[42]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[43]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[43]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[44]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[44]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[45]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[45]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[46]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[46]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[47]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[47]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[48]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[48]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[49]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[49]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[50]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[50]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[51]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[51]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[52]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[52]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[53]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[53]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[54]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[54]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[55]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[55]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[56]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[56]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[57]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[57]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[58]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[58]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[59]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[59]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[60]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[60]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[61]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[61]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[62]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[62]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[63]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[63]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[6]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[7]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[8]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[9]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[9]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tdc_value0__1_carry__0_i_10\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry__0_i_11\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry__0_i_6\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry__0_i_7\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry__0_i_8\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry__0_i_9\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry_i_10\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry_i_13\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry_i_14\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry_i_15\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry_i_17\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry_i_23\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \tdc_value[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \tdc_value[1]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \tdc_value[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \tdc_value[3]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \tdc_value[4]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \tdc_value[5]_i_1\ : label is "soft_lutpair44";
begin
\delay_stage[0].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => clk_fx,
      CO(3 downto 1) => \NLW_delay_stage[0].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_1,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\delay_stage[10].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_10,
      CO(3 downto 1) => \NLW_delay_stage[10].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_11,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(43 downto 40),
      S(3 downto 0) => B"1111"
    );
\delay_stage[11].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_11,
      CO(3 downto 1) => \NLW_delay_stage[11].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_12,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(47 downto 44),
      S(3 downto 0) => B"1111"
    );
\delay_stage[12].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_12,
      CO(3 downto 1) => \NLW_delay_stage[12].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_13,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(51 downto 48),
      S(3 downto 0) => B"1111"
    );
\delay_stage[13].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_13,
      CO(3 downto 1) => \NLW_delay_stage[13].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_14,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(55 downto 52),
      S(3 downto 0) => B"1111"
    );
\delay_stage[14].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_14,
      CO(3 downto 1) => \NLW_delay_stage[14].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_15,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(59 downto 56),
      S(3 downto 0) => B"1111"
    );
\delay_stage[15].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_15,
      CO(3 downto 0) => \NLW_delay_stage[15].carry4_inst_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(63 downto 60),
      S(3 downto 0) => B"1111"
    );
\delay_stage[1].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_1,
      CO(3 downto 1) => \NLW_delay_stage[1].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_2,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(7 downto 4),
      S(3 downto 0) => B"1111"
    );
\delay_stage[2].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_2,
      CO(3 downto 1) => \NLW_delay_stage[2].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(11 downto 8),
      S(3 downto 0) => B"1111"
    );
\delay_stage[3].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_3,
      CO(3 downto 1) => \NLW_delay_stage[3].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_4,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(15 downto 12),
      S(3 downto 0) => B"1111"
    );
\delay_stage[4].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_4,
      CO(3 downto 1) => \NLW_delay_stage[4].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_5,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(19 downto 16),
      S(3 downto 0) => B"1111"
    );
\delay_stage[5].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_5,
      CO(3 downto 1) => \NLW_delay_stage[5].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_6,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(23 downto 20),
      S(3 downto 0) => B"1111"
    );
\delay_stage[6].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_6,
      CO(3 downto 1) => \NLW_delay_stage[6].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_7,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(27 downto 24),
      S(3 downto 0) => B"1111"
    );
\delay_stage[7].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_7,
      CO(3 downto 1) => \NLW_delay_stage[7].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_8,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(31 downto 28),
      S(3 downto 0) => B"1111"
    );
\delay_stage[8].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_8,
      CO(3 downto 1) => \NLW_delay_stage[8].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_9,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(35 downto 32),
      S(3 downto 0) => B"1111"
    );
\delay_stage[9].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_9,
      CO(3 downto 1) => \NLW_delay_stage[9].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_10,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(39 downto 36),
      S(3 downto 0) => B"1111"
    );
\grp_sum[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => tap_reg(0),
      I1 => tap_reg(7),
      I2 => \grp_sum[0][0]_i_2_n_0\,
      I3 => tap_reg(2),
      I4 => tap_reg(1),
      I5 => tap_reg(3),
      O => popcount8_return(0)
    );
\grp_sum[0][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => tap_reg(6),
      I1 => tap_reg(4),
      I2 => tap_reg(5),
      O => \grp_sum[0][0]_i_2_n_0\
    );
\grp_sum[0][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum[0][3]_i_2_n_0\,
      I1 => \grp_sum[0][1]_i_2_n_0\,
      I2 => \grp_sum[0][3]_i_3_n_0\,
      O => popcount8_return(1)
    );
\grp_sum[0][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => tap_reg(3),
      I1 => tap_reg(2),
      I2 => tap_reg(1),
      I3 => tap_reg(6),
      I4 => tap_reg(5),
      I5 => tap_reg(4),
      O => \grp_sum[0][1]_i_2_n_0\
    );
\grp_sum[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \grp_sum[0][3]_i_2_n_0\,
      I1 => \grp_sum[0][3]_i_3_n_0\,
      I2 => \grp_sum[0][2]_i_2_n_0\,
      I3 => tap_reg(4),
      I4 => tap_reg(5),
      I5 => tap_reg(6),
      O => popcount8_return(2)
    );
\grp_sum[0][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(1),
      I1 => tap_reg(2),
      I2 => tap_reg(3),
      O => \grp_sum[0][2]_i_2_n_0\
    );
\grp_sum[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \grp_sum[0][3]_i_2_n_0\,
      I1 => \grp_sum[0][3]_i_3_n_0\,
      I2 => tap_reg(3),
      I3 => tap_reg(2),
      I4 => tap_reg(1),
      I5 => \grp_sum[0][3]_i_4_n_0\,
      O => popcount8_return(3)
    );
\grp_sum[0][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => tap_reg(2),
      I1 => tap_reg(1),
      I2 => tap_reg(3),
      I3 => tap_reg(0),
      I4 => tap_reg(7),
      I5 => \grp_sum[0][0]_i_2_n_0\,
      O => \grp_sum[0][3]_i_2_n_0\
    );
\grp_sum[0][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => tap_reg(7),
      I1 => tap_reg(0),
      I2 => tap_reg(5),
      I3 => tap_reg(4),
      I4 => tap_reg(6),
      O => \grp_sum[0][3]_i_3_n_0\
    );
\grp_sum[0][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(4),
      I1 => tap_reg(5),
      I2 => tap_reg(6),
      O => \grp_sum[0][3]_i_4_n_0\
    );
\grp_sum[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => tap_reg(8),
      I1 => tap_reg(15),
      I2 => \grp_sum[1][0]_i_2_n_0\,
      I3 => tap_reg(10),
      I4 => tap_reg(9),
      I5 => tap_reg(11),
      O => popcount80_return(0)
    );
\grp_sum[1][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => tap_reg(14),
      I1 => tap_reg(12),
      I2 => tap_reg(13),
      O => \grp_sum[1][0]_i_2_n_0\
    );
\grp_sum[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum[1][3]_i_2_n_0\,
      I1 => \grp_sum[1][1]_i_2_n_0\,
      I2 => \grp_sum[1][3]_i_3_n_0\,
      O => popcount80_return(1)
    );
\grp_sum[1][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => tap_reg(11),
      I1 => tap_reg(10),
      I2 => tap_reg(9),
      I3 => tap_reg(14),
      I4 => tap_reg(13),
      I5 => tap_reg(12),
      O => \grp_sum[1][1]_i_2_n_0\
    );
\grp_sum[1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \grp_sum[1][3]_i_2_n_0\,
      I1 => \grp_sum[1][3]_i_3_n_0\,
      I2 => \grp_sum[1][2]_i_2_n_0\,
      I3 => tap_reg(12),
      I4 => tap_reg(13),
      I5 => tap_reg(14),
      O => popcount80_return(2)
    );
\grp_sum[1][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(9),
      I1 => tap_reg(10),
      I2 => tap_reg(11),
      O => \grp_sum[1][2]_i_2_n_0\
    );
\grp_sum[1][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \grp_sum[1][3]_i_2_n_0\,
      I1 => \grp_sum[1][3]_i_3_n_0\,
      I2 => tap_reg(11),
      I3 => tap_reg(10),
      I4 => tap_reg(9),
      I5 => \grp_sum[1][3]_i_4_n_0\,
      O => popcount80_return(3)
    );
\grp_sum[1][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => tap_reg(10),
      I1 => tap_reg(9),
      I2 => tap_reg(11),
      I3 => tap_reg(8),
      I4 => tap_reg(15),
      I5 => \grp_sum[1][0]_i_2_n_0\,
      O => \grp_sum[1][3]_i_2_n_0\
    );
\grp_sum[1][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => tap_reg(15),
      I1 => tap_reg(8),
      I2 => tap_reg(13),
      I3 => tap_reg(12),
      I4 => tap_reg(14),
      O => \grp_sum[1][3]_i_3_n_0\
    );
\grp_sum[1][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(12),
      I1 => tap_reg(13),
      I2 => tap_reg(14),
      O => \grp_sum[1][3]_i_4_n_0\
    );
\grp_sum[2][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => tap_reg(16),
      I1 => tap_reg(23),
      I2 => \grp_sum[2][0]_i_2_n_0\,
      I3 => tap_reg(18),
      I4 => tap_reg(17),
      I5 => tap_reg(19),
      O => popcount81_return(0)
    );
\grp_sum[2][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => tap_reg(22),
      I1 => tap_reg(20),
      I2 => tap_reg(21),
      O => \grp_sum[2][0]_i_2_n_0\
    );
\grp_sum[2][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum[2][3]_i_2_n_0\,
      I1 => \grp_sum[2][1]_i_2_n_0\,
      I2 => \grp_sum[2][3]_i_3_n_0\,
      O => popcount81_return(1)
    );
\grp_sum[2][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => tap_reg(19),
      I1 => tap_reg(18),
      I2 => tap_reg(17),
      I3 => tap_reg(22),
      I4 => tap_reg(21),
      I5 => tap_reg(20),
      O => \grp_sum[2][1]_i_2_n_0\
    );
\grp_sum[2][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \grp_sum[2][3]_i_2_n_0\,
      I1 => \grp_sum[2][3]_i_3_n_0\,
      I2 => \grp_sum[2][2]_i_2_n_0\,
      I3 => tap_reg(20),
      I4 => tap_reg(21),
      I5 => tap_reg(22),
      O => popcount81_return(2)
    );
\grp_sum[2][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(17),
      I1 => tap_reg(18),
      I2 => tap_reg(19),
      O => \grp_sum[2][2]_i_2_n_0\
    );
\grp_sum[2][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \grp_sum[2][3]_i_2_n_0\,
      I1 => \grp_sum[2][3]_i_3_n_0\,
      I2 => tap_reg(19),
      I3 => tap_reg(18),
      I4 => tap_reg(17),
      I5 => \grp_sum[2][3]_i_4_n_0\,
      O => popcount81_return(3)
    );
\grp_sum[2][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => tap_reg(18),
      I1 => tap_reg(17),
      I2 => tap_reg(19),
      I3 => tap_reg(16),
      I4 => tap_reg(23),
      I5 => \grp_sum[2][0]_i_2_n_0\,
      O => \grp_sum[2][3]_i_2_n_0\
    );
\grp_sum[2][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => tap_reg(23),
      I1 => tap_reg(16),
      I2 => tap_reg(21),
      I3 => tap_reg(20),
      I4 => tap_reg(22),
      O => \grp_sum[2][3]_i_3_n_0\
    );
\grp_sum[2][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(20),
      I1 => tap_reg(21),
      I2 => tap_reg(22),
      O => \grp_sum[2][3]_i_4_n_0\
    );
\grp_sum[3][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => tap_reg(24),
      I1 => tap_reg(31),
      I2 => \grp_sum[3][0]_i_2_n_0\,
      I3 => tap_reg(26),
      I4 => tap_reg(25),
      I5 => tap_reg(27),
      O => popcount82_return(0)
    );
\grp_sum[3][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => tap_reg(30),
      I1 => tap_reg(28),
      I2 => tap_reg(29),
      O => \grp_sum[3][0]_i_2_n_0\
    );
\grp_sum[3][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum[3][3]_i_2_n_0\,
      I1 => \grp_sum[3][1]_i_2_n_0\,
      I2 => \grp_sum[3][3]_i_3_n_0\,
      O => popcount82_return(1)
    );
\grp_sum[3][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => tap_reg(27),
      I1 => tap_reg(26),
      I2 => tap_reg(25),
      I3 => tap_reg(30),
      I4 => tap_reg(29),
      I5 => tap_reg(28),
      O => \grp_sum[3][1]_i_2_n_0\
    );
\grp_sum[3][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \grp_sum[3][3]_i_2_n_0\,
      I1 => \grp_sum[3][3]_i_3_n_0\,
      I2 => \grp_sum[3][2]_i_2_n_0\,
      I3 => tap_reg(28),
      I4 => tap_reg(29),
      I5 => tap_reg(30),
      O => popcount82_return(2)
    );
\grp_sum[3][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(25),
      I1 => tap_reg(26),
      I2 => tap_reg(27),
      O => \grp_sum[3][2]_i_2_n_0\
    );
\grp_sum[3][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \grp_sum[3][3]_i_2_n_0\,
      I1 => \grp_sum[3][3]_i_3_n_0\,
      I2 => tap_reg(27),
      I3 => tap_reg(26),
      I4 => tap_reg(25),
      I5 => \grp_sum[3][3]_i_4_n_0\,
      O => popcount82_return(3)
    );
\grp_sum[3][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => tap_reg(26),
      I1 => tap_reg(25),
      I2 => tap_reg(27),
      I3 => tap_reg(24),
      I4 => tap_reg(31),
      I5 => \grp_sum[3][0]_i_2_n_0\,
      O => \grp_sum[3][3]_i_2_n_0\
    );
\grp_sum[3][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => tap_reg(31),
      I1 => tap_reg(24),
      I2 => tap_reg(29),
      I3 => tap_reg(28),
      I4 => tap_reg(30),
      O => \grp_sum[3][3]_i_3_n_0\
    );
\grp_sum[3][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(28),
      I1 => tap_reg(29),
      I2 => tap_reg(30),
      O => \grp_sum[3][3]_i_4_n_0\
    );
\grp_sum[4][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => tap_reg(32),
      I1 => tap_reg(39),
      I2 => \grp_sum[4][0]_i_2_n_0\,
      I3 => tap_reg(34),
      I4 => tap_reg(33),
      I5 => tap_reg(35),
      O => popcount83_return(0)
    );
\grp_sum[4][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => tap_reg(38),
      I1 => tap_reg(36),
      I2 => tap_reg(37),
      O => \grp_sum[4][0]_i_2_n_0\
    );
\grp_sum[4][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum[4][3]_i_2_n_0\,
      I1 => \grp_sum[4][1]_i_2_n_0\,
      I2 => \grp_sum[4][3]_i_3_n_0\,
      O => popcount83_return(1)
    );
\grp_sum[4][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => tap_reg(35),
      I1 => tap_reg(34),
      I2 => tap_reg(33),
      I3 => tap_reg(38),
      I4 => tap_reg(37),
      I5 => tap_reg(36),
      O => \grp_sum[4][1]_i_2_n_0\
    );
\grp_sum[4][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \grp_sum[4][3]_i_2_n_0\,
      I1 => \grp_sum[4][3]_i_3_n_0\,
      I2 => \grp_sum[4][2]_i_2_n_0\,
      I3 => tap_reg(36),
      I4 => tap_reg(37),
      I5 => tap_reg(38),
      O => popcount83_return(2)
    );
\grp_sum[4][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(33),
      I1 => tap_reg(34),
      I2 => tap_reg(35),
      O => \grp_sum[4][2]_i_2_n_0\
    );
\grp_sum[4][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \grp_sum[4][3]_i_2_n_0\,
      I1 => \grp_sum[4][3]_i_3_n_0\,
      I2 => tap_reg(35),
      I3 => tap_reg(34),
      I4 => tap_reg(33),
      I5 => \grp_sum[4][3]_i_4_n_0\,
      O => popcount83_return(3)
    );
\grp_sum[4][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => tap_reg(34),
      I1 => tap_reg(33),
      I2 => tap_reg(35),
      I3 => tap_reg(32),
      I4 => tap_reg(39),
      I5 => \grp_sum[4][0]_i_2_n_0\,
      O => \grp_sum[4][3]_i_2_n_0\
    );
\grp_sum[4][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => tap_reg(39),
      I1 => tap_reg(32),
      I2 => tap_reg(37),
      I3 => tap_reg(36),
      I4 => tap_reg(38),
      O => \grp_sum[4][3]_i_3_n_0\
    );
\grp_sum[4][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(36),
      I1 => tap_reg(37),
      I2 => tap_reg(38),
      O => \grp_sum[4][3]_i_4_n_0\
    );
\grp_sum[5][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => tap_reg(40),
      I1 => tap_reg(47),
      I2 => \grp_sum[5][0]_i_2_n_0\,
      I3 => tap_reg(42),
      I4 => tap_reg(41),
      I5 => tap_reg(43),
      O => popcount84_return(0)
    );
\grp_sum[5][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => tap_reg(46),
      I1 => tap_reg(44),
      I2 => tap_reg(45),
      O => \grp_sum[5][0]_i_2_n_0\
    );
\grp_sum[5][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum[5][3]_i_2_n_0\,
      I1 => \grp_sum[5][1]_i_2_n_0\,
      I2 => \grp_sum[5][3]_i_3_n_0\,
      O => popcount84_return(1)
    );
\grp_sum[5][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => tap_reg(43),
      I1 => tap_reg(42),
      I2 => tap_reg(41),
      I3 => tap_reg(46),
      I4 => tap_reg(45),
      I5 => tap_reg(44),
      O => \grp_sum[5][1]_i_2_n_0\
    );
\grp_sum[5][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \grp_sum[5][3]_i_2_n_0\,
      I1 => \grp_sum[5][3]_i_3_n_0\,
      I2 => \grp_sum[5][2]_i_2_n_0\,
      I3 => tap_reg(44),
      I4 => tap_reg(45),
      I5 => tap_reg(46),
      O => popcount84_return(2)
    );
\grp_sum[5][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(41),
      I1 => tap_reg(42),
      I2 => tap_reg(43),
      O => \grp_sum[5][2]_i_2_n_0\
    );
\grp_sum[5][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \grp_sum[5][3]_i_2_n_0\,
      I1 => \grp_sum[5][3]_i_3_n_0\,
      I2 => tap_reg(43),
      I3 => tap_reg(42),
      I4 => tap_reg(41),
      I5 => \grp_sum[5][3]_i_4_n_0\,
      O => popcount84_return(3)
    );
\grp_sum[5][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => tap_reg(42),
      I1 => tap_reg(41),
      I2 => tap_reg(43),
      I3 => tap_reg(40),
      I4 => tap_reg(47),
      I5 => \grp_sum[5][0]_i_2_n_0\,
      O => \grp_sum[5][3]_i_2_n_0\
    );
\grp_sum[5][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => tap_reg(47),
      I1 => tap_reg(40),
      I2 => tap_reg(45),
      I3 => tap_reg(44),
      I4 => tap_reg(46),
      O => \grp_sum[5][3]_i_3_n_0\
    );
\grp_sum[5][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(44),
      I1 => tap_reg(45),
      I2 => tap_reg(46),
      O => \grp_sum[5][3]_i_4_n_0\
    );
\grp_sum[6][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => tap_reg(48),
      I1 => tap_reg(55),
      I2 => \grp_sum[6][0]_i_2_n_0\,
      I3 => tap_reg(50),
      I4 => tap_reg(49),
      I5 => tap_reg(51),
      O => popcount85_return(0)
    );
\grp_sum[6][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => tap_reg(54),
      I1 => tap_reg(52),
      I2 => tap_reg(53),
      O => \grp_sum[6][0]_i_2_n_0\
    );
\grp_sum[6][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum[6][3]_i_2_n_0\,
      I1 => \grp_sum[6][1]_i_2_n_0\,
      I2 => \grp_sum[6][3]_i_3_n_0\,
      O => popcount85_return(1)
    );
\grp_sum[6][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => tap_reg(51),
      I1 => tap_reg(50),
      I2 => tap_reg(49),
      I3 => tap_reg(54),
      I4 => tap_reg(53),
      I5 => tap_reg(52),
      O => \grp_sum[6][1]_i_2_n_0\
    );
\grp_sum[6][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \grp_sum[6][3]_i_2_n_0\,
      I1 => \grp_sum[6][3]_i_3_n_0\,
      I2 => \grp_sum[6][2]_i_2_n_0\,
      I3 => tap_reg(52),
      I4 => tap_reg(53),
      I5 => tap_reg(54),
      O => popcount85_return(2)
    );
\grp_sum[6][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(49),
      I1 => tap_reg(50),
      I2 => tap_reg(51),
      O => \grp_sum[6][2]_i_2_n_0\
    );
\grp_sum[6][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \grp_sum[6][3]_i_2_n_0\,
      I1 => \grp_sum[6][3]_i_3_n_0\,
      I2 => tap_reg(51),
      I3 => tap_reg(50),
      I4 => tap_reg(49),
      I5 => \grp_sum[6][3]_i_4_n_0\,
      O => popcount85_return(3)
    );
\grp_sum[6][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => tap_reg(50),
      I1 => tap_reg(49),
      I2 => tap_reg(51),
      I3 => tap_reg(48),
      I4 => tap_reg(55),
      I5 => \grp_sum[6][0]_i_2_n_0\,
      O => \grp_sum[6][3]_i_2_n_0\
    );
\grp_sum[6][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => tap_reg(55),
      I1 => tap_reg(48),
      I2 => tap_reg(53),
      I3 => tap_reg(52),
      I4 => tap_reg(54),
      O => \grp_sum[6][3]_i_3_n_0\
    );
\grp_sum[6][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(52),
      I1 => tap_reg(53),
      I2 => tap_reg(54),
      O => \grp_sum[6][3]_i_4_n_0\
    );
\grp_sum[7][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => tap_reg(56),
      I1 => tap_reg(63),
      I2 => \grp_sum[7][0]_i_2_n_0\,
      I3 => tap_reg(58),
      I4 => tap_reg(57),
      I5 => tap_reg(59),
      O => popcount86_return(0)
    );
\grp_sum[7][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => tap_reg(62),
      I1 => tap_reg(60),
      I2 => tap_reg(61),
      O => \grp_sum[7][0]_i_2_n_0\
    );
\grp_sum[7][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum[7][3]_i_2_n_0\,
      I1 => \grp_sum[7][1]_i_2_n_0\,
      I2 => \grp_sum[7][3]_i_3_n_0\,
      O => popcount86_return(1)
    );
\grp_sum[7][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => tap_reg(59),
      I1 => tap_reg(58),
      I2 => tap_reg(57),
      I3 => tap_reg(62),
      I4 => tap_reg(61),
      I5 => tap_reg(60),
      O => \grp_sum[7][1]_i_2_n_0\
    );
\grp_sum[7][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \grp_sum[7][3]_i_2_n_0\,
      I1 => \grp_sum[7][3]_i_3_n_0\,
      I2 => \grp_sum[7][2]_i_2_n_0\,
      I3 => tap_reg(60),
      I4 => tap_reg(61),
      I5 => tap_reg(62),
      O => popcount86_return(2)
    );
\grp_sum[7][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(57),
      I1 => tap_reg(58),
      I2 => tap_reg(59),
      O => \grp_sum[7][2]_i_2_n_0\
    );
\grp_sum[7][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \grp_sum[7][3]_i_2_n_0\,
      I1 => \grp_sum[7][3]_i_3_n_0\,
      I2 => tap_reg(59),
      I3 => tap_reg(58),
      I4 => tap_reg(57),
      I5 => \grp_sum[7][3]_i_4_n_0\,
      O => popcount86_return(3)
    );
\grp_sum[7][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => tap_reg(58),
      I1 => tap_reg(57),
      I2 => tap_reg(59),
      I3 => tap_reg(56),
      I4 => tap_reg(63),
      I5 => \grp_sum[7][0]_i_2_n_0\,
      O => \grp_sum[7][3]_i_2_n_0\
    );
\grp_sum[7][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => tap_reg(63),
      I1 => tap_reg(56),
      I2 => tap_reg(61),
      I3 => tap_reg(60),
      I4 => tap_reg(62),
      O => \grp_sum[7][3]_i_3_n_0\
    );
\grp_sum[7][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(60),
      I1 => tap_reg(61),
      I2 => tap_reg(62),
      O => \grp_sum[7][3]_i_4_n_0\
    );
\grp_sum_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount8_return(0),
      Q => \grp_sum_reg[0]_7\(0),
      R => SR(0)
    );
\grp_sum_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount8_return(1),
      Q => \grp_sum_reg[0]_7\(1),
      R => SR(0)
    );
\grp_sum_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount8_return(2),
      Q => \grp_sum_reg[0]_7\(2),
      R => SR(0)
    );
\grp_sum_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount8_return(3),
      Q => \grp_sum_reg[0]_7\(3),
      R => SR(0)
    );
\grp_sum_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount80_return(0),
      Q => \grp_sum_reg[1]_0\(0),
      R => SR(0)
    );
\grp_sum_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount80_return(1),
      Q => \grp_sum_reg[1]_0\(1),
      R => SR(0)
    );
\grp_sum_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount80_return(2),
      Q => \grp_sum_reg[1]_0\(2),
      R => SR(0)
    );
\grp_sum_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount80_return(3),
      Q => \grp_sum_reg[1]_0\(3),
      R => SR(0)
    );
\grp_sum_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount81_return(0),
      Q => \grp_sum_reg[2]_1\(0),
      R => SR(0)
    );
\grp_sum_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount81_return(1),
      Q => \grp_sum_reg[2]_1\(1),
      R => SR(0)
    );
\grp_sum_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount81_return(2),
      Q => \grp_sum_reg[2]_1\(2),
      R => SR(0)
    );
\grp_sum_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount81_return(3),
      Q => \grp_sum_reg[2]_1\(3),
      R => SR(0)
    );
\grp_sum_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount82_return(0),
      Q => \grp_sum_reg[3]_2\(0),
      R => SR(0)
    );
\grp_sum_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount82_return(1),
      Q => \grp_sum_reg[3]_2\(1),
      R => SR(0)
    );
\grp_sum_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount82_return(2),
      Q => \grp_sum_reg[3]_2\(2),
      R => SR(0)
    );
\grp_sum_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount82_return(3),
      Q => \grp_sum_reg[3]_2\(3),
      R => SR(0)
    );
\grp_sum_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount83_return(0),
      Q => \grp_sum_reg[4]_3\(0),
      R => SR(0)
    );
\grp_sum_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount83_return(1),
      Q => \grp_sum_reg[4]_3\(1),
      R => SR(0)
    );
\grp_sum_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount83_return(2),
      Q => \grp_sum_reg[4]_3\(2),
      R => SR(0)
    );
\grp_sum_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount83_return(3),
      Q => \grp_sum_reg[4]_3\(3),
      R => SR(0)
    );
\grp_sum_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount84_return(0),
      Q => \grp_sum_reg[5]_4\(0),
      R => SR(0)
    );
\grp_sum_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount84_return(1),
      Q => \grp_sum_reg[5]_4\(1),
      R => SR(0)
    );
\grp_sum_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount84_return(2),
      Q => \grp_sum_reg[5]_4\(2),
      R => SR(0)
    );
\grp_sum_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount84_return(3),
      Q => \grp_sum_reg[5]_4\(3),
      R => SR(0)
    );
\grp_sum_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount85_return(0),
      Q => \grp_sum_reg[6]_5\(0),
      R => SR(0)
    );
\grp_sum_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount85_return(1),
      Q => \grp_sum_reg[6]_5\(1),
      R => SR(0)
    );
\grp_sum_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount85_return(2),
      Q => \grp_sum_reg[6]_5\(2),
      R => SR(0)
    );
\grp_sum_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount85_return(3),
      Q => \grp_sum_reg[6]_5\(3),
      R => SR(0)
    );
\grp_sum_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount86_return(0),
      Q => \grp_sum_reg[7]_6\(0),
      R => SR(0)
    );
\grp_sum_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount86_return(1),
      Q => \grp_sum_reg[7]_6\(1),
      R => SR(0)
    );
\grp_sum_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount86_return(2),
      Q => \grp_sum_reg[7]_6\(2),
      R => SR(0)
    );
\grp_sum_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => popcount86_return(3),
      Q => \grp_sum_reg[7]_6\(3),
      R => SR(0)
    );
\tap_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(0),
      Q => tap_reg(0),
      R => SR(0)
    );
\tap_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(10),
      Q => tap_reg(10),
      R => SR(0)
    );
\tap_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(11),
      Q => tap_reg(11),
      R => SR(0)
    );
\tap_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(12),
      Q => tap_reg(12),
      R => SR(0)
    );
\tap_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(13),
      Q => tap_reg(13),
      R => SR(0)
    );
\tap_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(14),
      Q => tap_reg(14),
      R => SR(0)
    );
\tap_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(15),
      Q => tap_reg(15),
      R => SR(0)
    );
\tap_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(16),
      Q => tap_reg(16),
      R => SR(0)
    );
\tap_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(17),
      Q => tap_reg(17),
      R => SR(0)
    );
\tap_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(18),
      Q => tap_reg(18),
      R => SR(0)
    );
\tap_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(19),
      Q => tap_reg(19),
      R => SR(0)
    );
\tap_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(1),
      Q => tap_reg(1),
      R => SR(0)
    );
\tap_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(20),
      Q => tap_reg(20),
      R => SR(0)
    );
\tap_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(21),
      Q => tap_reg(21),
      R => SR(0)
    );
\tap_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(22),
      Q => tap_reg(22),
      R => SR(0)
    );
\tap_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(23),
      Q => tap_reg(23),
      R => SR(0)
    );
\tap_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(24),
      Q => tap_reg(24),
      R => SR(0)
    );
\tap_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(25),
      Q => tap_reg(25),
      R => SR(0)
    );
\tap_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(26),
      Q => tap_reg(26),
      R => SR(0)
    );
\tap_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(27),
      Q => tap_reg(27),
      R => SR(0)
    );
\tap_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(28),
      Q => tap_reg(28),
      R => SR(0)
    );
\tap_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(29),
      Q => tap_reg(29),
      R => SR(0)
    );
\tap_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(2),
      Q => tap_reg(2),
      R => SR(0)
    );
\tap_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(30),
      Q => tap_reg(30),
      R => SR(0)
    );
\tap_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(31),
      Q => tap_reg(31),
      R => SR(0)
    );
\tap_reg_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(32),
      Q => tap_reg(32),
      R => SR(0)
    );
\tap_reg_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(33),
      Q => tap_reg(33),
      R => SR(0)
    );
\tap_reg_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(34),
      Q => tap_reg(34),
      R => SR(0)
    );
\tap_reg_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(35),
      Q => tap_reg(35),
      R => SR(0)
    );
\tap_reg_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(36),
      Q => tap_reg(36),
      R => SR(0)
    );
\tap_reg_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(37),
      Q => tap_reg(37),
      R => SR(0)
    );
\tap_reg_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(38),
      Q => tap_reg(38),
      R => SR(0)
    );
\tap_reg_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(39),
      Q => tap_reg(39),
      R => SR(0)
    );
\tap_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(3),
      Q => tap_reg(3),
      R => SR(0)
    );
\tap_reg_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(40),
      Q => tap_reg(40),
      R => SR(0)
    );
\tap_reg_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(41),
      Q => tap_reg(41),
      R => SR(0)
    );
\tap_reg_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(42),
      Q => tap_reg(42),
      R => SR(0)
    );
\tap_reg_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(43),
      Q => tap_reg(43),
      R => SR(0)
    );
\tap_reg_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(44),
      Q => tap_reg(44),
      R => SR(0)
    );
\tap_reg_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(45),
      Q => tap_reg(45),
      R => SR(0)
    );
\tap_reg_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(46),
      Q => tap_reg(46),
      R => SR(0)
    );
\tap_reg_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(47),
      Q => tap_reg(47),
      R => SR(0)
    );
\tap_reg_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(48),
      Q => tap_reg(48),
      R => SR(0)
    );
\tap_reg_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(49),
      Q => tap_reg(49),
      R => SR(0)
    );
\tap_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(4),
      Q => tap_reg(4),
      R => SR(0)
    );
\tap_reg_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(50),
      Q => tap_reg(50),
      R => SR(0)
    );
\tap_reg_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(51),
      Q => tap_reg(51),
      R => SR(0)
    );
\tap_reg_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(52),
      Q => tap_reg(52),
      R => SR(0)
    );
\tap_reg_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(53),
      Q => tap_reg(53),
      R => SR(0)
    );
\tap_reg_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(54),
      Q => tap_reg(54),
      R => SR(0)
    );
\tap_reg_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(55),
      Q => tap_reg(55),
      R => SR(0)
    );
\tap_reg_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(56),
      Q => tap_reg(56),
      R => SR(0)
    );
\tap_reg_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(57),
      Q => tap_reg(57),
      R => SR(0)
    );
\tap_reg_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(58),
      Q => tap_reg(58),
      R => SR(0)
    );
\tap_reg_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(59),
      Q => tap_reg(59),
      R => SR(0)
    );
\tap_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(5),
      Q => tap_reg(5),
      R => SR(0)
    );
\tap_reg_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(60),
      Q => tap_reg(60),
      R => SR(0)
    );
\tap_reg_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(61),
      Q => tap_reg(61),
      R => SR(0)
    );
\tap_reg_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(62),
      Q => tap_reg(62),
      R => SR(0)
    );
\tap_reg_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(63),
      Q => tap_reg(63),
      R => SR(0)
    );
\tap_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(6),
      Q => tap_reg(6),
      R => SR(0)
    );
\tap_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(7),
      Q => tap_reg(7),
      R => SR(0)
    );
\tap_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(8),
      Q => tap_reg(8),
      R => SR(0)
    );
\tap_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tap_orig(9),
      Q => tap_reg(9),
      R => SR(0)
    );
tdc_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sum_comb(5),
      I1 => sum_comb(4),
      I2 => sum_comb(3),
      I3 => sum_comb(2),
      I4 => sum_comb(0),
      I5 => sum_comb(1),
      O => tdc_valid_i_1_n_0
    );
tdc_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => tdc_valid_i_1_n_0,
      Q => ts_word(0),
      R => SR(0)
    );
\tdc_value0__1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tdc_value0__1_carry_n_0\,
      CO(2) => \tdc_value0__1_carry_n_1\,
      CO(1) => \tdc_value0__1_carry_n_2\,
      CO(0) => \tdc_value0__1_carry_n_3\,
      CYINIT => '0',
      DI(3) => \tdc_value0__1_carry_i_1_n_0\,
      DI(2) => \tdc_value0__1_carry_i_2_n_0\,
      DI(1) => \tdc_value0__1_carry_i_3_n_0\,
      DI(0) => \tdc_value0__1_carry_i_4_n_0\,
      O(3 downto 0) => sum_comb(3 downto 0),
      S(3) => \tdc_value0__1_carry_i_5_n_0\,
      S(2) => \tdc_value0__1_carry_i_6_n_0\,
      S(1) => \tdc_value0__1_carry_i_7_n_0\,
      S(0) => \tdc_value0__1_carry_i_8_n_0\
    );
\tdc_value0__1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \tdc_value0__1_carry_n_0\,
      CO(3) => \NLW_tdc_value0__1_carry__0_CO_UNCONNECTED\(3),
      CO(2) => sum_comb(6),
      CO(1) => \NLW_tdc_value0__1_carry__0_CO_UNCONNECTED\(1),
      CO(0) => \tdc_value0__1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \tdc_value0__1_carry__0_i_1_n_0\,
      DI(0) => \tdc_value0__1_carry__0_i_2_n_0\,
      O(3 downto 2) => \NLW_tdc_value0__1_carry__0_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => sum_comb(5 downto 4),
      S(3 downto 2) => B"01",
      S(1) => \tdc_value0__1_carry__0_i_3_n_0\,
      S(0) => \tdc_value0__1_carry__0_i_4_n_0\
    );
\tdc_value0__1_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \tdc_value0__1_carry__0_i_5_n_0\,
      I1 => \tdc_value0__1_carry__0_i_6_n_0\,
      I2 => \grp_sum_reg[7]_6\(3),
      I3 => \grp_sum_reg[0]_7\(3),
      I4 => \tdc_value0__1_carry__0_i_7_n_0\,
      O => \tdc_value0__1_carry__0_i_1_n_0\
    );
\tdc_value0__1_carry__0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \grp_sum_reg[3]_2\(2),
      I1 => \grp_sum_reg[2]_1\(2),
      I2 => \grp_sum_reg[1]_0\(2),
      I3 => \tdc_value0__1_carry_i_22_n_0\,
      I4 => \tdc_value0__1_carry_i_21_n_0\,
      O => \tdc_value0__1_carry__0_i_10_n_0\
    );
\tdc_value0__1_carry__0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \grp_sum_reg[3]_2\(3),
      I1 => \grp_sum_reg[2]_1\(3),
      I2 => \grp_sum_reg[1]_0\(3),
      O => \tdc_value0__1_carry__0_i_11_n_0\
    );
\tdc_value0__1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_16_n_0\,
      I1 => \tdc_value0__1_carry_i_14_n_0\,
      I2 => \tdc_value0__1_carry_i_15_n_0\,
      O => \tdc_value0__1_carry__0_i_2_n_0\
    );
\tdc_value0__1_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"177E7EE8"
    )
        port map (
      I0 => \tdc_value0__1_carry__0_i_8_n_0\,
      I1 => \tdc_value0__1_carry__0_i_5_n_0\,
      I2 => \tdc_value0__1_carry__0_i_9_n_0\,
      I3 => \tdc_value0__1_carry__0_i_10_n_0\,
      I4 => \tdc_value0__1_carry__0_i_11_n_0\,
      O => \tdc_value0__1_carry__0_i_3_n_0\
    );
\tdc_value0__1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669699999969666"
    )
        port map (
      I0 => \tdc_value0__1_carry__0_i_2_n_0\,
      I1 => \tdc_value0__1_carry__0_i_6_n_0\,
      I2 => \grp_sum_reg[7]_6\(3),
      I3 => \grp_sum_reg[0]_7\(3),
      I4 => \tdc_value0__1_carry__0_i_7_n_0\,
      I5 => \tdc_value0__1_carry__0_i_5_n_0\,
      O => \tdc_value0__1_carry__0_i_4_n_0\
    );
\tdc_value0__1_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA80FFFF0000EA80"
    )
        port map (
      I0 => \grp_sum_reg[0]_7\(2),
      I1 => \grp_sum_reg[7]_6\(1),
      I2 => \grp_sum_reg[0]_7\(1),
      I3 => \grp_sum_reg[7]_6\(2),
      I4 => \tdc_value0__1_carry_i_24_n_0\,
      I5 => \tdc_value0__1_carry_i_23_n_0\,
      O => \tdc_value0__1_carry__0_i_5_n_0\
    );
\tdc_value0__1_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A995566A"
    )
        port map (
      I0 => \tdc_value0__1_carry__0_i_9_n_0\,
      I1 => \grp_sum_reg[3]_2\(3),
      I2 => \grp_sum_reg[2]_1\(3),
      I3 => \grp_sum_reg[1]_0\(3),
      I4 => \tdc_value0__1_carry__0_i_10_n_0\,
      O => \tdc_value0__1_carry__0_i_6_n_0\
    );
\tdc_value0__1_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum_reg[6]_5\(3),
      I1 => \grp_sum_reg[4]_3\(3),
      I2 => \grp_sum_reg[5]_4\(3),
      O => \tdc_value0__1_carry__0_i_7_n_0\
    );
\tdc_value0__1_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => \grp_sum_reg[6]_5\(3),
      I1 => \grp_sum_reg[4]_3\(3),
      I2 => \grp_sum_reg[5]_4\(3),
      I3 => \grp_sum_reg[0]_7\(3),
      I4 => \grp_sum_reg[7]_6\(3),
      O => \tdc_value0__1_carry__0_i_8_n_0\
    );
\tdc_value0__1_carry__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \grp_sum_reg[6]_5\(3),
      I1 => \grp_sum_reg[5]_4\(3),
      I2 => \grp_sum_reg[4]_3\(3),
      O => \tdc_value0__1_carry__0_i_9_n_0\
    );
\tdc_value0__1_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_9_n_0\,
      I1 => \tdc_value0__1_carry_i_10_n_0\,
      I2 => \tdc_value0__1_carry_i_11_n_0\,
      O => \tdc_value0__1_carry_i_1_n_0\
    );
\tdc_value0__1_carry_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_19_n_0\,
      I1 => \tdc_value0__1_carry_i_20_n_0\,
      I2 => \grp_sum_reg[6]_5\(2),
      I3 => \grp_sum_reg[4]_3\(2),
      I4 => \grp_sum_reg[5]_4\(2),
      O => \tdc_value0__1_carry_i_10_n_0\
    );
\tdc_value0__1_carry_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => \grp_sum_reg[1]_0\(1),
      I1 => \grp_sum_reg[2]_1\(1),
      I2 => \grp_sum_reg[3]_2\(1),
      I3 => \grp_sum_reg[4]_3\(1),
      I4 => \grp_sum_reg[5]_4\(1),
      I5 => \grp_sum_reg[6]_5\(1),
      O => \tdc_value0__1_carry_i_11_n_0\
    );
\tdc_value0__1_carry_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_18_n_0\,
      I1 => \grp_sum_reg[0]_7\(1),
      I2 => \grp_sum_reg[7]_6\(1),
      I3 => \grp_sum_reg[6]_5\(1),
      I4 => \grp_sum_reg[4]_3\(1),
      I5 => \grp_sum_reg[5]_4\(1),
      O => \tdc_value0__1_carry_i_12_n_0\
    );
\tdc_value0__1_carry_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \grp_sum_reg[6]_5\(0),
      I1 => \grp_sum_reg[5]_4\(0),
      I2 => \grp_sum_reg[4]_3\(0),
      O => \tdc_value0__1_carry_i_13_n_0\
    );
\tdc_value0__1_carry_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBBE8228"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_19_n_0\,
      I1 => \grp_sum_reg[5]_4\(2),
      I2 => \grp_sum_reg[4]_3\(2),
      I3 => \grp_sum_reg[6]_5\(2),
      I4 => \tdc_value0__1_carry_i_20_n_0\,
      O => \tdc_value0__1_carry_i_14_n_0\
    );
\tdc_value0__1_carry_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \grp_sum_reg[1]_0\(2),
      I1 => \grp_sum_reg[2]_1\(2),
      I2 => \grp_sum_reg[3]_2\(2),
      I3 => \tdc_value0__1_carry_i_21_n_0\,
      I4 => \tdc_value0__1_carry_i_22_n_0\,
      O => \tdc_value0__1_carry_i_15_n_0\
    );
\tdc_value0__1_carry_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"157FEA80EA80157F"
    )
        port map (
      I0 => \grp_sum_reg[0]_7\(2),
      I1 => \grp_sum_reg[7]_6\(1),
      I2 => \grp_sum_reg[0]_7\(1),
      I3 => \grp_sum_reg[7]_6\(2),
      I4 => \tdc_value0__1_carry_i_23_n_0\,
      I5 => \tdc_value0__1_carry_i_24_n_0\,
      O => \tdc_value0__1_carry_i_16_n_0\
    );
\tdc_value0__1_carry_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum_reg[6]_5\(0),
      I1 => \grp_sum_reg[4]_3\(0),
      I2 => \grp_sum_reg[5]_4\(0),
      O => \tdc_value0__1_carry_i_17_n_0\
    );
\tdc_value0__1_carry_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum_reg[3]_2\(1),
      I1 => \grp_sum_reg[1]_0\(1),
      I2 => \grp_sum_reg[2]_1\(1),
      O => \tdc_value0__1_carry_i_18_n_0\
    );
\tdc_value0__1_carry_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum_reg[3]_2\(2),
      I1 => \grp_sum_reg[1]_0\(2),
      I2 => \grp_sum_reg[2]_1\(2),
      O => \tdc_value0__1_carry_i_19_n_0\
    );
\tdc_value0__1_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_12_n_0\,
      I1 => \tdc_value0__1_carry_i_13_n_0\,
      I2 => \grp_sum_reg[3]_2\(0),
      I3 => \grp_sum_reg[2]_1\(0),
      I4 => \grp_sum_reg[1]_0\(0),
      O => \tdc_value0__1_carry_i_2_n_0\
    );
\tdc_value0__1_carry_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \grp_sum_reg[7]_6\(1),
      I1 => \grp_sum_reg[0]_7\(1),
      I2 => \grp_sum_reg[7]_6\(2),
      I3 => \grp_sum_reg[0]_7\(2),
      O => \tdc_value0__1_carry_i_20_n_0\
    );
\tdc_value0__1_carry_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum_reg[3]_2\(3),
      I1 => \grp_sum_reg[1]_0\(3),
      I2 => \grp_sum_reg[2]_1\(3),
      O => \tdc_value0__1_carry_i_21_n_0\
    );
\tdc_value0__1_carry_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \grp_sum_reg[6]_5\(2),
      I1 => \grp_sum_reg[5]_4\(2),
      I2 => \grp_sum_reg[4]_3\(2),
      O => \tdc_value0__1_carry_i_22_n_0\
    );
\tdc_value0__1_carry_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \grp_sum_reg[5]_4\(3),
      I1 => \grp_sum_reg[4]_3\(3),
      I2 => \grp_sum_reg[6]_5\(3),
      I3 => \grp_sum_reg[7]_6\(3),
      I4 => \grp_sum_reg[0]_7\(3),
      O => \tdc_value0__1_carry_i_23_n_0\
    );
\tdc_value0__1_carry_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717FF17FFFFFF"
    )
        port map (
      I0 => \grp_sum_reg[1]_0\(1),
      I1 => \grp_sum_reg[2]_1\(1),
      I2 => \grp_sum_reg[3]_2\(1),
      I3 => \grp_sum_reg[4]_3\(1),
      I4 => \grp_sum_reg[5]_4\(1),
      I5 => \grp_sum_reg[6]_5\(1),
      O => \tdc_value0__1_carry_i_24_n_0\
    );
\tdc_value0__1_carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_12_n_0\,
      I1 => \tdc_value0__1_carry_i_13_n_0\,
      I2 => \grp_sum_reg[3]_2\(0),
      I3 => \grp_sum_reg[2]_1\(0),
      I4 => \grp_sum_reg[1]_0\(0),
      O => \tdc_value0__1_carry_i_3_n_0\
    );
\tdc_value0__1_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \grp_sum_reg[5]_4\(0),
      I1 => \grp_sum_reg[4]_3\(0),
      I2 => \grp_sum_reg[6]_5\(0),
      I3 => \grp_sum_reg[7]_6\(0),
      I4 => \grp_sum_reg[0]_7\(0),
      O => \tdc_value0__1_carry_i_4_n_0\
    );
\tdc_value0__1_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_11_n_0\,
      I1 => \tdc_value0__1_carry_i_10_n_0\,
      I2 => \tdc_value0__1_carry_i_9_n_0\,
      I3 => \tdc_value0__1_carry_i_14_n_0\,
      I4 => \tdc_value0__1_carry_i_15_n_0\,
      I5 => \tdc_value0__1_carry_i_16_n_0\,
      O => \tdc_value0__1_carry_i_5_n_0\
    );
\tdc_value0__1_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_2_n_0\,
      I1 => \tdc_value0__1_carry_i_10_n_0\,
      I2 => \tdc_value0__1_carry_i_11_n_0\,
      I3 => \tdc_value0__1_carry_i_9_n_0\,
      O => \tdc_value0__1_carry_i_6_n_0\
    );
\tdc_value0__1_carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566A6A566A56566A"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_3_n_0\,
      I1 => \grp_sum_reg[0]_7\(0),
      I2 => \grp_sum_reg[7]_6\(0),
      I3 => \grp_sum_reg[6]_5\(0),
      I4 => \grp_sum_reg[4]_3\(0),
      I5 => \grp_sum_reg[5]_4\(0),
      O => \tdc_value0__1_carry_i_7_n_0\
    );
\tdc_value0__1_carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \grp_sum_reg[0]_7\(0),
      I1 => \grp_sum_reg[7]_6\(0),
      I2 => \tdc_value0__1_carry_i_17_n_0\,
      I3 => \grp_sum_reg[2]_1\(0),
      I4 => \grp_sum_reg[1]_0\(0),
      I5 => \grp_sum_reg[3]_2\(0),
      O => \tdc_value0__1_carry_i_8_n_0\
    );
\tdc_value0__1_carry_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8228EBBEEBBE8228"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_18_n_0\,
      I1 => \grp_sum_reg[5]_4\(1),
      I2 => \grp_sum_reg[4]_3\(1),
      I3 => \grp_sum_reg[6]_5\(1),
      I4 => \grp_sum_reg[7]_6\(1),
      I5 => \grp_sum_reg[0]_7\(1),
      O => \tdc_value0__1_carry_i_9_n_0\
    );
\tdc_value[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum_comb(0),
      I1 => sum_comb(6),
      O => \tdc_value[0]_i_1_n_0\
    );
\tdc_value[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum_comb(1),
      I1 => sum_comb(6),
      O => \tdc_value[1]_i_1_n_0\
    );
\tdc_value[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum_comb(2),
      I1 => sum_comb(6),
      O => \tdc_value[2]_i_1_n_0\
    );
\tdc_value[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum_comb(3),
      I1 => sum_comb(6),
      O => \tdc_value[3]_i_1_n_0\
    );
\tdc_value[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum_comb(4),
      I1 => sum_comb(6),
      O => \tdc_value[4]_i_1_n_0\
    );
\tdc_value[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sum_comb(5),
      I1 => sum_comb(6),
      O => \tdc_value[5]_i_1_n_0\
    );
\tdc_value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \tdc_value[0]_i_1_n_0\,
      Q => ts_word(1),
      R => SR(0)
    );
\tdc_value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \tdc_value[1]_i_1_n_0\,
      Q => ts_word(2),
      R => SR(0)
    );
\tdc_value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \tdc_value[2]_i_1_n_0\,
      Q => ts_word(3),
      R => SR(0)
    );
\tdc_value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \tdc_value[3]_i_1_n_0\,
      Q => ts_word(4),
      R => SR(0)
    );
\tdc_value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \tdc_value[4]_i_1_n_0\,
      Q => ts_word(5),
      R => SR(0)
    );
\tdc_value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \tdc_value[5]_i_1_n_0\,
      Q => ts_word(6),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_tdc_11 is
  port (
    tdc_vld : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \tap_reg_reg[3]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_fx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_tdc_11 : entity is "tdc";
end ps_Counter_Core_0_1_tdc_11;

architecture STRUCTURE of ps_Counter_Core_0_1_tdc_11 is
  signal carry_1 : STD_LOGIC;
  signal carry_10 : STD_LOGIC;
  signal carry_11 : STD_LOGIC;
  signal carry_12 : STD_LOGIC;
  signal carry_13 : STD_LOGIC;
  signal carry_14 : STD_LOGIC;
  signal carry_15 : STD_LOGIC;
  signal carry_2 : STD_LOGIC;
  signal carry_3 : STD_LOGIC;
  signal carry_4 : STD_LOGIC;
  signal carry_5 : STD_LOGIC;
  signal carry_6 : STD_LOGIC;
  signal carry_7 : STD_LOGIC;
  signal carry_8 : STD_LOGIC;
  signal carry_9 : STD_LOGIC;
  signal \grp_sum[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[0][0]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[0][1]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[0][2]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[0][3]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[0][3]_i_3_n_0\ : STD_LOGIC;
  signal \grp_sum[0][3]_i_4_n_0\ : STD_LOGIC;
  signal \grp_sum[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[1][0]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[1][1]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[1][2]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[1][3]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[1][3]_i_3_n_0\ : STD_LOGIC;
  signal \grp_sum[1][3]_i_4_n_0\ : STD_LOGIC;
  signal \grp_sum[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[2][0]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[2][1]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[2][2]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[2][2]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[2][3]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[2][3]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[2][3]_i_3_n_0\ : STD_LOGIC;
  signal \grp_sum[2][3]_i_4_n_0\ : STD_LOGIC;
  signal \grp_sum[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[3][0]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[3][1]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[3][2]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[3][2]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[3][3]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[3][3]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[3][3]_i_3_n_0\ : STD_LOGIC;
  signal \grp_sum[3][3]_i_4_n_0\ : STD_LOGIC;
  signal \grp_sum[4][0]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[4][0]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[4][1]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[4][1]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[4][2]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[4][2]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[4][3]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[4][3]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[4][3]_i_3_n_0\ : STD_LOGIC;
  signal \grp_sum[4][3]_i_4_n_0\ : STD_LOGIC;
  signal \grp_sum[5][0]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[5][0]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[5][1]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[5][1]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[5][2]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[5][2]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[5][3]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[5][3]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[5][3]_i_3_n_0\ : STD_LOGIC;
  signal \grp_sum[5][3]_i_4_n_0\ : STD_LOGIC;
  signal \grp_sum[6][0]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[6][0]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[6][1]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[6][1]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[6][2]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[6][2]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[6][3]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[6][3]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[6][3]_i_3_n_0\ : STD_LOGIC;
  signal \grp_sum[6][3]_i_4_n_0\ : STD_LOGIC;
  signal \grp_sum[7][0]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[7][0]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[7][1]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[7][1]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[7][2]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[7][2]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[7][3]_i_1_n_0\ : STD_LOGIC;
  signal \grp_sum[7][3]_i_2_n_0\ : STD_LOGIC;
  signal \grp_sum[7][3]_i_3_n_0\ : STD_LOGIC;
  signal \grp_sum[7][3]_i_4_n_0\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[4][2]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[4][3]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[5][2]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[5][3]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[6][2]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[6][3]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[7][2]\ : STD_LOGIC;
  signal \grp_sum_reg_n_0_[7][3]\ : STD_LOGIC;
  signal tap_orig : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal tap_reg : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute async_reg : string;
  attribute async_reg of tap_reg : signal is "true";
  signal \tdc_valid_i_1__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_10__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_11__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_i_9__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_n_1\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_n_3\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_n_6\ : STD_LOGIC;
  signal \tdc_value0__1_carry__0_n_7\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_10__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_11__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_12__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_13__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_14__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_15__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_16__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_17__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_18__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_19__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_20__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_21__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_22__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_23__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_24__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_8__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_i_9__0_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_n_0\ : STD_LOGIC;
  signal \tdc_value0__1_carry_n_1\ : STD_LOGIC;
  signal \tdc_value0__1_carry_n_2\ : STD_LOGIC;
  signal \tdc_value0__1_carry_n_3\ : STD_LOGIC;
  signal \tdc_value0__1_carry_n_4\ : STD_LOGIC;
  signal \tdc_value0__1_carry_n_5\ : STD_LOGIC;
  signal \tdc_value0__1_carry_n_6\ : STD_LOGIC;
  signal \tdc_value0__1_carry_n_7\ : STD_LOGIC;
  signal \tdc_value[0]_i_1_n_0\ : STD_LOGIC;
  signal \tdc_value[1]_i_1_n_0\ : STD_LOGIC;
  signal \tdc_value[2]_i_1_n_0\ : STD_LOGIC;
  signal \tdc_value[3]_i_1_n_0\ : STD_LOGIC;
  signal \tdc_value[4]_i_1_n_0\ : STD_LOGIC;
  signal \tdc_value[5]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_delay_stage[0].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[10].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[11].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[12].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[13].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[14].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[15].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_delay_stage[1].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[2].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[3].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[4].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[5].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[6].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[7].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[8].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_stage[9].carry4_inst_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_tdc_value0__1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_tdc_value0__1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \delay_stage[0].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[10].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[11].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[12].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[13].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[14].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[15].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[1].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[2].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[3].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[4].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[5].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[6].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[7].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[8].carry4_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \delay_stage[9].carry4_inst\ : label is "PRIMITIVE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \tap_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \tap_reg_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[10]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[11]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[12]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[13]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[14]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[15]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[16]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[17]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[18]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[18]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[19]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[19]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[20]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[20]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[21]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[21]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[22]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[22]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[23]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[23]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[24]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[24]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[25]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[25]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[26]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[26]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[27]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[27]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[28]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[28]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[29]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[29]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[30]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[30]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[31]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[31]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[32]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[32]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[33]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[33]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[34]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[34]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[35]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[35]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[36]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[36]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[37]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[37]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[38]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[38]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[39]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[39]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[40]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[40]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[41]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[41]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[42]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[42]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[43]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[43]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[44]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[44]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[45]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[45]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[46]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[46]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[47]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[47]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[48]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[48]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[49]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[49]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[50]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[50]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[51]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[51]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[52]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[52]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[53]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[53]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[54]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[54]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[55]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[55]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[56]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[56]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[57]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[57]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[58]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[58]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[59]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[59]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[60]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[60]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[61]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[61]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[62]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[62]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[63]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[63]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[6]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[7]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[8]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tap_reg_reg[9]\ : label is std.standard.true;
  attribute KEEP of \tap_reg_reg[9]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tdc_value0__1_carry__0_i_10__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry__0_i_11__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry__0_i_6__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry__0_i_7__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry__0_i_8__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry__0_i_9__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry_i_10__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry_i_13__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry_i_14__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry_i_15__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry_i_17__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tdc_value0__1_carry_i_23__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tdc_value[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tdc_value[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tdc_value[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tdc_value[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tdc_value[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tdc_value[5]_i_1\ : label is "soft_lutpair8";
begin
\delay_stage[0].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => \tap_reg_reg[3]_0\,
      CO(3 downto 1) => \NLW_delay_stage[0].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_1,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\delay_stage[10].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_10,
      CO(3 downto 1) => \NLW_delay_stage[10].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_11,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(43 downto 40),
      S(3 downto 0) => B"1111"
    );
\delay_stage[11].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_11,
      CO(3 downto 1) => \NLW_delay_stage[11].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_12,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(47 downto 44),
      S(3 downto 0) => B"1111"
    );
\delay_stage[12].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_12,
      CO(3 downto 1) => \NLW_delay_stage[12].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_13,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(51 downto 48),
      S(3 downto 0) => B"1111"
    );
\delay_stage[13].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_13,
      CO(3 downto 1) => \NLW_delay_stage[13].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_14,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(55 downto 52),
      S(3 downto 0) => B"1111"
    );
\delay_stage[14].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_14,
      CO(3 downto 1) => \NLW_delay_stage[14].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_15,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(59 downto 56),
      S(3 downto 0) => B"1111"
    );
\delay_stage[15].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_15,
      CO(3 downto 0) => \NLW_delay_stage[15].carry4_inst_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(63 downto 60),
      S(3 downto 0) => B"1111"
    );
\delay_stage[1].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_1,
      CO(3 downto 1) => \NLW_delay_stage[1].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_2,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(7 downto 4),
      S(3 downto 0) => B"1111"
    );
\delay_stage[2].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_2,
      CO(3 downto 1) => \NLW_delay_stage[2].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(11 downto 8),
      S(3 downto 0) => B"1111"
    );
\delay_stage[3].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_3,
      CO(3 downto 1) => \NLW_delay_stage[3].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_4,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(15 downto 12),
      S(3 downto 0) => B"1111"
    );
\delay_stage[4].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_4,
      CO(3 downto 1) => \NLW_delay_stage[4].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_5,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(19 downto 16),
      S(3 downto 0) => B"1111"
    );
\delay_stage[5].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_5,
      CO(3 downto 1) => \NLW_delay_stage[5].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_6,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(23 downto 20),
      S(3 downto 0) => B"1111"
    );
\delay_stage[6].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_6,
      CO(3 downto 1) => \NLW_delay_stage[6].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_7,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(27 downto 24),
      S(3 downto 0) => B"1111"
    );
\delay_stage[7].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_7,
      CO(3 downto 1) => \NLW_delay_stage[7].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_8,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(31 downto 28),
      S(3 downto 0) => B"1111"
    );
\delay_stage[8].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_8,
      CO(3 downto 1) => \NLW_delay_stage[8].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_9,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(35 downto 32),
      S(3 downto 0) => B"1111"
    );
\delay_stage[9].carry4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_9,
      CO(3 downto 1) => \NLW_delay_stage[9].carry4_inst_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_10,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tap_orig(39 downto 36),
      S(3 downto 0) => B"1111"
    );
\grp_sum[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => tap_reg(0),
      I1 => tap_reg(7),
      I2 => \grp_sum[0][0]_i_2_n_0\,
      I3 => tap_reg(2),
      I4 => tap_reg(1),
      I5 => tap_reg(3),
      O => \grp_sum[0][0]_i_1_n_0\
    );
\grp_sum[0][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => tap_reg(6),
      I1 => tap_reg(4),
      I2 => tap_reg(5),
      O => \grp_sum[0][0]_i_2_n_0\
    );
\grp_sum[0][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum[0][3]_i_2_n_0\,
      I1 => \grp_sum[0][1]_i_2_n_0\,
      I2 => \grp_sum[0][3]_i_3_n_0\,
      O => \grp_sum[0][1]_i_1_n_0\
    );
\grp_sum[0][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => tap_reg(3),
      I1 => tap_reg(2),
      I2 => tap_reg(1),
      I3 => tap_reg(6),
      I4 => tap_reg(5),
      I5 => tap_reg(4),
      O => \grp_sum[0][1]_i_2_n_0\
    );
\grp_sum[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \grp_sum[0][3]_i_2_n_0\,
      I1 => \grp_sum[0][3]_i_3_n_0\,
      I2 => \grp_sum[0][2]_i_2_n_0\,
      I3 => tap_reg(4),
      I4 => tap_reg(5),
      I5 => tap_reg(6),
      O => \grp_sum[0][2]_i_1_n_0\
    );
\grp_sum[0][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(1),
      I1 => tap_reg(2),
      I2 => tap_reg(3),
      O => \grp_sum[0][2]_i_2_n_0\
    );
\grp_sum[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \grp_sum[0][3]_i_2_n_0\,
      I1 => \grp_sum[0][3]_i_3_n_0\,
      I2 => tap_reg(3),
      I3 => tap_reg(2),
      I4 => tap_reg(1),
      I5 => \grp_sum[0][3]_i_4_n_0\,
      O => \grp_sum[0][3]_i_1_n_0\
    );
\grp_sum[0][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => tap_reg(2),
      I1 => tap_reg(1),
      I2 => tap_reg(3),
      I3 => tap_reg(0),
      I4 => tap_reg(7),
      I5 => \grp_sum[0][0]_i_2_n_0\,
      O => \grp_sum[0][3]_i_2_n_0\
    );
\grp_sum[0][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => tap_reg(7),
      I1 => tap_reg(0),
      I2 => tap_reg(5),
      I3 => tap_reg(4),
      I4 => tap_reg(6),
      O => \grp_sum[0][3]_i_3_n_0\
    );
\grp_sum[0][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(4),
      I1 => tap_reg(5),
      I2 => tap_reg(6),
      O => \grp_sum[0][3]_i_4_n_0\
    );
\grp_sum[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => tap_reg(8),
      I1 => tap_reg(15),
      I2 => \grp_sum[1][0]_i_2_n_0\,
      I3 => tap_reg(10),
      I4 => tap_reg(9),
      I5 => tap_reg(11),
      O => \grp_sum[1][0]_i_1_n_0\
    );
\grp_sum[1][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => tap_reg(14),
      I1 => tap_reg(12),
      I2 => tap_reg(13),
      O => \grp_sum[1][0]_i_2_n_0\
    );
\grp_sum[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum[1][3]_i_2_n_0\,
      I1 => \grp_sum[1][1]_i_2_n_0\,
      I2 => \grp_sum[1][3]_i_3_n_0\,
      O => \grp_sum[1][1]_i_1_n_0\
    );
\grp_sum[1][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => tap_reg(11),
      I1 => tap_reg(10),
      I2 => tap_reg(9),
      I3 => tap_reg(14),
      I4 => tap_reg(13),
      I5 => tap_reg(12),
      O => \grp_sum[1][1]_i_2_n_0\
    );
\grp_sum[1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \grp_sum[1][3]_i_2_n_0\,
      I1 => \grp_sum[1][3]_i_3_n_0\,
      I2 => \grp_sum[1][2]_i_2_n_0\,
      I3 => tap_reg(12),
      I4 => tap_reg(13),
      I5 => tap_reg(14),
      O => \grp_sum[1][2]_i_1_n_0\
    );
\grp_sum[1][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(9),
      I1 => tap_reg(10),
      I2 => tap_reg(11),
      O => \grp_sum[1][2]_i_2_n_0\
    );
\grp_sum[1][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \grp_sum[1][3]_i_2_n_0\,
      I1 => \grp_sum[1][3]_i_3_n_0\,
      I2 => tap_reg(11),
      I3 => tap_reg(10),
      I4 => tap_reg(9),
      I5 => \grp_sum[1][3]_i_4_n_0\,
      O => \grp_sum[1][3]_i_1_n_0\
    );
\grp_sum[1][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => tap_reg(10),
      I1 => tap_reg(9),
      I2 => tap_reg(11),
      I3 => tap_reg(8),
      I4 => tap_reg(15),
      I5 => \grp_sum[1][0]_i_2_n_0\,
      O => \grp_sum[1][3]_i_2_n_0\
    );
\grp_sum[1][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => tap_reg(15),
      I1 => tap_reg(8),
      I2 => tap_reg(13),
      I3 => tap_reg(12),
      I4 => tap_reg(14),
      O => \grp_sum[1][3]_i_3_n_0\
    );
\grp_sum[1][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(12),
      I1 => tap_reg(13),
      I2 => tap_reg(14),
      O => \grp_sum[1][3]_i_4_n_0\
    );
\grp_sum[2][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => tap_reg(16),
      I1 => tap_reg(23),
      I2 => \grp_sum[2][0]_i_2_n_0\,
      I3 => tap_reg(18),
      I4 => tap_reg(17),
      I5 => tap_reg(19),
      O => \grp_sum[2][0]_i_1_n_0\
    );
\grp_sum[2][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => tap_reg(22),
      I1 => tap_reg(20),
      I2 => tap_reg(21),
      O => \grp_sum[2][0]_i_2_n_0\
    );
\grp_sum[2][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum[2][3]_i_2_n_0\,
      I1 => \grp_sum[2][1]_i_2_n_0\,
      I2 => \grp_sum[2][3]_i_3_n_0\,
      O => \grp_sum[2][1]_i_1_n_0\
    );
\grp_sum[2][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => tap_reg(19),
      I1 => tap_reg(18),
      I2 => tap_reg(17),
      I3 => tap_reg(22),
      I4 => tap_reg(21),
      I5 => tap_reg(20),
      O => \grp_sum[2][1]_i_2_n_0\
    );
\grp_sum[2][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \grp_sum[2][3]_i_2_n_0\,
      I1 => \grp_sum[2][3]_i_3_n_0\,
      I2 => \grp_sum[2][2]_i_2_n_0\,
      I3 => tap_reg(20),
      I4 => tap_reg(21),
      I5 => tap_reg(22),
      O => \grp_sum[2][2]_i_1_n_0\
    );
\grp_sum[2][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(17),
      I1 => tap_reg(18),
      I2 => tap_reg(19),
      O => \grp_sum[2][2]_i_2_n_0\
    );
\grp_sum[2][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \grp_sum[2][3]_i_2_n_0\,
      I1 => \grp_sum[2][3]_i_3_n_0\,
      I2 => tap_reg(19),
      I3 => tap_reg(18),
      I4 => tap_reg(17),
      I5 => \grp_sum[2][3]_i_4_n_0\,
      O => \grp_sum[2][3]_i_1_n_0\
    );
\grp_sum[2][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => tap_reg(18),
      I1 => tap_reg(17),
      I2 => tap_reg(19),
      I3 => tap_reg(16),
      I4 => tap_reg(23),
      I5 => \grp_sum[2][0]_i_2_n_0\,
      O => \grp_sum[2][3]_i_2_n_0\
    );
\grp_sum[2][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => tap_reg(23),
      I1 => tap_reg(16),
      I2 => tap_reg(21),
      I3 => tap_reg(20),
      I4 => tap_reg(22),
      O => \grp_sum[2][3]_i_3_n_0\
    );
\grp_sum[2][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(20),
      I1 => tap_reg(21),
      I2 => tap_reg(22),
      O => \grp_sum[2][3]_i_4_n_0\
    );
\grp_sum[3][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => tap_reg(24),
      I1 => tap_reg(31),
      I2 => \grp_sum[3][0]_i_2_n_0\,
      I3 => tap_reg(26),
      I4 => tap_reg(25),
      I5 => tap_reg(27),
      O => \grp_sum[3][0]_i_1_n_0\
    );
\grp_sum[3][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => tap_reg(30),
      I1 => tap_reg(28),
      I2 => tap_reg(29),
      O => \grp_sum[3][0]_i_2_n_0\
    );
\grp_sum[3][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum[3][3]_i_2_n_0\,
      I1 => \grp_sum[3][1]_i_2_n_0\,
      I2 => \grp_sum[3][3]_i_3_n_0\,
      O => \grp_sum[3][1]_i_1_n_0\
    );
\grp_sum[3][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => tap_reg(27),
      I1 => tap_reg(26),
      I2 => tap_reg(25),
      I3 => tap_reg(30),
      I4 => tap_reg(29),
      I5 => tap_reg(28),
      O => \grp_sum[3][1]_i_2_n_0\
    );
\grp_sum[3][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \grp_sum[3][3]_i_2_n_0\,
      I1 => \grp_sum[3][3]_i_3_n_0\,
      I2 => \grp_sum[3][2]_i_2_n_0\,
      I3 => tap_reg(28),
      I4 => tap_reg(29),
      I5 => tap_reg(30),
      O => \grp_sum[3][2]_i_1_n_0\
    );
\grp_sum[3][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(25),
      I1 => tap_reg(26),
      I2 => tap_reg(27),
      O => \grp_sum[3][2]_i_2_n_0\
    );
\grp_sum[3][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \grp_sum[3][3]_i_2_n_0\,
      I1 => \grp_sum[3][3]_i_3_n_0\,
      I2 => tap_reg(27),
      I3 => tap_reg(26),
      I4 => tap_reg(25),
      I5 => \grp_sum[3][3]_i_4_n_0\,
      O => \grp_sum[3][3]_i_1_n_0\
    );
\grp_sum[3][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => tap_reg(26),
      I1 => tap_reg(25),
      I2 => tap_reg(27),
      I3 => tap_reg(24),
      I4 => tap_reg(31),
      I5 => \grp_sum[3][0]_i_2_n_0\,
      O => \grp_sum[3][3]_i_2_n_0\
    );
\grp_sum[3][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => tap_reg(31),
      I1 => tap_reg(24),
      I2 => tap_reg(29),
      I3 => tap_reg(28),
      I4 => tap_reg(30),
      O => \grp_sum[3][3]_i_3_n_0\
    );
\grp_sum[3][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(28),
      I1 => tap_reg(29),
      I2 => tap_reg(30),
      O => \grp_sum[3][3]_i_4_n_0\
    );
\grp_sum[4][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => tap_reg(32),
      I1 => tap_reg(39),
      I2 => \grp_sum[4][0]_i_2_n_0\,
      I3 => tap_reg(34),
      I4 => tap_reg(33),
      I5 => tap_reg(35),
      O => \grp_sum[4][0]_i_1_n_0\
    );
\grp_sum[4][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => tap_reg(38),
      I1 => tap_reg(36),
      I2 => tap_reg(37),
      O => \grp_sum[4][0]_i_2_n_0\
    );
\grp_sum[4][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum[4][3]_i_2_n_0\,
      I1 => \grp_sum[4][1]_i_2_n_0\,
      I2 => \grp_sum[4][3]_i_3_n_0\,
      O => \grp_sum[4][1]_i_1_n_0\
    );
\grp_sum[4][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => tap_reg(35),
      I1 => tap_reg(34),
      I2 => tap_reg(33),
      I3 => tap_reg(38),
      I4 => tap_reg(37),
      I5 => tap_reg(36),
      O => \grp_sum[4][1]_i_2_n_0\
    );
\grp_sum[4][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \grp_sum[4][3]_i_2_n_0\,
      I1 => \grp_sum[4][3]_i_3_n_0\,
      I2 => \grp_sum[4][2]_i_2_n_0\,
      I3 => tap_reg(36),
      I4 => tap_reg(37),
      I5 => tap_reg(38),
      O => \grp_sum[4][2]_i_1_n_0\
    );
\grp_sum[4][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(33),
      I1 => tap_reg(34),
      I2 => tap_reg(35),
      O => \grp_sum[4][2]_i_2_n_0\
    );
\grp_sum[4][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \grp_sum[4][3]_i_2_n_0\,
      I1 => \grp_sum[4][3]_i_3_n_0\,
      I2 => tap_reg(35),
      I3 => tap_reg(34),
      I4 => tap_reg(33),
      I5 => \grp_sum[4][3]_i_4_n_0\,
      O => \grp_sum[4][3]_i_1_n_0\
    );
\grp_sum[4][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => tap_reg(34),
      I1 => tap_reg(33),
      I2 => tap_reg(35),
      I3 => tap_reg(32),
      I4 => tap_reg(39),
      I5 => \grp_sum[4][0]_i_2_n_0\,
      O => \grp_sum[4][3]_i_2_n_0\
    );
\grp_sum[4][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => tap_reg(39),
      I1 => tap_reg(32),
      I2 => tap_reg(37),
      I3 => tap_reg(36),
      I4 => tap_reg(38),
      O => \grp_sum[4][3]_i_3_n_0\
    );
\grp_sum[4][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(36),
      I1 => tap_reg(37),
      I2 => tap_reg(38),
      O => \grp_sum[4][3]_i_4_n_0\
    );
\grp_sum[5][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => tap_reg(40),
      I1 => tap_reg(47),
      I2 => \grp_sum[5][0]_i_2_n_0\,
      I3 => tap_reg(42),
      I4 => tap_reg(41),
      I5 => tap_reg(43),
      O => \grp_sum[5][0]_i_1_n_0\
    );
\grp_sum[5][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => tap_reg(46),
      I1 => tap_reg(44),
      I2 => tap_reg(45),
      O => \grp_sum[5][0]_i_2_n_0\
    );
\grp_sum[5][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum[5][3]_i_2_n_0\,
      I1 => \grp_sum[5][1]_i_2_n_0\,
      I2 => \grp_sum[5][3]_i_3_n_0\,
      O => \grp_sum[5][1]_i_1_n_0\
    );
\grp_sum[5][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => tap_reg(43),
      I1 => tap_reg(42),
      I2 => tap_reg(41),
      I3 => tap_reg(46),
      I4 => tap_reg(45),
      I5 => tap_reg(44),
      O => \grp_sum[5][1]_i_2_n_0\
    );
\grp_sum[5][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \grp_sum[5][3]_i_2_n_0\,
      I1 => \grp_sum[5][3]_i_3_n_0\,
      I2 => \grp_sum[5][2]_i_2_n_0\,
      I3 => tap_reg(44),
      I4 => tap_reg(45),
      I5 => tap_reg(46),
      O => \grp_sum[5][2]_i_1_n_0\
    );
\grp_sum[5][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(41),
      I1 => tap_reg(42),
      I2 => tap_reg(43),
      O => \grp_sum[5][2]_i_2_n_0\
    );
\grp_sum[5][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \grp_sum[5][3]_i_2_n_0\,
      I1 => \grp_sum[5][3]_i_3_n_0\,
      I2 => tap_reg(43),
      I3 => tap_reg(42),
      I4 => tap_reg(41),
      I5 => \grp_sum[5][3]_i_4_n_0\,
      O => \grp_sum[5][3]_i_1_n_0\
    );
\grp_sum[5][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => tap_reg(42),
      I1 => tap_reg(41),
      I2 => tap_reg(43),
      I3 => tap_reg(40),
      I4 => tap_reg(47),
      I5 => \grp_sum[5][0]_i_2_n_0\,
      O => \grp_sum[5][3]_i_2_n_0\
    );
\grp_sum[5][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => tap_reg(47),
      I1 => tap_reg(40),
      I2 => tap_reg(45),
      I3 => tap_reg(44),
      I4 => tap_reg(46),
      O => \grp_sum[5][3]_i_3_n_0\
    );
\grp_sum[5][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(44),
      I1 => tap_reg(45),
      I2 => tap_reg(46),
      O => \grp_sum[5][3]_i_4_n_0\
    );
\grp_sum[6][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => tap_reg(48),
      I1 => tap_reg(55),
      I2 => \grp_sum[6][0]_i_2_n_0\,
      I3 => tap_reg(50),
      I4 => tap_reg(49),
      I5 => tap_reg(51),
      O => \grp_sum[6][0]_i_1_n_0\
    );
\grp_sum[6][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => tap_reg(54),
      I1 => tap_reg(52),
      I2 => tap_reg(53),
      O => \grp_sum[6][0]_i_2_n_0\
    );
\grp_sum[6][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum[6][3]_i_2_n_0\,
      I1 => \grp_sum[6][1]_i_2_n_0\,
      I2 => \grp_sum[6][3]_i_3_n_0\,
      O => \grp_sum[6][1]_i_1_n_0\
    );
\grp_sum[6][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => tap_reg(51),
      I1 => tap_reg(50),
      I2 => tap_reg(49),
      I3 => tap_reg(54),
      I4 => tap_reg(53),
      I5 => tap_reg(52),
      O => \grp_sum[6][1]_i_2_n_0\
    );
\grp_sum[6][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \grp_sum[6][3]_i_2_n_0\,
      I1 => \grp_sum[6][3]_i_3_n_0\,
      I2 => \grp_sum[6][2]_i_2_n_0\,
      I3 => tap_reg(52),
      I4 => tap_reg(53),
      I5 => tap_reg(54),
      O => \grp_sum[6][2]_i_1_n_0\
    );
\grp_sum[6][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(49),
      I1 => tap_reg(50),
      I2 => tap_reg(51),
      O => \grp_sum[6][2]_i_2_n_0\
    );
\grp_sum[6][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \grp_sum[6][3]_i_2_n_0\,
      I1 => \grp_sum[6][3]_i_3_n_0\,
      I2 => tap_reg(51),
      I3 => tap_reg(50),
      I4 => tap_reg(49),
      I5 => \grp_sum[6][3]_i_4_n_0\,
      O => \grp_sum[6][3]_i_1_n_0\
    );
\grp_sum[6][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => tap_reg(50),
      I1 => tap_reg(49),
      I2 => tap_reg(51),
      I3 => tap_reg(48),
      I4 => tap_reg(55),
      I5 => \grp_sum[6][0]_i_2_n_0\,
      O => \grp_sum[6][3]_i_2_n_0\
    );
\grp_sum[6][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => tap_reg(55),
      I1 => tap_reg(48),
      I2 => tap_reg(53),
      I3 => tap_reg(52),
      I4 => tap_reg(54),
      O => \grp_sum[6][3]_i_3_n_0\
    );
\grp_sum[6][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(52),
      I1 => tap_reg(53),
      I2 => tap_reg(54),
      O => \grp_sum[6][3]_i_4_n_0\
    );
\grp_sum[7][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => tap_reg(56),
      I1 => tap_reg(63),
      I2 => \grp_sum[7][0]_i_2_n_0\,
      I3 => tap_reg(58),
      I4 => tap_reg(57),
      I5 => tap_reg(59),
      O => \grp_sum[7][0]_i_1_n_0\
    );
\grp_sum[7][0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => tap_reg(62),
      I1 => tap_reg(60),
      I2 => tap_reg(61),
      O => \grp_sum[7][0]_i_2_n_0\
    );
\grp_sum[7][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum[7][3]_i_2_n_0\,
      I1 => \grp_sum[7][1]_i_2_n_0\,
      I2 => \grp_sum[7][3]_i_3_n_0\,
      O => \grp_sum[7][1]_i_1_n_0\
    );
\grp_sum[7][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => tap_reg(59),
      I1 => tap_reg(58),
      I2 => tap_reg(57),
      I3 => tap_reg(62),
      I4 => tap_reg(61),
      I5 => tap_reg(60),
      O => \grp_sum[7][1]_i_2_n_0\
    );
\grp_sum[7][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \grp_sum[7][3]_i_2_n_0\,
      I1 => \grp_sum[7][3]_i_3_n_0\,
      I2 => \grp_sum[7][2]_i_2_n_0\,
      I3 => tap_reg(60),
      I4 => tap_reg(61),
      I5 => tap_reg(62),
      O => \grp_sum[7][2]_i_1_n_0\
    );
\grp_sum[7][2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(57),
      I1 => tap_reg(58),
      I2 => tap_reg(59),
      O => \grp_sum[7][2]_i_2_n_0\
    );
\grp_sum[7][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \grp_sum[7][3]_i_2_n_0\,
      I1 => \grp_sum[7][3]_i_3_n_0\,
      I2 => tap_reg(59),
      I3 => tap_reg(58),
      I4 => tap_reg(57),
      I5 => \grp_sum[7][3]_i_4_n_0\,
      O => \grp_sum[7][3]_i_1_n_0\
    );
\grp_sum[7][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => tap_reg(58),
      I1 => tap_reg(57),
      I2 => tap_reg(59),
      I3 => tap_reg(56),
      I4 => tap_reg(63),
      I5 => \grp_sum[7][0]_i_2_n_0\,
      O => \grp_sum[7][3]_i_2_n_0\
    );
\grp_sum[7][3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => tap_reg(63),
      I1 => tap_reg(56),
      I2 => tap_reg(61),
      I3 => tap_reg(60),
      I4 => tap_reg(62),
      O => \grp_sum[7][3]_i_3_n_0\
    );
\grp_sum[7][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => tap_reg(60),
      I1 => tap_reg(61),
      I2 => tap_reg(62),
      O => \grp_sum[7][3]_i_4_n_0\
    );
\grp_sum_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[0][0]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[0][0]\,
      R => SR(0)
    );
\grp_sum_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[0][1]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[0][1]\,
      R => SR(0)
    );
\grp_sum_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[0][2]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[0][2]\,
      R => SR(0)
    );
\grp_sum_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[0][3]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[0][3]\,
      R => SR(0)
    );
\grp_sum_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[1][0]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[1][0]\,
      R => SR(0)
    );
\grp_sum_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[1][1]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[1][1]\,
      R => SR(0)
    );
\grp_sum_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[1][2]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[1][2]\,
      R => SR(0)
    );
\grp_sum_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[1][3]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[1][3]\,
      R => SR(0)
    );
\grp_sum_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[2][0]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[2][0]\,
      R => SR(0)
    );
\grp_sum_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[2][1]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[2][1]\,
      R => SR(0)
    );
\grp_sum_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[2][2]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[2][2]\,
      R => SR(0)
    );
\grp_sum_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[2][3]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[2][3]\,
      R => SR(0)
    );
\grp_sum_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[3][0]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[3][0]\,
      R => SR(0)
    );
\grp_sum_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[3][1]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[3][1]\,
      R => SR(0)
    );
\grp_sum_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[3][2]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[3][2]\,
      R => SR(0)
    );
\grp_sum_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[3][3]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[3][3]\,
      R => SR(0)
    );
\grp_sum_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[4][0]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[4][0]\,
      R => SR(0)
    );
\grp_sum_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[4][1]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[4][1]\,
      R => SR(0)
    );
\grp_sum_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[4][2]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[4][2]\,
      R => SR(0)
    );
\grp_sum_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[4][3]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[4][3]\,
      R => SR(0)
    );
\grp_sum_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[5][0]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[5][0]\,
      R => SR(0)
    );
\grp_sum_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[5][1]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[5][1]\,
      R => SR(0)
    );
\grp_sum_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[5][2]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[5][2]\,
      R => SR(0)
    );
\grp_sum_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[5][3]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[5][3]\,
      R => SR(0)
    );
\grp_sum_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[6][0]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[6][0]\,
      R => SR(0)
    );
\grp_sum_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[6][1]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[6][1]\,
      R => SR(0)
    );
\grp_sum_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[6][2]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[6][2]\,
      R => SR(0)
    );
\grp_sum_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[6][3]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[6][3]\,
      R => SR(0)
    );
\grp_sum_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[7][0]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[7][0]\,
      R => SR(0)
    );
\grp_sum_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[7][1]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[7][1]\,
      R => SR(0)
    );
\grp_sum_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[7][2]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[7][2]\,
      R => SR(0)
    );
\grp_sum_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \grp_sum[7][3]_i_1_n_0\,
      Q => \grp_sum_reg_n_0_[7][3]\,
      R => SR(0)
    );
\tap_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(0),
      Q => tap_reg(0),
      R => SR(0)
    );
\tap_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(10),
      Q => tap_reg(10),
      R => SR(0)
    );
\tap_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(11),
      Q => tap_reg(11),
      R => SR(0)
    );
\tap_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(12),
      Q => tap_reg(12),
      R => SR(0)
    );
\tap_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(13),
      Q => tap_reg(13),
      R => SR(0)
    );
\tap_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(14),
      Q => tap_reg(14),
      R => SR(0)
    );
\tap_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(15),
      Q => tap_reg(15),
      R => SR(0)
    );
\tap_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(16),
      Q => tap_reg(16),
      R => SR(0)
    );
\tap_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(17),
      Q => tap_reg(17),
      R => SR(0)
    );
\tap_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(18),
      Q => tap_reg(18),
      R => SR(0)
    );
\tap_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(19),
      Q => tap_reg(19),
      R => SR(0)
    );
\tap_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(1),
      Q => tap_reg(1),
      R => SR(0)
    );
\tap_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(20),
      Q => tap_reg(20),
      R => SR(0)
    );
\tap_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(21),
      Q => tap_reg(21),
      R => SR(0)
    );
\tap_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(22),
      Q => tap_reg(22),
      R => SR(0)
    );
\tap_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(23),
      Q => tap_reg(23),
      R => SR(0)
    );
\tap_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(24),
      Q => tap_reg(24),
      R => SR(0)
    );
\tap_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(25),
      Q => tap_reg(25),
      R => SR(0)
    );
\tap_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(26),
      Q => tap_reg(26),
      R => SR(0)
    );
\tap_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(27),
      Q => tap_reg(27),
      R => SR(0)
    );
\tap_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(28),
      Q => tap_reg(28),
      R => SR(0)
    );
\tap_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(29),
      Q => tap_reg(29),
      R => SR(0)
    );
\tap_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(2),
      Q => tap_reg(2),
      R => SR(0)
    );
\tap_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(30),
      Q => tap_reg(30),
      R => SR(0)
    );
\tap_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(31),
      Q => tap_reg(31),
      R => SR(0)
    );
\tap_reg_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(32),
      Q => tap_reg(32),
      R => SR(0)
    );
\tap_reg_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(33),
      Q => tap_reg(33),
      R => SR(0)
    );
\tap_reg_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(34),
      Q => tap_reg(34),
      R => SR(0)
    );
\tap_reg_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(35),
      Q => tap_reg(35),
      R => SR(0)
    );
\tap_reg_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(36),
      Q => tap_reg(36),
      R => SR(0)
    );
\tap_reg_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(37),
      Q => tap_reg(37),
      R => SR(0)
    );
\tap_reg_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(38),
      Q => tap_reg(38),
      R => SR(0)
    );
\tap_reg_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(39),
      Q => tap_reg(39),
      R => SR(0)
    );
\tap_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(3),
      Q => tap_reg(3),
      R => SR(0)
    );
\tap_reg_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(40),
      Q => tap_reg(40),
      R => SR(0)
    );
\tap_reg_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(41),
      Q => tap_reg(41),
      R => SR(0)
    );
\tap_reg_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(42),
      Q => tap_reg(42),
      R => SR(0)
    );
\tap_reg_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(43),
      Q => tap_reg(43),
      R => SR(0)
    );
\tap_reg_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(44),
      Q => tap_reg(44),
      R => SR(0)
    );
\tap_reg_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(45),
      Q => tap_reg(45),
      R => SR(0)
    );
\tap_reg_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(46),
      Q => tap_reg(46),
      R => SR(0)
    );
\tap_reg_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(47),
      Q => tap_reg(47),
      R => SR(0)
    );
\tap_reg_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(48),
      Q => tap_reg(48),
      R => SR(0)
    );
\tap_reg_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(49),
      Q => tap_reg(49),
      R => SR(0)
    );
\tap_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(4),
      Q => tap_reg(4),
      R => SR(0)
    );
\tap_reg_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(50),
      Q => tap_reg(50),
      R => SR(0)
    );
\tap_reg_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(51),
      Q => tap_reg(51),
      R => SR(0)
    );
\tap_reg_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(52),
      Q => tap_reg(52),
      R => SR(0)
    );
\tap_reg_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(53),
      Q => tap_reg(53),
      R => SR(0)
    );
\tap_reg_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(54),
      Q => tap_reg(54),
      R => SR(0)
    );
\tap_reg_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(55),
      Q => tap_reg(55),
      R => SR(0)
    );
\tap_reg_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(56),
      Q => tap_reg(56),
      R => SR(0)
    );
\tap_reg_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(57),
      Q => tap_reg(57),
      R => SR(0)
    );
\tap_reg_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(58),
      Q => tap_reg(58),
      R => SR(0)
    );
\tap_reg_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(59),
      Q => tap_reg(59),
      R => SR(0)
    );
\tap_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(5),
      Q => tap_reg(5),
      R => SR(0)
    );
\tap_reg_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(60),
      Q => tap_reg(60),
      R => SR(0)
    );
\tap_reg_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(61),
      Q => tap_reg(61),
      R => SR(0)
    );
\tap_reg_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(62),
      Q => tap_reg(62),
      R => SR(0)
    );
\tap_reg_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(63),
      Q => tap_reg(63),
      R => SR(0)
    );
\tap_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(6),
      Q => tap_reg(6),
      R => SR(0)
    );
\tap_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(7),
      Q => tap_reg(7),
      R => SR(0)
    );
\tap_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(8),
      Q => tap_reg(8),
      R => SR(0)
    );
\tap_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => tap_orig(9),
      Q => tap_reg(9),
      R => SR(0)
    );
\tdc_valid_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \tdc_value0__1_carry__0_n_6\,
      I1 => \tdc_value0__1_carry__0_n_7\,
      I2 => \tdc_value0__1_carry_n_4\,
      I3 => \tdc_value0__1_carry_n_5\,
      I4 => \tdc_value0__1_carry_n_7\,
      I5 => \tdc_value0__1_carry_n_6\,
      O => \tdc_valid_i_1__0_n_0\
    );
tdc_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \tdc_valid_i_1__0_n_0\,
      Q => tdc_vld,
      R => SR(0)
    );
\tdc_value0__1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tdc_value0__1_carry_n_0\,
      CO(2) => \tdc_value0__1_carry_n_1\,
      CO(1) => \tdc_value0__1_carry_n_2\,
      CO(0) => \tdc_value0__1_carry_n_3\,
      CYINIT => '0',
      DI(3) => \tdc_value0__1_carry_i_1__0_n_0\,
      DI(2) => \tdc_value0__1_carry_i_2__0_n_0\,
      DI(1) => \tdc_value0__1_carry_i_3__0_n_0\,
      DI(0) => \tdc_value0__1_carry_i_4__0_n_0\,
      O(3) => \tdc_value0__1_carry_n_4\,
      O(2) => \tdc_value0__1_carry_n_5\,
      O(1) => \tdc_value0__1_carry_n_6\,
      O(0) => \tdc_value0__1_carry_n_7\,
      S(3) => \tdc_value0__1_carry_i_5__0_n_0\,
      S(2) => \tdc_value0__1_carry_i_6__0_n_0\,
      S(1) => \tdc_value0__1_carry_i_7__0_n_0\,
      S(0) => \tdc_value0__1_carry_i_8__0_n_0\
    );
\tdc_value0__1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \tdc_value0__1_carry_n_0\,
      CO(3) => \NLW_tdc_value0__1_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \tdc_value0__1_carry__0_n_1\,
      CO(1) => \NLW_tdc_value0__1_carry__0_CO_UNCONNECTED\(1),
      CO(0) => \tdc_value0__1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \tdc_value0__1_carry__0_i_1__0_n_0\,
      DI(0) => \tdc_value0__1_carry__0_i_2__0_n_0\,
      O(3 downto 2) => \NLW_tdc_value0__1_carry__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \tdc_value0__1_carry__0_n_6\,
      O(0) => \tdc_value0__1_carry__0_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \tdc_value0__1_carry__0_i_3__0_n_0\,
      S(0) => \tdc_value0__1_carry__0_i_4__0_n_0\
    );
\tdc_value0__1_carry__0_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[3][2]\,
      I1 => \grp_sum_reg_n_0_[2][2]\,
      I2 => \grp_sum_reg_n_0_[1][2]\,
      I3 => \tdc_value0__1_carry_i_22__0_n_0\,
      I4 => \tdc_value0__1_carry_i_21__0_n_0\,
      O => \tdc_value0__1_carry__0_i_10__0_n_0\
    );
\tdc_value0__1_carry__0_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[3][3]\,
      I1 => \grp_sum_reg_n_0_[2][3]\,
      I2 => \grp_sum_reg_n_0_[1][3]\,
      O => \tdc_value0__1_carry__0_i_11__0_n_0\
    );
\tdc_value0__1_carry__0_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \tdc_value0__1_carry__0_i_5__0_n_0\,
      I1 => \tdc_value0__1_carry__0_i_6__0_n_0\,
      I2 => \grp_sum_reg_n_0_[7][3]\,
      I3 => \grp_sum_reg_n_0_[0][3]\,
      I4 => \tdc_value0__1_carry__0_i_7__0_n_0\,
      O => \tdc_value0__1_carry__0_i_1__0_n_0\
    );
\tdc_value0__1_carry__0_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_16__0_n_0\,
      I1 => \tdc_value0__1_carry_i_14__0_n_0\,
      I2 => \tdc_value0__1_carry_i_15__0_n_0\,
      O => \tdc_value0__1_carry__0_i_2__0_n_0\
    );
\tdc_value0__1_carry__0_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"177E7EE8"
    )
        port map (
      I0 => \tdc_value0__1_carry__0_i_8__0_n_0\,
      I1 => \tdc_value0__1_carry__0_i_5__0_n_0\,
      I2 => \tdc_value0__1_carry__0_i_9__0_n_0\,
      I3 => \tdc_value0__1_carry__0_i_10__0_n_0\,
      I4 => \tdc_value0__1_carry__0_i_11__0_n_0\,
      O => \tdc_value0__1_carry__0_i_3__0_n_0\
    );
\tdc_value0__1_carry__0_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669699999969666"
    )
        port map (
      I0 => \tdc_value0__1_carry__0_i_2__0_n_0\,
      I1 => \tdc_value0__1_carry__0_i_6__0_n_0\,
      I2 => \grp_sum_reg_n_0_[7][3]\,
      I3 => \grp_sum_reg_n_0_[0][3]\,
      I4 => \tdc_value0__1_carry__0_i_7__0_n_0\,
      I5 => \tdc_value0__1_carry__0_i_5__0_n_0\,
      O => \tdc_value0__1_carry__0_i_4__0_n_0\
    );
\tdc_value0__1_carry__0_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA80FFFF0000EA80"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[0][2]\,
      I1 => \grp_sum_reg_n_0_[7][1]\,
      I2 => \grp_sum_reg_n_0_[0][1]\,
      I3 => \grp_sum_reg_n_0_[7][2]\,
      I4 => \tdc_value0__1_carry_i_24__0_n_0\,
      I5 => \tdc_value0__1_carry_i_23__0_n_0\,
      O => \tdc_value0__1_carry__0_i_5__0_n_0\
    );
\tdc_value0__1_carry__0_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A995566A"
    )
        port map (
      I0 => \tdc_value0__1_carry__0_i_9__0_n_0\,
      I1 => \grp_sum_reg_n_0_[3][3]\,
      I2 => \grp_sum_reg_n_0_[2][3]\,
      I3 => \grp_sum_reg_n_0_[1][3]\,
      I4 => \tdc_value0__1_carry__0_i_10__0_n_0\,
      O => \tdc_value0__1_carry__0_i_6__0_n_0\
    );
\tdc_value0__1_carry__0_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[6][3]\,
      I1 => \grp_sum_reg_n_0_[4][3]\,
      I2 => \grp_sum_reg_n_0_[5][3]\,
      O => \tdc_value0__1_carry__0_i_7__0_n_0\
    );
\tdc_value0__1_carry__0_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[6][3]\,
      I1 => \grp_sum_reg_n_0_[4][3]\,
      I2 => \grp_sum_reg_n_0_[5][3]\,
      I3 => \grp_sum_reg_n_0_[0][3]\,
      I4 => \grp_sum_reg_n_0_[7][3]\,
      O => \tdc_value0__1_carry__0_i_8__0_n_0\
    );
\tdc_value0__1_carry__0_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[6][3]\,
      I1 => \grp_sum_reg_n_0_[5][3]\,
      I2 => \grp_sum_reg_n_0_[4][3]\,
      O => \tdc_value0__1_carry__0_i_9__0_n_0\
    );
\tdc_value0__1_carry_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_19__0_n_0\,
      I1 => \tdc_value0__1_carry_i_20__0_n_0\,
      I2 => \grp_sum_reg_n_0_[6][2]\,
      I3 => \grp_sum_reg_n_0_[4][2]\,
      I4 => \grp_sum_reg_n_0_[5][2]\,
      O => \tdc_value0__1_carry_i_10__0_n_0\
    );
\tdc_value0__1_carry_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[1][1]\,
      I1 => \grp_sum_reg_n_0_[2][1]\,
      I2 => \grp_sum_reg_n_0_[3][1]\,
      I3 => \grp_sum_reg_n_0_[4][1]\,
      I4 => \grp_sum_reg_n_0_[5][1]\,
      I5 => \grp_sum_reg_n_0_[6][1]\,
      O => \tdc_value0__1_carry_i_11__0_n_0\
    );
\tdc_value0__1_carry_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_18__0_n_0\,
      I1 => \grp_sum_reg_n_0_[0][1]\,
      I2 => \grp_sum_reg_n_0_[7][1]\,
      I3 => \grp_sum_reg_n_0_[6][1]\,
      I4 => \grp_sum_reg_n_0_[4][1]\,
      I5 => \grp_sum_reg_n_0_[5][1]\,
      O => \tdc_value0__1_carry_i_12__0_n_0\
    );
\tdc_value0__1_carry_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[6][0]\,
      I1 => \grp_sum_reg_n_0_[5][0]\,
      I2 => \grp_sum_reg_n_0_[4][0]\,
      O => \tdc_value0__1_carry_i_13__0_n_0\
    );
\tdc_value0__1_carry_i_14__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBBE8228"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_19__0_n_0\,
      I1 => \grp_sum_reg_n_0_[5][2]\,
      I2 => \grp_sum_reg_n_0_[4][2]\,
      I3 => \grp_sum_reg_n_0_[6][2]\,
      I4 => \tdc_value0__1_carry_i_20__0_n_0\,
      O => \tdc_value0__1_carry_i_14__0_n_0\
    );
\tdc_value0__1_carry_i_15__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[1][2]\,
      I1 => \grp_sum_reg_n_0_[2][2]\,
      I2 => \grp_sum_reg_n_0_[3][2]\,
      I3 => \tdc_value0__1_carry_i_21__0_n_0\,
      I4 => \tdc_value0__1_carry_i_22__0_n_0\,
      O => \tdc_value0__1_carry_i_15__0_n_0\
    );
\tdc_value0__1_carry_i_16__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"157FEA80EA80157F"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[0][2]\,
      I1 => \grp_sum_reg_n_0_[7][1]\,
      I2 => \grp_sum_reg_n_0_[0][1]\,
      I3 => \grp_sum_reg_n_0_[7][2]\,
      I4 => \tdc_value0__1_carry_i_23__0_n_0\,
      I5 => \tdc_value0__1_carry_i_24__0_n_0\,
      O => \tdc_value0__1_carry_i_16__0_n_0\
    );
\tdc_value0__1_carry_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[6][0]\,
      I1 => \grp_sum_reg_n_0_[4][0]\,
      I2 => \grp_sum_reg_n_0_[5][0]\,
      O => \tdc_value0__1_carry_i_17__0_n_0\
    );
\tdc_value0__1_carry_i_18__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[3][1]\,
      I1 => \grp_sum_reg_n_0_[1][1]\,
      I2 => \grp_sum_reg_n_0_[2][1]\,
      O => \tdc_value0__1_carry_i_18__0_n_0\
    );
\tdc_value0__1_carry_i_19__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[3][2]\,
      I1 => \grp_sum_reg_n_0_[1][2]\,
      I2 => \grp_sum_reg_n_0_[2][2]\,
      O => \tdc_value0__1_carry_i_19__0_n_0\
    );
\tdc_value0__1_carry_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_9__0_n_0\,
      I1 => \tdc_value0__1_carry_i_10__0_n_0\,
      I2 => \tdc_value0__1_carry_i_11__0_n_0\,
      O => \tdc_value0__1_carry_i_1__0_n_0\
    );
\tdc_value0__1_carry_i_20__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[7][1]\,
      I1 => \grp_sum_reg_n_0_[0][1]\,
      I2 => \grp_sum_reg_n_0_[7][2]\,
      I3 => \grp_sum_reg_n_0_[0][2]\,
      O => \tdc_value0__1_carry_i_20__0_n_0\
    );
\tdc_value0__1_carry_i_21__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[3][3]\,
      I1 => \grp_sum_reg_n_0_[1][3]\,
      I2 => \grp_sum_reg_n_0_[2][3]\,
      O => \tdc_value0__1_carry_i_21__0_n_0\
    );
\tdc_value0__1_carry_i_22__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[6][2]\,
      I1 => \grp_sum_reg_n_0_[5][2]\,
      I2 => \grp_sum_reg_n_0_[4][2]\,
      O => \tdc_value0__1_carry_i_22__0_n_0\
    );
\tdc_value0__1_carry_i_23__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[5][3]\,
      I1 => \grp_sum_reg_n_0_[4][3]\,
      I2 => \grp_sum_reg_n_0_[6][3]\,
      I3 => \grp_sum_reg_n_0_[7][3]\,
      I4 => \grp_sum_reg_n_0_[0][3]\,
      O => \tdc_value0__1_carry_i_23__0_n_0\
    );
\tdc_value0__1_carry_i_24__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717FF17FFFFFF"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[1][1]\,
      I1 => \grp_sum_reg_n_0_[2][1]\,
      I2 => \grp_sum_reg_n_0_[3][1]\,
      I3 => \grp_sum_reg_n_0_[4][1]\,
      I4 => \grp_sum_reg_n_0_[5][1]\,
      I5 => \grp_sum_reg_n_0_[6][1]\,
      O => \tdc_value0__1_carry_i_24__0_n_0\
    );
\tdc_value0__1_carry_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_12__0_n_0\,
      I1 => \tdc_value0__1_carry_i_13__0_n_0\,
      I2 => \grp_sum_reg_n_0_[3][0]\,
      I3 => \grp_sum_reg_n_0_[2][0]\,
      I4 => \grp_sum_reg_n_0_[1][0]\,
      O => \tdc_value0__1_carry_i_2__0_n_0\
    );
\tdc_value0__1_carry_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_12__0_n_0\,
      I1 => \tdc_value0__1_carry_i_13__0_n_0\,
      I2 => \grp_sum_reg_n_0_[3][0]\,
      I3 => \grp_sum_reg_n_0_[2][0]\,
      I4 => \grp_sum_reg_n_0_[1][0]\,
      O => \tdc_value0__1_carry_i_3__0_n_0\
    );
\tdc_value0__1_carry_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[5][0]\,
      I1 => \grp_sum_reg_n_0_[4][0]\,
      I2 => \grp_sum_reg_n_0_[6][0]\,
      I3 => \grp_sum_reg_n_0_[7][0]\,
      I4 => \grp_sum_reg_n_0_[0][0]\,
      O => \tdc_value0__1_carry_i_4__0_n_0\
    );
\tdc_value0__1_carry_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_11__0_n_0\,
      I1 => \tdc_value0__1_carry_i_10__0_n_0\,
      I2 => \tdc_value0__1_carry_i_9__0_n_0\,
      I3 => \tdc_value0__1_carry_i_14__0_n_0\,
      I4 => \tdc_value0__1_carry_i_15__0_n_0\,
      I5 => \tdc_value0__1_carry_i_16__0_n_0\,
      O => \tdc_value0__1_carry_i_5__0_n_0\
    );
\tdc_value0__1_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_2__0_n_0\,
      I1 => \tdc_value0__1_carry_i_10__0_n_0\,
      I2 => \tdc_value0__1_carry_i_11__0_n_0\,
      I3 => \tdc_value0__1_carry_i_9__0_n_0\,
      O => \tdc_value0__1_carry_i_6__0_n_0\
    );
\tdc_value0__1_carry_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566A6A566A56566A"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_3__0_n_0\,
      I1 => \grp_sum_reg_n_0_[0][0]\,
      I2 => \grp_sum_reg_n_0_[7][0]\,
      I3 => \grp_sum_reg_n_0_[6][0]\,
      I4 => \grp_sum_reg_n_0_[4][0]\,
      I5 => \grp_sum_reg_n_0_[5][0]\,
      O => \tdc_value0__1_carry_i_7__0_n_0\
    );
\tdc_value0__1_carry_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \grp_sum_reg_n_0_[0][0]\,
      I1 => \grp_sum_reg_n_0_[7][0]\,
      I2 => \tdc_value0__1_carry_i_17__0_n_0\,
      I3 => \grp_sum_reg_n_0_[2][0]\,
      I4 => \grp_sum_reg_n_0_[1][0]\,
      I5 => \grp_sum_reg_n_0_[3][0]\,
      O => \tdc_value0__1_carry_i_8__0_n_0\
    );
\tdc_value0__1_carry_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8228EBBEEBBE8228"
    )
        port map (
      I0 => \tdc_value0__1_carry_i_18__0_n_0\,
      I1 => \grp_sum_reg_n_0_[5][1]\,
      I2 => \grp_sum_reg_n_0_[4][1]\,
      I3 => \grp_sum_reg_n_0_[6][1]\,
      I4 => \grp_sum_reg_n_0_[7][1]\,
      I5 => \grp_sum_reg_n_0_[0][1]\,
      O => \tdc_value0__1_carry_i_9__0_n_0\
    );
\tdc_value[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \tdc_value0__1_carry_n_7\,
      I1 => \tdc_value0__1_carry__0_n_1\,
      O => \tdc_value[0]_i_1_n_0\
    );
\tdc_value[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \tdc_value0__1_carry_n_6\,
      I1 => \tdc_value0__1_carry__0_n_1\,
      O => \tdc_value[1]_i_1_n_0\
    );
\tdc_value[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \tdc_value0__1_carry_n_5\,
      I1 => \tdc_value0__1_carry__0_n_1\,
      O => \tdc_value[2]_i_1_n_0\
    );
\tdc_value[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \tdc_value0__1_carry_n_4\,
      I1 => \tdc_value0__1_carry__0_n_1\,
      O => \tdc_value[3]_i_1_n_0\
    );
\tdc_value[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \tdc_value0__1_carry__0_n_7\,
      I1 => \tdc_value0__1_carry__0_n_1\,
      O => \tdc_value[4]_i_1_n_0\
    );
\tdc_value[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \tdc_value0__1_carry__0_n_6\,
      I1 => \tdc_value0__1_carry__0_n_1\,
      O => \tdc_value[5]_i_1_n_0\
    );
\tdc_value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \tdc_value[0]_i_1_n_0\,
      Q => Q(0),
      R => SR(0)
    );
\tdc_value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \tdc_value[1]_i_1_n_0\,
      Q => Q(1),
      R => SR(0)
    );
\tdc_value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \tdc_value[2]_i_1_n_0\,
      Q => Q(2),
      R => SR(0)
    );
\tdc_value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \tdc_value[3]_i_1_n_0\,
      Q => Q(3),
      R => SR(0)
    );
\tdc_value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \tdc_value[4]_i_1_n_0\,
      Q => Q(4),
      R => SR(0)
    );
\tdc_value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => \tdc_value[5]_i_1_n_0\,
      Q => Q(5),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_eq_counter is
  port (
    \sync_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sync_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \eq_test_reg[0]_0\ : out STD_LOGIC;
    \eq_test_reg[1]_0\ : out STD_LOGIC;
    \eq_test_reg[2]_0\ : out STD_LOGIC;
    \eq_test_reg[3]_0\ : out STD_LOGIC;
    \eq_test_reg[4]_0\ : out STD_LOGIC;
    \eq_test_reg[5]_0\ : out STD_LOGIC;
    \eq_test_reg[6]_0\ : out STD_LOGIC;
    \eq_test_reg[7]_0\ : out STD_LOGIC;
    \eq_test_reg[8]_0\ : out STD_LOGIC;
    \eq_test_reg[9]_0\ : out STD_LOGIC;
    \eq_test_reg[10]_0\ : out STD_LOGIC;
    \eq_test_reg[11]_0\ : out STD_LOGIC;
    \eq_test_reg[12]_0\ : out STD_LOGIC;
    \eq_test_reg[13]_0\ : out STD_LOGIC;
    \eq_test_reg[14]_0\ : out STD_LOGIC;
    \eq_test_reg[15]_0\ : out STD_LOGIC;
    \eq_test_reg[16]_0\ : out STD_LOGIC;
    \eq_test_reg[17]_0\ : out STD_LOGIC;
    \eq_test_reg[18]_0\ : out STD_LOGIC;
    \eq_test_reg[19]_0\ : out STD_LOGIC;
    \eq_test_reg[20]_0\ : out STD_LOGIC;
    \eq_test_reg[21]_0\ : out STD_LOGIC;
    \eq_test_reg[22]_0\ : out STD_LOGIC;
    \eq_test_reg[23]_0\ : out STD_LOGIC;
    \eq_test_reg[24]_0\ : out STD_LOGIC;
    \eq_test_reg[25]_0\ : out STD_LOGIC;
    \eq_test_reg[26]_0\ : out STD_LOGIC;
    \eq_test_reg[27]_0\ : out STD_LOGIC;
    \eq_test_reg[28]_0\ : out STD_LOGIC;
    \eq_test_reg[29]_0\ : out STD_LOGIC;
    \eq_test_reg[30]_0\ : out STD_LOGIC;
    \eq_test_reg[31]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \tdc_test_fall_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_fx : in STD_LOGIC;
    \gate_cnt_reg[31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    done_fs_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gate_cnt_reg[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \test_cnt_reg[31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[13]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dst_cnt : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \sync_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_eq_counter : entity is "eq_counter";
end ps_Counter_Core_0_1_eq_counter;

architecture STRUCTURE of ps_Counter_Core_0_1_eq_counter is
  signal busy : STD_LOGIC;
  signal busy_i_1_n_0 : STD_LOGIC;
  signal done_fs : STD_LOGIC;
  signal done_fs_0 : STD_LOGIC;
  signal done_fs_i_1_n_0 : STD_LOGIC;
  signal eq_stand : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal eq_start_d : STD_LOGIC;
  signal eq_test : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fall_s1 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal gate : STD_LOGIC;
  signal gate0 : STD_LOGIC;
  signal \gate_cnt[0]_i_10_n_0\ : STD_LOGIC;
  signal \gate_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gate_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \gate_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \gate_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \gate_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \gate_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \gate_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \gate_cnt[0]_i_9_n_0\ : STD_LOGIC;
  signal \gate_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \gate_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \gate_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \gate_cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \gate_cnt[12]_i_6_n_0\ : STD_LOGIC;
  signal \gate_cnt[12]_i_7_n_0\ : STD_LOGIC;
  signal \gate_cnt[12]_i_8_n_0\ : STD_LOGIC;
  signal \gate_cnt[12]_i_9_n_0\ : STD_LOGIC;
  signal \gate_cnt[16]_i_2_n_0\ : STD_LOGIC;
  signal \gate_cnt[16]_i_3_n_0\ : STD_LOGIC;
  signal \gate_cnt[16]_i_4_n_0\ : STD_LOGIC;
  signal \gate_cnt[16]_i_5_n_0\ : STD_LOGIC;
  signal \gate_cnt[16]_i_6_n_0\ : STD_LOGIC;
  signal \gate_cnt[16]_i_7_n_0\ : STD_LOGIC;
  signal \gate_cnt[16]_i_8_n_0\ : STD_LOGIC;
  signal \gate_cnt[16]_i_9_n_0\ : STD_LOGIC;
  signal \gate_cnt[20]_i_2_n_0\ : STD_LOGIC;
  signal \gate_cnt[20]_i_3_n_0\ : STD_LOGIC;
  signal \gate_cnt[20]_i_4_n_0\ : STD_LOGIC;
  signal \gate_cnt[20]_i_5_n_0\ : STD_LOGIC;
  signal \gate_cnt[20]_i_6_n_0\ : STD_LOGIC;
  signal \gate_cnt[20]_i_7_n_0\ : STD_LOGIC;
  signal \gate_cnt[20]_i_8_n_0\ : STD_LOGIC;
  signal \gate_cnt[20]_i_9_n_0\ : STD_LOGIC;
  signal \gate_cnt[24]_i_2_n_0\ : STD_LOGIC;
  signal \gate_cnt[24]_i_3_n_0\ : STD_LOGIC;
  signal \gate_cnt[24]_i_4_n_0\ : STD_LOGIC;
  signal \gate_cnt[24]_i_5_n_0\ : STD_LOGIC;
  signal \gate_cnt[24]_i_6_n_0\ : STD_LOGIC;
  signal \gate_cnt[24]_i_7_n_0\ : STD_LOGIC;
  signal \gate_cnt[24]_i_8_n_0\ : STD_LOGIC;
  signal \gate_cnt[24]_i_9_n_0\ : STD_LOGIC;
  signal \gate_cnt[28]_i_2_n_0\ : STD_LOGIC;
  signal \gate_cnt[28]_i_3_n_0\ : STD_LOGIC;
  signal \gate_cnt[28]_i_4_n_0\ : STD_LOGIC;
  signal \gate_cnt[28]_i_5_n_0\ : STD_LOGIC;
  signal \gate_cnt[28]_i_6_n_0\ : STD_LOGIC;
  signal \gate_cnt[28]_i_7_n_0\ : STD_LOGIC;
  signal \gate_cnt[28]_i_8_n_0\ : STD_LOGIC;
  signal \gate_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \gate_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \gate_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \gate_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \gate_cnt[4]_i_6_n_0\ : STD_LOGIC;
  signal \gate_cnt[4]_i_7_n_0\ : STD_LOGIC;
  signal \gate_cnt[4]_i_8_n_0\ : STD_LOGIC;
  signal \gate_cnt[4]_i_9_n_0\ : STD_LOGIC;
  signal \gate_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \gate_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \gate_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \gate_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal \gate_cnt[8]_i_6_n_0\ : STD_LOGIC;
  signal \gate_cnt[8]_i_7_n_0\ : STD_LOGIC;
  signal \gate_cnt[8]_i_8_n_0\ : STD_LOGIC;
  signal \gate_cnt[8]_i_9_n_0\ : STD_LOGIC;
  signal gate_cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \gate_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \gate_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \gate_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \gate_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \gate_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \gate_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \gate_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \gate_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \gate_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \gate_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \gate_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \gate_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \gate_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \gate_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \gate_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \gate_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \gate_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \gate_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \gate_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \gate_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \gate_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \gate_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \gate_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \gate_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \gate_cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \gate_cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \gate_cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \gate_cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \gate_cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \gate_cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \gate_cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \gate_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \gate_cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \gate_cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \gate_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \gate_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \gate_cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \gate_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \gate_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \gate_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \gate_cnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \gate_cnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \gate_cnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \gate_cnt_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \gate_cnt_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \gate_cnt_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \gate_cnt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \gate_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \gate_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \gate_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \gate_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \gate_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \gate_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \gate_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \gate_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \gate_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \gate_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \gate_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \gate_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \gate_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \gate_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \gate_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \gate_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal gate_fx : STD_LOGIC;
  signal gate_fx_d : STD_LOGIC;
  signal gate_fx_fall : STD_LOGIC;
  signal gate_fx_rise : STD_LOGIC;
  signal gate_i_10_n_0 : STD_LOGIC;
  signal gate_i_1_n_0 : STD_LOGIC;
  signal gate_i_3_n_0 : STD_LOGIC;
  signal gate_i_4_n_0 : STD_LOGIC;
  signal gate_i_5_n_0 : STD_LOGIC;
  signal gate_i_6_n_0 : STD_LOGIC;
  signal gate_i_7_n_0 : STD_LOGIC;
  signal gate_i_8_n_0 : STD_LOGIC;
  signal gate_i_9_n_0 : STD_LOGIC;
  signal gate_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rise_s1 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \settle_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \settle_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \settle_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \settle_cnt_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \stand_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \stand_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal stand_cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \stand_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \stand_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \stand_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \stand_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \stand_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \stand_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \stand_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \stand_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \stand_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \stand_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \stand_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \stand_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \stand_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \stand_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \stand_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \stand_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \stand_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \stand_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \stand_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \stand_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \stand_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \stand_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \stand_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \stand_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \stand_cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \stand_cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \stand_cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \stand_cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \stand_cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \stand_cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \stand_cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \stand_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \stand_cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \stand_cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \stand_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \stand_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \stand_cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \stand_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \stand_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \stand_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \stand_cnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \stand_cnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \stand_cnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \stand_cnt_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \stand_cnt_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \stand_cnt_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \stand_cnt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \stand_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \stand_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \stand_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \stand_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \stand_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \stand_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \stand_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \stand_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \stand_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \stand_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \stand_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \stand_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \stand_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \stand_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \stand_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \stand_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal stand_result : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal stand_result_1 : STD_LOGIC;
  signal stand_s1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tdc_fall_fx : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal tdc_rise_fx : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \tdc_rise_fx[0]_i_1_n_0\ : STD_LOGIC;
  signal \tdc_rise_fx[1]_i_1_n_0\ : STD_LOGIC;
  signal \tdc_rise_fx[2]_i_1_n_0\ : STD_LOGIC;
  signal \tdc_rise_fx[3]_i_1_n_0\ : STD_LOGIC;
  signal \tdc_rise_fx[4]_i_1_n_0\ : STD_LOGIC;
  signal \tdc_rise_fx[5]_i_2_n_0\ : STD_LOGIC;
  signal tdc_val : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal tdc_vld : STD_LOGIC;
  signal \test_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal test_cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \test_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \test_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \test_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \test_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \test_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \test_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \test_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \test_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \test_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \test_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \test_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \test_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \test_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \test_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \test_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \test_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \test_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \test_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \test_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \test_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \test_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \test_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \test_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \test_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \test_cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \test_cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \test_cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \test_cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \test_cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \test_cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \test_cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \test_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \test_cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \test_cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \test_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \test_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \test_cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \test_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \test_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \test_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \test_cnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \test_cnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \test_cnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \test_cnt_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \test_cnt_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \test_cnt_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \test_cnt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \test_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \test_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \test_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \test_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \test_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \test_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \test_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \test_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \test_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \test_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \test_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \test_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \test_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \test_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \test_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \test_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal test_result : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal test_s1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal u_gate_sync_n_1 : STD_LOGIC;
  signal \NLW_gate_cnt_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_stand_cnt_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_test_cnt_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of busy_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of done_fs_i_2 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \settle_cnt[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \settle_cnt[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \settle_cnt[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \settle_cnt[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tdc_rise_fx[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tdc_rise_fx[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tdc_rise_fx[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tdc_rise_fx[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tdc_rise_fx[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tdc_rise_fx[5]_i_2\ : label is "soft_lutpair16";
begin
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(0),
      I1 => eq_stand(0),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(0),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(0),
      O => \eq_test_reg[0]_0\
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(10),
      I1 => eq_stand(10),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(10),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(10),
      O => \eq_test_reg[10]_0\
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(11),
      I1 => eq_stand(11),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(11),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(11),
      O => \eq_test_reg[11]_0\
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(12),
      I1 => eq_stand(12),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(12),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(12),
      O => \eq_test_reg[12]_0\
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(13),
      I1 => eq_stand(13),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(13),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(13),
      O => \eq_test_reg[13]_0\
    );
\axi_rdata[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(14),
      I1 => eq_stand(14),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(14),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(14),
      O => \eq_test_reg[14]_0\
    );
\axi_rdata[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(15),
      I1 => eq_stand(15),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(15),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(15),
      O => \eq_test_reg[15]_0\
    );
\axi_rdata[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(16),
      I1 => eq_stand(16),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(16),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(16),
      O => \eq_test_reg[16]_0\
    );
\axi_rdata[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(17),
      I1 => eq_stand(17),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(17),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(17),
      O => \eq_test_reg[17]_0\
    );
\axi_rdata[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(18),
      I1 => eq_stand(18),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(18),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(18),
      O => \eq_test_reg[18]_0\
    );
\axi_rdata[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(19),
      I1 => eq_stand(19),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(19),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(19),
      O => \eq_test_reg[19]_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(1),
      I1 => eq_stand(1),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(1),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(1),
      O => \eq_test_reg[1]_0\
    );
\axi_rdata[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(20),
      I1 => eq_stand(20),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(20),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(20),
      O => \eq_test_reg[20]_0\
    );
\axi_rdata[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(21),
      I1 => eq_stand(21),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(21),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(21),
      O => \eq_test_reg[21]_0\
    );
\axi_rdata[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(22),
      I1 => eq_stand(22),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(22),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(22),
      O => \eq_test_reg[22]_0\
    );
\axi_rdata[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(23),
      I1 => eq_stand(23),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(23),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(23),
      O => \eq_test_reg[23]_0\
    );
\axi_rdata[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(24),
      I1 => eq_stand(24),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(24),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(24),
      O => \eq_test_reg[24]_0\
    );
\axi_rdata[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(25),
      I1 => eq_stand(25),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(25),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(25),
      O => \eq_test_reg[25]_0\
    );
\axi_rdata[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(26),
      I1 => eq_stand(26),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(26),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(26),
      O => \eq_test_reg[26]_0\
    );
\axi_rdata[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(27),
      I1 => eq_stand(27),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(27),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(27),
      O => \eq_test_reg[27]_0\
    );
\axi_rdata[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(28),
      I1 => eq_stand(28),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(28),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(28),
      O => \eq_test_reg[28]_0\
    );
\axi_rdata[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(29),
      I1 => eq_stand(29),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(29),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(29),
      O => \eq_test_reg[29]_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(2),
      I1 => eq_stand(2),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(2),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(2),
      O => \eq_test_reg[2]_0\
    );
\axi_rdata[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(30),
      I1 => eq_stand(30),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(30),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(30),
      O => \eq_test_reg[30]_0\
    );
\axi_rdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(31),
      I1 => eq_stand(31),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(31),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(31),
      O => \eq_test_reg[31]_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(3),
      I1 => eq_stand(3),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(3),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(3),
      O => \eq_test_reg[3]_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(4),
      I1 => eq_stand(4),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(4),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(4),
      O => \eq_test_reg[4]_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(5),
      I1 => eq_stand(5),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(5),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(5),
      O => \eq_test_reg[5]_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(6),
      I1 => eq_stand(6),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(6),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(6),
      O => \eq_test_reg[6]_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(7),
      I1 => eq_stand(7),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(7),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(7),
      O => \eq_test_reg[7]_0\
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(8),
      I1 => eq_stand(8),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(8),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(8),
      O => \eq_test_reg[8]_0\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => eq_test(9),
      I1 => eq_stand(9),
      I2 => \axi_rdata_reg[13]\(1),
      I3 => \gate_cnt_reg[31]_1\(9),
      I4 => \axi_rdata_reg[13]\(0),
      I5 => dst_cnt(9),
      O => \eq_test_reg[9]_0\
    );
busy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0DFD0D0"
    )
        port map (
      I0 => done_fs_0,
      I1 => gate_reg_n_0,
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => busy_i_1_n_0
    );
busy_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \settle_cnt_reg__0\(5),
      I1 => \settle_cnt_reg__0\(4),
      I2 => \settle_cnt_reg__0\(1),
      I3 => \settle_cnt_reg__0\(0),
      I4 => \settle_cnt_reg__0\(3),
      I5 => \settle_cnt_reg__0\(2),
      O => done_fs_0
    );
busy_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => busy_i_1_n_0,
      Q => busy,
      R => \gate_cnt_reg[31]_0\(0)
    );
done_fs_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AEAA0000"
    )
        port map (
      I0 => done_fs,
      I1 => busy,
      I2 => gate_reg_n_0,
      I3 => done_fs_0,
      I4 => done_fs_reg_0(0),
      I5 => gate0,
      O => done_fs_i_1_n_0
    );
done_fs_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \out\(0),
      I1 => eq_start_d,
      I2 => busy,
      O => gate0
    );
done_fs_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => done_fs_i_1_n_0,
      Q => done_fs,
      R => '0'
    );
\eq_stand_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(0),
      Q => eq_stand(0),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(10),
      Q => eq_stand(10),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(11),
      Q => eq_stand(11),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(12),
      Q => eq_stand(12),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(13),
      Q => eq_stand(13),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(14),
      Q => eq_stand(14),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(15),
      Q => eq_stand(15),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(16),
      Q => eq_stand(16),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(17),
      Q => eq_stand(17),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(18),
      Q => eq_stand(18),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(19),
      Q => eq_stand(19),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(1),
      Q => eq_stand(1),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(20),
      Q => eq_stand(20),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(21),
      Q => eq_stand(21),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(22),
      Q => eq_stand(22),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(23),
      Q => eq_stand(23),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(24),
      Q => eq_stand(24),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(25),
      Q => eq_stand(25),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(26),
      Q => eq_stand(26),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(27),
      Q => eq_stand(27),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(28),
      Q => eq_stand(28),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(29),
      Q => eq_stand(29),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(2),
      Q => eq_stand(2),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(30),
      Q => eq_stand(30),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(31),
      Q => eq_stand(31),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(3),
      Q => eq_stand(3),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(4),
      Q => eq_stand(4),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(5),
      Q => eq_stand(5),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(6),
      Q => eq_stand(6),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(7),
      Q => eq_stand(7),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(8),
      Q => eq_stand(8),
      R => \sync_reg[1]_1\(0)
    );
\eq_stand_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_s1(9),
      Q => eq_stand(9),
      R => \sync_reg[1]_1\(0)
    );
eq_start_d_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \out\(0),
      Q => eq_start_d,
      R => \gate_cnt_reg[31]_0\(0)
    );
\eq_test_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(0),
      Q => eq_test(0),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(10),
      Q => eq_test(10),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(11),
      Q => eq_test(11),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(12),
      Q => eq_test(12),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(13),
      Q => eq_test(13),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(14),
      Q => eq_test(14),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(15),
      Q => eq_test(15),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(16),
      Q => eq_test(16),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(17),
      Q => eq_test(17),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(18),
      Q => eq_test(18),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(19),
      Q => eq_test(19),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(1),
      Q => eq_test(1),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(20),
      Q => eq_test(20),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(21),
      Q => eq_test(21),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(22),
      Q => eq_test(22),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(23),
      Q => eq_test(23),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(24),
      Q => eq_test(24),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(25),
      Q => eq_test(25),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(26),
      Q => eq_test(26),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(27),
      Q => eq_test(27),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(28),
      Q => eq_test(28),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(29),
      Q => eq_test(29),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(2),
      Q => eq_test(2),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(30),
      Q => eq_test(30),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(31),
      Q => eq_test(31),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(3),
      Q => eq_test(3),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(4),
      Q => eq_test(4),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(5),
      Q => eq_test(5),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(6),
      Q => eq_test(6),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(7),
      Q => eq_test(7),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(8),
      Q => eq_test(8),
      R => \sync_reg[1]_1\(0)
    );
\eq_test_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_s1(9),
      Q => eq_test(9),
      R => \sync_reg[1]_1\(0)
    );
\fall_s1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tdc_fall_fx(0),
      Q => fall_s1(0),
      R => \sync_reg[1]_1\(0)
    );
\fall_s1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tdc_fall_fx(1),
      Q => fall_s1(1),
      R => \sync_reg[1]_1\(0)
    );
\fall_s1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tdc_fall_fx(2),
      Q => fall_s1(2),
      R => \sync_reg[1]_1\(0)
    );
\fall_s1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tdc_fall_fx(3),
      Q => fall_s1(3),
      R => \sync_reg[1]_1\(0)
    );
\fall_s1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tdc_fall_fx(4),
      Q => fall_s1(4),
      R => \sync_reg[1]_1\(0)
    );
\fall_s1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tdc_fall_fx(5),
      Q => fall_s1(5),
      R => \sync_reg[1]_1\(0)
    );
\gate_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F04444"
    )
        port map (
      I0 => eq_start_d,
      I1 => \out\(0),
      I2 => gate_reg_n_0,
      I3 => gate,
      I4 => busy,
      O => \gate_cnt[0]_i_1_n_0\
    );
\gate_cnt[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(0),
      I1 => \gate_cnt_reg[31]_1\(0),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[0]_i_10_n_0\
    );
\gate_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(3),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(3),
      O => \gate_cnt[0]_i_3_n_0\
    );
\gate_cnt[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(2),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(2),
      O => \gate_cnt[0]_i_4_n_0\
    );
\gate_cnt[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(1),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(1),
      O => \gate_cnt[0]_i_5_n_0\
    );
\gate_cnt[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(0),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(0),
      O => \gate_cnt[0]_i_6_n_0\
    );
\gate_cnt[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(3),
      I1 => \gate_cnt_reg[31]_1\(3),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[0]_i_7_n_0\
    );
\gate_cnt[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(2),
      I1 => \gate_cnt_reg[31]_1\(2),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[0]_i_8_n_0\
    );
\gate_cnt[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(1),
      I1 => \gate_cnt_reg[31]_1\(1),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[0]_i_9_n_0\
    );
\gate_cnt[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(15),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(15),
      O => \gate_cnt[12]_i_2_n_0\
    );
\gate_cnt[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(14),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(14),
      O => \gate_cnt[12]_i_3_n_0\
    );
\gate_cnt[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(13),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(13),
      O => \gate_cnt[12]_i_4_n_0\
    );
\gate_cnt[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(12),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(12),
      O => \gate_cnt[12]_i_5_n_0\
    );
\gate_cnt[12]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(15),
      I1 => \gate_cnt_reg[31]_1\(15),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[12]_i_6_n_0\
    );
\gate_cnt[12]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(14),
      I1 => \gate_cnt_reg[31]_1\(14),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[12]_i_7_n_0\
    );
\gate_cnt[12]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(13),
      I1 => \gate_cnt_reg[31]_1\(13),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[12]_i_8_n_0\
    );
\gate_cnt[12]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(12),
      I1 => \gate_cnt_reg[31]_1\(12),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[12]_i_9_n_0\
    );
\gate_cnt[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(19),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(19),
      O => \gate_cnt[16]_i_2_n_0\
    );
\gate_cnt[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(18),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(18),
      O => \gate_cnt[16]_i_3_n_0\
    );
\gate_cnt[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(17),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(17),
      O => \gate_cnt[16]_i_4_n_0\
    );
\gate_cnt[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(16),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(16),
      O => \gate_cnt[16]_i_5_n_0\
    );
\gate_cnt[16]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(19),
      I1 => \gate_cnt_reg[31]_1\(19),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[16]_i_6_n_0\
    );
\gate_cnt[16]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(18),
      I1 => \gate_cnt_reg[31]_1\(18),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[16]_i_7_n_0\
    );
\gate_cnt[16]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(17),
      I1 => \gate_cnt_reg[31]_1\(17),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[16]_i_8_n_0\
    );
\gate_cnt[16]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(16),
      I1 => \gate_cnt_reg[31]_1\(16),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[16]_i_9_n_0\
    );
\gate_cnt[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(23),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(23),
      O => \gate_cnt[20]_i_2_n_0\
    );
\gate_cnt[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(22),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(22),
      O => \gate_cnt[20]_i_3_n_0\
    );
\gate_cnt[20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(21),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(21),
      O => \gate_cnt[20]_i_4_n_0\
    );
\gate_cnt[20]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(20),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(20),
      O => \gate_cnt[20]_i_5_n_0\
    );
\gate_cnt[20]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(23),
      I1 => \gate_cnt_reg[31]_1\(23),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[20]_i_6_n_0\
    );
\gate_cnt[20]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(22),
      I1 => \gate_cnt_reg[31]_1\(22),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[20]_i_7_n_0\
    );
\gate_cnt[20]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(21),
      I1 => \gate_cnt_reg[31]_1\(21),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[20]_i_8_n_0\
    );
\gate_cnt[20]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(20),
      I1 => \gate_cnt_reg[31]_1\(20),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[20]_i_9_n_0\
    );
\gate_cnt[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(27),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(27),
      O => \gate_cnt[24]_i_2_n_0\
    );
\gate_cnt[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(26),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(26),
      O => \gate_cnt[24]_i_3_n_0\
    );
\gate_cnt[24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(25),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(25),
      O => \gate_cnt[24]_i_4_n_0\
    );
\gate_cnt[24]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(24),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(24),
      O => \gate_cnt[24]_i_5_n_0\
    );
\gate_cnt[24]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(27),
      I1 => \gate_cnt_reg[31]_1\(27),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[24]_i_6_n_0\
    );
\gate_cnt[24]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(26),
      I1 => \gate_cnt_reg[31]_1\(26),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[24]_i_7_n_0\
    );
\gate_cnt[24]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(25),
      I1 => \gate_cnt_reg[31]_1\(25),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[24]_i_8_n_0\
    );
\gate_cnt[24]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(24),
      I1 => \gate_cnt_reg[31]_1\(24),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[24]_i_9_n_0\
    );
\gate_cnt[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(30),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(30),
      O => \gate_cnt[28]_i_2_n_0\
    );
\gate_cnt[28]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(29),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(29),
      O => \gate_cnt[28]_i_3_n_0\
    );
\gate_cnt[28]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(28),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(28),
      O => \gate_cnt[28]_i_4_n_0\
    );
\gate_cnt[28]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(31),
      I1 => \gate_cnt_reg[31]_1\(31),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[28]_i_5_n_0\
    );
\gate_cnt[28]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(30),
      I1 => \gate_cnt_reg[31]_1\(30),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[28]_i_6_n_0\
    );
\gate_cnt[28]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(29),
      I1 => \gate_cnt_reg[31]_1\(29),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[28]_i_7_n_0\
    );
\gate_cnt[28]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(28),
      I1 => \gate_cnt_reg[31]_1\(28),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[28]_i_8_n_0\
    );
\gate_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(7),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(7),
      O => \gate_cnt[4]_i_2_n_0\
    );
\gate_cnt[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(6),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(6),
      O => \gate_cnt[4]_i_3_n_0\
    );
\gate_cnt[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(5),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(5),
      O => \gate_cnt[4]_i_4_n_0\
    );
\gate_cnt[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(4),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(4),
      O => \gate_cnt[4]_i_5_n_0\
    );
\gate_cnt[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(7),
      I1 => \gate_cnt_reg[31]_1\(7),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[4]_i_6_n_0\
    );
\gate_cnt[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(6),
      I1 => \gate_cnt_reg[31]_1\(6),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[4]_i_7_n_0\
    );
\gate_cnt[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(5),
      I1 => \gate_cnt_reg[31]_1\(5),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[4]_i_8_n_0\
    );
\gate_cnt[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(4),
      I1 => \gate_cnt_reg[31]_1\(4),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[4]_i_9_n_0\
    );
\gate_cnt[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(11),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(11),
      O => \gate_cnt[8]_i_2_n_0\
    );
\gate_cnt[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(10),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(10),
      O => \gate_cnt[8]_i_3_n_0\
    );
\gate_cnt[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(9),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(9),
      O => \gate_cnt[8]_i_4_n_0\
    );
\gate_cnt[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \gate_cnt_reg[31]_1\(8),
      I1 => \out\(0),
      I2 => eq_start_d,
      I3 => busy,
      I4 => gate_cnt_reg(8),
      O => \gate_cnt[8]_i_5_n_0\
    );
\gate_cnt[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(11),
      I1 => \gate_cnt_reg[31]_1\(11),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[8]_i_6_n_0\
    );
\gate_cnt[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(10),
      I1 => \gate_cnt_reg[31]_1\(10),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[8]_i_7_n_0\
    );
\gate_cnt[8]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(9),
      I1 => \gate_cnt_reg[31]_1\(9),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[8]_i_8_n_0\
    );
\gate_cnt[8]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555C5555"
    )
        port map (
      I0 => gate_cnt_reg(8),
      I1 => \gate_cnt_reg[31]_1\(8),
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => \gate_cnt[8]_i_9_n_0\
    );
\gate_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[0]_i_2_n_7\,
      Q => gate_cnt_reg(0),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \gate_cnt_reg[0]_i_2_n_0\,
      CO(2) => \gate_cnt_reg[0]_i_2_n_1\,
      CO(1) => \gate_cnt_reg[0]_i_2_n_2\,
      CO(0) => \gate_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \gate_cnt[0]_i_3_n_0\,
      DI(2) => \gate_cnt[0]_i_4_n_0\,
      DI(1) => \gate_cnt[0]_i_5_n_0\,
      DI(0) => \gate_cnt[0]_i_6_n_0\,
      O(3) => \gate_cnt_reg[0]_i_2_n_4\,
      O(2) => \gate_cnt_reg[0]_i_2_n_5\,
      O(1) => \gate_cnt_reg[0]_i_2_n_6\,
      O(0) => \gate_cnt_reg[0]_i_2_n_7\,
      S(3) => \gate_cnt[0]_i_7_n_0\,
      S(2) => \gate_cnt[0]_i_8_n_0\,
      S(1) => \gate_cnt[0]_i_9_n_0\,
      S(0) => \gate_cnt[0]_i_10_n_0\
    );
\gate_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[8]_i_1_n_5\,
      Q => gate_cnt_reg(10),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[8]_i_1_n_4\,
      Q => gate_cnt_reg(11),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[12]_i_1_n_7\,
      Q => gate_cnt_reg(12),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gate_cnt_reg[8]_i_1_n_0\,
      CO(3) => \gate_cnt_reg[12]_i_1_n_0\,
      CO(2) => \gate_cnt_reg[12]_i_1_n_1\,
      CO(1) => \gate_cnt_reg[12]_i_1_n_2\,
      CO(0) => \gate_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gate_cnt[12]_i_2_n_0\,
      DI(2) => \gate_cnt[12]_i_3_n_0\,
      DI(1) => \gate_cnt[12]_i_4_n_0\,
      DI(0) => \gate_cnt[12]_i_5_n_0\,
      O(3) => \gate_cnt_reg[12]_i_1_n_4\,
      O(2) => \gate_cnt_reg[12]_i_1_n_5\,
      O(1) => \gate_cnt_reg[12]_i_1_n_6\,
      O(0) => \gate_cnt_reg[12]_i_1_n_7\,
      S(3) => \gate_cnt[12]_i_6_n_0\,
      S(2) => \gate_cnt[12]_i_7_n_0\,
      S(1) => \gate_cnt[12]_i_8_n_0\,
      S(0) => \gate_cnt[12]_i_9_n_0\
    );
\gate_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[12]_i_1_n_6\,
      Q => gate_cnt_reg(13),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[12]_i_1_n_5\,
      Q => gate_cnt_reg(14),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[12]_i_1_n_4\,
      Q => gate_cnt_reg(15),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[16]_i_1_n_7\,
      Q => gate_cnt_reg(16),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gate_cnt_reg[12]_i_1_n_0\,
      CO(3) => \gate_cnt_reg[16]_i_1_n_0\,
      CO(2) => \gate_cnt_reg[16]_i_1_n_1\,
      CO(1) => \gate_cnt_reg[16]_i_1_n_2\,
      CO(0) => \gate_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gate_cnt[16]_i_2_n_0\,
      DI(2) => \gate_cnt[16]_i_3_n_0\,
      DI(1) => \gate_cnt[16]_i_4_n_0\,
      DI(0) => \gate_cnt[16]_i_5_n_0\,
      O(3) => \gate_cnt_reg[16]_i_1_n_4\,
      O(2) => \gate_cnt_reg[16]_i_1_n_5\,
      O(1) => \gate_cnt_reg[16]_i_1_n_6\,
      O(0) => \gate_cnt_reg[16]_i_1_n_7\,
      S(3) => \gate_cnt[16]_i_6_n_0\,
      S(2) => \gate_cnt[16]_i_7_n_0\,
      S(1) => \gate_cnt[16]_i_8_n_0\,
      S(0) => \gate_cnt[16]_i_9_n_0\
    );
\gate_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[16]_i_1_n_6\,
      Q => gate_cnt_reg(17),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[16]_i_1_n_5\,
      Q => gate_cnt_reg(18),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[16]_i_1_n_4\,
      Q => gate_cnt_reg(19),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[0]_i_2_n_6\,
      Q => gate_cnt_reg(1),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[20]_i_1_n_7\,
      Q => gate_cnt_reg(20),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gate_cnt_reg[16]_i_1_n_0\,
      CO(3) => \gate_cnt_reg[20]_i_1_n_0\,
      CO(2) => \gate_cnt_reg[20]_i_1_n_1\,
      CO(1) => \gate_cnt_reg[20]_i_1_n_2\,
      CO(0) => \gate_cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gate_cnt[20]_i_2_n_0\,
      DI(2) => \gate_cnt[20]_i_3_n_0\,
      DI(1) => \gate_cnt[20]_i_4_n_0\,
      DI(0) => \gate_cnt[20]_i_5_n_0\,
      O(3) => \gate_cnt_reg[20]_i_1_n_4\,
      O(2) => \gate_cnt_reg[20]_i_1_n_5\,
      O(1) => \gate_cnt_reg[20]_i_1_n_6\,
      O(0) => \gate_cnt_reg[20]_i_1_n_7\,
      S(3) => \gate_cnt[20]_i_6_n_0\,
      S(2) => \gate_cnt[20]_i_7_n_0\,
      S(1) => \gate_cnt[20]_i_8_n_0\,
      S(0) => \gate_cnt[20]_i_9_n_0\
    );
\gate_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[20]_i_1_n_6\,
      Q => gate_cnt_reg(21),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[20]_i_1_n_5\,
      Q => gate_cnt_reg(22),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[20]_i_1_n_4\,
      Q => gate_cnt_reg(23),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[24]_i_1_n_7\,
      Q => gate_cnt_reg(24),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gate_cnt_reg[20]_i_1_n_0\,
      CO(3) => \gate_cnt_reg[24]_i_1_n_0\,
      CO(2) => \gate_cnt_reg[24]_i_1_n_1\,
      CO(1) => \gate_cnt_reg[24]_i_1_n_2\,
      CO(0) => \gate_cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gate_cnt[24]_i_2_n_0\,
      DI(2) => \gate_cnt[24]_i_3_n_0\,
      DI(1) => \gate_cnt[24]_i_4_n_0\,
      DI(0) => \gate_cnt[24]_i_5_n_0\,
      O(3) => \gate_cnt_reg[24]_i_1_n_4\,
      O(2) => \gate_cnt_reg[24]_i_1_n_5\,
      O(1) => \gate_cnt_reg[24]_i_1_n_6\,
      O(0) => \gate_cnt_reg[24]_i_1_n_7\,
      S(3) => \gate_cnt[24]_i_6_n_0\,
      S(2) => \gate_cnt[24]_i_7_n_0\,
      S(1) => \gate_cnt[24]_i_8_n_0\,
      S(0) => \gate_cnt[24]_i_9_n_0\
    );
\gate_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[24]_i_1_n_6\,
      Q => gate_cnt_reg(25),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[24]_i_1_n_5\,
      Q => gate_cnt_reg(26),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[24]_i_1_n_4\,
      Q => gate_cnt_reg(27),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[28]_i_1_n_7\,
      Q => gate_cnt_reg(28),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gate_cnt_reg[24]_i_1_n_0\,
      CO(3) => \NLW_gate_cnt_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \gate_cnt_reg[28]_i_1_n_1\,
      CO(1) => \gate_cnt_reg[28]_i_1_n_2\,
      CO(0) => \gate_cnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \gate_cnt[28]_i_2_n_0\,
      DI(1) => \gate_cnt[28]_i_3_n_0\,
      DI(0) => \gate_cnt[28]_i_4_n_0\,
      O(3) => \gate_cnt_reg[28]_i_1_n_4\,
      O(2) => \gate_cnt_reg[28]_i_1_n_5\,
      O(1) => \gate_cnt_reg[28]_i_1_n_6\,
      O(0) => \gate_cnt_reg[28]_i_1_n_7\,
      S(3) => \gate_cnt[28]_i_5_n_0\,
      S(2) => \gate_cnt[28]_i_6_n_0\,
      S(1) => \gate_cnt[28]_i_7_n_0\,
      S(0) => \gate_cnt[28]_i_8_n_0\
    );
\gate_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[28]_i_1_n_6\,
      Q => gate_cnt_reg(29),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[0]_i_2_n_5\,
      Q => gate_cnt_reg(2),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[28]_i_1_n_5\,
      Q => gate_cnt_reg(30),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[28]_i_1_n_4\,
      Q => gate_cnt_reg(31),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[0]_i_2_n_4\,
      Q => gate_cnt_reg(3),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[4]_i_1_n_7\,
      Q => gate_cnt_reg(4),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gate_cnt_reg[0]_i_2_n_0\,
      CO(3) => \gate_cnt_reg[4]_i_1_n_0\,
      CO(2) => \gate_cnt_reg[4]_i_1_n_1\,
      CO(1) => \gate_cnt_reg[4]_i_1_n_2\,
      CO(0) => \gate_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gate_cnt[4]_i_2_n_0\,
      DI(2) => \gate_cnt[4]_i_3_n_0\,
      DI(1) => \gate_cnt[4]_i_4_n_0\,
      DI(0) => \gate_cnt[4]_i_5_n_0\,
      O(3) => \gate_cnt_reg[4]_i_1_n_4\,
      O(2) => \gate_cnt_reg[4]_i_1_n_5\,
      O(1) => \gate_cnt_reg[4]_i_1_n_6\,
      O(0) => \gate_cnt_reg[4]_i_1_n_7\,
      S(3) => \gate_cnt[4]_i_6_n_0\,
      S(2) => \gate_cnt[4]_i_7_n_0\,
      S(1) => \gate_cnt[4]_i_8_n_0\,
      S(0) => \gate_cnt[4]_i_9_n_0\
    );
\gate_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[4]_i_1_n_6\,
      Q => gate_cnt_reg(5),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[4]_i_1_n_5\,
      Q => gate_cnt_reg(6),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[4]_i_1_n_4\,
      Q => gate_cnt_reg(7),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[8]_i_1_n_7\,
      Q => gate_cnt_reg(8),
      R => \gate_cnt_reg[31]_0\(0)
    );
\gate_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gate_cnt_reg[4]_i_1_n_0\,
      CO(3) => \gate_cnt_reg[8]_i_1_n_0\,
      CO(2) => \gate_cnt_reg[8]_i_1_n_1\,
      CO(1) => \gate_cnt_reg[8]_i_1_n_2\,
      CO(0) => \gate_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \gate_cnt[8]_i_2_n_0\,
      DI(2) => \gate_cnt[8]_i_3_n_0\,
      DI(1) => \gate_cnt[8]_i_4_n_0\,
      DI(0) => \gate_cnt[8]_i_5_n_0\,
      O(3) => \gate_cnt_reg[8]_i_1_n_4\,
      O(2) => \gate_cnt_reg[8]_i_1_n_5\,
      O(1) => \gate_cnt_reg[8]_i_1_n_6\,
      O(0) => \gate_cnt_reg[8]_i_1_n_7\,
      S(3) => \gate_cnt[8]_i_6_n_0\,
      S(2) => \gate_cnt[8]_i_7_n_0\,
      S(1) => \gate_cnt[8]_i_8_n_0\,
      S(0) => \gate_cnt[8]_i_9_n_0\
    );
\gate_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \gate_cnt[0]_i_1_n_0\,
      D => \gate_cnt_reg[8]_i_1_n_6\,
      Q => gate_cnt_reg(9),
      R => \gate_cnt_reg[31]_0\(0)
    );
gate_fx_d_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => '1',
      D => gate_fx,
      Q => gate_fx_d,
      R => SR(0)
    );
gate_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2F2A2A"
    )
        port map (
      I0 => gate_reg_n_0,
      I1 => gate,
      I2 => busy,
      I3 => eq_start_d,
      I4 => \out\(0),
      O => gate_i_1_n_0
    );
gate_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => gate_cnt_reg(10),
      I1 => gate_cnt_reg(11),
      I2 => gate_cnt_reg(8),
      I3 => gate_cnt_reg(9),
      O => gate_i_10_n_0
    );
gate_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => gate_i_3_n_0,
      I1 => gate_i_4_n_0,
      I2 => gate_i_5_n_0,
      I3 => gate_i_6_n_0,
      O => gate
    );
gate_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => gate_cnt_reg(21),
      I1 => gate_cnt_reg(20),
      I2 => gate_cnt_reg(23),
      I3 => gate_cnt_reg(22),
      I4 => gate_i_7_n_0,
      O => gate_i_3_n_0
    );
gate_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => gate_cnt_reg(29),
      I1 => gate_cnt_reg(28),
      I2 => gate_cnt_reg(30),
      I3 => gate_cnt_reg(31),
      I4 => gate_i_8_n_0,
      O => gate_i_4_n_0
    );
gate_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => gate_cnt_reg(5),
      I1 => gate_cnt_reg(4),
      I2 => gate_cnt_reg(7),
      I3 => gate_cnt_reg(6),
      I4 => gate_i_9_n_0,
      O => gate_i_5_n_0
    );
gate_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => gate_cnt_reg(13),
      I1 => gate_cnt_reg(12),
      I2 => gate_cnt_reg(15),
      I3 => gate_cnt_reg(14),
      I4 => gate_i_10_n_0,
      O => gate_i_6_n_0
    );
gate_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => gate_cnt_reg(18),
      I1 => gate_cnt_reg(19),
      I2 => gate_cnt_reg(16),
      I3 => gate_cnt_reg(17),
      O => gate_i_7_n_0
    );
gate_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => gate_cnt_reg(26),
      I1 => gate_cnt_reg(27),
      I2 => gate_cnt_reg(24),
      I3 => gate_cnt_reg(25),
      O => gate_i_8_n_0
    );
gate_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => gate_cnt_reg(2),
      I1 => gate_cnt_reg(3),
      I2 => gate_cnt_reg(0),
      I3 => gate_cnt_reg(1),
      O => gate_i_9_n_0
    );
gate_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => gate_i_1_n_0,
      Q => gate_reg_n_0,
      R => \gate_cnt_reg[31]_0\(0)
    );
\rise_s1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tdc_rise_fx(0),
      Q => rise_s1(0),
      R => \sync_reg[1]_1\(0)
    );
\rise_s1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tdc_rise_fx(1),
      Q => rise_s1(1),
      R => \sync_reg[1]_1\(0)
    );
\rise_s1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tdc_rise_fx(2),
      Q => rise_s1(2),
      R => \sync_reg[1]_1\(0)
    );
\rise_s1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tdc_rise_fx(3),
      Q => rise_s1(3),
      R => \sync_reg[1]_1\(0)
    );
\rise_s1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tdc_rise_fx(4),
      Q => rise_s1(4),
      R => \sync_reg[1]_1\(0)
    );
\rise_s1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tdc_rise_fx(5),
      Q => rise_s1(5),
      R => \sync_reg[1]_1\(0)
    );
\settle_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \settle_cnt_reg__0\(0),
      O => p_0_in(0)
    );
\settle_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \settle_cnt_reg__0\(0),
      I1 => \settle_cnt_reg__0\(1),
      O => p_0_in(1)
    );
\settle_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \settle_cnt_reg__0\(0),
      I1 => \settle_cnt_reg__0\(1),
      I2 => \settle_cnt_reg__0\(2),
      O => \settle_cnt[2]_i_1_n_0\
    );
\settle_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \settle_cnt_reg__0\(1),
      I1 => \settle_cnt_reg__0\(0),
      I2 => \settle_cnt_reg__0\(2),
      I3 => \settle_cnt_reg__0\(3),
      O => p_0_in(3)
    );
\settle_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \settle_cnt_reg__0\(2),
      I1 => \settle_cnt_reg__0\(0),
      I2 => \settle_cnt_reg__0\(1),
      I3 => \settle_cnt_reg__0\(3),
      I4 => \settle_cnt_reg__0\(4),
      O => p_0_in(4)
    );
\settle_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => busy,
      I1 => eq_start_d,
      I2 => \out\(0),
      I3 => done_fs_reg_0(0),
      O => \settle_cnt[5]_i_1_n_0\
    );
\settle_cnt[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => busy,
      I1 => done_fs_0,
      I2 => gate_reg_n_0,
      O => \settle_cnt[5]_i_2_n_0\
    );
\settle_cnt[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \settle_cnt_reg__0\(3),
      I1 => \settle_cnt_reg__0\(1),
      I2 => \settle_cnt_reg__0\(0),
      I3 => \settle_cnt_reg__0\(2),
      I4 => \settle_cnt_reg__0\(4),
      I5 => \settle_cnt_reg__0\(5),
      O => p_0_in(5)
    );
\settle_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \settle_cnt[5]_i_2_n_0\,
      D => p_0_in(0),
      Q => \settle_cnt_reg__0\(0),
      R => \settle_cnt[5]_i_1_n_0\
    );
\settle_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \settle_cnt[5]_i_2_n_0\,
      D => p_0_in(1),
      Q => \settle_cnt_reg__0\(1),
      R => \settle_cnt[5]_i_1_n_0\
    );
\settle_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \settle_cnt[5]_i_2_n_0\,
      D => \settle_cnt[2]_i_1_n_0\,
      Q => \settle_cnt_reg__0\(2),
      R => \settle_cnt[5]_i_1_n_0\
    );
\settle_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \settle_cnt[5]_i_2_n_0\,
      D => p_0_in(3),
      Q => \settle_cnt_reg__0\(3),
      R => \settle_cnt[5]_i_1_n_0\
    );
\settle_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \settle_cnt[5]_i_2_n_0\,
      D => p_0_in(4),
      Q => \settle_cnt_reg__0\(4),
      R => \settle_cnt[5]_i_1_n_0\
    );
\settle_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \settle_cnt[5]_i_2_n_0\,
      D => p_0_in(5),
      Q => \settle_cnt_reg__0\(5),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => busy,
      I1 => gate,
      I2 => gate_reg_n_0,
      O => \stand_cnt[0]_i_1_n_0\
    );
\stand_cnt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => stand_cnt_reg(0),
      O => \stand_cnt[0]_i_3_n_0\
    );
\stand_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[0]_i_2_n_7\,
      Q => stand_cnt_reg(0),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \stand_cnt_reg[0]_i_2_n_0\,
      CO(2) => \stand_cnt_reg[0]_i_2_n_1\,
      CO(1) => \stand_cnt_reg[0]_i_2_n_2\,
      CO(0) => \stand_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \stand_cnt_reg[0]_i_2_n_4\,
      O(2) => \stand_cnt_reg[0]_i_2_n_5\,
      O(1) => \stand_cnt_reg[0]_i_2_n_6\,
      O(0) => \stand_cnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => stand_cnt_reg(3 downto 1),
      S(0) => \stand_cnt[0]_i_3_n_0\
    );
\stand_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[8]_i_1_n_5\,
      Q => stand_cnt_reg(10),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[8]_i_1_n_4\,
      Q => stand_cnt_reg(11),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[12]_i_1_n_7\,
      Q => stand_cnt_reg(12),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \stand_cnt_reg[8]_i_1_n_0\,
      CO(3) => \stand_cnt_reg[12]_i_1_n_0\,
      CO(2) => \stand_cnt_reg[12]_i_1_n_1\,
      CO(1) => \stand_cnt_reg[12]_i_1_n_2\,
      CO(0) => \stand_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \stand_cnt_reg[12]_i_1_n_4\,
      O(2) => \stand_cnt_reg[12]_i_1_n_5\,
      O(1) => \stand_cnt_reg[12]_i_1_n_6\,
      O(0) => \stand_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => stand_cnt_reg(15 downto 12)
    );
\stand_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[12]_i_1_n_6\,
      Q => stand_cnt_reg(13),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[12]_i_1_n_5\,
      Q => stand_cnt_reg(14),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[12]_i_1_n_4\,
      Q => stand_cnt_reg(15),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[16]_i_1_n_7\,
      Q => stand_cnt_reg(16),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \stand_cnt_reg[12]_i_1_n_0\,
      CO(3) => \stand_cnt_reg[16]_i_1_n_0\,
      CO(2) => \stand_cnt_reg[16]_i_1_n_1\,
      CO(1) => \stand_cnt_reg[16]_i_1_n_2\,
      CO(0) => \stand_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \stand_cnt_reg[16]_i_1_n_4\,
      O(2) => \stand_cnt_reg[16]_i_1_n_5\,
      O(1) => \stand_cnt_reg[16]_i_1_n_6\,
      O(0) => \stand_cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => stand_cnt_reg(19 downto 16)
    );
\stand_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[16]_i_1_n_6\,
      Q => stand_cnt_reg(17),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[16]_i_1_n_5\,
      Q => stand_cnt_reg(18),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[16]_i_1_n_4\,
      Q => stand_cnt_reg(19),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[0]_i_2_n_6\,
      Q => stand_cnt_reg(1),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[20]_i_1_n_7\,
      Q => stand_cnt_reg(20),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \stand_cnt_reg[16]_i_1_n_0\,
      CO(3) => \stand_cnt_reg[20]_i_1_n_0\,
      CO(2) => \stand_cnt_reg[20]_i_1_n_1\,
      CO(1) => \stand_cnt_reg[20]_i_1_n_2\,
      CO(0) => \stand_cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \stand_cnt_reg[20]_i_1_n_4\,
      O(2) => \stand_cnt_reg[20]_i_1_n_5\,
      O(1) => \stand_cnt_reg[20]_i_1_n_6\,
      O(0) => \stand_cnt_reg[20]_i_1_n_7\,
      S(3 downto 0) => stand_cnt_reg(23 downto 20)
    );
\stand_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[20]_i_1_n_6\,
      Q => stand_cnt_reg(21),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[20]_i_1_n_5\,
      Q => stand_cnt_reg(22),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[20]_i_1_n_4\,
      Q => stand_cnt_reg(23),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[24]_i_1_n_7\,
      Q => stand_cnt_reg(24),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \stand_cnt_reg[20]_i_1_n_0\,
      CO(3) => \stand_cnt_reg[24]_i_1_n_0\,
      CO(2) => \stand_cnt_reg[24]_i_1_n_1\,
      CO(1) => \stand_cnt_reg[24]_i_1_n_2\,
      CO(0) => \stand_cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \stand_cnt_reg[24]_i_1_n_4\,
      O(2) => \stand_cnt_reg[24]_i_1_n_5\,
      O(1) => \stand_cnt_reg[24]_i_1_n_6\,
      O(0) => \stand_cnt_reg[24]_i_1_n_7\,
      S(3 downto 0) => stand_cnt_reg(27 downto 24)
    );
\stand_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[24]_i_1_n_6\,
      Q => stand_cnt_reg(25),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[24]_i_1_n_5\,
      Q => stand_cnt_reg(26),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[24]_i_1_n_4\,
      Q => stand_cnt_reg(27),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[28]_i_1_n_7\,
      Q => stand_cnt_reg(28),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \stand_cnt_reg[24]_i_1_n_0\,
      CO(3) => \NLW_stand_cnt_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \stand_cnt_reg[28]_i_1_n_1\,
      CO(1) => \stand_cnt_reg[28]_i_1_n_2\,
      CO(0) => \stand_cnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \stand_cnt_reg[28]_i_1_n_4\,
      O(2) => \stand_cnt_reg[28]_i_1_n_5\,
      O(1) => \stand_cnt_reg[28]_i_1_n_6\,
      O(0) => \stand_cnt_reg[28]_i_1_n_7\,
      S(3 downto 0) => stand_cnt_reg(31 downto 28)
    );
\stand_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[28]_i_1_n_6\,
      Q => stand_cnt_reg(29),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[0]_i_2_n_5\,
      Q => stand_cnt_reg(2),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[28]_i_1_n_5\,
      Q => stand_cnt_reg(30),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[28]_i_1_n_4\,
      Q => stand_cnt_reg(31),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[0]_i_2_n_4\,
      Q => stand_cnt_reg(3),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[4]_i_1_n_7\,
      Q => stand_cnt_reg(4),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \stand_cnt_reg[0]_i_2_n_0\,
      CO(3) => \stand_cnt_reg[4]_i_1_n_0\,
      CO(2) => \stand_cnt_reg[4]_i_1_n_1\,
      CO(1) => \stand_cnt_reg[4]_i_1_n_2\,
      CO(0) => \stand_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \stand_cnt_reg[4]_i_1_n_4\,
      O(2) => \stand_cnt_reg[4]_i_1_n_5\,
      O(1) => \stand_cnt_reg[4]_i_1_n_6\,
      O(0) => \stand_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => stand_cnt_reg(7 downto 4)
    );
\stand_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[4]_i_1_n_6\,
      Q => stand_cnt_reg(5),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[4]_i_1_n_5\,
      Q => stand_cnt_reg(6),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[4]_i_1_n_4\,
      Q => stand_cnt_reg(7),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[8]_i_1_n_7\,
      Q => stand_cnt_reg(8),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \stand_cnt_reg[4]_i_1_n_0\,
      CO(3) => \stand_cnt_reg[8]_i_1_n_0\,
      CO(2) => \stand_cnt_reg[8]_i_1_n_1\,
      CO(1) => \stand_cnt_reg[8]_i_1_n_2\,
      CO(0) => \stand_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \stand_cnt_reg[8]_i_1_n_4\,
      O(2) => \stand_cnt_reg[8]_i_1_n_5\,
      O(1) => \stand_cnt_reg[8]_i_1_n_6\,
      O(0) => \stand_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => stand_cnt_reg(11 downto 8)
    );
\stand_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \stand_cnt[0]_i_1_n_0\,
      D => \stand_cnt_reg[8]_i_1_n_6\,
      Q => stand_cnt_reg(9),
      R => \settle_cnt[5]_i_1_n_0\
    );
\stand_result[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => busy,
      I1 => gate,
      I2 => gate_reg_n_0,
      O => stand_result_1
    );
\stand_result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(0),
      Q => stand_result(0),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(10),
      Q => stand_result(10),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(11),
      Q => stand_result(11),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(12),
      Q => stand_result(12),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(13),
      Q => stand_result(13),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(14),
      Q => stand_result(14),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(15),
      Q => stand_result(15),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(16),
      Q => stand_result(16),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(17),
      Q => stand_result(17),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(18),
      Q => stand_result(18),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(19),
      Q => stand_result(19),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(1),
      Q => stand_result(1),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(20),
      Q => stand_result(20),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(21),
      Q => stand_result(21),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(22),
      Q => stand_result(22),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(23),
      Q => stand_result(23),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(24),
      Q => stand_result(24),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(25),
      Q => stand_result(25),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(26),
      Q => stand_result(26),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(27),
      Q => stand_result(27),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(28),
      Q => stand_result(28),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(29),
      Q => stand_result(29),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(2),
      Q => stand_result(2),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(30),
      Q => stand_result(30),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(31),
      Q => stand_result(31),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(3),
      Q => stand_result(3),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(4),
      Q => stand_result(4),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(5),
      Q => stand_result(5),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(6),
      Q => stand_result(6),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(7),
      Q => stand_result(7),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(8),
      Q => stand_result(8),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_result_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => stand_result_1,
      D => stand_cnt_reg(9),
      Q => stand_result(9),
      R => \gate_cnt_reg[31]_0\(0)
    );
\stand_s1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(0),
      Q => stand_s1(0),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(10),
      Q => stand_s1(10),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(11),
      Q => stand_s1(11),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(12),
      Q => stand_s1(12),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(13),
      Q => stand_s1(13),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(14),
      Q => stand_s1(14),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(15),
      Q => stand_s1(15),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(16),
      Q => stand_s1(16),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(17),
      Q => stand_s1(17),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(18),
      Q => stand_s1(18),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(19),
      Q => stand_s1(19),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(1),
      Q => stand_s1(1),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(20),
      Q => stand_s1(20),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(21),
      Q => stand_s1(21),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(22),
      Q => stand_s1(22),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(23),
      Q => stand_s1(23),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(24),
      Q => stand_s1(24),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(25),
      Q => stand_s1(25),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(26),
      Q => stand_s1(26),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(27),
      Q => stand_s1(27),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(28),
      Q => stand_s1(28),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(29),
      Q => stand_s1(29),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(2),
      Q => stand_s1(2),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(30),
      Q => stand_s1(30),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(31),
      Q => stand_s1(31),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(3),
      Q => stand_s1(3),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(4),
      Q => stand_s1(4),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(5),
      Q => stand_s1(5),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(6),
      Q => stand_s1(6),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(7),
      Q => stand_s1(7),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(8),
      Q => stand_s1(8),
      R => \sync_reg[1]_1\(0)
    );
\stand_s1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => stand_result(9),
      Q => stand_s1(9),
      R => \sync_reg[1]_1\(0)
    );
\tdc_fall_fx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => \tdc_rise_fx[0]_i_1_n_0\,
      Q => tdc_fall_fx(0),
      R => SR(0)
    );
\tdc_fall_fx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => \tdc_rise_fx[1]_i_1_n_0\,
      Q => tdc_fall_fx(1),
      R => SR(0)
    );
\tdc_fall_fx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => \tdc_rise_fx[2]_i_1_n_0\,
      Q => tdc_fall_fx(2),
      R => SR(0)
    );
\tdc_fall_fx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => \tdc_rise_fx[3]_i_1_n_0\,
      Q => tdc_fall_fx(3),
      R => SR(0)
    );
\tdc_fall_fx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => \tdc_rise_fx[4]_i_1_n_0\,
      Q => tdc_fall_fx(4),
      R => SR(0)
    );
\tdc_fall_fx_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => \tdc_rise_fx[5]_i_2_n_0\,
      Q => tdc_fall_fx(5),
      R => SR(0)
    );
\tdc_rise_fx[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tdc_vld,
      I1 => tdc_val(0),
      O => \tdc_rise_fx[0]_i_1_n_0\
    );
\tdc_rise_fx[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tdc_vld,
      I1 => tdc_val(1),
      O => \tdc_rise_fx[1]_i_1_n_0\
    );
\tdc_rise_fx[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tdc_vld,
      I1 => tdc_val(2),
      O => \tdc_rise_fx[2]_i_1_n_0\
    );
\tdc_rise_fx[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tdc_vld,
      I1 => tdc_val(3),
      O => \tdc_rise_fx[3]_i_1_n_0\
    );
\tdc_rise_fx[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tdc_vld,
      I1 => tdc_val(4),
      O => \tdc_rise_fx[4]_i_1_n_0\
    );
\tdc_rise_fx[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tdc_vld,
      I1 => tdc_val(5),
      O => \tdc_rise_fx[5]_i_2_n_0\
    );
\tdc_rise_fx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_rise,
      D => \tdc_rise_fx[0]_i_1_n_0\,
      Q => tdc_rise_fx(0),
      R => SR(0)
    );
\tdc_rise_fx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_rise,
      D => \tdc_rise_fx[1]_i_1_n_0\,
      Q => tdc_rise_fx(1),
      R => SR(0)
    );
\tdc_rise_fx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_rise,
      D => \tdc_rise_fx[2]_i_1_n_0\,
      Q => tdc_rise_fx(2),
      R => SR(0)
    );
\tdc_rise_fx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_rise,
      D => \tdc_rise_fx[3]_i_1_n_0\,
      Q => tdc_rise_fx(3),
      R => SR(0)
    );
\tdc_rise_fx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_rise,
      D => \tdc_rise_fx[4]_i_1_n_0\,
      Q => tdc_rise_fx(4),
      R => SR(0)
    );
\tdc_rise_fx_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_rise,
      D => \tdc_rise_fx[5]_i_2_n_0\,
      Q => tdc_rise_fx(5),
      R => SR(0)
    );
\tdc_test_fall_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => fall_s1(0),
      Q => \tdc_test_fall_reg[5]_0\(0),
      R => \sync_reg[1]_1\(0)
    );
\tdc_test_fall_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => fall_s1(1),
      Q => \tdc_test_fall_reg[5]_0\(1),
      R => \sync_reg[1]_1\(0)
    );
\tdc_test_fall_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => fall_s1(2),
      Q => \tdc_test_fall_reg[5]_0\(2),
      R => \sync_reg[1]_1\(0)
    );
\tdc_test_fall_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => fall_s1(3),
      Q => \tdc_test_fall_reg[5]_0\(3),
      R => \sync_reg[1]_1\(0)
    );
\tdc_test_fall_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => fall_s1(4),
      Q => \tdc_test_fall_reg[5]_0\(4),
      R => \sync_reg[1]_1\(0)
    );
\tdc_test_fall_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => fall_s1(5),
      Q => \tdc_test_fall_reg[5]_0\(5),
      R => \sync_reg[1]_1\(0)
    );
\tdc_test_rise_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rise_s1(0),
      Q => Q(0),
      R => \sync_reg[1]_1\(0)
    );
\tdc_test_rise_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rise_s1(1),
      Q => Q(1),
      R => \sync_reg[1]_1\(0)
    );
\tdc_test_rise_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rise_s1(2),
      Q => Q(2),
      R => \sync_reg[1]_1\(0)
    );
\tdc_test_rise_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rise_s1(3),
      Q => Q(3),
      R => \sync_reg[1]_1\(0)
    );
\tdc_test_rise_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rise_s1(4),
      Q => Q(4),
      R => \sync_reg[1]_1\(0)
    );
\tdc_test_rise_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rise_s1(5),
      Q => Q(5),
      R => \sync_reg[1]_1\(0)
    );
\test_cnt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => test_cnt_reg(0),
      O => \test_cnt[0]_i_3_n_0\
    );
\test_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[0]_i_2_n_7\,
      Q => test_cnt_reg(0),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \test_cnt_reg[0]_i_2_n_0\,
      CO(2) => \test_cnt_reg[0]_i_2_n_1\,
      CO(1) => \test_cnt_reg[0]_i_2_n_2\,
      CO(0) => \test_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \test_cnt_reg[0]_i_2_n_4\,
      O(2) => \test_cnt_reg[0]_i_2_n_5\,
      O(1) => \test_cnt_reg[0]_i_2_n_6\,
      O(0) => \test_cnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => test_cnt_reg(3 downto 1),
      S(0) => \test_cnt[0]_i_3_n_0\
    );
\test_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[8]_i_1_n_5\,
      Q => test_cnt_reg(10),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[8]_i_1_n_4\,
      Q => test_cnt_reg(11),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[12]_i_1_n_7\,
      Q => test_cnt_reg(12),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \test_cnt_reg[8]_i_1_n_0\,
      CO(3) => \test_cnt_reg[12]_i_1_n_0\,
      CO(2) => \test_cnt_reg[12]_i_1_n_1\,
      CO(1) => \test_cnt_reg[12]_i_1_n_2\,
      CO(0) => \test_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \test_cnt_reg[12]_i_1_n_4\,
      O(2) => \test_cnt_reg[12]_i_1_n_5\,
      O(1) => \test_cnt_reg[12]_i_1_n_6\,
      O(0) => \test_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => test_cnt_reg(15 downto 12)
    );
\test_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[12]_i_1_n_6\,
      Q => test_cnt_reg(13),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[12]_i_1_n_5\,
      Q => test_cnt_reg(14),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[12]_i_1_n_4\,
      Q => test_cnt_reg(15),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[16]_i_1_n_7\,
      Q => test_cnt_reg(16),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \test_cnt_reg[12]_i_1_n_0\,
      CO(3) => \test_cnt_reg[16]_i_1_n_0\,
      CO(2) => \test_cnt_reg[16]_i_1_n_1\,
      CO(1) => \test_cnt_reg[16]_i_1_n_2\,
      CO(0) => \test_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \test_cnt_reg[16]_i_1_n_4\,
      O(2) => \test_cnt_reg[16]_i_1_n_5\,
      O(1) => \test_cnt_reg[16]_i_1_n_6\,
      O(0) => \test_cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => test_cnt_reg(19 downto 16)
    );
\test_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[16]_i_1_n_6\,
      Q => test_cnt_reg(17),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[16]_i_1_n_5\,
      Q => test_cnt_reg(18),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[16]_i_1_n_4\,
      Q => test_cnt_reg(19),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[0]_i_2_n_6\,
      Q => test_cnt_reg(1),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[20]_i_1_n_7\,
      Q => test_cnt_reg(20),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \test_cnt_reg[16]_i_1_n_0\,
      CO(3) => \test_cnt_reg[20]_i_1_n_0\,
      CO(2) => \test_cnt_reg[20]_i_1_n_1\,
      CO(1) => \test_cnt_reg[20]_i_1_n_2\,
      CO(0) => \test_cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \test_cnt_reg[20]_i_1_n_4\,
      O(2) => \test_cnt_reg[20]_i_1_n_5\,
      O(1) => \test_cnt_reg[20]_i_1_n_6\,
      O(0) => \test_cnt_reg[20]_i_1_n_7\,
      S(3 downto 0) => test_cnt_reg(23 downto 20)
    );
\test_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[20]_i_1_n_6\,
      Q => test_cnt_reg(21),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[20]_i_1_n_5\,
      Q => test_cnt_reg(22),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[20]_i_1_n_4\,
      Q => test_cnt_reg(23),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[24]_i_1_n_7\,
      Q => test_cnt_reg(24),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \test_cnt_reg[20]_i_1_n_0\,
      CO(3) => \test_cnt_reg[24]_i_1_n_0\,
      CO(2) => \test_cnt_reg[24]_i_1_n_1\,
      CO(1) => \test_cnt_reg[24]_i_1_n_2\,
      CO(0) => \test_cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \test_cnt_reg[24]_i_1_n_4\,
      O(2) => \test_cnt_reg[24]_i_1_n_5\,
      O(1) => \test_cnt_reg[24]_i_1_n_6\,
      O(0) => \test_cnt_reg[24]_i_1_n_7\,
      S(3 downto 0) => test_cnt_reg(27 downto 24)
    );
\test_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[24]_i_1_n_6\,
      Q => test_cnt_reg(25),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[24]_i_1_n_5\,
      Q => test_cnt_reg(26),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[24]_i_1_n_4\,
      Q => test_cnt_reg(27),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[28]_i_1_n_7\,
      Q => test_cnt_reg(28),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \test_cnt_reg[24]_i_1_n_0\,
      CO(3) => \NLW_test_cnt_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \test_cnt_reg[28]_i_1_n_1\,
      CO(1) => \test_cnt_reg[28]_i_1_n_2\,
      CO(0) => \test_cnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \test_cnt_reg[28]_i_1_n_4\,
      O(2) => \test_cnt_reg[28]_i_1_n_5\,
      O(1) => \test_cnt_reg[28]_i_1_n_6\,
      O(0) => \test_cnt_reg[28]_i_1_n_7\,
      S(3 downto 0) => test_cnt_reg(31 downto 28)
    );
\test_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[28]_i_1_n_6\,
      Q => test_cnt_reg(29),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[0]_i_2_n_5\,
      Q => test_cnt_reg(2),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[28]_i_1_n_5\,
      Q => test_cnt_reg(30),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[28]_i_1_n_4\,
      Q => test_cnt_reg(31),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[0]_i_2_n_4\,
      Q => test_cnt_reg(3),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[4]_i_1_n_7\,
      Q => test_cnt_reg(4),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \test_cnt_reg[0]_i_2_n_0\,
      CO(3) => \test_cnt_reg[4]_i_1_n_0\,
      CO(2) => \test_cnt_reg[4]_i_1_n_1\,
      CO(1) => \test_cnt_reg[4]_i_1_n_2\,
      CO(0) => \test_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \test_cnt_reg[4]_i_1_n_4\,
      O(2) => \test_cnt_reg[4]_i_1_n_5\,
      O(1) => \test_cnt_reg[4]_i_1_n_6\,
      O(0) => \test_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => test_cnt_reg(7 downto 4)
    );
\test_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[4]_i_1_n_6\,
      Q => test_cnt_reg(5),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[4]_i_1_n_5\,
      Q => test_cnt_reg(6),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[4]_i_1_n_4\,
      Q => test_cnt_reg(7),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[8]_i_1_n_7\,
      Q => test_cnt_reg(8),
      R => u_gate_sync_n_1
    );
\test_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \test_cnt_reg[4]_i_1_n_0\,
      CO(3) => \test_cnt_reg[8]_i_1_n_0\,
      CO(2) => \test_cnt_reg[8]_i_1_n_1\,
      CO(1) => \test_cnt_reg[8]_i_1_n_2\,
      CO(0) => \test_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \test_cnt_reg[8]_i_1_n_4\,
      O(2) => \test_cnt_reg[8]_i_1_n_5\,
      O(1) => \test_cnt_reg[8]_i_1_n_6\,
      O(0) => \test_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => test_cnt_reg(11 downto 8)
    );
\test_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx,
      D => \test_cnt_reg[8]_i_1_n_6\,
      Q => test_cnt_reg(9),
      R => u_gate_sync_n_1
    );
\test_result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(0),
      Q => test_result(0),
      R => SR(0)
    );
\test_result_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(10),
      Q => test_result(10),
      R => SR(0)
    );
\test_result_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(11),
      Q => test_result(11),
      R => SR(0)
    );
\test_result_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(12),
      Q => test_result(12),
      R => SR(0)
    );
\test_result_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(13),
      Q => test_result(13),
      R => SR(0)
    );
\test_result_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(14),
      Q => test_result(14),
      R => SR(0)
    );
\test_result_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(15),
      Q => test_result(15),
      R => SR(0)
    );
\test_result_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(16),
      Q => test_result(16),
      R => SR(0)
    );
\test_result_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(17),
      Q => test_result(17),
      R => SR(0)
    );
\test_result_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(18),
      Q => test_result(18),
      R => SR(0)
    );
\test_result_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(19),
      Q => test_result(19),
      R => SR(0)
    );
\test_result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(1),
      Q => test_result(1),
      R => SR(0)
    );
\test_result_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(20),
      Q => test_result(20),
      R => SR(0)
    );
\test_result_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(21),
      Q => test_result(21),
      R => SR(0)
    );
\test_result_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(22),
      Q => test_result(22),
      R => SR(0)
    );
\test_result_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(23),
      Q => test_result(23),
      R => SR(0)
    );
\test_result_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(24),
      Q => test_result(24),
      R => SR(0)
    );
\test_result_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(25),
      Q => test_result(25),
      R => SR(0)
    );
\test_result_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(26),
      Q => test_result(26),
      R => SR(0)
    );
\test_result_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(27),
      Q => test_result(27),
      R => SR(0)
    );
\test_result_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(28),
      Q => test_result(28),
      R => SR(0)
    );
\test_result_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(29),
      Q => test_result(29),
      R => SR(0)
    );
\test_result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(2),
      Q => test_result(2),
      R => SR(0)
    );
\test_result_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(30),
      Q => test_result(30),
      R => SR(0)
    );
\test_result_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(31),
      Q => test_result(31),
      R => SR(0)
    );
\test_result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(3),
      Q => test_result(3),
      R => SR(0)
    );
\test_result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(4),
      Q => test_result(4),
      R => SR(0)
    );
\test_result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(5),
      Q => test_result(5),
      R => SR(0)
    );
\test_result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(6),
      Q => test_result(6),
      R => SR(0)
    );
\test_result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(7),
      Q => test_result(7),
      R => SR(0)
    );
\test_result_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(8),
      Q => test_result(8),
      R => SR(0)
    );
\test_result_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_fx,
      CE => gate_fx_fall,
      D => test_cnt_reg(9),
      Q => test_result(9),
      R => SR(0)
    );
\test_s1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(0),
      Q => test_s1(0),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(10),
      Q => test_s1(10),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(11),
      Q => test_s1(11),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(12),
      Q => test_s1(12),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(13),
      Q => test_s1(13),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(14),
      Q => test_s1(14),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(15),
      Q => test_s1(15),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(16),
      Q => test_s1(16),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(17),
      Q => test_s1(17),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(18),
      Q => test_s1(18),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(19),
      Q => test_s1(19),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(1),
      Q => test_s1(1),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(20),
      Q => test_s1(20),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(21),
      Q => test_s1(21),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(22),
      Q => test_s1(22),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(23),
      Q => test_s1(23),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(24),
      Q => test_s1(24),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(25),
      Q => test_s1(25),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(26),
      Q => test_s1(26),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(27),
      Q => test_s1(27),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(28),
      Q => test_s1(28),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(29),
      Q => test_s1(29),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(2),
      Q => test_s1(2),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(30),
      Q => test_s1(30),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(31),
      Q => test_s1(31),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(3),
      Q => test_s1(3),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(4),
      Q => test_s1(4),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(5),
      Q => test_s1(5),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(6),
      Q => test_s1(6),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(7),
      Q => test_s1(7),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(8),
      Q => test_s1(8),
      R => \sync_reg[1]_1\(0)
    );
\test_s1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => test_result(9),
      Q => test_s1(9),
      R => \sync_reg[1]_1\(0)
    );
u_busy_sync: entity work.ps_Counter_Core_0_1_bit_sync_9
     port map (
      busy => busy,
      s_axi_aclk => s_axi_aclk,
      \sync_reg[0]_0\(0) => \sync_reg[1]_1\(0),
      \sync_reg[1]_0\(0) => \sync_reg[1]_0\(0)
    );
u_done_sync: entity work.ps_Counter_Core_0_1_bit_sync_10
     port map (
      D(0) => done_fs,
      s_axi_aclk => s_axi_aclk,
      \sync_reg[1]_0\(0) => \sync_reg[1]\(0),
      \sync_reg[1]_1\(0) => \sync_reg[1]_1\(0)
    );
u_gate_sync: entity work.\ps_Counter_Core_0_1_bit_sync__parameterized0\
     port map (
      E(0) => gate_fx_fall,
      SR(0) => SR(0),
      clk_fx => clk_fx,
      gate_fx_d => gate_fx_d,
      gate_fx_d_reg => u_gate_sync_n_1,
      \out\(0) => gate_fx,
      \sync_reg[0]_0\ => gate_reg_n_0,
      \sync_reg[2]_0\(0) => gate_fx_rise,
      \test_cnt_reg[31]\(0) => \test_cnt_reg[31]_0\(0)
    );
u_tdc_test: entity work.ps_Counter_Core_0_1_tdc_11
     port map (
      Q(5 downto 0) => tdc_val(5 downto 0),
      SR(0) => SR(0),
      clk_fx => clk_fx,
      \tap_reg_reg[3]_0\ => gate_reg_n_0,
      tdc_vld => tdc_vld
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_ts_engine is
  port (
    \sync_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ts_en_d : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    out_valid_reg_0 : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_level : out STD_LOGIC_VECTOR ( 12 downto 0 );
    dst_cnt : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \axi_araddr_reg[3]\ : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    \gray_s2_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk_fx : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gray_s1_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    pop_is_last : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \pop_cnt_reg[15]_0\ : in STD_LOGIC;
    \axi_rdata_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \pkt_bounded__14\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    \skip_cnt_reg[31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    pop_is_last1 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \pop_limit_hit0_carry__0_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \axi_rdata_reg[4]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_ts_engine : entity is "ts_engine";
end ps_Counter_Core_0_1_ts_engine;

architecture STRUCTURE of ps_Counter_Core_0_1_ts_engine is
  signal data1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \do_capture0__25\ : STD_LOGIC;
  signal edge_d1 : STD_LOGIC;
  signal edge_d2 : STD_LOGIC;
  signal edge_raw : STD_LOGIC;
  signal fifo_full0 : STD_LOGIC;
  signal fifo_full0_carry_n_1 : STD_LOGIC;
  signal fifo_full0_carry_n_2 : STD_LOGIC;
  signal fifo_full0_carry_n_3 : STD_LOGIC;
  signal \fifo_level_carry__0_n_0\ : STD_LOGIC;
  signal \fifo_level_carry__0_n_1\ : STD_LOGIC;
  signal \fifo_level_carry__0_n_2\ : STD_LOGIC;
  signal \fifo_level_carry__0_n_3\ : STD_LOGIC;
  signal \fifo_level_carry__1_n_0\ : STD_LOGIC;
  signal \fifo_level_carry__1_n_1\ : STD_LOGIC;
  signal \fifo_level_carry__1_n_2\ : STD_LOGIC;
  signal \fifo_level_carry__1_n_3\ : STD_LOGIC;
  signal fifo_level_carry_n_0 : STD_LOGIC;
  signal fifo_level_carry_n_1 : STD_LOGIC;
  signal fifo_level_carry_n_2 : STD_LOGIC;
  signal fifo_level_carry_n_3 : STD_LOGIC;
  signal fifo_mem_reg_7_i_10_n_0 : STD_LOGIC;
  signal fifo_mem_reg_7_i_1_n_0 : STD_LOGIC;
  signal fifo_mem_reg_7_i_2_n_0 : STD_LOGIC;
  signal fifo_mem_reg_7_i_6_n_0 : STD_LOGIC;
  signal fifo_mem_reg_7_i_7_n_0 : STD_LOGIC;
  signal fifo_mem_reg_7_i_8_n_0 : STD_LOGIC;
  signal fifo_mem_reg_7_i_9_n_0 : STD_LOGIC;
  signal \free_run_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal free_run_cnt_d1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal free_run_cnt_d2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal free_run_cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \free_run_cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \free_run_cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \free_run_cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \free_run_cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \free_run_cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \free_run_cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \free_run_cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \free_run_cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \free_run_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \free_run_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \free_run_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \free_run_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \free_run_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \free_run_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \free_run_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \free_run_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \free_run_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \free_run_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \free_run_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \free_run_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \free_run_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \free_run_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \free_run_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \free_run_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \free_run_cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \free_run_cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \free_run_cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \free_run_cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \free_run_cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \free_run_cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \free_run_cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \free_run_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \free_run_cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \free_run_cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \free_run_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \free_run_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \free_run_cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \free_run_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \free_run_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \free_run_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \free_run_cnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \free_run_cnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \free_run_cnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \free_run_cnt_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \free_run_cnt_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \free_run_cnt_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \free_run_cnt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \free_run_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \free_run_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \free_run_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \free_run_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \free_run_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \free_run_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \free_run_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \free_run_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \free_run_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \free_run_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \free_run_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \free_run_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \free_run_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \free_run_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \free_run_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \free_run_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal fx_sync : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of fx_sync : signal is "true";
  signal int_empty : STD_LOGIC;
  signal int_empty_carry_n_0 : STD_LOGIC;
  signal int_empty_carry_n_1 : STD_LOGIC;
  signal int_empty_carry_n_2 : STD_LOGIC;
  signal int_empty_carry_n_3 : STD_LOGIC;
  signal \lost_count_fs[0]_i_2_n_0\ : STD_LOGIC;
  signal lost_count_fs_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \lost_count_fs_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \lost_count_fs_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \lost_count_fs_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \lost_count_fs_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \lost_count_fs_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \lost_count_fs_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \lost_count_fs_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \lost_count_fs_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \lost_count_fs_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \lost_count_fs_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \lost_count_fs_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \lost_count_fs_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \lost_count_fs_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \lost_count_fs_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \lost_count_fs_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \lost_count_fs_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \lost_count_fs_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \lost_count_fs_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \lost_count_fs_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \lost_count_fs_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \lost_count_fs_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \lost_count_fs_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \lost_count_fs_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \lost_count_fs_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \lost_count_fs_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \lost_count_fs_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \lost_count_fs_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \lost_count_fs_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \lost_count_fs_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \lost_count_fs_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \lost_count_fs_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \lost_count_fs_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \lost_count_fs_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \lost_count_fs_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \lost_count_fs_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \lost_count_fs_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \lost_count_fs_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \lost_count_fs_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \lost_count_fs_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \lost_count_fs_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \lost_count_fs_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \lost_count_fs_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \lost_count_fs_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \lost_count_fs_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \lost_count_fs_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \lost_count_fs_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \lost_count_fs_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \lost_count_fs_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \lost_count_fs_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \lost_count_fs_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \lost_count_fs_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \lost_count_fs_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \lost_count_fs_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \lost_count_fs_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \lost_count_fs_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \lost_count_fs_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \lost_count_fs_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \lost_count_fs_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \lost_count_fs_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \lost_count_fs_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \lost_count_fs_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \lost_count_fs_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \lost_count_fs_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal out_valid_i_1_n_0 : STD_LOGIC;
  signal \^out_valid_reg_0\ : STD_LOGIC;
  signal ovf_mark : STD_LOGIC;
  signal ovf_sticky : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal \pop_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal pop_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pop_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \pop_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \pop_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \pop_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \pop_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \pop_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \pop_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \pop_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \pop_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \pop_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \pop_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pop_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \pop_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \pop_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pop_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pop_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pop_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pop_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pop_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pop_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pop_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pop_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pop_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pop_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pop_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pop_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pop_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pop_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pop_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pop_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pop_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \pop_is_last0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pop_is_last0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pop_is_last0_carry__0_n_3\ : STD_LOGIC;
  signal pop_is_last0_carry_i_1_n_0 : STD_LOGIC;
  signal pop_is_last0_carry_i_2_n_0 : STD_LOGIC;
  signal pop_is_last0_carry_i_3_n_0 : STD_LOGIC;
  signal pop_is_last0_carry_i_4_n_0 : STD_LOGIC;
  signal pop_is_last0_carry_n_0 : STD_LOGIC;
  signal pop_is_last0_carry_n_1 : STD_LOGIC;
  signal pop_is_last0_carry_n_2 : STD_LOGIC;
  signal pop_is_last0_carry_n_3 : STD_LOGIC;
  signal pop_limit_hit0 : STD_LOGIC;
  signal \pop_limit_hit0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pop_limit_hit0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pop_limit_hit0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pop_limit_hit0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pop_limit_hit0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pop_limit_hit0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pop_limit_hit0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pop_limit_hit0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pop_limit_hit0_carry__0_n_1\ : STD_LOGIC;
  signal \pop_limit_hit0_carry__0_n_2\ : STD_LOGIC;
  signal \pop_limit_hit0_carry__0_n_3\ : STD_LOGIC;
  signal pop_limit_hit0_carry_i_1_n_0 : STD_LOGIC;
  signal pop_limit_hit0_carry_i_2_n_0 : STD_LOGIC;
  signal pop_limit_hit0_carry_i_3_n_0 : STD_LOGIC;
  signal pop_limit_hit0_carry_i_4_n_0 : STD_LOGIC;
  signal pop_limit_hit0_carry_i_5_n_0 : STD_LOGIC;
  signal pop_limit_hit0_carry_i_6_n_0 : STD_LOGIC;
  signal pop_limit_hit0_carry_i_7_n_0 : STD_LOGIC;
  signal pop_limit_hit0_carry_i_8_n_0 : STD_LOGIC;
  signal pop_limit_hit0_carry_n_0 : STD_LOGIC;
  signal pop_limit_hit0_carry_n_1 : STD_LOGIC;
  signal pop_limit_hit0_carry_n_2 : STD_LOGIC;
  signal pop_limit_hit0_carry_n_3 : STD_LOGIC;
  signal \rd_ptr_bin[0]_i_2_n_0\ : STD_LOGIC;
  signal rd_ptr_bin_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \rd_ptr_bin_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \rd_ptr_bin_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[11]_i_1_n_2\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[11]_i_1_n_3\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[11]_i_1_n_5\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[11]_i_1_n_6\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[11]_i_1_n_7\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[4]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[4]_i_1_n_1\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[4]_i_1_n_2\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[4]_i_1_n_3\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[4]_i_1_n_4\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[4]_i_1_n_5\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[4]_i_1_n_6\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[4]_i_1_n_7\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[8]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[8]_i_1_n_1\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[8]_i_1_n_2\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[8]_i_1_n_3\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[8]_i_1_n_4\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[8]_i_1_n_5\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[8]_i_1_n_6\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep[8]_i_1_n_7\ : STD_LOGIC;
  signal \rd_ptr_bin_reg_rep__0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \rd_ptr_bin_rep[0]_i_1_n_0\ : STD_LOGIC;
  signal \seq_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal seq_cnt_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \seq_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \seq_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \seq_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \seq_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \seq_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \seq_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \seq_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \seq_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \seq_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \seq_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \seq_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \seq_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \seq_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \seq_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \seq_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \seq_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \seq_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \seq_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \seq_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \seq_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \seq_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \seq_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \seq_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \seq_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \seq_cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \seq_cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \seq_cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \seq_cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \seq_cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \seq_cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \seq_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \seq_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \seq_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \seq_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \seq_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \seq_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \seq_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \seq_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \seq_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \seq_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \seq_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \seq_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \seq_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \seq_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \seq_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \seq_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \seq_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal skip_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \skip_cnt1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__0_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__0_n_1\ : STD_LOGIC;
  signal \skip_cnt1_carry__0_n_2\ : STD_LOGIC;
  signal \skip_cnt1_carry__0_n_3\ : STD_LOGIC;
  signal \skip_cnt1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__1_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__1_n_1\ : STD_LOGIC;
  signal \skip_cnt1_carry__1_n_2\ : STD_LOGIC;
  signal \skip_cnt1_carry__1_n_3\ : STD_LOGIC;
  signal \skip_cnt1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__2_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__2_n_1\ : STD_LOGIC;
  signal \skip_cnt1_carry__2_n_2\ : STD_LOGIC;
  signal \skip_cnt1_carry__2_n_3\ : STD_LOGIC;
  signal \skip_cnt1_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__3_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__3_n_1\ : STD_LOGIC;
  signal \skip_cnt1_carry__3_n_2\ : STD_LOGIC;
  signal \skip_cnt1_carry__3_n_3\ : STD_LOGIC;
  signal \skip_cnt1_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__4_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__4_n_1\ : STD_LOGIC;
  signal \skip_cnt1_carry__4_n_2\ : STD_LOGIC;
  signal \skip_cnt1_carry__4_n_3\ : STD_LOGIC;
  signal \skip_cnt1_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__5_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__5_n_1\ : STD_LOGIC;
  signal \skip_cnt1_carry__5_n_2\ : STD_LOGIC;
  signal \skip_cnt1_carry__5_n_3\ : STD_LOGIC;
  signal \skip_cnt1_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \skip_cnt1_carry__6_n_2\ : STD_LOGIC;
  signal \skip_cnt1_carry__6_n_3\ : STD_LOGIC;
  signal skip_cnt1_carry_i_1_n_0 : STD_LOGIC;
  signal skip_cnt1_carry_i_2_n_0 : STD_LOGIC;
  signal skip_cnt1_carry_i_3_n_0 : STD_LOGIC;
  signal skip_cnt1_carry_i_4_n_0 : STD_LOGIC;
  signal skip_cnt1_carry_n_0 : STD_LOGIC;
  signal skip_cnt1_carry_n_1 : STD_LOGIC;
  signal skip_cnt1_carry_n_2 : STD_LOGIC;
  signal skip_cnt1_carry_n_3 : STD_LOGIC;
  signal \skip_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[17]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[18]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[19]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[20]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[21]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[22]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[23]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[24]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[25]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[26]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[27]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[28]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[29]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[30]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[31]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[31]_i_3_n_0\ : STD_LOGIC;
  signal \skip_cnt[31]_i_4_n_0\ : STD_LOGIC;
  signal \skip_cnt[31]_i_5_n_0\ : STD_LOGIC;
  signal \skip_cnt[31]_i_6_n_0\ : STD_LOGIC;
  signal \skip_cnt[31]_i_7_n_0\ : STD_LOGIC;
  signal \skip_cnt[31]_i_8_n_0\ : STD_LOGIC;
  signal \skip_cnt[31]_i_9_n_0\ : STD_LOGIC;
  signal \skip_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \skip_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal skip_limit : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tdc_valid : STD_LOGIC;
  signal tdc_value : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \ts_count_fs[0]_i_2_n_0\ : STD_LOGIC;
  signal ts_count_fs_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ts_count_fs_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ts_count_fs_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \ts_count_fs_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \ts_count_fs_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \ts_count_fs_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \ts_count_fs_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \ts_count_fs_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \ts_count_fs_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \ts_count_fs_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \ts_count_fs_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ts_count_fs_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ts_count_fs_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ts_count_fs_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ts_count_fs_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ts_count_fs_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ts_count_fs_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ts_count_fs_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \ts_count_fs_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \ts_count_fs_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \ts_count_fs_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \ts_count_fs_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \ts_count_fs_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \ts_count_fs_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \ts_count_fs_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \ts_count_fs_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \ts_count_fs_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \ts_count_fs_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \ts_count_fs_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \ts_count_fs_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \ts_count_fs_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \ts_count_fs_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \ts_count_fs_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \ts_count_fs_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \ts_count_fs_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \ts_count_fs_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \ts_count_fs_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \ts_count_fs_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \ts_count_fs_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \ts_count_fs_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \ts_count_fs_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \ts_count_fs_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \ts_count_fs_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \ts_count_fs_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \ts_count_fs_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \ts_count_fs_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \ts_count_fs_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \ts_count_fs_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \ts_count_fs_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ts_count_fs_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ts_count_fs_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ts_count_fs_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ts_count_fs_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ts_count_fs_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ts_count_fs_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ts_count_fs_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ts_count_fs_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ts_count_fs_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ts_count_fs_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ts_count_fs_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ts_count_fs_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ts_count_fs_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ts_count_fs_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ts_count_fs_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^ts_en_d\ : STD_LOGIC;
  signal u_rd_ptr_cdc_n_0 : STD_LOGIC;
  signal u_rd_ptr_cdc_n_1 : STD_LOGIC;
  signal u_rd_ptr_cdc_n_2 : STD_LOGIC;
  signal u_rd_ptr_cdc_n_3 : STD_LOGIC;
  signal u_rd_ptr_cdc_n_4 : STD_LOGIC;
  signal u_rd_ptr_cdc_n_5 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_10 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_11 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_12 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_13 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_14 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_15 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_16 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_17 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_18 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_19 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_20 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_21 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_22 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_23 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_24 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_25 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_26 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_27 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_28 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_29 : STD_LOGIC;
  signal u_wr_ptr_cdc_n_9 : STD_LOGIC;
  signal wr_drop : STD_LOGIC;
  signal wr_en0 : STD_LOGIC;
  signal \wr_ptr_bin[0]_i_2_n_0\ : STD_LOGIC;
  signal wr_ptr_bin_at_rd : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \wr_ptr_bin_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \wr_ptr_bin_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \wr_ptr_bin_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_ptr_bin_reg_n_0_[10]\ : STD_LOGIC;
  signal \wr_ptr_bin_reg_n_0_[11]\ : STD_LOGIC;
  signal \wr_ptr_bin_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_ptr_bin_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_ptr_bin_reg_n_0_[3]\ : STD_LOGIC;
  signal \wr_ptr_bin_reg_n_0_[4]\ : STD_LOGIC;
  signal \wr_ptr_bin_reg_n_0_[5]\ : STD_LOGIC;
  signal \wr_ptr_bin_reg_n_0_[6]\ : STD_LOGIC;
  signal \wr_ptr_bin_reg_n_0_[7]\ : STD_LOGIC;
  signal \wr_ptr_bin_reg_n_0_[8]\ : STD_LOGIC;
  signal \wr_ptr_bin_reg_n_0_[9]\ : STD_LOGIC;
  signal NLW_fifo_full0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_fifo_level_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_fifo_level_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_fifo_mem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_mem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_fifo_mem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_mem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_fifo_mem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_mem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_fifo_mem_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_mem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_fifo_mem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_mem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_fifo_mem_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_mem_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_fifo_mem_reg_2_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_2_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_mem_reg_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_fifo_mem_reg_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_mem_reg_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_fifo_mem_reg_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_mem_reg_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_fifo_mem_reg_3_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_3_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_3_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_3_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_3_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_mem_reg_3_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_fifo_mem_reg_3_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_mem_reg_3_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_fifo_mem_reg_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_mem_reg_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_fifo_mem_reg_4_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_4_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_mem_reg_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_fifo_mem_reg_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_mem_reg_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_fifo_mem_reg_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_mem_reg_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_fifo_mem_reg_5_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_5_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_mem_reg_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_fifo_mem_reg_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_mem_reg_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_fifo_mem_reg_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_mem_reg_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_fifo_mem_reg_6_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_6_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_mem_reg_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_mem_reg_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_fifo_mem_reg_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_mem_reg_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_fifo_mem_reg_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_mem_reg_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_fifo_mem_reg_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_fifo_mem_reg_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal NLW_fifo_mem_reg_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_mem_reg_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_free_run_cnt_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_int_empty_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_int_empty_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_int_empty_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lost_count_fs_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pop_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_pop_is_last0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pop_is_last0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pop_is_last0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_pop_limit_hit0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pop_limit_hit0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rd_ptr_bin_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rd_ptr_bin_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rd_ptr_bin_reg_rep[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rd_ptr_bin_reg_rep[11]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_seq_cnt_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_skip_cnt1_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_skip_cnt1_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ts_count_fs_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wr_ptr_bin_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wr_ptr_bin_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of fifo_mem_reg_0 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of fifo_mem_reg_0 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of fifo_mem_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of fifo_mem_reg_0 : label is 262144;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of fifo_mem_reg_0 : label is "fifo_mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of fifo_mem_reg_0 : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of fifo_mem_reg_0 : label is 4095;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of fifo_mem_reg_0 : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of fifo_mem_reg_0 : label is 8;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of fifo_mem_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of fifo_mem_reg_0 : label is 4095;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of fifo_mem_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of fifo_mem_reg_0 : label is 8;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of fifo_mem_reg_1 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of fifo_mem_reg_1 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS of fifo_mem_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of fifo_mem_reg_1 : label is 262144;
  attribute RTL_RAM_NAME of fifo_mem_reg_1 : label is "fifo_mem";
  attribute bram_addr_begin of fifo_mem_reg_1 : label is 0;
  attribute bram_addr_end of fifo_mem_reg_1 : label is 4095;
  attribute bram_slice_begin of fifo_mem_reg_1 : label is 9;
  attribute bram_slice_end of fifo_mem_reg_1 : label is 17;
  attribute ram_addr_begin of fifo_mem_reg_1 : label is 0;
  attribute ram_addr_end of fifo_mem_reg_1 : label is 4095;
  attribute ram_slice_begin of fifo_mem_reg_1 : label is 9;
  attribute ram_slice_end of fifo_mem_reg_1 : label is 17;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of fifo_mem_reg_2 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of fifo_mem_reg_2 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS of fifo_mem_reg_2 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of fifo_mem_reg_2 : label is 262144;
  attribute RTL_RAM_NAME of fifo_mem_reg_2 : label is "fifo_mem";
  attribute bram_addr_begin of fifo_mem_reg_2 : label is 0;
  attribute bram_addr_end of fifo_mem_reg_2 : label is 4095;
  attribute bram_slice_begin of fifo_mem_reg_2 : label is 18;
  attribute bram_slice_end of fifo_mem_reg_2 : label is 26;
  attribute ram_addr_begin of fifo_mem_reg_2 : label is 0;
  attribute ram_addr_end of fifo_mem_reg_2 : label is 4095;
  attribute ram_slice_begin of fifo_mem_reg_2 : label is 18;
  attribute ram_slice_end of fifo_mem_reg_2 : label is 26;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of fifo_mem_reg_3 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of fifo_mem_reg_3 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS of fifo_mem_reg_3 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of fifo_mem_reg_3 : label is 262144;
  attribute RTL_RAM_NAME of fifo_mem_reg_3 : label is "fifo_mem";
  attribute bram_addr_begin of fifo_mem_reg_3 : label is 0;
  attribute bram_addr_end of fifo_mem_reg_3 : label is 4095;
  attribute bram_slice_begin of fifo_mem_reg_3 : label is 27;
  attribute bram_slice_end of fifo_mem_reg_3 : label is 35;
  attribute ram_addr_begin of fifo_mem_reg_3 : label is 0;
  attribute ram_addr_end of fifo_mem_reg_3 : label is 4095;
  attribute ram_slice_begin of fifo_mem_reg_3 : label is 27;
  attribute ram_slice_end of fifo_mem_reg_3 : label is 35;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of fifo_mem_reg_4 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of fifo_mem_reg_4 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS of fifo_mem_reg_4 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of fifo_mem_reg_4 : label is 262144;
  attribute RTL_RAM_NAME of fifo_mem_reg_4 : label is "fifo_mem";
  attribute bram_addr_begin of fifo_mem_reg_4 : label is 0;
  attribute bram_addr_end of fifo_mem_reg_4 : label is 4095;
  attribute bram_slice_begin of fifo_mem_reg_4 : label is 36;
  attribute bram_slice_end of fifo_mem_reg_4 : label is 44;
  attribute ram_addr_begin of fifo_mem_reg_4 : label is 0;
  attribute ram_addr_end of fifo_mem_reg_4 : label is 4095;
  attribute ram_slice_begin of fifo_mem_reg_4 : label is 36;
  attribute ram_slice_end of fifo_mem_reg_4 : label is 44;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of fifo_mem_reg_5 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of fifo_mem_reg_5 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS of fifo_mem_reg_5 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of fifo_mem_reg_5 : label is 262144;
  attribute RTL_RAM_NAME of fifo_mem_reg_5 : label is "fifo_mem";
  attribute bram_addr_begin of fifo_mem_reg_5 : label is 0;
  attribute bram_addr_end of fifo_mem_reg_5 : label is 4095;
  attribute bram_slice_begin of fifo_mem_reg_5 : label is 45;
  attribute bram_slice_end of fifo_mem_reg_5 : label is 53;
  attribute ram_addr_begin of fifo_mem_reg_5 : label is 0;
  attribute ram_addr_end of fifo_mem_reg_5 : label is 4095;
  attribute ram_slice_begin of fifo_mem_reg_5 : label is 45;
  attribute ram_slice_end of fifo_mem_reg_5 : label is 53;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of fifo_mem_reg_6 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of fifo_mem_reg_6 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS of fifo_mem_reg_6 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of fifo_mem_reg_6 : label is 262144;
  attribute RTL_RAM_NAME of fifo_mem_reg_6 : label is "fifo_mem";
  attribute bram_addr_begin of fifo_mem_reg_6 : label is 0;
  attribute bram_addr_end of fifo_mem_reg_6 : label is 4095;
  attribute bram_slice_begin of fifo_mem_reg_6 : label is 54;
  attribute bram_slice_end of fifo_mem_reg_6 : label is 62;
  attribute ram_addr_begin of fifo_mem_reg_6 : label is 0;
  attribute ram_addr_end of fifo_mem_reg_6 : label is 4095;
  attribute ram_slice_begin of fifo_mem_reg_6 : label is 54;
  attribute ram_slice_end of fifo_mem_reg_6 : label is 62;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of fifo_mem_reg_7 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of fifo_mem_reg_7 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of fifo_mem_reg_7 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of fifo_mem_reg_7 : label is 262144;
  attribute RTL_RAM_NAME of fifo_mem_reg_7 : label is "fifo_mem";
  attribute bram_addr_begin of fifo_mem_reg_7 : label is 0;
  attribute bram_addr_end of fifo_mem_reg_7 : label is 4095;
  attribute bram_slice_begin of fifo_mem_reg_7 : label is 63;
  attribute bram_slice_end of fifo_mem_reg_7 : label is 63;
  attribute ram_addr_begin of fifo_mem_reg_7 : label is 0;
  attribute ram_addr_end of fifo_mem_reg_7 : label is 4095;
  attribute ram_slice_begin of fifo_mem_reg_7 : label is 63;
  attribute ram_slice_end of fifo_mem_reg_7 : label is 63;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of fifo_mem_reg_7_i_4 : label is "soft_lutpair68";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \fx_sync_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \fx_sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \fx_sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \fx_sync_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \fx_sync_reg[2]\ : label is std.standard.true;
  attribute KEEP of \fx_sync_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \skip_cnt[0]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \skip_cnt[10]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \skip_cnt[11]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \skip_cnt[12]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \skip_cnt[13]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \skip_cnt[14]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \skip_cnt[15]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \skip_cnt[16]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \skip_cnt[17]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \skip_cnt[18]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \skip_cnt[19]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \skip_cnt[1]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \skip_cnt[20]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \skip_cnt[21]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \skip_cnt[22]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \skip_cnt[23]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \skip_cnt[24]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \skip_cnt[25]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \skip_cnt[26]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \skip_cnt[27]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \skip_cnt[28]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \skip_cnt[29]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \skip_cnt[2]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \skip_cnt[30]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \skip_cnt[31]_i_3\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \skip_cnt[31]_i_9\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \skip_cnt[3]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \skip_cnt[4]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \skip_cnt[5]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \skip_cnt[6]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \skip_cnt[7]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \skip_cnt[8]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \skip_cnt[9]_i_1\ : label is "soft_lutpair80";
begin
  out_valid_reg_0 <= \^out_valid_reg_0\;
  ts_en_d <= \^ts_en_d\;
edge_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fx_sync(1),
      I1 => fx_sync(2),
      O => edge_raw
    );
edge_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => edge_raw,
      Q => edge_d1,
      R => SR(0)
    );
edge_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => edge_d1,
      Q => edge_d2,
      R => SR(0)
    );
fifo_full0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => fifo_full0,
      CO(2) => fifo_full0_carry_n_1,
      CO(1) => fifo_full0_carry_n_2,
      CO(0) => fifo_full0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_fifo_full0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => u_rd_ptr_cdc_n_2,
      S(2) => u_rd_ptr_cdc_n_3,
      S(1) => u_rd_ptr_cdc_n_4,
      S(0) => u_rd_ptr_cdc_n_5
    );
fifo_level_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => fifo_level_carry_n_0,
      CO(2) => fifo_level_carry_n_1,
      CO(1) => fifo_level_carry_n_2,
      CO(0) => fifo_level_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => wr_ptr_bin_at_rd(3 downto 0),
      O(3 downto 0) => fifo_level(3 downto 0),
      S(3) => u_wr_ptr_cdc_n_13,
      S(2) => u_wr_ptr_cdc_n_14,
      S(1) => u_wr_ptr_cdc_n_15,
      S(0) => u_wr_ptr_cdc_n_16
    );
\fifo_level_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => fifo_level_carry_n_0,
      CO(3) => \fifo_level_carry__0_n_0\,
      CO(2) => \fifo_level_carry__0_n_1\,
      CO(1) => \fifo_level_carry__0_n_2\,
      CO(0) => \fifo_level_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => wr_ptr_bin_at_rd(7 downto 4),
      O(3 downto 0) => fifo_level(7 downto 4),
      S(3) => u_wr_ptr_cdc_n_17,
      S(2) => u_wr_ptr_cdc_n_18,
      S(1) => u_wr_ptr_cdc_n_19,
      S(0) => u_wr_ptr_cdc_n_20
    );
\fifo_level_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \fifo_level_carry__0_n_0\,
      CO(3) => \fifo_level_carry__1_n_0\,
      CO(2) => \fifo_level_carry__1_n_1\,
      CO(1) => \fifo_level_carry__1_n_2\,
      CO(0) => \fifo_level_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => u_wr_ptr_cdc_n_27,
      DI(2) => u_wr_ptr_cdc_n_28,
      DI(1) => u_wr_ptr_cdc_n_29,
      DI(0) => wr_ptr_bin_at_rd(8),
      O(3 downto 0) => fifo_level(11 downto 8),
      S(3) => u_wr_ptr_cdc_n_9,
      S(2) => u_wr_ptr_cdc_n_10,
      S(1) => u_wr_ptr_cdc_n_11,
      S(0) => u_wr_ptr_cdc_n_12
    );
\fifo_level_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \fifo_level_carry__1_n_0\,
      CO(3 downto 0) => \NLW_fifo_level_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_fifo_level_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => fifo_level(12),
      S(3 downto 1) => B"000",
      S(0) => u_wr_ptr_cdc_n_21
    );
fifo_mem_reg_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => \wr_ptr_bin_reg_n_0_[11]\,
      ADDRARDADDR(13) => \wr_ptr_bin_reg_n_0_[10]\,
      ADDRARDADDR(12) => \wr_ptr_bin_reg_n_0_[9]\,
      ADDRARDADDR(11) => \wr_ptr_bin_reg_n_0_[8]\,
      ADDRARDADDR(10) => \wr_ptr_bin_reg_n_0_[7]\,
      ADDRARDADDR(9) => \wr_ptr_bin_reg_n_0_[6]\,
      ADDRARDADDR(8) => \wr_ptr_bin_reg_n_0_[5]\,
      ADDRARDADDR(7) => \wr_ptr_bin_reg_n_0_[4]\,
      ADDRARDADDR(6) => \wr_ptr_bin_reg_n_0_[3]\,
      ADDRARDADDR(5) => \wr_ptr_bin_reg_n_0_[2]\,
      ADDRARDADDR(4) => \wr_ptr_bin_reg_n_0_[1]\,
      ADDRARDADDR(3) => \wr_ptr_bin_reg_n_0_[0]\,
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => \rd_ptr_bin_reg_rep__0\(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_fifo_mem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_fifo_mem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => CLK,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_fifo_mem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => seq_cnt_reg(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => seq_cnt_reg(8),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 0) => NLW_fifo_mem_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_fifo_mem_reg_0_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => m_axis_tdata(7 downto 0),
      DOPADOP(3 downto 0) => NLW_fifo_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 1) => NLW_fifo_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => m_axis_tdata(8),
      ECCPARITY(7 downto 0) => NLW_fifo_mem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => fifo_mem_reg_7_i_1_n_0,
      ENBWREN => fifo_mem_reg_7_i_2_n_0,
      INJECTDBITERR => NLW_fifo_mem_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_fifo_mem_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_fifo_mem_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_fifo_mem_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => wr_en0,
      WEA(2) => wr_en0,
      WEA(1) => wr_en0,
      WEA(0) => wr_en0,
      WEBWE(7 downto 0) => B"00000000"
    );
fifo_mem_reg_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => \wr_ptr_bin_reg_n_0_[11]\,
      ADDRARDADDR(13) => \wr_ptr_bin_reg_n_0_[10]\,
      ADDRARDADDR(12) => \wr_ptr_bin_reg_n_0_[9]\,
      ADDRARDADDR(11) => \wr_ptr_bin_reg_n_0_[8]\,
      ADDRARDADDR(10) => \wr_ptr_bin_reg_n_0_[7]\,
      ADDRARDADDR(9) => \wr_ptr_bin_reg_n_0_[6]\,
      ADDRARDADDR(8) => \wr_ptr_bin_reg_n_0_[5]\,
      ADDRARDADDR(7) => \wr_ptr_bin_reg_n_0_[4]\,
      ADDRARDADDR(6) => \wr_ptr_bin_reg_n_0_[3]\,
      ADDRARDADDR(5) => \wr_ptr_bin_reg_n_0_[2]\,
      ADDRARDADDR(4) => \wr_ptr_bin_reg_n_0_[1]\,
      ADDRARDADDR(3) => \wr_ptr_bin_reg_n_0_[0]\,
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => \rd_ptr_bin_reg_rep__0\(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_fifo_mem_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_fifo_mem_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => CLK,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_fifo_mem_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => seq_cnt_reg(16 downto 9),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => seq_cnt_reg(17),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 0) => NLW_fifo_mem_reg_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_fifo_mem_reg_1_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => m_axis_tdata(16 downto 9),
      DOPADOP(3 downto 0) => NLW_fifo_mem_reg_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 1) => NLW_fifo_mem_reg_1_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => m_axis_tdata(17),
      ECCPARITY(7 downto 0) => NLW_fifo_mem_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => fifo_mem_reg_7_i_1_n_0,
      ENBWREN => fifo_mem_reg_7_i_2_n_0,
      INJECTDBITERR => NLW_fifo_mem_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_fifo_mem_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_fifo_mem_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_fifo_mem_reg_1_SBITERR_UNCONNECTED,
      WEA(3) => wr_en0,
      WEA(2) => wr_en0,
      WEA(1) => wr_en0,
      WEA(0) => wr_en0,
      WEBWE(7 downto 0) => B"00000000"
    );
fifo_mem_reg_2: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => \wr_ptr_bin_reg_n_0_[11]\,
      ADDRARDADDR(13) => \wr_ptr_bin_reg_n_0_[10]\,
      ADDRARDADDR(12) => \wr_ptr_bin_reg_n_0_[9]\,
      ADDRARDADDR(11) => \wr_ptr_bin_reg_n_0_[8]\,
      ADDRARDADDR(10) => \wr_ptr_bin_reg_n_0_[7]\,
      ADDRARDADDR(9) => \wr_ptr_bin_reg_n_0_[6]\,
      ADDRARDADDR(8) => \wr_ptr_bin_reg_n_0_[5]\,
      ADDRARDADDR(7) => \wr_ptr_bin_reg_n_0_[4]\,
      ADDRARDADDR(6) => \wr_ptr_bin_reg_n_0_[3]\,
      ADDRARDADDR(5) => \wr_ptr_bin_reg_n_0_[2]\,
      ADDRARDADDR(4) => \wr_ptr_bin_reg_n_0_[1]\,
      ADDRARDADDR(3) => \wr_ptr_bin_reg_n_0_[0]\,
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => \rd_ptr_bin_reg_rep__0\(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_fifo_mem_reg_2_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_fifo_mem_reg_2_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => CLK,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_fifo_mem_reg_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7) => ovf_mark,
      DIADI(6) => tdc_valid,
      DIADI(5 downto 0) => seq_cnt_reg(23 downto 18),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => tdc_value(0),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 0) => NLW_fifo_mem_reg_2_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_fifo_mem_reg_2_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => m_axis_tdata(25 downto 18),
      DOPADOP(3 downto 0) => NLW_fifo_mem_reg_2_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 1) => NLW_fifo_mem_reg_2_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => m_axis_tdata(26),
      ECCPARITY(7 downto 0) => NLW_fifo_mem_reg_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => fifo_mem_reg_7_i_1_n_0,
      ENBWREN => fifo_mem_reg_7_i_2_n_0,
      INJECTDBITERR => NLW_fifo_mem_reg_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_fifo_mem_reg_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_fifo_mem_reg_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_fifo_mem_reg_2_SBITERR_UNCONNECTED,
      WEA(3) => wr_en0,
      WEA(2) => wr_en0,
      WEA(1) => wr_en0,
      WEA(0) => wr_en0,
      WEBWE(7 downto 0) => B"00000000"
    );
fifo_mem_reg_3: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => \wr_ptr_bin_reg_n_0_[11]\,
      ADDRARDADDR(13) => \wr_ptr_bin_reg_n_0_[10]\,
      ADDRARDADDR(12) => \wr_ptr_bin_reg_n_0_[9]\,
      ADDRARDADDR(11) => \wr_ptr_bin_reg_n_0_[8]\,
      ADDRARDADDR(10) => \wr_ptr_bin_reg_n_0_[7]\,
      ADDRARDADDR(9) => \wr_ptr_bin_reg_n_0_[6]\,
      ADDRARDADDR(8) => \wr_ptr_bin_reg_n_0_[5]\,
      ADDRARDADDR(7) => \wr_ptr_bin_reg_n_0_[4]\,
      ADDRARDADDR(6) => \wr_ptr_bin_reg_n_0_[3]\,
      ADDRARDADDR(5) => \wr_ptr_bin_reg_n_0_[2]\,
      ADDRARDADDR(4) => \wr_ptr_bin_reg_n_0_[1]\,
      ADDRARDADDR(3) => \wr_ptr_bin_reg_n_0_[0]\,
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => \rd_ptr_bin_reg_rep__0\(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_fifo_mem_reg_3_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_fifo_mem_reg_3_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => CLK,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_fifo_mem_reg_3_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 5) => free_run_cnt_d2(2 downto 0),
      DIADI(4 downto 0) => tdc_value(5 downto 1),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => free_run_cnt_d2(3),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 0) => NLW_fifo_mem_reg_3_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_fifo_mem_reg_3_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => m_axis_tdata(34 downto 27),
      DOPADOP(3 downto 0) => NLW_fifo_mem_reg_3_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 1) => NLW_fifo_mem_reg_3_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => m_axis_tdata(35),
      ECCPARITY(7 downto 0) => NLW_fifo_mem_reg_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => fifo_mem_reg_7_i_1_n_0,
      ENBWREN => fifo_mem_reg_7_i_2_n_0,
      INJECTDBITERR => NLW_fifo_mem_reg_3_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_fifo_mem_reg_3_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_fifo_mem_reg_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_fifo_mem_reg_3_SBITERR_UNCONNECTED,
      WEA(3) => wr_en0,
      WEA(2) => wr_en0,
      WEA(1) => wr_en0,
      WEA(0) => wr_en0,
      WEBWE(7 downto 0) => B"00000000"
    );
fifo_mem_reg_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => \wr_ptr_bin_reg_n_0_[11]\,
      ADDRARDADDR(13) => \wr_ptr_bin_reg_n_0_[10]\,
      ADDRARDADDR(12) => \wr_ptr_bin_reg_n_0_[9]\,
      ADDRARDADDR(11) => \wr_ptr_bin_reg_n_0_[8]\,
      ADDRARDADDR(10) => \wr_ptr_bin_reg_n_0_[7]\,
      ADDRARDADDR(9) => \wr_ptr_bin_reg_n_0_[6]\,
      ADDRARDADDR(8) => \wr_ptr_bin_reg_n_0_[5]\,
      ADDRARDADDR(7) => \wr_ptr_bin_reg_n_0_[4]\,
      ADDRARDADDR(6) => \wr_ptr_bin_reg_n_0_[3]\,
      ADDRARDADDR(5) => \wr_ptr_bin_reg_n_0_[2]\,
      ADDRARDADDR(4) => \wr_ptr_bin_reg_n_0_[1]\,
      ADDRARDADDR(3) => \wr_ptr_bin_reg_n_0_[0]\,
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => \rd_ptr_bin_reg_rep__0\(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_fifo_mem_reg_4_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_fifo_mem_reg_4_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => CLK,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_fifo_mem_reg_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => free_run_cnt_d2(11 downto 4),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => free_run_cnt_d2(12),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 0) => NLW_fifo_mem_reg_4_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_fifo_mem_reg_4_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => m_axis_tdata(43 downto 36),
      DOPADOP(3 downto 0) => NLW_fifo_mem_reg_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 1) => NLW_fifo_mem_reg_4_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => m_axis_tdata(44),
      ECCPARITY(7 downto 0) => NLW_fifo_mem_reg_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => fifo_mem_reg_7_i_1_n_0,
      ENBWREN => fifo_mem_reg_7_i_2_n_0,
      INJECTDBITERR => NLW_fifo_mem_reg_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_fifo_mem_reg_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_fifo_mem_reg_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_fifo_mem_reg_4_SBITERR_UNCONNECTED,
      WEA(3) => wr_en0,
      WEA(2) => wr_en0,
      WEA(1) => wr_en0,
      WEA(0) => wr_en0,
      WEBWE(7 downto 0) => B"00000000"
    );
fifo_mem_reg_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => \wr_ptr_bin_reg_n_0_[11]\,
      ADDRARDADDR(13) => \wr_ptr_bin_reg_n_0_[10]\,
      ADDRARDADDR(12) => \wr_ptr_bin_reg_n_0_[9]\,
      ADDRARDADDR(11) => \wr_ptr_bin_reg_n_0_[8]\,
      ADDRARDADDR(10) => \wr_ptr_bin_reg_n_0_[7]\,
      ADDRARDADDR(9) => \wr_ptr_bin_reg_n_0_[6]\,
      ADDRARDADDR(8) => \wr_ptr_bin_reg_n_0_[5]\,
      ADDRARDADDR(7) => \wr_ptr_bin_reg_n_0_[4]\,
      ADDRARDADDR(6) => \wr_ptr_bin_reg_n_0_[3]\,
      ADDRARDADDR(5) => \wr_ptr_bin_reg_n_0_[2]\,
      ADDRARDADDR(4) => \wr_ptr_bin_reg_n_0_[1]\,
      ADDRARDADDR(3) => \wr_ptr_bin_reg_n_0_[0]\,
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => \rd_ptr_bin_reg_rep__0\(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_fifo_mem_reg_5_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_fifo_mem_reg_5_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => CLK,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_fifo_mem_reg_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => free_run_cnt_d2(20 downto 13),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => free_run_cnt_d2(21),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 0) => NLW_fifo_mem_reg_5_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_fifo_mem_reg_5_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => m_axis_tdata(52 downto 45),
      DOPADOP(3 downto 0) => NLW_fifo_mem_reg_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 1) => NLW_fifo_mem_reg_5_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => m_axis_tdata(53),
      ECCPARITY(7 downto 0) => NLW_fifo_mem_reg_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => fifo_mem_reg_7_i_1_n_0,
      ENBWREN => fifo_mem_reg_7_i_2_n_0,
      INJECTDBITERR => NLW_fifo_mem_reg_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_fifo_mem_reg_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_fifo_mem_reg_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_fifo_mem_reg_5_SBITERR_UNCONNECTED,
      WEA(3) => wr_en0,
      WEA(2) => wr_en0,
      WEA(1) => wr_en0,
      WEA(0) => wr_en0,
      WEBWE(7 downto 0) => B"00000000"
    );
fifo_mem_reg_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => \wr_ptr_bin_reg_n_0_[11]\,
      ADDRARDADDR(13) => \wr_ptr_bin_reg_n_0_[10]\,
      ADDRARDADDR(12) => \wr_ptr_bin_reg_n_0_[9]\,
      ADDRARDADDR(11) => \wr_ptr_bin_reg_n_0_[8]\,
      ADDRARDADDR(10) => \wr_ptr_bin_reg_n_0_[7]\,
      ADDRARDADDR(9) => \wr_ptr_bin_reg_n_0_[6]\,
      ADDRARDADDR(8) => \wr_ptr_bin_reg_n_0_[5]\,
      ADDRARDADDR(7) => \wr_ptr_bin_reg_n_0_[4]\,
      ADDRARDADDR(6) => \wr_ptr_bin_reg_n_0_[3]\,
      ADDRARDADDR(5) => \wr_ptr_bin_reg_n_0_[2]\,
      ADDRARDADDR(4) => \wr_ptr_bin_reg_n_0_[1]\,
      ADDRARDADDR(3) => \wr_ptr_bin_reg_n_0_[0]\,
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => \rd_ptr_bin_reg_rep__0\(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_fifo_mem_reg_6_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_fifo_mem_reg_6_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => CLK,
      CLKBWRCLK => s_axi_aclk,
      DBITERR => NLW_fifo_mem_reg_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => free_run_cnt_d2(29 downto 22),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => free_run_cnt_d2(30),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 0) => NLW_fifo_mem_reg_6_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_fifo_mem_reg_6_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => m_axis_tdata(61 downto 54),
      DOPADOP(3 downto 0) => NLW_fifo_mem_reg_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 1) => NLW_fifo_mem_reg_6_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => m_axis_tdata(62),
      ECCPARITY(7 downto 0) => NLW_fifo_mem_reg_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => fifo_mem_reg_7_i_1_n_0,
      ENBWREN => fifo_mem_reg_7_i_2_n_0,
      INJECTDBITERR => NLW_fifo_mem_reg_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_fifo_mem_reg_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_fifo_mem_reg_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_fifo_mem_reg_6_SBITERR_UNCONNECTED,
      WEA(3) => wr_en0,
      WEA(2) => wr_en0,
      WEA(1) => wr_en0,
      WEA(0) => wr_en0,
      WEBWE(7 downto 0) => B"00000000"
    );
fifo_mem_reg_7: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 4,
      READ_WIDTH_B => 4,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 4,
      WRITE_WIDTH_B => 4
    )
        port map (
      ADDRARDADDR(13) => \wr_ptr_bin_reg_n_0_[11]\,
      ADDRARDADDR(12) => \wr_ptr_bin_reg_n_0_[10]\,
      ADDRARDADDR(11) => \wr_ptr_bin_reg_n_0_[9]\,
      ADDRARDADDR(10) => \wr_ptr_bin_reg_n_0_[8]\,
      ADDRARDADDR(9) => \wr_ptr_bin_reg_n_0_[7]\,
      ADDRARDADDR(8) => \wr_ptr_bin_reg_n_0_[6]\,
      ADDRARDADDR(7) => \wr_ptr_bin_reg_n_0_[5]\,
      ADDRARDADDR(6) => \wr_ptr_bin_reg_n_0_[4]\,
      ADDRARDADDR(5) => \wr_ptr_bin_reg_n_0_[3]\,
      ADDRARDADDR(4) => \wr_ptr_bin_reg_n_0_[2]\,
      ADDRARDADDR(3) => \wr_ptr_bin_reg_n_0_[1]\,
      ADDRARDADDR(2) => \wr_ptr_bin_reg_n_0_[0]\,
      ADDRARDADDR(1 downto 0) => B"11",
      ADDRBWRADDR(13 downto 2) => \rd_ptr_bin_reg_rep__0\(11 downto 0),
      ADDRBWRADDR(1 downto 0) => B"11",
      CLKARDCLK => CLK,
      CLKBWRCLK => s_axi_aclk,
      DIADI(15 downto 1) => B"000000000000000",
      DIADI(0) => free_run_cnt_d2(31),
      DIBDI(15 downto 0) => B"0000000000000001",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_fifo_mem_reg_7_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 1) => NLW_fifo_mem_reg_7_DOBDO_UNCONNECTED(15 downto 1),
      DOBDO(0) => m_axis_tdata(63),
      DOPADOP(1 downto 0) => NLW_fifo_mem_reg_7_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_fifo_mem_reg_7_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => fifo_mem_reg_7_i_1_n_0,
      ENBWREN => fifo_mem_reg_7_i_2_n_0,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => wr_en0,
      WEA(0) => wr_en0,
      WEBWE(3 downto 0) => B"0000"
    );
fifo_mem_reg_7_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => edge_d2,
      I1 => \out\(0),
      I2 => \do_capture0__25\,
      O => fifo_mem_reg_7_i_1_n_0
    );
fifo_mem_reg_7_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \skip_cnt[31]_i_7_n_0\,
      I1 => \skip_cnt[31]_i_8_n_0\,
      I2 => \skip_cnt[31]_i_5_n_0\,
      I3 => \skip_cnt[31]_i_6_n_0\,
      O => fifo_mem_reg_7_i_10_n_0
    );
fifo_mem_reg_7_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700070700000000"
    )
        port map (
      I0 => \pkt_bounded__14\,
      I1 => pop_limit_hit0,
      I2 => int_empty,
      I3 => m_axis_tready,
      I4 => \^out_valid_reg_0\,
      I5 => \axi_rdata_reg[4]\(0),
      O => fifo_mem_reg_7_i_2_n_0
    );
fifo_mem_reg_7_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => fifo_mem_reg_7_i_6_n_0,
      I1 => fifo_mem_reg_7_i_7_n_0,
      I2 => fifo_mem_reg_7_i_8_n_0,
      I3 => fifo_mem_reg_7_i_9_n_0,
      I4 => fifo_mem_reg_7_i_10_n_0,
      O => \do_capture0__25\
    );
fifo_mem_reg_7_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => skip_cnt(19),
      I1 => skip_cnt(18),
      I2 => skip_cnt(17),
      I3 => skip_cnt(16),
      O => fifo_mem_reg_7_i_6_n_0
    );
fifo_mem_reg_7_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => skip_cnt(23),
      I1 => skip_cnt(22),
      I2 => skip_cnt(21),
      I3 => skip_cnt(20),
      O => fifo_mem_reg_7_i_7_n_0
    );
fifo_mem_reg_7_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => skip_cnt(30),
      I1 => skip_cnt(31),
      I2 => skip_cnt(29),
      I3 => skip_cnt(28),
      O => fifo_mem_reg_7_i_8_n_0
    );
fifo_mem_reg_7_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => skip_cnt(25),
      I1 => skip_cnt(24),
      I2 => skip_cnt(27),
      I3 => skip_cnt(26),
      O => fifo_mem_reg_7_i_9_n_0
    );
\free_run_cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_run_cnt_reg(0),
      O => \free_run_cnt[0]_i_2_n_0\
    );
\free_run_cnt_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(0),
      Q => free_run_cnt_d1(0),
      R => SR(0)
    );
\free_run_cnt_d1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(10),
      Q => free_run_cnt_d1(10),
      R => SR(0)
    );
\free_run_cnt_d1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(11),
      Q => free_run_cnt_d1(11),
      R => SR(0)
    );
\free_run_cnt_d1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(12),
      Q => free_run_cnt_d1(12),
      R => SR(0)
    );
\free_run_cnt_d1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(13),
      Q => free_run_cnt_d1(13),
      R => SR(0)
    );
\free_run_cnt_d1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(14),
      Q => free_run_cnt_d1(14),
      R => SR(0)
    );
\free_run_cnt_d1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(15),
      Q => free_run_cnt_d1(15),
      R => SR(0)
    );
\free_run_cnt_d1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(16),
      Q => free_run_cnt_d1(16),
      R => SR(0)
    );
\free_run_cnt_d1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(17),
      Q => free_run_cnt_d1(17),
      R => SR(0)
    );
\free_run_cnt_d1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(18),
      Q => free_run_cnt_d1(18),
      R => SR(0)
    );
\free_run_cnt_d1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(19),
      Q => free_run_cnt_d1(19),
      R => SR(0)
    );
\free_run_cnt_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(1),
      Q => free_run_cnt_d1(1),
      R => SR(0)
    );
\free_run_cnt_d1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(20),
      Q => free_run_cnt_d1(20),
      R => SR(0)
    );
\free_run_cnt_d1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(21),
      Q => free_run_cnt_d1(21),
      R => SR(0)
    );
\free_run_cnt_d1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(22),
      Q => free_run_cnt_d1(22),
      R => SR(0)
    );
\free_run_cnt_d1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(23),
      Q => free_run_cnt_d1(23),
      R => SR(0)
    );
\free_run_cnt_d1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(24),
      Q => free_run_cnt_d1(24),
      R => SR(0)
    );
\free_run_cnt_d1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(25),
      Q => free_run_cnt_d1(25),
      R => SR(0)
    );
\free_run_cnt_d1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(26),
      Q => free_run_cnt_d1(26),
      R => SR(0)
    );
\free_run_cnt_d1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(27),
      Q => free_run_cnt_d1(27),
      R => SR(0)
    );
\free_run_cnt_d1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(28),
      Q => free_run_cnt_d1(28),
      R => SR(0)
    );
\free_run_cnt_d1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(29),
      Q => free_run_cnt_d1(29),
      R => SR(0)
    );
\free_run_cnt_d1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(2),
      Q => free_run_cnt_d1(2),
      R => SR(0)
    );
\free_run_cnt_d1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(30),
      Q => free_run_cnt_d1(30),
      R => SR(0)
    );
\free_run_cnt_d1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(31),
      Q => free_run_cnt_d1(31),
      R => SR(0)
    );
\free_run_cnt_d1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(3),
      Q => free_run_cnt_d1(3),
      R => SR(0)
    );
\free_run_cnt_d1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(4),
      Q => free_run_cnt_d1(4),
      R => SR(0)
    );
\free_run_cnt_d1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(5),
      Q => free_run_cnt_d1(5),
      R => SR(0)
    );
\free_run_cnt_d1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(6),
      Q => free_run_cnt_d1(6),
      R => SR(0)
    );
\free_run_cnt_d1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(7),
      Q => free_run_cnt_d1(7),
      R => SR(0)
    );
\free_run_cnt_d1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(8),
      Q => free_run_cnt_d1(8),
      R => SR(0)
    );
\free_run_cnt_d1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_reg(9),
      Q => free_run_cnt_d1(9),
      R => SR(0)
    );
\free_run_cnt_d2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(0),
      Q => free_run_cnt_d2(0),
      R => SR(0)
    );
\free_run_cnt_d2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(10),
      Q => free_run_cnt_d2(10),
      R => SR(0)
    );
\free_run_cnt_d2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(11),
      Q => free_run_cnt_d2(11),
      R => SR(0)
    );
\free_run_cnt_d2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(12),
      Q => free_run_cnt_d2(12),
      R => SR(0)
    );
\free_run_cnt_d2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(13),
      Q => free_run_cnt_d2(13),
      R => SR(0)
    );
\free_run_cnt_d2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(14),
      Q => free_run_cnt_d2(14),
      R => SR(0)
    );
\free_run_cnt_d2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(15),
      Q => free_run_cnt_d2(15),
      R => SR(0)
    );
\free_run_cnt_d2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(16),
      Q => free_run_cnt_d2(16),
      R => SR(0)
    );
\free_run_cnt_d2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(17),
      Q => free_run_cnt_d2(17),
      R => SR(0)
    );
\free_run_cnt_d2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(18),
      Q => free_run_cnt_d2(18),
      R => SR(0)
    );
\free_run_cnt_d2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(19),
      Q => free_run_cnt_d2(19),
      R => SR(0)
    );
\free_run_cnt_d2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(1),
      Q => free_run_cnt_d2(1),
      R => SR(0)
    );
\free_run_cnt_d2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(20),
      Q => free_run_cnt_d2(20),
      R => SR(0)
    );
\free_run_cnt_d2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(21),
      Q => free_run_cnt_d2(21),
      R => SR(0)
    );
\free_run_cnt_d2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(22),
      Q => free_run_cnt_d2(22),
      R => SR(0)
    );
\free_run_cnt_d2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(23),
      Q => free_run_cnt_d2(23),
      R => SR(0)
    );
\free_run_cnt_d2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(24),
      Q => free_run_cnt_d2(24),
      R => SR(0)
    );
\free_run_cnt_d2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(25),
      Q => free_run_cnt_d2(25),
      R => SR(0)
    );
\free_run_cnt_d2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(26),
      Q => free_run_cnt_d2(26),
      R => SR(0)
    );
\free_run_cnt_d2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(27),
      Q => free_run_cnt_d2(27),
      R => SR(0)
    );
\free_run_cnt_d2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(28),
      Q => free_run_cnt_d2(28),
      R => SR(0)
    );
\free_run_cnt_d2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(29),
      Q => free_run_cnt_d2(29),
      R => SR(0)
    );
\free_run_cnt_d2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(2),
      Q => free_run_cnt_d2(2),
      R => SR(0)
    );
\free_run_cnt_d2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(30),
      Q => free_run_cnt_d2(30),
      R => SR(0)
    );
\free_run_cnt_d2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(31),
      Q => free_run_cnt_d2(31),
      R => SR(0)
    );
\free_run_cnt_d2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(3),
      Q => free_run_cnt_d2(3),
      R => SR(0)
    );
\free_run_cnt_d2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(4),
      Q => free_run_cnt_d2(4),
      R => SR(0)
    );
\free_run_cnt_d2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(5),
      Q => free_run_cnt_d2(5),
      R => SR(0)
    );
\free_run_cnt_d2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(6),
      Q => free_run_cnt_d2(6),
      R => SR(0)
    );
\free_run_cnt_d2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(7),
      Q => free_run_cnt_d2(7),
      R => SR(0)
    );
\free_run_cnt_d2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(8),
      Q => free_run_cnt_d2(8),
      R => SR(0)
    );
\free_run_cnt_d2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => free_run_cnt_d1(9),
      Q => free_run_cnt_d2(9),
      R => SR(0)
    );
\free_run_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[0]_i_1_n_7\,
      Q => free_run_cnt_reg(0),
      R => SR(0)
    );
\free_run_cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \free_run_cnt_reg[0]_i_1_n_0\,
      CO(2) => \free_run_cnt_reg[0]_i_1_n_1\,
      CO(1) => \free_run_cnt_reg[0]_i_1_n_2\,
      CO(0) => \free_run_cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \free_run_cnt_reg[0]_i_1_n_4\,
      O(2) => \free_run_cnt_reg[0]_i_1_n_5\,
      O(1) => \free_run_cnt_reg[0]_i_1_n_6\,
      O(0) => \free_run_cnt_reg[0]_i_1_n_7\,
      S(3 downto 1) => free_run_cnt_reg(3 downto 1),
      S(0) => \free_run_cnt[0]_i_2_n_0\
    );
\free_run_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[8]_i_1_n_5\,
      Q => free_run_cnt_reg(10),
      R => SR(0)
    );
\free_run_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[8]_i_1_n_4\,
      Q => free_run_cnt_reg(11),
      R => SR(0)
    );
\free_run_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[12]_i_1_n_7\,
      Q => free_run_cnt_reg(12),
      R => SR(0)
    );
\free_run_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_run_cnt_reg[8]_i_1_n_0\,
      CO(3) => \free_run_cnt_reg[12]_i_1_n_0\,
      CO(2) => \free_run_cnt_reg[12]_i_1_n_1\,
      CO(1) => \free_run_cnt_reg[12]_i_1_n_2\,
      CO(0) => \free_run_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \free_run_cnt_reg[12]_i_1_n_4\,
      O(2) => \free_run_cnt_reg[12]_i_1_n_5\,
      O(1) => \free_run_cnt_reg[12]_i_1_n_6\,
      O(0) => \free_run_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => free_run_cnt_reg(15 downto 12)
    );
\free_run_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[12]_i_1_n_6\,
      Q => free_run_cnt_reg(13),
      R => SR(0)
    );
\free_run_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[12]_i_1_n_5\,
      Q => free_run_cnt_reg(14),
      R => SR(0)
    );
\free_run_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[12]_i_1_n_4\,
      Q => free_run_cnt_reg(15),
      R => SR(0)
    );
\free_run_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[16]_i_1_n_7\,
      Q => free_run_cnt_reg(16),
      R => SR(0)
    );
\free_run_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_run_cnt_reg[12]_i_1_n_0\,
      CO(3) => \free_run_cnt_reg[16]_i_1_n_0\,
      CO(2) => \free_run_cnt_reg[16]_i_1_n_1\,
      CO(1) => \free_run_cnt_reg[16]_i_1_n_2\,
      CO(0) => \free_run_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \free_run_cnt_reg[16]_i_1_n_4\,
      O(2) => \free_run_cnt_reg[16]_i_1_n_5\,
      O(1) => \free_run_cnt_reg[16]_i_1_n_6\,
      O(0) => \free_run_cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => free_run_cnt_reg(19 downto 16)
    );
\free_run_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[16]_i_1_n_6\,
      Q => free_run_cnt_reg(17),
      R => SR(0)
    );
\free_run_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[16]_i_1_n_5\,
      Q => free_run_cnt_reg(18),
      R => SR(0)
    );
\free_run_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[16]_i_1_n_4\,
      Q => free_run_cnt_reg(19),
      R => SR(0)
    );
\free_run_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[0]_i_1_n_6\,
      Q => free_run_cnt_reg(1),
      R => SR(0)
    );
\free_run_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[20]_i_1_n_7\,
      Q => free_run_cnt_reg(20),
      R => SR(0)
    );
\free_run_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_run_cnt_reg[16]_i_1_n_0\,
      CO(3) => \free_run_cnt_reg[20]_i_1_n_0\,
      CO(2) => \free_run_cnt_reg[20]_i_1_n_1\,
      CO(1) => \free_run_cnt_reg[20]_i_1_n_2\,
      CO(0) => \free_run_cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \free_run_cnt_reg[20]_i_1_n_4\,
      O(2) => \free_run_cnt_reg[20]_i_1_n_5\,
      O(1) => \free_run_cnt_reg[20]_i_1_n_6\,
      O(0) => \free_run_cnt_reg[20]_i_1_n_7\,
      S(3 downto 0) => free_run_cnt_reg(23 downto 20)
    );
\free_run_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[20]_i_1_n_6\,
      Q => free_run_cnt_reg(21),
      R => SR(0)
    );
\free_run_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[20]_i_1_n_5\,
      Q => free_run_cnt_reg(22),
      R => SR(0)
    );
\free_run_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[20]_i_1_n_4\,
      Q => free_run_cnt_reg(23),
      R => SR(0)
    );
\free_run_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[24]_i_1_n_7\,
      Q => free_run_cnt_reg(24),
      R => SR(0)
    );
\free_run_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_run_cnt_reg[20]_i_1_n_0\,
      CO(3) => \free_run_cnt_reg[24]_i_1_n_0\,
      CO(2) => \free_run_cnt_reg[24]_i_1_n_1\,
      CO(1) => \free_run_cnt_reg[24]_i_1_n_2\,
      CO(0) => \free_run_cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \free_run_cnt_reg[24]_i_1_n_4\,
      O(2) => \free_run_cnt_reg[24]_i_1_n_5\,
      O(1) => \free_run_cnt_reg[24]_i_1_n_6\,
      O(0) => \free_run_cnt_reg[24]_i_1_n_7\,
      S(3 downto 0) => free_run_cnt_reg(27 downto 24)
    );
\free_run_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[24]_i_1_n_6\,
      Q => free_run_cnt_reg(25),
      R => SR(0)
    );
\free_run_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[24]_i_1_n_5\,
      Q => free_run_cnt_reg(26),
      R => SR(0)
    );
\free_run_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[24]_i_1_n_4\,
      Q => free_run_cnt_reg(27),
      R => SR(0)
    );
\free_run_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[28]_i_1_n_7\,
      Q => free_run_cnt_reg(28),
      R => SR(0)
    );
\free_run_cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_run_cnt_reg[24]_i_1_n_0\,
      CO(3) => \NLW_free_run_cnt_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \free_run_cnt_reg[28]_i_1_n_1\,
      CO(1) => \free_run_cnt_reg[28]_i_1_n_2\,
      CO(0) => \free_run_cnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \free_run_cnt_reg[28]_i_1_n_4\,
      O(2) => \free_run_cnt_reg[28]_i_1_n_5\,
      O(1) => \free_run_cnt_reg[28]_i_1_n_6\,
      O(0) => \free_run_cnt_reg[28]_i_1_n_7\,
      S(3 downto 0) => free_run_cnt_reg(31 downto 28)
    );
\free_run_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[28]_i_1_n_6\,
      Q => free_run_cnt_reg(29),
      R => SR(0)
    );
\free_run_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[0]_i_1_n_5\,
      Q => free_run_cnt_reg(2),
      R => SR(0)
    );
\free_run_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[28]_i_1_n_5\,
      Q => free_run_cnt_reg(30),
      R => SR(0)
    );
\free_run_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[28]_i_1_n_4\,
      Q => free_run_cnt_reg(31),
      R => SR(0)
    );
\free_run_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[0]_i_1_n_4\,
      Q => free_run_cnt_reg(3),
      R => SR(0)
    );
\free_run_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[4]_i_1_n_7\,
      Q => free_run_cnt_reg(4),
      R => SR(0)
    );
\free_run_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_run_cnt_reg[0]_i_1_n_0\,
      CO(3) => \free_run_cnt_reg[4]_i_1_n_0\,
      CO(2) => \free_run_cnt_reg[4]_i_1_n_1\,
      CO(1) => \free_run_cnt_reg[4]_i_1_n_2\,
      CO(0) => \free_run_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \free_run_cnt_reg[4]_i_1_n_4\,
      O(2) => \free_run_cnt_reg[4]_i_1_n_5\,
      O(1) => \free_run_cnt_reg[4]_i_1_n_6\,
      O(0) => \free_run_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => free_run_cnt_reg(7 downto 4)
    );
\free_run_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[4]_i_1_n_6\,
      Q => free_run_cnt_reg(5),
      R => SR(0)
    );
\free_run_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[4]_i_1_n_5\,
      Q => free_run_cnt_reg(6),
      R => SR(0)
    );
\free_run_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[4]_i_1_n_4\,
      Q => free_run_cnt_reg(7),
      R => SR(0)
    );
\free_run_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[8]_i_1_n_7\,
      Q => free_run_cnt_reg(8),
      R => SR(0)
    );
\free_run_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_run_cnt_reg[4]_i_1_n_0\,
      CO(3) => \free_run_cnt_reg[8]_i_1_n_0\,
      CO(2) => \free_run_cnt_reg[8]_i_1_n_1\,
      CO(1) => \free_run_cnt_reg[8]_i_1_n_2\,
      CO(0) => \free_run_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \free_run_cnt_reg[8]_i_1_n_4\,
      O(2) => \free_run_cnt_reg[8]_i_1_n_5\,
      O(1) => \free_run_cnt_reg[8]_i_1_n_6\,
      O(0) => \free_run_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => free_run_cnt_reg(11 downto 8)
    );
\free_run_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \free_run_cnt_reg[8]_i_1_n_6\,
      Q => free_run_cnt_reg(9),
      R => SR(0)
    );
\fx_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => clk_fx,
      Q => fx_sync(0),
      R => SR(0)
    );
\fx_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => fx_sync(0),
      Q => fx_sync(1),
      R => SR(0)
    );
\fx_sync_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => fx_sync(1),
      Q => fx_sync(2),
      R => SR(0)
    );
int_empty_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => int_empty_carry_n_0,
      CO(2) => int_empty_carry_n_1,
      CO(1) => int_empty_carry_n_2,
      CO(0) => int_empty_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_int_empty_carry_O_UNCONNECTED(3 downto 0),
      S(3) => u_wr_ptr_cdc_n_23,
      S(2) => u_wr_ptr_cdc_n_24,
      S(1) => u_wr_ptr_cdc_n_25,
      S(0) => u_wr_ptr_cdc_n_26
    );
\int_empty_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => int_empty_carry_n_0,
      CO(3 downto 1) => \NLW_int_empty_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => int_empty,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_int_empty_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => u_wr_ptr_cdc_n_22
    );
\lost_count_fs[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => lost_count_fs_reg(0),
      O => \lost_count_fs[0]_i_2_n_0\
    );
\lost_count_fs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[0]_i_1_n_7\,
      Q => lost_count_fs_reg(0),
      R => SR(0)
    );
\lost_count_fs_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \lost_count_fs_reg[0]_i_1_n_0\,
      CO(2) => \lost_count_fs_reg[0]_i_1_n_1\,
      CO(1) => \lost_count_fs_reg[0]_i_1_n_2\,
      CO(0) => \lost_count_fs_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \lost_count_fs_reg[0]_i_1_n_4\,
      O(2) => \lost_count_fs_reg[0]_i_1_n_5\,
      O(1) => \lost_count_fs_reg[0]_i_1_n_6\,
      O(0) => \lost_count_fs_reg[0]_i_1_n_7\,
      S(3 downto 1) => lost_count_fs_reg(3 downto 1),
      S(0) => \lost_count_fs[0]_i_2_n_0\
    );
\lost_count_fs_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[8]_i_1_n_5\,
      Q => lost_count_fs_reg(10),
      R => SR(0)
    );
\lost_count_fs_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[8]_i_1_n_4\,
      Q => lost_count_fs_reg(11),
      R => SR(0)
    );
\lost_count_fs_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[12]_i_1_n_7\,
      Q => lost_count_fs_reg(12),
      R => SR(0)
    );
\lost_count_fs_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \lost_count_fs_reg[8]_i_1_n_0\,
      CO(3) => \lost_count_fs_reg[12]_i_1_n_0\,
      CO(2) => \lost_count_fs_reg[12]_i_1_n_1\,
      CO(1) => \lost_count_fs_reg[12]_i_1_n_2\,
      CO(0) => \lost_count_fs_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \lost_count_fs_reg[12]_i_1_n_4\,
      O(2) => \lost_count_fs_reg[12]_i_1_n_5\,
      O(1) => \lost_count_fs_reg[12]_i_1_n_6\,
      O(0) => \lost_count_fs_reg[12]_i_1_n_7\,
      S(3 downto 0) => lost_count_fs_reg(15 downto 12)
    );
\lost_count_fs_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[12]_i_1_n_6\,
      Q => lost_count_fs_reg(13),
      R => SR(0)
    );
\lost_count_fs_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[12]_i_1_n_5\,
      Q => lost_count_fs_reg(14),
      R => SR(0)
    );
\lost_count_fs_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[12]_i_1_n_4\,
      Q => lost_count_fs_reg(15),
      R => SR(0)
    );
\lost_count_fs_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[16]_i_1_n_7\,
      Q => lost_count_fs_reg(16),
      R => SR(0)
    );
\lost_count_fs_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \lost_count_fs_reg[12]_i_1_n_0\,
      CO(3) => \lost_count_fs_reg[16]_i_1_n_0\,
      CO(2) => \lost_count_fs_reg[16]_i_1_n_1\,
      CO(1) => \lost_count_fs_reg[16]_i_1_n_2\,
      CO(0) => \lost_count_fs_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \lost_count_fs_reg[16]_i_1_n_4\,
      O(2) => \lost_count_fs_reg[16]_i_1_n_5\,
      O(1) => \lost_count_fs_reg[16]_i_1_n_6\,
      O(0) => \lost_count_fs_reg[16]_i_1_n_7\,
      S(3 downto 0) => lost_count_fs_reg(19 downto 16)
    );
\lost_count_fs_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[16]_i_1_n_6\,
      Q => lost_count_fs_reg(17),
      R => SR(0)
    );
\lost_count_fs_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[16]_i_1_n_5\,
      Q => lost_count_fs_reg(18),
      R => SR(0)
    );
\lost_count_fs_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[16]_i_1_n_4\,
      Q => lost_count_fs_reg(19),
      R => SR(0)
    );
\lost_count_fs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[0]_i_1_n_6\,
      Q => lost_count_fs_reg(1),
      R => SR(0)
    );
\lost_count_fs_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[20]_i_1_n_7\,
      Q => lost_count_fs_reg(20),
      R => SR(0)
    );
\lost_count_fs_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \lost_count_fs_reg[16]_i_1_n_0\,
      CO(3) => \lost_count_fs_reg[20]_i_1_n_0\,
      CO(2) => \lost_count_fs_reg[20]_i_1_n_1\,
      CO(1) => \lost_count_fs_reg[20]_i_1_n_2\,
      CO(0) => \lost_count_fs_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \lost_count_fs_reg[20]_i_1_n_4\,
      O(2) => \lost_count_fs_reg[20]_i_1_n_5\,
      O(1) => \lost_count_fs_reg[20]_i_1_n_6\,
      O(0) => \lost_count_fs_reg[20]_i_1_n_7\,
      S(3 downto 0) => lost_count_fs_reg(23 downto 20)
    );
\lost_count_fs_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[20]_i_1_n_6\,
      Q => lost_count_fs_reg(21),
      R => SR(0)
    );
\lost_count_fs_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[20]_i_1_n_5\,
      Q => lost_count_fs_reg(22),
      R => SR(0)
    );
\lost_count_fs_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[20]_i_1_n_4\,
      Q => lost_count_fs_reg(23),
      R => SR(0)
    );
\lost_count_fs_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[24]_i_1_n_7\,
      Q => lost_count_fs_reg(24),
      R => SR(0)
    );
\lost_count_fs_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \lost_count_fs_reg[20]_i_1_n_0\,
      CO(3) => \lost_count_fs_reg[24]_i_1_n_0\,
      CO(2) => \lost_count_fs_reg[24]_i_1_n_1\,
      CO(1) => \lost_count_fs_reg[24]_i_1_n_2\,
      CO(0) => \lost_count_fs_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \lost_count_fs_reg[24]_i_1_n_4\,
      O(2) => \lost_count_fs_reg[24]_i_1_n_5\,
      O(1) => \lost_count_fs_reg[24]_i_1_n_6\,
      O(0) => \lost_count_fs_reg[24]_i_1_n_7\,
      S(3 downto 0) => lost_count_fs_reg(27 downto 24)
    );
\lost_count_fs_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[24]_i_1_n_6\,
      Q => lost_count_fs_reg(25),
      R => SR(0)
    );
\lost_count_fs_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[24]_i_1_n_5\,
      Q => lost_count_fs_reg(26),
      R => SR(0)
    );
\lost_count_fs_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[24]_i_1_n_4\,
      Q => lost_count_fs_reg(27),
      R => SR(0)
    );
\lost_count_fs_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[28]_i_1_n_7\,
      Q => lost_count_fs_reg(28),
      R => SR(0)
    );
\lost_count_fs_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \lost_count_fs_reg[24]_i_1_n_0\,
      CO(3) => \NLW_lost_count_fs_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \lost_count_fs_reg[28]_i_1_n_1\,
      CO(1) => \lost_count_fs_reg[28]_i_1_n_2\,
      CO(0) => \lost_count_fs_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \lost_count_fs_reg[28]_i_1_n_4\,
      O(2) => \lost_count_fs_reg[28]_i_1_n_5\,
      O(1) => \lost_count_fs_reg[28]_i_1_n_6\,
      O(0) => \lost_count_fs_reg[28]_i_1_n_7\,
      S(3 downto 0) => lost_count_fs_reg(31 downto 28)
    );
\lost_count_fs_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[28]_i_1_n_6\,
      Q => lost_count_fs_reg(29),
      R => SR(0)
    );
\lost_count_fs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[0]_i_1_n_5\,
      Q => lost_count_fs_reg(2),
      R => SR(0)
    );
\lost_count_fs_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[28]_i_1_n_5\,
      Q => lost_count_fs_reg(30),
      R => SR(0)
    );
\lost_count_fs_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[28]_i_1_n_4\,
      Q => lost_count_fs_reg(31),
      R => SR(0)
    );
\lost_count_fs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[0]_i_1_n_4\,
      Q => lost_count_fs_reg(3),
      R => SR(0)
    );
\lost_count_fs_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[4]_i_1_n_7\,
      Q => lost_count_fs_reg(4),
      R => SR(0)
    );
\lost_count_fs_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \lost_count_fs_reg[0]_i_1_n_0\,
      CO(3) => \lost_count_fs_reg[4]_i_1_n_0\,
      CO(2) => \lost_count_fs_reg[4]_i_1_n_1\,
      CO(1) => \lost_count_fs_reg[4]_i_1_n_2\,
      CO(0) => \lost_count_fs_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \lost_count_fs_reg[4]_i_1_n_4\,
      O(2) => \lost_count_fs_reg[4]_i_1_n_5\,
      O(1) => \lost_count_fs_reg[4]_i_1_n_6\,
      O(0) => \lost_count_fs_reg[4]_i_1_n_7\,
      S(3 downto 0) => lost_count_fs_reg(7 downto 4)
    );
\lost_count_fs_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[4]_i_1_n_6\,
      Q => lost_count_fs_reg(5),
      R => SR(0)
    );
\lost_count_fs_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[4]_i_1_n_5\,
      Q => lost_count_fs_reg(6),
      R => SR(0)
    );
\lost_count_fs_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[4]_i_1_n_4\,
      Q => lost_count_fs_reg(7),
      R => SR(0)
    );
\lost_count_fs_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[8]_i_1_n_7\,
      Q => lost_count_fs_reg(8),
      R => SR(0)
    );
\lost_count_fs_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \lost_count_fs_reg[4]_i_1_n_0\,
      CO(3) => \lost_count_fs_reg[8]_i_1_n_0\,
      CO(2) => \lost_count_fs_reg[8]_i_1_n_1\,
      CO(1) => \lost_count_fs_reg[8]_i_1_n_2\,
      CO(0) => \lost_count_fs_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \lost_count_fs_reg[8]_i_1_n_4\,
      O(2) => \lost_count_fs_reg[8]_i_1_n_5\,
      O(1) => \lost_count_fs_reg[8]_i_1_n_6\,
      O(0) => \lost_count_fs_reg[8]_i_1_n_7\,
      S(3 downto 0) => lost_count_fs_reg(11 downto 8)
    );
\lost_count_fs_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => \lost_count_fs_reg[8]_i_1_n_6\,
      Q => lost_count_fs_reg(9),
      R => SR(0)
    );
out_last_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => pop_is_last,
      Q => m_axis_tlast,
      R => \gray_s1_reg[0]\(0)
    );
out_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0A0ACCCECECE"
    )
        port map (
      I0 => \axi_rdata_reg[4]\(0),
      I1 => \^out_valid_reg_0\,
      I2 => int_empty,
      I3 => pop_limit_hit0,
      I4 => \pkt_bounded__14\,
      I5 => m_axis_tready,
      O => out_valid_i_1_n_0
    );
out_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => out_valid_i_1_n_0,
      Q => \^out_valid_reg_0\,
      R => \gray_s1_reg[0]\(0)
    );
ovf_mark_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => u_rd_ptr_cdc_n_0,
      Q => ovf_mark,
      R => SR(0)
    );
ovf_sticky_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => wr_drop,
      D => wr_drop,
      Q => ovf_sticky,
      R => SR(0)
    );
\pop_cnt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pop_cnt_reg(0),
      O => \pop_cnt[0]_i_3_n_0\
    );
\pop_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \pop_cnt_reg[0]_i_2_n_7\,
      Q => pop_cnt_reg(0),
      R => \pop_cnt_reg[15]_0\
    );
\pop_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pop_cnt_reg[0]_i_2_n_0\,
      CO(2) => \pop_cnt_reg[0]_i_2_n_1\,
      CO(1) => \pop_cnt_reg[0]_i_2_n_2\,
      CO(0) => \pop_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \pop_cnt_reg[0]_i_2_n_4\,
      O(2) => \pop_cnt_reg[0]_i_2_n_5\,
      O(1) => \pop_cnt_reg[0]_i_2_n_6\,
      O(0) => \pop_cnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => pop_cnt_reg(3 downto 1),
      S(0) => \pop_cnt[0]_i_3_n_0\
    );
\pop_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \pop_cnt_reg[8]_i_1_n_5\,
      Q => pop_cnt_reg(10),
      R => \pop_cnt_reg[15]_0\
    );
\pop_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \pop_cnt_reg[8]_i_1_n_4\,
      Q => pop_cnt_reg(11),
      R => \pop_cnt_reg[15]_0\
    );
\pop_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \pop_cnt_reg[12]_i_1_n_7\,
      Q => pop_cnt_reg(12),
      R => \pop_cnt_reg[15]_0\
    );
\pop_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pop_cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_pop_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \pop_cnt_reg[12]_i_1_n_1\,
      CO(1) => \pop_cnt_reg[12]_i_1_n_2\,
      CO(0) => \pop_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pop_cnt_reg[12]_i_1_n_4\,
      O(2) => \pop_cnt_reg[12]_i_1_n_5\,
      O(1) => \pop_cnt_reg[12]_i_1_n_6\,
      O(0) => \pop_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => pop_cnt_reg(15 downto 12)
    );
\pop_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \pop_cnt_reg[12]_i_1_n_6\,
      Q => pop_cnt_reg(13),
      R => \pop_cnt_reg[15]_0\
    );
\pop_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \pop_cnt_reg[12]_i_1_n_5\,
      Q => pop_cnt_reg(14),
      R => \pop_cnt_reg[15]_0\
    );
\pop_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \pop_cnt_reg[12]_i_1_n_4\,
      Q => pop_cnt_reg(15),
      R => \pop_cnt_reg[15]_0\
    );
\pop_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \pop_cnt_reg[0]_i_2_n_6\,
      Q => pop_cnt_reg(1),
      R => \pop_cnt_reg[15]_0\
    );
\pop_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \pop_cnt_reg[0]_i_2_n_5\,
      Q => pop_cnt_reg(2),
      R => \pop_cnt_reg[15]_0\
    );
\pop_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \pop_cnt_reg[0]_i_2_n_4\,
      Q => pop_cnt_reg(3),
      R => \pop_cnt_reg[15]_0\
    );
\pop_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \pop_cnt_reg[4]_i_1_n_7\,
      Q => pop_cnt_reg(4),
      R => \pop_cnt_reg[15]_0\
    );
\pop_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pop_cnt_reg[0]_i_2_n_0\,
      CO(3) => \pop_cnt_reg[4]_i_1_n_0\,
      CO(2) => \pop_cnt_reg[4]_i_1_n_1\,
      CO(1) => \pop_cnt_reg[4]_i_1_n_2\,
      CO(0) => \pop_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pop_cnt_reg[4]_i_1_n_4\,
      O(2) => \pop_cnt_reg[4]_i_1_n_5\,
      O(1) => \pop_cnt_reg[4]_i_1_n_6\,
      O(0) => \pop_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => pop_cnt_reg(7 downto 4)
    );
\pop_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \pop_cnt_reg[4]_i_1_n_6\,
      Q => pop_cnt_reg(5),
      R => \pop_cnt_reg[15]_0\
    );
\pop_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \pop_cnt_reg[4]_i_1_n_5\,
      Q => pop_cnt_reg(6),
      R => \pop_cnt_reg[15]_0\
    );
\pop_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \pop_cnt_reg[4]_i_1_n_4\,
      Q => pop_cnt_reg(7),
      R => \pop_cnt_reg[15]_0\
    );
\pop_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \pop_cnt_reg[8]_i_1_n_7\,
      Q => pop_cnt_reg(8),
      R => \pop_cnt_reg[15]_0\
    );
\pop_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pop_cnt_reg[4]_i_1_n_0\,
      CO(3) => \pop_cnt_reg[8]_i_1_n_0\,
      CO(2) => \pop_cnt_reg[8]_i_1_n_1\,
      CO(1) => \pop_cnt_reg[8]_i_1_n_2\,
      CO(0) => \pop_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pop_cnt_reg[8]_i_1_n_4\,
      O(2) => \pop_cnt_reg[8]_i_1_n_5\,
      O(1) => \pop_cnt_reg[8]_i_1_n_6\,
      O(0) => \pop_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => pop_cnt_reg(11 downto 8)
    );
\pop_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \pop_cnt_reg[8]_i_1_n_6\,
      Q => pop_cnt_reg(9),
      R => \pop_cnt_reg[15]_0\
    );
pop_is_last0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pop_is_last0_carry_n_0,
      CO(2) => pop_is_last0_carry_n_1,
      CO(1) => pop_is_last0_carry_n_2,
      CO(0) => pop_is_last0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_pop_is_last0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pop_is_last0_carry_i_1_n_0,
      S(2) => pop_is_last0_carry_i_2_n_0,
      S(1) => pop_is_last0_carry_i_3_n_0,
      S(0) => pop_is_last0_carry_i_4_n_0
    );
\pop_is_last0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pop_is_last0_carry_n_0,
      CO(3 downto 2) => \NLW_pop_is_last0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => CO(0),
      CO(0) => \pop_is_last0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_pop_is_last0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \pop_is_last0_carry__0_i_1_n_0\,
      S(0) => \pop_is_last0_carry__0_i_2_n_0\
    );
\pop_is_last0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pop_is_last1(14),
      I1 => pop_cnt_reg(15),
      O => \pop_is_last0_carry__0_i_1_n_0\
    );
\pop_is_last0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pop_cnt_reg(12),
      I1 => pop_is_last1(11),
      I2 => pop_is_last1(13),
      I3 => pop_cnt_reg(14),
      I4 => pop_is_last1(12),
      I5 => pop_cnt_reg(13),
      O => \pop_is_last0_carry__0_i_2_n_0\
    );
pop_is_last0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pop_cnt_reg(9),
      I1 => pop_is_last1(8),
      I2 => pop_is_last1(10),
      I3 => pop_cnt_reg(11),
      I4 => pop_is_last1(9),
      I5 => pop_cnt_reg(10),
      O => pop_is_last0_carry_i_1_n_0
    );
pop_is_last0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pop_cnt_reg(6),
      I1 => pop_is_last1(5),
      I2 => pop_is_last1(7),
      I3 => pop_cnt_reg(8),
      I4 => pop_is_last1(6),
      I5 => pop_cnt_reg(7),
      O => pop_is_last0_carry_i_2_n_0
    );
pop_is_last0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pop_cnt_reg(3),
      I1 => pop_is_last1(2),
      I2 => pop_is_last1(4),
      I3 => pop_cnt_reg(5),
      I4 => pop_is_last1(3),
      I5 => pop_cnt_reg(4),
      O => pop_is_last0_carry_i_3_n_0
    );
pop_is_last0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900990090000"
    )
        port map (
      I0 => pop_is_last1(1),
      I1 => pop_cnt_reg(2),
      I2 => pop_is_last1(0),
      I3 => pop_cnt_reg(1),
      I4 => pop_cnt_reg(0),
      I5 => \pop_limit_hit0_carry__0_0\(0),
      O => pop_is_last0_carry_i_4_n_0
    );
pop_limit_hit0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pop_limit_hit0_carry_n_0,
      CO(2) => pop_limit_hit0_carry_n_1,
      CO(1) => pop_limit_hit0_carry_n_2,
      CO(0) => pop_limit_hit0_carry_n_3,
      CYINIT => '1',
      DI(3) => pop_limit_hit0_carry_i_1_n_0,
      DI(2) => pop_limit_hit0_carry_i_2_n_0,
      DI(1) => pop_limit_hit0_carry_i_3_n_0,
      DI(0) => pop_limit_hit0_carry_i_4_n_0,
      O(3 downto 0) => NLW_pop_limit_hit0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pop_limit_hit0_carry_i_5_n_0,
      S(2) => pop_limit_hit0_carry_i_6_n_0,
      S(1) => pop_limit_hit0_carry_i_7_n_0,
      S(0) => pop_limit_hit0_carry_i_8_n_0
    );
\pop_limit_hit0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pop_limit_hit0_carry_n_0,
      CO(3) => pop_limit_hit0,
      CO(2) => \pop_limit_hit0_carry__0_n_1\,
      CO(1) => \pop_limit_hit0_carry__0_n_2\,
      CO(0) => \pop_limit_hit0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \pop_limit_hit0_carry__0_i_1_n_0\,
      DI(2) => \pop_limit_hit0_carry__0_i_2_n_0\,
      DI(1) => \pop_limit_hit0_carry__0_i_3_n_0\,
      DI(0) => \pop_limit_hit0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_pop_limit_hit0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \pop_limit_hit0_carry__0_i_5_n_0\,
      S(2) => \pop_limit_hit0_carry__0_i_6_n_0\,
      S(1) => \pop_limit_hit0_carry__0_i_7_n_0\,
      S(0) => \pop_limit_hit0_carry__0_i_8_n_0\
    );
\pop_limit_hit0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pop_cnt_reg(14),
      I1 => \pop_limit_hit0_carry__0_0\(14),
      I2 => \pop_limit_hit0_carry__0_0\(15),
      I3 => pop_cnt_reg(15),
      O => \pop_limit_hit0_carry__0_i_1_n_0\
    );
\pop_limit_hit0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pop_cnt_reg(12),
      I1 => \pop_limit_hit0_carry__0_0\(12),
      I2 => \pop_limit_hit0_carry__0_0\(13),
      I3 => pop_cnt_reg(13),
      O => \pop_limit_hit0_carry__0_i_2_n_0\
    );
\pop_limit_hit0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pop_cnt_reg(10),
      I1 => \pop_limit_hit0_carry__0_0\(10),
      I2 => \pop_limit_hit0_carry__0_0\(11),
      I3 => pop_cnt_reg(11),
      O => \pop_limit_hit0_carry__0_i_3_n_0\
    );
\pop_limit_hit0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pop_cnt_reg(8),
      I1 => \pop_limit_hit0_carry__0_0\(8),
      I2 => \pop_limit_hit0_carry__0_0\(9),
      I3 => pop_cnt_reg(9),
      O => \pop_limit_hit0_carry__0_i_4_n_0\
    );
\pop_limit_hit0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pop_cnt_reg(14),
      I1 => \pop_limit_hit0_carry__0_0\(14),
      I2 => pop_cnt_reg(15),
      I3 => \pop_limit_hit0_carry__0_0\(15),
      O => \pop_limit_hit0_carry__0_i_5_n_0\
    );
\pop_limit_hit0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pop_cnt_reg(12),
      I1 => \pop_limit_hit0_carry__0_0\(12),
      I2 => pop_cnt_reg(13),
      I3 => \pop_limit_hit0_carry__0_0\(13),
      O => \pop_limit_hit0_carry__0_i_6_n_0\
    );
\pop_limit_hit0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pop_cnt_reg(10),
      I1 => \pop_limit_hit0_carry__0_0\(10),
      I2 => pop_cnt_reg(11),
      I3 => \pop_limit_hit0_carry__0_0\(11),
      O => \pop_limit_hit0_carry__0_i_7_n_0\
    );
\pop_limit_hit0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pop_cnt_reg(8),
      I1 => \pop_limit_hit0_carry__0_0\(8),
      I2 => pop_cnt_reg(9),
      I3 => \pop_limit_hit0_carry__0_0\(9),
      O => \pop_limit_hit0_carry__0_i_8_n_0\
    );
pop_limit_hit0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pop_cnt_reg(6),
      I1 => \pop_limit_hit0_carry__0_0\(6),
      I2 => \pop_limit_hit0_carry__0_0\(7),
      I3 => pop_cnt_reg(7),
      O => pop_limit_hit0_carry_i_1_n_0
    );
pop_limit_hit0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pop_cnt_reg(4),
      I1 => \pop_limit_hit0_carry__0_0\(4),
      I2 => \pop_limit_hit0_carry__0_0\(5),
      I3 => pop_cnt_reg(5),
      O => pop_limit_hit0_carry_i_2_n_0
    );
pop_limit_hit0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pop_cnt_reg(2),
      I1 => \pop_limit_hit0_carry__0_0\(2),
      I2 => \pop_limit_hit0_carry__0_0\(3),
      I3 => pop_cnt_reg(3),
      O => pop_limit_hit0_carry_i_3_n_0
    );
pop_limit_hit0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pop_cnt_reg(0),
      I1 => \pop_limit_hit0_carry__0_0\(0),
      I2 => \pop_limit_hit0_carry__0_0\(1),
      I3 => pop_cnt_reg(1),
      O => pop_limit_hit0_carry_i_4_n_0
    );
pop_limit_hit0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pop_cnt_reg(6),
      I1 => \pop_limit_hit0_carry__0_0\(6),
      I2 => pop_cnt_reg(7),
      I3 => \pop_limit_hit0_carry__0_0\(7),
      O => pop_limit_hit0_carry_i_5_n_0
    );
pop_limit_hit0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pop_cnt_reg(4),
      I1 => \pop_limit_hit0_carry__0_0\(4),
      I2 => pop_cnt_reg(5),
      I3 => \pop_limit_hit0_carry__0_0\(5),
      O => pop_limit_hit0_carry_i_6_n_0
    );
pop_limit_hit0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pop_cnt_reg(2),
      I1 => \pop_limit_hit0_carry__0_0\(2),
      I2 => pop_cnt_reg(3),
      I3 => \pop_limit_hit0_carry__0_0\(3),
      O => pop_limit_hit0_carry_i_7_n_0
    );
pop_limit_hit0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pop_cnt_reg(0),
      I1 => \pop_limit_hit0_carry__0_0\(0),
      I2 => pop_cnt_reg(1),
      I3 => \pop_limit_hit0_carry__0_0\(1),
      O => pop_limit_hit0_carry_i_8_n_0
    );
\rd_ptr_bin[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_ptr_bin_reg(0),
      O => \rd_ptr_bin[0]_i_2_n_0\
    );
\rd_ptr_bin_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg[0]_i_1_n_7\,
      Q => rd_ptr_bin_reg(0),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rd_ptr_bin_reg[0]_i_1_n_0\,
      CO(2) => \rd_ptr_bin_reg[0]_i_1_n_1\,
      CO(1) => \rd_ptr_bin_reg[0]_i_1_n_2\,
      CO(0) => \rd_ptr_bin_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \rd_ptr_bin_reg[0]_i_1_n_4\,
      O(2) => \rd_ptr_bin_reg[0]_i_1_n_5\,
      O(1) => \rd_ptr_bin_reg[0]_i_1_n_6\,
      O(0) => \rd_ptr_bin_reg[0]_i_1_n_7\,
      S(3 downto 1) => rd_ptr_bin_reg(3 downto 1),
      S(0) => \rd_ptr_bin[0]_i_2_n_0\
    );
\rd_ptr_bin_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg[8]_i_1_n_5\,
      Q => rd_ptr_bin_reg(10),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg[8]_i_1_n_4\,
      Q => rd_ptr_bin_reg(11),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg[12]_i_1_n_7\,
      Q => rd_ptr_bin_reg(12),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_ptr_bin_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_rd_ptr_bin_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_rd_ptr_bin_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \rd_ptr_bin_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => rd_ptr_bin_reg(12)
    );
\rd_ptr_bin_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg[0]_i_1_n_6\,
      Q => rd_ptr_bin_reg(1),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg[0]_i_1_n_5\,
      Q => rd_ptr_bin_reg(2),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg[0]_i_1_n_4\,
      Q => rd_ptr_bin_reg(3),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg[4]_i_1_n_7\,
      Q => rd_ptr_bin_reg(4),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_ptr_bin_reg[0]_i_1_n_0\,
      CO(3) => \rd_ptr_bin_reg[4]_i_1_n_0\,
      CO(2) => \rd_ptr_bin_reg[4]_i_1_n_1\,
      CO(1) => \rd_ptr_bin_reg[4]_i_1_n_2\,
      CO(0) => \rd_ptr_bin_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rd_ptr_bin_reg[4]_i_1_n_4\,
      O(2) => \rd_ptr_bin_reg[4]_i_1_n_5\,
      O(1) => \rd_ptr_bin_reg[4]_i_1_n_6\,
      O(0) => \rd_ptr_bin_reg[4]_i_1_n_7\,
      S(3 downto 0) => rd_ptr_bin_reg(7 downto 4)
    );
\rd_ptr_bin_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg[4]_i_1_n_6\,
      Q => rd_ptr_bin_reg(5),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg[4]_i_1_n_5\,
      Q => rd_ptr_bin_reg(6),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg[4]_i_1_n_4\,
      Q => rd_ptr_bin_reg(7),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg[8]_i_1_n_7\,
      Q => rd_ptr_bin_reg(8),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_ptr_bin_reg[4]_i_1_n_0\,
      CO(3) => \rd_ptr_bin_reg[8]_i_1_n_0\,
      CO(2) => \rd_ptr_bin_reg[8]_i_1_n_1\,
      CO(1) => \rd_ptr_bin_reg[8]_i_1_n_2\,
      CO(0) => \rd_ptr_bin_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rd_ptr_bin_reg[8]_i_1_n_4\,
      O(2) => \rd_ptr_bin_reg[8]_i_1_n_5\,
      O(1) => \rd_ptr_bin_reg[8]_i_1_n_6\,
      O(0) => \rd_ptr_bin_reg[8]_i_1_n_7\,
      S(3 downto 0) => rd_ptr_bin_reg(11 downto 8)
    );
\rd_ptr_bin_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg[8]_i_1_n_6\,
      Q => rd_ptr_bin_reg(9),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg_rep[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_rep[0]_i_1_n_0\,
      Q => \rd_ptr_bin_reg_rep__0\(0),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg_rep[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg_rep[11]_i_1_n_6\,
      Q => \rd_ptr_bin_reg_rep__0\(10),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg_rep[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg_rep[11]_i_1_n_5\,
      Q => \rd_ptr_bin_reg_rep__0\(11),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg_rep[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_ptr_bin_reg_rep[8]_i_1_n_0\,
      CO(3 downto 2) => \NLW_rd_ptr_bin_reg_rep[11]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rd_ptr_bin_reg_rep[11]_i_1_n_2\,
      CO(0) => \rd_ptr_bin_reg_rep[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_rd_ptr_bin_reg_rep[11]_i_1_O_UNCONNECTED\(3),
      O(2) => \rd_ptr_bin_reg_rep[11]_i_1_n_5\,
      O(1) => \rd_ptr_bin_reg_rep[11]_i_1_n_6\,
      O(0) => \rd_ptr_bin_reg_rep[11]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => rd_ptr_bin_reg(11 downto 9)
    );
\rd_ptr_bin_reg_rep[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg_rep[4]_i_1_n_7\,
      Q => \rd_ptr_bin_reg_rep__0\(1),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg_rep[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg_rep[4]_i_1_n_6\,
      Q => \rd_ptr_bin_reg_rep__0\(2),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg_rep[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg_rep[4]_i_1_n_5\,
      Q => \rd_ptr_bin_reg_rep__0\(3),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg_rep[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg_rep[4]_i_1_n_4\,
      Q => \rd_ptr_bin_reg_rep__0\(4),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg_rep[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rd_ptr_bin_reg_rep[4]_i_1_n_0\,
      CO(2) => \rd_ptr_bin_reg_rep[4]_i_1_n_1\,
      CO(1) => \rd_ptr_bin_reg_rep[4]_i_1_n_2\,
      CO(0) => \rd_ptr_bin_reg_rep[4]_i_1_n_3\,
      CYINIT => rd_ptr_bin_reg(0),
      DI(3 downto 0) => B"0000",
      O(3) => \rd_ptr_bin_reg_rep[4]_i_1_n_4\,
      O(2) => \rd_ptr_bin_reg_rep[4]_i_1_n_5\,
      O(1) => \rd_ptr_bin_reg_rep[4]_i_1_n_6\,
      O(0) => \rd_ptr_bin_reg_rep[4]_i_1_n_7\,
      S(3 downto 0) => rd_ptr_bin_reg(4 downto 1)
    );
\rd_ptr_bin_reg_rep[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg_rep[8]_i_1_n_7\,
      Q => \rd_ptr_bin_reg_rep__0\(5),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg_rep[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg_rep[8]_i_1_n_6\,
      Q => \rd_ptr_bin_reg_rep__0\(6),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg_rep[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg_rep[8]_i_1_n_5\,
      Q => \rd_ptr_bin_reg_rep__0\(7),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg_rep[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg_rep[8]_i_1_n_4\,
      Q => \rd_ptr_bin_reg_rep__0\(8),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_reg_rep[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_ptr_bin_reg_rep[4]_i_1_n_0\,
      CO(3) => \rd_ptr_bin_reg_rep[8]_i_1_n_0\,
      CO(2) => \rd_ptr_bin_reg_rep[8]_i_1_n_1\,
      CO(1) => \rd_ptr_bin_reg_rep[8]_i_1_n_2\,
      CO(0) => \rd_ptr_bin_reg_rep[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rd_ptr_bin_reg_rep[8]_i_1_n_4\,
      O(2) => \rd_ptr_bin_reg_rep[8]_i_1_n_5\,
      O(1) => \rd_ptr_bin_reg_rep[8]_i_1_n_6\,
      O(0) => \rd_ptr_bin_reg_rep[8]_i_1_n_7\,
      S(3 downto 0) => rd_ptr_bin_reg(8 downto 5)
    );
\rd_ptr_bin_reg_rep[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => fifo_mem_reg_7_i_2_n_0,
      D => \rd_ptr_bin_reg_rep[11]_i_1_n_7\,
      Q => \rd_ptr_bin_reg_rep__0\(9),
      R => \gray_s1_reg[0]\(0)
    );
\rd_ptr_bin_rep[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_ptr_bin_reg(0),
      O => \rd_ptr_bin_rep[0]_i_1_n_0\
    );
\seq_cnt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => seq_cnt_reg(0),
      O => \seq_cnt[0]_i_3_n_0\
    );
\seq_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[0]_i_2_n_7\,
      Q => seq_cnt_reg(0),
      R => SR(0)
    );
\seq_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \seq_cnt_reg[0]_i_2_n_0\,
      CO(2) => \seq_cnt_reg[0]_i_2_n_1\,
      CO(1) => \seq_cnt_reg[0]_i_2_n_2\,
      CO(0) => \seq_cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \seq_cnt_reg[0]_i_2_n_4\,
      O(2) => \seq_cnt_reg[0]_i_2_n_5\,
      O(1) => \seq_cnt_reg[0]_i_2_n_6\,
      O(0) => \seq_cnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => seq_cnt_reg(3 downto 1),
      S(0) => \seq_cnt[0]_i_3_n_0\
    );
\seq_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[8]_i_1_n_5\,
      Q => seq_cnt_reg(10),
      R => SR(0)
    );
\seq_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[8]_i_1_n_4\,
      Q => seq_cnt_reg(11),
      R => SR(0)
    );
\seq_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[12]_i_1_n_7\,
      Q => seq_cnt_reg(12),
      R => SR(0)
    );
\seq_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \seq_cnt_reg[8]_i_1_n_0\,
      CO(3) => \seq_cnt_reg[12]_i_1_n_0\,
      CO(2) => \seq_cnt_reg[12]_i_1_n_1\,
      CO(1) => \seq_cnt_reg[12]_i_1_n_2\,
      CO(0) => \seq_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \seq_cnt_reg[12]_i_1_n_4\,
      O(2) => \seq_cnt_reg[12]_i_1_n_5\,
      O(1) => \seq_cnt_reg[12]_i_1_n_6\,
      O(0) => \seq_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => seq_cnt_reg(15 downto 12)
    );
\seq_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[12]_i_1_n_6\,
      Q => seq_cnt_reg(13),
      R => SR(0)
    );
\seq_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[12]_i_1_n_5\,
      Q => seq_cnt_reg(14),
      R => SR(0)
    );
\seq_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[12]_i_1_n_4\,
      Q => seq_cnt_reg(15),
      R => SR(0)
    );
\seq_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[16]_i_1_n_7\,
      Q => seq_cnt_reg(16),
      R => SR(0)
    );
\seq_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \seq_cnt_reg[12]_i_1_n_0\,
      CO(3) => \seq_cnt_reg[16]_i_1_n_0\,
      CO(2) => \seq_cnt_reg[16]_i_1_n_1\,
      CO(1) => \seq_cnt_reg[16]_i_1_n_2\,
      CO(0) => \seq_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \seq_cnt_reg[16]_i_1_n_4\,
      O(2) => \seq_cnt_reg[16]_i_1_n_5\,
      O(1) => \seq_cnt_reg[16]_i_1_n_6\,
      O(0) => \seq_cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => seq_cnt_reg(19 downto 16)
    );
\seq_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[16]_i_1_n_6\,
      Q => seq_cnt_reg(17),
      R => SR(0)
    );
\seq_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[16]_i_1_n_5\,
      Q => seq_cnt_reg(18),
      R => SR(0)
    );
\seq_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[16]_i_1_n_4\,
      Q => seq_cnt_reg(19),
      R => SR(0)
    );
\seq_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[0]_i_2_n_6\,
      Q => seq_cnt_reg(1),
      R => SR(0)
    );
\seq_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[20]_i_1_n_7\,
      Q => seq_cnt_reg(20),
      R => SR(0)
    );
\seq_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \seq_cnt_reg[16]_i_1_n_0\,
      CO(3) => \NLW_seq_cnt_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \seq_cnt_reg[20]_i_1_n_1\,
      CO(1) => \seq_cnt_reg[20]_i_1_n_2\,
      CO(0) => \seq_cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \seq_cnt_reg[20]_i_1_n_4\,
      O(2) => \seq_cnt_reg[20]_i_1_n_5\,
      O(1) => \seq_cnt_reg[20]_i_1_n_6\,
      O(0) => \seq_cnt_reg[20]_i_1_n_7\,
      S(3 downto 0) => seq_cnt_reg(23 downto 20)
    );
\seq_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[20]_i_1_n_6\,
      Q => seq_cnt_reg(21),
      R => SR(0)
    );
\seq_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[20]_i_1_n_5\,
      Q => seq_cnt_reg(22),
      R => SR(0)
    );
\seq_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[20]_i_1_n_4\,
      Q => seq_cnt_reg(23),
      R => SR(0)
    );
\seq_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[0]_i_2_n_5\,
      Q => seq_cnt_reg(2),
      R => SR(0)
    );
\seq_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[0]_i_2_n_4\,
      Q => seq_cnt_reg(3),
      R => SR(0)
    );
\seq_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[4]_i_1_n_7\,
      Q => seq_cnt_reg(4),
      R => SR(0)
    );
\seq_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \seq_cnt_reg[0]_i_2_n_0\,
      CO(3) => \seq_cnt_reg[4]_i_1_n_0\,
      CO(2) => \seq_cnt_reg[4]_i_1_n_1\,
      CO(1) => \seq_cnt_reg[4]_i_1_n_2\,
      CO(0) => \seq_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \seq_cnt_reg[4]_i_1_n_4\,
      O(2) => \seq_cnt_reg[4]_i_1_n_5\,
      O(1) => \seq_cnt_reg[4]_i_1_n_6\,
      O(0) => \seq_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => seq_cnt_reg(7 downto 4)
    );
\seq_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[4]_i_1_n_6\,
      Q => seq_cnt_reg(5),
      R => SR(0)
    );
\seq_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[4]_i_1_n_5\,
      Q => seq_cnt_reg(6),
      R => SR(0)
    );
\seq_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[4]_i_1_n_4\,
      Q => seq_cnt_reg(7),
      R => SR(0)
    );
\seq_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[8]_i_1_n_7\,
      Q => seq_cnt_reg(8),
      R => SR(0)
    );
\seq_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \seq_cnt_reg[4]_i_1_n_0\,
      CO(3) => \seq_cnt_reg[8]_i_1_n_0\,
      CO(2) => \seq_cnt_reg[8]_i_1_n_1\,
      CO(1) => \seq_cnt_reg[8]_i_1_n_2\,
      CO(0) => \seq_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \seq_cnt_reg[8]_i_1_n_4\,
      O(2) => \seq_cnt_reg[8]_i_1_n_5\,
      O(1) => \seq_cnt_reg[8]_i_1_n_6\,
      O(0) => \seq_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => seq_cnt_reg(11 downto 8)
    );
\seq_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \seq_cnt_reg[8]_i_1_n_6\,
      Q => seq_cnt_reg(9),
      R => SR(0)
    );
skip_cnt1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => skip_cnt1_carry_n_0,
      CO(2) => skip_cnt1_carry_n_1,
      CO(1) => skip_cnt1_carry_n_2,
      CO(0) => skip_cnt1_carry_n_3,
      CYINIT => skip_cnt(0),
      DI(3 downto 0) => skip_cnt(4 downto 1),
      O(3 downto 0) => data1(4 downto 1),
      S(3) => skip_cnt1_carry_i_1_n_0,
      S(2) => skip_cnt1_carry_i_2_n_0,
      S(1) => skip_cnt1_carry_i_3_n_0,
      S(0) => skip_cnt1_carry_i_4_n_0
    );
\skip_cnt1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => skip_cnt1_carry_n_0,
      CO(3) => \skip_cnt1_carry__0_n_0\,
      CO(2) => \skip_cnt1_carry__0_n_1\,
      CO(1) => \skip_cnt1_carry__0_n_2\,
      CO(0) => \skip_cnt1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => skip_cnt(8 downto 5),
      O(3 downto 0) => data1(8 downto 5),
      S(3) => \skip_cnt1_carry__0_i_1_n_0\,
      S(2) => \skip_cnt1_carry__0_i_2_n_0\,
      S(1) => \skip_cnt1_carry__0_i_3_n_0\,
      S(0) => \skip_cnt1_carry__0_i_4_n_0\
    );
\skip_cnt1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(8),
      O => \skip_cnt1_carry__0_i_1_n_0\
    );
\skip_cnt1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(7),
      O => \skip_cnt1_carry__0_i_2_n_0\
    );
\skip_cnt1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(6),
      O => \skip_cnt1_carry__0_i_3_n_0\
    );
\skip_cnt1_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(5),
      O => \skip_cnt1_carry__0_i_4_n_0\
    );
\skip_cnt1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \skip_cnt1_carry__0_n_0\,
      CO(3) => \skip_cnt1_carry__1_n_0\,
      CO(2) => \skip_cnt1_carry__1_n_1\,
      CO(1) => \skip_cnt1_carry__1_n_2\,
      CO(0) => \skip_cnt1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => skip_cnt(12 downto 9),
      O(3 downto 0) => data1(12 downto 9),
      S(3) => \skip_cnt1_carry__1_i_1_n_0\,
      S(2) => \skip_cnt1_carry__1_i_2_n_0\,
      S(1) => \skip_cnt1_carry__1_i_3_n_0\,
      S(0) => \skip_cnt1_carry__1_i_4_n_0\
    );
\skip_cnt1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(12),
      O => \skip_cnt1_carry__1_i_1_n_0\
    );
\skip_cnt1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(11),
      O => \skip_cnt1_carry__1_i_2_n_0\
    );
\skip_cnt1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(10),
      O => \skip_cnt1_carry__1_i_3_n_0\
    );
\skip_cnt1_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(9),
      O => \skip_cnt1_carry__1_i_4_n_0\
    );
\skip_cnt1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \skip_cnt1_carry__1_n_0\,
      CO(3) => \skip_cnt1_carry__2_n_0\,
      CO(2) => \skip_cnt1_carry__2_n_1\,
      CO(1) => \skip_cnt1_carry__2_n_2\,
      CO(0) => \skip_cnt1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => skip_cnt(16 downto 13),
      O(3 downto 0) => data1(16 downto 13),
      S(3) => \skip_cnt1_carry__2_i_1_n_0\,
      S(2) => \skip_cnt1_carry__2_i_2_n_0\,
      S(1) => \skip_cnt1_carry__2_i_3_n_0\,
      S(0) => \skip_cnt1_carry__2_i_4_n_0\
    );
\skip_cnt1_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(16),
      O => \skip_cnt1_carry__2_i_1_n_0\
    );
\skip_cnt1_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(15),
      O => \skip_cnt1_carry__2_i_2_n_0\
    );
\skip_cnt1_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(14),
      O => \skip_cnt1_carry__2_i_3_n_0\
    );
\skip_cnt1_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(13),
      O => \skip_cnt1_carry__2_i_4_n_0\
    );
\skip_cnt1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \skip_cnt1_carry__2_n_0\,
      CO(3) => \skip_cnt1_carry__3_n_0\,
      CO(2) => \skip_cnt1_carry__3_n_1\,
      CO(1) => \skip_cnt1_carry__3_n_2\,
      CO(0) => \skip_cnt1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => skip_cnt(20 downto 17),
      O(3 downto 0) => data1(20 downto 17),
      S(3) => \skip_cnt1_carry__3_i_1_n_0\,
      S(2) => \skip_cnt1_carry__3_i_2_n_0\,
      S(1) => \skip_cnt1_carry__3_i_3_n_0\,
      S(0) => \skip_cnt1_carry__3_i_4_n_0\
    );
\skip_cnt1_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(20),
      O => \skip_cnt1_carry__3_i_1_n_0\
    );
\skip_cnt1_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(19),
      O => \skip_cnt1_carry__3_i_2_n_0\
    );
\skip_cnt1_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(18),
      O => \skip_cnt1_carry__3_i_3_n_0\
    );
\skip_cnt1_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(17),
      O => \skip_cnt1_carry__3_i_4_n_0\
    );
\skip_cnt1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \skip_cnt1_carry__3_n_0\,
      CO(3) => \skip_cnt1_carry__4_n_0\,
      CO(2) => \skip_cnt1_carry__4_n_1\,
      CO(1) => \skip_cnt1_carry__4_n_2\,
      CO(0) => \skip_cnt1_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => skip_cnt(24 downto 21),
      O(3 downto 0) => data1(24 downto 21),
      S(3) => \skip_cnt1_carry__4_i_1_n_0\,
      S(2) => \skip_cnt1_carry__4_i_2_n_0\,
      S(1) => \skip_cnt1_carry__4_i_3_n_0\,
      S(0) => \skip_cnt1_carry__4_i_4_n_0\
    );
\skip_cnt1_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(24),
      O => \skip_cnt1_carry__4_i_1_n_0\
    );
\skip_cnt1_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(23),
      O => \skip_cnt1_carry__4_i_2_n_0\
    );
\skip_cnt1_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(22),
      O => \skip_cnt1_carry__4_i_3_n_0\
    );
\skip_cnt1_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(21),
      O => \skip_cnt1_carry__4_i_4_n_0\
    );
\skip_cnt1_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \skip_cnt1_carry__4_n_0\,
      CO(3) => \skip_cnt1_carry__5_n_0\,
      CO(2) => \skip_cnt1_carry__5_n_1\,
      CO(1) => \skip_cnt1_carry__5_n_2\,
      CO(0) => \skip_cnt1_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => skip_cnt(28 downto 25),
      O(3 downto 0) => data1(28 downto 25),
      S(3) => \skip_cnt1_carry__5_i_1_n_0\,
      S(2) => \skip_cnt1_carry__5_i_2_n_0\,
      S(1) => \skip_cnt1_carry__5_i_3_n_0\,
      S(0) => \skip_cnt1_carry__5_i_4_n_0\
    );
\skip_cnt1_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(28),
      O => \skip_cnt1_carry__5_i_1_n_0\
    );
\skip_cnt1_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(27),
      O => \skip_cnt1_carry__5_i_2_n_0\
    );
\skip_cnt1_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(26),
      O => \skip_cnt1_carry__5_i_3_n_0\
    );
\skip_cnt1_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(25),
      O => \skip_cnt1_carry__5_i_4_n_0\
    );
\skip_cnt1_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \skip_cnt1_carry__5_n_0\,
      CO(3 downto 2) => \NLW_skip_cnt1_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \skip_cnt1_carry__6_n_2\,
      CO(0) => \skip_cnt1_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => skip_cnt(30 downto 29),
      O(3) => \NLW_skip_cnt1_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data1(31 downto 29),
      S(3) => '0',
      S(2) => \skip_cnt1_carry__6_i_1_n_0\,
      S(1) => \skip_cnt1_carry__6_i_2_n_0\,
      S(0) => \skip_cnt1_carry__6_i_3_n_0\
    );
\skip_cnt1_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(31),
      O => \skip_cnt1_carry__6_i_1_n_0\
    );
\skip_cnt1_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(30),
      O => \skip_cnt1_carry__6_i_2_n_0\
    );
\skip_cnt1_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(29),
      O => \skip_cnt1_carry__6_i_3_n_0\
    );
skip_cnt1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(4),
      O => skip_cnt1_carry_i_1_n_0
    );
skip_cnt1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(3),
      O => skip_cnt1_carry_i_2_n_0
    );
skip_cnt1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(2),
      O => skip_cnt1_carry_i_3_n_0
    );
skip_cnt1_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => skip_cnt(1),
      O => skip_cnt1_carry_i_4_n_0
    );
\skip_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => skip_limit(0),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => skip_cnt(0),
      O => \skip_cnt[0]_i_1_n_0\
    );
\skip_cnt[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(10),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(10),
      O => \skip_cnt[10]_i_1_n_0\
    );
\skip_cnt[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(11),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(11),
      O => \skip_cnt[11]_i_1_n_0\
    );
\skip_cnt[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(12),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(12),
      O => \skip_cnt[12]_i_1_n_0\
    );
\skip_cnt[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(13),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(13),
      O => \skip_cnt[13]_i_1_n_0\
    );
\skip_cnt[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(14),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(14),
      O => \skip_cnt[14]_i_1_n_0\
    );
\skip_cnt[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(15),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(15),
      O => \skip_cnt[15]_i_1_n_0\
    );
\skip_cnt[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(16),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(16),
      O => \skip_cnt[16]_i_1_n_0\
    );
\skip_cnt[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(17),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(17),
      O => \skip_cnt[17]_i_1_n_0\
    );
\skip_cnt[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(18),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(18),
      O => \skip_cnt[18]_i_1_n_0\
    );
\skip_cnt[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(19),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(19),
      O => \skip_cnt[19]_i_1_n_0\
    );
\skip_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(1),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(1),
      O => \skip_cnt[1]_i_1_n_0\
    );
\skip_cnt[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(20),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(20),
      O => \skip_cnt[20]_i_1_n_0\
    );
\skip_cnt[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(21),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(21),
      O => \skip_cnt[21]_i_1_n_0\
    );
\skip_cnt[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(22),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(22),
      O => \skip_cnt[22]_i_1_n_0\
    );
\skip_cnt[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(23),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(23),
      O => \skip_cnt[23]_i_1_n_0\
    );
\skip_cnt[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(24),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(24),
      O => \skip_cnt[24]_i_1_n_0\
    );
\skip_cnt[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(25),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(25),
      O => \skip_cnt[25]_i_1_n_0\
    );
\skip_cnt[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(26),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(26),
      O => \skip_cnt[26]_i_1_n_0\
    );
\skip_cnt[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(27),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(27),
      O => \skip_cnt[27]_i_1_n_0\
    );
\skip_cnt[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(28),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(28),
      O => \skip_cnt[28]_i_1_n_0\
    );
\skip_cnt[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(29),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(29),
      O => \skip_cnt[29]_i_1_n_0\
    );
\skip_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(2),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(2),
      O => \skip_cnt[2]_i_1_n_0\
    );
\skip_cnt[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(30),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(30),
      O => \skip_cnt[30]_i_1_n_0\
    );
\skip_cnt[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^ts_en_d\,
      I1 => \out\(0),
      I2 => \skip_cnt_reg[31]_0\(0),
      O => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => edge_d2,
      I1 => \out\(0),
      O => p_5_in
    );
\skip_cnt[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(31),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(31),
      O => \skip_cnt[31]_i_3_n_0\
    );
\skip_cnt[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \skip_cnt[31]_i_5_n_0\,
      I1 => \skip_cnt[31]_i_6_n_0\,
      I2 => \skip_cnt[31]_i_7_n_0\,
      I3 => \skip_cnt[31]_i_8_n_0\,
      I4 => \skip_cnt[31]_i_9_n_0\,
      O => \skip_cnt[31]_i_4_n_0\
    );
\skip_cnt[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => skip_cnt(9),
      I1 => skip_cnt(8),
      I2 => skip_cnt(11),
      I3 => skip_cnt(10),
      O => \skip_cnt[31]_i_5_n_0\
    );
\skip_cnt[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => skip_cnt(15),
      I1 => skip_cnt(14),
      I2 => skip_cnt(13),
      I3 => skip_cnt(12),
      O => \skip_cnt[31]_i_6_n_0\
    );
\skip_cnt[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => skip_cnt(1),
      I1 => skip_cnt(0),
      I2 => skip_cnt(3),
      I3 => skip_cnt(2),
      O => \skip_cnt[31]_i_7_n_0\
    );
\skip_cnt[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => skip_cnt(7),
      I1 => skip_cnt(6),
      I2 => skip_cnt(5),
      I3 => skip_cnt(4),
      O => \skip_cnt[31]_i_8_n_0\
    );
\skip_cnt[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => fifo_mem_reg_7_i_7_n_0,
      I1 => fifo_mem_reg_7_i_6_n_0,
      I2 => fifo_mem_reg_7_i_8_n_0,
      I3 => fifo_mem_reg_7_i_9_n_0,
      O => \skip_cnt[31]_i_9_n_0\
    );
\skip_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(3),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(3),
      O => \skip_cnt[3]_i_1_n_0\
    );
\skip_cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(4),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(4),
      O => \skip_cnt[4]_i_1_n_0\
    );
\skip_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(5),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(5),
      O => \skip_cnt[5]_i_1_n_0\
    );
\skip_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(6),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(6),
      O => \skip_cnt[6]_i_1_n_0\
    );
\skip_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(7),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(7),
      O => \skip_cnt[7]_i_1_n_0\
    );
\skip_cnt[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(8),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(8),
      O => \skip_cnt[8]_i_1_n_0\
    );
\skip_cnt[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => skip_limit(9),
      I1 => \skip_cnt[31]_i_4_n_0\,
      I2 => data1(9),
      O => \skip_cnt[9]_i_1_n_0\
    );
\skip_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[0]_i_1_n_0\,
      Q => skip_cnt(0),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[10]_i_1_n_0\,
      Q => skip_cnt(10),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[11]_i_1_n_0\,
      Q => skip_cnt(11),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[12]_i_1_n_0\,
      Q => skip_cnt(12),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[13]_i_1_n_0\,
      Q => skip_cnt(13),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[14]_i_1_n_0\,
      Q => skip_cnt(14),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[15]_i_1_n_0\,
      Q => skip_cnt(15),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[16]_i_1_n_0\,
      Q => skip_cnt(16),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[17]_i_1_n_0\,
      Q => skip_cnt(17),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[18]_i_1_n_0\,
      Q => skip_cnt(18),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[19]_i_1_n_0\,
      Q => skip_cnt(19),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[1]_i_1_n_0\,
      Q => skip_cnt(1),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[20]_i_1_n_0\,
      Q => skip_cnt(20),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[21]_i_1_n_0\,
      Q => skip_cnt(21),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[22]_i_1_n_0\,
      Q => skip_cnt(22),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[23]_i_1_n_0\,
      Q => skip_cnt(23),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[24]_i_1_n_0\,
      Q => skip_cnt(24),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[25]_i_1_n_0\,
      Q => skip_cnt(25),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[26]_i_1_n_0\,
      Q => skip_cnt(26),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[27]_i_1_n_0\,
      Q => skip_cnt(27),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[28]_i_1_n_0\,
      Q => skip_cnt(28),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[29]_i_1_n_0\,
      Q => skip_cnt(29),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[2]_i_1_n_0\,
      Q => skip_cnt(2),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[30]_i_1_n_0\,
      Q => skip_cnt(30),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[31]_i_3_n_0\,
      Q => skip_cnt(31),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[3]_i_1_n_0\,
      Q => skip_cnt(3),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[4]_i_1_n_0\,
      Q => skip_cnt(4),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[5]_i_1_n_0\,
      Q => skip_cnt(5),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[6]_i_1_n_0\,
      Q => skip_cnt(6),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[7]_i_1_n_0\,
      Q => skip_cnt(7),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[8]_i_1_n_0\,
      Q => skip_cnt(8),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_5_in,
      D => \skip_cnt[9]_i_1_n_0\,
      Q => skip_cnt(9),
      R => \skip_cnt[31]_i_1_n_0\
    );
\skip_limit_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(0),
      Q => skip_limit(0),
      R => SR(0)
    );
\skip_limit_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(10),
      Q => skip_limit(10),
      R => SR(0)
    );
\skip_limit_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(11),
      Q => skip_limit(11),
      R => SR(0)
    );
\skip_limit_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(12),
      Q => skip_limit(12),
      R => SR(0)
    );
\skip_limit_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(13),
      Q => skip_limit(13),
      R => SR(0)
    );
\skip_limit_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(14),
      Q => skip_limit(14),
      R => SR(0)
    );
\skip_limit_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(15),
      Q => skip_limit(15),
      R => SR(0)
    );
\skip_limit_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(16),
      Q => skip_limit(16),
      R => SR(0)
    );
\skip_limit_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(17),
      Q => skip_limit(17),
      R => SR(0)
    );
\skip_limit_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(18),
      Q => skip_limit(18),
      R => SR(0)
    );
\skip_limit_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(19),
      Q => skip_limit(19),
      R => SR(0)
    );
\skip_limit_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(1),
      Q => skip_limit(1),
      R => SR(0)
    );
\skip_limit_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(20),
      Q => skip_limit(20),
      R => SR(0)
    );
\skip_limit_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(21),
      Q => skip_limit(21),
      R => SR(0)
    );
\skip_limit_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(22),
      Q => skip_limit(22),
      R => SR(0)
    );
\skip_limit_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(23),
      Q => skip_limit(23),
      R => SR(0)
    );
\skip_limit_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(24),
      Q => skip_limit(24),
      R => SR(0)
    );
\skip_limit_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(25),
      Q => skip_limit(25),
      R => SR(0)
    );
\skip_limit_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(26),
      Q => skip_limit(26),
      R => SR(0)
    );
\skip_limit_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(27),
      Q => skip_limit(27),
      R => SR(0)
    );
\skip_limit_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(28),
      Q => skip_limit(28),
      R => SR(0)
    );
\skip_limit_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(29),
      Q => skip_limit(29),
      R => SR(0)
    );
\skip_limit_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(2),
      Q => skip_limit(2),
      R => SR(0)
    );
\skip_limit_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(30),
      Q => skip_limit(30),
      R => SR(0)
    );
\skip_limit_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(31),
      Q => skip_limit(31),
      R => SR(0)
    );
\skip_limit_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(3),
      Q => skip_limit(3),
      R => SR(0)
    );
\skip_limit_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(4),
      Q => skip_limit(4),
      R => SR(0)
    );
\skip_limit_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(5),
      Q => skip_limit(5),
      R => SR(0)
    );
\skip_limit_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(6),
      Q => skip_limit(6),
      R => SR(0)
    );
\skip_limit_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(7),
      Q => skip_limit(7),
      R => SR(0)
    );
\skip_limit_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(8),
      Q => skip_limit(8),
      R => SR(0)
    );
\skip_limit_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(9),
      Q => skip_limit(9),
      R => SR(0)
    );
\ts_count_fs[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ts_count_fs_reg(0),
      O => \ts_count_fs[0]_i_2_n_0\
    );
\ts_count_fs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[0]_i_1_n_7\,
      Q => ts_count_fs_reg(0),
      R => SR(0)
    );
\ts_count_fs_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ts_count_fs_reg[0]_i_1_n_0\,
      CO(2) => \ts_count_fs_reg[0]_i_1_n_1\,
      CO(1) => \ts_count_fs_reg[0]_i_1_n_2\,
      CO(0) => \ts_count_fs_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ts_count_fs_reg[0]_i_1_n_4\,
      O(2) => \ts_count_fs_reg[0]_i_1_n_5\,
      O(1) => \ts_count_fs_reg[0]_i_1_n_6\,
      O(0) => \ts_count_fs_reg[0]_i_1_n_7\,
      S(3 downto 1) => ts_count_fs_reg(3 downto 1),
      S(0) => \ts_count_fs[0]_i_2_n_0\
    );
\ts_count_fs_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[8]_i_1_n_5\,
      Q => ts_count_fs_reg(10),
      R => SR(0)
    );
\ts_count_fs_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[8]_i_1_n_4\,
      Q => ts_count_fs_reg(11),
      R => SR(0)
    );
\ts_count_fs_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[12]_i_1_n_7\,
      Q => ts_count_fs_reg(12),
      R => SR(0)
    );
\ts_count_fs_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ts_count_fs_reg[8]_i_1_n_0\,
      CO(3) => \ts_count_fs_reg[12]_i_1_n_0\,
      CO(2) => \ts_count_fs_reg[12]_i_1_n_1\,
      CO(1) => \ts_count_fs_reg[12]_i_1_n_2\,
      CO(0) => \ts_count_fs_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ts_count_fs_reg[12]_i_1_n_4\,
      O(2) => \ts_count_fs_reg[12]_i_1_n_5\,
      O(1) => \ts_count_fs_reg[12]_i_1_n_6\,
      O(0) => \ts_count_fs_reg[12]_i_1_n_7\,
      S(3 downto 0) => ts_count_fs_reg(15 downto 12)
    );
\ts_count_fs_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[12]_i_1_n_6\,
      Q => ts_count_fs_reg(13),
      R => SR(0)
    );
\ts_count_fs_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[12]_i_1_n_5\,
      Q => ts_count_fs_reg(14),
      R => SR(0)
    );
\ts_count_fs_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[12]_i_1_n_4\,
      Q => ts_count_fs_reg(15),
      R => SR(0)
    );
\ts_count_fs_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[16]_i_1_n_7\,
      Q => ts_count_fs_reg(16),
      R => SR(0)
    );
\ts_count_fs_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ts_count_fs_reg[12]_i_1_n_0\,
      CO(3) => \ts_count_fs_reg[16]_i_1_n_0\,
      CO(2) => \ts_count_fs_reg[16]_i_1_n_1\,
      CO(1) => \ts_count_fs_reg[16]_i_1_n_2\,
      CO(0) => \ts_count_fs_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ts_count_fs_reg[16]_i_1_n_4\,
      O(2) => \ts_count_fs_reg[16]_i_1_n_5\,
      O(1) => \ts_count_fs_reg[16]_i_1_n_6\,
      O(0) => \ts_count_fs_reg[16]_i_1_n_7\,
      S(3 downto 0) => ts_count_fs_reg(19 downto 16)
    );
\ts_count_fs_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[16]_i_1_n_6\,
      Q => ts_count_fs_reg(17),
      R => SR(0)
    );
\ts_count_fs_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[16]_i_1_n_5\,
      Q => ts_count_fs_reg(18),
      R => SR(0)
    );
\ts_count_fs_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[16]_i_1_n_4\,
      Q => ts_count_fs_reg(19),
      R => SR(0)
    );
\ts_count_fs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[0]_i_1_n_6\,
      Q => ts_count_fs_reg(1),
      R => SR(0)
    );
\ts_count_fs_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[20]_i_1_n_7\,
      Q => ts_count_fs_reg(20),
      R => SR(0)
    );
\ts_count_fs_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ts_count_fs_reg[16]_i_1_n_0\,
      CO(3) => \ts_count_fs_reg[20]_i_1_n_0\,
      CO(2) => \ts_count_fs_reg[20]_i_1_n_1\,
      CO(1) => \ts_count_fs_reg[20]_i_1_n_2\,
      CO(0) => \ts_count_fs_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ts_count_fs_reg[20]_i_1_n_4\,
      O(2) => \ts_count_fs_reg[20]_i_1_n_5\,
      O(1) => \ts_count_fs_reg[20]_i_1_n_6\,
      O(0) => \ts_count_fs_reg[20]_i_1_n_7\,
      S(3 downto 0) => ts_count_fs_reg(23 downto 20)
    );
\ts_count_fs_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[20]_i_1_n_6\,
      Q => ts_count_fs_reg(21),
      R => SR(0)
    );
\ts_count_fs_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[20]_i_1_n_5\,
      Q => ts_count_fs_reg(22),
      R => SR(0)
    );
\ts_count_fs_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[20]_i_1_n_4\,
      Q => ts_count_fs_reg(23),
      R => SR(0)
    );
\ts_count_fs_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[24]_i_1_n_7\,
      Q => ts_count_fs_reg(24),
      R => SR(0)
    );
\ts_count_fs_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ts_count_fs_reg[20]_i_1_n_0\,
      CO(3) => \ts_count_fs_reg[24]_i_1_n_0\,
      CO(2) => \ts_count_fs_reg[24]_i_1_n_1\,
      CO(1) => \ts_count_fs_reg[24]_i_1_n_2\,
      CO(0) => \ts_count_fs_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ts_count_fs_reg[24]_i_1_n_4\,
      O(2) => \ts_count_fs_reg[24]_i_1_n_5\,
      O(1) => \ts_count_fs_reg[24]_i_1_n_6\,
      O(0) => \ts_count_fs_reg[24]_i_1_n_7\,
      S(3 downto 0) => ts_count_fs_reg(27 downto 24)
    );
\ts_count_fs_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[24]_i_1_n_6\,
      Q => ts_count_fs_reg(25),
      R => SR(0)
    );
\ts_count_fs_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[24]_i_1_n_5\,
      Q => ts_count_fs_reg(26),
      R => SR(0)
    );
\ts_count_fs_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[24]_i_1_n_4\,
      Q => ts_count_fs_reg(27),
      R => SR(0)
    );
\ts_count_fs_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[28]_i_1_n_7\,
      Q => ts_count_fs_reg(28),
      R => SR(0)
    );
\ts_count_fs_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ts_count_fs_reg[24]_i_1_n_0\,
      CO(3) => \NLW_ts_count_fs_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ts_count_fs_reg[28]_i_1_n_1\,
      CO(1) => \ts_count_fs_reg[28]_i_1_n_2\,
      CO(0) => \ts_count_fs_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ts_count_fs_reg[28]_i_1_n_4\,
      O(2) => \ts_count_fs_reg[28]_i_1_n_5\,
      O(1) => \ts_count_fs_reg[28]_i_1_n_6\,
      O(0) => \ts_count_fs_reg[28]_i_1_n_7\,
      S(3 downto 0) => ts_count_fs_reg(31 downto 28)
    );
\ts_count_fs_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[28]_i_1_n_6\,
      Q => ts_count_fs_reg(29),
      R => SR(0)
    );
\ts_count_fs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[0]_i_1_n_5\,
      Q => ts_count_fs_reg(2),
      R => SR(0)
    );
\ts_count_fs_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[28]_i_1_n_5\,
      Q => ts_count_fs_reg(30),
      R => SR(0)
    );
\ts_count_fs_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[28]_i_1_n_4\,
      Q => ts_count_fs_reg(31),
      R => SR(0)
    );
\ts_count_fs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[0]_i_1_n_4\,
      Q => ts_count_fs_reg(3),
      R => SR(0)
    );
\ts_count_fs_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[4]_i_1_n_7\,
      Q => ts_count_fs_reg(4),
      R => SR(0)
    );
\ts_count_fs_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ts_count_fs_reg[0]_i_1_n_0\,
      CO(3) => \ts_count_fs_reg[4]_i_1_n_0\,
      CO(2) => \ts_count_fs_reg[4]_i_1_n_1\,
      CO(1) => \ts_count_fs_reg[4]_i_1_n_2\,
      CO(0) => \ts_count_fs_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ts_count_fs_reg[4]_i_1_n_4\,
      O(2) => \ts_count_fs_reg[4]_i_1_n_5\,
      O(1) => \ts_count_fs_reg[4]_i_1_n_6\,
      O(0) => \ts_count_fs_reg[4]_i_1_n_7\,
      S(3 downto 0) => ts_count_fs_reg(7 downto 4)
    );
\ts_count_fs_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[4]_i_1_n_6\,
      Q => ts_count_fs_reg(5),
      R => SR(0)
    );
\ts_count_fs_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[4]_i_1_n_5\,
      Q => ts_count_fs_reg(6),
      R => SR(0)
    );
\ts_count_fs_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[4]_i_1_n_4\,
      Q => ts_count_fs_reg(7),
      R => SR(0)
    );
\ts_count_fs_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[8]_i_1_n_7\,
      Q => ts_count_fs_reg(8),
      R => SR(0)
    );
\ts_count_fs_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ts_count_fs_reg[4]_i_1_n_0\,
      CO(3) => \ts_count_fs_reg[8]_i_1_n_0\,
      CO(2) => \ts_count_fs_reg[8]_i_1_n_1\,
      CO(1) => \ts_count_fs_reg[8]_i_1_n_2\,
      CO(0) => \ts_count_fs_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ts_count_fs_reg[8]_i_1_n_4\,
      O(2) => \ts_count_fs_reg[8]_i_1_n_5\,
      O(1) => \ts_count_fs_reg[8]_i_1_n_6\,
      O(0) => \ts_count_fs_reg[8]_i_1_n_7\,
      S(3 downto 0) => ts_count_fs_reg(11 downto 8)
    );
\ts_count_fs_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \ts_count_fs_reg[8]_i_1_n_6\,
      Q => ts_count_fs_reg(9),
      R => SR(0)
    );
ts_en_d_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \out\(0),
      Q => \^ts_en_d\,
      R => SR(0)
    );
u_lost_cnt_cdc: entity work.\ps_Counter_Core_0_1_cnt_cdc__parameterized0\
     port map (
      CLK => CLK,
      SR(0) => SR(0),
      dst_cnt(31 downto 0) => \gray_s2_reg[31]\(31 downto 0),
      \gray_s1_reg[0]_0\(0) => \gray_s1_reg[0]\(0),
      s_axi_aclk => s_axi_aclk,
      src_cnt(31 downto 0) => lost_count_fs_reg(31 downto 0)
    );
u_ovf_sync: entity work.ps_Counter_Core_0_1_bit_sync_6
     port map (
      D(0) => ovf_sticky,
      s_axi_aclk => s_axi_aclk,
      \sync_reg[0]_0\(0) => \gray_s1_reg[0]\(0),
      \sync_reg[1]_0\(0) => \sync_reg[1]\(0)
    );
u_rd_ptr_cdc: entity work.ps_Counter_Core_0_1_cnt_cdc
     port map (
      CLK => CLK,
      CO(0) => fifo_full0,
      E(0) => p_5_in,
      S(3) => u_rd_ptr_cdc_n_2,
      S(2) => u_rd_ptr_cdc_n_3,
      S(1) => u_rd_ptr_cdc_n_4,
      S(0) => u_rd_ptr_cdc_n_5,
      SR(0) => SR(0),
      WEA(0) => wr_en0,
      \do_capture0__25\ => \do_capture0__25\,
      edge_d2 => edge_d2,
      edge_d2_reg => u_rd_ptr_cdc_n_1,
      fifo_full0_carry => \wr_ptr_bin_reg_n_0_[9]\,
      fifo_full0_carry_0 => \wr_ptr_bin_reg_n_0_[11]\,
      fifo_full0_carry_1 => \wr_ptr_bin_reg_n_0_[10]\,
      fifo_full0_carry_2 => \wr_ptr_bin_reg_n_0_[3]\,
      fifo_full0_carry_3 => \wr_ptr_bin_reg_n_0_[4]\,
      fifo_full0_carry_4 => \wr_ptr_bin_reg_n_0_[6]\,
      fifo_full0_carry_5 => \wr_ptr_bin_reg_n_0_[0]\,
      fifo_full0_carry_6 => \wr_ptr_bin_reg_n_0_[2]\,
      fifo_full0_carry_7 => \wr_ptr_bin_reg_n_0_[1]\,
      fifo_full0_carry_i_2_0 => \wr_ptr_bin_reg_n_0_[7]\,
      fifo_full0_carry_i_2_1 => \wr_ptr_bin_reg_n_0_[8]\,
      fifo_full0_carry_i_3_0 => \wr_ptr_bin_reg_n_0_[5]\,
      \gray_src_reg[0]_0\(0) => \gray_s1_reg[0]\(0),
      \gray_src_reg[12]_0\(12 downto 0) => rd_ptr_bin_reg(12 downto 0),
      \out\(0) => \out\(0),
      p_1_in => p_1_in,
      s_axi_aclk => s_axi_aclk,
      ts_word(0) => ovf_mark,
      wr_drop => wr_drop,
      \wr_ptr_bin_reg[12]\ => u_rd_ptr_cdc_n_0
    );
u_tdc: entity work.ps_Counter_Core_0_1_tdc
     port map (
      CLK => CLK,
      SR(0) => SR(0),
      clk_fx => clk_fx,
      ts_word(6 downto 1) => tdc_value(5 downto 0),
      ts_word(0) => tdc_valid
    );
u_ts_cnt_cdc: entity work.\ps_Counter_Core_0_1_cnt_cdc__parameterized0_7\
     port map (
      CLK => CLK,
      CO(0) => int_empty,
      D(0) => D(4),
      SR(0) => SR(0),
      \axi_araddr_reg[3]\ => \axi_araddr_reg[3]\,
      \axi_rdata_reg[4]\(1 downto 0) => \axi_rdata_reg[4]_0\(1 downto 0),
      \axi_rdata_reg[4]_0\ => \^out_valid_reg_0\,
      \axi_rdata_reg[4]_1\(0) => \axi_rdata_reg[4]\(1),
      dst_cnt(30 downto 0) => dst_cnt(30 downto 0),
      \gray_s1_reg[0]_0\(0) => \gray_s1_reg[0]\(0),
      s_axi_aclk => s_axi_aclk,
      src_cnt(31 downto 0) => ts_count_fs_reg(31 downto 0)
    );
u_wr_ptr_cdc: entity work.ps_Counter_Core_0_1_cnt_cdc_8
     port map (
      CLK => CLK,
      DI(2) => u_wr_ptr_cdc_n_27,
      DI(1) => u_wr_ptr_cdc_n_28,
      DI(0) => u_wr_ptr_cdc_n_29,
      S(3) => u_wr_ptr_cdc_n_9,
      S(2) => u_wr_ptr_cdc_n_10,
      S(1) => u_wr_ptr_cdc_n_11,
      S(0) => u_wr_ptr_cdc_n_12,
      SR(0) => SR(0),
      \gray_s1_reg[0]_0\(0) => \gray_s1_reg[0]\(0),
      \gray_s2_reg[11]_0\(3) => u_wr_ptr_cdc_n_23,
      \gray_s2_reg[11]_0\(2) => u_wr_ptr_cdc_n_24,
      \gray_s2_reg[11]_0\(1) => u_wr_ptr_cdc_n_25,
      \gray_s2_reg[11]_0\(0) => u_wr_ptr_cdc_n_26,
      \gray_s2_reg[12]_0\(8 downto 0) => wr_ptr_bin_at_rd(8 downto 0),
      \gray_s2_reg[12]_1\(0) => u_wr_ptr_cdc_n_21,
      \gray_s2_reg[12]_2\(0) => u_wr_ptr_cdc_n_22,
      \gray_s2_reg[9]_0\(3) => u_wr_ptr_cdc_n_17,
      \gray_s2_reg[9]_0\(2) => u_wr_ptr_cdc_n_18,
      \gray_s2_reg[9]_0\(1) => u_wr_ptr_cdc_n_19,
      \gray_s2_reg[9]_0\(0) => u_wr_ptr_cdc_n_20,
      \gray_src_reg[0]_0\ => \wr_ptr_bin_reg_n_0_[1]\,
      \gray_src_reg[0]_1\ => \wr_ptr_bin_reg_n_0_[0]\,
      \gray_src_reg[10]_0\ => \wr_ptr_bin_reg_n_0_[11]\,
      \gray_src_reg[1]_0\ => \wr_ptr_bin_reg_n_0_[2]\,
      \gray_src_reg[2]_0\ => \wr_ptr_bin_reg_n_0_[3]\,
      \gray_src_reg[3]_0\ => \wr_ptr_bin_reg_n_0_[4]\,
      \gray_src_reg[4]_0\ => \wr_ptr_bin_reg_n_0_[5]\,
      \gray_src_reg[5]_0\ => \wr_ptr_bin_reg_n_0_[6]\,
      \gray_src_reg[6]_0\ => \wr_ptr_bin_reg_n_0_[7]\,
      \gray_src_reg[7]_0\ => \wr_ptr_bin_reg_n_0_[8]\,
      \gray_src_reg[8]_0\ => \wr_ptr_bin_reg_n_0_[9]\,
      \gray_src_reg[9]_0\ => \wr_ptr_bin_reg_n_0_[10]\,
      \out\(12 downto 0) => rd_ptr_bin_reg(12 downto 0),
      p_1_in => p_1_in,
      \rd_ptr_bin_reg[3]\(3) => u_wr_ptr_cdc_n_13,
      \rd_ptr_bin_reg[3]\(2) => u_wr_ptr_cdc_n_14,
      \rd_ptr_bin_reg[3]\(1) => u_wr_ptr_cdc_n_15,
      \rd_ptr_bin_reg[3]\(0) => u_wr_ptr_cdc_n_16,
      s_axi_aclk => s_axi_aclk
    );
\wr_ptr_bin[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \wr_ptr_bin_reg_n_0_[0]\,
      O => \wr_ptr_bin[0]_i_2_n_0\
    );
\wr_ptr_bin_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \wr_ptr_bin_reg[0]_i_1_n_7\,
      Q => \wr_ptr_bin_reg_n_0_[0]\,
      R => SR(0)
    );
\wr_ptr_bin_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wr_ptr_bin_reg[0]_i_1_n_0\,
      CO(2) => \wr_ptr_bin_reg[0]_i_1_n_1\,
      CO(1) => \wr_ptr_bin_reg[0]_i_1_n_2\,
      CO(0) => \wr_ptr_bin_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wr_ptr_bin_reg[0]_i_1_n_4\,
      O(2) => \wr_ptr_bin_reg[0]_i_1_n_5\,
      O(1) => \wr_ptr_bin_reg[0]_i_1_n_6\,
      O(0) => \wr_ptr_bin_reg[0]_i_1_n_7\,
      S(3) => \wr_ptr_bin_reg_n_0_[3]\,
      S(2) => \wr_ptr_bin_reg_n_0_[2]\,
      S(1) => \wr_ptr_bin_reg_n_0_[1]\,
      S(0) => \wr_ptr_bin[0]_i_2_n_0\
    );
\wr_ptr_bin_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \wr_ptr_bin_reg[8]_i_1_n_5\,
      Q => \wr_ptr_bin_reg_n_0_[10]\,
      R => SR(0)
    );
\wr_ptr_bin_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \wr_ptr_bin_reg[8]_i_1_n_4\,
      Q => \wr_ptr_bin_reg_n_0_[11]\,
      R => SR(0)
    );
\wr_ptr_bin_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \wr_ptr_bin_reg[12]_i_1_n_7\,
      Q => p_1_in,
      R => SR(0)
    );
\wr_ptr_bin_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_ptr_bin_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_wr_ptr_bin_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wr_ptr_bin_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \wr_ptr_bin_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => p_1_in
    );
\wr_ptr_bin_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \wr_ptr_bin_reg[0]_i_1_n_6\,
      Q => \wr_ptr_bin_reg_n_0_[1]\,
      R => SR(0)
    );
\wr_ptr_bin_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \wr_ptr_bin_reg[0]_i_1_n_5\,
      Q => \wr_ptr_bin_reg_n_0_[2]\,
      R => SR(0)
    );
\wr_ptr_bin_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \wr_ptr_bin_reg[0]_i_1_n_4\,
      Q => \wr_ptr_bin_reg_n_0_[3]\,
      R => SR(0)
    );
\wr_ptr_bin_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \wr_ptr_bin_reg[4]_i_1_n_7\,
      Q => \wr_ptr_bin_reg_n_0_[4]\,
      R => SR(0)
    );
\wr_ptr_bin_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_ptr_bin_reg[0]_i_1_n_0\,
      CO(3) => \wr_ptr_bin_reg[4]_i_1_n_0\,
      CO(2) => \wr_ptr_bin_reg[4]_i_1_n_1\,
      CO(1) => \wr_ptr_bin_reg[4]_i_1_n_2\,
      CO(0) => \wr_ptr_bin_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wr_ptr_bin_reg[4]_i_1_n_4\,
      O(2) => \wr_ptr_bin_reg[4]_i_1_n_5\,
      O(1) => \wr_ptr_bin_reg[4]_i_1_n_6\,
      O(0) => \wr_ptr_bin_reg[4]_i_1_n_7\,
      S(3) => \wr_ptr_bin_reg_n_0_[7]\,
      S(2) => \wr_ptr_bin_reg_n_0_[6]\,
      S(1) => \wr_ptr_bin_reg_n_0_[5]\,
      S(0) => \wr_ptr_bin_reg_n_0_[4]\
    );
\wr_ptr_bin_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \wr_ptr_bin_reg[4]_i_1_n_6\,
      Q => \wr_ptr_bin_reg_n_0_[5]\,
      R => SR(0)
    );
\wr_ptr_bin_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \wr_ptr_bin_reg[4]_i_1_n_5\,
      Q => \wr_ptr_bin_reg_n_0_[6]\,
      R => SR(0)
    );
\wr_ptr_bin_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \wr_ptr_bin_reg[4]_i_1_n_4\,
      Q => \wr_ptr_bin_reg_n_0_[7]\,
      R => SR(0)
    );
\wr_ptr_bin_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \wr_ptr_bin_reg[8]_i_1_n_7\,
      Q => \wr_ptr_bin_reg_n_0_[8]\,
      R => SR(0)
    );
\wr_ptr_bin_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_ptr_bin_reg[4]_i_1_n_0\,
      CO(3) => \wr_ptr_bin_reg[8]_i_1_n_0\,
      CO(2) => \wr_ptr_bin_reg[8]_i_1_n_1\,
      CO(1) => \wr_ptr_bin_reg[8]_i_1_n_2\,
      CO(0) => \wr_ptr_bin_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wr_ptr_bin_reg[8]_i_1_n_4\,
      O(2) => \wr_ptr_bin_reg[8]_i_1_n_5\,
      O(1) => \wr_ptr_bin_reg[8]_i_1_n_6\,
      O(0) => \wr_ptr_bin_reg[8]_i_1_n_7\,
      S(3) => \wr_ptr_bin_reg_n_0_[11]\,
      S(2) => \wr_ptr_bin_reg_n_0_[10]\,
      S(1) => \wr_ptr_bin_reg_n_0_[9]\,
      S(0) => \wr_ptr_bin_reg_n_0_[8]\
    );
\wr_ptr_bin_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => u_rd_ptr_cdc_n_1,
      D => \wr_ptr_bin_reg[8]_i_1_n_6\,
      Q => \wr_ptr_bin_reg_n_0_[9]\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_counter_core is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sync_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sync_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sync_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    out_valid_reg : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_level : out STD_LOGIC_VECTOR ( 12 downto 0 );
    dst_cnt : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \eq_test_reg[0]\ : out STD_LOGIC;
    \eq_test_reg[1]\ : out STD_LOGIC;
    \eq_test_reg[2]\ : out STD_LOGIC;
    \eq_test_reg[3]\ : out STD_LOGIC;
    \axi_araddr_reg[3]\ : out STD_LOGIC;
    \eq_test_reg[4]\ : out STD_LOGIC;
    \eq_test_reg[5]\ : out STD_LOGIC;
    \eq_test_reg[6]\ : out STD_LOGIC;
    \eq_test_reg[7]\ : out STD_LOGIC;
    \eq_test_reg[8]\ : out STD_LOGIC;
    \eq_test_reg[9]\ : out STD_LOGIC;
    \eq_test_reg[10]\ : out STD_LOGIC;
    \eq_test_reg[11]\ : out STD_LOGIC;
    \eq_test_reg[12]\ : out STD_LOGIC;
    \eq_test_reg[13]\ : out STD_LOGIC;
    \eq_test_reg[14]\ : out STD_LOGIC;
    \eq_test_reg[15]\ : out STD_LOGIC;
    \eq_test_reg[16]\ : out STD_LOGIC;
    \eq_test_reg[17]\ : out STD_LOGIC;
    \eq_test_reg[18]\ : out STD_LOGIC;
    \eq_test_reg[19]\ : out STD_LOGIC;
    \eq_test_reg[20]\ : out STD_LOGIC;
    \eq_test_reg[21]\ : out STD_LOGIC;
    \eq_test_reg[22]\ : out STD_LOGIC;
    \eq_test_reg[23]\ : out STD_LOGIC;
    \eq_test_reg[24]\ : out STD_LOGIC;
    \eq_test_reg[25]\ : out STD_LOGIC;
    \eq_test_reg[26]\ : out STD_LOGIC;
    \eq_test_reg[27]\ : out STD_LOGIC;
    \eq_test_reg[28]\ : out STD_LOGIC;
    \eq_test_reg[29]\ : out STD_LOGIC;
    \eq_test_reg[30]\ : out STD_LOGIC;
    \eq_test_reg[31]\ : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \tdc_test_fall_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    clk_fx : in STD_LOGIC;
    CLK : in STD_LOGIC;
    pop_is_last : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \axi_rdata_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \pkt_bounded__14\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    pop_is_last1 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    \pop_limit_hit0_carry__0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \gate_cnt_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[4]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \sync_reg[2]\ : in STD_LOGIC;
    \sync_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_counter_core : entity is "counter_core";
end ps_Counter_Core_0_1_counter_core;

architecture STRUCTURE of ps_Counter_Core_0_1_counter_core is
  signal eq_start_fs : STD_LOGIC;
  signal lost_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rst_fs_n : STD_LOGIC;
  signal rst_fx_n : STD_LOGIC;
  signal ts_en_d : STD_LOGIC;
  signal ts_en_fs : STD_LOGIC;
  signal ts_rst_fs_n : STD_LOGIC;
  signal ts_start : STD_LOGIC;
  signal \u_rd_ptr_cdc/p_0_in__0\ : STD_LOGIC;
  signal u_rst_ax_n_0 : STD_LOGIC;
  signal u_rst_fs_n_1 : STD_LOGIC;
  signal u_rst_fx_n_1 : STD_LOGIC;
  signal \u_ts_cnt_cdc/p_0_in__0\ : STD_LOGIC;
  signal u_ts_rst_ax_n_0 : STD_LOGIC;
begin
u_eq_counter: entity work.ps_Counter_Core_0_1_eq_counter
     port map (
      CLK => CLK,
      Q(5 downto 0) => Q(5 downto 0),
      SR(0) => u_rst_fx_n_1,
      \axi_rdata_reg[13]\(1 downto 0) => \axi_rdata_reg[4]_0\(1 downto 0),
      clk_fx => clk_fx,
      done_fs_reg_0(0) => rst_fs_n,
      dst_cnt(31 downto 0) => lost_count(31 downto 0),
      \eq_test_reg[0]_0\ => \eq_test_reg[0]\,
      \eq_test_reg[10]_0\ => \eq_test_reg[10]\,
      \eq_test_reg[11]_0\ => \eq_test_reg[11]\,
      \eq_test_reg[12]_0\ => \eq_test_reg[12]\,
      \eq_test_reg[13]_0\ => \eq_test_reg[13]\,
      \eq_test_reg[14]_0\ => \eq_test_reg[14]\,
      \eq_test_reg[15]_0\ => \eq_test_reg[15]\,
      \eq_test_reg[16]_0\ => \eq_test_reg[16]\,
      \eq_test_reg[17]_0\ => \eq_test_reg[17]\,
      \eq_test_reg[18]_0\ => \eq_test_reg[18]\,
      \eq_test_reg[19]_0\ => \eq_test_reg[19]\,
      \eq_test_reg[1]_0\ => \eq_test_reg[1]\,
      \eq_test_reg[20]_0\ => \eq_test_reg[20]\,
      \eq_test_reg[21]_0\ => \eq_test_reg[21]\,
      \eq_test_reg[22]_0\ => \eq_test_reg[22]\,
      \eq_test_reg[23]_0\ => \eq_test_reg[23]\,
      \eq_test_reg[24]_0\ => \eq_test_reg[24]\,
      \eq_test_reg[25]_0\ => \eq_test_reg[25]\,
      \eq_test_reg[26]_0\ => \eq_test_reg[26]\,
      \eq_test_reg[27]_0\ => \eq_test_reg[27]\,
      \eq_test_reg[28]_0\ => \eq_test_reg[28]\,
      \eq_test_reg[29]_0\ => \eq_test_reg[29]\,
      \eq_test_reg[2]_0\ => \eq_test_reg[2]\,
      \eq_test_reg[30]_0\ => \eq_test_reg[30]\,
      \eq_test_reg[31]_0\ => \eq_test_reg[31]\,
      \eq_test_reg[3]_0\ => \eq_test_reg[3]\,
      \eq_test_reg[4]_0\ => \eq_test_reg[4]\,
      \eq_test_reg[5]_0\ => \eq_test_reg[5]\,
      \eq_test_reg[6]_0\ => \eq_test_reg[6]\,
      \eq_test_reg[7]_0\ => \eq_test_reg[7]\,
      \eq_test_reg[8]_0\ => \eq_test_reg[8]\,
      \eq_test_reg[9]_0\ => \eq_test_reg[9]\,
      \gate_cnt_reg[31]_0\(0) => u_rst_fs_n_1,
      \gate_cnt_reg[31]_1\(31 downto 0) => \gate_cnt_reg[31]\(31 downto 0),
      \out\(0) => eq_start_fs,
      s_axi_aclk => s_axi_aclk,
      \sync_reg[1]\(0) => \sync_reg[1]_0\(0),
      \sync_reg[1]_0\(0) => \sync_reg[1]_1\(0),
      \sync_reg[1]_1\(0) => u_rst_ax_n_0,
      \tdc_test_fall_reg[5]_0\(5 downto 0) => \tdc_test_fall_reg[5]\(5 downto 0),
      \test_cnt_reg[31]_0\(0) => rst_fx_n
    );
u_eq_start_sync: entity work.ps_Counter_Core_0_1_bit_sync
     port map (
      CLK => CLK,
      SR(0) => u_rst_fs_n_1,
      \out\(0) => eq_start_fs,
      \sync_reg[0]_0\(0) => \axi_rdata_reg[4]\(1)
    );
u_rst_ax: entity work.ps_Counter_Core_0_1_rst_sync
     port map (
      s_axi_aclk => s_axi_aclk,
      \sync_reg[1]_0\ => \sync_reg[2]\,
      \sync_reg[2]_0\(0) => u_rst_ax_n_0
    );
u_rst_fs: entity work.ps_Counter_Core_0_1_rst_sync_0
     port map (
      CLK => CLK,
      SR(0) => u_rst_fs_n_1,
      \out\(0) => rst_fs_n,
      \sync_reg[2]_0\ => \sync_reg[2]\
    );
u_rst_fx: entity work.ps_Counter_Core_0_1_rst_sync_1
     port map (
      SR(0) => u_rst_fx_n_1,
      clk_fx => clk_fx,
      \out\(0) => rst_fx_n,
      \sync_reg[2]_0\ => \sync_reg[2]\
    );
u_ts_en_sync: entity work.ps_Counter_Core_0_1_bit_sync_2
     port map (
      CLK => CLK,
      E(0) => ts_start,
      SR(0) => \u_ts_cnt_cdc/p_0_in__0\,
      \out\(0) => ts_en_fs,
      \sync_reg[0]_0\(0) => \axi_rdata_reg[4]\(0),
      ts_en_d => ts_en_d
    );
u_ts_engine: entity work.ps_Counter_Core_0_1_ts_engine
     port map (
      CLK => CLK,
      CO(0) => CO(0),
      D(31 downto 0) => D(31 downto 0),
      E(0) => ts_start,
      SR(0) => \u_ts_cnt_cdc/p_0_in__0\,
      \axi_araddr_reg[3]\ => \axi_araddr_reg[3]\,
      \axi_rdata_reg[4]\(1) => \axi_rdata_reg[4]\(2),
      \axi_rdata_reg[4]\(0) => \axi_rdata_reg[4]\(0),
      \axi_rdata_reg[4]_0\(1 downto 0) => \axi_rdata_reg[4]_0\(1 downto 0),
      clk_fx => clk_fx,
      dst_cnt(30 downto 0) => dst_cnt(30 downto 0),
      fifo_level(12 downto 0) => fifo_level(12 downto 0),
      \gray_s1_reg[0]\(0) => \u_rd_ptr_cdc/p_0_in__0\,
      \gray_s2_reg[31]\(31 downto 0) => lost_count(31 downto 0),
      m_axis_tdata(63 downto 0) => m_axis_tdata(63 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      \out\(0) => ts_en_fs,
      out_valid_reg_0 => out_valid_reg,
      \pkt_bounded__14\ => \pkt_bounded__14\,
      \pop_cnt_reg[15]_0\ => u_ts_rst_ax_n_0,
      pop_is_last => pop_is_last,
      pop_is_last1(14 downto 0) => pop_is_last1(14 downto 0),
      \pop_limit_hit0_carry__0_0\(15 downto 0) => \pop_limit_hit0_carry__0\(15 downto 0),
      s_axi_aclk => s_axi_aclk,
      \skip_cnt_reg[31]_0\(0) => ts_rst_fs_n,
      \sync_reg[1]\(0) => \sync_reg[1]\(0),
      ts_en_d => ts_en_d
    );
u_ts_rst_ax: entity work.ps_Counter_Core_0_1_rst_sync_3
     port map (
      SR(0) => \u_rd_ptr_cdc/p_0_in__0\,
      \pop_cnt_reg[15]\(0) => \axi_rdata_reg[4]\(0),
      s_axi_aclk => s_axi_aclk,
      \sync_reg[2]_0\ => u_ts_rst_ax_n_0,
      \sync_reg[2]_1\ => \sync_reg[0]\
    );
u_ts_rst_fs: entity work.ps_Counter_Core_0_1_rst_sync_4
     port map (
      CLK => CLK,
      SR(0) => \u_ts_cnt_cdc/p_0_in__0\,
      \out\(0) => ts_rst_fs_n,
      \sync_reg[0]_0\ => \sync_reg[0]\
    );
u_ts_run_sync: entity work.ps_Counter_Core_0_1_bit_sync_5
     port map (
      D(0) => ts_en_fs,
      SR(0) => \u_rd_ptr_cdc/p_0_in__0\,
      \out\(0) => \out\(0),
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1_Counter_Core_v1_0 is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_wready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    out_valid_reg : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    clk_fs_p : in STD_LOGIC;
    clk_fs_n : in STD_LOGIC;
    clk_fx_p : in STD_LOGIC;
    clk_fx_n : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_Counter_Core_0_1_Counter_Core_v1_0 : entity is "Counter_Core_v1_0";
end ps_Counter_Core_0_1_Counter_Core_v1_0;

architecture STRUCTURE of ps_Counter_Core_0_1_Counter_Core_v1_0 is
  signal Counter_Core_v1_0_S_AXI_inst_n_5 : STD_LOGIC;
  signal Counter_Core_v1_0_S_AXI_inst_n_6 : STD_LOGIC;
  signal clk_fs : STD_LOGIC;
  signal clk_fs_ibuf : STD_LOGIC;
  signal clk_fx : STD_LOGIC;
  signal clk_fx_ibuf : STD_LOGIC;
  signal counter_core_inst_n_51 : STD_LOGIC;
  signal counter_core_inst_n_52 : STD_LOGIC;
  signal counter_core_inst_n_53 : STD_LOGIC;
  signal counter_core_inst_n_54 : STD_LOGIC;
  signal counter_core_inst_n_55 : STD_LOGIC;
  signal counter_core_inst_n_56 : STD_LOGIC;
  signal counter_core_inst_n_57 : STD_LOGIC;
  signal counter_core_inst_n_58 : STD_LOGIC;
  signal counter_core_inst_n_59 : STD_LOGIC;
  signal counter_core_inst_n_60 : STD_LOGIC;
  signal counter_core_inst_n_61 : STD_LOGIC;
  signal counter_core_inst_n_62 : STD_LOGIC;
  signal counter_core_inst_n_63 : STD_LOGIC;
  signal counter_core_inst_n_64 : STD_LOGIC;
  signal counter_core_inst_n_65 : STD_LOGIC;
  signal counter_core_inst_n_66 : STD_LOGIC;
  signal counter_core_inst_n_67 : STD_LOGIC;
  signal counter_core_inst_n_68 : STD_LOGIC;
  signal counter_core_inst_n_69 : STD_LOGIC;
  signal counter_core_inst_n_70 : STD_LOGIC;
  signal counter_core_inst_n_71 : STD_LOGIC;
  signal counter_core_inst_n_72 : STD_LOGIC;
  signal counter_core_inst_n_73 : STD_LOGIC;
  signal counter_core_inst_n_74 : STD_LOGIC;
  signal counter_core_inst_n_75 : STD_LOGIC;
  signal counter_core_inst_n_76 : STD_LOGIC;
  signal counter_core_inst_n_77 : STD_LOGIC;
  signal counter_core_inst_n_78 : STD_LOGIC;
  signal counter_core_inst_n_79 : STD_LOGIC;
  signal counter_core_inst_n_80 : STD_LOGIC;
  signal counter_core_inst_n_81 : STD_LOGIC;
  signal counter_core_inst_n_82 : STD_LOGIC;
  signal counter_core_inst_n_83 : STD_LOGIC;
  signal edge_skip : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal eq_busy : STD_LOGIC;
  signal eq_done : STD_LOGIC;
  signal eq_start : STD_LOGIC;
  signal fifo_level : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal gate_len : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal overflow : STD_LOGIC;
  signal pkt_len : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal pop_is_last1 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal reg_ctrl : STD_LOGIC_VECTOR ( 4 to 4 );
  signal sel0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tdc_test_fall : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal tdc_test_rise : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal ts_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ts_en : STD_LOGIC;
  signal ts_running : STD_LOGIC;
  signal \u_ts_engine/pkt_bounded__14\ : STD_LOGIC;
  signal \u_ts_engine/pop_is_last\ : STD_LOGIC;
  signal \u_ts_engine/pop_is_last0\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of bufg_fs : label is "PRIMITIVE";
  attribute BOX_TYPE of bufg_fx : label is "PRIMITIVE";
  attribute BOX_TYPE of ibufds_fs : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of ibufds_fs : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of ibufds_fs : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of ibufds_fs : label is "AUTO";
  attribute BOX_TYPE of ibufds_fx : label is "PRIMITIVE";
  attribute CAPACITANCE of ibufds_fx : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of ibufds_fx : label is "0";
  attribute IFD_DELAY_VALUE of ibufds_fx : label is "AUTO";
begin
Counter_Core_v1_0_S_AXI_inst: entity work.ps_Counter_Core_0_1_Counter_Core_v1_0_S_AXI
     port map (
      CO(0) => \u_ts_engine/pop_is_last0\,
      Q(5 downto 0) => tdc_test_rise(5 downto 0),
      \axi_araddr_reg[3]_0\(1 downto 0) => sel0(1 downto 0),
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      \axi_rdata_reg[0]_0\ => counter_core_inst_n_51,
      \axi_rdata_reg[10]_0\ => counter_core_inst_n_62,
      \axi_rdata_reg[11]_0\ => counter_core_inst_n_63,
      \axi_rdata_reg[12]_0\ => counter_core_inst_n_64,
      \axi_rdata_reg[13]_0\(5 downto 0) => tdc_test_fall(5 downto 0),
      \axi_rdata_reg[13]_1\ => counter_core_inst_n_65,
      \axi_rdata_reg[14]_0\ => counter_core_inst_n_66,
      \axi_rdata_reg[15]_0\ => counter_core_inst_n_67,
      \axi_rdata_reg[16]_0\ => counter_core_inst_n_68,
      \axi_rdata_reg[17]_0\ => counter_core_inst_n_69,
      \axi_rdata_reg[18]_0\ => counter_core_inst_n_70,
      \axi_rdata_reg[19]_0\ => counter_core_inst_n_71,
      \axi_rdata_reg[1]_0\ => counter_core_inst_n_52,
      \axi_rdata_reg[1]_1\(0) => overflow,
      \axi_rdata_reg[20]_0\ => counter_core_inst_n_72,
      \axi_rdata_reg[21]_0\ => counter_core_inst_n_73,
      \axi_rdata_reg[22]_0\ => counter_core_inst_n_74,
      \axi_rdata_reg[23]_0\ => counter_core_inst_n_75,
      \axi_rdata_reg[24]_0\ => counter_core_inst_n_76,
      \axi_rdata_reg[25]_0\ => counter_core_inst_n_77,
      \axi_rdata_reg[26]_0\ => counter_core_inst_n_78,
      \axi_rdata_reg[27]_0\ => counter_core_inst_n_79,
      \axi_rdata_reg[28]_0\ => counter_core_inst_n_80,
      \axi_rdata_reg[29]_0\ => counter_core_inst_n_81,
      \axi_rdata_reg[2]_0\ => counter_core_inst_n_53,
      \axi_rdata_reg[2]_1\(0) => eq_done,
      \axi_rdata_reg[30]_0\ => counter_core_inst_n_82,
      \axi_rdata_reg[31]_0\ => counter_core_inst_n_83,
      \axi_rdata_reg[3]_0\ => counter_core_inst_n_54,
      \axi_rdata_reg[3]_1\(0) => eq_busy,
      \axi_rdata_reg[4]_0\ => counter_core_inst_n_56,
      \axi_rdata_reg[4]_1\ => counter_core_inst_n_55,
      \axi_rdata_reg[5]_0\ => counter_core_inst_n_57,
      \axi_rdata_reg[6]_0\ => counter_core_inst_n_58,
      \axi_rdata_reg[7]_0\ => counter_core_inst_n_59,
      \axi_rdata_reg[8]_0\ => counter_core_inst_n_60,
      \axi_rdata_reg[9]_0\ => counter_core_inst_n_61,
      axi_wready_reg_0 => axi_wready_reg,
      dst_cnt(30 downto 4) => ts_count(31 downto 5),
      dst_cnt(3 downto 0) => ts_count(3 downto 0),
      fifo_level(12 downto 0) => fifo_level(12 downto 0),
      \out\(0) => ts_running,
      \pkt_bounded__14\ => \u_ts_engine/pkt_bounded__14\,
      pop_is_last => \u_ts_engine/pop_is_last\,
      pop_is_last1(14 downto 0) => pop_is_last1(15 downto 1),
      \reg_ctrl_reg[1]_0\ => Counter_Core_v1_0_S_AXI_inst_n_6,
      \reg_ctrl_reg[3]_0\ => Counter_Core_v1_0_S_AXI_inst_n_5,
      \reg_ctrl_reg[4]_0\(2) => reg_ctrl(4),
      \reg_ctrl_reg[4]_0\(1) => eq_start,
      \reg_ctrl_reg[4]_0\(0) => ts_en,
      \reg_edge_skip_reg[31]_0\(31 downto 0) => edge_skip(31 downto 0),
      \reg_gate_len_reg[31]_0\(31 downto 0) => gate_len(31 downto 0),
      \reg_pkt_len_reg[15]_0\(15 downto 0) => pkt_len(15 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(3 downto 0) => s_axi_araddr(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
bufg_fs: unisim.vcomponents.BUFG
     port map (
      I => clk_fs_ibuf,
      O => clk_fs
    );
bufg_fx: unisim.vcomponents.BUFG
     port map (
      I => clk_fx_ibuf,
      O => clk_fx
    );
counter_core_inst: entity work.ps_Counter_Core_0_1_counter_core
     port map (
      CLK => clk_fs,
      CO(0) => \u_ts_engine/pop_is_last0\,
      D(31 downto 0) => edge_skip(31 downto 0),
      Q(5 downto 0) => tdc_test_rise(5 downto 0),
      \axi_araddr_reg[3]\ => counter_core_inst_n_55,
      \axi_rdata_reg[4]\(2) => reg_ctrl(4),
      \axi_rdata_reg[4]\(1) => eq_start,
      \axi_rdata_reg[4]\(0) => ts_en,
      \axi_rdata_reg[4]_0\(1 downto 0) => sel0(1 downto 0),
      clk_fx => clk_fx,
      dst_cnt(30 downto 4) => ts_count(31 downto 5),
      dst_cnt(3 downto 0) => ts_count(3 downto 0),
      \eq_test_reg[0]\ => counter_core_inst_n_51,
      \eq_test_reg[10]\ => counter_core_inst_n_62,
      \eq_test_reg[11]\ => counter_core_inst_n_63,
      \eq_test_reg[12]\ => counter_core_inst_n_64,
      \eq_test_reg[13]\ => counter_core_inst_n_65,
      \eq_test_reg[14]\ => counter_core_inst_n_66,
      \eq_test_reg[15]\ => counter_core_inst_n_67,
      \eq_test_reg[16]\ => counter_core_inst_n_68,
      \eq_test_reg[17]\ => counter_core_inst_n_69,
      \eq_test_reg[18]\ => counter_core_inst_n_70,
      \eq_test_reg[19]\ => counter_core_inst_n_71,
      \eq_test_reg[1]\ => counter_core_inst_n_52,
      \eq_test_reg[20]\ => counter_core_inst_n_72,
      \eq_test_reg[21]\ => counter_core_inst_n_73,
      \eq_test_reg[22]\ => counter_core_inst_n_74,
      \eq_test_reg[23]\ => counter_core_inst_n_75,
      \eq_test_reg[24]\ => counter_core_inst_n_76,
      \eq_test_reg[25]\ => counter_core_inst_n_77,
      \eq_test_reg[26]\ => counter_core_inst_n_78,
      \eq_test_reg[27]\ => counter_core_inst_n_79,
      \eq_test_reg[28]\ => counter_core_inst_n_80,
      \eq_test_reg[29]\ => counter_core_inst_n_81,
      \eq_test_reg[2]\ => counter_core_inst_n_53,
      \eq_test_reg[30]\ => counter_core_inst_n_82,
      \eq_test_reg[31]\ => counter_core_inst_n_83,
      \eq_test_reg[3]\ => counter_core_inst_n_54,
      \eq_test_reg[4]\ => counter_core_inst_n_56,
      \eq_test_reg[5]\ => counter_core_inst_n_57,
      \eq_test_reg[6]\ => counter_core_inst_n_58,
      \eq_test_reg[7]\ => counter_core_inst_n_59,
      \eq_test_reg[8]\ => counter_core_inst_n_60,
      \eq_test_reg[9]\ => counter_core_inst_n_61,
      fifo_level(12 downto 0) => fifo_level(12 downto 0),
      \gate_cnt_reg[31]\(31 downto 0) => gate_len(31 downto 0),
      m_axis_tdata(63 downto 0) => m_axis_tdata(63 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      \out\(0) => ts_running,
      out_valid_reg => out_valid_reg,
      \pkt_bounded__14\ => \u_ts_engine/pkt_bounded__14\,
      pop_is_last => \u_ts_engine/pop_is_last\,
      pop_is_last1(14 downto 0) => pop_is_last1(15 downto 1),
      \pop_limit_hit0_carry__0\(15 downto 0) => pkt_len(15 downto 0),
      s_axi_aclk => s_axi_aclk,
      \sync_reg[0]\ => Counter_Core_v1_0_S_AXI_inst_n_6,
      \sync_reg[1]\(0) => overflow,
      \sync_reg[1]_0\(0) => eq_done,
      \sync_reg[1]_1\(0) => eq_busy,
      \sync_reg[2]\ => Counter_Core_v1_0_S_AXI_inst_n_5,
      \tdc_test_fall_reg[5]\(5 downto 0) => tdc_test_fall(5 downto 0)
    );
ibufds_fs: unisim.vcomponents.IBUFDS
     port map (
      I => clk_fs_p,
      IB => clk_fs_n,
      O => clk_fs_ibuf
    );
ibufds_fx: unisim.vcomponents.IBUFDS
     port map (
      I => clk_fx_p,
      IB => clk_fx_n,
      O => clk_fx_ibuf
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_Counter_Core_0_1 is
  port (
    clk_fs_p : in STD_LOGIC;
    clk_fs_n : in STD_LOGIC;
    clk_fx_p : in STD_LOGIC;
    clk_fx_n : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_Counter_Core_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_Counter_Core_0_1 : entity is "ps_Counter_Core_0_1,Counter_Core_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_Counter_Core_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_Counter_Core_0_1 : entity is "Counter_Core_v1_0,Vivado 2018.3";
end ps_Counter_Core_0_1;

architecture STRUCTURE of ps_Counter_Core_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axis_aclk : signal is "XIL_INTERFACENAME M_AXIS_CLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET m_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ps_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of m_axis_aresetn : signal is "XIL_INTERFACENAME M_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_tready : signal is "XIL_INTERFACENAME M_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ps_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN ps_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 50, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN ps_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of m_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M_AXIS TSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  m_axis_tstrb(7) <= \<const1>\;
  m_axis_tstrb(6) <= \<const1>\;
  m_axis_tstrb(5) <= \<const1>\;
  m_axis_tstrb(4) <= \<const1>\;
  m_axis_tstrb(3) <= \<const1>\;
  m_axis_tstrb(2) <= \<const1>\;
  m_axis_tstrb(1) <= \<const1>\;
  m_axis_tstrb(0) <= \<const1>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.ps_Counter_Core_0_1_Counter_Core_v1_0
     port map (
      axi_arready_reg => s_axi_arready,
      axi_awready_reg => s_axi_awready,
      axi_wready_reg => s_axi_wready,
      clk_fs_n => clk_fs_n,
      clk_fs_p => clk_fs_p,
      clk_fx_n => clk_fx_n,
      clk_fx_p => clk_fx_p,
      m_axis_tdata(63 downto 0) => m_axis_tdata(63 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      out_valid_reg => m_axis_tvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(3 downto 0) => s_axi_araddr(5 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(5 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
