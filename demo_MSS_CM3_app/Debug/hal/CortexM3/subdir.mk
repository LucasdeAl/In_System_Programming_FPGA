################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../hal/CortexM3/cortex_nvic.c 

OBJS += \
./hal/CortexM3/cortex_nvic.o 

C_DEPS += \
./hal/CortexM3/cortex_nvic.d 


# Each subdirectory must supply rules for building sources it contributes
hal/CortexM3/%.o: ../hal/CortexM3/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\CMSIS" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\CMSIS\startup_gcc" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers\mss_hpdma" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers\mss_nvm" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers\mss_timer" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers\mss_uart" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers_config" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers_config\sys_config" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\hal" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\hal\CortexM3" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\hal\CortexM3\GNU" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\mss_sys_services" -std=gnu11 --specs=cmsis.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


