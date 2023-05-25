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

#include <sys/types.h>
#include <sys/stat.h>
#include <errno.h>
#include <stdio.h>
#include <dirent.h>
#include <unistd.h>
#include <sys/mman.h>
#include <sys/time.h>
#include <pwd.h>

#define	MAX_OSPATH			256

static	int		frameNum;

int Sys_Milliseconds( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_Milliseconds( void )\r\n");
    return retVal;
}


double Sys_GetClockTicks( void ) {
    double retVal;
    memset(&retVal, 0, sizeof(double));
    Sys_Printf("double Sys_GetClockTicks( void )\r\n");
    return retVal;
}


double Sys_ClockTicksPerSecond( void ) {
    double retVal;
    memset(&retVal, 0, sizeof(double));
    Sys_Printf("double Sys_ClockTicksPerSecond( void )\r\n");
    return retVal;
}


void	Sys_Sleep( int msec ) {
    Sys_Printf("voidSys_Sleep( int msec )\r\n");
}


void	Sys_CreateThread(  xthread_t function, void *parms, xthreadPriority priority, xthreadInfo& info ) {
    Sys_Printf("voidSys_CreateThread(  xthread_t function, void *parms, xthreadPriority priority, xthreadInfo& info )\r\n");
}


void Sys_DestroyThread( xthreadInfo& info ) {
    Sys_Printf("void Sys_DestroyThread( xthreadInfo& info )\r\n");
}


void	Sys_FlushCacheMemory( void *base, int bytes ) {
    Sys_Printf("voidSys_FlushCacheMemory( void *base, int bytes )\r\n");
}


void Sys_Error( const char *error, ... ) {
    Sys_Printf("void Sys_Error( const char *error, ... )\r\n");
}


void Sys_Quit( void ) {
    Sys_Printf("void Sys_Quit( void )\r\n");
}


char *Sys_GetClipboardData( void ) {
    Sys_Printf("char *Sys_GetClipboardData( void )\r\n");
    return NULL;
}


void Sys_GenerateEvents( void ) {
    Sys_Printf("void Sys_GenerateEvents( void )\r\n");
}


void Sys_Init( void ) {
    Sys_Printf("void Sys_Init( void )\r\n");
}


//==========================================================

idPort	clientPort, serverPort;

void Sys_InitNetworking( void ) {
    Sys_Printf("void Sys_InitNetworking( void )\r\n");
}


bool idPort::GetPacket( netadr_t &net_from, void *data int &size, int maxSize ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPort::GetPacket( netadr_t &net_from, void *data int &size, int maxSize )\r\n");
    return retVal;
}

void idPort::SendPacket( const netadr_t to, const void *data, int size ) {
    Sys_Printf("void idPort::SendPacket( const netadr_t to, const void *data, int size )\r\n");
}


//==========================================================

double	idTimer::base;

void idTimer::InitBaseClockTicks( void ) const {
    Sys_Printf("void idTimer::InitBaseClockTicks( void )\r\n");
}


//==========================================================

void _glTexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid *pixels) {
    Sys_Printf("void _glTexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid *pixels)\r\n");
}



void Sys_InitInput( void ) {
    Sys_Printf("void Sys_InitInput( void )\r\n");
}


void Sys_ShutdownInput( void ) {
    Sys_Printf("void Sys_ShutdownInput( void )\r\n");
}


sysEvent_t	Sys_GetEvent( void ) {
    sysEvent_t retVal;
    memset(&retVal, 0, sizeof(sysEvent_t));
    Sys_Printf("sysEvent_tSys_GetEvent( void )\r\n");
    return retVal;
}


void	Sys_Mkdir( const char *path ) {
    Sys_Printf("voidSys_Mkdir( const char *path )\r\n");
}


const char *Sys_DefaultCDPath(void) {
    Sys_Printf("char *Sys_DefaultCDPath(void)\r\n");
    return NULL;
}


const char *Sys_DefaultBasePath(void) {
    Sys_Printf("char *Sys_DefaultBasePath(void)\r\n");
    return NULL;
}


int Sys_ListFiles( const char *directory, const char *extension, idStrList &list )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_ListFiles( const char *directory, const char *extension, idStrList &list )\r\n");
    return retVal;
}


void	Sys_GrabMouseCursor( bool grabIt ) {
    Sys_Printf("voidSys_GrabMouseCursor( bool grabIt )\r\n");
}


bool	Sys_StringToNetAdr( const char *s, netadr_t *a ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolSys_StringToNetAdr( const char *s, netadr_t *a )\r\n");
    return retVal;
}


const char *Sys_NetAdrToString( const netadr_t a ) {
    Sys_Printf("char *Sys_NetAdrToString( const netadr_t a )\r\n");
    return NULL;
}


void Sys_DoPreferences( void ) {
    Sys_Printf("void Sys_DoPreferences( void )\r\n");
}


int main( int argc, char **argv ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int main( int argc, char **argv )\r\n");
    return retVal;
}

