################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/idlib/Base64.cpp \
../src/idlib/BitMsg.cpp \
../src/idlib/CmdArgs.cpp \
../src/idlib/Dict.cpp \
../src/idlib/Heap.cpp \
../src/idlib/LangDict.cpp \
../src/idlib/Lexer.cpp \
../src/idlib/Lib.cpp \
../src/idlib/MapFile.cpp \
../src/idlib/Parser.cpp \
../src/idlib/Str.cpp \
../src/idlib/Timer.cpp \
../src/idlib/Token.cpp \
../src/idlib/precompiled.cpp 

OBJS += \
./src/idlib/Base64.o \
./src/idlib/BitMsg.o \
./src/idlib/CmdArgs.o \
./src/idlib/Dict.o \
./src/idlib/Heap.o \
./src/idlib/LangDict.o \
./src/idlib/Lexer.o \
./src/idlib/Lib.o \
./src/idlib/MapFile.o \
./src/idlib/Parser.o \
./src/idlib/Str.o \
./src/idlib/Timer.o \
./src/idlib/Token.o \
./src/idlib/precompiled.o 


# Each subdirectory must supply rules for building sources it contributes
src/idlib/%.o: ../src/idlib/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


