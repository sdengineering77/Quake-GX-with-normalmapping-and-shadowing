################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/tools/compilers/aas/AASBuild.cpp \
../src/tools/compilers/aas/AASBuild_file.cpp \
../src/tools/compilers/aas/AASBuild_gravity.cpp \
../src/tools/compilers/aas/AASBuild_ledge.cpp \
../src/tools/compilers/aas/AASBuild_merge.cpp \
../src/tools/compilers/aas/AASCluster.cpp \
../src/tools/compilers/aas/AASFile.cpp \
../src/tools/compilers/aas/AASFileManager.cpp \
../src/tools/compilers/aas/AASFile_optimize.cpp \
../src/tools/compilers/aas/AASFile_sample.cpp \
../src/tools/compilers/aas/AASReach.cpp \
../src/tools/compilers/aas/Brush.cpp \
../src/tools/compilers/aas/BrushBSP.cpp 

OBJS += \
./src/tools/compilers/aas/AASBuild.o \
./src/tools/compilers/aas/AASBuild_file.o \
./src/tools/compilers/aas/AASBuild_gravity.o \
./src/tools/compilers/aas/AASBuild_ledge.o \
./src/tools/compilers/aas/AASBuild_merge.o \
./src/tools/compilers/aas/AASCluster.o \
./src/tools/compilers/aas/AASFile.o \
./src/tools/compilers/aas/AASFileManager.o \
./src/tools/compilers/aas/AASFile_optimize.o \
./src/tools/compilers/aas/AASFile_sample.o \
./src/tools/compilers/aas/AASReach.o \
./src/tools/compilers/aas/Brush.o \
./src/tools/compilers/aas/BrushBSP.o 


# Each subdirectory must supply rules for building sources it contributes
src/tools/compilers/aas/%.o: ../src/tools/compilers/aas/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


