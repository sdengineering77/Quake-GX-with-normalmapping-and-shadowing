################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/tools/guied/GEApp.cpp \
../src/tools/guied/GECheckInDlg.cpp \
../src/tools/guied/GEDeleteModifier.cpp \
../src/tools/guied/GEHideModifier.cpp \
../src/tools/guied/GEInsertModifier.cpp \
../src/tools/guied/GEItemPropsDlg.cpp \
../src/tools/guied/GEItemScriptsDlg.cpp \
../src/tools/guied/GEKeyValueModifier.cpp \
../src/tools/guied/GEModifier.cpp \
../src/tools/guied/GEModifierGroup.cpp \
../src/tools/guied/GEModifierStack.cpp \
../src/tools/guied/GEMoveModifier.cpp \
../src/tools/guied/GENavigator.cpp \
../src/tools/guied/GEOptions.cpp \
../src/tools/guied/GEOptionsDlg.cpp \
../src/tools/guied/GEProperties.cpp \
../src/tools/guied/GEPropertyPage.cpp \
../src/tools/guied/GESelectionMgr.cpp \
../src/tools/guied/GESizeModifier.cpp \
../src/tools/guied/GEStateModifier.cpp \
../src/tools/guied/GEStatusBar.cpp \
../src/tools/guied/GETransformer.cpp \
../src/tools/guied/GEViewer.cpp \
../src/tools/guied/GEWindowWrapper.cpp \
../src/tools/guied/GEWindowWrapper_stub.cpp \
../src/tools/guied/GEWorkspace.cpp \
../src/tools/guied/GEWorkspaceFile.cpp \
../src/tools/guied/GEZOrderModifier.cpp \
../src/tools/guied/guied.cpp 

OBJS += \
./src/tools/guied/GEApp.o \
./src/tools/guied/GECheckInDlg.o \
./src/tools/guied/GEDeleteModifier.o \
./src/tools/guied/GEHideModifier.o \
./src/tools/guied/GEInsertModifier.o \
./src/tools/guied/GEItemPropsDlg.o \
./src/tools/guied/GEItemScriptsDlg.o \
./src/tools/guied/GEKeyValueModifier.o \
./src/tools/guied/GEModifier.o \
./src/tools/guied/GEModifierGroup.o \
./src/tools/guied/GEModifierStack.o \
./src/tools/guied/GEMoveModifier.o \
./src/tools/guied/GENavigator.o \
./src/tools/guied/GEOptions.o \
./src/tools/guied/GEOptionsDlg.o \
./src/tools/guied/GEProperties.o \
./src/tools/guied/GEPropertyPage.o \
./src/tools/guied/GESelectionMgr.o \
./src/tools/guied/GESizeModifier.o \
./src/tools/guied/GEStateModifier.o \
./src/tools/guied/GEStatusBar.o \
./src/tools/guied/GETransformer.o \
./src/tools/guied/GEViewer.o \
./src/tools/guied/GEWindowWrapper.o \
./src/tools/guied/GEWindowWrapper_stub.o \
./src/tools/guied/GEWorkspace.o \
./src/tools/guied/GEWorkspaceFile.o \
./src/tools/guied/GEZOrderModifier.o \
./src/tools/guied/guied.o 


# Each subdirectory must supply rules for building sources it contributes
src/tools/guied/%.o: ../src/tools/guied/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


