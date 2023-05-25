################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/tools/sound/DialogSound.cpp \
../src/tools/sound/DialogSoundGroup.cpp 

OBJS += \
./src/tools/sound/DialogSound.o \
./src/tools/sound/DialogSoundGroup.o 


# Each subdirectory must supply rules for building sources it contributes
src/tools/sound/%.o: ../src/tools/sound/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


