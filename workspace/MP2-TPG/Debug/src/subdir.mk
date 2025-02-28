################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/camera_app.c \
../src/fmc_imageon_utils.c \
../src/platform.c \
../src/video_detector.c \
../src/video_frame_buffer.c \
../src/video_generator.c \
../src/video_resolution.c \
../src/xtpg_app.c 

OBJS += \
./src/camera_app.o \
./src/fmc_imageon_utils.o \
./src/platform.o \
./src/video_detector.o \
./src/video_frame_buffer.o \
./src/video_generator.o \
./src/video_resolution.o \
./src/xtpg_app.o 

C_DEPS += \
./src/camera_app.d \
./src/fmc_imageon_utils.d \
./src/platform.d \
./src/video_detector.d \
./src/video_frame_buffer.d \
./src/video_generator.d \
./src/video_resolution.d \
./src/xtpg_app.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -IC:/Users/oparker/workspace/design_1_wrapper/export/design_1_wrapper/sw/design_1_wrapper/domain_ps7_cortexa9_0/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


