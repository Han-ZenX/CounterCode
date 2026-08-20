/*
 * scpi.c
 *
 *  Command table and dispatcher. Replaces the two hand-written character-by-
 *  character parsers that used to live in uart.c and net/tcp_server.c.
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "scpi.h"
#include "../freq_counter_core/freq_counter_core.h"

typedef int (*scpi_handler_t)(const char *args, char *resp);

typedef struct {
	const char *name;
	scpi_handler_t handler;
} scpi_cmd_t;

//============================================================================
// Matching helpers
//============================================================================

static int scpi_is_eol(char c)
{
	return (c == '\0' || c == '\r' || c == '\n');
}

static char scpi_upper(char c)
{
	return (c >= 'a' && c <= 'z') ? (char)(c - 'a' + 'A') : c;
}

/*
 * Match one table entry against the head of a line. Table names are stored in
 * upper case and the line is folded while comparing, so commands are accepted
 * in any case.
 *
 * A match requires the name to be followed by end-of-line or a space. That is
 * what keeps "FREQ:GATE:TIME?" and "FREQ:GATE:TIME 1.5" on separate entries no
 * matter how the table is ordered, and likewise "READ?" and "READ:TIME?".
 *
 * Returns a pointer to the argument text (name and any following spaces
 * skipped), or NULL when the entry does not match.
 */
static const char *scpi_match(const char *line, const char *name)
{
	while (*name) {
		if (scpi_upper(*line) != *name)
			return NULL;
		line++;
		name++;
	}

	if (!scpi_is_eol(*line) && *line != ' ')
		return NULL;

	while (*line == ' ')
		line++;

	return line;
}

//============================================================================
// Handlers
//
// Every handler writes its response into resp (SCPI_RESP_MAX bytes) and
// returns the response length, or 0 for no response.
//============================================================================

static int cmd_idn(const char *args, char *resp)
{
	(void)args;
	return snprintf(resp, SCPI_RESP_MAX,
			"HALLIWAY,FREQ-COUNTER,C1804,1.00-1.00-01-1\n");
}

/*
 * *RST and *OPC? are recognised but do nothing, which is what the TCP path did
 * before. They stay in the table so they read as known-but-unimplemented
 * rather than silently falling through to the unknown-command path.
 */
static int cmd_noop(const char *args, char *resp)
{
	(void)args;
	(void)resp;
	return 0;
}

static int cmd_read_freq(const char *args, char *resp)
{
	(void)args;
	ReadFr(resp);
	return (int)strlen(resp);
}

static int cmd_conf_freq_query(const char *args, char *resp)
{
	(void)args;
	return snprintf(resp, SCPI_RESP_MAX, "%d\n", FREF);
}

static int cmd_conf_freq(const char *args, char *resp)
{
	(void)resp;
	FREF = atoi(args);
	return 0;
}

/*
 * Format a value the way a 53230A does: sign, one digit, 14 decimals, then a
 * three-digit signed exponent -- 0.1 prints as "+1.00000000000000E-001".
 *
 * printf produces the mantissa directly, but the C library only guarantees two
 * exponent digits (newlib emits exactly two), so the exponent is re-emitted
 * here at the fixed width the instrument uses.
 */
static int scpi_format_53230(char *resp, double value)
{
	char buf[32];
	char *e;
	int exp;

	snprintf(buf, sizeof(buf), "%+.14E", value);

	e = strchr(buf, 'E');
	if (e == NULL)          /* inf / nan carry no exponent field */
		return snprintf(resp, SCPI_RESP_MAX, "%s\n", buf);

	exp = atoi(e + 1);
	*e = '\0';

	return snprintf(resp, SCPI_RESP_MAX, "%sE%c%03d\n",
			buf, (exp < 0) ? '-' : '+', (exp < 0) ? -exp : exp);
}

/* Gate time is held in milliseconds; a 53230A reports it in seconds. */
static int cmd_gate_time_query(const char *args, char *resp)
{
	(void)args;
	return scpi_format_53230(resp, GATE_TIME / 1000.0);
}

/* Gate time is given in seconds on the wire and held in milliseconds. */
static int cmd_gate_time(const char *args, char *resp)
{
	(void)resp;
	GATE_TIME = atof(args) * 1000.0;
	SetGate(GATE_TIME);
	return 0;
}

/*
 * Allowed frequency deviation in ppm. This is the settling criterion
 * STARTUP:TIME? applies; the ordinary measurement path does not read it.
 *
 * The query answers in the same 53230A scientific format as FREQ:GATE:TIME?.
 */
static int cmd_ppm_query(const char *args, char *resp)
{
	(void)args;
	return scpi_format_53230(resp, PPM_RANGE);
}

static int cmd_ppm(const char *args, char *resp)
{
	(void)resp;
	PPM_RANGE = atof(args);
	return 0;
}

/*
 * Start-up capture span.
 *
 * Milliseconds, not the seconds FREQ:GATE:TIME takes. This is not a 53230A
 * command and STARTUP:TIME? answers in milliseconds, so one unit across the
 * STARTUP group is worth more than matching an unrelated command.
 *
 * The span only sets a target: edge_skip is an integer, so the instrument
 * rounds up to the next value that covers it and reports what it actually
 * used on the console. Below roughly STARTUP_ENTRIES / span the skip bottoms
 * out at zero and the coverage stretches instead.
 */
static int cmd_startup_span_query(const char *args, char *resp)
{
	(void)args;
	return snprintf(resp, SCPI_RESP_MAX, "%.3f\n", STARTUP_SPAN);
}

/*
 * No response, matching CONF:FREQ, FREQ:GATE:TIME and PPM.
 *
 * An earlier version acknowledged with "1". That is arguably the better
 * protocol, but it made this the only setter in the table that answers, and a
 * host written against the existing convention leaves the byte sitting in its
 * receive buffer -- after which every later read is one response behind, and
 * STARTUP:TIME? returns "1" forever. One convention, consistently wrong, beats
 * two conventions. Read back with STARTUP:SPAN? when confirmation is needed.
 */
static int cmd_startup_span(const char *args, char *resp)
{
	double v = atof(args);

	(void)resp;

	if (v > 0.0)
		STARTUP_SPAN = v;

	return 0;
}

/*
 * Target time resolution of the start-up measurement, in microseconds.
 *
 * Microseconds while STARTUP:SPAN is milliseconds -- the two are three orders
 * of magnitude apart in practice, so mixing them up shows up immediately as an
 * absurd window count, which the instrument clamps and reports on the console.
 * Neither setter answers; read back with STARTUP:WIN? to confirm.
 *
 * This is what the operator actually cares about; the entries-per-window count
 * that produces it is derived from the span, because the same count means a
 * different resolution at a different span.
 *
 * A target, not a guarantee. The window must hold at least 8 entries, and at
 * the default 128 ms span 10 us only works out to 5 -- so the resolution lands
 * at 15.6 us instead. Shortening the span raises the entry count and, with it,
 * both reaches the requested resolution and improves the frequency resolution:
 * at 10 us, a 33 ms span gives 20 entries and 2.31 ppm, a 6.5 ms span gives
 * 101 entries and 1.03 ppm. Span not needed to cover the transient is span
 * traded away for nothing.
 */
static int cmd_startup_win_query(const char *args, char *resp)
{
	(void)args;
	return snprintf(resp, SCPI_RESP_MAX, "%.3f\n", STARTUP_WIN);
}

/* No response, for the reason given above cmd_startup_span(). */
static int cmd_startup_win(const char *args, char *resp)
{
	double v = atof(args);

	(void)resp;

	if (v > 0.0)
		STARTUP_WIN = v;

	return 0;
}

/*
 * Start watching CTR_START_T. A write with no response, on purpose.
 *
 * The bench sequence is: open the DUT's VCC (CTR_START_T follows it low),
 * write STARTUP:INIT, close VCC (CTR_START_T goes high and the measurement
 * starts there), then send STARTUP:TIME? for the answer. The host does not
 * read anything back here -- it proceeds straight to closing VCC -- so this
 * handler must not block and must not print. It hands the job to the
 * measurement task and returns; the instrument is watching the trigger within
 * microseconds, against the milliseconds a relay takes to close.
 *
 * Allow a few milliseconds between this command and closing VCC anyway: the
 * task still has to poison a 512 KB buffer and arm the DMA, about 1-2 ms.
 *
 * A refusal is not silent, it is just deferred -- the reason comes back as
 * the answer to STARTUP:TIME? (-3 fixture VCC still connected, -5 CONF:FREQ
 * or PPM not set, -9 no measurement task), and is printed on the serial
 * console as it happens.
 *
 * One refusal is deliberately invisible to the host: a second INIT while a
 * measurement is still running is ignored rather than reported, because
 * reporting it would mean discarding the measurement in flight. The pending
 * STARTUP:TIME? then answers with that measurement.
 */
static int cmd_startup_init(const char *args, char *resp)
{
	(void)args;
	(void)resp;

	StartupArm();
	return 0;
}

/*
 * Collect the start-up time, in milliseconds from the CTR_START_T edge.
 *
 * Blocks until the measurement finishes, so it can be sent as soon as VCC has
 * been closed -- it simply waits. Sending it again returns the same answer;
 * the result is only discarded by the next STARTUP:INIT.
 *
 * A negative answer is a failure code, not a duration:
 *
 *   -1  captured cleanly but the frequency never settled within the span
 *   -2  CTR_START_T stayed low until the trigger timeout (10 s)
 *   -3  CTR_START_T was already high at STARTUP:INIT -- fixture VCC was never
 *       opened, so t = 0 could not be the power-up instant
 *   -4  the capture itself failed
 *   -5  CONF:FREQ or PPM not set
 *   -6  no STARTUP:INIT preceded this
 *   -7  the measurement did not finish within the wait timeout
 *   -9  the measurement task was never created
 *
 * The frequency curve, the first-edge time and the resolution achieved go to
 * the serial console. Worst case it holds the link for the full wait timeout,
 * so the host's socket timeout has to exceed that.
 */
static int cmd_startup_time(const char *args, char *resp)
{
	(void)args;
	return snprintf(resp, SCPI_RESP_MAX, "%.4f\n", StartupWait());
}

/*
 * The three SIG:* setters share one shape: a single 0/1 argument acknowledged
 * with "1". Anything else is ignored without a response, as before.
 */
static int scpi_set_flag(const char *args, char *resp, int (*setter)(u32))
{
	if (*args != '0' && *args != '1')
		return 0;

	setter((u32)(*args - '0'));
	return snprintf(resp, SCPI_RESP_MAX, "1\n");
}

static int cmd_sig_priref(const char *args, char *resp)
{
	return scpi_set_flag(args, resp, Set_CTR_PRIREF);
}

static int cmd_sig_refclock(const char *args, char *resp)
{
	return scpi_set_flag(args, resp, Set_CTR_REF_CLOCK);
}

static int cmd_sig_ocxo(const char *args, char *resp)
{
	return scpi_set_flag(args, resp, Set_CTR_OCXO);
}

static int cmd_sig_status0(const char *args, char *resp)
{
	(void)args;
	return snprintf(resp, SCPI_RESP_MAX, "%d\n", ReadSTATUS0() ? 1 : 0);
}

static int cmd_sig_status1(const char *args, char *resp)
{
	(void)args;
	return snprintf(resp, SCPI_RESP_MAX, "%d\n", ReadSTATUS1() ? 1 : 0);
}

/*
 * Current level on CTR_START_T (J14), the start-up trigger.
 *
 * Exists for one job: telling "the fixture never opened VCC" apart from "the
 * pin is floating high" when STARTUP:INIT is refused. Both come back as -3
 * from STARTUP:TIME?, and without a way to look at the pin there is nothing
 * to measure against.
 *
 * The usual sequence is to open the fixture VCC and then poll this until it
 * reads 0 before sending STARTUP:INIT. A rail with decoupling capacitance
 * does not fall below the LVCMOS25 input threshold the instant it is
 * disconnected, and if it never reaches 0 at all the fixture is not pulling
 * the node down when VCC is open.
 */
static int cmd_sig_startt(const char *args, char *resp)
{
	(void)args;
	return snprintf(resp, SCPI_RESP_MAX, "%d\n", ReadSTARTT() ? 1 : 0);
}

/*
 * Re-measure the TDC delay chain and print a replacement for the table in
 * tdc_calib.h, to be pasted in and rebuilt.
 *
 * The table goes to the serial console rather than into resp: 256 entries is
 * roughly 13 kB and the response buffer is 384 bytes. The reply here only says
 * where to look.
 *
 * Takes a few seconds, and it holds the link while it runs.
 */
static int cmd_cal_tdc(const char *args, char *resp)
{
	int rounds = atoi(args);          /* 0 (absent or junk) selects the default */

	PrintTdcCalibTable(rounds);

	return snprintf(resp, SCPI_RESP_MAX,
			"tdc_calib.h block printed on the serial console\n");
}

/*
 * The reference frequency the measurement path is using right now, in the same
 * 53230A scientific format as FREQ:GATE:TIME?.
 *
 * This is GetClkFsFreq(), so CTR_STATUS0 decides whether it is the calibrated
 * value from the SD card or the nominal 312.5 MHz. It answers "what is the
 * instrument counting against", not "what is stored on the card" -- those
 * differ whenever CTR_STATUS0 is low.
 */
static int cmd_cal_ref_val(const char *args, char *resp)
{
	(void)args;

	return scpi_format_53230(resp, (double)GetClkFsFreq());
}

/*
 * Prepare the instrument for a reference calibration: route the external
 * 10 MHz to the counter and away from the PLL.
 *
 * With CTR_PRIREF high, the 10 MHz applied for calibration also reaches the
 * LMK5B12204's PRIREF_P/PRIREF_N inputs and the PLL locks its 312.5 MHz output
 * to it. Measuring afterwards then returns exactly 312.5 MHz regardless of
 * what the OCXO is really doing -- the very quantity the calibration exists to
 * find has been locked away, and the result looks perfectly healthy. Both pins
 * come up high in init_freqcounter(), so on a freshly booted instrument this
 * command must precede CAL:REF?.
 *
 * Changing the PLL's reference selection takes time to settle, and nothing
 * here waits for it. Leave a pause before CAL:REF?.
 */
static int cmd_cal_ref_prep(const char *args, char *resp)
{
	(void)args;

	Set_CTR_REF_CLOCK(1);
	Set_CTR_PRIREF(0);

	return snprintf(resp, SCPI_RESP_MAX, "1\n");
}

/*
 * The counterpart to CAL:REF:PREP: hand the external 10 MHz back to the PLL
 * and leave it locked there.
 *
 * With both pins high the 10 MHz on clk_10m also reaches the LMK5B12204's
 * PRIREF_P/PRIREF_N inputs, so the PLL holds its 312.5 MHz output locked to
 * the external standard rather than to the on-board OCXO. This is the state
 * init_freqcounter() leaves behind, and the one to return to once a
 * calibration is done -- CAL:REF:PREP drops PRIREF for the duration of
 * CAL:REF? and nothing puts it back on its own.
 *
 * Re-acquiring lock takes time and nothing here waits for it. Leave a pause
 * before the next measurement.
 */
static int cmd_cal_ref_lock(const char *args, char *resp)
{
	(void)args;

	Set_CTR_REF_CLOCK(1);
	Set_CTR_PRIREF(1);

	return snprintf(resp, SCPI_RESP_MAX, "1\n");
}

/*
 * Measure the external 10 MHz reference on clk_10m, derive the true clk_fs
 * frequency from it and store that in FREQ.TXT.
 *
 * CAL:REF:PREP must have run first, or the PLL is locked to the very signal
 * being measured and the answer is 312.5 MHz by construction.
 *
 * Replies 1 only when the value was derived, passed the range check and
 * reached the card; anything short of that is 0. The derived frequency and the
 * reason for a refusal both go to the serial console -- this reply is a yes/no
 * about whether the instrument is now calibrated, not a measurement result.
 *
 * Takes about 1.1 s (fixed 1 s gate) and holds the link while it runs.
 */
static int cmd_cal_ref(const char *args, char *resp)
{
	(void)args;

	return snprintf(resp, SCPI_RESP_MAX, "%d\n",
			(CalibrateRefClk() == TS_OK) ? 1 : 0);
}

//============================================================================
// Command table
//============================================================================

static const scpi_cmd_t g_scpi_cmds[] = {
	{ "*IDN?",            cmd_idn                   },
	{ "*RST",             cmd_noop                  },
	{ "*OPC?",            cmd_noop                  },
	{ "READ?",            cmd_read_freq             },
	{ "MEAS:FREQ?",       cmd_read_freq             },
	{ "CONF:FREQ?",       cmd_conf_freq_query       },
	{ "CONF:FREQ",        cmd_conf_freq             },
	{ "FREQ:GATE:TIME?",  cmd_gate_time_query       },
	{ "FREQ:GATE:TIME",   cmd_gate_time             },
	{ "PPM?",             cmd_ppm_query             },
	{ "PPM",              cmd_ppm                   },
	{ "STARTUP:SPAN?",    cmd_startup_span_query    },
	{ "STARTUP:SPAN",     cmd_startup_span          },
	{ "STARTUP:WIN?",     cmd_startup_win_query     },
	{ "STARTUP:WIN",      cmd_startup_win           },
	{ "STARTUP:INIT",     cmd_startup_init          },
	{ "STARTUP:TIME?",    cmd_startup_time          },
	{ "SIG:PRIREF",       cmd_sig_priref            },
	{ "SIG:REFCLOCK",     cmd_sig_refclock          },
	{ "SIG:OCXO",         cmd_sig_ocxo              },
	{ "SIG:STATUS0?",     cmd_sig_status0           },
	{ "SIG:STATUS1?",     cmd_sig_status1           },
	{ "SIG:STARTT?",      cmd_sig_startt            },
	{ "CAL:REF:PREP",     cmd_cal_ref_prep          },
	{ "CAL:REF:LOCK",     cmd_cal_ref_lock          },
	{ "CAL:REF:VAL?",     cmd_cal_ref_val           },
	{ "CAL:REF?",         cmd_cal_ref               },
	{ "CAL:TDC?",         cmd_cal_tdc               },
};

#define SCPI_CMD_COUNT (sizeof(g_scpi_cmds) / sizeof(g_scpi_cmds[0]))

//============================================================================
// Dispatcher
//============================================================================

int scpi_execute(const char *line, char *resp)
{
	unsigned int i;

	while (*line == ' ')
		line++;

	for (i = 0; i < SCPI_CMD_COUNT; i++) {
		const char *args = scpi_match(line, g_scpi_cmds[i].name);
		int len;

		if (args == NULL)
			continue;

		resp[0] = '\0';
		len = g_scpi_cmds[i].handler(args, resp);

		if (len < 0)
			len = 0;
		else if (len > SCPI_RESP_MAX - 1)
			len = SCPI_RESP_MAX - 1; /* snprintf reports the untruncated length */

		return len;
	}

	return 0;
}
