################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/d3xp/script/Script_Compiler.cpp \
../src/d3xp/script/Script_Interpreter.cpp \
../src/d3xp/script/Script_Program.cpp \
../src/d3xp/script/Script_Thread.cpp 

OBJS += \
./src/d3xp/script/Script_Compiler.o \
./src/d3xp/script/Script_Interpreter.o \
./src/d3xp/script/Script_Program.o \
./src/d3xp/script/Script_Thread.o 


# Each subdirectory must supply rules for building sources it contributes
src/d3xp/script/%.o: ../src/d3xp/script/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


