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
#include "../posix/posix_public.h"
#include "../sys_local.h"
#include "local.h"

#include <pthread.h>
#include <errno.h>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <fcntl.h>

#ifdef ID_MCHECK
#include <mcheck.h>
#endif

static idStr	basepath;
static idStr	savepath;

/*
===========
Sys_InitScanTable
===========
*/
void Sys_InitScanTable( void ) {
    Sys_Printf("void Sys_InitScanTable( void )\r\n");
}


/*
=================
Sys_AsyncThread
=================
*/
void Sys_AsyncThread( void ) {
    Sys_Printf("void Sys_AsyncThread( void )\r\n");
}


/*
 ==============
 Sys_DefaultSavePath
 ==============
 */
const char *Sys_DefaultSavePath(void) {
    Sys_Printf("char *Sys_DefaultSavePath(void)\r\n");
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
================
Sys_DefaultBasePath

Get the default base path
- binary image path
- current directory
- hardcoded
Try to be intelligent: if there is no BASE_GAMEDIR, try the next path
================
*/
const char *Sys_DefaultBasePath(void) {
    Sys_Printf("char *Sys_DefaultBasePath(void)\r\n");
    return NULL;
}


/*
===============
Sys_GetConsoleKey
===============
*/
unsigned char Sys_GetConsoleKey( bool shifted ) {
    char retVal;
    memset(&retVal, 0, sizeof(char));
    Sys_Printf("char Sys_GetConsoleKey( bool shifted )\r\n");
    return retVal;
}


/*
===============
Sys_Shutdown
===============
*/
void Sys_Shutdown( void ) {
    Sys_Printf("void Sys_Shutdown( void )\r\n");
}


/*
===============
Sys_GetProcessorId
===============
*/
cpuid_t Sys_GetProcessorId( void ) {
    cpuid_t retVal;
    memset(&retVal, 0, sizeof(cpuid_t));
    Sys_Printf("cpuid_t Sys_GetProcessorId( void )\r\n");
    return retVal;
}


/*
===============
Sys_GetProcessorString
===============
*/
const char *Sys_GetProcessorString( void ) {
    Sys_Printf("char *Sys_GetProcessorString( void )\r\n");
    return NULL;
}


/*
===============
Sys_FPU_EnableExceptions
===============
*/
void Sys_FPU_EnableExceptions( int exceptions ) {
    Sys_Printf("void Sys_FPU_EnableExceptions( int exceptions )\r\n");
}


/*
===============
Sys_FPE_handler
===============
*/
void Sys_FPE_handler( int signum, siginfo_t *info, void *context ) {
    Sys_Printf("void Sys_FPE_handler( int signum, siginfo_t *info, void *context )\r\n");
}


/*
===============
Sys_GetClockticks
===============
*/
double Sys_GetClockTicks( void ) {
    double retVal;
    memset(&retVal, 0, sizeof(double));
    Sys_Printf("double Sys_GetClockTicks( void )\r\n");
    return retVal;
}


/*
===============
MeasureClockTicks
===============
*/
double MeasureClockTicks( void ) {
    double retVal;
    memset(&retVal, 0, sizeof(double));
    Sys_Printf("double MeasureClockTicks( void )\r\n");
    return retVal;
}


/*
===============
Sys_ClockTicksPerSecond
===============
*/
double Sys_ClockTicksPerSecond(void) {
    double retVal;
    memset(&retVal, 0, sizeof(double));
    Sys_Printf("double Sys_ClockTicksPerSecond(void)\r\n");
    return retVal;
}


/*
================
Sys_GetSystemRam
returns in megabytes
================
*/
int Sys_GetSystemRam( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_GetSystemRam( void )\r\n");
    return retVal;
}


/*
==================
Sys_DoStartProcess
if we don't fork, this function never returns
the no-fork lets you keep the terminal when you're about to spawn an installer

if the command contains spaces, system() is used. Otherwise the more straightforward execl ( system() blows though )
==================
*/
void Sys_DoStartProcess( const char *exeName, bool dofork ) {
    Sys_Printf("void Sys_DoStartProcess( const char *exeName, bool dofork )\r\n");
}


/*
=================
Sys_OpenURL
=================
*/
void idSysLocal::OpenURL( const char *url, bool quit ) {
    Sys_Printf("void idSysLocal::OpenURL( const char *url, bool quit )\r\n");
}


/*
 ==================
 Sys_DoPreferences
 ==================
 */
void Sys_DoPreferences( void ) {
    Sys_Printf("void Sys_DoPreferences( void )\r\n");
}


/*
================
Sys_FPU_SetDAZ
================
*/
void Sys_FPU_SetDAZ( bool enable ) {
    Sys_Printf("void Sys_FPU_SetDAZ( bool enable )\r\n");
}


/*
================
Sys_FPU_SetFTZ
================
*/
void Sys_FPU_SetFTZ( bool enable ) {
    Sys_Printf("void Sys_FPU_SetFTZ( bool enable )\r\n");
}


/*
===============
mem consistency stuff
===============
*/

#ifdef ID_MCHECK

const char *mcheckstrings[] = {
	"MCHECK_DISABLED",
	"MCHECK_OK",
	"MCHECK_FREE",	// block freed twice
	"MCHECK_HEAD",	// memory before the block was clobbered
	"MCHECK_TAIL"	// memory after the block was clobbered
};

void abrt_func( mcheck_status status ) {
    Sys_Printf("void abrt_func( mcheck_status status )\r\n");
}


#endif

/*
===============
main
===============
*/
int main(int argc, const char **argv) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int main(int argc, const char **argv)\r\n");
    return retVal;
}

