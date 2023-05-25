/*
===========================================================================

Doom 3 GPL Source Code
Copyright (C) 1999-2011 id Software LLC, a ZeniMax Media company. 

This file is part of the Doom 3 GPL Source Code (?Doom 3 Source Code?).  

Doom 3 Source Code is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Doom 3 Source Code is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Doom 3 Source Code.  If not, see <http://www.gnu.org/licenses/>.

In addition, the Doom 3 Source Code is also subject to certain additional terms. You should have received a copy of these additional terms immediately following the terms and conditions of the GNU General Public License which accompanied the Doom 3 Source Code.  If not, please request a copy in writing from id Software at the address below.

If you have questions concerning this license or the applicable additional terms, you may contact in writing id Software LLC, c/o ZeniMax Media Inc., Suite 120, Rockville, Maryland 20850 USA.

===========================================================================
*/
#include "../../idlib/precompiled.h"
#include "posix_public.h"

#include <string.h>
#include <errno.h>

const int siglist[] = {
	SIGHUP,
	SIGQUIT,
	SIGILL,
	SIGTRAP,
	SIGIOT,
	SIGBUS,
	SIGFPE,
	SIGSEGV,
	SIGPIPE,
	SIGABRT,
	//	SIGTTIN,
	//	SIGTTOU,
	-1
	};

const char *signames[] = {
	"SIGHUP",
	"SIGQUIT",
	"SIGILL",
	"SIGTRAP",
	"SIGIOT",
	"SIGBUS",
	"SIGFPE",
	"SIGSEGV",
	"SIGPIPE",
	"SIGABRT",
	//	"SIGTTIN",
	//	"SIGTTOUT"
};

static char fatalError[ 1024 ];

/*
================
Posix_ClearSigs
================
*/
void Posix_ClearSigs( ) {
    Sys_Printf("void Posix_ClearSigs( )\r\n");
}


/*
================
sig_handler
================
*/
static void sig_handler( int signum, siginfo_t *info, void *context ) {
    Sys_Printf("void sig_handler( int signum, siginfo_t *info, void *context )\r\n");
}


/*
================
Posix_InitSigs
================
*/
void Posix_InitSigs( ) {
    Sys_Printf("void Posix_InitSigs( )\r\n");
}


/*
==================
Sys_SetFatalError
==================
*/
void Sys_SetFatalError( const char *error ) {
    Sys_Printf("void Sys_SetFatalError( const char *error )\r\n");
}

