################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/tools/af/DialogAF.cpp \
../src/tools/af/DialogAFBody.cpp \
../src/tools/af/DialogAFConstraint.cpp \
../src/tools/af/DialogAFConstraintBallAndSocket.cpp \
../src/tools/af/DialogAFConstraintFixed.cpp \
../src/tools/af/DialogAFConstraintHinge.cpp \
../src/tools/af/DialogAFConstraintSlider.cpp \
../src/tools/af/DialogAFConstraintSpring.cpp \
../src/tools/af/DialogAFConstraintUniversal.cpp \
../src/tools/af/DialogAFName.cpp \
../src/tools/af/DialogAFProperties.cpp \
../src/tools/af/DialogAFView.cpp 

OBJS += \
./src/tools/af/DialogAF.o \
./src/tools/af/DialogAFBody.o \
./src/tools/af/DialogAFConstraint.o \
./src/tools/af/DialogAFConstraintBallAndSocket.o \
./src/tools/af/DialogAFConstraintFixed.o \
./src/tools/af/DialogAFConstraintHinge.o \
./src/tools/af/DialogAFConstraintSlider.o \
./src/tools/af/DialogAFConstraintSpring.o \
./src/tools/af/DialogAFConstraintUniversal.o \
./src/tools/af/DialogAFName.o \
./src/tools/af/DialogAFProperties.o \
./src/tools/af/DialogAFView.o 


# Each subdirectory must supply rules for building sources it contributes
src/tools/af/%.o: ../src/tools/af/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


