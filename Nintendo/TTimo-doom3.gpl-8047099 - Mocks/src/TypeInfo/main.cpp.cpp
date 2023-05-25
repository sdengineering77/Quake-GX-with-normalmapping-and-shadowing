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

#include "../idlib/precompiled.h"
#include "../sys/sys_local.h"
#pragma hdrstop

#include "TypeInfoGen.h"

idSession *			session = NULL;
idDeclManager *		declManager = NULL;
idEventLoop *		eventLoop = NULL;

int idEventLoop::JournalLevel( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idEventLoop::JournalLevel( void )\r\n");
    return retVal;
}


/*
==============================================================

	idCommon

==============================================================
*/

#define STDIO_PRINT( pre, post )	\
	va_list argptr;					\
	va_start( argptr, fmt );		\
	printf( pre );					\
	vprintf( fmt, argptr );			\
	printf( post );					\
	va_end( argptr )


class idCommonLocal : public idCommon {
public:
							idCommonLocal( void ) {}

	virtual void			Init( int argc, const char **argv, const char *cmdline ) {
    Sys_Printf("voidInit( int argc, const char **argv, const char *cmdline )\r\n");
}

	virtual void			Shutdown( void ) {
    Sys_Printf("voidShutdown( void )\r\n");
}

	virtual void			Quit( void ) {
    Sys_Printf("voidQuit( void )\r\n");
}

	virtual bool			IsInitialized( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolIsInitialized( void )\r\n");
    return retVal;
}

	virtual void			Frame( void ) {
    Sys_Printf("voidFrame( void )\r\n");
}

	virtual void			GUIFrame( bool execCmd, bool network  ) {
    Sys_Printf("voidGUIFrame( bool execCmd, bool network  )\r\n");
}

	virtual void			Async( void ) {
    Sys_Printf("voidAsync( void )\r\n");
}

	virtual void			StartupVariable( const char *match, bool once ) {
    Sys_Printf("voidStartupVariable( const char *match, bool once )\r\n");
}

	virtual void			InitTool( const toolFlag_t tool, const idDict *dict ) {
    Sys_Printf("voidInitTool( const toolFlag_t tool, const idDict *dict )\r\n");
}

	virtual void			ActivateTool( bool active ) {
    Sys_Printf("voidActivateTool( bool active )\r\n");
}

	virtual void			WriteConfigToFile( const char *filename ) {
    Sys_Printf("voidWriteConfigToFile( const char *filename )\r\n");
}

	virtual void			WriteFlaggedCVarsToFile( const char *filename, int flags, const char *setCmd ) {
    Sys_Printf("voidWriteFlaggedCVarsToFile( const char *filename, int flags, const char *setCmd )\r\n");
}

	virtual void			BeginRedirect( char *buffer, int buffersize, void (*flush)( const char * ) ) {}
	virtual void			EndRedirect( void ) {
    Sys_Printf("voidEndRedirect( void )\r\n");
}

	virtual void			SetRefreshOnPrint( bool set ) {
    Sys_Printf("voidSetRefreshOnPrint( bool set )\r\n");
}

	virtual void			Printf( const char *fmt, ... ) {
    Sys_Printf("voidPrintf( const char *fmt, ... )\r\n");
}

	virtual void			VPrintf( const char *fmt, va_list arg ) {
    Sys_Printf("voidVPrintf( const char *fmt, va_list arg )\r\n");
}

	virtual void			DPrintf( const char *fmt, ... ) {
    Sys_Printf("voidDPrintf( const char *fmt, ... )\r\n");
}

	virtual void			Warning( const char *fmt, ... ) {
    Sys_Printf("voidWarning( const char *fmt, ... )\r\n");
}

	virtual void			DWarning( const char *fmt, ...) {
    Sys_Printf("voidDWarning( const char *fmt, ...)\r\n");
}

	virtual void			PrintWarnings( void ) {
    Sys_Printf("voidPrintWarnings( void )\r\n");
}

	virtual void			ClearWarnings( const char *reason ) {
    Sys_Printf("voidClearWarnings( const char *reason )\r\n");
}

	virtual void			Error( const char *fmt, ... ) {
    Sys_Printf("voidError( const char *fmt, ... )\r\n");
}

	virtual void			FatalError( const char *fmt, ... ) {
    Sys_Printf("voidFatalError( const char *fmt, ... )\r\n");
}

	virtual const idLangDict *GetLanguageDict() {
    Sys_Printf("idLangDict *GetLanguageDict()\r\n");
    return NULL;
}

	virtual const char *	KeysFromBinding( const char *bind ) {
    Sys_Printf("char *KeysFromBinding( const char *bind )\r\n");
    return NULL;
}

	virtual const char *	BindingFromKey( const char *key ) {
    Sys_Printf("char *BindingFromKey( const char *key )\r\n");
    return NULL;
}

	virtual int				ButtonState( int key ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intButtonState( int key )\r\n");
    return retVal;
}

	virtual int				KeyState( int key ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intKeyState( int key )\r\n");
    return retVal;
}

};

idCVar com_developer( "developer", "0", CVAR_BOOL|CVAR_SYSTEM, "developer mode" );

idCommonLocal		commonLocal;
idCommon *			common = &commonLocal;

/*
==============================================================

	idSys

==============================================================
*/

void			Sys_Mkdir( const char *path ) {
    Sys_Printf("voidSys_Mkdir( const char *path )\r\n");
}

ID_TIME_T			Sys_FileTimeStamp( FILE *fp ) {
    ID_TIME_T retVal;
    memset(&retVal, 0, sizeof(ID_TIME_T));
    Sys_Printf("ID_TIME_TSys_FileTimeStamp( FILE *fp )\r\n");
    return retVal;
}


#ifdef _WIN32

#include <io.h>
#include <direct.h>

const char *Sys_Cwd( void ) {
    Sys_Printf("char *Sys_Cwd( void )\r\n");
    return NULL;
}


const char *Sys_DefaultCDPath( void ) {
    Sys_Printf("char *Sys_DefaultCDPath( void )\r\n");
    return NULL;
}


const char *Sys_DefaultBasePath( void ) {
    Sys_Printf("char *Sys_DefaultBasePath( void )\r\n");
    return NULL;
}


const char *Sys_DefaultSavePath( void ) {
    Sys_Printf("char *Sys_DefaultSavePath( void )\r\n");
    return NULL;
}


const char *Sys_EXEPath( void ) {
    Sys_Printf("char *Sys_EXEPath( void )\r\n");
    return NULL;
}


int Sys_ListFiles( const char *directory, const char *extension, idStrList &list ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_ListFiles( const char *directory, const char *extension, idStrList &list )\r\n");
    return retVal;
}


#else

const char *	Sys_DefaultCDPath( void ) {
    Sys_Printf("char *Sys_DefaultCDPath( void )\r\n");
    return NULL;
}

const char *	Sys_DefaultBasePath( void ) {
    Sys_Printf("char *Sys_DefaultBasePath( void )\r\n");
    return NULL;
}

const char *	Sys_DefaultSavePath( void ) {
    Sys_Printf("char *Sys_DefaultSavePath( void )\r\n");
    return NULL;
}

int				Sys_ListFiles( const char *directory, const char *extension, idStrList &list ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intSys_ListFiles( const char *directory, const char *extension, idStrList &list )\r\n");
    return retVal;
}


#endif

xthreadInfo *	g_threads[MAX_THREADS];
int				g_thread_count;

void			Sys_CreateThread( xthread_t function, void *parms, xthreadPriority priority, xthreadInfo &info, const char *name, xthreadInfo *threads[MAX_THREADS], int *thread_count ) {
    Sys_Printf("voidSys_CreateThread( xthread_t function, void *parms, xthreadPriority priority, xthreadInfo &info, const char *name, xthreadInfo *threads[MAX_THREADS], int *thread_count )\r\n");
}

void			Sys_DestroyThread( xthreadInfo& info ) {
    Sys_Printf("voidSys_DestroyThread( xthreadInfo& info )\r\n");
}


void			Sys_EnterCriticalSection( int index ) {
    Sys_Printf("voidSys_EnterCriticalSection( int index )\r\n");
}

void			Sys_LeaveCriticalSection( int index ) {
    Sys_Printf("voidSys_LeaveCriticalSection( int index )\r\n");
}


void			Sys_WaitForEvent( int index ) {
    Sys_Printf("voidSys_WaitForEvent( int index )\r\n");
}

void			Sys_TriggerEvent( int index ) {
    Sys_Printf("voidSys_TriggerEvent( int index )\r\n");
}


/*
==============
idSysLocal stub
==============
*/
void			idSysLocal::DebugPrintf( const char *fmt, ... ) {
    Sys_Printf("voididSysLocal::DebugPrintf( const char *fmt, ... )\r\n");
}

void			idSysLocal::DebugVPrintf( const char *fmt, va_list arg ) {
    Sys_Printf("voididSysLocal::DebugVPrintf( const char *fmt, va_list arg )\r\n");
}


double			idSysLocal::GetClockTicks( void ) {
    double retVal;
    memset(&retVal, 0, sizeof(double));
    Sys_Printf("doubleidSysLocal::GetClockTicks( void )\r\n");
    return retVal;
}

double			idSysLocal::ClockTicksPerSecond( void ) {
    double retVal;
    memset(&retVal, 0, sizeof(double));
    Sys_Printf("doubleidSysLocal::ClockTicksPerSecond( void )\r\n");
    return retVal;
}

cpuid_t			idSysLocal::GetProcessorId( void ) {
    cpuid_t retVal;
    memset(&retVal, 0, sizeof(cpuid_t));
    Sys_Printf("cpuid_tidSysLocal::GetProcessorId( void )\r\n");
    return retVal;
}

const char *	idSysLocal::GetProcessorString( void ) {
    Sys_Printf("char *idSysLocal::GetProcessorString( void )\r\n");
    return NULL;
}

const char *	idSysLocal::FPU_GetState( void ) {
    Sys_Printf("char *idSysLocal::FPU_GetState( void )\r\n");
    return NULL;
}

bool			idSysLocal::FPU_StackIsEmpty( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolidSysLocal::FPU_StackIsEmpty( void )\r\n");
    return retVal;
}

void			idSysLocal::FPU_SetFTZ( bool enable ) {
    Sys_Printf("voididSysLocal::FPU_SetFTZ( bool enable )\r\n");
}

void			idSysLocal::FPU_SetDAZ( bool enable ) {
    Sys_Printf("voididSysLocal::FPU_SetDAZ( bool enable )\r\n");
}


bool			idSysLocal::LockMemory( void *ptr, int bytes ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolidSysLocal::LockMemory( void *ptr, int bytes )\r\n");
    return retVal;
}

bool			idSysLocal::UnlockMemory( void *ptr, int bytes ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolidSysLocal::UnlockMemory( void *ptr, int bytes )\r\n");
    return retVal;
}


void			idSysLocal::GetCallStack( address_t *callStack, const int callStackSize ) {
    Sys_Printf("voididSysLocal::GetCallStack( address_t *callStack, const int callStackSize )\r\n");
}

const char *	idSysLocal::GetCallStackStr( const address_t *callStack, const int callStackSize ) {
    Sys_Printf("char *idSysLocal::GetCallStackStr( const address_t *callStack, const int callStackSize )\r\n");
    return NULL;
}

const char *	idSysLocal::GetCallStackCurStr( int depth ) {
    Sys_Printf("char *idSysLocal::GetCallStackCurStr( int depth )\r\n");
    return NULL;
}

void			idSysLocal::ShutdownSymbols( void ) {
    Sys_Printf("voididSysLocal::ShutdownSymbols( void )\r\n");
}


int				idSysLocal::DLL_Load( const char *dllName ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidSysLocal::DLL_Load( const char *dllName )\r\n");
    return retVal;
}

void *			idSysLocal::DLL_GetProcAddress( int dllHandle, const char *procName ) {
    Sys_Printf("void *idSysLocal::DLL_GetProcAddress( int dllHandle, const char *procName )\r\n");
    return NULL;
}

void			idSysLocal::DLL_Unload( int dllHandle ) {
    Sys_Printf("voididSysLocal::DLL_Unload( int dllHandle )\r\n");
}

void			idSysLocal::DLL_GetFileName( const char *baseName, char *dllName, int maxLength ) {
    Sys_Printf("voididSysLocal::DLL_GetFileName( const char *baseName, char *dllName, int maxLength )\r\n");
}


sysEvent_t		idSysLocal::GenerateMouseButtonEvent( int button, bool down ) {
    sysEvent_t retVal;
    memset(&retVal, 0, sizeof(sysEvent_t));
    Sys_Printf("sysEvent_tidSysLocal::GenerateMouseButtonEvent( int button, bool down )\r\n");
    return retVal;
}

sysEvent_t		idSysLocal::GenerateMouseMoveEvent( int deltax, int deltay ) {
    sysEvent_t retVal;
    memset(&retVal, 0, sizeof(sysEvent_t));
    Sys_Printf("sysEvent_tidSysLocal::GenerateMouseMoveEvent( int deltax, int deltay )\r\n");
    return retVal;
}


void			idSysLocal::OpenURL( const char *url, bool quit ) {
    Sys_Printf("voididSysLocal::OpenURL( const char *url, bool quit )\r\n");
}

void			idSysLocal::StartProcess( const char *exeName, bool quit ) {
    Sys_Printf("voididSysLocal::StartProcess( const char *exeName, bool quit )\r\n");
}


void			idSysLocal::FPU_EnableExceptions( int exceptions ) {
    Sys_Printf("voididSysLocal::FPU_EnableExceptions( int exceptions )\r\n");
}


idSysLocal		sysLocal;
idSys *			sys = &sysLocal;


/*
==============================================================

	main

==============================================================
*/

int main( int argc, char** argv ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int main( int argc, char** argv )\r\n");
    return retVal;
}

