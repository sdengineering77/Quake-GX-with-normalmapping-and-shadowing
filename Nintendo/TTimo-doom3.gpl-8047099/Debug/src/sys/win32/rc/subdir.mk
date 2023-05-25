################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/sys/win32/rc/CreateResourceIDs.cpp 

OBJS += \
./src/sys/win32/rc/CreateResourceIDs.o 


# Each subdirectory must supply rules for building sources it contributes
src/sys/win32/rc/%.o: ../src/sys/win32/rc/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


