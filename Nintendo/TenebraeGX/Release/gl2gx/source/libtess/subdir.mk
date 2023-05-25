################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../gl2gx/source/libtess/dict.c \
../gl2gx/source/libtess/geom.c \
../gl2gx/source/libtess/memalloc.c \
../gl2gx/source/libtess/mesh.c \
../gl2gx/source/libtess/normal.c \
../gl2gx/source/libtess/priorityq-heap.c \
../gl2gx/source/libtess/priorityq.c \
../gl2gx/source/libtess/render.c \
../gl2gx/source/libtess/sweep.c \
../gl2gx/source/libtess/tess.c \
../gl2gx/source/libtess/tessmono.c 

OBJS += \
./gl2gx/source/libtess/dict.o \
./gl2gx/source/libtess/geom.o \
./gl2gx/source/libtess/memalloc.o \
./gl2gx/source/libtess/mesh.o \
./gl2gx/source/libtess/normal.o \
./gl2gx/source/libtess/priorityq-heap.o \
./gl2gx/source/libtess/priorityq.o \
./gl2gx/source/libtess/render.o \
./gl2gx/source/libtess/sweep.o \
./gl2gx/source/libtess/tess.o \
./gl2gx/source/libtess/tessmono.o 

C_DEPS += \
./gl2gx/source/libtess/dict.d \
./gl2gx/source/libtess/geom.d \
./gl2gx/source/libtess/memalloc.d \
./gl2gx/source/libtess/mesh.d \
./gl2gx/source/libtess/normal.d \
./gl2gx/source/libtess/priorityq-heap.d \
./gl2gx/source/libtess/priorityq.d \
./gl2gx/source/libtess/render.d \
./gl2gx/source/libtess/sweep.d \
./gl2gx/source/libtess/tess.d \
./gl2gx/source/libtess/tessmono.d 


# Each subdirectory must supply rules for building sources it contributes
gl2gx/source/libtess/%.o: ../gl2gx/source/libtess/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


