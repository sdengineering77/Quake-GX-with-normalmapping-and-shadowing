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

#include "../../renderer/tr_local.h"
#include "../../sys/win32/win_local.h"

#include "GEApp.h"
#include "GESelectionMgr.h"

#define GUIED_GRABSIZE		7
#define GUIED_CENTERSIZE	5

rvGESelectionMgr::rvGESelectionMgr ( )
{
    5 retVal;
    memset(&retVal, 0, sizeof(5));
    Sys_Printf("5rvGESelectionMgr::rvGESelectionMgr ( )\r\n");
    return retVal;
}


/*
================
rvGESelectionMgr::SetSelection

Sets the only selection for the workspace to the given window
================
*/
void rvGESelectionMgr::Set ( idWindow* window )
{
    Sys_Printf("void rvGESelectionMgr::Set ( idWindow* window )\r\n");
}


/*
================
rvGESelectionMgr::Add

Adds the given window to the selection list
================
*/
void rvGESelectionMgr::Add ( idWindow* window, bool expand )
{
    Sys_Printf("void rvGESelectionMgr::Add ( idWindow* window, bool expand )\r\n");
}


/*
================
rvGESelectionMgr::RemoveSelection

Removes the selection from the current workspace
================
*/
void rvGESelectionMgr::Remove ( idWindow* window )
{
    Sys_Printf("void rvGESelectionMgr::Remove ( idWindow* window )\r\n");
}


/*
================
rvGESelectionMgr::ClearSelections

Remove all of the current selections
================
*/
void rvGESelectionMgr::Clear ( void )
{
    Sys_Printf("void rvGESelectionMgr::Clear ( void )\r\n");
}


/*
================
rvGESelectionMgr::Render

Render the selections including the move/size bars
================
*/
void rvGESelectionMgr::Render ( void )
{
    Sys_Printf("void rvGESelectionMgr::Render ( void )\r\n");
}


/*
================
rvGESelectionMgr::UpdateRectangle

Update the selection rectangle from all the currently selected items.
================
*/
void rvGESelectionMgr::UpdateRectangle ( void )
{
    Sys_Printf("void rvGESelectionMgr::UpdateRectangle ( void )\r\n");
}


/*
================
rvGESelectionMgr::UpdateExpression

Update whether or not the selection has an expression in it
================
*/
void rvGESelectionMgr::UpdateExpression ( void )
{
    Sys_Printf("void rvGESelectionMgr::UpdateExpression ( void )\r\n");
}
	

/*
================
rvGESelectionMgr::HitTest

Test to see if the given coordinate is within the selection rectangle and if it is
see what its over.
================
*/
rvGESelectionMgr::EHitTest rvGESelectionMgr::HitTest ( float x, float y )
{
    EHitTest retVal;
    memset(&retVal, 0, sizeof(EHitTest));
    Sys_Printf("EHitTest rvGESelectionMgr::HitTest ( float x, float y )\r\n");
    return retVal;
}


/*
================
rvGESelectionMgr::GetBottomMost

Returns the bottom most selected window.
================
*/
idWindow* rvGESelectionMgr::GetBottomMost ( void )
{
    Sys_Printf("idWindow* rvGESelectionMgr::GetBottomMost ( void )\r\n");
    return NULL;
}

