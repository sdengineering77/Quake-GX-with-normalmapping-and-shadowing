################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/game/AF.cpp \
../src/game/AFEntity.cpp \
../src/game/Actor.cpp \
../src/game/BrittleFracture.cpp \
../src/game/Camera.cpp \
../src/game/EndLevel.cpp \
../src/game/Entity.cpp \
../src/game/Fx.cpp \
../src/game/GameEdit.cpp \
../src/game/Game_local.cpp \
../src/game/Game_network.cpp \
../src/game/IK.cpp \
../src/game/Item.cpp \
../src/game/Light.cpp \
../src/game/Misc.cpp \
../src/game/Moveable.cpp \
../src/game/Mover.cpp \
../src/game/MultiplayerGame.cpp \
../src/game/Player.cpp \
../src/game/PlayerIcon.cpp \
../src/game/PlayerView.cpp \
../src/game/Projectile.cpp \
../src/game/Pvs.cpp \
../src/game/SecurityCamera.cpp \
../src/game/SmokeParticles.cpp \
../src/game/Sound.cpp \
../src/game/Target.cpp \
../src/game/Trigger.cpp \
../src/game/Weapon.cpp \
../src/game/WorldSpawn.cpp 

OBJS += \
./src/game/AF.o \
./src/game/AFEntity.o \
./src/game/Actor.o \
./src/game/BrittleFracture.o \
./src/game/Camera.o \
./src/game/EndLevel.o \
./src/game/Entity.o \
./src/game/Fx.o \
./src/game/GameEdit.o \
./src/game/Game_local.o \
./src/game/Game_network.o \
./src/game/IK.o \
./src/game/Item.o \
./src/game/Light.o \
./src/game/Misc.o \
./src/game/Moveable.o \
./src/game/Mover.o \
./src/game/MultiplayerGame.o \
./src/game/Player.o \
./src/game/PlayerIcon.o \
./src/game/PlayerView.o \
./src/game/Projectile.o \
./src/game/Pvs.o \
./src/game/SecurityCamera.o \
./src/game/SmokeParticles.o \
./src/game/Sound.o \
./src/game/Target.o \
./src/game/Trigger.o \
./src/game/Weapon.o \
./src/game/WorldSpawn.o 


# Each subdirectory must supply rules for building sources it contributes
src/game/%.o: ../src/game/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


