#ifndef SRC_FREQ_COUNTER_CORE_TDC_CALIB_H_
#define SRC_FREQ_COUNTER_CORE_TDC_CALIB_H_

/*===========================================================================
 * TDC code density calibration -- static table
 *
 * Maps a raw TDC code to the phase it represents, in picoseconds measured
 * from the sampling edge. Replaces the assumption that code c means
 * c/NUM_TAPS of a clock period, which is wrong twice over:
 *
 *   - The scale is off. Only 168 of the 256 codes are reachable (a phase
 *     cannot exceed one period), so code 168 is a full period, not 168/256 =
 *     0.656 of one.
 *   - The steps are not equal. Measured bin widths run from 1.0 ps to 74.2 ps
 *     against an 18.56 ps average -- a 71:1 spread. And because a random edge
 *     lands in a bin with probability proportional to its width, the mean bin
 *     an edge actually falls into is 25.2 ps wide, not 18.56.
 *
 *---------------------------------------------------------------------------
 * How this table was produced
 *
 *   TdcHistogramTest, 2 x 32 x 4096 = 262144 samples merged, 2026-08-15
 *   Part      xc7z020clg400-2
 *   Chain     ts_engine/u_tdc, SLICE_X62Y62..Y77, clk_fs = 312.5 MHz
 *   Source    4.9997 MHz -- deliberately off the exact 62.5 ratio so the
 *             phase sweeps the period uniformly
 *   Result    dead zone 82.4 ps, 168 codes covering 3117.6 ps,
 *             t_tap 18.557 ps, chain span 4750 ps (1.48 periods)
 *
 * With a uniform phase the probability of landing in bin c equals its width
 * over the period, so the phase a code stands for is the midpoint of its own
 * bin:
 *
 *   phase[c] = dead + period * ( sum(count[1..c-1]) + count[c]/2 ) / total
 *
 * phase[0] is the dead zone midpoint. Code 0 means sum_comb == 0, i.e. the
 * edge arrived too late to have reached tap 0 -- the chain head costs extra
 * delay because a general signal can only enter through CYINIT. Those samples
 * carry tdc_ok = 0 but they are not garbage: their phase is known to within
 * the 82.4 ps dead zone, which beats discarding them.
 *
 * Codes 169..255 are never reached at this temperature. They are extrapolated
 * linearly at t_tap so that a colder, faster die -- which pushes codes further
 * out -- meets a smooth continuation instead of a cliff.
 *
 *---------------------------------------------------------------------------
 * When this table stops being right
 *
 * Carry delay moves with temperature and supply voltage. Vivado's slow corner
 * reports 27.7 ps/tap against the 18.56 ps measured here, a 49% spread across
 * the full PVT range. A die warming from 25 C to 55 C plausibly slows by
 * 5-10%, which is a phase error of up to 160-320 ps -- larger than the
 * non-linearity this table corrects.
 *
 * So: this table is only valid near the thermal state it was taken in. It
 * exists to give a sane starting point at power-on and a fallback for signals
 * whose phase does not sweep (an input at an exact integer ratio to clk_fs
 * pins the phase to a couple of points and cannot be self-calibrated). A
 * runtime table rebuilt from live data tracks temperature and is the more
 * accurate option whenever the phase does sweep.
 *
 *---------------------------------------------------------------------------
 * NOT covered by this table
 *
 * eq_counter/u_tdc_test is a separate physical chain (SLICE_X58Y75..Y90) with
 * its own bin distribution, and it is clocked by clk_fx rather than clk_fs, so
 * its full scale is the period of the signal under test, not a constant. It
 * has no calibration data yet. Do not use this table for it.
 *=========================================================================*/

#include "freq_counter_core.h"

/* Reference period the table was taken at. The stored values are absolute
   picoseconds, so a different clk_fs does not invalidate them -- the chain's
   delay is a property of the silicon, not of the clock. Divide by the actual
   period when converting to a fraction of a cycle. */
#define TDC_CALIB_PERIOD_PS     3200.0
#define TDC_CALIB_DEAD_PS         82.422
#define TDC_CALIB_T_TAP_PS        18.557
#define TDC_CALIB_LAST_CODE      168

static const float tdc_phase_ts[TDC_NUM_TAPS] = {
       41.211f,    95.630f,   145.929f,   198.828f,   /*   0 */
      221.063f,   247.461f,   270.312f,   293.665f,   /*   4 */
      316.357f,   335.419f,   352.777f,   364.478f,   /*   8 */
      380.292f,   394.800f,   408.789f,   423.383f,   /*  12 */
      435.645f,   454.260f,   476.550f,   499.078f,   /*  16 */
      537.378f,   562.372f,   580.566f,   598.138f,   /*  20 */
      603.229f,   610.205f,   627.356f,   645.544f,   /*  24 */
      653.705f,   667.090f,   690.295f,   703.375f,   /*  28 */
      716.644f,   732.758f,   743.518f,   767.328f,   /*  32 */
      787.402f,   808.044f,   832.745f,   851.355f,   /*  36 */
      863.434f,   880.505f,   904.150f,   919.781f,   /*  40 */
      934.283f,   951.532f,   969.910f,   991.809f,   /*  44 */
     1009.576f,  1029.327f,  1054.584f,  1064.587f,   /*  48 */
     1082.806f,  1104.773f,  1112.311f,  1133.832f,   /*  52 */
     1170.917f,  1204.657f,  1228.186f,  1249.750f,   /*  56 */
     1266.589f,  1280.328f,  1304.584f,  1328.729f,   /*  60 */
     1343.250f,  1362.042f,  1383.496f,  1392.206f,   /*  64 */
     1408.258f,  1422.681f,  1435.846f,  1460.321f,   /*  68 */
     1476.190f,  1488.684f,  1507.434f,  1525.623f,   /*  72 */
     1544.067f,  1557.440f,  1567.523f,  1578.308f,   /*  76 */
     1595.905f,  1611.761f,  1622.412f,  1641.431f,   /*  80 */
     1655.756f,  1672.949f,  1693.091f,  1715.729f,   /*  84 */
     1732.642f,  1750.916f,  1774.591f,  1801.556f,   /*  88 */
     1833.978f,  1861.023f,  1882.269f,  1896.649f,   /*  92 */
     1913.934f,  1932.147f,  1951.331f,  1966.107f,   /*  96 */
     1980.664f,  1994.806f,  2009.937f,  2027.692f,   /* 100 */
     2046.820f,  2067.487f,  2079.205f,  2096.552f,   /* 104 */
     2113.348f,  2131.927f,  2154.602f,  2169.543f,   /* 108 */
     2189.667f,  2203.906f,  2215.466f,  2239.301f,   /* 112 */
     2254.883f,  2274.768f,  2300.616f,  2314.148f,   /* 116 */
     2330.078f,  2347.595f,  2364.368f,  2387.555f,   /* 120 */
     2405.090f,  2422.156f,  2446.289f,  2465.173f,   /* 124 */
     2480.695f,  2497.931f,  2518.488f,  2542.084f,   /* 128 */
     2561.176f,  2577.844f,  2598.145f,  2614.978f,   /* 132 */
     2624.158f,  2632.788f,  2648.981f,  2665.076f,   /* 136 */
     2683.221f,  2712.537f,  2738.733f,  2759.985f,   /* 140 */
     2777.734f,  2795.801f,  2820.032f,  2845.428f,   /* 144 */
     2864.099f,  2877.661f,  2898.462f,  2917.316f,   /* 148 */
     2933.374f,  2948.431f,  2959.399f,  2967.395f,   /* 152 */
     2981.976f,  2998.621f,  3012.042f,  3035.339f,   /* 156 */
     3056.824f,  3082.532f,  3107.825f,  3115.405f,   /* 160 */
     3133.923f,  3152.759f,  3161.163f,  3182.709f,   /* 164 */
     3199.072f,  3217.629f,  3236.186f,  3254.743f,   /* 168 */
     3273.300f,  3291.857f,  3310.414f,  3328.971f,   /* 172 */
     3347.528f,  3366.085f,  3384.642f,  3403.199f,   /* 176 */
     3421.756f,  3440.313f,  3458.870f,  3477.427f,   /* 180 */
     3495.984f,  3514.541f,  3533.098f,  3551.656f,   /* 184 */
     3570.213f,  3588.770f,  3607.327f,  3625.884f,   /* 188 */
     3644.441f,  3662.998f,  3681.555f,  3700.112f,   /* 192 */
     3718.669f,  3737.226f,  3755.783f,  3774.340f,   /* 196 */
     3792.897f,  3811.454f,  3830.011f,  3848.568f,   /* 200 */
     3867.125f,  3885.682f,  3904.239f,  3922.796f,   /* 204 */
     3941.353f,  3959.910f,  3978.467f,  3997.024f,   /* 208 */
     4015.581f,  4034.138f,  4052.695f,  4071.252f,   /* 212 */
     4089.809f,  4108.366f,  4126.923f,  4145.480f,   /* 216 */
     4164.037f,  4182.594f,  4201.151f,  4219.708f,   /* 220 */
     4238.265f,  4256.822f,  4275.379f,  4293.936f,   /* 224 */
     4312.493f,  4331.050f,  4349.607f,  4368.164f,   /* 228 */
     4386.721f,  4405.278f,  4423.835f,  4442.392f,   /* 232 */
     4460.949f,  4479.506f,  4498.063f,  4516.620f,   /* 236 */
     4535.177f,  4553.734f,  4572.291f,  4590.848f,   /* 240 */
     4609.405f,  4627.962f,  4646.519f,  4665.076f,   /* 244 */
     4683.633f,  4702.190f,  4720.747f,  4739.304f,   /* 248 */
     4757.861f,  4776.418f,  4794.975f,  4813.532f,   /* 252 */
};

#endif /* SRC_FREQ_COUNTER_CORE_TDC_CALIB_H_ */
