new_project \
         -name {mss_based_isp} \
         -location {C:\Users\Lucas\Documents\Nascerr\mss_based_isp\designer\mss_based_isp\mss_based_isp_fp} \
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
