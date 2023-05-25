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

#include "../../sys/win32/rc/guied_resource.h"

#include "GEApp.h"

#define	GENAV_ITEMHEIGHT	22

rvGENavigator::rvGENavigator ( )
{
    22 retVal;
    memset(&retVal, 0, sizeof(22));
    Sys_Printf("22rvGENavigator::rvGENavigator ( )\r\n");
    return retVal;
}


/*
================
rvGENavigator::Create

Creates the navigator window
================
*/
bool rvGENavigator::Create ( HWND parent, bool visible )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGENavigator::Create ( HWND parent, bool visible )\r\n");
    return retVal;
}


/*
================
Draw3dRect

Draws a 3d rectangle using the given brushes
================
*/
void Draw3dRect ( HDC hDC, RECT* rect, HBRUSH topLeft, HBRUSH bottomRight )
{
    Sys_Printf("void Draw3dRect ( HDC hDC, RECT* rect, HBRUSH topLeft, HBRUSH bottomRight )\r\n");
}


/*
================
rvGENavigator::WndProc

Window Procedure 
================
*/
LRESULT CALLBACK rvGENavigator::WndProc ( HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam )
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK rvGENavigator::WndProc ( HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGENavigator::ListWndProc

Window Procedure for the embedded list control 
================
*/
LRESULT CALLBACK rvGENavigator::ListWndProc ( HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam )
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK rvGENavigator::ListWndProc ( HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGENavigator::AddWindow

Adds a new window to the navigator
================
*/
void rvGENavigator::AddWindow ( idWindow* window )
{
    Sys_Printf("void rvGENavigator::AddWindow ( idWindow* window )\r\n");
}


/*
================
rvGENavigator::SetWorkspace

Sets a new workspace for the navigator window
================
*/
void rvGENavigator::SetWorkspace ( rvGEWorkspace* workspace )
{
    Sys_Printf("void rvGENavigator::SetWorkspace ( rvGEWorkspace* workspace )\r\n");
}


/*
================
rvGENavigator::Update

Updates the contents of the navigator window from the current workspace
================
*/
void rvGENavigator::Update ( void )
{
    Sys_Printf("void rvGENavigator::Update ( void )\r\n");
}


/*
================
rvGENavigator::UpdateSelection

Updates the currently selected items
================
*/
void rvGENavigator::UpdateSelections ( void )
{
    Sys_Printf("void rvGENavigator::UpdateSelections ( void )\r\n");
}


/*
================
rvGENavigator::Refresh

Repaints the navigator window
================
*/
void rvGENavigator::Refresh ( void )
{
    Sys_Printf("void rvGENavigator::Refresh ( void )\r\n");
}


/*
================
rvGENavigator::Show

Shows and hides the navigator window
================
*/
void rvGENavigator::Show ( bool visible )
{
    Sys_Printf("void rvGENavigator::Show ( bool visible )\r\n");
}


