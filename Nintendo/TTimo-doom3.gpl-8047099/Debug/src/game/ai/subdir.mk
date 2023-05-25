################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/game/ai/AAS.cpp \
../src/game/ai/AAS_debug.cpp \
../src/game/ai/AAS_pathing.cpp \
../src/game/ai/AAS_routing.cpp \
../src/game/ai/AI.cpp \
../src/game/ai/AI_Vagary.cpp \
../src/game/ai/AI_events.cpp \
../src/game/ai/AI_pathing.cpp 

OBJS += \
./src/game/ai/AAS.o \
./src/game/ai/AAS_debug.o \
./src/game/ai/AAS_pathing.o \
./src/game/ai/AAS_routing.o \
./src/game/ai/AI.o \
./src/game/ai/AI_Vagary.o \
./src/game/ai/AI_events.o \
./src/game/ai/AI_pathing.o 


# Each subdirectory must supply rules for building sources it contributes
src/game/ai/%.o: ../src/game/ai/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


