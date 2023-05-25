################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/d3xp/ai/AAS.cpp \
../src/d3xp/ai/AAS_debug.cpp \
../src/d3xp/ai/AAS_pathing.cpp \
../src/d3xp/ai/AAS_routing.cpp \
../src/d3xp/ai/AI.cpp \
../src/d3xp/ai/AI_Vagary.cpp \
../src/d3xp/ai/AI_events.cpp \
../src/d3xp/ai/AI_pathing.cpp 

OBJS += \
./src/d3xp/ai/AAS.o \
./src/d3xp/ai/AAS_debug.o \
./src/d3xp/ai/AAS_pathing.o \
./src/d3xp/ai/AAS_routing.o \
./src/d3xp/ai/AI.o \
./src/d3xp/ai/AI_Vagary.o \
./src/d3xp/ai/AI_events.o \
./src/d3xp/ai/AI_pathing.o 


# Each subdirectory must supply rules for building sources it contributes
src/d3xp/ai/%.o: ../src/d3xp/ai/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


