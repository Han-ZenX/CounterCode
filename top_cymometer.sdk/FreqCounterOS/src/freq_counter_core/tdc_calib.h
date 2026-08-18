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
 * Scope
 *
 * The table describes ts_engine/u_tdc, the only TDC chain left in the design.
 * The equal-precision chain (eq_counter/u_tdc_test) that this note used to
 * exclude was deleted along with the equal-precision path on 2026-08-18.
 *=========================================================================*/

/*
 * The clx_fx signal source is 4.9997MHZ
 */

#include "freq_counter_core.h"

/* Reference period the table was taken at. The stored values are absolute
   picoseconds, so a different clk_fs does not invalidate them -- the chain's
   delay is a property of the silicon, not of the clock. Divide by the actual
   period when converting to a fraction of a cycle. */
#define TDC_CALIB_PERIOD_PS     3200.0
#define TDC_CALIB_DEAD_PS            0.000
#define TDC_CALIB_T_TAP_PS          17.778
#define TDC_CALIB_LAST_CODE     182

static const float tdc_phase_ts[TDC_NUM_TAPS] = {
       0.000f,      0.000f,      0.000f,      6.750f,   /*   0 */
      26.392f,     59.534f,     87.354f,     97.827f,   /*   4 */
     114.062f,    130.249f,    140.466f,    150.830f,   /*   8 */
     167.517f,    183.435f,    191.394f,    207.251f,   /*  12 */
     224.780f,    243.909f,    263.123f,    271.375f,   /*  16 */
     287.537f,    304.004f,    311.084f,    335.388f,   /*  20 */
     354.175f,    367.224f,    392.688f,    414.832f,   /*  24 */
     430.396f,    447.119f,    463.782f,    487.561f,   /*  28 */
     506.360f,    524.109f,    550.842f,    568.420f,   /*  32 */
     583.203f,    598.438f,    614.270f,    637.463f,   /*  36 */
     668.152f,    693.384f,    710.791f,    725.098f,   /*  40 */
     732.556f,    743.311f,    761.609f,    772.839f,   /*  44 */
     780.359f,    798.352f,    817.517f,    836.218f,   /*  48 */
     857.825f,    876.917f,    891.589f,    902.808f,   /*  52 */
     922.900f,    938.391f,    953.162f,    977.271f,   /*  56 */
     992.932f,   1006.958f,   1031.360f,   1060.547f,   /*  60 */
    1079.053f,   1096.155f,   1120.483f,   1143.494f,   /*  64 */
    1162.939f,   1183.289f,   1198.352f,   1210.278f,   /*  68 */
    1220.947f,   1234.717f,   1250.586f,   1269.202f,   /*  72 */
    1306.323f,   1343.359f,   1365.747f,   1373.462f,   /*  76 */
    1391.357f,   1408.997f,   1417.395f,   1427.441f,   /*  80 */
    1445.764f,   1463.452f,   1473.621f,   1495.349f,   /*  84 */
    1512.488f,   1528.113f,   1548.242f,   1560.217f,   /*  88 */
    1576.929f,   1592.639f,   1604.858f,   1629.443f,   /*  92 */
    1644.922f,   1658.276f,   1681.030f,   1708.521f,   /*  96 */
    1728.210f,   1740.210f,   1759.448f,   1771.582f,   /* 100 */
    1789.771f,   1809.485f,   1817.786f,   1838.916f,   /* 104 */
    1871.045f,   1900.464f,   1923.645f,   1942.249f,   /* 108 */
    1958.130f,   1976.001f,   1996.887f,   2015.918f,   /* 112 */
    2032.837f,   2051.331f,   2070.312f,   2094.141f,   /* 116 */
    2110.889f,   2125.952f,   2151.306f,   2174.988f,   /* 120 */
    2191.882f,   2205.688f,   2221.875f,   2229.932f,   /* 124 */
    2245.337f,   2259.448f,   2263.721f,   2286.768f,   /* 128 */
    2316.785f,   2341.357f,   2364.709f,   2391.064f,   /* 132 */
    2410.229f,   2427.100f,   2451.147f,   2466.162f,   /* 136 */
    2484.180f,   2499.402f,   2515.906f,   2538.550f,   /* 140 */
    2550.452f,   2566.162f,   2587.219f,   2612.012f,   /* 144 */
    2629.785f,   2644.336f,   2659.668f,   2670.532f,   /* 148 */
    2685.840f,   2699.792f,   2711.340f,   2718.665f,   /* 152 */
    2730.713f,   2746.570f,   2766.455f,   2794.373f,   /* 156 */
    2825.195f,   2857.678f,   2874.951f,   2886.414f,   /* 160 */
    2901.440f,   2913.147f,   2924.231f,   2937.891f,   /* 164 */
    2953.418f,   2968.665f,   2986.523f,   3008.398f,   /* 168 */
    3025.696f,   3041.333f,   3062.842f,   3085.986f,   /* 172 */
    3101.733f,   3117.163f,   3138.281f,   3162.622f,   /* 176 */
    3179.919f,   3190.283f,   3199.988f,   3217.766f,   /* 180 */
    3235.543f,   3253.321f,   3271.099f,   3288.877f,   /* 184 */
    3306.655f,   3324.432f,   3342.210f,   3359.988f,   /* 188 */
    3377.766f,   3395.543f,   3413.321f,   3431.099f,   /* 192 */
    3448.877f,   3466.655f,   3484.432f,   3502.210f,   /* 196 */
    3519.988f,   3537.766f,   3555.543f,   3573.321f,   /* 200 */
    3591.099f,   3608.877f,   3626.655f,   3644.432f,   /* 204 */
    3662.210f,   3679.988f,   3697.766f,   3715.543f,   /* 208 */
    3733.321f,   3751.099f,   3768.877f,   3786.655f,   /* 212 */
    3804.432f,   3822.210f,   3839.988f,   3857.766f,   /* 216 */
    3875.543f,   3893.321f,   3911.099f,   3928.877f,   /* 220 */
    3946.655f,   3964.432f,   3982.210f,   3999.988f,   /* 224 */
    4017.766f,   4035.543f,   4053.321f,   4071.099f,   /* 228 */
    4088.877f,   4106.654f,   4124.432f,   4142.210f,   /* 232 */
    4159.988f,   4177.766f,   4195.543f,   4213.321f,   /* 236 */
    4231.099f,   4248.876f,   4266.654f,   4284.432f,   /* 240 */
    4302.210f,   4319.988f,   4337.766f,   4355.543f,   /* 244 */
    4373.321f,   4391.099f,   4408.876f,   4426.654f,   /* 248 */
    4444.432f,   4462.210f,   4479.988f,   4497.766f,   /* 252 */
};

#endif /* SRC_FREQ_COUNTER_CORE_TDC_CALIB_H_ */
