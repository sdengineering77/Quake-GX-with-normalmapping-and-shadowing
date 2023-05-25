################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/d3xp/gamesys/Callbacks.cpp \
../src/d3xp/gamesys/Class.cpp \
../src/d3xp/gamesys/DebugGraph.cpp \
../src/d3xp/gamesys/Event.cpp \
../src/d3xp/gamesys/SaveGame.cpp \
../src/d3xp/gamesys/SysCmds.cpp \
../src/d3xp/gamesys/SysCvar.cpp \
../src/d3xp/gamesys/TypeInfo.cpp 

OBJS += \
./src/d3xp/gamesys/Callbacks.o \
./src/d3xp/gamesys/Class.o \
./src/d3xp/gamesys/DebugGraph.o \
./src/d3xp/gamesys/Event.o \
./src/d3xp/gamesys/SaveGame.o \
./src/d3xp/gamesys/SysCmds.o \
./src/d3xp/gamesys/SysCvar.o \
./src/d3xp/gamesys/TypeInfo.o 


# Each subdirectory must supply rules for building sources it contributes
src/d3xp/gamesys/%.o: ../src/d3xp/gamesys/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


