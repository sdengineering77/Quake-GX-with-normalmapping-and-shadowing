################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/idlib/hashing/CRC32.cpp \
../src/idlib/hashing/MD4.cpp \
../src/idlib/hashing/MD5.cpp 

OBJS += \
./src/idlib/hashing/CRC32.o \
./src/idlib/hashing/MD4.o \
./src/idlib/hashing/MD5.o 


# Each subdirectory must supply rules for building sources it contributes
src/idlib/hashing/%.o: ../src/idlib/hashing/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


