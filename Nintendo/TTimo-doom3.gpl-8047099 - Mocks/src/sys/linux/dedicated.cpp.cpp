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
#include "../../renderer/tr_local.h"
#include "../posix/posix_public.h"
#include "local.h"

/*
==========
input
==========
*/

void Sys_InitInput( void ) {
    Sys_Printf("void Sys_InitInput( void )\r\n");
}


void Sys_ShutdownInput( void ) {
    Sys_Printf("void Sys_ShutdownInput( void )\r\n");
}


void Sys_GrabMouseCursor( bool ) {
    Sys_Printf("void Sys_GrabMouseCursor( bool )\r\n");
}


int Sys_PollMouseInputEvents( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_PollMouseInputEvents( void )\r\n");
    return retVal;
}


void Sys_EndMouseInputEvents( void ) {
    Sys_Printf("void Sys_EndMouseInputEvents( void )\r\n");
}


int Sys_ReturnMouseInputEvent( const int n, int &action, int &value ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_ReturnMouseInputEvent( const int n, int &action, int &value )\r\n");
    return retVal;
}


int Sys_PollKeyboardInputEvents( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_PollKeyboardInputEvents( void )\r\n");
    return retVal;
}


void Sys_EndKeyboardInputEvents( void ) {
    Sys_Printf("void Sys_EndKeyboardInputEvents( void )\r\n");
}


int Sys_ReturnKeyboardInputEvent( const int n, int &action, bool &state ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_ReturnKeyboardInputEvent( const int n, int &action, bool &state )\r\n");
    return retVal;
}


unsigned char Sys_MapCharForKey( int key ) {
    char retVal;
    memset(&retVal, 0, sizeof(char));
    Sys_Printf("char Sys_MapCharForKey( int key )\r\n");
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
==========
GL
==========
*/

void GLimp_EnableLogging( bool enable ) {
    Sys_Printf("void GLimp_EnableLogging( bool enable )\r\n");
}


bool GLimp_Init( glimpParms_t a ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GLimp_Init( glimpParms_t a )\r\n");
    return retVal;
}


void GLimp_SetGamma( unsigned short red[256], 
				    unsigned short green[256],
					unsigned short blue[256] ) {
    Sys_Printf("void GLimp_SetGamma( unsigned short red[256], unsigned short green[256],unsigned short blue[256] )\r\n");
}


void GLimp_Shutdown( void ) {
    Sys_Printf("void GLimp_Shutdown( void )\r\n");
}


void GLimp_SwapBuffers( void ) {
    Sys_Printf("void GLimp_SwapBuffers( void )\r\n");
}


void GLimp_DeactivateContext( void ) {
    Sys_Printf("void GLimp_DeactivateContext( void )\r\n");
}


void GLimp_ActivateContext( void ) {
    Sys_Printf("void GLimp_ActivateContext( void )\r\n");
}


bool GLimp_SetScreenParms( glimpParms_t parms ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GLimp_SetScreenParms( glimpParms_t parms )\r\n");
    return retVal;
}


