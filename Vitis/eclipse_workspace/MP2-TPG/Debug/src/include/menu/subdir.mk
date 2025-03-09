################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/include/menu/menu.c 

OBJS += \
./src/include/menu/menu.o 

C_DEPS += \
./src/include/menu/menu.d 


# Each subdirectory must supply rules for building sources it contributes
src/include/menu/%.o: ../src/include/menu/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/connero/Downloads/cpre488-mp2/Vitis/eclipse_workspace/TPG/export/TPG/sw/TPG/standalone_domain/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


