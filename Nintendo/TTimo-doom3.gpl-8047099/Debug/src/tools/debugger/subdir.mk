################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/tools/debugger/DebuggerApp.cpp \
../src/tools/debugger/DebuggerBreakpoint.cpp \
../src/tools/debugger/DebuggerClient.cpp \
../src/tools/debugger/DebuggerFindDlg.cpp \
../src/tools/debugger/DebuggerQuickWatchDlg.cpp \
../src/tools/debugger/DebuggerScript.cpp \
../src/tools/debugger/DebuggerServer.cpp \
../src/tools/debugger/DebuggerWindow.cpp \
../src/tools/debugger/debugger.cpp 

OBJS += \
./src/tools/debugger/DebuggerApp.o \
./src/tools/debugger/DebuggerBreakpoint.o \
./src/tools/debugger/DebuggerClient.o \
./src/tools/debugger/DebuggerFindDlg.o \
./src/tools/debugger/DebuggerQuickWatchDlg.o \
./src/tools/debugger/DebuggerScript.o \
./src/tools/debugger/DebuggerServer.o \
./src/tools/debugger/DebuggerWindow.o \
./src/tools/debugger/debugger.o 


# Each subdirectory must supply rules for building sources it contributes
src/tools/debugger/%.o: ../src/tools/debugger/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


