################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/curl/docs/examples/curlgtk.c \
../src/curl/docs/examples/curlx.c \
../src/curl/docs/examples/fopen.c \
../src/curl/docs/examples/ftpget.c \
../src/curl/docs/examples/ftpgetresp.c \
../src/curl/docs/examples/ftpupload.c \
../src/curl/docs/examples/getinmemory.c \
../src/curl/docs/examples/http-post.c \
../src/curl/docs/examples/httpput.c \
../src/curl/docs/examples/multi-app.c \
../src/curl/docs/examples/multi-double.c \
../src/curl/docs/examples/multi-post.c \
../src/curl/docs/examples/multi-single.c \
../src/curl/docs/examples/multithread.c \
../src/curl/docs/examples/persistant.c \
../src/curl/docs/examples/post-callback.c \
../src/curl/docs/examples/postit2.c \
../src/curl/docs/examples/sepheaders.c \
../src/curl/docs/examples/simple.c \
../src/curl/docs/examples/simplepost.c \
../src/curl/docs/examples/simplessl.c 

OBJS += \
./src/curl/docs/examples/curlgtk.o \
./src/curl/docs/examples/curlx.o \
./src/curl/docs/examples/fopen.o \
./src/curl/docs/examples/ftpget.o \
./src/curl/docs/examples/ftpgetresp.o \
./src/curl/docs/examples/ftpupload.o \
./src/curl/docs/examples/getinmemory.o \
./src/curl/docs/examples/http-post.o \
./src/curl/docs/examples/httpput.o \
./src/curl/docs/examples/multi-app.o \
./src/curl/docs/examples/multi-double.o \
./src/curl/docs/examples/multi-post.o \
./src/curl/docs/examples/multi-single.o \
./src/curl/docs/examples/multithread.o \
./src/curl/docs/examples/persistant.o \
./src/curl/docs/examples/post-callback.o \
./src/curl/docs/examples/postit2.o \
./src/curl/docs/examples/sepheaders.o \
./src/curl/docs/examples/simple.o \
./src/curl/docs/examples/simplepost.o \
./src/curl/docs/examples/simplessl.o 


# Each subdirectory must supply rules for building sources it contributes
src/curl/docs/examples/%.o: ../src/curl/docs/examples/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


