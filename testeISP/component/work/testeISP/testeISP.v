//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Apr  9 16:55:06 2025
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// testeISP
module testeISP(
    // Inputs
    DEVRST_N,
    MMUART_1_RXD_F2M,
    // Outputs
    MMUART_1_TXD_M2F
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  DEVRST_N;
input  MMUART_1_RXD_F2M;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output MMUART_1_TXD_M2F;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   DEVRST_N;
wire   MMUART_1_RXD_F2M;
wire   MMUART_1_TXD_M2F_net_0;
wire   testeISP_sb_0_FAB_CCC_GL0;
wire   testeISP_sb_0_POWER_ON_RESET_N;
wire   MMUART_1_TXD_M2F_net_1;
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
assign MMUART_1_TXD_M2F_net_1 = MMUART_1_TXD_M2F_net_0;
assign MMUART_1_TXD_M2F       = MMUART_1_TXD_M2F_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------Dev_Restart_after_ISP_blk
Dev_Restart_after_ISP_blk Dev_Restart_after_ISP_blk_0(
        // Inputs
        .CLK    ( testeISP_sb_0_FAB_CCC_GL0 ),
        .RESETn ( testeISP_sb_0_POWER_ON_RESET_N ) 
        );

//--------testeISP_sb
testeISP_sb testeISP_sb_0(
        // Inputs
        .FAB_RESET_N      ( VCC_net ), // tied to 1'b1 from definition
        .DEVRST_N         ( DEVRST_N ),
        .MMUART_1_RXD_F2M ( MMUART_1_RXD_F2M ),
        // Outputs
        .POWER_ON_RESET_N ( testeISP_sb_0_POWER_ON_RESET_N ),
        .INIT_DONE        (  ),
        .FAB_CCC_GL0      ( testeISP_sb_0_FAB_CCC_GL0 ),
        .FAB_CCC_LOCK     (  ),
        .MSS_READY        (  ),
        .MMUART_1_TXD_M2F ( MMUART_1_TXD_M2F_net_0 ) 
        );


endmodule
