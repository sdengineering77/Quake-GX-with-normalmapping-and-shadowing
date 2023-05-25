################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/sys/linux/libXNVCtrl/NVCtrl.c 

OBJS += \
./src/sys/linux/libXNVCtrl/NVCtrl.o 


# Each subdirectory must supply rules for building sources it contributes
src/sys/linux/libXNVCtrl/%.o: ../src/sys/linux/libXNVCtrl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


