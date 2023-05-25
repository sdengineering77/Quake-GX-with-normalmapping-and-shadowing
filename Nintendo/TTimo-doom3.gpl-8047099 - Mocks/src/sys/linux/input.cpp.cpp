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
#include "local.h"

#include <pthread.h>

idCVar in_mouse( "in_mouse", "1", CVAR_SYSTEM | CVAR_ARCHIVE, "" );
idCVar in_dgamouse( "in_dgamouse", "1", CVAR_SYSTEM | CVAR_ARCHIVE, "" );
idCVar in_nograb( "in_nograb", "0", CVAR_SYSTEM | CVAR_NOCHEAT, "" );

// have a working xkb extension
static bool have_xkb = false;

// toggled by grab calls - decides if we ignore MotionNotify events
static bool mouse_active = false;

// non-DGA pointer-warping mouse input
static int mwx, mwy;
static int mx = 0, my = 0;

// time mouse was last reset, we ignore the first 50ms of the mouse to allow settling of events
static int mouse_reset_time = 0;
#define MOUSE_RESET_DELAY 50

// backup original values for pointer grab/ungrab
static int mouse_accel_numerator;
static int mouse_accel_denominator;
static int mouse_threshold;

static byte s_scantokey[128] = {
/*  0 */ 0, 0, 0, 0, 0, 0, 0, 0,
/*  8 */ 0, 27, '1', '2', '3', '4', '5', '6', // 27 - ESC
/* 10 */ '7', '8', '9', '0', '-', '=', K_BACKSPACE, 9, // 9 - TAB
/* 18 */ 'q', 'w', 'e', 'r', 't', 'y', 'u', 'i',
/* 20 */ 'o', 'p', '[', ']', K_ENTER, K_CTRL, 'a', 's',
/* 28 */ 'd', 'f', 'g', 'h', 'j', 'k', 'l', ';',
/* 30 */ '\'', '`', K_SHIFT, '\\', 'z', 'x', 'c', 'v',
/* 38 */ 'b', 'n', 'm', ',', '.', '/', K_SHIFT, K_KP_STAR,
/* 40 */ K_ALT, ' ', K_CAPSLOCK, K_F1, K_F2, K_F3, K_F4, K_F5,
/* 48 */ K_F6, K_F7, K_F8, K_F9, K_F10, K_PAUSE, 0, K_HOME,
/* 50 */ K_UPARROW, K_PGUP, K_KP_MINUS, K_LEFTARROW, K_KP_5, K_RIGHTARROW, K_KP_PLUS, K_END,
/* 58 */ K_DOWNARROW, K_PGDN, K_INS, K_DEL, 0, 0, '\\', K_F11,
/* 60 */ K_F12, K_HOME, K_UPARROW, K_PGUP, K_LEFTARROW, 0, K_RIGHTARROW, K_END,
/* 68 */ K_DOWNARROW, K_PGDN, K_INS, K_DEL, K_ENTER, K_CTRL, K_PAUSE, 0,
/* 70 */ '/', K_ALT, 0, 0, 0, 0, 0, 0,
/* 78 */ 0, 0, 0, 0, 0, 0, 0, 0
};

/*
=================
IN_Clear_f
=================
*/
void IN_Clear_f( const idCmdArgs &args ) {
    Sys_Printf("void IN_Clear_f( const idCmdArgs &args )\r\n");
}


/*
=================
Sys_InitInput
=================
*/
void Sys_InitInput(void) {
    Sys_Printf("void Sys_InitInput(void)\r\n");
}


//#define XEVT_DBG
//#define XEVT_DBG2

static Cursor Sys_XCreateNullCursor( Display *display, Window root ) {
    Cursor retVal;
    memset(&retVal, 0, sizeof(Cursor));
    Sys_Printf("Cursor Sys_XCreateNullCursor( Display *display, Window root )\r\n");
    return retVal;
}


static void Sys_XInstallGrabs( void ) {
    Sys_Printf("void Sys_XInstallGrabs( void )\r\n");
}


void Sys_XUninstallGrabs(void) {
    Sys_Printf("void Sys_XUninstallGrabs(void)\r\n");
}


void Sys_GrabMouseCursor( bool grabIt ) {
    Sys_Printf("void Sys_GrabMouseCursor( bool grabIt )\r\n");
}


/**
 * XPending() actually performs a blocking read 
 *  if no events available. From Fakk2, by way of
 *  Heretic2, by way of SDL, original idea GGI project.
 * The benefit of this approach over the quite
 *  badly behaved XAutoRepeatOn/Off is that you get
 *  focus handling for free, which is a major win
 *  with debug and windowed mode. It rests on the
 *  assumption that the X server will use the
 *  same timestamp on press/release event pairs 
 *  for key repeats. 
 */
static bool Sys_XPendingInput( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Sys_XPendingInput( void )\r\n");
    return retVal;
}


/**
 * Intercept a KeyRelease-KeyPress sequence and ignore
 */
static bool Sys_XRepeatPress( XEvent *event ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Sys_XRepeatPress( XEvent *event )\r\n");
    return retVal;
}


/*
==========================
Posix_PollInput
==========================
*/
void Posix_PollInput() {
    Sys_Printf("void Posix_PollInput()\r\n");
}


/*
=================
Sys_ShutdownInput
=================
*/
void Sys_ShutdownInput( void ) {
    Sys_Printf("void Sys_ShutdownInput( void )\r\n");
}


/*
===============
Sys_MapCharForKey
===============
*/
unsigned char Sys_MapCharForKey( int _key ) {
    char retVal;
    memset(&retVal, 0, sizeof(char));
    Sys_Printf("char Sys_MapCharForKey( int _key )\r\n");
    return retVal;
}

