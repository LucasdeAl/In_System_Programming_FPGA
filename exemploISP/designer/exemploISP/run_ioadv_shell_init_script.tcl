set_device \
    -family  SmartFusion2 \
    -die     PA4M2500_N \
    -package vf256 \
    -speed   STD \
    -tempr   {COM} \
    -voltr   {COM}
set_def {VOLTAGE} {1.2}
set_def {VCCI_1.2_VOLTR} {COM}
set_def {VCCI_1.5_VOLTR} {COM}
set_def {VCCI_1.8_VOLTR} {COM}
set_def {VCCI_2.5_VOLTR} {COM}
set_def {VCCI_3.3_VOLTR} {COM}
set_def {PLL_SUPPLY} {PLL_SUPPLY_25}
set_def USE_CONSTRAINTS_FLOW 1
set_netlist -afl {C:\Users\Lucas\OneDrive\Documentos\nascerr_bootloader\Github\In_System_Programming_FPGA\exemploISP\designer\exemploISP\exemploISP.afl} -adl {C:\Users\Lucas\OneDrive\Documentos\nascerr_bootloader\Github\In_System_Programming_FPGA\exemploISP\designer\exemploISP\exemploISP.adl}
set_constraints   {C:\Users\Lucas\OneDrive\Documentos\nascerr_bootloader\Github\In_System_Programming_FPGA\exemploISP\designer\exemploISP\exemploISP.tcml}
set_placement   {C:\Users\Lucas\OneDrive\Documentos\nascerr_bootloader\Github\In_System_Programming_FPGA\exemploISP\designer\exemploISP\exemploISP.loc}
set_routing     {C:\Users\Lucas\OneDrive\Documentos\nascerr_bootloader\Github\In_System_Programming_FPGA\exemploISP\designer\exemploISP\exemploISP.seg}
