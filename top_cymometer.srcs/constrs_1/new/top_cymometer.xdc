#时序约束
create_clock -period 20.000 -name sys_clk [get_ports sys_clk]

#IO管脚约束
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports sys_clk]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports sys_rst_n]

#基准时钟clk_fs
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/Counter_Core_0/inst/clk_fs_ibuf]
set_property PACKAGE_PIN Y12 [get_ports clk_fs_p]
set_property IOSTANDARD LVDS_25 [get_ports clk_fs_p]

#被测时钟clk_fx
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/Counter_Core_0/inst/clk_fx_ibuf]
set_property PACKAGE_PIN B19 [get_ports clk_fx_p]
set_property IOSTANDARD LVDS_25 [get_ports clk_fx_p]

#控制信号
set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports CTR_PRIREF]
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports CTR_REF_CLOCK]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports CTR_OCXO]

set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports CTR_STATUS0]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports CTR_STATUS1]
set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS25} [get_ports CTR_START_T]
