set_property SRC_FILE_INFO {cfile:d:/Vivado/1_top_cymometer_v0.0.3_200MHZ-1s_v0.0.6/top_cymometer.srcs/sources_1/bd/ps/ip/ps_processing_system7_0_0/ps_processing_system7_0_0.xdc rfile:../top_cymometer.srcs/sources_1/bd/ps/ip/ps_processing_system7_0_0/ps_processing_system7_0_0.xdc id:1 order:EARLY scoped_inst:ps_i/processing_system7_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:D:/Vivado/1_top_cymometer_v0.0.3_200MHZ-1s_v0.0.6/top_cymometer.srcs/constrs_1/new/top_cymometer.xdc rfile:../top_cymometer.srcs/constrs_1/new/top_cymometer.xdc id:2} [current_design]
current_instance ps_i/processing_system7_0/inst
set_property src_info {type:SCOPED_XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_0 0.6
current_instance
set_property src_info {type:XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 20.000 -name sys_clk [get_ports sys_clk]
set_property src_info {type:XDC file:2 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports sys_clk]
set_property src_info {type:XDC file:2 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports sys_rst_n]
