################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/idlib/geometry/DrawVert.cpp \
../src/idlib/geometry/JointTransform.cpp \
../src/idlib/geometry/Surface.cpp \
../src/idlib/geometry/Surface_Patch.cpp \
../src/idlib/geometry/Surface_Polytope.cpp \
../src/idlib/geometry/Surface_SweptSpline.cpp \
../src/idlib/geometry/TraceModel.cpp \
../src/idlib/geometry/Winding.cpp \
../src/idlib/geometry/Winding2D.cpp 

OBJS += \
./src/idlib/geometry/DrawVert.o \
./src/idlib/geometry/JointTransform.o \
./src/idlib/geometry/Surface.o \
./src/idlib/geometry/Surface_Patch.o \
./src/idlib/geometry/Surface_Polytope.o \
./src/idlib/geometry/Surface_SweptSpline.o \
./src/idlib/geometry/TraceModel.o \
./src/idlib/geometry/Winding.o \
./src/idlib/geometry/Winding2D.o 


# Each subdirectory must supply rules for building sources it contributes
src/idlib/geometry/%.o: ../src/idlib/geometry/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


