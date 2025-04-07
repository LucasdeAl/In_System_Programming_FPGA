//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Apr  5 13:39:26 2025
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// testeISP
module testeISP(
    // Inputs
    DEVRST_N,
    MMUART_0_RXD_F2M,
    MMUART_1_RXD_F2M,
    // Outputs
    GPIO_3_M2F,
    MMUART_0_TXD_M2F,
    MMUART_1_TXD_M2F
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  DEVRST_N;
input  MMUART_0_RXD_F2M;
input  MMUART_1_RXD_F2M;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output GPIO_3_M2F;
output MMUART_0_TXD_M2F;
output MMUART_1_TXD_M2F;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   DEVRST_N;
wire   GPIO_3_M2F_net_0;
wire   MMUART_0_RXD_F2M;
wire   MMUART_0_TXD_M2F_net_0;
wire   MMUART_1_RXD_F2M;
wire   MMUART_1_TXD_M2F_net_0;
wire   GPIO_3_M2F_net_1;
wire   MMUART_1_TXD_M2F_net_1;
wire   MMUART_0_TXD_M2F_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign GPIO_3_M2F_net_1       = GPIO_3_M2F_net_0;
assign GPIO_3_M2F             = GPIO_3_M2F_net_1;
assign MMUART_1_TXD_M2F_net_1 = MMUART_1_TXD_M2F_net_0;
assign MMUART_1_TXD_M2F       = MMUART_1_TXD_M2F_net_1;
assign MMUART_0_TXD_M2F_net_1 = MMUART_0_TXD_M2F_net_0;
assign MMUART_0_TXD_M2F       = MMUART_0_TXD_M2F_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------testeISP_sb
testeISP_sb testeISP_sb_0(
        // Inputs
        .FAB_RESET_N      ( VCC_net ), // tied to 1'b1 from definition
        .DEVRST_N         ( DEVRST_N ),
        .MMUART_0_RXD_F2M ( MMUART_0_RXD_F2M ),
        .MMUART_1_RXD_F2M ( MMUART_1_RXD_F2M ),
        // Outputs
        .POWER_ON_RESET_N (  ),
        .INIT_DONE        (  ),
        .FAB_CCC_GL0      (  ),
        .FAB_CCC_LOCK     (  ),
        .MSS_READY        (  ),
        .MMUART_0_TXD_M2F ( MMUART_0_TXD_M2F_net_0 ),
        .MMUART_1_TXD_M2F ( MMUART_1_TXD_M2F_net_0 ),
        .GPIO_3_M2F       ( GPIO_3_M2F_net_0 ) 
        );


endmodule
