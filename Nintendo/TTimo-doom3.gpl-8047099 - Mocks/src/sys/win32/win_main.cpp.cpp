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

#include <errno.h>
#include <float.h>
#include <fcntl.h>
#include <direct.h>
#include <io.h>
#include <conio.h>
#include <mapi.h>
#include <ShellAPI.h>

#ifndef __MRC__
#include <sys/types.h>
#include <sys/stat.h>
#endif

#include "../sys_local.h"
#include "win_local.h"
#include "rc/CreateResourceIDs.h"
#include "../../renderer/tr_local.h"

idCVar Win32Vars_t::sys_arch( "sys_arch", "", CVAR_SYSTEM | CVAR_INIT, "" );
idCVar Win32Vars_t::sys_cpustring( "sys_cpustring", "detect", CVAR_SYSTEM | CVAR_INIT, "" );
idCVar Win32Vars_t::in_mouse( "in_mouse", "1", CVAR_SYSTEM | CVAR_BOOL, "enable mouse input" );
idCVar Win32Vars_t::win_allowAltTab( "win_allowAltTab", "0", CVAR_SYSTEM | CVAR_BOOL, "allow Alt-Tab when fullscreen" );
idCVar Win32Vars_t::win_notaskkeys( "win_notaskkeys", "0", CVAR_SYSTEM | CVAR_INTEGER, "disable windows task keys" );
idCVar Win32Vars_t::win_username( "win_username", "", CVAR_SYSTEM | CVAR_INIT, "windows user name" );
idCVar Win32Vars_t::win_xpos( "win_xpos", "3", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_INTEGER, "horizontal position of window" );
idCVar Win32Vars_t::win_ypos( "win_ypos", "22", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_INTEGER, "vertical position of window" );
idCVar Win32Vars_t::win_outputDebugString( "win_outputDebugString", "0", CVAR_SYSTEM | CVAR_BOOL, "" );
idCVar Win32Vars_t::win_outputEditString( "win_outputEditString", "1", CVAR_SYSTEM | CVAR_BOOL, "" );
idCVar Win32Vars_t::win_viewlog( "win_viewlog", "0", CVAR_SYSTEM | CVAR_INTEGER, "" );
idCVar Win32Vars_t::win_timerUpdate( "win_timerUpdate", "0", CVAR_SYSTEM | CVAR_BOOL, "allows the game to be updated while dragging the window" );
idCVar Win32Vars_t::win_allowMultipleInstances( "win_allowMultipleInstances", "0", CVAR_SYSTEM | CVAR_BOOL, "allow multiple instances running concurrently" );

Win32Vars_t	win32;

static char		sys_cmdline[MAX_STRING_CHARS];

// not a hard limit, just what we keep track of for debugging
xthreadInfo *g_threads[MAX_THREADS];

int g_thread_count = 0;

static sysMemoryStats_t exeLaunchMemoryStats;

static	xthreadInfo	threadInfo;
static	HANDLE		hTimer;

/*
================
Sys_GetExeLaunchMemoryStatus
================
*/
void Sys_GetExeLaunchMemoryStatus( sysMemoryStats_t &stats ) {
    Sys_Printf("void Sys_GetExeLaunchMemoryStatus( sysMemoryStats_t &stats )\r\n");
}


/*
==================
Sys_Createthread
==================
*/
void Sys_CreateThread(  xthread_t function, void *parms, xthreadPriority priority, xthreadInfo &info, const char *name, xthreadInfo *threads[MAX_THREADS], int *thread_count ) {
    Sys_Printf("void Sys_CreateThread(  xthread_t function, void *parms, xthreadPriority priority, xthreadInfo &info, const char *name, xthreadInfo *threads[MAX_THREADS], int *thread_count )\r\n");
}


/*
==================
Sys_DestroyThread
==================
*/
void Sys_DestroyThread( xthreadInfo& info ) {
    Sys_Printf("void Sys_DestroyThread( xthreadInfo& info )\r\n");
}


/*
==================
Sys_Sentry
==================
*/
void Sys_Sentry() {
    Sys_Printf("void Sys_Sentry()\r\n");
}


/*
==================
Sys_GetThreadName
==================
*/
const char* Sys_GetThreadName(int *index) {
    Sys_Printf("char* Sys_GetThreadName(int *index)\r\n");
    return NULL;
}



/*
==================
Sys_EnterCriticalSection
==================
*/
void Sys_EnterCriticalSection( int index ) {
    Sys_Printf("void Sys_EnterCriticalSection( int index )\r\n");
}


/*
==================
Sys_LeaveCriticalSection
==================
*/
void Sys_LeaveCriticalSection( int index ) {
    Sys_Printf("void Sys_LeaveCriticalSection( int index )\r\n");
}


/*
==================
Sys_WaitForEvent
==================
*/
void Sys_WaitForEvent( int index ) {
    Sys_Printf("void Sys_WaitForEvent( int index )\r\n");
}


/*
==================
Sys_TriggerEvent
==================
*/
void Sys_TriggerEvent( int index ) {
    Sys_Printf("void Sys_TriggerEvent( int index )\r\n");
}




#pragma optimize( "", on )

#ifdef DEBUG


static unsigned int debug_total_alloc = 0;
static unsigned int debug_total_alloc_count = 0;
static unsigned int debug_current_alloc = 0;
static unsigned int debug_current_alloc_count = 0;
static unsigned int debug_frame_alloc = 0;
static unsigned int debug_frame_alloc_count = 0;

idCVar sys_showMallocs( "sys_showMallocs", "0", CVAR_SYSTEM, "" );

// _HOOK_ALLOC, _HOOK_REALLOC, _HOOK_FREE

typedef struct CrtMemBlockHeader
{
	struct _CrtMemBlockHeader *pBlockHeaderNext;	// Pointer to the block allocated just before this one:
	struct _CrtMemBlockHeader *pBlockHeaderPrev;	// Pointer to the block allocated just after this one
   char *szFileName;    // File name
   int nLine;           // Line number
   size_t nDataSize;    // Size of user block
   int nBlockUse;       // Type of block
   long lRequest;       // Allocation number
	byte		gap[4];								// Buffer just before (lower than) the user's memory:
} CrtMemBlockHeader;

#include <crtdbg.h>

/*
==================
Sys_AllocHook

	called for every malloc/new/free/delete
==================
*/
int Sys_AllocHook( int nAllocType, void *pvData, size_t nSize, int nBlockUse, long lRequest, const unsigned char * szFileName, int nLine ) 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_AllocHook( int nAllocType, void *pvData, size_t nSize, int nBlockUse, long lRequest, const unsigned char * szFileName, int nLine )\r\n");
    return retVal;
}


/*
==================
Sys_DebugMemory_f
==================
*/
void Sys_DebugMemory_f( void ) {
    Sys_Printf("void Sys_DebugMemory_f( void )\r\n");
}


/*
==================
Sys_MemFrame
==================
*/
void Sys_MemFrame( void ) {
    Sys_Printf("void Sys_MemFrame( void )\r\n");
}


#endif

/*
==================
Sys_FlushCacheMemory

On windows, the vertex buffers are write combined, so they
don't need to be flushed from the cache
==================
*/
void Sys_FlushCacheMemory( void *base, int bytes ) {
    Sys_Printf("void Sys_FlushCacheMemory( void *base, int bytes )\r\n");
}


/*
=============
Sys_Error

Show the early console as an error dialog
=============
*/
void Sys_Error( const char *error, ... ) {
    Sys_Printf("void Sys_Error( const char *error, ... )\r\n");
}


/*
==============
Sys_Quit
==============
*/
void Sys_Quit( void ) {
    Sys_Printf("void Sys_Quit( void )\r\n");
}



/*
==============
Sys_Printf
==============
*/
#define MAXPRINTMSG 4096
void Sys_Printf( const char *fmt, ... ) {
    Sys_Printf("void Sys_Printf( const char *fmt, ... )\r\n");
}


/*
==============
Sys_DebugPrintf
==============
*/
#define MAXPRINTMSG 4096
void Sys_DebugPrintf( const char *fmt, ... ) {
    Sys_Printf("void Sys_DebugPrintf( const char *fmt, ... )\r\n");
}


/*
==============
Sys_DebugVPrintf
==============
*/
void Sys_DebugVPrintf( const char *fmt, va_list arg ) {
    Sys_Printf("void Sys_DebugVPrintf( const char *fmt, va_list arg )\r\n");
}


/*
==============
Sys_Sleep
==============
*/
void Sys_Sleep( int msec ) {
    Sys_Printf("void Sys_Sleep( int msec )\r\n");
}


/*
==============
Sys_ShowWindow
==============
*/
void Sys_ShowWindow( bool show ) {
    Sys_Printf("void Sys_ShowWindow( bool show )\r\n");
}


/*
==============
Sys_IsWindowVisible
==============
*/
bool Sys_IsWindowVisible( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Sys_IsWindowVisible( void )\r\n");
    return retVal;
}


/*
==============
Sys_Mkdir
==============
*/
void Sys_Mkdir( const char *path ) {
    Sys_Printf("void Sys_Mkdir( const char *path )\r\n");
}


/*
=================
Sys_FileTimeStamp
=================
*/
ID_TIME_T Sys_FileTimeStamp( FILE *fp ) {
    ID_TIME_T retVal;
    memset(&retVal, 0, sizeof(ID_TIME_T));
    Sys_Printf("ID_TIME_T Sys_FileTimeStamp( FILE *fp )\r\n");
    return retVal;
}


/*
==============
Sys_Cwd
==============
*/
const char *Sys_Cwd( void ) {
    Sys_Printf("char *Sys_Cwd( void )\r\n");
    return NULL;
}


/*
==============
Sys_DefaultCDPath
==============
*/
const char *Sys_DefaultCDPath( void ) {
    Sys_Printf("char *Sys_DefaultCDPath( void )\r\n");
    return NULL;
}


/*
==============
Sys_DefaultBasePath
==============
*/
const char *Sys_DefaultBasePath( void ) {
    Sys_Printf("char *Sys_DefaultBasePath( void )\r\n");
    return NULL;
}


/*
==============
Sys_DefaultSavePath
==============
*/
const char *Sys_DefaultSavePath( void ) {
    Sys_Printf("char *Sys_DefaultSavePath( void )\r\n");
    return NULL;
}


/*
==============
Sys_EXEPath
==============
*/
const char *Sys_EXEPath( void ) {
    Sys_Printf("char *Sys_EXEPath( void )\r\n");
    return NULL;
}


/*
==============
Sys_ListFiles
==============
*/
int Sys_ListFiles( const char *directory, const char *extension, idStrList &list ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_ListFiles( const char *directory, const char *extension, idStrList &list )\r\n");
    return retVal;
}



/*
================
Sys_GetClipboardData
================
*/
char *Sys_GetClipboardData( void ) {
    Sys_Printf("char *Sys_GetClipboardData( void )\r\n");
    return NULL;
}


/*
================
Sys_SetClipboardData
================
*/
void Sys_SetClipboardData( const char *string ) {
    Sys_Printf("void Sys_SetClipboardData( const char *string )\r\n");
}


/*
========================================================================

DLL Loading

========================================================================
*/

/*
=====================
Sys_DLL_Load
=====================
*/
int Sys_DLL_Load( const char *dllName ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_DLL_Load( const char *dllName )\r\n");
    return retVal;
}


/*
=====================
Sys_DLL_GetProcAddress
=====================
*/
void *Sys_DLL_GetProcAddress( int dllHandle, const char *procName ) {
    Sys_Printf("void *Sys_DLL_GetProcAddress( int dllHandle, const char *procName )\r\n");
    return NULL;
}


/*
=====================
Sys_DLL_Unload
=====================
*/
void Sys_DLL_Unload( int dllHandle ) {
    Sys_Printf("void Sys_DLL_Unload( int dllHandle )\r\n");
}


/*
========================================================================

EVENT LOOP

========================================================================
*/

#define	MAX_QUED_EVENTS		256
#define	MASK_QUED_EVENTS	( MAX_QUED_EVENTS - 1 )

sysEvent_t	eventQue[MAX_QUED_EVENTS];
int			eventHead = 0;
int			eventTail = 0;

/*
================
Sys_QueEvent

Ptr should either be null, or point to a block of data that can
be freed by the game later.
================
*/
void Sys_QueEvent( int time, sysEventType_t type, int value, int value2, int ptrLength, void *ptr ) {
    Sys_Printf("void Sys_QueEvent( int time, sysEventType_t type, int value, int value2, int ptrLength, void *ptr )\r\n");
}


/*
=============
Sys_PumpEvents

This allows windows to be moved during renderbump
=============
*/
void Sys_PumpEvents( void ) {
    Sys_Printf("void Sys_PumpEvents( void )\r\n");
}


/*
================
Sys_GenerateEvents
================
*/
void Sys_GenerateEvents( void ) {
    Sys_Printf("void Sys_GenerateEvents( void )\r\n");
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
Sys_GetEvent
================
*/
sysEvent_t Sys_GetEvent( void ) {
    sysEvent_t retVal;
    memset(&retVal, 0, sizeof(sysEvent_t));
    Sys_Printf("sysEvent_t Sys_GetEvent( void )\r\n");
    return retVal;
}


//================================================================

/*
=================
Sys_In_Restart_f

Restart the input subsystem
=================
*/
void Sys_In_Restart_f( const idCmdArgs &args ) {
    Sys_Printf("void Sys_In_Restart_f( const idCmdArgs &args )\r\n");
}



/*
==================
Sys_AsyncThread
==================
*/
static void Sys_AsyncThread( void *parm ) {
    Sys_Printf("void Sys_AsyncThread( void *parm )\r\n");
}


/*
==============
Sys_StartAsyncThread

Start the thread that will call idCommon::Async()
==============
*/
void Sys_StartAsyncThread( void ) {
    Sys_Printf("void Sys_StartAsyncThread( void )\r\n");
}


/*
================
Sys_AlreadyRunning

returns true if there is a copy of D3 running already
================
*/
bool Sys_AlreadyRunning( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Sys_AlreadyRunning( void )\r\n");
    return retVal;
}


/*
================
Sys_Init

The cvar system must already be setup
================
*/
#define OSR2_BUILD_NUMBER 1111
#define WIN98_BUILD_NUMBER 1998

void Sys_Init( void ) {
    Sys_Printf("void Sys_Init( void )\r\n");
}


/*
================
Sys_Shutdown
================
*/
void Sys_Shutdown( void ) {
    Sys_Printf("void Sys_Shutdown( void )\r\n");
}


/*
================
Sys_GetProcessorId
================
*/
cpuid_t Sys_GetProcessorId( void ) {
    cpuid_t retVal;
    memset(&retVal, 0, sizeof(cpuid_t));
    Sys_Printf("cpuid_t Sys_GetProcessorId( void )\r\n");
    return retVal;
}


/*
================
Sys_GetProcessorString
================
*/
const char *Sys_GetProcessorString( void ) {
    Sys_Printf("char *Sys_GetProcessorString( void )\r\n");
    return NULL;
}


//=======================================================================

//#define SET_THREAD_AFFINITY


/*
====================
Win_Frame
====================
*/
void Win_Frame( void ) {
    Sys_Printf("void Win_Frame( void )\r\n");
}


extern "C" { void _chkstk( int size ); };
void clrstk( void );

/*
====================
TestChkStk
====================
*/
void TestChkStk( void ) {
    Sys_Printf("void TestChkStk( void )\r\n");
}


/*
====================
HackChkStk
====================
*/
void HackChkStk( void ) {
    Sys_Printf("void HackChkStk( void )\r\n");
}


/*
====================
GetExceptionCodeInfo
====================
*/
const char *GetExceptionCodeInfo( UINT code ) {
    Sys_Printf("char *GetExceptionCodeInfo( UINT code )\r\n");
    return NULL;
}


/*
====================
EmailCrashReport

  emailer originally from Raven/Quake 4
====================
*/
void EmailCrashReport( LPSTR messageText ) {
    Sys_Printf("void EmailCrashReport( LPSTR messageText )\r\n");
}


int Sys_FPU_PrintStateFlags( char *ptr, int ctrl, int stat, int tags, int inof, int inse, int opof, int opse );

/*
====================
_except_handler
====================
*/
EXCEPTION_DISPOSITION __cdecl _except_handler( struct _EXCEPTION_RECORD *ExceptionRecord, void * EstablisherFrame,
												struct _CONTEXT *ContextRecord, void * DispatcherContext ) {
    __cdecl retVal;
    memset(&retVal, 0, sizeof(__cdecl));
    Sys_Printf("__cdecl _except_handler( struct _EXCEPTION_RECORD *ExceptionRecord, void * EstablisherFrame,struct _CONTEXT *ContextRecord, void * DispatcherContext )\r\n");
    return retVal;
}


#define TEST_FPU_EXCEPTIONS	/*	FPU_EXCEPTION_INVALID_OPERATION |		*/	\
							/*	FPU_EXCEPTION_DENORMALIZED_OPERAND |	*/	\
							/*	FPU_EXCEPTION_DIVIDE_BY_ZERO |			*/	\
							/*	FPU_EXCEPTION_NUMERIC_OVERFLOW |		*/	\
							/*	FPU_EXCEPTION_NUMERIC_UNDERFLOW |		*/	\
							/*	FPU_EXCEPTION_INEXACT_RESULT |			*/	\
								0

/*
==================
WinMain
==================
*/
int WINAPI WinMain( HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow ) {
    WINAPI retVal;
    memset(&retVal, 0, sizeof(WINAPI));
    Sys_Printf("WINAPI WinMain( HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow )\r\n");
    return retVal;
}


/*
====================
clrstk

I tried to get the run time to call this at every function entry, but
====================
*/
static int	parmBytes;
__declspec( naked ) void clrstk( void ) {
    Sys_Printf("void clrstk( void )\r\n");
}


/*
==================
idSysLocal::OpenURL
==================
*/
void idSysLocal::OpenURL( const char *url, bool doexit ) {
    Sys_Printf("void idSysLocal::OpenURL( const char *url, bool doexit )\r\n");
}


/*
==================
idSysLocal::StartProcess
==================
*/
void idSysLocal::StartProcess( const char *exePath, bool doexit ) {
    Sys_Printf("void idSysLocal::StartProcess( const char *exePath, bool doexit )\r\n");
}


/*
==================
Sys_SetFatalError
==================
*/
void Sys_SetFatalError( const char *error ) {
    Sys_Printf("void Sys_SetFatalError( const char *error )\r\n");
}


/*
==================
Sys_DoPreferences
==================
*/
void Sys_DoPreferences( void ) {
    Sys_Printf("void Sys_DoPreferences( void )\r\n");
}

