/*-
 * Copyright (c) 1996 Søren Schmidt
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer
 *    in this position and unchanged.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software withough specific prior written permission
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * $FreeBSD: src/usr.bin/brandelf/brandelf.c,v 1.16 2000/07/02 03:34:08 imp Exp $
 */

#include <elf.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/errno.h>
#include <err.h>

/* These are defined on FreeBSD, but not on Linux */
#ifndef ELFOSABI_SYSV
#define ELFOSABI_SYSV       0
#endif
#ifndef ELFOSABI_LINUX
#define ELFOSABI_LINUX      3
#endif
#ifndef ELFOSABI_HURD
#define ELFOSABI_HURD       4
#endif
#ifndef ELFOSABI_SOLARIS
#define ELFOSABI_SOLARIS    6
#endif
#ifndef ELFOSABI_FREEBSD
#define ELFOSABI_FREEBSD    9
#endif


static int elftype(const char *);
static const char *iselftype(int);
static void printelftypes(void);
static void usage __P((void));

struct ELFtypes {
	const char *str;
	int value;
};
/* XXX - any more types? */
static struct ELFtypes elftypes[] = {
	{ "FreeBSD",	ELFOSABI_FREEBSD },
	{ "Linux",	ELFOSABI_LINUX },
	{ "Solaris",	ELFOSABI_SOLARIS },
	{ "SVR4",	ELFOSABI_SYSV }
};

int
main(int argc, char **argv)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intmain(int argc, char **argv)\r\n");
    return retVal;
}


static void
usage()
{
    Sys_Printf("voidusage()\r\n");
}


static const char *
iselftype(int elftype)
{
    Sys_Printf("char *iselftype(int elftype)\r\n");
    return NULL;
}


static int
elftype(const char *elfstrtype)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intelftype(const char *elfstrtype)\r\n");
    return retVal;
}


static void
printelftypes()
{
    Sys_Printf("voidprintelftypes()\r\n");
}

