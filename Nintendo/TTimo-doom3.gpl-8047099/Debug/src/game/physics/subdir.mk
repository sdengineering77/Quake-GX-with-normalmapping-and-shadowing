################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/game/physics/Clip.cpp \
../src/game/physics/Force.cpp \
../src/game/physics/Force_Constant.cpp \
../src/game/physics/Force_Drag.cpp \
../src/game/physics/Force_Field.cpp \
../src/game/physics/Force_Spring.cpp \
../src/game/physics/Physics.cpp \
../src/game/physics/Physics_AF.cpp \
../src/game/physics/Physics_Actor.cpp \
../src/game/physics/Physics_Base.cpp \
../src/game/physics/Physics_Monster.cpp \
../src/game/physics/Physics_Parametric.cpp \
../src/game/physics/Physics_Player.cpp \
../src/game/physics/Physics_RigidBody.cpp \
../src/game/physics/Physics_Static.cpp \
../src/game/physics/Physics_StaticMulti.cpp \
../src/game/physics/Push.cpp 

OBJS += \
./src/game/physics/Clip.o \
./src/game/physics/Force.o \
./src/game/physics/Force_Constant.o \
./src/game/physics/Force_Drag.o \
./src/game/physics/Force_Field.o \
./src/game/physics/Force_Spring.o \
./src/game/physics/Physics.o \
./src/game/physics/Physics_AF.o \
./src/game/physics/Physics_Actor.o \
./src/game/physics/Physics_Base.o \
./src/game/physics/Physics_Monster.o \
./src/game/physics/Physics_Parametric.o \
./src/game/physics/Physics_Player.o \
./src/game/physics/Physics_RigidBody.o \
./src/game/physics/Physics_Static.o \
./src/game/physics/Physics_StaticMulti.o \
./src/game/physics/Push.o 


# Each subdirectory must supply rules for building sources it contributes
src/game/physics/%.o: ../src/game/physics/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


