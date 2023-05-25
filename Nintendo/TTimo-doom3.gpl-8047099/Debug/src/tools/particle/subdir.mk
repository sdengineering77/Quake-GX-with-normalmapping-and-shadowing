################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/tools/particle/DialogParticleEditor.cpp 

OBJS += \
./src/tools/particle/DialogParticleEditor.o 


# Each subdirectory must supply rules for building sources it contributes
src/tools/particle/%.o: ../src/tools/particle/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


