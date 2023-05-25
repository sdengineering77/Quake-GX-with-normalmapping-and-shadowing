################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/curl/src/getpass.c \
../src/curl/src/homedir.c \
../src/curl/src/hugehelp.c \
../src/curl/src/main.c \
../src/curl/src/urlglob.c \
../src/curl/src/writeenv.c \
../src/curl/src/writeout.c 

OBJS += \
./src/curl/src/getpass.o \
./src/curl/src/homedir.o \
./src/curl/src/hugehelp.o \
./src/curl/src/main.o \
./src/curl/src/urlglob.o \
./src/curl/src/writeenv.o \
./src/curl/src/writeout.o 


# Each subdirectory must supply rules for building sources it contributes
src/curl/src/%.o: ../src/curl/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


