//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Apr 10 09:59:41 2025
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// mss_based_isp
module mss_based_isp(
    // Inputs
    MCCC_CLK_BASE,
    MMUART_1_RXD,
    // Outputs
    MMUART_1_TXD
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  MCCC_CLK_BASE;
input  MMUART_1_RXD;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output MMUART_1_TXD;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   MCCC_CLK_BASE;
wire   MMUART_1_RXD;
wire   MMUART_1_TXD_net_0;
wire   MSS_RESET_N_M2F;
wire   MMUART_1_TXD_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign MMUART_1_TXD_net_1 = MMUART_1_TXD_net_0;
assign MMUART_1_TXD       = MMUART_1_TXD_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------Dev_Restart_after_ISP_blk
Dev_Restart_after_ISP_blk Dev_Restart_after_ISP_blk_0(
        // Inputs
        .CLK    ( MCCC_CLK_BASE ),
        .RESETn ( MSS_RESET_N_M2F ) 
        );

//--------mss_based_isp_MSS
mss_based_isp_MSS mss_based_isp_MSS_0(
        // Inputs
        .MCCC_CLK_BASE   ( MCCC_CLK_BASE ),
        .MMUART_1_RXD    ( MMUART_1_RXD ),
        // Outputs
        .MMUART_1_TXD    ( MMUART_1_TXD_net_0 ),
        .MSS_RESET_N_M2F ( MSS_RESET_N_M2F ) 
        );


endmodule
