################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/game/script/Script_Compiler.cpp \
../src/game/script/Script_Interpreter.cpp \
../src/game/script/Script_Program.cpp \
../src/game/script/Script_Thread.cpp 

OBJS += \
./src/game/script/Script_Compiler.o \
./src/game/script/Script_Interpreter.o \
./src/game/script/Script_Program.o \
./src/game/script/Script_Thread.o 


# Each subdirectory must supply rules for building sources it contributes
src/game/script/%.o: ../src/game/script/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


