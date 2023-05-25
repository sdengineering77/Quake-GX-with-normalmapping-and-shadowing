################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/d3xp/AF.cpp \
../src/d3xp/AFEntity.cpp \
../src/d3xp/Actor.cpp \
../src/d3xp/BrittleFracture.cpp \
../src/d3xp/Camera.cpp \
../src/d3xp/EndLevel.cpp \
../src/d3xp/Entity.cpp \
../src/d3xp/Fx.cpp \
../src/d3xp/GameEdit.cpp \
../src/d3xp/Game_local.cpp \
../src/d3xp/Game_network.cpp \
../src/d3xp/Grabber.cpp \
../src/d3xp/IK.cpp \
../src/d3xp/Item.cpp \
../src/d3xp/Light.cpp \
../src/d3xp/Misc.cpp \
../src/d3xp/Moveable.cpp \
../src/d3xp/Mover.cpp \
../src/d3xp/MultiplayerGame.cpp \
../src/d3xp/Player.cpp \
../src/d3xp/PlayerIcon.cpp \
../src/d3xp/PlayerView.cpp \
../src/d3xp/Projectile.cpp \
../src/d3xp/Pvs.cpp \
../src/d3xp/SecurityCamera.cpp \
../src/d3xp/SmokeParticles.cpp \
../src/d3xp/Sound.cpp \
../src/d3xp/Target.cpp \
../src/d3xp/Trigger.cpp \
../src/d3xp/Weapon.cpp \
../src/d3xp/WorldSpawn.cpp 

OBJS += \
./src/d3xp/AF.o \
./src/d3xp/AFEntity.o \
./src/d3xp/Actor.o \
./src/d3xp/BrittleFracture.o \
./src/d3xp/Camera.o \
./src/d3xp/EndLevel.o \
./src/d3xp/Entity.o \
./src/d3xp/Fx.o \
./src/d3xp/GameEdit.o \
./src/d3xp/Game_local.o \
./src/d3xp/Game_network.o \
./src/d3xp/Grabber.o \
./src/d3xp/IK.o \
./src/d3xp/Item.o \
./src/d3xp/Light.o \
./src/d3xp/Misc.o \
./src/d3xp/Moveable.o \
./src/d3xp/Mover.o \
./src/d3xp/MultiplayerGame.o \
./src/d3xp/Player.o \
./src/d3xp/PlayerIcon.o \
./src/d3xp/PlayerView.o \
./src/d3xp/Projectile.o \
./src/d3xp/Pvs.o \
./src/d3xp/SecurityCamera.o \
./src/d3xp/SmokeParticles.o \
./src/d3xp/Sound.o \
./src/d3xp/Target.o \
./src/d3xp/Trigger.o \
./src/d3xp/Weapon.o \
./src/d3xp/WorldSpawn.o 


# Each subdirectory must supply rules for building sources it contributes
src/d3xp/%.o: ../src/d3xp/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


