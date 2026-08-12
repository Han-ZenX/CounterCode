`timescale  1ns/1ns

module cymometer1#(
    parameter   CNT_GATE_S_MAX  =   28'd74_999_999,   //软件闸门计数器计数最大值
    parameter   CNT_RISE_MAX    =   28'd12_500_000,   //软件闸门拉高计数值
    parameter   CLK_STAND_FREQ  =   32'd312_500_000)  //标准时钟时钟频率)
(
    input   wire            sys_clk     ,   //系统时钟,频率50MHz
    input   wire            sys_rst_n   ,   //复位信号,低电平有效
    input   wire            clk_stand   ,   //标准时钟,频率100MHz
    input   wire            clk_test    ,   //待检测时钟

    output  reg     [31:0]  freq            //待检测时钟频率

);

//parameter define

//wire  define

wire            gate_a_fall_s       ;   //实际闸门下降沿(标准时钟下)
wire            gate_a_fall_t       ;   //实际闸门下降沿(待检测时钟下)

//reg   define
reg     [27:0]  cnt_gate_s          ;   //软件闸门计数器
reg             gate_s              ;   //软件闸门
reg             gate_a              ;   //实际闸门
reg             gate_a_stand        ;   //实际闸门打一拍(标准时钟下)
reg             gate_a_test         ;   //实际闸门打一拍(待检测时钟下)
reg     [47:0]  cnt_clk_stand       ;   //标准时钟周期计数器
reg     [47:0]  cnt_clk_stand_reg   ;   //实际闸门下标志时钟周期数
reg     [47:0]  cnt_clk_test        ;   //待检测时钟周期计数器
reg     [47:0]  cnt_clk_test_reg    ;   //实际闸门下待检测时钟周期数
reg             calc_flag           ;   //待检测时钟时钟频率计算标志信号
reg     [63:0]  freq_reg            ;   //待检测时钟频率寄存
reg             calc_flag_reg       ;   //待检测时钟频率输出标志信号
reg gate_s_sync1, gate_s_sync2      ;   //跨时钟域打拍两次，不打拍会出现亚稳态

//cnt_gate_s:软件闸门计数器
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_gate_s  <=  28'd0;
    else    if(cnt_gate_s == CNT_GATE_S_MAX)
        cnt_gate_s  <=  28'd0;
    else
        cnt_gate_s  <=  cnt_gate_s + 1'b1;

//gate_s:软件闸门
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        gate_s  <=  1'b0;
    else    if((cnt_gate_s>= CNT_RISE_MAX)
                && (cnt_gate_s <= (CNT_GATE_S_MAX - CNT_RISE_MAX)))
        gate_s  <=  1'b1;
    else
        gate_s  <=  1'b0;

// ========== 新增同步器 ========== //
// 同步 gate_s 到 clk_test 时钟域（防止亚稳态）
always @(posedge clk_test or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        gate_s_sync1 <= 1'b0;
        gate_s_sync2 <= 1'b0;
    end 
    else begin
        gate_s_sync1 <= gate_s;  // 第一级同步
        gate_s_sync2 <= gate_s_sync1;  // 第二级同步
    end
end

//gate_a:实际闸门
always@(posedge clk_test or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        gate_a  <=  1'b0;
    else
        gate_a  <=  gate_s_sync2;

//cnt_clk_stand:标准时钟周期计数器,计数实际闸门下标准时钟周期数
always@(posedge clk_stand or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_clk_stand   <=  48'd0;
    else    if(gate_a == 1'b0)
        cnt_clk_stand   <=  48'd0;
    else    if(gate_a == 1'b1)
        cnt_clk_stand   <=  cnt_clk_stand + 1'b1;

//cnt_clk_test:待检测时钟周期计数器,计数实际闸门下待检测时钟周期数
always@(posedge clk_test or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_clk_test    <=  48'd0;
    else    if(gate_a == 1'b0)
        cnt_clk_test    <=  48'd0;
    else    if(gate_a == 1'b1)
        cnt_clk_test    <=  cnt_clk_test + 1'b1;

//gate_a_stand:实际闸门打一拍(标准时钟下)
always@(posedge clk_stand or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        gate_a_stand    <=  1'b0;
    else
        gate_a_stand    <=  gate_a;

//gate_a_fall_s:实际闸门下降沿(标准时钟下)
assign  gate_a_fall_s = ((gate_a_stand == 1'b1) && (gate_a == 1'b0))
                        ? 1'b1 : 1'b0;

//cnt_clk_stand_reg:实际闸门下标志时钟周期数
always@(posedge clk_stand or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_clk_stand_reg   <=  32'd0;
    else    if(gate_a_fall_s == 1'b1)
        cnt_clk_stand_reg   <=  cnt_clk_stand;

//gate_a_test:实际闸门打一拍(待检测时钟下)
always@(posedge clk_test or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        gate_a_test <=  1'b0;
    else
        gate_a_test <=  gate_a;

//gate_a_fall_t:实际闸门下降沿(待检测时钟下)
assign  gate_a_fall_t = ((gate_a_test == 1'b1) && (gate_a == 1'b0))
                        ? 1'b1 : 1'b0;

//cnt_clk_test_reg:实际闸门下待检测时钟周期数
always@(posedge clk_test or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_clk_test_reg   <=  32'd0;
    else    if(gate_a_fall_t == 1'b1)
        cnt_clk_test_reg   <=  cnt_clk_test;

//calc_flag:待检测时钟时钟频率计算标志信号
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        calc_flag   <=  1'b0;
    else    if(cnt_gate_s == (CNT_GATE_S_MAX - 1'b1))
        calc_flag   <=  1'b1;
    else
        calc_flag   <=  1'b0;

//freq_reg:待检测时钟信号时钟频率寄存
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        freq_reg    <=  64'd0;
    else    if(calc_flag == 1'b1)begin
        if(cnt_clk_stand_reg != 48'd0)
            freq_reg    <=  (CLK_STAND_FREQ * 32'd4 * cnt_clk_test_reg / cnt_clk_stand_reg);
        else
            freq_reg    <= 64'd0;
    end

//calc_flag_reg:待检测时钟频率输出标志信号
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        calc_flag_reg   <=  1'b0;
    else
        calc_flag_reg   <=  calc_flag;

//freq:待检测时钟信号时钟频率
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        freq    <=  32'd0;
    else    if(calc_flag_reg == 1'b1)
        freq    <=  freq_reg[31:0];

endmodule