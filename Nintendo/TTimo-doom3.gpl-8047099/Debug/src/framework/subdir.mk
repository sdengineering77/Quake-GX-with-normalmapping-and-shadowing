################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/framework/CVarSystem.cpp \
../src/framework/CmdSystem.cpp \
../src/framework/Common.cpp \
../src/framework/Compressor.cpp \
../src/framework/Console.cpp \
../src/framework/DeclAF.cpp \
../src/framework/DeclEntityDef.cpp \
../src/framework/DeclFX.cpp \
../src/framework/DeclManager.cpp \
../src/framework/DeclPDA.cpp \
../src/framework/DeclParticle.cpp \
../src/framework/DeclSkin.cpp \
../src/framework/DeclTable.cpp \
../src/framework/DemoFile.cpp \
../src/framework/EditField.cpp \
../src/framework/EventLoop.cpp \
../src/framework/File.cpp \
../src/framework/FileSystem.cpp \
../src/framework/KeyInput.cpp \
../src/framework/Session.cpp \
../src/framework/Session_menu.cpp \
../src/framework/Unzip.cpp \
../src/framework/UsercmdGen.cpp 

OBJS += \
./src/framework/CVarSystem.o \
./src/framework/CmdSystem.o \
./src/framework/Common.o \
./src/framework/Compressor.o \
./src/framework/Console.o \
./src/framework/DeclAF.o \
./src/framework/DeclEntityDef.o \
./src/framework/DeclFX.o \
./src/framework/DeclManager.o \
./src/framework/DeclPDA.o \
./src/framework/DeclParticle.o \
./src/framework/DeclSkin.o \
./src/framework/DeclTable.o \
./src/framework/DemoFile.o \
./src/framework/EditField.o \
./src/framework/EventLoop.o \
./src/framework/File.o \
./src/framework/FileSystem.o \
./src/framework/KeyInput.o \
./src/framework/Session.o \
./src/framework/Session_menu.o \
./src/framework/Unzip.o \
./src/framework/UsercmdGen.o 


# Each subdirectory must supply rules for building sources it contributes
src/framework/%.o: ../src/framework/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


