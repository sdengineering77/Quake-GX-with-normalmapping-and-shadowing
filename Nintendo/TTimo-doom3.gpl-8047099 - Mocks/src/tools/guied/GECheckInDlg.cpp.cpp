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

typedef struct
{
	const char*		mFilename;
	idStr*			mComment;
	
} GECHECKINDLG;

/*
================
GECheckInDlg_GeneralProc

Dialog procedure for the check in dialog
================
*/
static INT_PTR CALLBACK GECheckInDlg_GeneralProc ( HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam )
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK GECheckInDlg_GeneralProc ( HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
GECheckInDlg_DoModal

Starts the check in dialog
================
*/
bool GECheckInDlg_DoModal ( HWND parent, const char* filename, idStr* comment )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GECheckInDlg_DoModal ( HWND parent, const char* filename, idStr* comment )\r\n");
    return retVal;
}


