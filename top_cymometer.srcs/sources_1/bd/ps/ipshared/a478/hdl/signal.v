`timescale 1ns / 1ps

module signal
(
    input   wire            CLK     ,   //系统时钟,频率100MHz
    input   wire            RESETN   ,   //复位信号,低电平有效
    
    input   wire            CTR_PRIREF_SIG,
    input   wire            CTR_REF_CLOCK_SIG,
    input   wire            CTR_OCXO_SIG,
    
    output  wire            CTR_PRIREF,
    output  wire            CTR_REF_CLOCK,
    output  wire            CTR_OCXO,
    
    input   wire            CTR_STATUS0,
    input   wire            CTR_STATUS1,
    input   wire            CTR_START_T,
    
    output  reg             CTR_STATUS0_SIG,
    output  reg             CTR_STATUS1_SIG,
    output  reg             CTR_START_T_SIG
);

assign CTR_PRIREF = CTR_PRIREF_SIG;
assign CTR_REF_CLOCK = CTR_REF_CLOCK_SIG;
assign CTR_OCXO = CTR_OCXO_SIG;

always@(*)begin
    CTR_STATUS0_SIG = CTR_STATUS0;
    CTR_STATUS1_SIG = CTR_STATUS1;
    CTR_START_T_SIG = CTR_START_T;
end

endmodule
