open_project -project {D:\Microchip\Libero_SoC_v2024.1\Designer\bin\testeISP\designer\testeISP\testeISP_fp\testeISP.pro}
enable_device -name {M2S025T} -enable 1
set_programming_file -name {M2S025T} -file {D:\Microchip\Libero_SoC_v2024.1\Designer\bin\testeISP\designer\testeISP\testeISP.ppd}
set_programming_action -action {PROGRAM} -name {M2S025T} 
run_selected_actions
save_project
close_project
