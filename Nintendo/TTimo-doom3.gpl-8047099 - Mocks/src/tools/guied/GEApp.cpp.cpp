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

#include <io.h>

#include "../../sys/win32/rc/guied_resource.h"
#include "../../ui/DeviceContext.h"

#include "GEApp.h"
#include "GEOptionsDlg.h"
#include "GEViewer.h"

static const int IDM_WINDOWCHILD	= 1000;
static const int ID_GUIED_FILE_MRU1 = 10000;

static INT_PTR CALLBACK AboutDlg_WndProc ( HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam )
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK AboutDlg_WndProc ( HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}



rvGEApp::rvGEApp ( )
{
	mMDIFrame			 = NULL;
	mMDIClient			 = NULL;
	mRecentFileMenu		 = NULL;
	mViewer				 = NULL;
	mRecentFileInsertPos = 0;
}

rvGEApp::~rvGEApp ( )
{
	DestroyAcceleratorTable ( mAccelerators );
}

/*
================
rvGEApp::Initialize

Initialize the gui editor application
================
*/
bool rvGEApp::Initialize ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEApp::Initialize ( void )\r\n");
    return retVal;
}



/*
================
rvGEApp::GetActiveWorkspace

Retrieves the workspace pointer for the active workspace.  If there is no active
workspace then it will return NULL
================
*/
rvGEWorkspace* rvGEApp::GetActiveWorkspace ( HWND* ret )
{
    Sys_Printf("rvGEWorkspace* rvGEApp::GetActiveWorkspace ( HWND* ret )\r\n");
    return NULL;
}


/*
================
rvGEApp::TranslateAccelerator

Translate any accelerators destined for this window
================
*/
bool rvGEApp::TranslateAccelerator ( LPMSG msg )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEApp::TranslateAccelerator ( LPMSG msg )\r\n");
    return retVal;
}


/*
================
rvGEApp::RunFrame

Runs the current frame which causes the active window to be redrawn
================
*/
void rvGEApp::RunFrame ( void )
{
    Sys_Printf("void rvGEApp::RunFrame ( void )\r\n");
}


/*
================
rvGEApp::FrameWndProc

Main frame window procedure
================
*/
LRESULT CALLBACK rvGEApp::FrameWndProc ( HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam )
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK rvGEApp::FrameWndProc ( HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGEApp::MDIChildProc

MDI Child window procedure
================
*/
LRESULT CALLBACK rvGEApp::MDIChildProc ( HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam )
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK rvGEApp::MDIChildProc ( HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGEApp::HandleCommandSave

Handles the ID_GUIED_FILE_SAVE and ID_GUIED_FILE_SAVEAS commands
================
*/
void rvGEApp::HandleCommandSave ( rvGEWorkspace* workspace, const char* filename )
{
    Sys_Printf("void rvGEApp::HandleCommandSave ( rvGEWorkspace* workspace, const char* filename )\r\n");
}


/*
================
rvGEApp::HandleCommand

Handles the WM_COMMAND message
================
*/
int rvGEApp::HandleCommand ( WPARAM wParam, LPARAM lParam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvGEApp::HandleCommand ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGEApp::HandleInitMenu

Handles the initialization of the main menu
================
*/
int rvGEApp::HandleInitMenu ( WPARAM wParam, LPARAM lParam ) 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvGEApp::HandleInitMenu ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}
 

/*
================
rvGEApp::NewFile

Creates a new file and opens a window for it
================
*/
bool rvGEApp::NewFile ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEApp::NewFile ( void )\r\n");
    return retVal;
}


/*
================
rvGEApp::OpenFile

Opens the given file and will fail if its already open or could not
be opened for some reason
================
*/
bool rvGEApp::OpenFile ( const char* filename )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEApp::OpenFile ( const char* filename )\r\n");
    return retVal;
}


/*
================
rvGEApp::InitRecentFiles

Finds the file menu and the location within it where the MRU should
be added.
================
*/
bool rvGEApp::InitRecentFiles ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEApp::InitRecentFiles ( void )\r\n");
    return retVal;
}


/*
================
rvGEApp::UpdateRecentFiles

Updates the mru in the menu
================
*/
void rvGEApp::UpdateRecentFiles ( void )
{
    Sys_Printf("void rvGEApp::UpdateRecentFiles ( void )\r\n");
}


/*
================
rvGEApp::CloseViewer

Closes the gui viewer
================
*/
void rvGEApp::CloseViewer ( void )
{
    Sys_Printf("void rvGEApp::CloseViewer ( void )\r\n");
}


/*
================
rvGEApp::ToolWindowActivate

Handles the nc activate message for all tool windows
================
*/
int	rvGEApp::ToolWindowActivate ( HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intrvGEApp::ToolWindowActivate ( HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGEApp::MessageBox

Displays a modal message box 
================
*/
int rvGEApp::MessageBox ( const char* text, int flags )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvGEApp::MessageBox ( const char* text, int flags )\r\n");
    return retVal;
}


