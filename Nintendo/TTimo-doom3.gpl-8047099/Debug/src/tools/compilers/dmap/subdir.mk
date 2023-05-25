################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/tools/compilers/dmap/dmap.cpp \
../src/tools/compilers/dmap/facebsp.cpp \
../src/tools/compilers/dmap/gldraw.cpp \
../src/tools/compilers/dmap/glfile.cpp \
../src/tools/compilers/dmap/leakfile.cpp \
../src/tools/compilers/dmap/map.cpp \
../src/tools/compilers/dmap/optimize.cpp \
../src/tools/compilers/dmap/optimize_gcc.cpp \
../src/tools/compilers/dmap/output.cpp \
../src/tools/compilers/dmap/portals.cpp \
../src/tools/compilers/dmap/shadowopt3.cpp \
../src/tools/compilers/dmap/tritjunction.cpp \
../src/tools/compilers/dmap/tritools.cpp \
../src/tools/compilers/dmap/ubrush.cpp \
../src/tools/compilers/dmap/usurface.cpp 

OBJS += \
./src/tools/compilers/dmap/dmap.o \
./src/tools/compilers/dmap/facebsp.o \
./src/tools/compilers/dmap/gldraw.o \
./src/tools/compilers/dmap/glfile.o \
./src/tools/compilers/dmap/leakfile.o \
./src/tools/compilers/dmap/map.o \
./src/tools/compilers/dmap/optimize.o \
./src/tools/compilers/dmap/optimize_gcc.o \
./src/tools/compilers/dmap/output.o \
./src/tools/compilers/dmap/portals.o \
./src/tools/compilers/dmap/shadowopt3.o \
./src/tools/compilers/dmap/tritjunction.o \
./src/tools/compilers/dmap/tritools.o \
./src/tools/compilers/dmap/ubrush.o \
./src/tools/compilers/dmap/usurface.o 


# Each subdirectory must supply rules for building sources it contributes
src/tools/compilers/dmap/%.o: ../src/tools/compilers/dmap/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


