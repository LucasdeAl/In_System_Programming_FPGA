//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Mar 31 14:54:00 2025
// Version: 2024.1 2024.1.0.3
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

//////////////////////////////////////////////////////////////////////
// Component Description (Tcl) 
//////////////////////////////////////////////////////////////////////
/*
# Exporting Component Description of OSC_C1 to TCL
# Family: SmartFusion2
# Part Number: M2S025-VF256
# Create and Configure the core component OSC_C1
create_and_configure_core -core_vlnv {Actel:SgCore:OSC:2.0.101} -component_name {OSC_C1} -params {\
"RCOSC_1MHZ_DRIVES_CCC:false"  \
"RCOSC_1MHZ_DRIVES_FAB:1"  \
"RCOSC_1MHZ_IS_USED:1"  \
"RCOSC_25_50MHZ_DRIVES_CCC:false"  \
"RCOSC_25_50MHZ_DRIVES_FAB:false"  \
"RCOSC_25_50MHZ_IS_USED:false"  \
"VOLTAGE_IS_1_2:true"  \
"XTLOSC_DRIVES_CCC:false"  \
"XTLOSC_DRIVES_FAB:false"  \
"XTLOSC_FREQ:20.00"  \
"XTLOSC_IS_USED:false"  \
"XTLOSC_SRC:CRYSTAL"   }
# Exporting Component Description of OSC_C1 to TCL done
*/

// OSC_C1
module OSC_C1(
    // Outputs
    RCOSC_1MHZ_O2F
);

//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output RCOSC_1MHZ_O2F;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   RCOSC_1MHZ_O2F_net_0;
wire   RCOSC_1MHZ_O2F_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   GND_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign RCOSC_1MHZ_O2F_net_1 = RCOSC_1MHZ_O2F_net_0;
assign RCOSC_1MHZ_O2F       = RCOSC_1MHZ_O2F_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------OSC_C1_OSC_C1_0_OSC   -   Actel:SgCore:OSC:2.0.101
OSC_C1_OSC_C1_0_OSC OSC_C1_0(
        // Inputs
        .XTL                ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .RCOSC_25_50MHZ_CCC (  ),
        .RCOSC_25_50MHZ_O2F (  ),
        .RCOSC_1MHZ_CCC     (  ),
        .RCOSC_1MHZ_O2F     ( RCOSC_1MHZ_O2F_net_0 ),
        .XTLOSC_CCC         (  ),
        .XTLOSC_O2F         (  ) 
        );


endmodule
