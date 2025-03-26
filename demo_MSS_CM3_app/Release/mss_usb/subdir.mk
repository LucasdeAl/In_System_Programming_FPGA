################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mss_usb/mss_usb_common_cif.c \
../mss_usb/mss_usb_device.c \
../mss_usb/mss_usb_device_cdc.c \
../mss_usb/mss_usb_device_cif.c \
../mss_usb/mss_usb_device_hid.c \
../mss_usb/mss_usb_device_msd.c \
../mss_usb/mss_usb_host.c \
../mss_usb/mss_usb_host_cif.c \
../mss_usb/mss_usb_host_msc.c 

OBJS += \
./mss_usb/mss_usb_common_cif.o \
./mss_usb/mss_usb_device.o \
./mss_usb/mss_usb_device_cdc.o \
./mss_usb/mss_usb_device_cif.o \
./mss_usb/mss_usb_device_hid.o \
./mss_usb/mss_usb_device_msd.o \
./mss_usb/mss_usb_host.o \
./mss_usb/mss_usb_host_cif.o \
./mss_usb/mss_usb_host_msc.o 

C_DEPS += \
./mss_usb/mss_usb_common_cif.d \
./mss_usb/mss_usb_device.d \
./mss_usb/mss_usb_device_cdc.d \
./mss_usb/mss_usb_device_cif.d \
./mss_usb/mss_usb_device_hid.d \
./mss_usb/mss_usb_device_msd.d \
./mss_usb/mss_usb_host.d \
./mss_usb/mss_usb_host_cif.d \
./mss_usb/mss_usb_host_msc.d 


# Each subdirectory must supply rules for building sources it contributes
mss_usb/%.o: ../mss_usb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\mss_sys_services" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\mss_usb" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\FatFs" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\FatFs\src" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\FatFs\src\option" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\mss_sys_services" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\mss_usb" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\CMSIS" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\CMSIS\startup_gcc" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_gpio" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_hpdma" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_nvm" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_timer" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_uart" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers_config" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers_config\sys_config" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\FatFs" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\FatFs\src" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\FatFs\src\option" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\filelist" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\hal" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\hal\CortexM3" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\hal\CortexM3\GNU" -std=gnu11 --specs=cmsis.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


