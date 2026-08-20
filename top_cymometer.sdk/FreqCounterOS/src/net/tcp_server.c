/*
 * Copyright (C) 2018 Xilinx, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 */

#include <string.h>

#include "tcp_server.h"

extern struct netif server_netif;

/*
 * Single-session SCPI server.
 *
 * One task owns the listening socket and the client socket and select()s
 * across both. There is no per-connection thread, so there is no shared
 * receive buffer and no accepted-socket handover to get wrong.
 *
 * The newest connection wins: a host that vanished without closing its
 * socket cannot lock the instrument out until the next power cycle.
 */
static int listen_sock = -1;
static int client_sock = -1;

static char rx_buf[RECV_BUF_SIZE];

/*
 * Line assembly. TCP is a byte stream, so one read() can deliver half a
 * command, exactly one, or three back to back. Bytes are accumulated here
 * until a newline arrives and only whole lines reach the parser.
 */
static char line_buf[SCPI_LINE_MAX];
static int line_len;
static int line_ovf;

void print_app_header(void)
{
#if LWIP_IPV6==1
	xil_printf("SCPI TCP server listening on %s port %d\r\n",
			inet6_ntoa(server_netif.ip6_addr[0]), TCP_CONN_PORT);
#else
	xil_printf("SCPI TCP server listening on %s port %d\r\n",
			inet_ntoa(server_netif.ip_addr), TCP_CONN_PORT);
#endif /* LWIP_IPV6 */
}

static void close_client(void)
{
	if (client_sock >= 0) {
		close(client_sock);
		client_sock = -1;
	}
	line_len = 0;
	line_ovf = 0;
}

/* Execute one complete line and return the response to the client. */
static void tcp_data_process(const char *line)
{
	char resp[SCPI_RESP_MAX];
	int len = scpi_execute(line, resp);

	if (len > 0 && write(client_sock, resp, len) < 0) {
		xil_printf("TCP server: write failed on socket %d, closing\r\n",
				client_sock);
		close_client();
	}
}

/* Push received bytes through the line assembler. */
static void line_feed(const char *data, int len)
{
	int i;

	for (i = 0; i < len; i++) {
		char c = data[i];

		if (c == '\r')
			continue;

		if (c != '\n') {
			if (line_len < (int)sizeof(line_buf) - 1)
				line_buf[line_len++] = c;
			else
				line_ovf = 1;	/* drop the whole oversized line */
			continue;
		}

		line_buf[line_len] = '\0';

		if (line_ovf) {
			xil_printf("TCP server: command over %d bytes, dropped\r\n",
					(int)sizeof(line_buf) - 1);
		} else if (line_len > 0) {
			if (!strcmp(line_buf, "quit")) {
				close_client();
				return;
			}

			tcp_data_process(line_buf);
			if (client_sock < 0)	/* the write failed */
				return;
		}

		line_len = 0;
		line_ovf = 0;
	}
}

static void accept_client(void)
{
#if LWIP_IPV6==1
	struct sockaddr_in6 remote;
#else
	struct sockaddr_in remote;
#endif /* LWIP_IPV6 */
	int size = sizeof(remote);
	int new_sd;

	new_sd = accept(listen_sock, (struct sockaddr *)&remote,
			(socklen_t *)&size);
	if (new_sd < 0)
		return;

	if (client_sock >= 0) {
		xil_printf("TCP server: dropping previous client on socket %d\r\n",
				client_sock);
		close_client();
	}

	client_sock = new_sd;
	line_len = 0;
	line_ovf = 0;

#if LWIP_IPV6==1
	xil_printf("TCP server: client connected from %s\r\n",
			inet6_ntoa(remote.sin6_addr));
#else
	xil_printf("TCP server: client connected from %s\r\n",
			inet_ntoa(remote.sin_addr));
#endif /* LWIP_IPV6 */
}

static int open_listen_socket(void)
{
#if LWIP_IPV6==1
	struct sockaddr_in6 address;
#else
	struct sockaddr_in address;
#endif /* LWIP_IPV6 */

	memset(&address, 0, sizeof(address));

#if LWIP_IPV6==1
	if ((listen_sock = lwip_socket(AF_INET6, SOCK_STREAM, 0)) < 0) {
		xil_printf("TCP server: error creating socket\r\n");
		return -1;
	}
	address.sin6_family = AF_INET6;
	address.sin6_port = htons(TCP_CONN_PORT);
	address.sin6_len = sizeof(address);
#else
	if ((listen_sock = lwip_socket(AF_INET, SOCK_STREAM, 0)) < 0) {
		xil_printf("TCP server: error creating socket\r\n");
		return -1;
	}
	address.sin_family = AF_INET;
	address.sin_port = htons(TCP_CONN_PORT);
	address.sin_addr.s_addr = INADDR_ANY;
#endif /* LWIP_IPV6 */

	if (bind(listen_sock, (struct sockaddr *)&address, sizeof(address)) < 0) {
		xil_printf("TCP server: unable to bind to port %d\r\n", TCP_CONN_PORT);
		close(listen_sock);
		listen_sock = -1;
		return -1;
	}

	if (listen(listen_sock, 1) < 0) {
		xil_printf("TCP server: listen failed\r\n");
		close(listen_sock);
		listen_sock = -1;
		return -1;
	}

	return 0;
}

/* Serve until the listening socket itself fails. */
static void server_loop(void)
{
	fd_set rfds;
	int maxfd;
	int n;

	while (1) {
		FD_ZERO(&rfds);
		FD_SET(listen_sock, &rfds);
		maxfd = listen_sock;

		if (client_sock >= 0) {
			FD_SET(client_sock, &rfds);
			if (client_sock > maxfd)
				maxfd = client_sock;
		}

		if (lwip_select(maxfd + 1, &rfds, NULL, NULL, NULL) < 0) {
			xil_printf("TCP server: select failed, rebuilding listener\r\n");
			close_client();
			close(listen_sock);
			listen_sock = -1;
			return;
		}

		if (FD_ISSET(listen_sock, &rfds)) {
			accept_client();
			/* Re-select before reading. A newly accepted socket can reuse
			   the descriptor number of the client just dropped, whose bit
			   is still set in rfds; reading on that stale bit would block
			   the server until the new client happens to send. */
			continue;
		}

		if (client_sock >= 0 && FD_ISSET(client_sock, &rfds)) {
			n = read(client_sock, rx_buf, sizeof(rx_buf));
			if (n <= 0)
				close_client();		/* peer closed, or read error */
			else
				line_feed(rx_buf, n);
		}
	}
}

static void tcp_server_task(void *p)
{
	while (1) {
		if (open_listen_socket() == 0)
			server_loop();

		/* The listener could not be created, or it died. Back off and try
		   again rather than leaving the instrument unreachable until the
		   next power cycle. */
		vTaskDelay(LISTEN_RETRY_SECS * 1000 / portTICK_RATE_MS);
	}
}

void start_application(void)
{
	sys_thread_new("scpi_tcp_thread", tcp_server_task, NULL,
			TCP_SERVER_THREAD_STACKSIZE, DEFAULT_THREAD_PRIO);
}