################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/d3xp/physics/Clip.cpp \
../src/d3xp/physics/Force.cpp \
../src/d3xp/physics/Force_Constant.cpp \
../src/d3xp/physics/Force_Drag.cpp \
../src/d3xp/physics/Force_Field.cpp \
../src/d3xp/physics/Force_Grab.cpp \
../src/d3xp/physics/Force_Spring.cpp \
../src/d3xp/physics/Physics.cpp \
../src/d3xp/physics/Physics_AF.cpp \
../src/d3xp/physics/Physics_Actor.cpp \
../src/d3xp/physics/Physics_Base.cpp \
../src/d3xp/physics/Physics_Monster.cpp \
../src/d3xp/physics/Physics_Parametric.cpp \
../src/d3xp/physics/Physics_Player.cpp \
../src/d3xp/physics/Physics_RigidBody.cpp \
../src/d3xp/physics/Physics_Static.cpp \
../src/d3xp/physics/Physics_StaticMulti.cpp \
../src/d3xp/physics/Push.cpp 

OBJS += \
./src/d3xp/physics/Clip.o \
./src/d3xp/physics/Force.o \
./src/d3xp/physics/Force_Constant.o \
./src/d3xp/physics/Force_Drag.o \
./src/d3xp/physics/Force_Field.o \
./src/d3xp/physics/Force_Grab.o \
./src/d3xp/physics/Force_Spring.o \
./src/d3xp/physics/Physics.o \
./src/d3xp/physics/Physics_AF.o \
./src/d3xp/physics/Physics_Actor.o \
./src/d3xp/physics/Physics_Base.o \
./src/d3xp/physics/Physics_Monster.o \
./src/d3xp/physics/Physics_Parametric.o \
./src/d3xp/physics/Physics_Player.o \
./src/d3xp/physics/Physics_RigidBody.o \
./src/d3xp/physics/Physics_Static.o \
./src/d3xp/physics/Physics_StaticMulti.o \
./src/d3xp/physics/Push.o 


# Each subdirectory must supply rules for building sources it contributes
src/d3xp/physics/%.o: ../src/d3xp/physics/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


