################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/cm/CollisionModel_contacts.cpp \
../src/cm/CollisionModel_contents.cpp \
../src/cm/CollisionModel_debug.cpp \
../src/cm/CollisionModel_files.cpp \
../src/cm/CollisionModel_load.cpp \
../src/cm/CollisionModel_rotate.cpp \
../src/cm/CollisionModel_trace.cpp \
../src/cm/CollisionModel_translate.cpp 

OBJS += \
./src/cm/CollisionModel_contacts.o \
./src/cm/CollisionModel_contents.o \
./src/cm/CollisionModel_debug.o \
./src/cm/CollisionModel_files.o \
./src/cm/CollisionModel_load.o \
./src/cm/CollisionModel_rotate.o \
./src/cm/CollisionModel_trace.o \
./src/cm/CollisionModel_translate.o 


# Each subdirectory must supply rules for building sources it contributes
src/cm/%.o: ../src/cm/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


