################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/renderer/Cinematic.cpp \
../src/renderer/GuiModel.cpp \
../src/renderer/Image_files.cpp \
../src/renderer/Image_init.cpp \
../src/renderer/Image_load.cpp \
../src/renderer/Image_process.cpp \
../src/renderer/Image_program.cpp \
../src/renderer/Interaction.cpp \
../src/renderer/Material.cpp \
../src/renderer/MegaTexture.cpp \
../src/renderer/Model.cpp \
../src/renderer/ModelDecal.cpp \
../src/renderer/ModelManager.cpp \
../src/renderer/ModelOverlay.cpp \
../src/renderer/Model_ase.cpp \
../src/renderer/Model_beam.cpp \
../src/renderer/Model_liquid.cpp \
../src/renderer/Model_lwo.cpp \
../src/renderer/Model_ma.cpp \
../src/renderer/Model_md3.cpp \
../src/renderer/Model_md5.cpp \
../src/renderer/Model_prt.cpp \
../src/renderer/Model_sprite.cpp \
../src/renderer/RenderEntity.cpp \
../src/renderer/RenderSystem.cpp \
../src/renderer/RenderSystem_init.cpp \
../src/renderer/RenderWorld.cpp \
../src/renderer/RenderWorld_demo.cpp \
../src/renderer/RenderWorld_load.cpp \
../src/renderer/RenderWorld_portals.cpp \
../src/renderer/VertexCache.cpp \
../src/renderer/cg_explicit.cpp \
../src/renderer/draw_arb.cpp \
../src/renderer/draw_arb2.cpp \
../src/renderer/draw_common.cpp \
../src/renderer/draw_exp.cpp \
../src/renderer/draw_exp_stub.cpp \
../src/renderer/draw_nv10.cpp \
../src/renderer/draw_nv20.cpp \
../src/renderer/draw_r200.cpp \
../src/renderer/tr_backend.cpp \
../src/renderer/tr_deform.cpp \
../src/renderer/tr_font.cpp \
../src/renderer/tr_guisurf.cpp \
../src/renderer/tr_light.cpp \
../src/renderer/tr_lightrun.cpp \
../src/renderer/tr_main.cpp \
../src/renderer/tr_orderIndexes.cpp \
../src/renderer/tr_polytope.cpp \
../src/renderer/tr_render.cpp \
../src/renderer/tr_rendertools.cpp \
../src/renderer/tr_shadowbounds.cpp \
../src/renderer/tr_stencilshadow.cpp \
../src/renderer/tr_subview.cpp \
../src/renderer/tr_trace.cpp \
../src/renderer/tr_trisurf.cpp \
../src/renderer/tr_turboshadow.cpp 

OBJS += \
./src/renderer/Cinematic.o \
./src/renderer/GuiModel.o \
./src/renderer/Image_files.o \
./src/renderer/Image_init.o \
./src/renderer/Image_load.o \
./src/renderer/Image_process.o \
./src/renderer/Image_program.o \
./src/renderer/Interaction.o \
./src/renderer/Material.o \
./src/renderer/MegaTexture.o \
./src/renderer/Model.o \
./src/renderer/ModelDecal.o \
./src/renderer/ModelManager.o \
./src/renderer/ModelOverlay.o \
./src/renderer/Model_ase.o \
./src/renderer/Model_beam.o \
./src/renderer/Model_liquid.o \
./src/renderer/Model_lwo.o \
./src/renderer/Model_ma.o \
./src/renderer/Model_md3.o \
./src/renderer/Model_md5.o \
./src/renderer/Model_prt.o \
./src/renderer/Model_sprite.o \
./src/renderer/RenderEntity.o \
./src/renderer/RenderSystem.o \
./src/renderer/RenderSystem_init.o \
./src/renderer/RenderWorld.o \
./src/renderer/RenderWorld_demo.o \
./src/renderer/RenderWorld_load.o \
./src/renderer/RenderWorld_portals.o \
./src/renderer/VertexCache.o \
./src/renderer/cg_explicit.o \
./src/renderer/draw_arb.o \
./src/renderer/draw_arb2.o \
./src/renderer/draw_common.o \
./src/renderer/draw_exp.o \
./src/renderer/draw_exp_stub.o \
./src/renderer/draw_nv10.o \
./src/renderer/draw_nv20.o \
./src/renderer/draw_r200.o \
./src/renderer/tr_backend.o \
./src/renderer/tr_deform.o \
./src/renderer/tr_font.o \
./src/renderer/tr_guisurf.o \
./src/renderer/tr_light.o \
./src/renderer/tr_lightrun.o \
./src/renderer/tr_main.o \
./src/renderer/tr_orderIndexes.o \
./src/renderer/tr_polytope.o \
./src/renderer/tr_render.o \
./src/renderer/tr_rendertools.o \
./src/renderer/tr_shadowbounds.o \
./src/renderer/tr_stencilshadow.o \
./src/renderer/tr_subview.o \
./src/renderer/tr_trace.o \
./src/renderer/tr_trisurf.o \
./src/renderer/tr_turboshadow.o 


# Each subdirectory must supply rules for building sources it contributes
src/renderer/%.o: ../src/renderer/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


