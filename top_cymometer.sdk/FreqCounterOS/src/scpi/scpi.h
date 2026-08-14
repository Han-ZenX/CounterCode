/*
 * scpi.h
 *
 *  Unified SCPI command table shared by the UART and TCP transports.
 *
 *  A transport is responsible for framing only: collect one line, hand it to
 *  scpi_execute(), then send back the bytes it produced. All command parsing
 *  and all hardware access live in scpi.c, so a command has to be added in
 *  exactly one place to be available on both links.
 */

#ifndef SRC_SCPI_SCPI_H_
#define SRC_SCPI_SCPI_H_

/*
 * Size of the response buffer a transport must supply.
 *
 * ReadFr() formats its result with "%.5f" into this buffer without any bound
 * of its own. A double that is out of the expected frequency range can expand
 * to roughly 320 characters, so the buffer is sized for that worst case.
 */
#define SCPI_RESP_MAX 384

/*
 * Parse one command line and execute it.
 *
 * line  NUL-terminated command line; a trailing CR and/or LF is optional.
 * resp  buffer of SCPI_RESP_MAX bytes receiving the response.
 *
 * Returns the response length in bytes. Returns 0 when the command produces
 * no response, which also covers unrecognised commands - the previous
 * implementations stayed silent on those and that behaviour is kept.
 */
int scpi_execute(const char *line, char *resp);

#endif /* SRC_SCPI_SCPI_H_ */
