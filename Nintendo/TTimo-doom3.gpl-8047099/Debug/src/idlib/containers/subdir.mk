################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/idlib/containers/HashIndex.cpp 

OBJS += \
./src/idlib/containers/HashIndex.o 


# Each subdirectory must supply rules for building sources it contributes
src/idlib/containers/%.o: ../src/idlib/containers/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


