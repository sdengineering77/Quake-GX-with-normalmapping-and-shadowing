################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/game/anim/Anim.cpp \
../src/game/anim/Anim_Blend.cpp \
../src/game/anim/Anim_Import.cpp \
../src/game/anim/Anim_Testmodel.cpp 

OBJS += \
./src/game/anim/Anim.o \
./src/game/anim/Anim_Blend.o \
./src/game/anim/Anim_Import.o \
./src/game/anim/Anim_Testmodel.o 


# Each subdirectory must supply rules for building sources it contributes
src/game/anim/%.o: ../src/game/anim/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


