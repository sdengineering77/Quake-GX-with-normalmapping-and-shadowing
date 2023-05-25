################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/tools/compilers/renderbump/renderbump.cpp 

OBJS += \
./src/tools/compilers/renderbump/renderbump.o 


# Each subdirectory must supply rules for building sources it contributes
src/tools/compilers/renderbump/%.o: ../src/tools/compilers/renderbump/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


