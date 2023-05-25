/*
 * sys_thread.cpp
 *
 *  Created on: 19 aug. 2012
 *      Author: Danny
 */
#include "../../idlib/precompiled.h"
#include "../sys_local.h"


#include <ogc/lwp.h>
#include <ogc/lwp_threadq.h>
#include <ogc/mutex.h>
#include <ogc/lwp_watchdog.h>

void	Sys_Sleep( int msec ) {
}

// DRS TODO: posix_threads.cpp
#define MAX_THREADS 10
xthreadInfo *g_threads[MAX_THREADS];

int g_thread_count = 0;

void Sys_CreateThread( xthread_t function, void *parms, xthreadPriority priority, xthreadInfo& info, const char *name, xthreadInfo **threads, int *thread_count ) {
	Sys_Printf( ">>> Sys_CreateThread\r\n" );

	// DRS TODO: pthread should be supported by OGC, linux version could be used
	int ret = LWP_CreateThread((lwp_t *) &info.threadHandle, (void * (*)(void *)) function, parms, NULL, 0, 1);
	if (ret != 0) {
		common->Error( "ERROR: pthread_create %s failed\n", name );
	}
	info.name = name;
	if ( *thread_count < MAX_THREADS ) {
		threads[ ( *thread_count )++ ] = &info;
	} else {
		common->DPrintf( "WARNING: MAX_THREADS reached\n" );
	}
}

void Sys_DestroyThread( xthreadInfo& info ) {
	// DRS TODO: can't?
}

/*
======================================================
locks
======================================================
*/

// we use an extra lock for the local stuff
const int MAX_LOCAL_CRITICAL_SECTIONS = MAX_CRITICAL_SECTIONS + 1;
static mutex_t global_lock[ MAX_LOCAL_CRITICAL_SECTIONS ];

/*
==================
Sys_EnterCriticalSection
==================
*/
void Sys_EnterCriticalSection( int index ) {
	if (index != 0) { // DRS TODO: remove
		Sys_Printf(">>> Sys_EnterCriticalSection(%d)\r\n", index);
	}
//	assert( index >= 0 && index < MAX_LOCAL_CRITICAL_SECTIONS );
	LWP_MutexLock(global_lock[index]);
}

/*
==================
Sys_LeaveCriticalSection
==================
*/
void Sys_LeaveCriticalSection( int index ) {
	if (index != 0) { // DRS TODO: remove
		Sys_Printf(">>> Sys_LeaveCriticalSection(%d)\r\n", index);
	}
//	assert( index >= 0 && index < MAX_LOCAL_CRITICAL_SECTIONS );
	if (LWP_MutexUnlock(global_lock[index]) != 0) {
		Sys_Error("Mutex %d didn't unlock\r\n", index);
	}
}

lwpq_t		event_cond[ MAX_TRIGGER_EVENTS ];
bool		signaled[ MAX_TRIGGER_EVENTS ];
bool		waiting[ MAX_TRIGGER_EVENTS ];


/*
==================
Sys_TriggerEvent
==================
*/
void Sys_TriggerEvent( int index ) {
	Sys_Printf( ">>> Sys_TriggerEvent( int index )\r\n" );

//	assert( index >= 0 && index < MAX_TRIGGER_EVENTS );
	Sys_EnterCriticalSection( MAX_LOCAL_CRITICAL_SECTIONS - 1 );
	if ( waiting[ index ] ) {
		LWP_ThreadSignal( event_cond[ index ] );
	} else {
		// emulate windows behaviour: if no thread is waiting, leave the signal on so next wait keeps going
		signaled[ index ] = true;
	}
	Sys_LeaveCriticalSection( MAX_LOCAL_CRITICAL_SECTIONS - 1 );

}

/*
==================
Sys_WaitForEvent
==================
*/
void Sys_WaitForEvent( int index ) {
//	assert( index >= 0 && index < MAX_TRIGGER_EVENTS );
	Sys_EnterCriticalSection( MAX_LOCAL_CRITICAL_SECTIONS - 1 );
//	assert( !waiting[ index ] );	// WaitForEvent from multiple threads? that wouldn't be good
	if ( signaled[ index ] ) {
		// emulate windows behaviour: signal has been raised already. clear and keep going
		signaled[ index ] = false;
	} else {
		waiting[ index ] = true;
		LWP_ThreadSleep(event_cond[ index ]);
		waiting[ index ] = false;
	}
	Sys_LeaveCriticalSection( MAX_LOCAL_CRITICAL_SECTIONS - 1 );
}

void Sys_InitThreading(void) {
	for (int i=0; i<MAX_LOCAL_CRITICAL_SECTIONS; i++) {
		if (LWP_MutexInit(&global_lock[i], true) != 0) { // // DRS TODO can recursive be false?
			Sys_Printf( "FATAL: Could not initialize lwp_mutex array\r\n");
		}

	}

	for (int i=0; i<MAX_TRIGGER_EVENTS; i++) {
		if (LWP_InitQueue(&event_cond[i]) != 0) {
			Sys_Printf( "FATAL: Could not initialize lwp_queue array\r\n");
		}
	}
}


