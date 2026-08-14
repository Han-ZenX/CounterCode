connect -url tcp:127.0.0.1:3121
source D:/Vivado/1_top_cymometer_v0.0.3_200MHZ-1s_v0.0.6/top_cymometer.sdk/ps_wrapper_hw_platform_0/ps7_init.tcl
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870" && level==0} -index 1
fpga -file D:/Vivado/1_top_cymometer_v0.0.3_200MHZ-1s_v0.0.6/top_cymometer.sdk/ps_wrapper_hw_platform_0/ps_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870"} -index 0
loadhw -hw D:/Vivado/1_top_cymometer_v0.0.3_200MHZ-1s_v0.0.6/top_cymometer.sdk/ps_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870"} -index 0
dow D:/Vivado/1_top_cymometer_v0.0.3_200MHZ-1s_v0.0.6/top_cymometer.sdk/FreqCounter/Debug/FreqCounter.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870"} -index 0
con
