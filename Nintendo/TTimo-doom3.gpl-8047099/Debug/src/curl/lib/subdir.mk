################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/curl/lib/amigaos.c \
../src/curl/lib/base64.c \
../src/curl/lib/connect.c \
../src/curl/lib/content_encoding.c \
../src/curl/lib/cookie.c \
../src/curl/lib/dict.c \
../src/curl/lib/easy.c \
../src/curl/lib/escape.c \
../src/curl/lib/file.c \
../src/curl/lib/formdata.c \
../src/curl/lib/ftp.c \
../src/curl/lib/getdate.c \
../src/curl/lib/getenv.c \
../src/curl/lib/getinfo.c \
../src/curl/lib/hash.c \
../src/curl/lib/hostip.c \
../src/curl/lib/http.c \
../src/curl/lib/http_chunks.c \
../src/curl/lib/http_digest.c \
../src/curl/lib/http_negotiate.c \
../src/curl/lib/http_ntlm.c \
../src/curl/lib/if2ip.c \
../src/curl/lib/inet_pton.c \
../src/curl/lib/krb4.c \
../src/curl/lib/ldap.c \
../src/curl/lib/llist.c \
../src/curl/lib/md5.c \
../src/curl/lib/memdebug.c \
../src/curl/lib/mprintf.c \
../src/curl/lib/multi.c \
../src/curl/lib/netrc.c \
../src/curl/lib/nwlib.c \
../src/curl/lib/progress.c \
../src/curl/lib/security.c \
../src/curl/lib/sendf.c \
../src/curl/lib/share.c \
../src/curl/lib/speedcheck.c \
../src/curl/lib/ssluse.c \
../src/curl/lib/strequal.c \
../src/curl/lib/strtok.c \
../src/curl/lib/strtoofft.c \
../src/curl/lib/telnet.c \
../src/curl/lib/timeval.c \
../src/curl/lib/transfer.c \
../src/curl/lib/url.c \
../src/curl/lib/version.c 

OBJS += \
./src/curl/lib/amigaos.o \
./src/curl/lib/base64.o \
./src/curl/lib/connect.o \
./src/curl/lib/content_encoding.o \
./src/curl/lib/cookie.o \
./src/curl/lib/dict.o \
./src/curl/lib/easy.o \
./src/curl/lib/escape.o \
./src/curl/lib/file.o \
./src/curl/lib/formdata.o \
./src/curl/lib/ftp.o \
./src/curl/lib/getdate.o \
./src/curl/lib/getenv.o \
./src/curl/lib/getinfo.o \
./src/curl/lib/hash.o \
./src/curl/lib/hostip.o \
./src/curl/lib/http.o \
./src/curl/lib/http_chunks.o \
./src/curl/lib/http_digest.o \
./src/curl/lib/http_negotiate.o \
./src/curl/lib/http_ntlm.o \
./src/curl/lib/if2ip.o \
./src/curl/lib/inet_pton.o \
./src/curl/lib/krb4.o \
./src/curl/lib/ldap.o \
./src/curl/lib/llist.o \
./src/curl/lib/md5.o \
./src/curl/lib/memdebug.o \
./src/curl/lib/mprintf.o \
./src/curl/lib/multi.o \
./src/curl/lib/netrc.o \
./src/curl/lib/nwlib.o \
./src/curl/lib/progress.o \
./src/curl/lib/security.o \
./src/curl/lib/sendf.o \
./src/curl/lib/share.o \
./src/curl/lib/speedcheck.o \
./src/curl/lib/ssluse.o \
./src/curl/lib/strequal.o \
./src/curl/lib/strtok.o \
./src/curl/lib/strtoofft.o \
./src/curl/lib/telnet.o \
./src/curl/lib/timeval.o \
./src/curl/lib/transfer.o \
./src/curl/lib/url.o \
./src/curl/lib/version.o 


# Each subdirectory must supply rules for building sources it contributes
src/curl/lib/%.o: ../src/curl/lib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Local XL C++ Compiler'
	/usr/vacpp/bin/xlC -c -g -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


