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

#include "GEApp.h"

rvGEStatusBar::rvGEStatusBar ( )
{
	mSimple = true;
	mZoom   = 0;
	mTriangles = 0;
}

/*
================
rvGEStatusBar::Create

Creates a new status bar
================
*/
bool rvGEStatusBar::Create ( HWND parent, UINT id, bool visible )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEStatusBar::Create ( HWND parent, UINT id, bool visible )\r\n");
    return retVal;
}


/*
================
rvGEStatusBar::Resize

Resizes the status bar and updates the content
================
*/
void rvGEStatusBar::Resize ( int width, int height )
{
    Sys_Printf("void rvGEStatusBar::Resize ( int width, int height )\r\n");
}


/*
================
rvGEStatusBar::Update

Updates the status bar by setting up each part's width and text
================
*/
void rvGEStatusBar::Update ( void )
{
    Sys_Printf("void rvGEStatusBar::Update ( void )\r\n");
}


/*
================
rvGEStatusBar::Show

Shows and hides the status bar 
================
*/
void rvGEStatusBar::Show ( bool visible )
{
    Sys_Printf("void rvGEStatusBar::Show ( bool visible )\r\n");
}

