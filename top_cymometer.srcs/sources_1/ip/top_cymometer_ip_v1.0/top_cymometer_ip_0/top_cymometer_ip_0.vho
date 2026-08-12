-- (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:top_cymometer_ip:1.0
-- IP Revision: 2

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT top_cymometer_ip_0
  PORT (
    clk_fx : IN STD_LOGIC;
    clk_fs : IN STD_LOGIC;
    lcd_hs : OUT STD_LOGIC;
    lcd_vs : OUT STD_LOGIC;
    lcd_de : OUT STD_LOGIC;
    lcd_rgb : INOUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    lcd_bl : OUT STD_LOGIC;
    lcd_clk : OUT STD_LOGIC;
    lcd_rst : OUT STD_LOGIC;
    s0_axi_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s0_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s0_axi_awvalid : IN STD_LOGIC;
    s0_axi_awready : OUT STD_LOGIC;
    s0_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s0_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s0_axi_wvalid : IN STD_LOGIC;
    s0_axi_wready : OUT STD_LOGIC;
    s0_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s0_axi_bvalid : OUT STD_LOGIC;
    s0_axi_bready : IN STD_LOGIC;
    s0_axi_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s0_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s0_axi_arvalid : IN STD_LOGIC;
    s0_axi_arready : OUT STD_LOGIC;
    s0_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s0_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s0_axi_rvalid : OUT STD_LOGIC;
    s0_axi_rready : IN STD_LOGIC;
    s0_axi_aclk : IN STD_LOGIC;
    s0_axi_aresetn : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : top_cymometer_ip_0
  PORT MAP (
    clk_fx => clk_fx,
    clk_fs => clk_fs,
    lcd_hs => lcd_hs,
    lcd_vs => lcd_vs,
    lcd_de => lcd_de,
    lcd_rgb => lcd_rgb,
    lcd_bl => lcd_bl,
    lcd_clk => lcd_clk,
    lcd_rst => lcd_rst,
    s0_axi_awaddr => s0_axi_awaddr,
    s0_axi_awprot => s0_axi_awprot,
    s0_axi_awvalid => s0_axi_awvalid,
    s0_axi_awready => s0_axi_awready,
    s0_axi_wdata => s0_axi_wdata,
    s0_axi_wstrb => s0_axi_wstrb,
    s0_axi_wvalid => s0_axi_wvalid,
    s0_axi_wready => s0_axi_wready,
    s0_axi_bresp => s0_axi_bresp,
    s0_axi_bvalid => s0_axi_bvalid,
    s0_axi_bready => s0_axi_bready,
    s0_axi_araddr => s0_axi_araddr,
    s0_axi_arprot => s0_axi_arprot,
    s0_axi_arvalid => s0_axi_arvalid,
    s0_axi_arready => s0_axi_arready,
    s0_axi_rdata => s0_axi_rdata,
    s0_axi_rresp => s0_axi_rresp,
    s0_axi_rvalid => s0_axi_rvalid,
    s0_axi_rready => s0_axi_rready,
    s0_axi_aclk => s0_axi_aclk,
    s0_axi_aresetn => s0_axi_aresetn
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file top_cymometer_ip_0.vhd when simulating
-- the core, top_cymometer_ip_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

