################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../hal/CortexM3/GNU/hal.S \
../hal/CortexM3/GNU/hw_reg_access.S 

OBJS += \
./hal/CortexM3/GNU/hal.o \
./hal/CortexM3/GNU/hw_reg_access.o 

S_UPPER_DEPS += \
./hal/CortexM3/GNU/hal.d \
./hal/CortexM3/GNU/hw_reg_access.d 


# Each subdirectory must supply rules for building sources it contributes
hal/CortexM3/GNU/%.o: ../hal/CortexM3/GNU/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\mss_sys_services" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\mss_usb" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\FatFs" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\FatFs\src" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\FatFs\src\option" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\mss_sys_services" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\mss_usb" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\CMSIS" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\CMSIS\startup_gcc" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_gpio" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_hpdma" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_nvm" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_timer" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_uart" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers_config" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers_config\sys_config" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\FatFs" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\FatFs\src" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\FatFs\src\option" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\filelist" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\hal" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\hal\CortexM3" -I"C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\hal\CortexM3\GNU" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


