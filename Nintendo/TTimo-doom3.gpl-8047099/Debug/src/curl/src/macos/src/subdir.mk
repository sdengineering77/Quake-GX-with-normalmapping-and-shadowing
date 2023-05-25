################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/curl/src/macos/src/curl_GUSIConfig.cpp \
../src/curl/src/macos/src/macos_main.cpp 

OBJS += \
./src/curl/src/macos/src/curl_GUSIConfig.o \
./src/curl/src/macos/src/macos_main.o 


# Each subdirectory must supply rules for building sources it contributes
src/curl/src/macos/src/%.o: ../src/curl/src/macos/src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


