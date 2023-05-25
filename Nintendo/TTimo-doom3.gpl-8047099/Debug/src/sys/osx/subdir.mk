################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/sys/osx/PickMonitor.cpp \
../src/sys/osx/PreferencesDialog.cpp \
../src/sys/osx/macosx_guids.cpp \
../src/sys/osx/macosx_sound.cpp 

C_SRCS += \
../src/sys/osx/showcursor.c 

OBJS += \
./src/sys/osx/PickMonitor.o \
./src/sys/osx/PreferencesDialog.o \
./src/sys/osx/macosx_guids.o \
./src/sys/osx/macosx_sound.o \
./src/sys/osx/showcursor.o 


# Each subdirectory must supply rules for building sources it contributes
src/sys/osx/%.o: ../src/sys/osx/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/sys/osx/%.o: ../src/sys/osx/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


