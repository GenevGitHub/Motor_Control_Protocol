################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/main.c \
C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/mc_api.c \
C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/mc_config.c \
C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/mc_interface.c \
C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/mc_math.c \
C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/mc_parameters.c \
C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/mc_tasks.c \
C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/motor_control_protocol.c \
C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/motorcontrol.c \
../Application/User/power_control.c \
../Application/User/power_control_LL.c \
C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/regular_conversion_manager.c \
C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/stm32f4xx_hal_msp.c \
C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/stm32f4xx_it.c \
C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/stm32f4xx_mc_it.c \
../Application/User/syscalls.c \
../Application/User/sysmem.c \
../Application/User/system_control_protocol.c \
../Application/User/system_control_protocol_LL.c \
C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/ui_task.c \
C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/user_interface.c 

OBJS += \
./Application/User/main.o \
./Application/User/mc_api.o \
./Application/User/mc_config.o \
./Application/User/mc_interface.o \
./Application/User/mc_math.o \
./Application/User/mc_parameters.o \
./Application/User/mc_tasks.o \
./Application/User/motor_control_protocol.o \
./Application/User/motorcontrol.o \
./Application/User/power_control.o \
./Application/User/power_control_LL.o \
./Application/User/regular_conversion_manager.o \
./Application/User/stm32f4xx_hal_msp.o \
./Application/User/stm32f4xx_it.o \
./Application/User/stm32f4xx_mc_it.o \
./Application/User/syscalls.o \
./Application/User/sysmem.o \
./Application/User/system_control_protocol.o \
./Application/User/system_control_protocol_LL.o \
./Application/User/ui_task.o \
./Application/User/user_interface.o 

C_DEPS += \
./Application/User/main.d \
./Application/User/mc_api.d \
./Application/User/mc_config.d \
./Application/User/mc_interface.d \
./Application/User/mc_math.d \
./Application/User/mc_parameters.d \
./Application/User/mc_tasks.d \
./Application/User/motor_control_protocol.d \
./Application/User/motorcontrol.d \
./Application/User/power_control.d \
./Application/User/power_control_LL.d \
./Application/User/regular_conversion_manager.d \
./Application/User/stm32f4xx_hal_msp.d \
./Application/User/stm32f4xx_it.d \
./Application/User/stm32f4xx_mc_it.d \
./Application/User/syscalls.d \
./Application/User/sysmem.d \
./Application/User/system_control_protocol.d \
./Application/User/system_control_protocol_LL.d \
./Application/User/ui_task.d \
./Application/User/user_interface.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/main.o: C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/main.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F415xx -DUSE_HAL_DRIVER -DARM_MATH_CM4 -DDEBUG -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/UILibrary/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/SystemDriveParams -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/POWER_CTL" -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/SYS_CTL" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/mc_api.o: C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/mc_api.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F415xx -DUSE_HAL_DRIVER -DARM_MATH_CM4 -DDEBUG -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/UILibrary/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/SystemDriveParams -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/POWER_CTL" -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/SYS_CTL" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/mc_config.o: C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/mc_config.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F415xx -DUSE_HAL_DRIVER -DARM_MATH_CM4 -DDEBUG -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/UILibrary/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/SystemDriveParams -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/POWER_CTL" -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/SYS_CTL" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/mc_interface.o: C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/mc_interface.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F415xx -DUSE_HAL_DRIVER -DARM_MATH_CM4 -DDEBUG -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/UILibrary/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/SystemDriveParams -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/POWER_CTL" -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/SYS_CTL" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/mc_math.o: C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/mc_math.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F415xx -DUSE_HAL_DRIVER -DARM_MATH_CM4 -DDEBUG -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/UILibrary/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/SystemDriveParams -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/POWER_CTL" -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/SYS_CTL" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/mc_parameters.o: C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/mc_parameters.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F415xx -DUSE_HAL_DRIVER -DARM_MATH_CM4 -DDEBUG -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/UILibrary/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/SystemDriveParams -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/POWER_CTL" -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/SYS_CTL" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/mc_tasks.o: C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/mc_tasks.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F415xx -DUSE_HAL_DRIVER -DARM_MATH_CM4 -DDEBUG -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/UILibrary/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/SystemDriveParams -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/POWER_CTL" -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/SYS_CTL" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/motor_control_protocol.o: C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/motor_control_protocol.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F415xx -DUSE_HAL_DRIVER -DARM_MATH_CM4 -DDEBUG -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/UILibrary/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/SystemDriveParams -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/POWER_CTL" -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/SYS_CTL" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/motorcontrol.o: C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/motorcontrol.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F415xx -DUSE_HAL_DRIVER -DARM_MATH_CM4 -DDEBUG -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/UILibrary/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/SystemDriveParams -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/POWER_CTL" -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/SYS_CTL" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/%.o: ../Application/User/%.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F415xx -DUSE_HAL_DRIVER -DARM_MATH_CM4 -DDEBUG -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/UILibrary/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/SystemDriveParams -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/POWER_CTL" -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/SYS_CTL" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/regular_conversion_manager.o: C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/regular_conversion_manager.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F415xx -DUSE_HAL_DRIVER -DARM_MATH_CM4 -DDEBUG -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/UILibrary/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/SystemDriveParams -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/POWER_CTL" -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/SYS_CTL" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32f4xx_hal_msp.o: C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/stm32f4xx_hal_msp.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F415xx -DUSE_HAL_DRIVER -DARM_MATH_CM4 -DDEBUG -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/UILibrary/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/SystemDriveParams -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/POWER_CTL" -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/SYS_CTL" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32f4xx_it.o: C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/stm32f4xx_it.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F415xx -DUSE_HAL_DRIVER -DARM_MATH_CM4 -DDEBUG -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/UILibrary/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/SystemDriveParams -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/POWER_CTL" -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/SYS_CTL" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/stm32f4xx_mc_it.o: C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/stm32f4xx_mc_it.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F415xx -DUSE_HAL_DRIVER -DARM_MATH_CM4 -DDEBUG -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/UILibrary/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/SystemDriveParams -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/POWER_CTL" -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/SYS_CTL" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/ui_task.o: C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/ui_task.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F415xx -DUSE_HAL_DRIVER -DARM_MATH_CM4 -DDEBUG -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/UILibrary/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/SystemDriveParams -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/POWER_CTL" -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/SYS_CTL" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/user_interface.o: C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/Src/user_interface.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32F415xx -DUSE_HAL_DRIVER -DARM_MATH_CM4 -DDEBUG -c -I../../Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/Any/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/MCLib/F4xx/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/UILibrary/Inc -I../../MCSDK_v5.4.5/MotorControl/MCSDK/SystemDriveParams -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/DSP/Include -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/POWER_CTL" -I"C:/Users/TerenceLeung/Documents/STM32_Prototyping/Control/control/SYS_CTL" -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User

clean-Application-2f-User:
	-$(RM) ./Application/User/main.d ./Application/User/main.o ./Application/User/mc_api.d ./Application/User/mc_api.o ./Application/User/mc_config.d ./Application/User/mc_config.o ./Application/User/mc_interface.d ./Application/User/mc_interface.o ./Application/User/mc_math.d ./Application/User/mc_math.o ./Application/User/mc_parameters.d ./Application/User/mc_parameters.o ./Application/User/mc_tasks.d ./Application/User/mc_tasks.o ./Application/User/motor_control_protocol.d ./Application/User/motor_control_protocol.o ./Application/User/motorcontrol.d ./Application/User/motorcontrol.o ./Application/User/power_control.d ./Application/User/power_control.o ./Application/User/power_control_LL.d ./Application/User/power_control_LL.o ./Application/User/regular_conversion_manager.d ./Application/User/regular_conversion_manager.o ./Application/User/stm32f4xx_hal_msp.d ./Application/User/stm32f4xx_hal_msp.o ./Application/User/stm32f4xx_it.d ./Application/User/stm32f4xx_it.o ./Application/User/stm32f4xx_mc_it.d ./Application/User/stm32f4xx_mc_it.o ./Application/User/syscalls.d ./Application/User/syscalls.o ./Application/User/sysmem.d ./Application/User/sysmem.o ./Application/User/system_control_protocol.d ./Application/User/system_control_protocol.o ./Application/User/system_control_protocol_LL.d ./Application/User/system_control_protocol_LL.o ./Application/User/ui_task.d ./Application/User/ui_task.o ./Application/User/user_interface.d ./Application/User/user_interface.o

.PHONY: clean-Application-2f-User

