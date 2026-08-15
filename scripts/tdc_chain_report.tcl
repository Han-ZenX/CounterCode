#=============================================================================
# tdc_chain_report.tcl -- report the placement of the TDC carry chains
#
# Run on an implemented design:
#     open_run impl_1
#     source scripts/tdc_chain_report.tcl
#
# Why this is worth looking at
# ----------------------------
# The cascade goes CO[3] -> COUT -> CIN of the slice directly above, which is a
# dedicated hard-wired connection. A healthy chain is therefore one X column
# with consecutive Y values, and the placer has essentially no freedom to make
# it otherwise. A break in the column means something forced a detour through
# general interconnect, and that one stage then carries far more delay than the
# rest -- which is exactly the non-linearity a code density test would show up
# as one absurdly wide bin.
#
# This reports geometry only. Tap delay in picoseconds comes from
# TdcHistogramTest on hardware; per-CARRY4 carry delay on a -1 part is in the
# 40-50 ps range, so a 16-block chain lands somewhere near 0.7 ns.
#=============================================================================

proc report_tdc_chain {label pattern} {
    puts ""
    puts "---- $label ----"

    set cells [get_cells -quiet -hier -filter \
                   "REF_NAME == CARRY4 && NAME =~ $pattern"]

    if {[llength $cells] == 0} {
        puts "  no CARRY4 cells match: $pattern"
        puts "  (check the instance path -- it changes with the BD wrapper name)"
        return
    }

    set cells [lsort -dictionary $cells]

    set xs {}
    set ys {}
    foreach c $cells {
        set loc [get_property LOC $c]
        if {$loc eq ""} {
            puts "  [format %-52s $c]  UNPLACED"
            continue
        }
        regexp {SLICE_X(\d+)Y(\d+)} $loc -> x y
        lappend xs $x
        lappend ys $y
        puts "  [format %-52s [lindex [split $c /] end]]  $loc"
    }

    if {[llength $ys] == 0} {
        puts "  nothing placed"
        return
    }

    set uniq_x [lsort -unique $xs]
    set sorted_y [lsort -integer $ys]
    set ymin [lindex $sorted_y 0]
    set ymax [lindex $sorted_y end]
    set span [expr {$ymax - $ymin + 1}]

    puts ""
    puts "  blocks      [llength $cells]"
    puts "  X columns   [llength $uniq_x]  ($uniq_x)"
    puts "  Y range     $ymin .. $ymax  (span $span rows)"

    if {[llength $uniq_x] == 1 && $span == [llength $cells]} {
        puts "  VERDICT     continuous single column -- chain is compact"
    } else {
        puts "  VERDICT     NOT continuous -- some stage detours through"
        puts "              general interconnect and will be far slower"
    }
}

proc report_tap_regs {label pattern} {
    set regs [get_cells -quiet -hier -filter "NAME =~ $pattern"]
    if {[llength $regs] == 0} {
        return
    }

    set ys {}
    foreach r $regs {
        set loc [get_property LOC $r]
        if {$loc eq ""} continue
        regexp {SLICE_X(\d+)Y(\d+)} $loc -> x y
        lappend ys $y
    }
    if {[llength $ys] == 0} return

    set sorted [lsort -integer $ys]
    puts "  tap_reg     [llength $regs] flops over Y [lindex $sorted 0] ..\
[lindex $sorted end]"
    puts "              (spread here is sampling skew -- it adds directly to\
the jitter of every measurement)"
}

puts "============================================================"
puts " TDC carry chain placement"
puts "============================================================"

report_tdc_chain "timestamp engine chain" "*u_ts_engine/u_tdc/*carry4_inst*"
report_tap_regs  "" "*u_ts_engine/u_tdc/tap_reg_reg*"

report_tdc_chain "equal-precision test chain" "*u_eq_counter/u_tdc_test/*carry4_inst*"
report_tap_regs  "" "*u_eq_counter/u_tdc_test/tap_reg_reg*"

puts ""
