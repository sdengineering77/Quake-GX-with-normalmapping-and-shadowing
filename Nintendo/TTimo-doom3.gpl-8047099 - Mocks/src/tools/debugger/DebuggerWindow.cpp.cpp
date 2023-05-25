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

#include "../../sys/win32/rc/debugger_resource.h"
#include "DebuggerApp.h"
#include "../Common/OpenFileDialog.h"
#include "DebuggerQuickWatchDlg.h"
#include "DebuggerFindDlg.h"

#define DEBUGGERWINDOWCLASS		"QUAKE4_DEBUGGER_WINDOW"
#define ID_DBG_WINDOWMIN		18900
#define ID_DBG_WINDOWMAX		19900

#define	IDC_DBG_SCRIPT			31000
#define	IDC_DBG_OUTPUT			31001
#define IDC_DBG_SPLITTER		31002
#define IDC_DBG_TABS			31003
#define IDC_DBG_BORDER			31004
#define IDC_DBG_CONSOLE			31005
#define IDC_DBG_CALLSTACK		31006
#define IDC_DBG_WATCH			31007
#define IDC_DBG_THREADS			31008
#define IDC_DBG_TOOLBAR			31009

#define ID_DBG_FILE_MRU1		10000

/*
================
rvDebuggerWindow::rvDebuggerWindow

Constructor
================
*/
rvDebuggerWindow::rvDebuggerWindow ( )
{
	mWnd		   = NULL;
	mWndScript	   = NULL;
	mInstance	   = NULL;
	mZoomScaleNum  = 0;
	mZoomScaleDem  = 0;
	mWindowMenuPos = 0;
	mActiveScript  = 0;
	mSplitterDrag  = false;
	mLastActiveScript = -1;
	mCurrentStackDepth = 0;
	mRecentFileInsertPos = 0;
	mRecentFileMenu = NULL;
	mClient = NULL;
}

/*
================
rvDebuggerWindow::~rvDebuggerWindow

Destructor
================
*/
rvDebuggerWindow::~rvDebuggerWindow ( )
{
	int i;
	
	if ( mWnd )
	{
		DestroyWindow ( mWnd );
	}
	
	if ( mImageList )
	{
		ImageList_Destroy ( mImageList );
	}
	
	for ( i = 0; i < mScripts.Num (); i ++ )
	{
		delete mScripts[i];
	}
}

/*
================
rvDebuggerWindow::RegisterClass

Registers the window class used by the debugger window.  This is called when
the window is created.
================
*/
bool rvDebuggerWindow::RegisterClass ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvDebuggerWindow::RegisterClass ( void )\r\n");
    return retVal;
}


/*
================
rvDebuggerWindow::Create

Creates the debugger window
================
*/
bool rvDebuggerWindow::Create ( HINSTANCE instance )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvDebuggerWindow::Create ( HINSTANCE instance )\r\n");
    return retVal;
}
	

/*
================
rvDebuggerWindow::ScriptWordBreakProc

Determines where word breaks are in the script window.  This is used for determining
the word that someone is over with their mouse cursor.  Since the default windows one
doesnt understand the delimiters of the scripting language it had to be overridden.
================
*/
int CALLBACK rvDebuggerWindow::ScriptWordBreakProc (LPTSTR text, int current, int max, int action )
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK rvDebuggerWindow::ScriptWordBreakProc (LPTSTR text, int current, int max, int action )\r\n");
    return retVal;
}


LRESULT CALLBACK rvDebuggerWindow::ScriptWndProc ( HWND wnd, UINT msg, WPARAM wparam, LPARAM lparam )
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK rvDebuggerWindow::ScriptWndProc ( HWND wnd, UINT msg, WPARAM wparam, LPARAM lparam )\r\n");
    return retVal;
}


LRESULT CALLBACK rvDebuggerWindow::MarginWndProc ( HWND wnd, UINT msg, WPARAM wparam, LPARAM lparam )
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK rvDebuggerWindow::MarginWndProc ( HWND wnd, UINT msg, WPARAM wparam, LPARAM lparam )\r\n");
    return retVal;
}


/*
================
rvDebuggerWindow::UpdateTitle

Updates the window title of the script debugger to show a few states
================
*/
void rvDebuggerWindow::UpdateTitle ( void )
{
    Sys_Printf("void rvDebuggerWindow::UpdateTitle ( void )\r\n");
}
	

/*
================
rvDebuggerWindow::UpdateScript

Updates the edit window to contain the current script
================
*/
void rvDebuggerWindow::UpdateScript ( void )
{
    Sys_Printf("void rvDebuggerWindow::UpdateScript ( void )\r\n");
}


/*
================
rvDebuggerWindow::UpdateWindowMenu

Updates the windows displayed in the window menu
================
*/
void rvDebuggerWindow::UpdateWindowMenu ( void )
{
    Sys_Printf("void rvDebuggerWindow::UpdateWindowMenu ( void )\r\n");
}


/*
================
rvDebuggerWindow::UpdateCallstack

Updates the contents of teh callastack
================
*/
void rvDebuggerWindow::UpdateCallstack ( void )
{
    Sys_Printf("void rvDebuggerWindow::UpdateCallstack ( void )\r\n");
}


/*
================
rvDebuggerWindow::UpdateWatch

Updates the contents of the watch window
================
*/
void rvDebuggerWindow::UpdateWatch ( void )
{
    Sys_Printf("void rvDebuggerWindow::UpdateWatch ( void )\r\n");
}


/*
================
rvDebuggerWindow::HandleInitMenu

Handles the initialization of the main menu
================
*/
int rvDebuggerWindow::HandleInitMenu ( WPARAM wParam, LPARAM lParam ) 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvDebuggerWindow::HandleInitMenu ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvDebuggerWindow::HandleCreate

Handles the WM_CREATE command
================
*/
int rvDebuggerWindow::HandleCreate ( WPARAM wparam, LPARAM lparam ) 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvDebuggerWindow::HandleCreate ( WPARAM wparam, LPARAM lparam )\r\n");
    return retVal;
}


/*
================
rvDebuggerWindow::HandleCommand

Handles the WM_COMMAND message for this window
================
*/
int rvDebuggerWindow::HandleCommand ( WPARAM wparam, LPARAM lparam ) 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvDebuggerWindow::HandleCommand ( WPARAM wparam, LPARAM lparam )\r\n");
    return retVal;
}

		
/*
================
rvDebuggerWindow::WndProc

Window procedure for the deubgger window
================
*/
LRESULT CALLBACK rvDebuggerWindow::WndProc ( HWND wnd, UINT msg, WPARAM wparam, LPARAM lparam )
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK rvDebuggerWindow::WndProc ( HWND wnd, UINT msg, WPARAM wparam, LPARAM lparam )\r\n");
    return retVal;
}


/*
================
rvDebuggerWindow::Activate

Static method that will activate the currently running debugger.  If one is found
and activated then true will be returned.
================
*/
bool rvDebuggerWindow::Activate ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvDebuggerWindow::Activate ( void )\r\n");
    return retVal;
}


/*
================
rvDebuggerWindow::ProcessNetMessage

Process an incoming network message
================
*/
void rvDebuggerWindow::ProcessNetMessage ( msg_t* msg )
{
    Sys_Printf("void rvDebuggerWindow::ProcessNetMessage ( msg_t* msg )\r\n");
}


/*
================
rvDebuggerWindow::Printf

Sends a formatted message to the output window
================
*/
void rvDebuggerWindow::Printf ( const char* fmt, ... )
{
    Sys_Printf("void rvDebuggerWindow::Printf ( const char* fmt, ... )\r\n");
}


/*
================
rvDebuggerWindow::OpenScript

Opens the script with the given filename and will scroll to the given line
number if one is specified
================
*/
bool rvDebuggerWindow::OpenScript ( const char* filename, int lineNumber )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvDebuggerWindow::OpenScript ( const char* filename, int lineNumber )\r\n");
    return retVal;
}


/*
================
rvDebuggerWindow::ToggleBreakpoint

Toggles the breakpoint on the current script line
================
*/
void rvDebuggerWindow::ToggleBreakpoint ( void )
{
    Sys_Printf("void rvDebuggerWindow::ToggleBreakpoint ( void )\r\n");
}


/*
================
rvDebuggerWindow::AboutDlgProc

Dialog box procedure for the about box
================
*/
INT_PTR CALLBACK rvDebuggerWindow::AboutDlgProc ( HWND wnd, UINT msg, WPARAM wparam, LPARAM lparam )
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK rvDebuggerWindow::AboutDlgProc ( HWND wnd, UINT msg, WPARAM wparam, LPARAM lparam )\r\n");
    return retVal;
}


/*
================
rvDebuggerWindow::CreateToolbar

Create the toolbar and and all of its buttons
================
*/
void rvDebuggerWindow::CreateToolbar ( void )
{
    Sys_Printf("void rvDebuggerWindow::CreateToolbar ( void )\r\n");
}


/*
================
rvDebuggerWindow::HandleTooltipGetDispInfo

Handle the getdispinfo notification message for tooltips by responding with the
tooptip text for the given toolbar button.
================
*/
void rvDebuggerWindow::HandleTooltipGetDispInfo ( WPARAM wparam, LPARAM lparam )
{
    Sys_Printf("void rvDebuggerWindow::HandleTooltipGetDispInfo ( WPARAM wparam, LPARAM lparam )\r\n");
}


/*
================
rvDebuggerWindow::HandleActivate

When the main window is activated, check all the loaded scripts and see if any of them
have been modified since the last time they were loaded.  If they have then reload
them and adjust all breakpoints that now fall on invalid lines.
================
*/
int rvDebuggerWindow::HandleActivate ( WPARAM wparam, LPARAM lparam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvDebuggerWindow::HandleActivate ( WPARAM wparam, LPARAM lparam )\r\n");
    return retVal;
}


/*
================
rvDebuggerWindow::EnableWindows

Enables and disables all windows with a enable state dependent on the current
connected and paused state of the debugger.
================
*/
void rvDebuggerWindow::EnableWindows ( bool state )
{
    Sys_Printf("void rvDebuggerWindow::EnableWindows ( bool state )\r\n");
}


/*
================
rvDebuggerWindow::AddWatch

Add a variable to the watch window.  If update is set to true then also query the 
debugger client for the value
================
*/
void rvDebuggerWindow::AddWatch ( const char* varname, bool update )
{
    Sys_Printf("void rvDebuggerWindow::AddWatch ( const char* varname, bool update )\r\n");
}


/*
================
rvDebuggerWindow::InitRecentFiles

Finds the file menu and the location within it where the MRU should
be added.
================
*/
bool rvDebuggerWindow::InitRecentFiles ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvDebuggerWindow::InitRecentFiles ( void )\r\n");
    return retVal;
}


/*
================
rvDebuggerWindow::UpdateRecentFiles

Updates the mru in the menu
================
*/
void rvDebuggerWindow::UpdateRecentFiles ( void )
{
    Sys_Printf("void rvDebuggerWindow::UpdateRecentFiles ( void )\r\n");
}


/*
================
rvDebuggerWindow::GetSelectedText

Function to retrieve the text that is currently selected in the 
script control
================
*/
int rvDebuggerWindow::GetSelectedText ( idStr& text )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvDebuggerWindow::GetSelectedText ( idStr& text )\r\n");
    return retVal;
}


/*
================
rvDebuggerWindow::FindNext

Finds the next match of the find text in the active script.  The next is
always relative to the current selection.  If the text parameter is NULL
then the last text used will be searched for. 
================
*/
bool rvDebuggerWindow::FindNext ( const char* text )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvDebuggerWindow::FindNext ( const char* text )\r\n");
    return retVal;
}


/*
================
rvDebuggerWindow::FindPrev

Finds the previous match of the find text in the active script.  The previous is
always relative to the current selection.  If the text parameter is NULL
then the last text used will be searched for. 
================
*/
bool rvDebuggerWindow::FindPrev ( const char* text )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvDebuggerWindow::FindPrev ( const char* text )\r\n");
    return retVal;
}


/*
================
rvDebuggerWindow::HandleDrawItem

Handled the WM_DRAWITEM message.  The watch window is custom drawn so a grid can be displayed.
================
*/
int rvDebuggerWindow::HandleDrawItem ( WPARAM wparam, LPARAM lparam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvDebuggerWindow::HandleDrawItem ( WPARAM wparam, LPARAM lparam )\r\n");
    return retVal;
}

