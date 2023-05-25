################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/tools/radiant/CamWnd.cpp \
../src/tools/radiant/CameraTargetDlg.cpp \
../src/tools/radiant/CapDialog.cpp \
../src/tools/radiant/CommandsDlg.cpp \
../src/tools/radiant/CommentsDlg.cpp \
../src/tools/radiant/ConsoleDlg.cpp \
../src/tools/radiant/CurveDlg.cpp \
../src/tools/radiant/DialogInfo.cpp \
../src/tools/radiant/DialogTextures.cpp \
../src/tools/radiant/DialogThick.cpp \
../src/tools/radiant/DlgCamera.cpp \
../src/tools/radiant/DlgEvent.cpp \
../src/tools/radiant/EditViewDlg.cpp \
../src/tools/radiant/EditorBrush.cpp \
../src/tools/radiant/EditorBrushPrimit.cpp \
../src/tools/radiant/EditorEntity.cpp \
../src/tools/radiant/EditorMap.cpp \
../src/tools/radiant/EntKeyFindReplace.cpp \
../src/tools/radiant/EntityDlg.cpp \
../src/tools/radiant/EntityListDlg.cpp \
../src/tools/radiant/FindTextureDlg.cpp \
../src/tools/radiant/GLWidget.cpp \
../src/tools/radiant/GetString.cpp \
../src/tools/radiant/InspectorDialog.cpp \
../src/tools/radiant/LightDlg.cpp \
../src/tools/radiant/MainFrm.cpp \
../src/tools/radiant/MapInfo.cpp \
../src/tools/radiant/MediaPreviewDlg.cpp \
../src/tools/radiant/NewProjDlg.cpp \
../src/tools/radiant/NewTexWnd.cpp \
../src/tools/radiant/PatchDensityDlg.cpp \
../src/tools/radiant/PatchDialog.cpp \
../src/tools/radiant/PointFile.cpp \
../src/tools/radiant/PrefsDlg.cpp \
../src/tools/radiant/PreviewDlg.cpp \
../src/tools/radiant/PropertyList.cpp \
../src/tools/radiant/Radiant.cpp \
../src/tools/radiant/RotateDlg.cpp \
../src/tools/radiant/ScaleDialog.cpp \
../src/tools/radiant/SurfaceDlg.cpp \
../src/tools/radiant/TabsDlg.cpp \
../src/tools/radiant/TearoffContainerWindow.cpp \
../src/tools/radiant/TextureBar.cpp \
../src/tools/radiant/Undo.cpp \
../src/tools/radiant/WaitDlg.cpp \
../src/tools/radiant/WaveOpen.cpp \
../src/tools/radiant/XYWnd.cpp \
../src/tools/radiant/ZClip.cpp \
../src/tools/radiant/ZWnd.cpp \
../src/tools/radiant/autocaulk.cpp \
../src/tools/radiant/cmdlib.cpp \
../src/tools/radiant/splines.cpp 

OBJS += \
./src/tools/radiant/CamWnd.o \
./src/tools/radiant/CameraTargetDlg.o \
./src/tools/radiant/CapDialog.o \
./src/tools/radiant/CommandsDlg.o \
./src/tools/radiant/CommentsDlg.o \
./src/tools/radiant/ConsoleDlg.o \
./src/tools/radiant/CurveDlg.o \
./src/tools/radiant/DialogInfo.o \
./src/tools/radiant/DialogTextures.o \
./src/tools/radiant/DialogThick.o \
./src/tools/radiant/DlgCamera.o \
./src/tools/radiant/DlgEvent.o \
./src/tools/radiant/EditViewDlg.o \
./src/tools/radiant/EditorBrush.o \
./src/tools/radiant/EditorBrushPrimit.o \
./src/tools/radiant/EditorEntity.o \
./src/tools/radiant/EditorMap.o \
./src/tools/radiant/EntKeyFindReplace.o \
./src/tools/radiant/EntityDlg.o \
./src/tools/radiant/EntityListDlg.o \
./src/tools/radiant/FindTextureDlg.o \
./src/tools/radiant/GLWidget.o \
./src/tools/radiant/GetString.o \
./src/tools/radiant/InspectorDialog.o \
./src/tools/radiant/LightDlg.o \
./src/tools/radiant/MainFrm.o \
./src/tools/radiant/MapInfo.o \
./src/tools/radiant/MediaPreviewDlg.o \
./src/tools/radiant/NewProjDlg.o \
./src/tools/radiant/NewTexWnd.o \
./src/tools/radiant/PatchDensityDlg.o \
./src/tools/radiant/PatchDialog.o \
./src/tools/radiant/PointFile.o \
./src/tools/radiant/PrefsDlg.o \
./src/tools/radiant/PreviewDlg.o \
./src/tools/radiant/PropertyList.o \
./src/tools/radiant/Radiant.o \
./src/tools/radiant/RotateDlg.o \
./src/tools/radiant/ScaleDialog.o \
./src/tools/radiant/SurfaceDlg.o \
./src/tools/radiant/TabsDlg.o \
./src/tools/radiant/TearoffContainerWindow.o \
./src/tools/radiant/TextureBar.o \
./src/tools/radiant/Undo.o \
./src/tools/radiant/WaitDlg.o \
./src/tools/radiant/WaveOpen.o \
./src/tools/radiant/XYWnd.o \
./src/tools/radiant/ZClip.o \
./src/tools/radiant/ZWnd.o \
./src/tools/radiant/autocaulk.o \
./src/tools/radiant/cmdlib.o \
./src/tools/radiant/splines.o 


# Each subdirectory must supply rules for building sources it contributes
src/tools/radiant/%.o: ../src/tools/radiant/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


