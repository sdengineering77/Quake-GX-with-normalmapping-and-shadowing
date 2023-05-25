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
#include <sys/types.h>
#include <sys/stat.h>
#include <errno.h>
#include <stdio.h>
#include <dirent.h>
#include <unistd.h>
#include <sys/mman.h>
#include <sys/time.h>
#include <pwd.h>
#include <pthread.h>

#include "../../idlib/precompiled.h"
#include "posix_public.h"

#if defined(_DEBUG)
// #define ID_VERBOSE_PTHREADS 
#endif

/*
======================================================
locks
======================================================
*/

// we use an extra lock for the local stuff
const int MAX_LOCAL_CRITICAL_SECTIONS = MAX_CRITICAL_SECTIONS + 1;
static pthread_mutex_t global_lock[ MAX_LOCAL_CRITICAL_SECTIONS ];

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
======================================================
wait and trigger events
we use a single lock to manipulate the conditions, MAX_LOCAL_CRITICAL_SECTIONS-1

the semantics match the win32 version. signals raised while no one is waiting stay raised until a wait happens (which then does a simple pass-through)

NOTE: we use the same mutex for all the events. I don't think this would become much of a problem
cond_wait unlocks atomically with setting the wait condition, and locks it back before exiting the function
the potential for time wasting lock waits is very low
======================================================
*/

pthread_cond_t	event_cond[ MAX_TRIGGER_EVENTS ];
bool			signaled[ MAX_TRIGGER_EVENTS ];
bool			waiting[ MAX_TRIGGER_EVENTS ];

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


/*
======================================================
thread create and destroy
======================================================
*/

// not a hard limit, just what we keep track of for debugging
#define MAX_THREADS 10
xthreadInfo *g_threads[MAX_THREADS];

int g_thread_count = 0;

typedef void *(*pthread_function_t) (void *);

/*
==================
Sys_CreateThread
==================
*/
void Sys_CreateThread( xthread_t function, void *parms, xthreadPriority priority, xthreadInfo& info, const char *name, xthreadInfo **threads, int *thread_count ) {
    Sys_Printf("void Sys_CreateThread( xthread_t function, void *parms, xthreadPriority priority, xthreadInfo& info, const char *name, xthreadInfo **threads, int *thread_count )\r\n");
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
Sys_GetThreadName
find the name of the calling thread
==================
*/
const char* Sys_GetThreadName( int *index ) {
    Sys_Printf("char* Sys_GetThreadName( int *index )\r\n");
    return NULL;
}


/*
=========================================================
Async Thread
=========================================================
*/

xthreadInfo asyncThread;

/*
=================
Posix_StartAsyncThread
=================
*/
void Posix_StartAsyncThread() {
    Sys_Printf("void Posix_StartAsyncThread()\r\n");
}


/*
==================
Posix_InitPThreads
==================
*/
void Posix_InitPThreads( ) {
    Sys_Printf("void Posix_InitPThreads( )\r\n");
}


