################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/ui/BindWindow.cpp \
../src/ui/ChoiceWindow.cpp \
../src/ui/DeviceContext.cpp \
../src/ui/EditWindow.cpp \
../src/ui/FieldWindow.cpp \
../src/ui/GameBearShootWindow.cpp \
../src/ui/GameBustOutWindow.cpp \
../src/ui/GameSSDWindow.cpp \
../src/ui/GameWindow.cpp \
../src/ui/GuiScript.cpp \
../src/ui/ListGUI.cpp \
../src/ui/ListWindow.cpp \
../src/ui/MarkerWindow.cpp \
../src/ui/RegExp.cpp \
../src/ui/RenderWindow.cpp \
../src/ui/SimpleWindow.cpp \
../src/ui/SliderWindow.cpp \
../src/ui/UserInterface.cpp \
../src/ui/Window.cpp \
../src/ui/Winvar.cpp 

OBJS += \
./src/ui/BindWindow.o \
./src/ui/ChoiceWindow.o \
./src/ui/DeviceContext.o \
./src/ui/EditWindow.o \
./src/ui/FieldWindow.o \
./src/ui/GameBearShootWindow.o \
./src/ui/GameBustOutWindow.o \
./src/ui/GameSSDWindow.o \
./src/ui/GameWindow.o \
./src/ui/GuiScript.o \
./src/ui/ListGUI.o \
./src/ui/ListWindow.o \
./src/ui/MarkerWindow.o \
./src/ui/RegExp.o \
./src/ui/RenderWindow.o \
./src/ui/SimpleWindow.o \
./src/ui/SliderWindow.o \
./src/ui/UserInterface.o \
./src/ui/Window.o \
./src/ui/Winvar.o 


# Each subdirectory must supply rules for building sources it contributes
src/ui/%.o: ../src/ui/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


