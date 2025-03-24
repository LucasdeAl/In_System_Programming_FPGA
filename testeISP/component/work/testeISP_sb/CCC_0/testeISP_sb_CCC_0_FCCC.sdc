set_component testeISP_sb_CCC_0_FCCC
# Microchip Technology Inc.
# Date: 2025-Mar-20 15:22:22
#

create_clock -period 20 [ get_pins { CCC_INST/RCOSC_25_50MHZ } ]
create_generated_clock -multiply_by 4 -divide_by 2 -source [ get_pins { CCC_INST/RCOSC_25_50MHZ } ] -phase 0 [ get_pins { CCC_INST/GL0 } ]
