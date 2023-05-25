################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/sys/win32/gl_logfuncs.cpp \
../src/sys/win32/win_cpu.cpp \
../src/sys/win32/win_gamma.cpp \
../src/sys/win32/win_glimp.cpp \
../src/sys/win32/win_input.cpp \
../src/sys/win32/win_main.cpp \
../src/sys/win32/win_net.cpp \
../src/sys/win32/win_qgl.cpp \
../src/sys/win32/win_shared.cpp \
../src/sys/win32/win_snd.cpp \
../src/sys/win32/win_syscon.cpp \
../src/sys/win32/win_taskkeyhook.cpp \
../src/sys/win32/win_wndproc.cpp 

OBJS += \
./src/sys/win32/gl_logfuncs.o \
./src/sys/win32/win_cpu.o \
./src/sys/win32/win_gamma.o \
./src/sys/win32/win_glimp.o \
./src/sys/win32/win_input.o \
./src/sys/win32/win_main.o \
./src/sys/win32/win_net.o \
./src/sys/win32/win_qgl.o \
./src/sys/win32/win_shared.o \
./src/sys/win32/win_snd.o \
./src/sys/win32/win_syscon.o \
./src/sys/win32/win_taskkeyhook.o \
./src/sys/win32/win_wndproc.o 


# Each subdirectory must supply rules for building sources it contributes
src/sys/win32/%.o: ../src/sys/win32/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


