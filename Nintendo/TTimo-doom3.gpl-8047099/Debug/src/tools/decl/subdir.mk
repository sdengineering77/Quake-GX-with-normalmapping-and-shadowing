################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/tools/decl/DialogDeclBrowser.cpp \
../src/tools/decl/DialogDeclEditor.cpp \
../src/tools/decl/DialogDeclNew.cpp \
../src/tools/decl/DialogEntityDefEditor.cpp 

OBJS += \
./src/tools/decl/DialogDeclBrowser.o \
./src/tools/decl/DialogDeclEditor.o \
./src/tools/decl/DialogDeclNew.o \
./src/tools/decl/DialogEntityDefEditor.o 


# Each subdirectory must supply rules for building sources it contributes
src/tools/decl/%.o: ../src/tools/decl/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


