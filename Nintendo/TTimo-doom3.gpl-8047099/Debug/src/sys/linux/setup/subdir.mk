################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/sys/linux/setup/brandelf.c 

OBJS += \
./src/sys/linux/setup/brandelf.o 


# Each subdirectory must supply rules for building sources it contributes
src/sys/linux/setup/%.o: ../src/sys/linux/setup/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


