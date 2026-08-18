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
