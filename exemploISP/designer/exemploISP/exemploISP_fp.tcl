new_project \
         -name {exemploISP} \
         -location {C:\Users\Lucas\OneDrive\Documentos\nascerr_bootloader\Github\In_System_Programming_FPGA\exemploISP\designer\exemploISP\exemploISP_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2S025} \
         -name {M2S025}
enable_device \
         -name {M2S025} \
         -enable {TRUE}
save_project
close_project
