################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/sound/OggVorbis/vorbissrc/analysis.c \
../src/sound/OggVorbis/vorbissrc/barkmel.c \
../src/sound/OggVorbis/vorbissrc/bitrate.c \
../src/sound/OggVorbis/vorbissrc/block.c \
../src/sound/OggVorbis/vorbissrc/codebook.c \
../src/sound/OggVorbis/vorbissrc/envelope.c \
../src/sound/OggVorbis/vorbissrc/floor0.c \
../src/sound/OggVorbis/vorbissrc/floor1.c \
../src/sound/OggVorbis/vorbissrc/info.c \
../src/sound/OggVorbis/vorbissrc/lookup.c \
../src/sound/OggVorbis/vorbissrc/lpc.c \
../src/sound/OggVorbis/vorbissrc/lsp.c \
../src/sound/OggVorbis/vorbissrc/mapping0.c \
../src/sound/OggVorbis/vorbissrc/mdct.c \
../src/sound/OggVorbis/vorbissrc/psy.c \
../src/sound/OggVorbis/vorbissrc/psytune.c \
../src/sound/OggVorbis/vorbissrc/registry.c \
../src/sound/OggVorbis/vorbissrc/res0.c \
../src/sound/OggVorbis/vorbissrc/sharedbook.c \
../src/sound/OggVorbis/vorbissrc/smallft.c \
../src/sound/OggVorbis/vorbissrc/synthesis.c \
../src/sound/OggVorbis/vorbissrc/tone.c \
../src/sound/OggVorbis/vorbissrc/vorbisenc.c \
../src/sound/OggVorbis/vorbissrc/vorbisfile.c \
../src/sound/OggVorbis/vorbissrc/windowvb.c 

OBJS += \
./src/sound/OggVorbis/vorbissrc/analysis.o \
./src/sound/OggVorbis/vorbissrc/barkmel.o \
./src/sound/OggVorbis/vorbissrc/bitrate.o \
./src/sound/OggVorbis/vorbissrc/block.o \
./src/sound/OggVorbis/vorbissrc/codebook.o \
./src/sound/OggVorbis/vorbissrc/envelope.o \
./src/sound/OggVorbis/vorbissrc/floor0.o \
./src/sound/OggVorbis/vorbissrc/floor1.o \
./src/sound/OggVorbis/vorbissrc/info.o \
./src/sound/OggVorbis/vorbissrc/lookup.o \
./src/sound/OggVorbis/vorbissrc/lpc.o \
./src/sound/OggVorbis/vorbissrc/lsp.o \
./src/sound/OggVorbis/vorbissrc/mapping0.o \
./src/sound/OggVorbis/vorbissrc/mdct.o \
./src/sound/OggVorbis/vorbissrc/psy.o \
./src/sound/OggVorbis/vorbissrc/psytune.o \
./src/sound/OggVorbis/vorbissrc/registry.o \
./src/sound/OggVorbis/vorbissrc/res0.o \
./src/sound/OggVorbis/vorbissrc/sharedbook.o \
./src/sound/OggVorbis/vorbissrc/smallft.o \
./src/sound/OggVorbis/vorbissrc/synthesis.o \
./src/sound/OggVorbis/vorbissrc/tone.o \
./src/sound/OggVorbis/vorbissrc/vorbisenc.o \
./src/sound/OggVorbis/vorbissrc/vorbisfile.o \
./src/sound/OggVorbis/vorbissrc/windowvb.o 


# Each subdirectory must supply rules for building sources it contributes
src/sound/OggVorbis/vorbissrc/%.o: ../src/sound/OggVorbis/vorbissrc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


