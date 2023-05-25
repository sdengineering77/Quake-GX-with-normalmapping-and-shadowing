################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/curl/tests/libtest/first.c \
../src/curl/tests/libtest/lib500.c \
../src/curl/tests/libtest/lib501.c \
../src/curl/tests/libtest/lib502.c \
../src/curl/tests/libtest/lib503.c \
../src/curl/tests/libtest/lib504.c \
../src/curl/tests/libtest/lib505.c \
../src/curl/tests/libtest/lib506.c \
../src/curl/tests/libtest/lib507.c \
../src/curl/tests/libtest/lib508.c \
../src/curl/tests/libtest/lib509.c \
../src/curl/tests/libtest/lib510.c 

OBJS += \
./src/curl/tests/libtest/first.o \
./src/curl/tests/libtest/lib500.o \
./src/curl/tests/libtest/lib501.o \
./src/curl/tests/libtest/lib502.o \
./src/curl/tests/libtest/lib503.o \
./src/curl/tests/libtest/lib504.o \
./src/curl/tests/libtest/lib505.o \
./src/curl/tests/libtest/lib506.o \
./src/curl/tests/libtest/lib507.o \
./src/curl/tests/libtest/lib508.o \
./src/curl/tests/libtest/lib509.o \
./src/curl/tests/libtest/lib510.o 


# Each subdirectory must supply rules for building sources it contributes
src/curl/tests/libtest/%.o: ../src/curl/tests/libtest/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


