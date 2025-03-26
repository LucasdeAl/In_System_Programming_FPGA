################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include mss_usb/subdir.mk
-include mss_sys_services/subdir.mk
-include hal/CortexM3/GNU/subdir.mk
-include hal/CortexM3/subdir.mk
-include drivers_config/sys_config/subdir.mk
-include drivers/mss_uart/subdir.mk
-include drivers/mss_nvm/subdir.mk
-include drivers/mss_hpdma/subdir.mk
-include drivers/mss_gpio/subdir.mk
-include FatFs/src/option/subdir.mk
-include FatFs/src/subdir.mk
-include CMSIS/startup_gcc/subdir.mk
-include CMSIS/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
demo_MSS_CM3_app.hex \

SECONDARY_SIZE += \
demo_MSS_CM3_app.siz \


# All Target
all: demo_MSS_CM3_app.elf secondary-outputs

# Tool invocations
demo_MSS_CM3_app.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross ARM C Linker'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -T "C:\Users\Lucas\Downloads\m2s_dg0471_liberov11p8_df\sf2_isp_using_usb_interface_demo_df\libero\SoftConsole4.0\demo_MSS_CM3_app\production-smartfusion2-execute-in-place.ld" -Xlinker --gc-sections -Wl,-Map,"demo_MSS_CM3_app.map" --specs=nano.specs -o "demo_MSS_CM3_app.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

demo_MSS_CM3_app.hex: demo_MSS_CM3_app.elf
	@echo 'Invoking: Cross ARM GNU Create Flash Image'
	arm-none-eabi-objcopy -O ihex "demo_MSS_CM3_app.elf"  "demo_MSS_CM3_app.hex"
	@echo 'Finished building: $@'
	@echo ' '

demo_MSS_CM3_app.siz: demo_MSS_CM3_app.elf
	@echo 'Invoking: Cross ARM GNU Print Size'
	arm-none-eabi-size --format=berkeley "demo_MSS_CM3_app.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS) demo_MSS_CM3_app.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
