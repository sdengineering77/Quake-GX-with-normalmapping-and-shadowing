################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/tools/common/PropTree/PropTree.cpp \
../src/tools/common/PropTree/PropTreeInfo.cpp \
../src/tools/common/PropTree/PropTreeItem.cpp \
../src/tools/common/PropTree/PropTreeItemButton.cpp \
../src/tools/common/PropTree/PropTreeItemCheck.cpp \
../src/tools/common/PropTree/PropTreeItemColor.cpp \
../src/tools/common/PropTree/PropTreeItemCombo.cpp \
../src/tools/common/PropTree/PropTreeItemEdit.cpp \
../src/tools/common/PropTree/PropTreeItemEditButton.cpp \
../src/tools/common/PropTree/PropTreeItemFileEdit.cpp \
../src/tools/common/PropTree/PropTreeItemStatic.cpp \
../src/tools/common/PropTree/PropTreeList.cpp \
../src/tools/common/PropTree/PropTreeView.cpp 

OBJS += \
./src/tools/common/PropTree/PropTree.o \
./src/tools/common/PropTree/PropTreeInfo.o \
./src/tools/common/PropTree/PropTreeItem.o \
./src/tools/common/PropTree/PropTreeItemButton.o \
./src/tools/common/PropTree/PropTreeItemCheck.o \
./src/tools/common/PropTree/PropTreeItemColor.o \
./src/tools/common/PropTree/PropTreeItemCombo.o \
./src/tools/common/PropTree/PropTreeItemEdit.o \
./src/tools/common/PropTree/PropTreeItemEditButton.o \
./src/tools/common/PropTree/PropTreeItemFileEdit.o \
./src/tools/common/PropTree/PropTreeItemStatic.o \
./src/tools/common/PropTree/PropTreeList.o \
./src/tools/common/PropTree/PropTreeView.o 


# Each subdirectory must supply rules for building sources it contributes
src/tools/common/PropTree/%.o: ../src/tools/common/PropTree/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


