open_project -project {C:\Users\Lucas\Documents\Nascerr\mss_based_isp\designer\mss_based_isp\mss_based_isp_fp\mss_based_isp.pro}
enable_device -name {M2S025} -enable 1
set_programming_file -name {M2S025} -file {C:\Users\Lucas\Documents\Nascerr\mss_based_isp\designer\mss_based_isp\mss_based_isp.ppd}
set_programming_action -action {PROGRAM} -name {M2S025} 
run_selected_actions
save_project
close_project
