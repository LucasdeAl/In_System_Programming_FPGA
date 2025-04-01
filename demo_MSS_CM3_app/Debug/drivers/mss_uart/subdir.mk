################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/mss_uart/mss_uart.c 

OBJS += \
./drivers/mss_uart/mss_uart.o 

C_DEPS += \
./drivers/mss_uart/mss_uart.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/mss_uart/%.o: ../drivers/mss_uart/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\CMSIS" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\CMSIS\startup_gcc" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers\mss_hpdma" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers\mss_nvm" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers\mss_timer" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers\mss_uart" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers_config" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers_config\sys_config" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\hal" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\hal\CortexM3" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\hal\CortexM3\GNU" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\mss_sys_services" -std=gnu11 --specs=cmsis.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


