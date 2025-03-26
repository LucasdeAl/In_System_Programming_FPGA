################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/mss_sys_services/mss_comblk.c \
../drivers/mss_sys_services/mss_sys_services.c 

OBJS += \
./drivers/mss_sys_services/mss_comblk.o \
./drivers/mss_sys_services/mss_sys_services.o 

C_DEPS += \
./drivers/mss_sys_services/mss_comblk.d \
./drivers/mss_sys_services/mss_sys_services.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/mss_sys_services/%.o: ../drivers/mss_sys_services/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\CMSIS" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\CMSIS\startup_gcc" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_gpio" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_hpdma" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_nvm" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_sys_services" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_timer" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_uart" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_usb" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers_config" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers_config\sys_config" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\FatFs" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\FatFs\src" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\FatFs\src\option" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\filelist" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\hal" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\hal\CortexM3" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\hal\CortexM3\GNU" -std=gnu11 --specs=cmsis.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


