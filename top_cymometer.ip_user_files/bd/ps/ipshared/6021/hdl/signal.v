`timescale 1ns / 1ps

module signal
(
    input   wire            CLK,
    input   wire            RESETN,
    
    input   wire            CTR_STATUS0,
    input   wire            CTR_STATUS1,
    input   wire            CTR_START_T,
    
    output  wire            CTR_STATUS0_SIG,
    output  wire            CTR_STATUS1_SIG,
    output  wire            CTR_START_T_SIG,
    
    input   wire            CTR_PRIREF_SIG,
    input   wire            CTR_REF_CLOCK_SIG,
    input   wire            CTR_OCXO_SIG,
    
    output  wire            CTR_PRIREF,
    output  wire            CTR_REF_CLOCK,
    output  wire            CTR_OCXO 
);

assign CTR_STATUS0_SIG = CTR_STATUS0;
assign CTR_STATUS1_SIG = CTR_STATUS1;
assign CTR_START_T_SIG = CTR_START_T;

assign CTR_PRIREF = CTR_PRIREF_SIG;
assign CTR_REF_CLOCK = CTR_REF_CLOCK_SIG;
assign CTR_OCXO = CTR_OCXO_SIG;

endmodule
