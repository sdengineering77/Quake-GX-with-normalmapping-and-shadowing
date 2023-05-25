################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/sys/posix/posix_input.cpp \
../src/sys/posix/posix_main.cpp \
../src/sys/posix/posix_net.cpp \
../src/sys/posix/posix_signal.cpp \
../src/sys/posix/posix_threads.cpp 

OBJS += \
./src/sys/posix/posix_input.o \
./src/sys/posix/posix_main.o \
./src/sys/posix/posix_net.o \
./src/sys/posix/posix_signal.o \
./src/sys/posix/posix_threads.o 


# Each subdirectory must supply rules for building sources it contributes
src/sys/posix/%.o: ../src/sys/posix/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


