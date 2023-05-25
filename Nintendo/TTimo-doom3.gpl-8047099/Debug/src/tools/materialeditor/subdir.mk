################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/tools/materialeditor/ConsoleView.cpp \
../src/tools/materialeditor/FindDialog.cpp \
../src/tools/materialeditor/MEMainFrame.cpp \
../src/tools/materialeditor/MEOptions.cpp \
../src/tools/materialeditor/MaterialDef.cpp \
../src/tools/materialeditor/MaterialDoc.cpp \
../src/tools/materialeditor/MaterialDocManager.cpp \
../src/tools/materialeditor/MaterialEditView.cpp \
../src/tools/materialeditor/MaterialEditor.cpp \
../src/tools/materialeditor/MaterialModifier.cpp \
../src/tools/materialeditor/MaterialPreviewPropView.cpp \
../src/tools/materialeditor/MaterialPreviewView.cpp \
../src/tools/materialeditor/MaterialPropTreeView.cpp \
../src/tools/materialeditor/MaterialTreeView.cpp \
../src/tools/materialeditor/MaterialView.cpp \
../src/tools/materialeditor/StageView.cpp \
../src/tools/materialeditor/ToggleListView.cpp 

OBJS += \
./src/tools/materialeditor/ConsoleView.o \
./src/tools/materialeditor/FindDialog.o \
./src/tools/materialeditor/MEMainFrame.o \
./src/tools/materialeditor/MEOptions.o \
./src/tools/materialeditor/MaterialDef.o \
./src/tools/materialeditor/MaterialDoc.o \
./src/tools/materialeditor/MaterialDocManager.o \
./src/tools/materialeditor/MaterialEditView.o \
./src/tools/materialeditor/MaterialEditor.o \
./src/tools/materialeditor/MaterialModifier.o \
./src/tools/materialeditor/MaterialPreviewPropView.o \
./src/tools/materialeditor/MaterialPreviewView.o \
./src/tools/materialeditor/MaterialPropTreeView.o \
./src/tools/materialeditor/MaterialTreeView.o \
./src/tools/materialeditor/MaterialView.o \
./src/tools/materialeditor/StageView.o \
./src/tools/materialeditor/ToggleListView.o 


# Each subdirectory must supply rules for building sources it contributes
src/tools/materialeditor/%.o: ../src/tools/materialeditor/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


