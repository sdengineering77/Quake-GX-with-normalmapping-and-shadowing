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
#pragma hdrstop

#include <gccore.h>
#include <ogc/lwp.h>
#include <ogc/lwp_threadq.h>
#include <ogc/lwp_mutex.h>
#include <ogc/lwp_watchdog.h>
#include <wiiuse/wpad.h>
#include <ogcsys.h>

#include <fat.h>
#include <unistd.h>
#include <network.h>

#include <malloc.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dirent.h>
#include <fnmatch.h>
#include <errno.h>
#include <sys/time.h>

// DRS TODO: needed? #include <sys/mman.h>
#include <pwd.h>

// DRS TODO: remove when gl init is gone
#include <GL/glut.h>


#define	MAX_OSPATH			256

static	int		frameNum;

// constants
static const double 	TB_TIMERCLOCK_SEC_INV  = ((double)1)/((double)TB_TIMER_CLOCK*1000);
static const int 		stacksize = 1 * 1024 * 1024;
static const 			size_t	heap_size	= 24 * 1024 * 1024;
static const int 		MAX_CHARS_SYSPRINTF = 4096;

// locals
static int			arena1Size;
static int			arena2Size;
static lwp_t 		thread;
static void 		*stack;

static int 			local_argc;
static char 		**local_argv;

int Sys_Milliseconds( void ) {
	long long time = gettime();
	double dtime = ((double)time) * TB_TIMERCLOCK_SEC_INV;
	return dtime;
}

double Sys_GetClockTicks( void ) {
	long long time = gettime();
	double dtime = (double)time;
	return dtime;
}

double Sys_ClockTicksPerSecond( void ) {
	return TB_TIMER_CLOCK*1000;
}

void Sys_InitScanTable( void ) {
	Sys_Printf( "TODO: Sys_InitScanTable\n" );
}


void	Sys_Sleep( int msec ) {
}

// DRS TODO: posix_threads.cpp
#define MAX_THREADS 10
xthreadInfo *g_threads[MAX_THREADS];

int g_thread_count = 0;

void Sys_CreateThread( xthread_t function, void *parms, xthreadPriority priority, xthreadInfo& info, const char *name, xthreadInfo **threads, int *thread_count ) {
	Sys_Printf( "TODO: Sys_CreateThread\n" );
// DRS TODO: pthread should be supported by OGC, this means mutex may be implemented that way too and that it can replace lwp threads
}

void Sys_DestroyThread( xthreadInfo& info ) {
}

void	Sys_FlushCacheMemory( void *base, int bytes ) {
}

void Sys_SetFatalError( const char *error ) {
	Sys_Printf("FatalError: %s\r\n", error);
}

void Sys_Quit( void ) {
	exit( 0 );
}

char *Sys_GetClipboardData( void ) {
	return NULL;
}

void Sys_SetClipboardData( const char *string ) {
}

void Sys_GenerateEvents( void ) {
}

void Sys_Init( void ) {
}

/*
================
Sys_AlreadyRunning
return true if there is a copy of D3 running already
================
*/
bool Sys_AlreadyRunning( void ) {
	return false;
}

/*
================
Sys_ShowConsole
================
*/
void Sys_ShowConsole( int visLevel, bool quitOnClose ) { }


//==========================================================

idPort	clientPort, serverPort;

void Sys_InitNetworking( void ) {
}

idPort::idPort() {
	netSocket = 0;
	memset( &bound_to, 0, sizeof( bound_to ) );
}

idPort::~idPort() {
	Close();
}

void idPort::Close() {
	if ( netSocket ) {
		close(netSocket);
		netSocket = 0;
		memset( &bound_to, 0, sizeof( bound_to ) );
	}
}

bool idPort::GetPacket( netadr_t &net_from, void *data, int &size, int maxSize ) {
	return false;
}

void idPort::SendPacket( const netadr_t to, const void *data, int size ) {
}

//==========================================================

double	idTimer::base;

void idTimer::InitBaseClockTicks( void ) const {
}

//==========================================================

void _glTexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid *pixels) {
}


void Sys_InitInput( void ) {
}

void Sys_ShutdownInput( void ) {
}

void Sys_Shutdown( void ) {
	Sys_Quit();
}

sysEvent_t	Sys_GetEvent( void ) {
	sysEvent_t	ev;

	memset( &ev, 0, sizeof( ev ) );
	ev.evType = SE_NONE;
	ev.evTime = Sys_Milliseconds();
	return ev;
}

/*
==================
Sys_TriggerEvent
==================
*/
void Sys_TriggerEvent( int index ) {
	Sys_Printf( "TODO: Sys_TriggerEvent( int index )\n" );

/*	assert( index >= 0 && index < MAX_TRIGGER_EVENTS );
	Sys_EnterCriticalSection( MAX_LOCAL_CRITICAL_SECTIONS - 1 );
	if ( waiting[ index ] ) {
		pthread_cond_signal( &event_cond[ index ] );
	} else {
		// emulate windows behaviour: if no thread is waiting, leave the signal on so next wait keeps going
		signaled[ index ] = true;
	}
	Sys_LeaveCriticalSection( MAX_LOCAL_CRITICAL_SECTIONS - 1 );
*/
}

/*
==================
Sys_WaitForEvent
==================
*/
void Sys_WaitForEvent( int index ) {
/*	assert( index >= 0 && index < MAX_TRIGGER_EVENTS );
	Sys_EnterCriticalSection( MAX_LOCAL_CRITICAL_SECTIONS - 1 );
	assert( !waiting[ index ] );	// WaitForEvent from multiple threads? that wouldn't be good
	if ( signaled[ index ] ) {
		// emulate windows behaviour: signal has been raised already. clear and keep going
		signaled[ index ] = false;
	} else {
		waiting[ index ] = true;
		pthread_cond_wait( &event_cond[ index ], &global_lock[ MAX_LOCAL_CRITICAL_SECTIONS - 1 ] );
		waiting[ index ] = false;
	}
	Sys_LeaveCriticalSection( MAX_LOCAL_CRITICAL_SECTIONS - 1 );
*/
}


// DRS TODO clean up this stuff
static ir_t motePos;

int Sys_PollMouseInputEvents( void ) { return 0; }

void Sys_EndMouseInputEvents( void ) { }

int Sys_ReturnMouseInputEvent( const int n, int &action, int &value ) { return 0; }

int Sys_PollKeyboardInputEvents( void ) { return 0; }

void Sys_EndKeyboardInputEvents( void ) { }

int Sys_ReturnKeyboardInputEvent( const int n, int &action, bool &state ) { return 0; }

void idSysLocal::OpenURL( const char *url, bool quit ) {}

void idSysLocal::StartProcess( const char *exeName, bool quit ) {}

void	Sys_Mkdir( const char *path ) {
}

/*
==============
Sys_EXEPath
==============
*/
static const char *GAMEROOT = "/apps/DoomGX";
static const char *SAVEPATH = "/apps/DoomGX/savedir";

const char *Sys_EXEPath( void ) {
	return GAMEROOT;
}

const char *Sys_DefaultCDPath(void) {
	return "";
}

const char *Sys_DefaultBasePath(void) {
	return GAMEROOT;
}


const char *Sys_DefaultSavePath(void) {
	return SAVEPATH;
}

int Sys_ListFiles( const char *directory, const char *extension, idStrList &list )
{
	struct dirent *d;
	DIR		*fdir;
	bool 	dironly = false;
	char	search[MAX_OSPATH];
	struct stat st;

	list.Clear();

	if ( !extension)
		extension = "";

	if ( extension[0] == '/' && extension[1] == 0 ) {
		extension = "";
		dironly = true;
	}

	// search
	if ((fdir = opendir(directory)) == NULL) {
		return 0;
	}

	while ((d = readdir(fdir)) != NULL) {
		idStr::snPrintf( search, sizeof(search), "%s/%s", directory, d->d_name );
		if (stat(search, &st) == -1)
			continue;
		if (!dironly) {
		    idStr look(search);
		    idStr ext;
		    look.ExtractFileExtension( ext );
		    if ( extension && extension[0] && ext.Icmp( &extension[1] ) != 0 ) {
			continue;
		    }
		}
		if ((dironly && !(st.st_mode & S_IFDIR)) ||
			(!dironly && (st.st_mode & S_IFDIR)))
			continue;
		// DRS in ogc, dirent is reused. So make copy and hope caller takes
		// care to call idList::DeleteContents()
		char *name = (char *) new char[(sizeof(d->d_name))];
		strncpy(name, d->d_name, sizeof(d->d_name));
		list.Append( name );
	}

	closedir(fdir);

	return list.Num();
}

long Sys_FileTimeStamp(FILE * fp) {
	struct stat st;
	fstat(fileno(fp), &st);
	return st.st_mtime;
}

void	Sys_GrabMouseCursor( bool grabIt ) {
}

bool	Sys_StringToNetAdr( const char *s, netadr_t *a ) {
	return false;
}

const char *Sys_NetAdrToString( const netadr_t a ) {
	static char s[64];

	if ( a.type == NA_LOOPBACK ) {
		idStr::snPrintf( s, sizeof(s), "localhost" );
	} else if ( a.type == NA_IP ) {
		idStr::snPrintf( s, sizeof(s), "%i.%i.%i.%i:%i",
			a.ip[0], a.ip[1], a.ip[2], a.ip[3], BigShort(a.port) );
	}
	return s;
}

void Sys_DoPreferences( void ) {
}


/*
================
Sys_GetVideoRam
returns in megabytes
================
*/
int Sys_GetVideoRam( void ) {
	return 1;
}

/*
================
Sys_GetSystemRam
returns in megabytes
================
*/
int Sys_GetSystemRam( void ) {

	return arena2Size / (1024 * 1024);
}

/*
===============
Sys_GetProcessorId
===============
*/
cpuid_t Sys_GetProcessorId( void ) {
	return CPUID_GENERIC;
}

/*
======================================================
locks
======================================================
*/

// we use an extra lock for the local stuff
const int MAX_LOCAL_CRITICAL_SECTIONS = MAX_CRITICAL_SECTIONS + 1;
static lwp_mutex global_lock[ MAX_LOCAL_CRITICAL_SECTIONS ];

/*void __lwp_mutex_initialize(lwp_mutex *mutex,lwp_mutex_attr *attrs,u32 init_lock);
u32 __lwp_mutex_surrender(lwp_mutex *mutex);
void __lwp_mutex_seize_irq_blocking(lwp_mutex *mutex,u64 timeout);
void __lwp_mutex_flush(lwp_mutex *mutex,u32 status);

static __inline__ u32 __lwp_mutex_seize_irq_trylock(lwp_mutex *mutex,u32 *isr_level);

#define __lwp_mutex_seize(_mutex_t,_id,_wait,_timeout,_level)
*/

/*
==================
Sys_EnterCriticalSection
==================
*/
void Sys_EnterCriticalSection( int index ) {
	Sys_Printf("Sys_EnterCriticalSection()");
/* DRS TODO	assert( index >= 0 && index < MAX_LOCAL_CRITICAL_SECTIONS );
#ifdef ID_VERBOSE_PTHREADS
	if ( pthread_mutex_trylock( &global_lock[index] ) == EBUSY ) {
		Sys_Printf( "busy lock %d in thread '%s'\n", index, Sys_GetThreadName() );
		if ( pthread_mutex_lock( &global_lock[index] ) == EDEADLK ) {
			Sys_Printf( "FATAL: DEADLOCK %d, in thread '%s'\n", index, Sys_GetThreadName() );
		}
	}
#else
	pthread_mutex_lock( &global_lock[index] );
#endif
*/
}

/*
==================
Sys_LeaveCriticalSection
==================
*/
void Sys_LeaveCriticalSection( int index ) {
	Sys_Printf("Sys_LeaveCriticalSection()");
/*	assert( index >= 0 && index < MAX_LOCAL_CRITICAL_SECTIONS );
#ifdef ID_VERBOSE_PTHREADS
	if ( pthread_mutex_unlock( &global_lock[index] ) == EPERM ) {
		Sys_Printf( "FATAL: NOT LOCKED %d, in thread '%s'\n", index, Sys_GetThreadName() );
	}
#else
	pthread_mutex_unlock( &global_lock[index] );
#endif
*/
}

void Sys_Error( const char *error, ... ) {
	va_list         argptr;
	char msg[MAX_CHARS_SYSPRINTF];

	va_start (argptr,error);
	vsnprintf (msg, MAX_CHARS_SYSPRINTF-1, error, argptr); // DRS doesn't work with direct vprintf in Dolphin emu
	va_end (argptr);
	Sys_Printf(msg);
	Sys_Quit();
}


/*
 * =======================================================
 * Sys_Printf
 * =======================================================
 */
void Sys_DebugPrintf(char const *fmt, ...) {
	va_list         argptr;
	char msg[MAX_CHARS_SYSPRINTF];

	va_start (argptr,fmt);
	vsnprintf (msg, MAX_CHARS_SYSPRINTF-1, fmt, argptr); // DRS doesn't work with direct vprintf in Dolphin emu
	va_end (argptr);

	Sys_Printf(msg);


}

void Sys_Printf (char const *fmt, ...) {

	va_list         argptr;
	char msg[MAX_CHARS_SYSPRINTF];

	va_start (argptr,fmt);
	vsnprintf (msg, MAX_CHARS_SYSPRINTF-1, fmt, argptr); // DRS doesn't work with direct vprintf in Dolphin emu
#ifdef WIFILOGGING
	Sys_WriteSocket(msg);
#else
	printf(msg);
#endif

	va_end (argptr);
}


static void runCommonFrame(void) {
	common->Frame();
}

static void runCommonAsync(void) {
	common->Async();

}

static void *SYS_LaunchDoom(void *) {
	int 	argc = local_argc;
	const char 	**argv = (const char **) local_argv;

VIDEO_WaitVSync();
	arena1Size = ((unsigned int)SYS_GetArena1Hi() - (unsigned int)SYS_GetArena1Lo());
	arena2Size = ((unsigned int)SYS_GetArena2Hi() - (unsigned int)SYS_GetArena2Lo());
	Sys_Printf("Arena 1 free: %dkB Arena 2 free: %dkB\r\n", arena1Size/1024, arena2Size/1024);

VIDEO_WaitVSync();
	if ( argc > 1 ) {
		common->Init( argc-1, &argv[1], NULL );
	} else {
		common->Init( 0, NULL, NULL );
	}

	while( 1 ) {
		// DRS TODO: do in threads, see linux/posix
		runCommonAsync();

		runCommonFrame();
		frameNum++;
	}

	// DRS TODO: when threads run, have launcher join them
	// need to figure out how to quit everything
	return NULL;
}



/*
 * =================================================
 * Main
 * =================================================
 */
int main(int argc, char* argv[]) {

	// DRS TODO: move to better place
	glutInitDisplayMode(GLUT_RGB | GLUT_DOUBLE | GLUT_DEPTH); // We may need the console, and also need a VSync
	stack = malloc(stacksize);

#ifdef WIFILOGGING
	Sys_AcceptLogTerminal();
#endif

	local_argc = argc;
	local_argv = argv;

	// not sure this can be done in LWP...
	VIDEO_WaitVSync();
	PAD_Init();
	WPAD_Init();
	VIDEO_WaitVSync();

	// cannot be done in LWP?
	if (!fatInitDefault()) {
		Sys_Error("fatInitDefault failure\n");
	}

	// Start the main thread.
	LWP_CreateThread(&thread, &SYS_LaunchDoom, 0, stack, stacksize, 64);
	//quakeMain(NULL);
	// Wait for it to finish.
	void* result;
	LWP_JoinThread(thread, &result);

	return 0;
}

