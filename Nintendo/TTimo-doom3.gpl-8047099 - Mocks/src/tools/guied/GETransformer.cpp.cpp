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
#include "../common/MaskEdit.h"

HHOOK	gTransHook	 = NULL;
HWND	gTransDlg	 = NULL;

rvGETransformer::rvGETransformer ( )
{
	mWnd		= NULL;
	mWorkspace	= NULL;
}

bool rvGETransformer::Create ( HWND parent, bool visible )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGETransformer::Create ( HWND parent, bool visible )\r\n");
    return retVal;
}


LRESULT CALLBACK rvGETransformer::WndProc ( HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam )
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK rvGETransformer::WndProc ( HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


INT_PTR CALLBACK rvGETransformer::DlgProc ( HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam )
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK rvGETransformer::DlgProc ( HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGETransformer::Show

Shows and hides the transformer window
================
*/
void rvGETransformer::Show ( bool visible )
{
    Sys_Printf("void rvGETransformer::Show ( bool visible )\r\n");
}


/*
================
rvGETransformer::SetWorkspace

Sets a new workspace for the transformer window
================
*/
void rvGETransformer::SetWorkspace ( rvGEWorkspace* workspace )
{
    Sys_Printf("void rvGETransformer::SetWorkspace ( rvGEWorkspace* workspace )\r\n");
}


/*
================
rvGETransformer::Update

Update the enabled/disabled states based on the selections and update
the rectangle coordinates
================
*/
void rvGETransformer::Update ( void )
{
    Sys_Printf("void rvGETransformer::Update ( void )\r\n");
}


/*
================
rvGETransformer::GetMsgProc

Ensures normal dialog functions work in the transformer dialog
================
*/
LRESULT FAR PASCAL rvGETransformer::GetMsgProc ( int nCode, WPARAM wParam, LPARAM lParam )
{
    PASCAL retVal;
    memset(&retVal, 0, sizeof(PASCAL));
    Sys_Printf("PASCAL rvGETransformer::GetMsgProc ( int nCode, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}
 
