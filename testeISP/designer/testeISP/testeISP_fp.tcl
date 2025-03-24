new_project \
         -name {testeISP} \
         -location {D:\Microchip\Libero_SoC_v2024.1\Designer\bin\testeISP\designer\testeISP\testeISP_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2S025T} \
         -name {M2S025T}
enable_device \
         -name {M2S025T} \
         -enable {TRUE}
save_project
close_project
