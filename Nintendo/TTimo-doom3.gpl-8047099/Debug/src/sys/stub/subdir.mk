################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/sys/stub/stub_gl.cpp \
../src/sys/stub/sys_stub.cpp \
../src/sys/stub/util_stub.cpp 

OBJS += \
./src/sys/stub/stub_gl.o \
./src/sys/stub/sys_stub.o \
./src/sys/stub/util_stub.o 


# Each subdirectory must supply rules for building sources it contributes
src/sys/stub/%.o: ../src/sys/stub/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


