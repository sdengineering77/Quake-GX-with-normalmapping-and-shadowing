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

#include "../../sys/win32/rc/AFEditor_resource.h"

#include "DialogAF.h"
#include "DialogAFName.h"

// DialogAFName dialog

IMPLEMENT_DYNAMIC(DialogAFName, CDialog)

/*
================
DialogAFName::DialogAFName
================
*/
DialogAFName::DialogAFName(CWnd* pParent /*=NULL*/)
	: CDialog(DialogAFName::IDD, pParent)
	, m_combo(NULL)
{
}

/*
================
DialogAFName::~DialogAFName
================
*/
DialogAFName::~DialogAFName() {
}

/*
================
DialogAFName::DoDataExchange
================
*/
void DialogAFName::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void DialogAFName::DoDataExchange(CDataExchange* pDX)\r\n");
}


/*
================
DialogAFName::SetName
================
*/
void DialogAFName::SetName( CString &str ) {
    Sys_Printf("void DialogAFName::SetName( CString &str )\r\n");
}


/*
================
DialogAFName::GetName
================
*/
void DialogAFName::GetName( CString &str ) {
    Sys_Printf("void DialogAFName::GetName( CString &str )\r\n");
}


/*
================
DialogAFName::SetComboBox
================
*/
void DialogAFName::SetComboBox( CComboBox *combo ) {
    Sys_Printf("void DialogAFName::SetComboBox( CComboBox *combo )\r\n");
}


/*
================
DialogAFName::OnInitDialog
================
*/
BOOL DialogAFName::OnInitDialog()  {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogAFName::OnInitDialog()\r\n");
    return retVal;
}


/*
================
EditVerifyName
================
*/
void EditVerifyName( CEdit *edit ) {
    Sys_Printf("void EditVerifyName( CEdit *edit )\r\n");
}



BEGIN_MESSAGE_MAP(DialogAFName, CDialog)
	ON_BN_CLICKED(IDOK, OnBnClickedOk)
	ON_EN_CHANGE(IDC_EDIT_AF_NAME, OnEnChangeEditAfName)
END_MESSAGE_MAP()


// DialogAFName message handlers

void DialogAFName::OnBnClickedOk() {
    Sys_Printf("void DialogAFName::OnBnClickedOk()\r\n");
}


void DialogAFName::OnEnChangeEditAfName() {
    Sys_Printf("void DialogAFName::OnEnChangeEditAfName()\r\n");
}

