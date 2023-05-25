################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/sys/linux/dedicated.cpp \
../src/sys/linux/glimp.cpp \
../src/sys/linux/input.cpp \
../src/sys/linux/main.cpp \
../src/sys/linux/sound.cpp \
../src/sys/linux/sound_alsa.cpp \
../src/sys/linux/stack.cpp 

C_SRCS += \
../src/sys/linux/test_scheduler.c 

OBJS += \
./src/sys/linux/dedicated.o \
./src/sys/linux/glimp.o \
./src/sys/linux/input.o \
./src/sys/linux/main.o \
./src/sys/linux/sound.o \
./src/sys/linux/sound_alsa.o \
./src/sys/linux/stack.o \
./src/sys/linux/test_scheduler.o 


# Each subdirectory must supply rules for building sources it contributes
src/sys/linux/%.o: ../src/sys/linux/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/sys/linux/%.o: ../src/sys/linux/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


