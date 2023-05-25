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

#include <errno.h>
#include <float.h>
#include <fcntl.h>
#include <stdio.h>
#include <direct.h>
#include <io.h>
#include <conio.h>

#include "win_local.h"
#include "rc/AFEditor_resource.h"
#include "rc/doom_resource.h"

#define COPY_ID			1
#define QUIT_ID			2
#define CLEAR_ID		3

#define ERRORBOX_ID		10
#define ERRORTEXT_ID	11

#define EDIT_ID			100
#define INPUT_ID		101

#define	COMMAND_HISTORY	64

typedef struct {
	HWND		hWnd;
	HWND		hwndBuffer;

	HWND		hwndButtonClear;
	HWND		hwndButtonCopy;
	HWND		hwndButtonQuit;

	HWND		hwndErrorBox;
	HWND		hwndErrorText;

	HBITMAP		hbmLogo;
	HBITMAP		hbmClearBitmap;

	HBRUSH		hbrEditBackground;
	HBRUSH		hbrErrorBackground;

	HFONT		hfBufferFont;
	HFONT		hfButtonFont;

	HWND		hwndInputLine;

	char		errorString[80];

	char		consoleText[512], returnedText[512];
	bool		quitOnClose;
	int			windowWidth, windowHeight;
	 
	WNDPROC		SysInputLineWndProc;

	idEditField	historyEditLines[COMMAND_HISTORY];

	int			nextHistoryLine;// the last line in the history buffer, not masked
	int			historyLine;	// the line being displayed from history buffer
								// will be <= nextHistoryLine

	idEditField	consoleField;

} WinConData;

static WinConData s_wcd;

static LONG WINAPI ConWndProc( HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam) {
    WINAPI retVal;
    memset(&retVal, 0, sizeof(WINAPI));
    Sys_Printf("WINAPI ConWndProc( HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)\r\n");
    return retVal;
}


LONG WINAPI InputLineWndProc( HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam) {
    WINAPI retVal;
    memset(&retVal, 0, sizeof(WINAPI));
    Sys_Printf("WINAPI InputLineWndProc( HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)\r\n");
    return retVal;
}


/*
** Sys_CreateConsole
*/
void Sys_CreateConsole( void ) {
    Sys_Printf("void Sys_CreateConsole( void )\r\n");
}


/*
** Sys_DestroyConsole
*/
void Sys_DestroyConsole( void ) {
    Sys_Printf("void Sys_DestroyConsole( void )\r\n");
}


/*
** Sys_ShowConsole
*/
void Sys_ShowConsole( int visLevel, bool quitOnClose ) {
    Sys_Printf("void Sys_ShowConsole( int visLevel, bool quitOnClose )\r\n");
}


/*
** Sys_ConsoleInput
*/
char *Sys_ConsoleInput( void ) {
    Sys_Printf("char *Sys_ConsoleInput( void )\r\n");
    return NULL;
}


/*
** Conbuf_AppendText
*/
void Conbuf_AppendText( const char *pMsg )
{
    Sys_Printf("void Conbuf_AppendText( const char *pMsg )\r\n");
}


/*
** Win_SetErrorText
*/
void Win_SetErrorText( const char *buf ) {
    Sys_Printf("void Win_SetErrorText( const char *buf )\r\n");
}

