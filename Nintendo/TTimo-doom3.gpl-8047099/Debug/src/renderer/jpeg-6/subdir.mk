################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/renderer/jpeg-6/jcapimin.c \
../src/renderer/jpeg-6/jcapistd.c \
../src/renderer/jpeg-6/jccoefct.c \
../src/renderer/jpeg-6/jccolor.c \
../src/renderer/jpeg-6/jcdctmgr.c \
../src/renderer/jpeg-6/jchuff.c \
../src/renderer/jpeg-6/jcinit.c \
../src/renderer/jpeg-6/jcmainct.c \
../src/renderer/jpeg-6/jcmarker.c \
../src/renderer/jpeg-6/jcmaster.c \
../src/renderer/jpeg-6/jcomapi.c \
../src/renderer/jpeg-6/jcparam.c \
../src/renderer/jpeg-6/jcphuff.c \
../src/renderer/jpeg-6/jcprepct.c \
../src/renderer/jpeg-6/jcsample.c \
../src/renderer/jpeg-6/jctrans.c \
../src/renderer/jpeg-6/jdapimin.c \
../src/renderer/jpeg-6/jdapistd.c \
../src/renderer/jpeg-6/jdatadst.c \
../src/renderer/jpeg-6/jdatasrc.c \
../src/renderer/jpeg-6/jdcoefct.c \
../src/renderer/jpeg-6/jdcolor.c \
../src/renderer/jpeg-6/jddctmgr.c \
../src/renderer/jpeg-6/jdhuff.c \
../src/renderer/jpeg-6/jdinput.c \
../src/renderer/jpeg-6/jdmainct.c \
../src/renderer/jpeg-6/jdmarker.c \
../src/renderer/jpeg-6/jdmaster.c \
../src/renderer/jpeg-6/jdmerge.c \
../src/renderer/jpeg-6/jdphuff.c \
../src/renderer/jpeg-6/jdpostct.c \
../src/renderer/jpeg-6/jdsample.c \
../src/renderer/jpeg-6/jdtrans.c \
../src/renderer/jpeg-6/jerror.c \
../src/renderer/jpeg-6/jfdctflt.c \
../src/renderer/jpeg-6/jfdctfst.c \
../src/renderer/jpeg-6/jfdctint.c \
../src/renderer/jpeg-6/jidctflt.c \
../src/renderer/jpeg-6/jidctfst.c \
../src/renderer/jpeg-6/jidctint.c \
../src/renderer/jpeg-6/jidctred.c \
../src/renderer/jpeg-6/jload.c \
../src/renderer/jpeg-6/jmemansi.c \
../src/renderer/jpeg-6/jmemdos.c \
../src/renderer/jpeg-6/jmemmgr.c \
../src/renderer/jpeg-6/jmemname.c \
../src/renderer/jpeg-6/jmemnobs.c \
../src/renderer/jpeg-6/jpegtran.c \
../src/renderer/jpeg-6/jquant1.c \
../src/renderer/jpeg-6/jquant2.c \
../src/renderer/jpeg-6/jutils.c 

OBJS += \
./src/renderer/jpeg-6/jcapimin.o \
./src/renderer/jpeg-6/jcapistd.o \
./src/renderer/jpeg-6/jccoefct.o \
./src/renderer/jpeg-6/jccolor.o \
./src/renderer/jpeg-6/jcdctmgr.o \
./src/renderer/jpeg-6/jchuff.o \
./src/renderer/jpeg-6/jcinit.o \
./src/renderer/jpeg-6/jcmainct.o \
./src/renderer/jpeg-6/jcmarker.o \
./src/renderer/jpeg-6/jcmaster.o \
./src/renderer/jpeg-6/jcomapi.o \
./src/renderer/jpeg-6/jcparam.o \
./src/renderer/jpeg-6/jcphuff.o \
./src/renderer/jpeg-6/jcprepct.o \
./src/renderer/jpeg-6/jcsample.o \
./src/renderer/jpeg-6/jctrans.o \
./src/renderer/jpeg-6/jdapimin.o \
./src/renderer/jpeg-6/jdapistd.o \
./src/renderer/jpeg-6/jdatadst.o \
./src/renderer/jpeg-6/jdatasrc.o \
./src/renderer/jpeg-6/jdcoefct.o \
./src/renderer/jpeg-6/jdcolor.o \
./src/renderer/jpeg-6/jddctmgr.o \
./src/renderer/jpeg-6/jdhuff.o \
./src/renderer/jpeg-6/jdinput.o \
./src/renderer/jpeg-6/jdmainct.o \
./src/renderer/jpeg-6/jdmarker.o \
./src/renderer/jpeg-6/jdmaster.o \
./src/renderer/jpeg-6/jdmerge.o \
./src/renderer/jpeg-6/jdphuff.o \
./src/renderer/jpeg-6/jdpostct.o \
./src/renderer/jpeg-6/jdsample.o \
./src/renderer/jpeg-6/jdtrans.o \
./src/renderer/jpeg-6/jerror.o \
./src/renderer/jpeg-6/jfdctflt.o \
./src/renderer/jpeg-6/jfdctfst.o \
./src/renderer/jpeg-6/jfdctint.o \
./src/renderer/jpeg-6/jidctflt.o \
./src/renderer/jpeg-6/jidctfst.o \
./src/renderer/jpeg-6/jidctint.o \
./src/renderer/jpeg-6/jidctred.o \
./src/renderer/jpeg-6/jload.o \
./src/renderer/jpeg-6/jmemansi.o \
./src/renderer/jpeg-6/jmemdos.o \
./src/renderer/jpeg-6/jmemmgr.o \
./src/renderer/jpeg-6/jmemname.o \
./src/renderer/jpeg-6/jmemnobs.o \
./src/renderer/jpeg-6/jpegtran.o \
./src/renderer/jpeg-6/jquant1.o \
./src/renderer/jpeg-6/jquant2.o \
./src/renderer/jpeg-6/jutils.o 


# Each subdirectory must supply rules for building sources it contributes
src/renderer/jpeg-6/%.o: ../src/renderer/jpeg-6/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


