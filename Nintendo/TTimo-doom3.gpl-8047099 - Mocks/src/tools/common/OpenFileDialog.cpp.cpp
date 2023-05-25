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

#include "../../sys/win32/win_local.h"
#include "../../sys/win32/rc/common_resource.h"
#include "OpenFileDialog.h"

char rvOpenFileDialog::mLookin[ MAX_OSPATH ];

/*
================
rvOpenFileDialog::rvOpenFileDialog

constructor
================
*/
rvOpenFileDialog::rvOpenFileDialog( void )
{
	mWnd		= NULL;
	mInstance	= NULL;
	mBackBitmap = NULL;
	mImageList	= NULL;
	mFlags		= 0;
}

/*
================
rvOpenFileDialog::~rvOpenFileDialog

destructor
================
*/
rvOpenFileDialog::~rvOpenFileDialog ( void )
{
	if ( mImageList )
	{
		ImageList_Destroy ( mImageList );
	}

	if ( mBackBitmap )
	{
		DeleteObject ( mBackBitmap );
	}
}

/*
================
rvOpenFileDialog::DoModal

Opens the dialog and returns true if a filename was found
================
*/
bool rvOpenFileDialog::DoModal ( HWND parent )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvOpenFileDialog::DoModal ( HWND parent )\r\n");
    return retVal;
}


/*
================
rvOpenFileDialog::UpdateLookIn

Updates the lookin combo box with the current lookin state
================
*/
void rvOpenFileDialog::UpdateLookIn ( void )
{
    Sys_Printf("void rvOpenFileDialog::UpdateLookIn ( void )\r\n");
}


/*
================
rvOpenFileDialog::UpdateFileList

Updates the file list with the files that match the filter in the current
look in directory
================
*/
void rvOpenFileDialog::UpdateFileList ( void )
{
    Sys_Printf("void rvOpenFileDialog::UpdateFileList ( void )\r\n");
}


/*
================
rvOpenFileDialog::HandleCommandOK

Handles the pressing of the OK button but either opening a selected folder
or closing the dialog with the resulting filename
================
*/
void rvOpenFileDialog::HandleCommandOK ( void )
{
    Sys_Printf("void rvOpenFileDialog::HandleCommandOK ( void )\r\n");
}


/*
================
rvOpenFileDialog::HandleInitDialog

Handles the init dialog message
================
*/
void rvOpenFileDialog::HandleInitDialog ( void )
{
    Sys_Printf("void rvOpenFileDialog::HandleInitDialog ( void )\r\n");
}


/*
================
rvOpenFileDialog::HandleLookInChange

Handles a selection change within the lookin control
================
*/
void rvOpenFileDialog::HandleLookInChange ( void )
{
    Sys_Printf("void rvOpenFileDialog::HandleLookInChange ( void )\r\n");
}


/*
================
rvOpenFileDialog::SetFilter

Set the extensions available in the dialog
================
*/
void rvOpenFileDialog::SetFilter ( const char* s )
{
    Sys_Printf("void rvOpenFileDialog::SetFilter ( const char* s )\r\n");
}


/*
================
rvOpenFileDialog::DlgProc

Dialog Procedure for the open file dialog
================
*/
INT_PTR rvOpenFileDialog::DlgProc ( HWND wnd, UINT msg, WPARAM wparam, LPARAM lparam )
{
    INT_PTR retVal;
    memset(&retVal, 0, sizeof(INT_PTR));
    Sys_Printf("INT_PTR rvOpenFileDialog::DlgProc ( HWND wnd, UINT msg, WPARAM wparam, LPARAM lparam )\r\n");
    return retVal;
}

