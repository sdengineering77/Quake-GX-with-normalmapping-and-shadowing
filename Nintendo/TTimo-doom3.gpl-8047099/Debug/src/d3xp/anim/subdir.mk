################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/d3xp/anim/Anim.cpp \
../src/d3xp/anim/Anim_Blend.cpp \
../src/d3xp/anim/Anim_Import.cpp \
../src/d3xp/anim/Anim_Testmodel.cpp 

OBJS += \
./src/d3xp/anim/Anim.o \
./src/d3xp/anim/Anim_Blend.o \
./src/d3xp/anim/Anim_Import.o \
./src/d3xp/anim/Anim_Testmodel.o 


# Each subdirectory must supply rules for building sources it contributes
src/d3xp/anim/%.o: ../src/d3xp/anim/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


