################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/mss_usb/mss_usb_common_cif.c \
../drivers/mss_usb/mss_usb_device.c \
../drivers/mss_usb/mss_usb_device_cdc.c \
../drivers/mss_usb/mss_usb_device_cif.c \
../drivers/mss_usb/mss_usb_device_hid.c \
../drivers/mss_usb/mss_usb_device_msd.c \
../drivers/mss_usb/mss_usb_device_printer.c \
../drivers/mss_usb/mss_usb_device_vendor.c \
../drivers/mss_usb/mss_usb_host.c \
../drivers/mss_usb/mss_usb_host_cif.c \
../drivers/mss_usb/mss_usb_host_msc.c 

OBJS += \
./drivers/mss_usb/mss_usb_common_cif.o \
./drivers/mss_usb/mss_usb_device.o \
./drivers/mss_usb/mss_usb_device_cdc.o \
./drivers/mss_usb/mss_usb_device_cif.o \
./drivers/mss_usb/mss_usb_device_hid.o \
./drivers/mss_usb/mss_usb_device_msd.o \
./drivers/mss_usb/mss_usb_device_printer.o \
./drivers/mss_usb/mss_usb_device_vendor.o \
./drivers/mss_usb/mss_usb_host.o \
./drivers/mss_usb/mss_usb_host_cif.o \
./drivers/mss_usb/mss_usb_host_msc.o 

C_DEPS += \
./drivers/mss_usb/mss_usb_common_cif.d \
./drivers/mss_usb/mss_usb_device.d \
./drivers/mss_usb/mss_usb_device_cdc.d \
./drivers/mss_usb/mss_usb_device_cif.d \
./drivers/mss_usb/mss_usb_device_hid.d \
./drivers/mss_usb/mss_usb_device_msd.d \
./drivers/mss_usb/mss_usb_device_printer.d \
./drivers/mss_usb/mss_usb_device_vendor.d \
./drivers/mss_usb/mss_usb_host.d \
./drivers/mss_usb/mss_usb_host_cif.d \
./drivers/mss_usb/mss_usb_host_msc.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/mss_usb/%.o: ../drivers/mss_usb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\CMSIS" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\CMSIS\startup_gcc" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_gpio" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_hpdma" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_nvm" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_sys_services" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_timer" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_uart" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers\mss_usb" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers_config" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\drivers_config\sys_config" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\FatFs" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\FatFs\src" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\FatFs\src\option" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\filelist" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\hal" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\hal\CortexM3" -I"D:\11.8\testing\dg0471\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\hal\CortexM3\GNU" -std=gnu11 --specs=cmsis.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


