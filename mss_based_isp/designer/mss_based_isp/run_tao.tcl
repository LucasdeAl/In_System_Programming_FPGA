set_device -family {SmartFusion2} -die {M2S025} -speed {STD}
read_verilog -mode system_verilog {C:\Users\Lucas\Documents\Nascerr\mss_based_isp\hdl\Ram_interface.v}
read_verilog -mode system_verilog {C:\Users\Lucas\Documents\Nascerr\mss_based_isp\component\Actel\SgCore\TAMPER\2.1.300\tamper_comps.v}
read_verilog -mode system_verilog {C:\Users\Lucas\Documents\Nascerr\mss_based_isp\component\work\TAMPER_C0\TAMPER_C0_0\TAMPER_C0_TAMPER_C0_0_TAMPER.v}
read_verilog -mode system_verilog {C:\Users\Lucas\Documents\Nascerr\mss_based_isp\component\work\TAMPER_C0\TAMPER_C0.v}
read_verilog -mode system_verilog {C:\Users\Lucas\Documents\Nascerr\mss_based_isp\component\work\TPSRAM_C0\TPSRAM_C0_0\TPSRAM_C0_TPSRAM_C0_0_TPSRAM.v}
read_verilog -mode system_verilog {C:\Users\Lucas\Documents\Nascerr\mss_based_isp\component\work\TPSRAM_C0\TPSRAM_C0.v}
read_verilog -mode system_verilog {C:\Users\Lucas\Documents\Nascerr\mss_based_isp\component\work\Dev_Restart_after_ISP_blk\Dev_Restart_after_ISP_blk.v}
read_verilog -mode system_verilog {C:\Users\Lucas\Documents\Nascerr\mss_based_isp\component\work\mss_based_isp_MSS\mss_based_isp_MSS.v}
read_verilog -mode system_verilog {C:\Users\Lucas\Documents\Nascerr\mss_based_isp\component\work\mss_based_isp\mss_based_isp.v}
set_top_level {mss_based_isp}
map_netlist
check_constraints {C:\Users\Lucas\Documents\Nascerr\mss_based_isp\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Users\Lucas\Documents\Nascerr\mss_based_isp\designer\mss_based_isp\synthesis.fdc}
