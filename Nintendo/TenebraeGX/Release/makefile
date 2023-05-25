################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include testgl/subdir.mk
-include src\ -02/subdir.mk
-include src\ -\ Copy\ (6)/subdir.mk
-include src\ -\ Copy\ (5)/subdir.mk
-include src\ -\ Copy\ (4)/subdir.mk
-include src\ -\ Copy\ (3)/subdir.mk
-include src\ -\ Copy\ (2)/subdir.mk
-include src\ -\ Copy\ (2)/gx/subdir.mk
-include src\ -\ Copy/subdir.mk
-include src\ -\ Copy/gx/subdir.mk
-include src/subdir.mk
-include gl2gx/source/subdir.mk
-include gl2gx/source/libutil/subdir.mk
-include gl2gx/source/libtess/subdir.mk
-include gl2gx/source/glut/subdir.mk
-include build/subdir.mk
-include _src/subdir.mk
-include _gl2gx/source/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: TenebraeGX

# Tool invocations
TenebraeGX: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross GCC Linker'
	gcc  -o"TenebraeGX" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES) TenebraeGX
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
