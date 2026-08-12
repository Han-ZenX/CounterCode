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

#include "freertos_tcp_perf_server.h"

extern struct netif server_netif;
static struct perf_stats server;

/* Interval time in seconds */
#define REPORT_INTERVAL_TIME (INTERIM_REPORT_INTERVAL * 1000)

char Tcp_Rec_Buf[RECV_BUF_SIZE];

void print_app_header(void)
{
	xil_printf("TCP server listening on port %d\r\n",
			TCP_CONN_PORT);
#if LWIP_IPV6==1
	xil_printf("On Host: Run $iperf -V -c %s%%<interface> -i %d -t 300 -w 2M\r\n",
			inet6_ntoa(server_netif.ip6_addr[0]),
			INTERIM_REPORT_INTERVAL);
#else
	xil_printf("On Host: Run $iperf -c %s -i %d -t 300 -w 2M\r\n",
			inet_ntoa(server_netif.ip_addr),
			INTERIM_REPORT_INTERVAL);
#endif /* LWIP_IPV6 */
}

static void print_tcp_conn_stats(int sock)
{
#if LWIP_IPV6==1
	struct sockaddr_in6 local, remote;
#else
	struct sockaddr_in local, remote;
#endif /* LWIP_IPV6 */
	int size;

	size = sizeof(local);
	getsockname(sock, (struct sockaddr *)&local, (socklen_t *)&size);
	getpeername(sock, (struct sockaddr *)&remote, (socklen_t *)&size);
#if LWIP_IPV6==1
	xil_printf("[%3d] local %s port %d connected with ", server.client_id,
			inet6_ntoa(local.sin6_addr), ntohs(local.sin6_port));
	xil_printf("%s port %d\r\n", inet6_ntoa(remote.sin6_addr),
			ntohs(local.sin6_port));
#else
	xil_printf("[%3d] local %s port %d connected with ", server.client_id,
			inet_ntoa(local.sin_addr), ntohs(local.sin_port));
	xil_printf("%s port %d\r\n", inet_ntoa(remote.sin_addr),
			ntohs(local.sin_port));
#endif /* LWIP_IPV6 */
	xil_printf("[ ID] Interval    Transfer     Bandwidth\n\r");
}

static void stats_buffer(char* outString, double data, enum measure_t type)
{
	int conv = KCONV_UNIT;
	const char *format;
	double unit = 1024.0;

	if (type == SPEED)
		unit = 1000.0;

	while (data >= unit && conv <= KCONV_GIGA) {
		data /= unit;
		conv++;
	}

	/* Fit data in 4 places */
	if (data < 9.995) { /* 9.995 rounded to 10.0 */
		format = "%4.2f %c"; /* #.## */
	} else if (data < 99.95) { /* 99.95 rounded to 100 */
		format = "%4.1f %c"; /* ##.# */
	} else {
		format = "%4.0f %c"; /* #### */
	}
	sprintf(outString, format, data, kLabel[conv]);
}

/* The report function of a TCP server session */
static void tcp_conn_report(u64_t diff, enum report_type report_type)
{
	u64_t total_len;
	double duration, bandwidth = 0;
	char data[16], perf[16], time[64];

	if (report_type == INTER_REPORT) {
		total_len = server.i_report.total_bytes;
	} else {
		server.i_report.last_report_time = 0;
		total_len = server.total_bytes;
	}

	/* Converting duration from milliseconds to secs,
	 * and bandwidth to bits/sec .
	 */
	duration = diff / 1000.0; /* secs */
	if (duration)
		bandwidth = (total_len / duration) * 8.0;

	stats_buffer(data, total_len, BYTES);
	stats_buffer(perf, bandwidth, SPEED);
	/* On 32-bit platforms, xil_printf is not able to print
	 * u64_t values, so converting these values in strings and
	 * displaying results
	 */
	sprintf(time, "%4.1f-%4.1f sec",
			(double)server.i_report.last_report_time,
			(double)(server.i_report.last_report_time + duration));
	xil_printf("[%3d] %s  %sBytes  %sbits/sec\n\r", server.client_id,
			time, data, perf);

	if (report_type == INTER_REPORT)
		server.i_report.last_report_time += duration;
}

/* thread spawned for each connection */
void tcp_recv_perf_traffic(void *p)
{
	xil_printf("tcp_recv_perf_traffic\r\n");

	char recv_buf[RECV_BUF_SIZE];
	int sock = *((int *)p);
	int n, nwrote;

	while (1)
	{
		memcpy(Tcp_Rec_Buf, 0, sizeof(Tcp_Rec_Buf));

		/* read a max of RECV_BUF_SIZE bytes from socket */
		if ((n = read(sock, Tcp_Rec_Buf, RECV_BUF_SIZE)) < 0) {
			xil_printf("%s: error reading from socket %d, closing socket\r\n", __FUNCTION__, sock);
			break;
		}

		/* break if the recved message = "quit" */
		if (!strncmp(Tcp_Rec_Buf, "quit", 4))
			break;

		/* break if client closed connection */
		if (n <= 0)
			break;

		tcp_data_process(sock);

		/*
		if ((nwrote = write(sock, Tcp_Rec_Buf, n)) < 0) {
			xil_printf("%s: ERROR responding to client echo request. received = %d, written = %d\r\n",
					__FUNCTION__, n, nwrote);
			xil_printf("Closing socket %d\r\n", sock);
			break;
		}
		*/
	}

	/* close connection */
	close(sock);
	vTaskDelete(NULL);
}

void start_application(void)
{
	int sock, new_sd;
#if LWIP_IPV6==1
	struct sockaddr_in6 address, remote;
#else
	struct sockaddr_in address, remote;
#endif /* LWIP_IPV6 */
	int size;

	/* set up address to connect to */
        memset(&address, 0, sizeof(address));
#if LWIP_IPV6==1
	if ((sock = lwip_socket(AF_INET6, SOCK_STREAM, 0)) < 0) {
		xil_printf("TCP server: Error creating Socket\r\n");
		return;
	}
	address.sin6_family = AF_INET6;
	address.sin6_port = htons(TCP_CONN_PORT);
	address.sin6_len = sizeof(address);
#else
	if ((sock = lwip_socket(AF_INET, SOCK_STREAM, 0)) < 0) {
		xil_printf("TCP server: Error creating Socket\r\n");
		return;
	}
	address.sin_family = AF_INET;
	address.sin_port = htons(TCP_CONN_PORT);
	address.sin_addr.s_addr = INADDR_ANY;
#endif /* LWIP_IPV6 */

	if (bind(sock, (struct sockaddr *)&address, sizeof (address)) < 0) {
		xil_printf("TCP server: Unable to bind to port %d\r\n",
				TCP_CONN_PORT);
		close(sock);
		return;
	}

	if (listen(sock, 1) < 0) {
		xil_printf("TCP server: tcp_listen failed\r\n");
		close(sock);
		return;
	}

	init_freqcounter(); //初始化频率计

	size = sizeof(remote);

	while (1) {
		if ((new_sd = accept(sock, (struct sockaddr *)&remote,
						(socklen_t *)&size)) > 0)
			sys_thread_new("TCP_recv_perf thread",
				tcp_recv_perf_traffic, (void*)&new_sd,
				TCP_SERVER_THREAD_STACKSIZE,
				DEFAULT_THREAD_PRIO);
	}
}

void tcp_data_process(int sock)
{
	if(Tcp_Rec_Buf[0] == '*')
	{
		if(Tcp_Rec_Buf[1] == 'I' && Tcp_Rec_Buf[2] == 'D' && Tcp_Rec_Buf[3] == 'N' && Tcp_Rec_Buf[4] == '?')
		{
			char *data="HALLIWAY,FREQ-COUNTER,C1804,1.00-1.00-01-1\n";
			write(sock, data, strlen(data));
		}
		else if(Tcp_Rec_Buf[1] == 'R' && Tcp_Rec_Buf[2] == 'S' && Tcp_Rec_Buf[3] == 'T')
		{
			//RST功能
		}
		else if(Tcp_Rec_Buf[1] == 'O' && Tcp_Rec_Buf[2] == 'P' && Tcp_Rec_Buf[3] == 'C' && Tcp_Rec_Buf[4] == '?')
		{
			//OPC?功能
		}
	}
	else if(Tcp_Rec_Buf[0] == 'R' && Tcp_Rec_Buf[1] == 'E' && Tcp_Rec_Buf[2] == 'A' && Tcp_Rec_Buf[3] == 'D' && Tcp_Rec_Buf[4] == '?')
	{
		char Freq[300];
		ReadFr(Freq);
		write(sock, Freq, strlen(Freq));
	}
	else if(Tcp_Rec_Buf[0] == 'M' && Tcp_Rec_Buf[1] == 'E' && Tcp_Rec_Buf[2] == 'A' && Tcp_Rec_Buf[3] == 'S' && Tcp_Rec_Buf[4] == ':'&& Tcp_Rec_Buf[5] == 'F'&& Tcp_Rec_Buf[6] == 'R'&& Tcp_Rec_Buf[7] == 'E'&& Tcp_Rec_Buf[8] == 'Q'&& Tcp_Rec_Buf[9] == '?')
	{
		char Freq[300];
		ReadFr(Freq);
		write(sock, Freq, strlen(Freq));
	}
	else if(Tcp_Rec_Buf[0] == 'C' && Tcp_Rec_Buf[1] == 'O' && Tcp_Rec_Buf[2] == 'N' && Tcp_Rec_Buf[3] == 'F' && Tcp_Rec_Buf[4] == ':'
				&& Tcp_Rec_Buf[5] == 'F'&& Tcp_Rec_Buf[6] == 'R'&& Tcp_Rec_Buf[7] == 'E'&& Tcp_Rec_Buf[8] == 'Q'&& Tcp_Rec_Buf[9] == '?')
	{
		char  Fref[300];
		sprintf(&Fref,"%d\n",FREF);
		write(sock, Fref, strlen(Fref));
	}
	else if(Tcp_Rec_Buf[0] == 'C' && Tcp_Rec_Buf[1] == 'O' && Tcp_Rec_Buf[2] == 'N' && Tcp_Rec_Buf[3] == 'F' && Tcp_Rec_Buf[4] == ':'
			&& Tcp_Rec_Buf[5] == 'F'&& Tcp_Rec_Buf[6] == 'R'&& Tcp_Rec_Buf[7] == 'E'&& Tcp_Rec_Buf[8] == 'Q'&& Tcp_Rec_Buf[9] == ' ')
	{
		FREF = 0;        //参考频率

		char recv[300];

		// 找到第一个回车或换行符的位置
		size_t len = strcspn(Tcp_Rec_Buf, "\n");

		// 复制回车换行符之前的内容
		strncpy(recv, Tcp_Rec_Buf, len);
		recv[len] = '\0';

		char *recv_freq = recv + 9; // 跳过前9个字符

		FREF = atoi(recv_freq);

	}
	else if(Tcp_Rec_Buf[0] == 'F' && Tcp_Rec_Buf[1] == 'R' && Tcp_Rec_Buf[2] == 'E' && Tcp_Rec_Buf[3] == 'Q' && Tcp_Rec_Buf[4] == ':'
			&& Tcp_Rec_Buf[5] == 'G'&& Tcp_Rec_Buf[6] == 'A'&& Tcp_Rec_Buf[7] == 'T'&& Tcp_Rec_Buf[8] == 'E'&& Tcp_Rec_Buf[9] == ':'
					&& Tcp_Rec_Buf[10] == 'T'&& Tcp_Rec_Buf[11] == 'I'&& Tcp_Rec_Buf[12] == 'M'&& Tcp_Rec_Buf[13] == 'E'&& Tcp_Rec_Buf[14] == '?')
	{
		char  Gate[300];
		sprintf(&Gate,"%.3f\n",GATE_TIME);
		write(sock,Gate, strlen(Gate));
	}
	else if(Tcp_Rec_Buf[0] =='F' && Tcp_Rec_Buf[1] == 'R' && Tcp_Rec_Buf[2] == 'E' && Tcp_Rec_Buf[3] == 'Q' && Tcp_Rec_Buf[4] == ':')
	{
		if(Tcp_Rec_Buf[5] =='G' && Tcp_Rec_Buf[6] == 'A' && Tcp_Rec_Buf[7] == 'T' && Tcp_Rec_Buf[8] == 'E' && Tcp_Rec_Buf[9] == ':')
		{
			if(Tcp_Rec_Buf[10] =='T' && Tcp_Rec_Buf[11] == 'I' && Tcp_Rec_Buf[12] == 'M' && Tcp_Rec_Buf[13] == 'E' && Tcp_Rec_Buf[14] == ' ')
			{
				char recv[300];

				GATE_TIME = 0;        //参考频率

				// 找到第一个回车或换行符的位置
				size_t len = strcspn(Tcp_Rec_Buf, "\n");

				// 复制回车换行符之前的内容
				strncpy(recv, Tcp_Rec_Buf, len);
				recv[len] = '\0';

				char *recv_gate = recv + 15; // 跳过前15个字符

				GATE_TIME = atof(recv_gate) * 1000;

				SetGate(GATE_TIME);
			}
		}
	}
	else if(Tcp_Rec_Buf[0] =='S' && Tcp_Rec_Buf[1] == 'T' && Tcp_Rec_Buf[2] == 'A' && Tcp_Rec_Buf[3] == 'R' && Tcp_Rec_Buf[4] == 'T' && Tcp_Rec_Buf[5] == ':'
			&& Tcp_Rec_Buf[6] =='G' && Tcp_Rec_Buf[7] == 'A' && Tcp_Rec_Buf[8] == 'T' && Tcp_Rec_Buf[9] == 'E' && Tcp_Rec_Buf[10] == ':'
					&& Tcp_Rec_Buf[11] =='T' && Tcp_Rec_Buf[12] == 'I' && Tcp_Rec_Buf[13] == 'M' && Tcp_Rec_Buf[14] == 'E' && Tcp_Rec_Buf[15] == '?')
	{
		char  Start_Gate[300];
		sprintf(&Start_Gate,"%.3f\n",START_GATE_TIME);
		write(sock,Start_Gate, strlen(Start_Gate));
	}
	else if(Tcp_Rec_Buf[0] =='S' && Tcp_Rec_Buf[1] == 'T' && Tcp_Rec_Buf[2] == 'A' && Tcp_Rec_Buf[3] == 'R' && Tcp_Rec_Buf[4] == 'T' && Tcp_Rec_Buf[5] == ':')
	{
		if(Tcp_Rec_Buf[6] =='G' && Tcp_Rec_Buf[7] == 'A' && Tcp_Rec_Buf[8] == 'T' && Tcp_Rec_Buf[9] == 'E' && Tcp_Rec_Buf[10] == ':')
		{
			if(Tcp_Rec_Buf[11] =='T' && Tcp_Rec_Buf[12] == 'I' && Tcp_Rec_Buf[13] == 'M' && Tcp_Rec_Buf[14] == 'E' && Tcp_Rec_Buf[15] == ' ')
			{
				char recv[300];

				START_GATE_TIME = 0;        //参考频率

				// 找到第一个回车或换行符的位置
				size_t len = strcspn(Tcp_Rec_Buf, "\n");

				// 复制回车换行符之前的内容
				strncpy(recv, Tcp_Rec_Buf, len);
				recv[len] = '\0';

				char *recv_start_gate = recv + 16; // 跳过前16个字符

				START_GATE_TIME = atof(recv_start_gate) * 1000;
			}
		}
	}
	else if(Tcp_Rec_Buf[0] =='S' && Tcp_Rec_Buf[1] == 'I' && Tcp_Rec_Buf[2] == 'G' && Tcp_Rec_Buf[3] == ':')
	{
		if(Tcp_Rec_Buf[4] =='P' && Tcp_Rec_Buf[5] == 'R' && Tcp_Rec_Buf[6] == 'I' && Tcp_Rec_Buf[7] == 'R' && Tcp_Rec_Buf[8] == 'E' && Tcp_Rec_Buf[9] == 'F' && Tcp_Rec_Buf[10] == ' ')
		{
			if(Tcp_Rec_Buf[11] =='1')
			{
				Set_CTR_PRIREF(1);
				char data[]="1\n";
				write(sock, data, strlen(data));
			}
			else if(Tcp_Rec_Buf[11] =='0')
			{
				Set_CTR_PRIREF(0);
				char data[]="1\n";
				write(sock, data, strlen(data));
			}
		}
		else if(Tcp_Rec_Buf[4] =='R' && Tcp_Rec_Buf[5] == 'E' && Tcp_Rec_Buf[6] == 'F' && Tcp_Rec_Buf[7] == 'C' && Tcp_Rec_Buf[8] == 'L' && Tcp_Rec_Buf[9] == 'O' && Tcp_Rec_Buf[10] == 'C'&& Tcp_Rec_Buf[11] == 'K'&& Tcp_Rec_Buf[12] == ' ')
		{
			if(Tcp_Rec_Buf[13] =='1')
			{
				Set_CTR_REF_CLOCK(1);
				char data[]="1\n";
				write(sock, data, strlen(data));
			}
			else if(Tcp_Rec_Buf[13] =='0')
			{
				Set_CTR_REF_CLOCK(0);
				char data[]="1\n";
				write(sock, data, strlen(data));
			}
		}
		else if(Tcp_Rec_Buf[4] =='O' && Tcp_Rec_Buf[5] == 'C' && Tcp_Rec_Buf[6] == 'X' && Tcp_Rec_Buf[7] == 'O' && Tcp_Rec_Buf[8] == ' ')
		{
			if(Tcp_Rec_Buf[9] =='1')
			{
				Set_CTR_OCXO(1);
				char data[]="1\n";
				write(sock, data, strlen(data));
			}
			else if(Tcp_Rec_Buf[9] =='0')
			{
				Set_CTR_OCXO(0);
				char data[]="1\n";
				write(sock, data, strlen(data));
			}
		}
		else if(Tcp_Rec_Buf[4] =='S' && Tcp_Rec_Buf[5] == 'T' && Tcp_Rec_Buf[6] == 'A' && Tcp_Rec_Buf[7] == 'T'
				&& Tcp_Rec_Buf[8] == 'U'&& Tcp_Rec_Buf[9] == 'S'&& Tcp_Rec_Buf[10] == '0'&& Tcp_Rec_Buf[11] == '?')
		{
			u32 STATUS0 = ReadSTATUS0();
			if(STATUS0 == 0)
			{
				char data[]="0\n";
				write(sock, data, strlen(data));
			}
			else
			{
				char data[]="1\n";
				write(sock, data, strlen(data));
			}
		}
		else if(Tcp_Rec_Buf[4] =='S' && Tcp_Rec_Buf[5] == 'T' && Tcp_Rec_Buf[6] == 'A' && Tcp_Rec_Buf[7] == 'T'
						&& Tcp_Rec_Buf[8] == 'U'&& Tcp_Rec_Buf[9] == 'S'&& Tcp_Rec_Buf[10] == '1'&& Tcp_Rec_Buf[11] == '?')
		{
			u32 STATUS1 = ReadSTATUS1();
			if(STATUS1 == 0)
			{
				char data[]="0\n";
				write(sock, data, strlen(data));
			}
			else
			{
				char data[]="1\n";
				write(sock, data, strlen(data));
			}
		}
	}
	else if(Tcp_Rec_Buf[0] =='P' && Tcp_Rec_Buf[1] == 'P' && Tcp_Rec_Buf[2] == 'M' && Tcp_Rec_Buf[3] == '?')
	{
		char ppm[300];
		sprintf(&ppm,"%d\n",PPM);
		write(sock,ppm, strlen(ppm));
	}
	else if(Tcp_Rec_Buf[0] =='P' && Tcp_Rec_Buf[1] == 'P' && Tcp_Rec_Buf[2] == 'M' && Tcp_Rec_Buf[3] == ' ')
	{
		PPM = 0;  //ppm

		char recv[300];

		// 找到第一个回车或换行符的位置
		size_t len = strcspn(Tcp_Rec_Buf, "\n");

		// 复制回车换行符之前的内容
		strncpy(recv, Tcp_Rec_Buf, len);
		recv[len] = '\0';

		char *recv_ppm = recv + 4; // 跳过前4个字符

		PPM = atoi(recv_ppm);
	}
	else if(Tcp_Rec_Buf[0] =='I' && Tcp_Rec_Buf[1] == 'N' && Tcp_Rec_Buf[2] == 'I' && Tcp_Rec_Buf[3] == 'T')
	{
		InitStartT(NULL);
		//sys_thread_new("StartT_thread", InitStartT, NULL,
		//			1024, 1);
	}
	else if(Tcp_Rec_Buf[0] =='R' && Tcp_Rec_Buf[1] == 'E' && Tcp_Rec_Buf[2] == 'A' && Tcp_Rec_Buf[3] == 'D' && Tcp_Rec_Buf[4] == ':'
			&& Tcp_Rec_Buf[5] == 'T' && Tcp_Rec_Buf[6] == 'I' && Tcp_Rec_Buf[7] == 'M' && Tcp_Rec_Buf[8] == 'E' && Tcp_Rec_Buf[9] == '?')
	{
		char startT[300];

		while(1)
		{
			if(START_T_END==1)
			{
				break;
			}
		}

		sprintf(&startT,"%.3f\n",START_T_TIME);
		write(sock,startT, strlen(startT));
	}
}
