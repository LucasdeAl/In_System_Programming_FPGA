set_device -family {SmartFusion2} -die {M2S025T} -speed {STD}
read_verilog -mode system_verilog {C:\Users\Lucas\Documents\Nascerr\In_System_Programming_FPGA\testeISP\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp_pcie_hotreset.v}
read_verilog -mode system_verilog {C:\Users\Lucas\Documents\Nascerr\In_System_Programming_FPGA\testeISP\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp.v}
read_verilog -mode system_verilog {C:\Users\Lucas\Documents\Nascerr\In_System_Programming_FPGA\testeISP\component\work\testeISP_sb\CCC_0\testeISP_sb_CCC_0_FCCC.v}
read_verilog -mode system_verilog {C:\Users\Lucas\Documents\Nascerr\In_System_Programming_FPGA\testeISP\component\work\testeISP_sb\FABOSC_0\testeISP_sb_FABOSC_0_OSC.v}
read_verilog -mode system_verilog {C:\Users\Lucas\Documents\Nascerr\In_System_Programming_FPGA\testeISP\component\work\testeISP_sb_MSS\testeISP_sb_MSS.v}
read_verilog -mode system_verilog {C:\Users\Lucas\Documents\Nascerr\In_System_Programming_FPGA\testeISP\component\work\testeISP_sb\testeISP_sb.v}
read_verilog -mode system_verilog {C:\Users\Lucas\Documents\Nascerr\In_System_Programming_FPGA\testeISP\component\work\testeISP\testeISP.v}
set_top_level {testeISP}
map_netlist
check_constraints {C:\Users\Lucas\Documents\Nascerr\In_System_Programming_FPGA\testeISP\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Users\Lucas\Documents\Nascerr\In_System_Programming_FPGA\testeISP\designer\testeISP\synthesis.fdc}
