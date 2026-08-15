#=============================================================================
# Timing constraints
#
# Previously this file had no create_clock for clk_fs / clk_fx at all. The
# check_timing report showed 270 register pins driven by clk_fs_p and 119 by
# clk_fx_p with NO CLOCK DEFINED -- meaning the TDC, the counters and the
# timestamp engine were almost entirely outside timing analysis. Any WNS
# figure quoted before this was only about the AXI logic.
#=============================================================================

#-----------------------------------------------------------------------------
# Reference clock: 312.5 MHz LVDS differential input
#-----------------------------------------------------------------------------
create_clock -period 3.200 -name clk_fs [get_ports clk_fs_p]

#-----------------------------------------------------------------------------
# Signal under test
#
# The frequency depends on what is being measured, so constrain for the
# fastest input the instrument is meant to handle -- the clk_fx domain logic
# (equal-precision counter, test-domain TDC, gate synchroniser) must close at
# that worst case. 350 MHz has been exercised on hardware.
#
# If timing does not close here, that is a real result, not a nuisance: it
# means the 32-bit counter or the TDC sampling cannot keep up at 350 MHz and
# the usable upper limit is lower than assumed. Relax the period only after
# deciding the instrument will not be used that fast.
#-----------------------------------------------------------------------------
create_clock -period 2.857 -name clk_fx [get_ports clk_fx_p]

#-----------------------------------------------------------------------------
# Clock groups
#
# The three domains are mutually asynchronous. Every crossing inside
# Counter_Core goes through an explicit synchroniser (rst_sync / bit_sync /
# cnt_cdc), which is exactly what "asynchronous" declares. Without this the
# tool tries to time every CDC path against unrelated clocks and buries the
# real violations under thousands of meaningless ones.
#
# If clk_fpga_0 is not the name in this project, run
#     report_clocks
# and substitute the actual name of the PS FCLK_CLK0 output.
#-----------------------------------------------------------------------------
set_clock_groups -asynchronous \
    -group [get_clocks -include_generated_clocks clk_fs] \
    -group [get_clocks -include_generated_clocks clk_fx] \
    -group [get_clocks -include_generated_clocks clk_fpga_0]

#-----------------------------------------------------------------------------
# TDC delay chain
#
# tap_reg samples a CARRY4 chain fed by an asynchronous signal. Capturing
# where a transition sits *inside* a clock period is the entire purpose, so
# this path is deliberately not meant to meet setup/hold and must be excluded
# -- otherwise it reports failures that cannot and should not be fixed.
#
# Note this only silences the analysis. It does NOT make the chain uniform:
# tap-to-tap delay is set by placement, and the measured 133 ps/tap (vs the
# 50 ps nominal) comes from CARRY4 blocks being spread out. Making the chain
# linear needs manual LOC/RLOC placement of the CARRY4 column, which is a
# separate exercise.
#-----------------------------------------------------------------------------
set_false_path -to [get_pins -hier -filter {NAME =~ *tdc*/tap_reg_reg*/D}]

#=============================================================================
# Pin assignments
#=============================================================================

#-----------------------------------------------------------------------------
# Reference clock clk_fs
#
# CLOCK_DEDICATED_ROUTE FALSE is required because the clock enters on a
# regular IO pin rather than a dedicated clock-capable pin.
#-----------------------------------------------------------------------------
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/Counter_Core_0/inst/clk_fs_ibuf]
set_property PACKAGE_PIN Y12 [get_ports clk_fs_p]
set_property IOSTANDARD LVDS_25 [get_ports clk_fs_p]

#-----------------------------------------------------------------------------
# Signal under test clk_fx
#-----------------------------------------------------------------------------
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets ps_i/Counter_Core_0/inst/clk_fx_ibuf]
set_property PACKAGE_PIN B19 [get_ports clk_fx_p]
set_property IOSTANDARD LVDS_25 [get_ports clk_fx_p]

#-----------------------------------------------------------------------------
# Control outputs
#-----------------------------------------------------------------------------
set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports CTR_PRIREF]
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports CTR_REF_CLOCK]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports CTR_OCXO]

#-----------------------------------------------------------------------------
# Status inputs
#-----------------------------------------------------------------------------
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports CTR_STATUS0]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports CTR_STATUS1]
set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS25} [get_ports CTR_START_T]