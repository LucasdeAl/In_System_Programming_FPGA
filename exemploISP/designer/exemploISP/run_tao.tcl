set_device -family {SmartFusion2} -die {M2S025} -speed {STD}
read_verilog -mode system_verilog {C:\Users\Lucas\OneDrive\Documentos\nascerr_bootloader\Github\In_System_Programming_FPGA\exemploISP\component\work\OSC_C1\OSC_C1_0\OSC_C1_OSC_C1_0_OSC.v}
read_verilog -mode system_verilog {C:\Users\Lucas\OneDrive\Documentos\nascerr_bootloader\Github\In_System_Programming_FPGA\exemploISP\component\work\OSC_C1\OSC_C1.v}
read_verilog -mode system_verilog {C:\Users\Lucas\OneDrive\Documentos\nascerr_bootloader\Github\In_System_Programming_FPGA\exemploISP\hdl\led_blink.v}
read_verilog -mode system_verilog {C:\Users\Lucas\OneDrive\Documentos\nascerr_bootloader\Github\In_System_Programming_FPGA\exemploISP\component\work\exemploISP\exemploISP.v}
set_top_level {exemploISP}
map_netlist
check_constraints {C:\Users\Lucas\OneDrive\Documentos\nascerr_bootloader\Github\In_System_Programming_FPGA\exemploISP\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Users\Lucas\OneDrive\Documentos\nascerr_bootloader\Github\In_System_Programming_FPGA\exemploISP\designer\exemploISP\synthesis.fdc}
