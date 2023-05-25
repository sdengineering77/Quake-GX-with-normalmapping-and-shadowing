################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/tools/common/AlphaPopup.cpp \
../src/tools/common/ColorButton.cpp \
../src/tools/common/MaskEdit.cpp \
../src/tools/common/OpenFileDialog.cpp \
../src/tools/common/PropertyGrid.cpp \
../src/tools/common/RegistryOptions.cpp \
../src/tools/common/RenderBumpFlatDialog.cpp \
../src/tools/common/RollupPanel.cpp \
../src/tools/common/SpinButton.cpp 

OBJS += \
./src/tools/common/AlphaPopup.o \
./src/tools/common/ColorButton.o \
./src/tools/common/MaskEdit.o \
./src/tools/common/OpenFileDialog.o \
./src/tools/common/PropertyGrid.o \
./src/tools/common/RegistryOptions.o \
./src/tools/common/RenderBumpFlatDialog.o \
./src/tools/common/RollupPanel.o \
./src/tools/common/SpinButton.o 


# Each subdirectory must supply rules for building sources it contributes
src/tools/common/%.o: ../src/tools/common/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


