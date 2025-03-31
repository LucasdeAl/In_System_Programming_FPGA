open_project -project {C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\Github\In_System_Programming_FPGA\exemploISP\designer\exemploISP\exemploISP_fp\exemploISP.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {M2S025} \
    -fpga {C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\Github\In_System_Programming_FPGA\exemploISP\designer\exemploISP\exemploISP.map} \
    -header {C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\Github\In_System_Programming_FPGA\exemploISP\designer\exemploISP\exemploISP.hdr} \
    -spm {C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\Github\In_System_Programming_FPGA\exemploISP\designer\exemploISP\exemploISP.spm} \
    -dca {C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\Github\In_System_Programming_FPGA\exemploISP\designer\exemploISP\exemploISP.dca}
export_single_ppd \
    -name {M2S025} \
    -file {C:/Users/Lucas/OneDrive/Documentos\exemploISP.ppd}

export_single_dat \
    -name {M2S025} \
    -file {C:/Users/Lucas/OneDrive/Documentos\exemploISP.dat} \
    -secured

export_spi_master \
    -name {M2S025} \
    -file {C:/Users/Lucas/OneDrive/Documentos\exemploISP.spi} \
    -secured

save_project
close_project
