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


#define DINPUT_BUFFERSIZE           256

#define CHAR_FIRSTREPEAT 200
#define CHAR_REPEAT 100

typedef struct MYDATA {
	LONG  lX;                   // X axis goes here
	LONG  lY;                   // Y axis goes here
	LONG  lZ;                   // Z axis goes here
	BYTE  bButtonA;             // One button goes here
	BYTE  bButtonB;             // Another button goes here
	BYTE  bButtonC;             // Another button goes here
	BYTE  bButtonD;             // Another button goes here
} MYDATA;

static DIOBJECTDATAFORMAT rgodf[] = {
  { &GUID_XAxis,    FIELD_OFFSET(MYDATA, lX),       DIDFT_AXIS | DIDFT_ANYINSTANCE,   0,},
  { &GUID_YAxis,    FIELD_OFFSET(MYDATA, lY),       DIDFT_AXIS | DIDFT_ANYINSTANCE,   0,},
  { &GUID_ZAxis,    FIELD_OFFSET(MYDATA, lZ),       0x80000000 | DIDFT_AXIS | DIDFT_ANYINSTANCE,   0,},
  { 0,              FIELD_OFFSET(MYDATA, bButtonA), DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0,},
  { 0,              FIELD_OFFSET(MYDATA, bButtonB), DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0,},
  { 0,              FIELD_OFFSET(MYDATA, bButtonC), 0x80000000 | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0,},
  { 0,              FIELD_OFFSET(MYDATA, bButtonD), 0x80000000 | DIDFT_BUTTON | DIDFT_ANYINSTANCE, 0,},
};

//==========================================================================

static const unsigned char s_scantokey[256] = { 
//  0            1       2          3          4       5            6         7
//  8            9       A          B          C       D            E         F
	0,           27,    '1',       '2',        '3',    '4',         '5',      '6', 
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
	0,          0,      0,         0,          0,      0,           0,        0,      // 7
// shifted
	0,           27,    '!',       '@',        '#',    '$',         '%',      '^', 
	'&',        '*',    '(',       ')',        '_',    '+',          K_BACKSPACE, 9, // 0
	'q',        'w',    'e',       'r',        't',    'y',         'u',      'i', 
	'o',        'p',    '[',       ']',        K_ENTER,K_CTRL,      'a',      's',   // 1
	'd',        'f',    'g',       'h',        'j',    'k',         'l',      ';', 
	'\'',       '~',    K_SHIFT,   '\\',       'z',    'x',         'c',      'v',   // 2
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

static const unsigned char s_scantokey_german[256] = {
//  0            1       2          3          4       5            6         7
//  8            9       A          B          C       D            E         F
	0,           27,    '1',       '2',        '3',    '4',         '5',      '6', 
	'7',        '8',    '9',       '0',        '?',    '\'',        K_BACKSPACE, 9,  // 0
	'q',        'w',    'e',       'r',        't',    'z',         'u',      'i', 
	'o',        'p',    '=',       '+',        K_ENTER,K_CTRL,      'a',      's',   // 1
	'd',        'f',    'g',       'h',        'j',    'k',         'l',      '[', 
	']',        '`',    K_SHIFT,   '#',        'y',    'x',         'c',      'v',   // 2
	'b',        'n',    'm',       ',',        '.',    '-',         K_SHIFT,  K_KP_STAR, 
	K_ALT,      ' ',    K_CAPSLOCK,K_F1,       K_F2,   K_F3,        K_F4,     K_F5,  // 3
	K_F6,       K_F7,   K_F8,      K_F9,       K_F10,  K_PAUSE,     K_SCROLL, K_HOME, 
	K_UPARROW,  K_PGUP, K_KP_MINUS,K_LEFTARROW,K_KP_5, K_RIGHTARROW,K_KP_PLUS,K_END, // 4
	K_DOWNARROW,K_PGDN, K_INS,     K_DEL,      0,      0,           '<',      K_F11, 
	K_F12,      0,      0,         K_LWIN,     K_RWIN, K_MENU,      0,        0,     // 5
	0,          0,      0,         0,          0,      0,           0,        0, 
	0,          0,      0,         0,          0,      0,           0,        0,     // 6
	0,          0,      0,         0,          0,      0,           0,        0, 
	0,          0,      0,         0,          0,      0,           0,        0,      // 7
// shifted
	0,           27,    '1',       '2',        '3',    '4',         '5',      '6', 
	'7',        '8',    '9',       '0',        '?',    '\'',        K_BACKSPACE, 9,  // 0
	'q',        'w',    'e',       'r',        't',    'z',         'u',      'i', 
	'o',        'p',    '=',       '+',        K_ENTER,K_CTRL,      'a',      's',   // 1
	'd',        'f',    'g',       'h',        'j',    'k',         'l',      '[', 
	']',        '`',    K_SHIFT,   '#',        'y',    'x',         'c',      'v',   // 2
	'b',        'n',    'm',       ',',        '.',    '-',         K_SHIFT,  K_KP_STAR, 
	K_ALT,      ' ',    K_CAPSLOCK,K_F1,       K_F2,   K_F3,        K_F4,     K_F5,  // 3
	K_F6,       K_F7,   K_F8,      K_F9,       K_F10,  K_PAUSE,     K_SCROLL, K_HOME, 
	K_UPARROW,  K_PGUP, K_KP_MINUS,K_LEFTARROW,K_KP_5, K_RIGHTARROW,K_KP_PLUS,K_END, // 4
	K_DOWNARROW,K_PGDN, K_INS,     K_DEL,      0,      0,           '<',      K_F11, 
	K_F12,      0,      0,         K_LWIN,     K_RWIN, K_MENU,      0,        0,     // 5
	0,          0,      0,         0,          0,      0,           0,        0, 
	0,          0,      0,         0,          0,      0,           0,        0,     // 6
	0,          0,      0,         0,          0,      0,           0,        0, 
	0,          0,      0,         0,          0,      0,           0,        0      // 7
}; 

static const unsigned char s_scantokey_french[256] = {
//  0            1       2          3          4       5            6         7
//  8            9       A          B          C       D            E         F
	0,           27,    '1',       '2',        '3',    '4',         '5',      '6', 
	'7',        '8',    '9',       '0',        ')',    '=',         K_BACKSPACE, 9, // 0 
	'a',        'z',    'e',       'r',        't',    'y',         'u',      'i', 
	'o',        'p',    '^',       '$',        K_ENTER,K_CTRL,      'q',      's',      // 1 
	'd',        'f',    'g',       'h',        'j',    'k',         'l',      'm', 
	'ù',        '`',    K_SHIFT,   '*',        'w',    'x',         'c',      'v',      // 2 
	'b',        'n',    ',',       ';',        ':',    '!',         K_SHIFT,  K_KP_STAR,
	K_ALT,      ' ',    K_CAPSLOCK,K_F1,       K_F2,   K_F3,        K_F4,     K_F5,  // 3
	K_F6,       K_F7,   K_F8,      K_F9,       K_F10,  K_PAUSE,     K_SCROLL, K_HOME, 
	K_UPARROW,  K_PGUP, K_KP_MINUS,K_LEFTARROW,K_KP_5, K_RIGHTARROW,K_KP_PLUS,K_END, // 4
	K_DOWNARROW,K_PGDN, K_INS,     K_DEL,      0,      0,           '<',      K_F11, 
	K_F12,      0,      0,         K_LWIN,     K_RWIN, K_MENU,      0,        0,     // 5
	0,          0,      0,         0,          0,      0,           0,        0, 
	0,          0,      0,         0,          0,      0,           0,        0,     // 6
	0,          0,      0,         0,          0,      0,           0,        0, 
	0,          0,      0,         0,          0,      0,           0,        0,      // 7
// shifted
	0,           27,    '&',       'é',        '\"',    '\'',         '(',      '-', 
	'è',        '_',    'ç',       'à',        '°',    '+',         K_BACKSPACE, 9, // 0 
	'a',        'z',    'e',       'r',        't',    'y',         'u',      'i', 
	'o',        'p',    '^',       '$',        K_ENTER,K_CTRL,      'q',      's',      // 1 
	'd',        'f',    'g',       'h',        'j',    'k',         'l',      'm', 
	'ù',        0,    K_SHIFT,   '*',        'w',    'x',         'c',      'v',      // 2 
	'b',        'n',    ',',       ';',        ':',    '!',         K_SHIFT,  K_KP_STAR,
	K_ALT,      ' ',    K_CAPSLOCK,K_F1,       K_F2,   K_F3,        K_F4,     K_F5,  // 3
	K_F6,       K_F7,   K_F8,      K_F9,       K_F10,  K_PAUSE,     K_SCROLL, K_HOME, 
	K_UPARROW,  K_PGUP, K_KP_MINUS,K_LEFTARROW,K_KP_5, K_RIGHTARROW,K_KP_PLUS,K_END, // 4
	K_DOWNARROW,K_PGDN, K_INS,     K_DEL,      0,      0,           '<',      K_F11, 
	K_F12,      0,      0,         K_LWIN,     K_RWIN, K_MENU,      0,        0,     // 5
	0,          0,      0,         0,          0,      0,           0,        0, 
	0,          0,      0,         0,          0,      0,           0,        0,     // 6
	0,          0,      0,         0,          0,      0,           0,        0, 
	0,          0,      0,         0,          0,      0,           0,        0      // 7
}; 

static const unsigned char s_scantokey_spanish[256] = { 
//  0            1       2          3          4       5            6         7
//  8            9       A          B          C       D            E         F
	0,           27,    '1',       '2',        '3',    '4',         '5',      '6', 
	'7',        '8',    '9',       '0',        '\'',   '¡',         K_BACKSPACE, 9,  // 0 
	'q',        'w',    'e',       'r',        't',    'y',         'u',      'i', 
	'o',        'p',    '`',       '+',        K_ENTER,K_CTRL,      'a',      's',   // 1 
	'd',        'f',    'g',       'h',        'j',    'k',         'l',      'ñ', 
	'´',        'º',    K_SHIFT,   'ç',        'z',    'x',         'c',      'v',   // 2 
	'b',        'n',    'm',       ',',        '.',    '-',         K_SHIFT,  K_KP_STAR, 
	K_ALT,      ' ',    K_CAPSLOCK,K_F1,       K_F2,   K_F3,        K_F4,     K_F5,  // 3
	K_F6,       K_F7,   K_F8,      K_F9,       K_F10,  K_PAUSE,     K_SCROLL, K_HOME, 
	K_UPARROW,  K_PGUP, K_KP_MINUS,K_LEFTARROW,K_KP_5, K_RIGHTARROW,K_KP_PLUS,K_END, // 4
	K_DOWNARROW,K_PGDN, K_INS,     K_DEL,      0,      0,           '<',      K_F11, 
	K_F12,      0,      0,         K_LWIN,     K_RWIN, K_MENU,      0,        0,     // 5
	0,          0,      0,         0,          0,      0,           0,        0, 
	0,          0,      0,         0,          0,      0,           0,        0,     // 6
	0,          0,      0,         0,          0,      0,           0,        0, 
	0,          0,      0,         0,          0,      0,           0,        0,      // 7
// shifted
	0,           27,    '!',       '\"',        '·',    '$',         '%',      '&', 
	'/',        '(',    ')',       '=',        '?',   '¿',         K_BACKSPACE, 9,  // 0 
	'q',        'w',    'e',       'r',        't',    'y',         'u',      'i', 
	'o',        'p',    '^',       '*',        K_ENTER,K_CTRL,      'a',      's',   // 1 
	'd',        'f',    'g',       'h',        'j',    'k',         'l',      'Ñ', 
	'¨',        'ª',    K_SHIFT,   'Ç',        'z',    'x',         'c',      'v',   // 2 
	'b',        'n',    'm',       ',',        '.',    '-',         K_SHIFT,  K_KP_STAR, 
	K_ALT,      ' ',    K_CAPSLOCK,K_F1,       K_F2,   K_F3,        K_F4,     K_F5,  // 3
	K_F6,       K_F7,   K_F8,      K_F9,       K_F10,  K_PAUSE,     K_SCROLL, K_HOME, 
	K_UPARROW,  K_PGUP, K_KP_MINUS,K_LEFTARROW,K_KP_5, K_RIGHTARROW,K_KP_PLUS,K_END, // 4
	K_DOWNARROW,K_PGDN, K_INS,     K_DEL,      0,      0,           '<',      K_F11, 
	K_F12,      0,      0,         K_LWIN,     K_RWIN, K_MENU,      0,        0,     // 5
	0,          0,      0,         0,          0,      0,           0,        0, 
	0,          0,      0,         0,          0,      0,           0,        0,     // 6
	0,          0,      0,         0,          0,      0,           0,        0, 
	0,          0,      0,         0,          0,      0,           0,        0      // 7
}; 

static const unsigned char s_scantokey_italian[256] = { 
//  0            1       2          3          4       5            6         7
//  8            9       A          B          C       D            E         F
		0,           27,    '1',       '2',        '3',    '4',         '5',      '6', 
		'7',        '8',    '9',       '0',        '\'',   'ì',         K_BACKSPACE, 9,  // 0 
		'q',        'w',    'e',       'r',        't',    'y',         'u',      'i', 
		'o',        'p',    'è',       '+',        K_ENTER,K_CTRL,      'a',      's',   // 1 
		'd',        'f',    'g',       'h',        'j',    'k',         'l',      'ò', 
		'à',        '\\',    K_SHIFT,   'ù',        'z',    'x',         'c',      'v',   // 2 
		'b',        'n',    'm',       ',',        '.',    '-',         K_SHIFT,  K_KP_STAR, 
		K_ALT,      ' ',    K_CAPSLOCK,K_F1,       K_F2,   K_F3,        K_F4,     K_F5,  // 3
		K_F6,       K_F7,   K_F8,      K_F9,       K_F10,  K_PAUSE,     K_SCROLL, K_HOME, 
		K_UPARROW,  K_PGUP, K_KP_MINUS,K_LEFTARROW,K_KP_5, K_RIGHTARROW,K_KP_PLUS,K_END, // 4
		K_DOWNARROW,K_PGDN, K_INS,     K_DEL,      0,      0,           '<',      K_F11, 
		K_F12,      0,      0,         K_LWIN,     K_RWIN, K_MENU,      0,        0,     // 5
		0,          0,      0,         0,          0,      0,           0,        0, 
		0,          0,      0,         0,          0,      0,           0,        0,     // 6
		0,          0,      0,         0,          0,      0,           0,        0, 
		0,          0,      0,         0,          0,      0,           0,        0,      // 7
// shifted
		0,           27,    '!',       '\"',        '£',    '$',         '%',      '&', 
		'/',        '(',    ')',       '=',        '?',   '^',         K_BACKSPACE, 9,  // 0 
		'q',        'w',    'e',       'r',        't',    'y',         'u',      'i', 
		'o',        'p',    'é',       '*',        K_ENTER,K_CTRL,      'a',      's',   // 1 
		'd',        'f',    'g',       'h',        'j',    'k',         'l',      'ç', 
		'°',        '|',    K_SHIFT,   '§',        'z',    'x',         'c',      'v',   // 2 
		'b',        'n',    'm',       ',',        '.',    '-',         K_SHIFT,  K_KP_STAR, 
		K_ALT,      ' ',    K_CAPSLOCK,K_F1,       K_F2,   K_F3,        K_F4,     K_F5,  // 3
		K_F6,       K_F7,   K_F8,      K_F9,       K_F10,  K_PAUSE,     K_SCROLL, K_HOME, 
		K_UPARROW,  K_PGUP, K_KP_MINUS,K_LEFTARROW,K_KP_5, K_RIGHTARROW,K_KP_PLUS,K_END, // 4
		K_DOWNARROW,K_PGDN, K_INS,     K_DEL,      0,      0,           '<',      K_F11, 
		K_F12,      0,      0,         K_LWIN,     K_RWIN, K_MENU,      0,        0,     // 5
		0,          0,      0,         0,          0,      0,           0,        0, 
		0,          0,      0,         0,          0,      0,           0,        0,     // 6
		0,          0,      0,         0,          0,      0,           0,        0, 
		0,          0,      0,         0,          0,      0,           0,        0		 // 7

	
}; 

static const unsigned char *keyScanTable = s_scantokey;	

// this should be part of the scantables and the scan tables should be 512 bytes
// (256 scan codes, shifted and unshifted).  Changing everything to use 512 byte
// scan tables now might introduce bugs in tested code.  Since we only need to fix
// the right-alt case for non-US keyboards, we're just using a special-case table
// for it.  Eventually, the tables above should be fixed to handle all possible
// scan codes instead of just the first 128.
static unsigned char	rightAltKey = K_ALT;

#define NUM_OBJECTS (sizeof(rgodf) / sizeof(rgodf[0]))

static DIDATAFORMAT	df = {
	sizeof(DIDATAFORMAT),       // this structure
	sizeof(DIOBJECTDATAFORMAT), // size of object data format
	DIDF_RELAXIS,               // absolute axis coordinates
	sizeof(MYDATA),             // device data size
	NUM_OBJECTS,                // number of objects
	rgodf,                      // and here they are
};

/*
============================================================

DIRECT INPUT KEYBOARD CONTROL

============================================================
*/

bool IN_StartupKeyboard( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool IN_StartupKeyboard( void )\r\n");
    return retVal;
}


/*
=======
MapKey

Map from windows to quake keynums

FIXME: scan code tables should include the upper 128 scan codes instead
	   of having to special-case them here.  The current code makes it difficult
	   to special-case conversions for non-US keyboards.  Currently the only
	   special-case is for right alt.
=======
*/
int IN_DIMapKey (int key) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int IN_DIMapKey (int key)\r\n");
    return retVal;
}



/*
==========================
IN_DeactivateKeyboard
==========================
*/
void IN_DeactivateKeyboard( void ) {
    Sys_Printf("void IN_DeactivateKeyboard( void )\r\n");
}


/*
============================================================

DIRECT INPUT MOUSE CONTROL

============================================================
*/

/*
========================
IN_InitDirectInput
========================
*/

void IN_InitDirectInput( void ) {
    Sys_Printf("void IN_InitDirectInput( void )\r\n");
}


/*
========================
IN_InitDIMouse
========================
*/
bool IN_InitDIMouse( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool IN_InitDIMouse( void )\r\n");
    return retVal;
}



/*
==========================
IN_ActivateMouse
==========================
*/
void IN_ActivateMouse( void ) {
    Sys_Printf("void IN_ActivateMouse( void )\r\n");
}


/*
==========================
IN_DeactivateMouse
==========================
*/
void IN_DeactivateMouse( void ) {
    Sys_Printf("void IN_DeactivateMouse( void )\r\n");
}


/*
==========================
IN_DeactivateMouseIfWindowed
==========================
*/
void IN_DeactivateMouseIfWindowed( void ) {
    Sys_Printf("void IN_DeactivateMouseIfWindowed( void )\r\n");
}


/*
============================================================

  MOUSE CONTROL

============================================================
*/


/*
===========
Sys_ShutdownInput
===========
*/
void Sys_ShutdownInput( void ) {
    Sys_Printf("void Sys_ShutdownInput( void )\r\n");
}


/*
===========
Sys_InitInput
===========
*/
void Sys_InitInput( void ) {
    Sys_Printf("void Sys_InitInput( void )\r\n");
}


/*
===========
Sys_InitScanTable
===========
*/
void Sys_InitScanTable( void ) {
    Sys_Printf("void Sys_InitScanTable( void )\r\n");
}


/*
==================
Sys_GetScanTable
==================
*/
const unsigned char *Sys_GetScanTable( void ) {
    Sys_Printf("char *Sys_GetScanTable( void )\r\n");
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
==================
IN_Frame

Called every frame, even if not generating commands
==================
*/
void IN_Frame( void ) {
    Sys_Printf("void IN_Frame( void )\r\n");
}



void	Sys_GrabMouseCursor( bool grabIt ) {
    Sys_Printf("voidSys_GrabMouseCursor( bool grabIt )\r\n");
}


//=====================================================================================

static DIDEVICEOBJECTDATA polled_didod[ DINPUT_BUFFERSIZE ];  // Receives buffered data 

static int diFetch;
static byte toggleFetch[2][ 256 ];


#if 1
// I tried doing the full-state get to address a keyboard problem on one system,
// but it didn't make any difference

/*
====================
Sys_PollKeyboardInputEvents
====================
*/
int Sys_PollKeyboardInputEvents( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_PollKeyboardInputEvents( void )\r\n");
    return retVal;
}


#else

/*
====================
Sys_PollKeyboardInputEvents

Fake events by getting the entire device state
and checking transitions
====================
*/
int Sys_PollKeyboardInputEvents( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_PollKeyboardInputEvents( void )\r\n");
    return retVal;
}


#endif

/*
====================
Sys_PollKeyboardInputEvents
====================
*/
int Sys_ReturnKeyboardInputEvent( const int n, int &ch, bool &state ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_ReturnKeyboardInputEvent( const int n, int &ch, bool &state )\r\n");
    return retVal;
}



void Sys_EndKeyboardInputEvents( void ) {
    Sys_Printf("void Sys_EndKeyboardInputEvents( void )\r\n");
}


void Sys_QueMouseEvents( int dwElements ) {
    Sys_Printf("void Sys_QueMouseEvents( int dwElements )\r\n");
}


//=====================================================================================

int Sys_PollMouseInputEvents( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_PollMouseInputEvents( void )\r\n");
    return retVal;
}


int Sys_ReturnMouseInputEvent( const int n, int &action, int &value ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_ReturnMouseInputEvent( const int n, int &action, int &value )\r\n");
    return retVal;
}


void Sys_EndMouseInputEvents( void ) {
    Sys_Printf("void Sys_EndMouseInputEvents( void )\r\n");
}


unsigned char Sys_MapCharForKey( int key ) {
    char retVal;
    memset(&retVal, 0, sizeof(char));
    Sys_Printf("char Sys_MapCharForKey( int key )\r\n");
    return retVal;
}

