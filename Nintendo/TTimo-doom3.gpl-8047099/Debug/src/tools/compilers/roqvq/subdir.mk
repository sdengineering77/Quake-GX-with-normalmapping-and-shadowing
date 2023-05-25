################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/tools/compilers/roqvq/NSBitmapImageRep.cpp \
../src/tools/compilers/roqvq/codec.cpp \
../src/tools/compilers/roqvq/roq.cpp \
../src/tools/compilers/roqvq/roqParam.cpp 

OBJS += \
./src/tools/compilers/roqvq/NSBitmapImageRep.o \
./src/tools/compilers/roqvq/codec.o \
./src/tools/compilers/roqvq/roq.o \
./src/tools/compilers/roqvq/roqParam.o 


# Each subdirectory must supply rules for building sources it contributes
src/tools/compilers/roqvq/%.o: ../src/tools/compilers/roqvq/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


