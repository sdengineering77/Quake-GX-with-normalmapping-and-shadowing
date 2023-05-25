################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/idlib/math/Angles.cpp \
../src/idlib/math/Complex.cpp \
../src/idlib/math/Lcp.cpp \
../src/idlib/math/Math.cpp \
../src/idlib/math/Matrix.cpp \
../src/idlib/math/Ode.cpp \
../src/idlib/math/Plane.cpp \
../src/idlib/math/Pluecker.cpp \
../src/idlib/math/Polynomial.cpp \
../src/idlib/math/Quat.cpp \
../src/idlib/math/Rotation.cpp \
../src/idlib/math/Simd.cpp \
../src/idlib/math/Simd_3DNow.cpp \
../src/idlib/math/Simd_AltiVec.cpp \
../src/idlib/math/Simd_Generic.cpp \
../src/idlib/math/Simd_MMX.cpp \
../src/idlib/math/Simd_SSE.cpp \
../src/idlib/math/Simd_SSE2.cpp \
../src/idlib/math/Simd_SSE3.cpp \
../src/idlib/math/Vector.cpp 

OBJS += \
./src/idlib/math/Angles.o \
./src/idlib/math/Complex.o \
./src/idlib/math/Lcp.o \
./src/idlib/math/Math.o \
./src/idlib/math/Matrix.o \
./src/idlib/math/Ode.o \
./src/idlib/math/Plane.o \
./src/idlib/math/Pluecker.o \
./src/idlib/math/Polynomial.o \
./src/idlib/math/Quat.o \
./src/idlib/math/Rotation.o \
./src/idlib/math/Simd.o \
./src/idlib/math/Simd_3DNow.o \
./src/idlib/math/Simd_AltiVec.o \
./src/idlib/math/Simd_Generic.o \
./src/idlib/math/Simd_MMX.o \
./src/idlib/math/Simd_SSE.o \
./src/idlib/math/Simd_SSE2.o \
./src/idlib/math/Simd_SSE3.o \
./src/idlib/math/Vector.o 


# Each subdirectory must supply rules for building sources it contributes
src/idlib/math/%.o: ../src/idlib/math/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


