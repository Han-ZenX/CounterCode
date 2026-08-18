/*
 * scpi.c
 *
 *  Command table and dispatcher. Replaces the two hand-written character-by-
 *  character parsers that used to live in uart.c and freertos_tcp_perf_server.c.
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
	{ "SIG:PRIREF",       cmd_sig_priref            },
	{ "SIG:REFCLOCK",     cmd_sig_refclock          },
	{ "SIG:OCXO",         cmd_sig_ocxo              },
	{ "SIG:STATUS0?",     cmd_sig_status0           },
	{ "SIG:STATUS1?",     cmd_sig_status1           },
	{ "CAL:REF:PREP",     cmd_cal_ref_prep          },
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
