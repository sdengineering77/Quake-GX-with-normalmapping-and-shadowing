################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/tools/comafx/CDIB.cpp \
../src/tools/comafx/CPathTreeCtrl.cpp \
../src/tools/comafx/CSyntaxRichEditCtrl.cpp \
../src/tools/comafx/DialogColorPicker.cpp \
../src/tools/comafx/DialogGoToLine.cpp \
../src/tools/comafx/DialogName.cpp \
../src/tools/comafx/StdAfx.cpp \
../src/tools/comafx/VectorCtl.cpp 

OBJS += \
./src/tools/comafx/CDIB.o \
./src/tools/comafx/CPathTreeCtrl.o \
./src/tools/comafx/CSyntaxRichEditCtrl.o \
./src/tools/comafx/DialogColorPicker.o \
./src/tools/comafx/DialogGoToLine.o \
./src/tools/comafx/DialogName.o \
./src/tools/comafx/StdAfx.o \
./src/tools/comafx/VectorCtl.o 


# Each subdirectory must supply rules for building sources it contributes
src/tools/comafx/%.o: ../src/tools/comafx/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


