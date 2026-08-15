"""Turn the measured code density histograms into a phase lookup table.

Regenerating the table:
  1. Run TdcHistogramTest(32) on hardware, twice, with the source detuned off
     any exact ratio to clk_fs (4.9997 MHz, not 5 MHz -- at an exact 62.5 the
     phase does not sweep and the histogram is meaningless).
  2. Paste the two histograms into RUN1/RUN2 below and update the at-zero and
     total counts from the same runs.
  3. python scripts/gen_tdc_calib.py
  4. Paste tdc_calib_gen.txt into the array in tdc_calib.h, and update the
     provenance block at the top of that file.

Note the table is only valid near the thermal state it was measured in --
carry delay moves several percent over the operating temperature range, which
is a larger error than the non-linearity being corrected. See the header of
tdc_calib.h.

Both TdcHistogramTest runs from 2026-08-15 are merged below: same bitstream,
same source, ~2 minutes apart, so they are independent samples of one
distribution. Merging halves the per-bin statistical error.

Method: with the phase uniformly distributed, the probability of landing in
bin c is its width over the clock period. The phase a code represents is the
midpoint of its own bin, so

    phase[c] = dead + period * ( sum(count[1..c-1]) + count[c]/2 ) / total

where `dead` is the head dead zone -- the window too early to have reached
tap 0, showing up as sum_comb == 0 (reported as at-zero).
"""

RUN1 = [
       0, 1084, 3022, 1287,  525, 1659,  220, 1698,
     162, 1422,   42,  968,  385,  810,  320,  861,
     153, 1384,  469, 1368, 1694,  299, 1183,  254,
     171,  401,  974,  502,  169,  940,  972,  111,
     988,  335,  563, 1402,  232, 1442,  587,  925,
      58, 1317,  619,  719,  455,  966,  572, 1195,
     244, 1421,  694,  124, 1335,  429,  192, 1588,
    1469, 1319,  615, 1139,  255,  865, 1114,  833,
     327, 1250,  517,  194, 1154,   43, 1057,  929,
     343,  672,  825,  682,  892,  232,  595,  305,
    1113,  155,  721,  833,  359, 1050,  549, 1298,
     115, 1381,  527, 1647, 1004, 1248,  547,  690,
     764,  747,  818,  390,  843,  319,  916,  531,
    1025,  649,  292, 1091,  234, 1258,  575,  625,
    1052,  157,  780, 1194,   90, 1551,  567,  484,
     824,  629,  730, 1120,  281, 1163,  820,  696,
     582,  853,  827, 1095,  452,  940,  735,  609,
     127,  568,  764,  591,  907, 1489,  667, 1106,
     369, 1123,  877, 1229,  316,  785,  958,  601,
     713,  497,  361,  294,  878,  462,  652, 1267,
     519, 1611,  445,  187, 1341,  184,  523, 1216,
      31,
]
RUN1_ATZERO = 3332
RUN1_TOTAL = 131072

RUN2 = [
       0, 1080, 3055, 1303,  528, 1613,  252, 1656,
     202, 1337,   43,  864,  374,  808,  354,  856,
     139, 1374,  425, 1429, 1784,  318, 1181,  261,
     148,  423, 1012,  492,  174,  910,  980,   80,
     995,  322,  543, 1393,  262, 1446,  572,  965,
      31, 1391,  547,  676,  526,  879,  594, 1227,
     245, 1326,  697,  124, 1402,  433,  181, 1565,
    1454, 1286,  635, 1144,  221,  910, 1085,  924,
     295, 1207,  541,  175, 1107,   59,  998, 1026,
     302,  730,  845,  628,  820,  247,  578,  289,
    1176,  154,  715,  847,  308, 1100,  601, 1261,
      97, 1401,  570, 1674,  987, 1192,  494,  625,
     753,  720,  858,  355,  797,  358,  886,  576,
    1002,  710,  269, 1190,  237, 1315,  567,  681,
     939,  185,  772, 1159,  110, 1507,  610,  556,
     746,  671,  718, 1231,  241, 1111,  860,  718,
     547,  842,  846, 1098,  483,  856,  795,  619,
     149,  570,  751,  531,  944, 1463,  673, 1036,
     397, 1071,  899, 1156,  358,  763,  902,  628,
     689,  568,  371,  284,  933,  454,  631, 1267,
     467, 1615,  473,  137, 1369,  192,  478, 1313,
     121,
]
RUN2_ATZERO = 3420
RUN2_TOTAL = 131072

NUM_TAPS = 256
PERIOD_PS = 3200.0          # 1 / 312.5 MHz

hist = [0] * NUM_TAPS
for i, v in enumerate(RUN1):
    hist[i] += v
for i, v in enumerate(RUN2):
    hist[i] += v

at_zero = RUN1_ATZERO + RUN2_ATZERO
total = RUN1_TOTAL + RUN2_TOTAL
valid = sum(hist)

print("merged: total=%d valid=%d at-zero=%d  (valid+atzero=%d)"
      % (total, valid, at_zero, valid + at_zero))

dead_ps = PERIOD_PS * at_zero / total
covered_ps = PERIOD_PS * valid / total
print("dead zone  %.3f ps" % dead_ps)
print("covered    %.3f ps" % covered_ps)

used = [c for c in range(NUM_TAPS) if hist[c] != 0]
c_lo, c_hi = used[0], used[-1]
n_used = c_hi - c_lo + 1
t_tap = covered_ps / n_used
print("codes %d..%d (%d used), t_tap %.3f ps" % (c_lo, c_hi, n_used, t_tap))

# Phase of each code: dead zone first, then the midpoint of the code's own bin.
phase = [0.0] * NUM_TAPS
phase[0] = dead_ps / 2.0            # sum_comb == 0: somewhere inside the dead zone

acc = 0
for c in range(1, NUM_TAPS):
    if c <= c_hi:
        w = PERIOD_PS * hist[c] / total
        phase[c] = dead_ps + PERIOD_PS * acc / total + w / 2.0
        acc += hist[c]
    else:
        # Past the last reachable code. Never hit at this temperature, but a
        # colder die makes the chain faster and pushes codes further out, so
        # extrapolate linearly instead of leaving a cliff.
        phase[c] = phase[c_hi] + (c - c_hi) * t_tap

# Sanity: phase must be monotonic, else the table would fold time back on itself
bad = [c for c in range(1, NUM_TAPS) if phase[c] < phase[c - 1]]
print("monotonic: %s" % ("yes" if not bad else "NO at %s" % bad[:5]))
print("phase[%d] = %.1f ps, phase[%d] = %.1f ps" % (c_lo, phase[c_lo], c_hi, phase[c_hi]))

widths = [PERIOD_PS * hist[c] / total for c in range(c_lo, c_hi + 1)]
print("bin width  min %.3f  max %.3f  mean %.3f ps"
      % (min(widths), max(widths), sum(widths) / len(widths)))

# Sample-weighted mean bin width: what a random edge actually lands in.
wsum = sum(PERIOD_PS * hist[c] / total * hist[c] for c in range(c_lo, c_hi + 1))
print("sample-weighted mean bin width %.3f ps" % (wsum / valid))

with open("tdc_calib_gen.txt", "w") as fh:
    fh.write("static const float tdc_phase_ts[TDC_NUM_TAPS] = {\n")
    for base in range(0, NUM_TAPS, 4):
        row = "   "
        for c in range(base, base + 4):
            row += " %9.3ff," % phase[c]
        fh.write(row + ("   /* %3d */\n" % base))
    fh.write("};\n")
print("written tdc_calib_gen.txt")
