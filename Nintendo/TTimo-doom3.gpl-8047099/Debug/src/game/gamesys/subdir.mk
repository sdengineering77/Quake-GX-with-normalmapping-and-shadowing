################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/game/gamesys/Callbacks.cpp \
../src/game/gamesys/Class.cpp \
../src/game/gamesys/DebugGraph.cpp \
../src/game/gamesys/Event.cpp \
../src/game/gamesys/SaveGame.cpp \
../src/game/gamesys/SysCmds.cpp \
../src/game/gamesys/SysCvar.cpp \
../src/game/gamesys/TypeInfo.cpp 

OBJS += \
./src/game/gamesys/Callbacks.o \
./src/game/gamesys/Class.o \
./src/game/gamesys/DebugGraph.o \
./src/game/gamesys/Event.o \
./src/game/gamesys/SaveGame.o \
./src/game/gamesys/SysCmds.o \
./src/game/gamesys/SysCvar.o \
./src/game/gamesys/TypeInfo.o 


# Each subdirectory must supply rules for building sources it contributes
src/game/gamesys/%.o: ../src/game/gamesys/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


