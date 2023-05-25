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
#include "posix_public.h"

typedef struct poll_keyboard_event_s
{
	int key;
	bool state;	
} poll_keyboard_event_t;

typedef struct poll_mouse_event_s
{
	int action;
	int value;
} poll_mouse_event_t;

#define MAX_POLL_EVENTS 50
#define POLL_EVENTS_HEADROOM 2 // some situations require to add several events
static poll_keyboard_event_t poll_events_keyboard[MAX_POLL_EVENTS + POLL_EVENTS_HEADROOM];
static int poll_keyboard_event_count;
static poll_mouse_event_t poll_events_mouse[MAX_POLL_EVENTS + POLL_EVENTS_HEADROOM];
static int poll_mouse_event_count;

/*
==========
Posix_AddKeyboardPollEvent
==========
*/
bool Posix_AddKeyboardPollEvent(int key, bool state) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Posix_AddKeyboardPollEvent(int key, bool state)\r\n");
    return retVal;
}


/*
==========
Posix_AddMousePollEvent
==========
*/
bool Posix_AddMousePollEvent(int action, int value) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Posix_AddMousePollEvent(int action, int value)\r\n");
    return retVal;
}


/*
===========================================================================
polled from GetDirectUsercmd
async input polling is obsolete
we have a single entry point for both mouse and keyboard
the mouse/keyboard seperation is API legacy
===========================================================================
*/

int Sys_PollKeyboardInputEvents( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_PollKeyboardInputEvents( void )\r\n");
    return retVal;
}


int Sys_ReturnKeyboardInputEvent( const int n, int &key, bool &state ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_ReturnKeyboardInputEvent( const int n, int &key, bool &state )\r\n");
    return retVal;
}


void Sys_EndKeyboardInputEvents( void ) {
    Sys_Printf("void Sys_EndKeyboardInputEvents( void )\r\n");
}


int Sys_PollMouseInputEvents( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_PollMouseInputEvents( void )\r\n");
    return retVal;
}


int	Sys_ReturnMouseInputEvent( const int n, int &action, int &value )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intSys_ReturnMouseInputEvent( const int n, int &action, int &value )\r\n");
    return retVal;
}


void Sys_EndMouseInputEvents( void ) {
    Sys_Printf("void Sys_EndMouseInputEvents( void )\r\n");
}

