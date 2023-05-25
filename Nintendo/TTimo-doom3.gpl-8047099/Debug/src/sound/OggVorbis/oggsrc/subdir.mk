################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/sound/OggVorbis/oggsrc/bitwise.c \
../src/sound/OggVorbis/oggsrc/framing.c 

OBJS += \
./src/sound/OggVorbis/oggsrc/bitwise.o \
./src/sound/OggVorbis/oggsrc/framing.o 


# Each subdirectory must supply rules for building sources it contributes
src/sound/OggVorbis/oggsrc/%.o: ../src/sound/OggVorbis/oggsrc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


