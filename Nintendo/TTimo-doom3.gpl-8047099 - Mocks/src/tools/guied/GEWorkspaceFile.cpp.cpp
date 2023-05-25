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

bool GECheckInDlg_DoModal ( HWND parent, const char* filename, idStr* comment );

/*
================
rvGEWorkspace::SaveFile

Writes the contents of the open gui file to disk
================
*/
bool rvGEWorkspace::SaveFile ( const char* filename )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEWorkspace::SaveFile ( const char* filename )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::WriteTabs

Writes the given number of tabs to the given file
================
*/
void rvGEWorkspace::WriteTabs ( idFile* file, int depth  )
{
    Sys_Printf("void rvGEWorkspace::WriteTabs ( idFile* file, int depth  )\r\n");
}


/*
================
rvGEWorkspace::WriteWindow

Writes the contents of the given window to the file
================
*/
bool rvGEWorkspace::WriteWindow ( idFile* file, int depth, idWindow* window )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEWorkspace::WriteWindow ( idFile* file, int depth, idWindow* window )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::NewFile

Opens a new file for editing
================
*/
bool rvGEWorkspace::NewFile ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEWorkspace::NewFile ( void )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::LoadFile

Loads the given gui file.
================
*/
bool rvGEWorkspace::LoadFile ( const char* filename, idStr* error )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEWorkspace::LoadFile ( const char* filename, idStr* error )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::CheckIn

Checks in the current workspace file into source control
================
*/
bool rvGEWorkspace::CheckIn ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEWorkspace::CheckIn ( void )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::CheckOut

Checks out the current workspace file from source control
================
*/
bool rvGEWorkspace::CheckOut ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEWorkspace::CheckOut ( void )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::UndoCheckout

Undoes the checkout of the current file
================
*/
bool rvGEWorkspace::UndoCheckout ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEWorkspace::UndoCheckout ( void )\r\n");
    return retVal;
}


