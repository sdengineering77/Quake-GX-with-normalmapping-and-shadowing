################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/framework/async/AsyncClient.cpp \
../src/framework/async/AsyncNetwork.cpp \
../src/framework/async/AsyncServer.cpp \
../src/framework/async/MsgChannel.cpp \
../src/framework/async/NetworkSystem.cpp \
../src/framework/async/ServerScan.cpp 

OBJS += \
./src/framework/async/AsyncClient.o \
./src/framework/async/AsyncNetwork.o \
./src/framework/async/AsyncServer.o \
./src/framework/async/MsgChannel.o \
./src/framework/async/NetworkSystem.o \
./src/framework/async/ServerScan.o 


# Each subdirectory must supply rules for building sources it contributes
src/framework/async/%.o: ../src/framework/async/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


