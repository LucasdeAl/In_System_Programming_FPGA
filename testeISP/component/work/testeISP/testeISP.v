//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Mar 19 16:59:19 2025
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// testeISP
module testeISP(
    // Inputs
    DEVRST_N,
    MMUART_0_RXD_F2M,
    USB_ULPI_DIR,
    USB_ULPI_NXT,
    USB_ULPI_XCLK,
    // Outputs
    GPIO_3_M2F,
    MMUART_0_TXD_M2F,
    USB_ULPI_STP,
    o_LED,
    // Inouts
    USB_ULPI_DATA
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        DEVRST_N;
input        MMUART_0_RXD_F2M;
input        USB_ULPI_DIR;
input        USB_ULPI_NXT;
input        USB_ULPI_XCLK;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       GPIO_3_M2F;
output       MMUART_0_TXD_M2F;
output       USB_ULPI_STP;
output [1:0] o_LED;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  [7:0] USB_ULPI_DATA;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         DEVRST_N;
wire         GPIO_3_M2F_net_0;
wire         MMUART_0_RXD_F2M;
wire         MMUART_0_TXD_M2F_net_0;
wire   [1:0] o_LED_net_0;
wire         testeISP_sb_0_FAB_CCC_GL0;
wire         testeISP_sb_0_MSS_READY;
wire   [7:0] USB_ULPI_DATA;
wire         USB_ULPI_DIR;
wire         USB_ULPI_NXT;
wire         USB_ULPI_STP_net_0;
wire         USB_ULPI_XCLK;
wire         USB_ULPI_STP_net_1;
wire         GPIO_3_M2F_net_1;
wire         MMUART_0_TXD_M2F_net_1;
wire   [1:0] o_LED_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign USB_ULPI_STP_net_1     = USB_ULPI_STP_net_0;
assign USB_ULPI_STP           = USB_ULPI_STP_net_1;
assign GPIO_3_M2F_net_1       = GPIO_3_M2F_net_0;
assign GPIO_3_M2F             = GPIO_3_M2F_net_1;
assign MMUART_0_TXD_M2F_net_1 = MMUART_0_TXD_M2F_net_0;
assign MMUART_0_TXD_M2F       = MMUART_0_TXD_M2F_net_1;
assign o_LED_net_1            = o_LED_net_0;
assign o_LED[1:0]             = o_LED_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------led_blink
led_blink led_blink_0(
        // Inputs
        .clk    ( testeISP_sb_0_FAB_CCC_GL0 ),
        .resetN ( testeISP_sb_0_MSS_READY ),
        // Outputs
        .o_LED  ( o_LED_net_0 ) 
        );

//--------testeISP_sb
testeISP_sb testeISP_sb_0(
        // Inputs
        .USB_ULPI_DIR     ( USB_ULPI_DIR ),
        .USB_ULPI_NXT     ( USB_ULPI_NXT ),
        .USB_ULPI_XCLK    ( USB_ULPI_XCLK ),
        .FAB_RESET_N      ( VCC_net ), // tied to 1'b1 from definition
        .DEVRST_N         ( DEVRST_N ),
        .MMUART_0_RXD_F2M ( MMUART_0_RXD_F2M ),
        // Outputs
        .USB_ULPI_STP     ( USB_ULPI_STP_net_0 ),
        .POWER_ON_RESET_N (  ),
        .INIT_DONE        (  ),
        .FAB_CCC_GL0      ( testeISP_sb_0_FAB_CCC_GL0 ),
        .FAB_CCC_LOCK     (  ),
        .MSS_READY        ( testeISP_sb_0_MSS_READY ),
        .MMUART_0_TXD_M2F ( MMUART_0_TXD_M2F_net_0 ),
        .GPIO_3_M2F       ( GPIO_3_M2F_net_0 ),
        // Inouts
        .USB_ULPI_DATA    ( USB_ULPI_DATA ) 
        );


endmodule
