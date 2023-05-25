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

#include "FindDialog.h"

#include "MEMainFrame.h"

IMPLEMENT_DYNAMIC(FindDialog, CDialog)

BEGIN_MESSAGE_MAP(FindDialog, CDialog)
	ON_BN_CLICKED(ID_FIND_NEXT, OnBnClickedFindNext)
END_MESSAGE_MAP()

/**
* Constructor for FindDialog.
*/
FindDialog::FindDialog(CWnd* pParent)
:	CDialog(FindDialog::IDD, pParent) {
		registry.Init("Software\\id Software\\DOOM3\\Tools\\MaterialEditor\\Find");
	parent = (MEMainFrame*)pParent;
}

/**
* Destructor for FindDialog.
*/
FindDialog::~FindDialog() {
}

/**
* Creates and instance of the find dialog.
*/
BOOL FindDialog::Create() {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL FindDialog::Create()\r\n");
    return retVal;
}


/**
* Transfers data to and from the controls in the find dialog.
*/
void FindDialog::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void FindDialog::DoDataExchange(CDataExchange* pDX)\r\n");
}


/**
* Called while the dialog is being initialized to load the find parameters 
* from the registry and set the focus to the correct control.
*/
BOOL FindDialog::OnInitDialog() {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL FindDialog::OnInitDialog()\r\n");
    return retVal;
}


/**
* Triggers a search based on the parameters in the dialog.
*/
void FindDialog::OnBnClickedFindNext() {
    Sys_Printf("void FindDialog::OnBnClickedFindNext()\r\n");
}


/**
* Saves the search parameters and closes the find dialog.
*/
void FindDialog::OnCancel()
{
    Sys_Printf("void FindDialog::OnCancel()\r\n");
}


/**
* Loads the search parameters from the registry and makes sure the controls are properly
* initialized.
*/
void FindDialog::LoadFindSettings() {
    Sys_Printf("void FindDialog::LoadFindSettings()\r\n");
}


/**
* Saves the search parameters to the registry.
*/
void FindDialog::SaveFindSettings() {
    Sys_Printf("void FindDialog::SaveFindSettings()\r\n");
}



