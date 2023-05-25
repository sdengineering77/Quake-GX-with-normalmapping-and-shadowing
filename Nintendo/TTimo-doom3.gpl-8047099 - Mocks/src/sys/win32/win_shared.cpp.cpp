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
#pragma hdrstop

#include "win_local.h"
#include <lmerr.h>
#include <lmcons.h>
#include <lmwksta.h>
#include <errno.h>
#include <fcntl.h>
#include <direct.h>
#include <io.h>
#include <conio.h>

#ifndef	ID_DEDICATED
#include <comdef.h>
#include <comutil.h>
#include <Wbemidl.h>

#pragma comment (lib, "wbemuuid.lib")
#endif

/*
================
Sys_Milliseconds
================
*/
int Sys_Milliseconds( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_Milliseconds( void )\r\n");
    return retVal;
}


/*
================
Sys_GetSystemRam

	returns amount of physical memory in MB
================
*/
int Sys_GetSystemRam( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_GetSystemRam( void )\r\n");
    return retVal;
}



/*
================
Sys_GetDriveFreeSpace
returns in megabytes
================
*/
int Sys_GetDriveFreeSpace( const char *path ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_GetDriveFreeSpace( const char *path )\r\n");
    return retVal;
}



/*
================
Sys_GetVideoRam
returns in megabytes
================
*/
int Sys_GetVideoRam( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_GetVideoRam( void )\r\n");
    return retVal;
}


/*
================
Sys_GetCurrentMemoryStatus

	returns OS mem info
	all values are in kB except the memoryload
================
*/
void Sys_GetCurrentMemoryStatus( sysMemoryStats_t &stats ) {
    Sys_Printf("void Sys_GetCurrentMemoryStatus( sysMemoryStats_t &stats )\r\n");
}


/*
================
Sys_LockMemory
================
*/
bool Sys_LockMemory( void *ptr, int bytes ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Sys_LockMemory( void *ptr, int bytes )\r\n");
    return retVal;
}


/*
================
Sys_UnlockMemory
================
*/
bool Sys_UnlockMemory( void *ptr, int bytes ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Sys_UnlockMemory( void *ptr, int bytes )\r\n");
    return retVal;
}


/*
================
Sys_SetPhysicalWorkMemory
================
*/
void Sys_SetPhysicalWorkMemory( int minBytes, int maxBytes ) {
    Sys_Printf("void Sys_SetPhysicalWorkMemory( int minBytes, int maxBytes )\r\n");
}


/*
================
Sys_GetCurrentUser
================
*/
char *Sys_GetCurrentUser( void ) {
    Sys_Printf("char *Sys_GetCurrentUser( void )\r\n");
    return NULL;
}
	


/*
===============================================================================

	Call stack

===============================================================================
*/


#define PROLOGUE_SIGNATURE 0x00EC8B55

#include <dbghelp.h>

const int UNDECORATE_FLAGS =	UNDNAME_NO_MS_KEYWORDS |
								UNDNAME_NO_ACCESS_SPECIFIERS |
								UNDNAME_NO_FUNCTION_RETURNS |
								UNDNAME_NO_ALLOCATION_MODEL |
								UNDNAME_NO_ALLOCATION_LANGUAGE |
								UNDNAME_NO_MEMBER_TYPE;

#if defined(_DEBUG) && 1

typedef struct symbol_s {
	int					address;
	char *				name;
	struct symbol_s *	next;
} symbol_t;

typedef struct module_s {
	int					address;
	char *				name;
	symbol_t *			symbols;
	struct module_s *	next;
} module_t;

module_t *modules;

/*
==================
SkipRestOfLine
==================
*/
void SkipRestOfLine( const char **ptr ) {
    Sys_Printf("void SkipRestOfLine( const char **ptr )\r\n");
}


/*
==================
SkipWhiteSpace
==================
*/
void SkipWhiteSpace( const char **ptr ) {
    Sys_Printf("void SkipWhiteSpace( const char **ptr )\r\n");
}


/*
==================
ParseHexNumber
==================
*/
int ParseHexNumber( const char **ptr ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int ParseHexNumber( const char **ptr )\r\n");
    return retVal;
}


/*
==================
Sym_Init
==================
*/
void Sym_Init( long addr ) {
    Sys_Printf("void Sym_Init( long addr )\r\n");
}


/*
==================
Sym_Shutdown
==================
*/
void Sym_Shutdown( void ) {
    Sys_Printf("void Sym_Shutdown( void )\r\n");
}


/*
==================
Sym_GetFuncInfo
==================
*/
void Sym_GetFuncInfo( long addr, idStr &module, idStr &funcName ) {
    Sys_Printf("void Sym_GetFuncInfo( long addr, idStr &module, idStr &funcName )\r\n");
}


#elif defined(_DEBUG)

DWORD lastAllocationBase = -1;
HANDLE processHandle;
idStr lastModule;

/*
==================
Sym_Init
==================
*/
void Sym_Init( long addr ) {
    Sys_Printf("void Sym_Init( long addr )\r\n");
}


/*
==================
Sym_Shutdown
==================
*/
void Sym_Shutdown( void ) {
    Sys_Printf("void Sym_Shutdown( void )\r\n");
}


/*
==================
Sym_GetFuncInfo
==================
*/
void Sym_GetFuncInfo( long addr, idStr &module, idStr &funcName ) {
    Sys_Printf("void Sym_GetFuncInfo( long addr, idStr &module, idStr &funcName )\r\n");
}


#else

/*
==================
Sym_Init
==================
*/
void Sym_Init( long addr ) {
    Sys_Printf("void Sym_Init( long addr )\r\n");
}


/*
==================
Sym_Shutdown
==================
*/
void Sym_Shutdown( void ) {
    Sys_Printf("void Sym_Shutdown( void )\r\n");
}


/*
==================
Sym_GetFuncInfo
==================
*/
void Sym_GetFuncInfo( long addr, idStr &module, idStr &funcName ) {
    Sys_Printf("void Sym_GetFuncInfo( long addr, idStr &module, idStr &funcName )\r\n");
}


#endif

/*
==================
GetFuncAddr
==================
*/
address_t GetFuncAddr( address_t midPtPtr ) {
    address_t retVal;
    memset(&retVal, 0, sizeof(address_t));
    Sys_Printf("address_t GetFuncAddr( address_t midPtPtr )\r\n");
    return retVal;
}


/*
==================
GetCallerAddr
==================
*/
address_t GetCallerAddr( long _ebp ) {
    address_t retVal;
    memset(&retVal, 0, sizeof(address_t));
    Sys_Printf("address_t GetCallerAddr( long _ebp )\r\n");
    return retVal;
}


/*
==================
Sys_GetCallStack

 use /Oy option
==================
*/
void Sys_GetCallStack( address_t *callStack, const int callStackSize ) {
    Sys_Printf("void Sys_GetCallStack( address_t *callStack, const int callStackSize )\r\n");
}


/*
==================
Sys_GetCallStackStr
==================
*/
const char *Sys_GetCallStackStr( const address_t *callStack, const int callStackSize ) {
    Sys_Printf("char *Sys_GetCallStackStr( const address_t *callStack, const int callStackSize )\r\n");
    return NULL;
}


/*
==================
Sys_GetCallStackCurStr
==================
*/
const char *Sys_GetCallStackCurStr( int depth ) {
    Sys_Printf("char *Sys_GetCallStackCurStr( int depth )\r\n");
    return NULL;
}


/*
==================
Sys_GetCallStackCurAddressStr
==================
*/
const char *Sys_GetCallStackCurAddressStr( int depth ) {
    Sys_Printf("char *Sys_GetCallStackCurAddressStr( int depth )\r\n");
    return NULL;
}


/*
==================
Sys_ShutdownSymbols
==================
*/
void Sys_ShutdownSymbols( void ) {
    Sys_Printf("void Sys_ShutdownSymbols( void )\r\n");
}

