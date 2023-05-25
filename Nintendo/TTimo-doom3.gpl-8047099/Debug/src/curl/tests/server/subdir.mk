################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/curl/tests/server/getpart.c \
../src/curl/tests/server/sws.c 

OBJS += \
./src/curl/tests/server/getpart.o \
./src/curl/tests/server/sws.o 


# Each subdirectory must supply rules for building sources it contributes
src/curl/tests/server/%.o: ../src/curl/tests/server/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


