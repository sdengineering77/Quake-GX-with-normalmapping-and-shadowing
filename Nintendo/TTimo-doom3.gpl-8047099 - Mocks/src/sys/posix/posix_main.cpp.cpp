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
#include "../sys_local.h"

#include <sys/types.h>
#include <sys/stat.h>
#include <errno.h>
#include <dirent.h>
#include <unistd.h>
#include <sys/mman.h>
#include <sys/time.h>
#include <pwd.h>
#include <pthread.h>
#include <dlfcn.h>
#include <termios.h>
#include <signal.h>
#include <fcntl.h>

#include "posix_public.h"

#define					MAX_OSPATH 256
#define					COMMAND_HISTORY 64

static int				input_hide = 0;

idEditField				input_field;
static char				input_ret[256];

static idStr			history[ COMMAND_HISTORY ];	// cycle buffer
static int				history_count = 0;			// buffer fill up
static int				history_start = 0;			// current history start
static int				history_current = 0;			// goes back in history
idEditField				history_backup;				// the base edit line

// terminal support
idCVar in_tty( "in_tty", "1", CVAR_BOOL | CVAR_INIT | CVAR_SYSTEM, "terminal tab-completion and history" );

static bool				tty_enabled = false;
static struct termios	tty_tc;

// pid - useful when you attach to gdb..
idCVar com_pid( "com_pid", "0", CVAR_INTEGER | CVAR_INIT | CVAR_SYSTEM, "process id" );

// exit - quit - error --------------------------------------------------------

static int set_exit = 0;
static char exit_spawn[ 1024 ];

/*
================
Posix_Exit
================
*/
void Posix_Exit(int ret) {
    Sys_Printf("void Posix_Exit(int ret)\r\n");
}


/*
================
Posix_SetExit
================
*/
void Posix_SetExit(int ret) {
    Sys_Printf("void Posix_SetExit(int ret)\r\n");
}


/*
===============
Posix_SetExitSpawn
set the process to be spawned when we quit
===============
*/
void Posix_SetExitSpawn( const char *exeName ) {
    Sys_Printf("void Posix_SetExitSpawn( const char *exeName )\r\n");
}


/*
==================
idSysLocal::StartProcess
if !quit, start the process asap
otherwise, push it for execution at exit
(i.e. let complete shutdown of the game and freeing of resources happen)
NOTE: might even want to add a small delay?
==================
*/
void idSysLocal::StartProcess( const char *exeName, bool quit ) {
    Sys_Printf("void idSysLocal::StartProcess( const char *exeName, bool quit )\r\n");
}


/*
================
Sys_Quit
================
*/
void Sys_Quit(void) {
    Sys_Printf("void Sys_Quit(void)\r\n");
}


/*
================
Sys_Milliseconds
================
*/
/* base time in seconds, that's our origin
   timeval:tv_sec is an int: 
   assuming this wraps every 0x7fffffff - ~68 years since the Epoch (1970) - we're safe till 2038
   using unsigned long data type to work right with Sys_XTimeToSysTime */
unsigned long sys_timeBase = 0;
/* current time in ms, using sys_timeBase as origin
   NOTE: sys_timeBase*1000 + curtime -> ms since the Epoch
     0x7fffffff ms - ~24 days
		 or is it 48 days? the specs say int, but maybe it's casted from unsigned int?
*/
int Sys_Milliseconds( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_Milliseconds( void )\r\n");
    return retVal;
}


/*
================
Sys_Mkdir
================
*/
void Sys_Mkdir( const char *path ) {
    Sys_Printf("void Sys_Mkdir( const char *path )\r\n");
}


/*
================
Sys_ListFiles
================
*/
int Sys_ListFiles( const char *directory, const char *extension, idStrList &list ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_ListFiles( const char *directory, const char *extension, idStrList &list )\r\n");
    return retVal;
}


/*
============================================================================
EVENT LOOP
============================================================================
*/

#define	MAX_QUED_EVENTS		256
#define	MASK_QUED_EVENTS	( MAX_QUED_EVENTS - 1 )

static sysEvent_t eventQue[MAX_QUED_EVENTS];
static int eventHead, eventTail;

/*
================
Posix_QueEvent

ptr should either be null, or point to a block of data that can be freed later
================
*/
void Posix_QueEvent( sysEventType_t type, int value, int value2,
				  int ptrLength, void *ptr ) {
    Sys_Printf("void Posix_QueEvent( sysEventType_t type, int value, int value2, int ptrLength, void *ptr )\r\n");
}


/*
================
Sys_GetEvent
================
*/
sysEvent_t Sys_GetEvent(void) {
    sysEvent_t retVal;
    memset(&retVal, 0, sizeof(sysEvent_t));
    Sys_Printf("sysEvent_t Sys_GetEvent(void)\r\n");
    return retVal;
}


/*
================
Sys_ClearEvents
================
*/
void Sys_ClearEvents( void ) {
    Sys_Printf("void Sys_ClearEvents( void )\r\n");
}


/*
================
Posix_Cwd
================
*/
const char *Posix_Cwd( void ) {
    Sys_Printf("char *Posix_Cwd( void )\r\n");
    return NULL;
}


/*
=================
Sys_GetMemoryStatus
=================
*/
void Sys_GetMemoryStatus( sysMemoryStats_t &stats ) {
    Sys_Printf("void Sys_GetMemoryStatus( sysMemoryStats_t &stats )\r\n");
}


void Sys_GetCurrentMemoryStatus( sysMemoryStats_t &stats ) {
    Sys_Printf("void Sys_GetCurrentMemoryStatus( sysMemoryStats_t &stats )\r\n");
}


void Sys_GetExeLaunchMemoryStatus( sysMemoryStats_t &stats ) {
    Sys_Printf("void Sys_GetExeLaunchMemoryStatus( sysMemoryStats_t &stats )\r\n");
}


/*
=================
Sys_Init
Posix_EarlyInit/Posix_LateInit is better
=================
*/
void Sys_Init( void ) {
    Sys_Printf("void Sys_Init( void )\r\n");
}


/*
=================
Posix_Shutdown
=================
*/
void Posix_Shutdown( void ) {
    Sys_Printf("void Posix_Shutdown( void )\r\n");
}


/*
=================
Sys_DLL_Load
TODO: OSX - use the native API instead? NSModule
=================
*/
int Sys_DLL_Load( const char *path ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_DLL_Load( const char *path )\r\n");
    return retVal;
}


/*
=================
Sys_DLL_GetProcAddress
=================
*/
void* Sys_DLL_GetProcAddress( int handle, const char *sym ) {
    Sys_Printf("void* Sys_DLL_GetProcAddress( int handle, const char *sym )\r\n");
    return NULL;
}


/*
=================
Sys_DLL_Unload
=================
*/
void Sys_DLL_Unload( int handle ) {
    Sys_Printf("void Sys_DLL_Unload( int handle )\r\n");
}


/*
================
Sys_ShowConsole
================
*/
void Sys_ShowConsole( int visLevel, bool quitOnClose ) {
    Sys_Printf("void Sys_ShowConsole( int visLevel, bool quitOnClose )\r\n");
}


// ---------------------------------------------------------------------------

// only relevant when specified on command line
const char *Sys_DefaultCDPath( void ) {
    Sys_Printf("char *Sys_DefaultCDPath( void )\r\n");
    return NULL;
}


long Sys_FileTimeStamp(FILE * fp) {
    long retVal;
    memset(&retVal, 0, sizeof(long));
    Sys_Printf("long Sys_FileTimeStamp(FILE * fp)\r\n");
    return retVal;
}


void Sys_Sleep(int msec) {
    Sys_Printf("void Sys_Sleep(int msec)\r\n");
}


char *Sys_GetClipboardData(void) {
    Sys_Printf("char *Sys_GetClipboardData(void)\r\n");
    return NULL;
}


void Sys_SetClipboardData( const char *string ) {
    Sys_Printf("void Sys_SetClipboardData( const char *string )\r\n");
}

	

// stub pretty much everywhere - heavy calling
void Sys_FlushCacheMemory(void *base, int bytes)
{
    Sys_Printf("void Sys_FlushCacheMemory(void *base, int bytes)\r\n");
}


bool Sys_FPU_StackIsEmpty( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Sys_FPU_StackIsEmpty( void )\r\n");
    return retVal;
}


void Sys_FPU_ClearStack( void ) {
    Sys_Printf("void Sys_FPU_ClearStack( void )\r\n");
}


const char *Sys_FPU_GetState( void ) {
    Sys_Printf("char *Sys_FPU_GetState( void )\r\n");
    return NULL;
}


void Sys_FPU_SetPrecision( int precision ) {
    Sys_Printf("void Sys_FPU_SetPrecision( int precision )\r\n");
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
===========
Sys_GetDriveFreeSpace
return in MegaBytes
===========
*/
int Sys_GetDriveFreeSpace( const char *path ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_GetDriveFreeSpace( const char *path )\r\n");
    return retVal;
}


/*
================
Sys_AlreadyRunning
return true if there is a copy of D3 running already
================
*/
bool Sys_AlreadyRunning( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Sys_AlreadyRunning( void )\r\n");
    return retVal;
}


/*
===============
Posix_EarlyInit
===============
*/
void Posix_EarlyInit( void ) {
    Sys_Printf("void Posix_EarlyInit( void )\r\n");
}


/*
===============
Posix_LateInit
===============
*/
void Posix_LateInit( void ) {
    Sys_Printf("void Posix_LateInit( void )\r\n");
}


/*
===============
Posix_InitConsoleInput
===============
*/
void Posix_InitConsoleInput( void ) {
    Sys_Printf("void Posix_InitConsoleInput( void )\r\n");
}


/*
================
terminal support utilities
================
*/

void tty_Del() {
    Sys_Printf("void tty_Del()\r\n");
}


void tty_Left() {
    Sys_Printf("void tty_Left()\r\n");
}


void tty_Right() {
    Sys_Printf("void tty_Right()\r\n");
}


// clear the display of the line currently edited
// bring cursor back to beginning of line
void tty_Hide() {
    Sys_Printf("void tty_Hide()\r\n");
}


// show the current line
void tty_Show() {
    Sys_Printf("void tty_Show()\r\n");
}


void tty_FlushIn() {
    Sys_Printf("void tty_FlushIn()\r\n");
}


/*
================
Posix_ConsoleInput
Checks for a complete line of text typed in at the console.
Return NULL if a complete line is not ready.
================
*/
char *Posix_ConsoleInput( void ) {
    Sys_Printf("char *Posix_ConsoleInput( void )\r\n");
    return NULL;
}


/*
called during frame loops, pacifier updates etc.
this is only for console input polling and misc mouse grab tasks
the actual mouse and keyboard input is in the Sys_Poll logic
*/
void Sys_GenerateEvents( void ) {
    Sys_Printf("void Sys_GenerateEvents( void )\r\n");
}


/*
===============
low level output
===============
*/

void Sys_DebugPrintf( const char *fmt, ... ) {
    Sys_Printf("void Sys_DebugPrintf( const char *fmt, ... )\r\n");
}


void Sys_DebugVPrintf( const char *fmt, va_list arg ) {
    Sys_Printf("void Sys_DebugVPrintf( const char *fmt, va_list arg )\r\n");
}


void Sys_Printf(const char *msg, ...) {
    Sys_Printf("void Sys_Printf(const char *msg, ...)\r\n");
}


void Sys_VPrintf(const char *msg, va_list arg) {
    Sys_Printf("void Sys_VPrintf(const char *msg, va_list arg)\r\n");
}


/*
================
Sys_Error
================
*/
void Sys_Error(const char *error, ...) {
    Sys_Printf("void Sys_Error(const char *error, ...)\r\n");
}


/*
===============
Sys_FreeOpenAL
===============
*/
void Sys_FreeOpenAL( void ) {
    Sys_Printf("void Sys_FreeOpenAL( void )\r\n");
}

