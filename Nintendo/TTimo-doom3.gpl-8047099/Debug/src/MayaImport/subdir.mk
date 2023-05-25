################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/MayaImport/maya_main.cpp 

OBJS += \
./src/MayaImport/maya_main.o 


# Each subdirectory must supply rules for building sources it contributes
src/MayaImport/%.o: ../src/MayaImport/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


