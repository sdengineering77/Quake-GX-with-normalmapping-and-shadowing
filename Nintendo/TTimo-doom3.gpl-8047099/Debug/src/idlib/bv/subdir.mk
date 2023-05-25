################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/idlib/bv/Bounds.cpp \
../src/idlib/bv/Box.cpp \
../src/idlib/bv/Frustum.cpp \
../src/idlib/bv/Frustum_gcc.cpp \
../src/idlib/bv/Sphere.cpp 

OBJS += \
./src/idlib/bv/Bounds.o \
./src/idlib/bv/Box.o \
./src/idlib/bv/Frustum.o \
./src/idlib/bv/Frustum_gcc.o \
./src/idlib/bv/Sphere.o 


# Each subdirectory must supply rules for building sources it contributes
src/idlib/bv/%.o: ../src/idlib/bv/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


