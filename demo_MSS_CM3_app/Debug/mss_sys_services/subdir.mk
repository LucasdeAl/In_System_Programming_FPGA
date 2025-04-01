################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mss_sys_services/mss_comblk.c \
../mss_sys_services/mss_sys_services.c 

OBJS += \
./mss_sys_services/mss_comblk.o \
./mss_sys_services/mss_sys_services.o 

C_DEPS += \
./mss_sys_services/mss_comblk.d \
./mss_sys_services/mss_sys_services.d 


# Each subdirectory must supply rules for building sources it contributes
mss_sys_services/%.o: ../mss_sys_services/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\CMSIS" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\CMSIS\startup_gcc" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers\mss_hpdma" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers\mss_nvm" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers\mss_timer" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers\mss_uart" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers_config" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\drivers_config\sys_config" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\hal" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\hal\CortexM3" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\hal\CortexM3\GNU" -I"C:\Users\Lucas\OneDrive\Documentos\nascerrBootloader\sf2_isp_using_uart_interface_demo_df\libero\SoftConsole\demo_MSS_CM3_app\mss_sys_services" -std=gnu11 --specs=cmsis.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


