#---------------------------------------------------------------------------------
# Clear the implicit built in rules
#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------
ifeq ($(strip $(DEVKITPPC)),)
$(error "Please set DEVKITPPC in your environment. export DEVKITPPC=<path to>devkitPPC")
endif

include $(DEVKITPPC)/wii_rules

# WiiSend
# IP			:= 192.168.123.178
IP			:= 192.168.0.104
#IP			:= 192.168.123.132
PORT		:= 2773	



# Just a reminder about where to change version numbers, etc: Makefile.gx, quakedef.h, meta.xml, readme.html

# About the release.
VERSION	:= WIP

# Directories.
SRC_DIR		:= ./src
TEXTURES	:= ./textures 
PROGS_DIR := progs 
OBJ_DIR_TOP	:= ./build
OBJ_DIR		:= $(OBJ_DIR_TOP)/wii
DIST_DIR	:= ./dist/wii


# Key files.
DOL				:= $(DIST_DIR)/apps/quake/boot.dol
ELF				:= $(OBJ_DIR)/QuakeGX.elf
ZIP_FILE		:= QuakeGX_$(VERSION).zip
ZIP_CONTENTS	:= apps/quake/boot.dol apps/quake/icon.png apps/quake/meta.xml apps/quake/ID1/WII.PAK apps/quake/GPL.txt apps/quake/readme.html
#SCFFILES		:=	$(foreach dir,$(TEXTURES),$(notdir $(wildcard $(dir)/*.scf)))
#TPLFILES		:=	$(SCFFILES:.scf=.tpl)

# Tools.
SED = sed "s/:\([0-9]*\):/\(\1\) :/"

# Compiler flags.
# Note that we MUST USE -fno-merge-constants, because the compiler generates crap otherwise.
COMMON_FLAGS	:= -mcpu=750 -g -meabi -mhard-float -Wall -pipe -mrvl
OPT_FLAGS		:= -Os -fno-merge-constants -fno-strict-aliasing -fsingle-precision-constant
DEFINES			:= -DGEKKO -DGXQUAKE -DWIFILOGGING #-DDISABLE_WIIMOTE
CFLAGS			:= $(COMMON_FLAGS) $(OPT_FLAGS) $(DEFINES) -I$(DEVKITPRO)/libogc/include -I$(DEVKITPRO)/libogc/include/ogc -I$(DEVKITPRO)/libogc/include/ogc/machine -I$(DEVKITPRO)/libfat/include -I$(OBJ_DIR)
CXXFLAGS		:= $(CFLAGS) -Weffc++ -fno-exceptions -fno-rtti
LDFLAGS			:= $(COMMON_FLAGS) -L$(DEVKITPRO)/libogc/lib/wii -L$(DEVKITPRO)/libfat/lib/wii

# Linker info.

LIBS := -lwiiuse -lbte -lfat -ldb -logc
# LIBS := -lwiikeyboard -lwiiuse -lbte -lfat -ldb -logc DRS TOO LAZY TO GET WIIKEYBOARD LIB

# Files to compile.
export OBJS := \
	$(OBJ_DIR)/progs.dat.o \
	$(OBJ_DIR)/light.tpl.o \
	$(OBJ_DIR)/wii/input.o \
	$(OBJ_DIR)/wii/main.o \
	$(OBJ_DIR)/wii/sound.o \
	$(OBJ_DIR)/wii/system.o \
	$(OBJ_DIR)/wii/net_wii.o \
	$(OBJ_DIR)/wii/net_udp_wii.o \
	$(OBJ_DIR)/wii/gx/video_gx.o \
	$(OBJ_DIR)/wii/gx/portalvis.o \
	$(OBJ_DIR)/wii/gx/stb_dxt.o \
	$(OBJ_DIR)/wii/gx/gx_draw.o \
	$(OBJ_DIR)/wii/gx/gx_mesh.o \
	$(OBJ_DIR)/wii/gx/gx_model.o \
	$(OBJ_DIR)/wii/gx/gx_osk.o \
	$(OBJ_DIR)/wii/gx/gx_refrag.o \
	$(OBJ_DIR)/wii/gx/gx_rlight.o \
	$(OBJ_DIR)/wii/gx/gx_rmain.o \
	$(OBJ_DIR)/wii/gx/gx_rmisc.o \
	$(OBJ_DIR)/wii/gx/gx_rsurf.o \
	$(OBJ_DIR)/wii/gx/gx_screen.o \
	$(OBJ_DIR)/wii/gx/gx_shader.o \
	$(OBJ_DIR)/wii/gx/gx_slight.o \
	$(OBJ_DIR)/wii/gx/gx_rshadow.o \
	$(OBJ_DIR)/wii/gx/gx_warp.o \
	$(OBJ_DIR)/wii/gx/gx_rpart.o \
	$(OBJ_DIR)/wii/gx/gx_textures.o \
	$(OBJ_DIR)/generic/cd_null.o \
	$(OBJ_DIR)/generic/chase.o \
	$(OBJ_DIR)/generic/cl_demo.o \
	$(OBJ_DIR)/generic/cl_input.o \
	$(OBJ_DIR)/generic/cl_main.o \
	$(OBJ_DIR)/generic/cl_parse.o \
	$(OBJ_DIR)/generic/cl_tent.o \
	$(OBJ_DIR)/generic/cmd.o \
	$(OBJ_DIR)/generic/common.o \
	$(OBJ_DIR)/generic/console.o \
	$(OBJ_DIR)/generic/crc.o \
	$(OBJ_DIR)/generic/cvar.o \
	$(OBJ_DIR)/generic/host.o \
	$(OBJ_DIR)/generic/host_cmd.o \
	$(OBJ_DIR)/generic/keys.o \
	$(OBJ_DIR)/generic/mathlib.o \
	$(OBJ_DIR)/generic/menu.o \
	$(OBJ_DIR)/generic/net_loop.o \
	$(OBJ_DIR)/generic/net_main.o \
	$(OBJ_DIR)/generic/net_dgrm.o \
	$(OBJ_DIR)/generic/net_vcr.o \
	$(OBJ_DIR)/generic/pr_cmds.o \
	$(OBJ_DIR)/generic/pr_edict.o \
	$(OBJ_DIR)/generic/pr_exec.o \
	$(OBJ_DIR)/generic/sbar.o \
	$(OBJ_DIR)/generic/snd_dma.o \
	$(OBJ_DIR)/generic/snd_mem.o \
	$(OBJ_DIR)/generic/snd_mix.o \
	$(OBJ_DIR)/generic/sv_main.o \
	$(OBJ_DIR)/generic/sv_move.o \
	$(OBJ_DIR)/generic/sv_phys.o \
	$(OBJ_DIR)/generic/sv_user.o \
	$(OBJ_DIR)/generic/view.o \
	$(OBJ_DIR)/generic/wad.o \
	$(OBJ_DIR)/generic/world.o \
	$(OBJ_DIR)/generic/zone.o

# How to build everything.
all: $(DOL)

# How to install.
#install: all
#	@echo Installing
#	@cp $(DOL) S:/
#	@cp $(DIST_DIR)/ID1/CONFIG.CFG S:/ID1/

# How to clean.
clean:
	@echo Cleaning
	@rm -f $(OBJS) $(DOL) $(ELF)
	@rm -rf $(OBJ_DIR_TOP)
#---------------------------------------------------------------------------------
run:
	#Dolphin.bat --elf=/D/Data/Nintendo/quake-wii/$(DOL)
	#wiiload $(OUTPUT).dol
	/C/Utils/WiiSendClient/WiiSend.exe ${IP} ${PORT} $(DOL)

# How to build the distribution.
dist: clean all
	@echo Building distribution
	rm -f $(DIST_DIR)/$(ZIP_FILE)
	cd $(DIST_DIR) && zip -9 -r $(ZIP_FILE) $(ZIP_CONTENTS)

# How to make the .DOL file.
$(DOL): $(ELF)
	echo Creating $(notdir $@)
	mkdir -p $(dir $@)
	elf2dol $< $@

# How to link the ELF.
$(ELF): $(OBJS)
	echo Linking $(notdir $@)
	mkdir -p $(dir $@)
	powerpc-gekko-g++ $(LDFLAGS) $(OBJS) $(LIBS) -o $@

# How to compile a C++ source file.
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	@echo Compiling $(notdir $<)
	@mkdir -p $(dir $@)
	@powerpc-gekko-g++ $(CXXFLAGS) -c $< -o $@ 2>&1 | $(SED)

# How to compile a C source file.
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@echo Compiling $(notdir $<)
	@mkdir -p $(dir $@)
	@powerpc-gekko-gcc $(CFLAGS) -c $< -o $@ 2>&1 | $(SED)

$(OBJ_DIR)/%.tpl: ./textures/%.scf
	@echo $(notdir $<)
	@mkdir -p $(dir $@)
	gxtexconv -s $< -d $(OBJ_DIR)/$*.d -o $@

# DRS How to process tpl files
# %.tpl.o:	%.tpl
$(OBJ_DIR)/%.tpl.o: $(OBJ_DIR)/%.tpl
	@echo $(notdir $<)
	cd $(OBJ_DIR)
	bin2s -a 32 $< | $(AS) -o $(@)
	echo "extern const u8" `(echo $(<F) | sed -e 's/^\([0-9]\)/_\1/' | tr . _)`"_end[];" > $(OBJ_DIR)`(echo /$(<F) | tr . _)`.h
	echo "extern const u8" `(echo $(<F) | sed -e 's/^\([0-9]\)/_\1/' | tr . _)`"[];" >> $(OBJ_DIR)`(echo /$(<F) | tr . _)`.h
	echo "extern const u32" `(echo $(<F) | sed -e 's/^\([0-9]\)/_\1/' | tr . _)`_size";" >> $(OBJ_DIR)`(echo /$(<F) | tr . _)`.h

# DRS How to process .dat files
# %.tpl.o:	%.tpl
$(OBJ_DIR)/%.dat.o: progs/%.dat
	@echo $(notdir $<)
	mkdir -p $(dir $@)
	bin2s -a 32 $< | $(AS) -o $(@)
	echo "extern const u8" `(echo $(<F) | sed -e 's/^\([0-9]\)/_\1/' | tr . _)`"_end[];" > $(OBJ_DIR)`(echo /$(<F) | tr . _)`.h
	echo "extern const u8" `(echo $(<F) | sed -e 's/^\([0-9]\)/_\1/' | tr . _)`"[];" >> $(OBJ_DIR)`(echo /$(<F) | tr . _)`.h
	echo "extern const u32" `(echo $(<F) | sed -e 's/^\([0-9]\)/_\1/' | tr . _)`_size";" >> $(OBJ_DIR)`(echo /$(<F) | tr . _)`.h

-include $(OBJ_DIR)/*.d

