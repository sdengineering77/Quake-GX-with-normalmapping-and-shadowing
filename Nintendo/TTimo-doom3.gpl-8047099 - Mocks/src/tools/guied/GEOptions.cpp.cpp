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

#include "../../ui/Window.h"
#include "../../ui/UserInterfaceLocal.h"

#include "GEOptions.h"

rvGEOptions::rvGEOptions() {
	// Grid options
	mGridColor.Set ( 0.2f, 0.2f, 1.0f, 1.0f );
	mGridWidth = 10;
	mGridHeight = 10;
	mGridSnap = false;
	mGridVisible = false;
	mNavigatorVisible = true;
	mTransformerVisible = true;
	mIgnoreDesktopSelect = true;
	mStatusBarVisible = true;
	mPropertiesVisible = true;

	mWorkspaceColor.Set ( 0.0f, 0.0f, 0.0f, 1.0f );
	mSelectionColor.Set ( 0.5f, 0.5f, 1.0f, 1.0f );
	
	memset ( mCustomColors, 0, sizeof(mCustomColors) );
}

/*
================
rvGEOptions::Init
================
*/
void rvGEOptions::Init( void ) {
    Sys_Printf("void rvGEOptions::Init( void )\r\n");
}


/*
================
rvGEOptions::Save

Writes the options to the registry so they can later be read using the Load method
================
*/
bool rvGEOptions::Save ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEOptions::Save ( void )\r\n");
    return retVal;
}


/*
================
rvGEOptions::Load

Loads previsouly saved options from the registry
================
*/
bool rvGEOptions::Load ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEOptions::Load ( void )\r\n");
    return retVal;
}


/*
================
rvGEOptions::SnapRectToGrid

Snap the rectangle to the grid
================
*/
void rvGEOptions::SnapRectToGrid ( idRectangle& rect, bool snapLeft, bool snapTop, bool snapWidth, bool snapHeight )
{
    Sys_Printf("void rvGEOptions::SnapRectToGrid ( idRectangle& rect, bool snapLeft, bool snapTop, bool snapWidth, bool snapHeight )\r\n");
}



