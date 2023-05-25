################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/sound/snd_cache.cpp \
../src/sound/snd_decoder.cpp \
../src/sound/snd_efxfile.cpp \
../src/sound/snd_emitter.cpp \
../src/sound/snd_shader.cpp \
../src/sound/snd_system.cpp \
../src/sound/snd_wavefile.cpp \
../src/sound/snd_world.cpp 

OBJS += \
./src/sound/snd_cache.o \
./src/sound/snd_decoder.o \
./src/sound/snd_efxfile.o \
./src/sound/snd_emitter.o \
./src/sound/snd_shader.o \
./src/sound/snd_system.o \
./src/sound/snd_wavefile.o \
./src/sound/snd_world.o 


# Each subdirectory must supply rules for building sources it contributes
src/sound/%.o: ../src/sound/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


