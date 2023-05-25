################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/TypeInfo/TypeInfoGen.cpp \
../src/TypeInfo/main.cpp 

OBJS += \
./src/TypeInfo/TypeInfoGen.o \
./src/TypeInfo/main.o 


# Each subdirectory must supply rules for building sources it contributes
src/TypeInfo/%.o: ../src/TypeInfo/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


