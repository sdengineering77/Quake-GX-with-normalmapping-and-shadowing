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

#include "win_local.h"
#include "../../renderer/tr_local.h"

LONG WINAPI MainWndProc( HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam );

static bool s_alttab_disabled;

static void WIN_DisableAltTab( void ) {
    Sys_Printf("void WIN_DisableAltTab( void )\r\n");
}


static void WIN_EnableAltTab( void ) {
    Sys_Printf("void WIN_EnableAltTab( void )\r\n");
}


void WIN_Sizing(WORD side, RECT *rect)
{
    Sys_Printf("void WIN_Sizing(WORD side, RECT *rect)\r\n");
}


//==========================================================================

// Keep this in sync with the one in win_input.cpp
// This one is used in the menu, the other one is used in game

static byte s_scantokey[128] = 
{ 
//  0            1       2          3          4       5            6         7
//  8            9       A          B          C       D            E         F
	0,          27,    '1',       '2',        '3',    '4',         '5',      '6', 
	'7',        '8',    '9',       '0',        '-',    '=',          K_BACKSPACE, 9, // 0
	'q',        'w',    'e',       'r',        't',    'y',         'u',      'i', 
	'o',        'p',    '[',       ']',        K_ENTER,K_CTRL,      'a',      's',   // 1
	'd',        'f',    'g',       'h',        'j',    'k',         'l',      ';', 
	'\'',       '`',    K_SHIFT,   '\\',       'z',    'x',         'c',      'v',   // 2
	'b',        'n',    'm',       ',',        '.',    '/',         K_SHIFT,  K_KP_STAR, 
	K_ALT,      ' ',    K_CAPSLOCK,K_F1,       K_F2,   K_F3,        K_F4,     K_F5,  // 3
	K_F6,       K_F7,   K_F8,      K_F9,       K_F10,  K_PAUSE,     K_SCROLL, K_HOME, 
	K_UPARROW,  K_PGUP, K_KP_MINUS,K_LEFTARROW,K_KP_5, K_RIGHTARROW,K_KP_PLUS,K_END, // 4
	K_DOWNARROW,K_PGDN, K_INS,     K_DEL,      0,      0,           0,        K_F11, 
	K_F12,      0,      0,         K_LWIN,     K_RWIN, K_MENU,      0,        0,     // 5
	0,          0,      0,         0,          0,      0,           0,        0, 
	0,          0,      0,         0,          0,      0,           0,        0,     // 6
	0,          0,      0,         0,          0,      0,           0,        0, 
	0,          0,      0,         0,          0,      0,           0,        0      // 7
}; 

static byte s_scantoshift[128] = 
{ 
//  0            1       2          3          4       5            6         7
//  8            9       A          B          C       D            E         F
	0,           27,    '!',       '@',        '#',    '$',         '%',      '^', 
	'&',        '*',    '(',       ')',        '_',    '+',         K_BACKSPACE, 9,  // 0 
	'Q',        'W',    'E',       'R',        'T',    'Y',         'U',      'I', 
	'O',        'P',    '{',       '}',        K_ENTER,K_CTRL,      'A',      'S',   // 1 
	'D',        'F',    'G',       'H',        'J',    'K',         'L',      ':', 
	'|' ,       '~',    K_SHIFT,   '\\',       'Z',    'X',         'C',      'V',   // 2 
	'B',        'N',    'M',       '<',        '>',    '?',         K_SHIFT,  K_KP_STAR, 
	K_ALT,      ' ',    K_CAPSLOCK,K_F1,       K_F2,   K_F3,        K_F4,     K_F5,  // 3
	K_F6,       K_F7,   K_F8,      K_F9,       K_F10,  K_PAUSE,     K_SCROLL, K_HOME, 
	K_UPARROW,  K_PGUP, K_KP_MINUS,K_LEFTARROW,K_KP_5, K_RIGHTARROW,K_KP_PLUS,K_END, // 4
	K_DOWNARROW,K_PGDN, K_INS,     K_DEL,      0,      0,           0,        K_F11, 
	K_F12,      0,      0,         K_LWIN,     K_RWIN, K_MENU,      0,        0,     // 5
	0,          0,      0,         0,          0,      0,           0,        0, 
	0,          0,      0,         0,          0,      0,           0,        0,     // 6
	0,          0,      0,         0,          0,      0,           0,        0, 
	0,          0,      0,         0,          0,      0,           0,        0      // 7
}; 


/*
=======
MapKey

Map from windows to Doom keynums
=======
*/
int MapKey (int key)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int MapKey (int key)\r\n");
    return retVal;
}



/*
====================
MainWndProc

main window procedure
====================
*/
LONG WINAPI MainWndProc( HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam ) {
    WINAPI retVal;
    memset(&retVal, 0, sizeof(WINAPI));
    Sys_Printf("WINAPI MainWndProc( HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}

