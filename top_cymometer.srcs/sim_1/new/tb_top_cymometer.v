`timescale 1ns / 1ps

module tb_top_cymometer(

    );

reg sys_clk;  //输入信号用reg
reg sys_rst_n;//输入信号用reg
reg sys_clk_1;//输入信号用reg
reg clk_fx;//输入信号用reg

wire clk_out;//输出信号用wire
wire lcd_hs;//输出信号用wire
wire lcd_vs;//输出信号用wire
wire lcd_de;//输出信号用wire
wire [23:0] lcd_rgb;//inout信号用wire
wire lcd_bl;//输出信号用wire
wire lcd_clk;//输出信号用wire

initial begin
    sys_clk<=1'b0;
    sys_rst_n<=1'b0;
    sys_clk_1<=1'b0;
    clk_fx<=1'b0;
    #40 sys_rst_n<=1'b1;
end

always #2.5 sys_clk = ~sys_clk; //2.5ns反转一次，周期为5ns，就是200MHZ的频率

always #10 sys_clk_1 = ~sys_clk_1; //10ns反转一次，周期为20ns，就是50MHZ的频率

always #5000 clk_fx = ~clk_fx; //5000ns反转一次，周期为10000ns，就是0.1MHZ的频率

top_cymometer u_top_cymometer(
    .sys_clk    (sys_clk),    // 时钟信号
    .sys_rst_n  (sys_rst_n),    // 复位信号
    
    .sys_clk_1  (sys_clk_1),    // 时钟信号1

    //cymometer interface
    .clk_fx     (clk_fx),    // 被测时钟
    .clk_out    (clk_out),    // 输出时钟

	//RGB LCD接口 
    .lcd_hs     (lcd_hs),     //LCD 行同步信号
    .lcd_vs     (lcd_vs),     //LCD 场同步信号
    .lcd_de     (lcd_de),     //LCD 数据输入使能
    .lcd_rgb    (lcd_rgb),     //LCD RGB565颜色数据
    .lcd_bl     (lcd_bl),     //LCD 背光控制信号
    .lcd_clk    (lcd_clk)  //LCD 采样时钟
);

endmodule
