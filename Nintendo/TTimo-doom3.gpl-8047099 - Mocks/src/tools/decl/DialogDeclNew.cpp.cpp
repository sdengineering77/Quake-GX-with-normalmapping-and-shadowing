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

#include "../../sys/win32/rc/DeclEditor_resource.h"

#include "../comafx/CPathTreeCtrl.h"
#include "DialogDeclBrowser.h"
#include "DialogDeclNew.h"

#ifdef ID_DEBUG_MEMORY
#undef new
#undef DEBUG_NEW
#define DEBUG_NEW new
#endif


toolTip_t DialogDeclNew::toolTips[] = {
	{ IDC_DECLNEW_COMBO_NEW_TYPE, "select the declaration type to create" },
	{ IDC_DECLNEW_EDIT_NEW_NAME, "enter a name for the new declaration" },
	{ IDC_DECLNEW_EDIT_NEW_FILE, "enter the name of the file to add the declaration to" },
	{ IDC_DECLNEW_BUTTON_NEW_FILE, "select existing file to add the declaration to" },
	{ IDOK, "create new declaration" },
	{ IDCANCEL, "cancel" },
	{ 0, NULL }
};


IMPLEMENT_DYNAMIC(DialogDeclNew, CDialog)

/*
================
DialogDeclNew::DialogDeclNew
================
*/
DialogDeclNew::DialogDeclNew( CWnd* pParent /*=NULL*/ )
	: CDialog(DialogDeclNew::IDD, pParent)
	, declTree(NULL)
	, newDecl(NULL)
{
}

/*
================
DialogDeclNew::~DialogDeclNew
================
*/
DialogDeclNew::~DialogDeclNew() {
}

/*
================
DialogDeclNew::DoDataExchange
================
*/
void DialogDeclNew::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void DialogDeclNew::DoDataExchange(CDataExchange* pDX)\r\n");
}


/*
================
DialogDeclNew::InitTypeList
================
*/
void DialogDeclNew::InitTypeList( void ) {
    Sys_Printf("void DialogDeclNew::InitTypeList( void )\r\n");
}


/*
================
DialogDeclNew::OnInitDialog
================
*/
BOOL DialogDeclNew::OnInitDialog()  {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogDeclNew::OnInitDialog()\r\n");
    return retVal;
}



BEGIN_MESSAGE_MAP(DialogDeclNew, CDialog)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTW, 0, 0xFFFF, OnToolTipNotify)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTA, 0, 0xFFFF, OnToolTipNotify)
	ON_WM_DESTROY()
	ON_WM_ACTIVATE()
	ON_WM_SETFOCUS()
	ON_BN_CLICKED(IDC_DECLNEW_BUTTON_NEW_FILE, OnBnClickedFile)
	ON_BN_CLICKED(IDOK, OnBnClickedOk)
	ON_BN_CLICKED(IDCANCEL, OnBnClickedCancel)
END_MESSAGE_MAP()


// DialogDeclNew message handlers

/*
================
DialogDeclNew::OnActivate
================
*/
void DialogDeclNew::OnActivate( UINT nState, CWnd *pWndOther, BOOL bMinimized ) {
    Sys_Printf("void DialogDeclNew::OnActivate( UINT nState, CWnd *pWndOther, BOOL bMinimized )\r\n");
}


/*
================
DialogDeclNew::OnToolTipNotify
================
*/
BOOL DialogDeclNew::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogDeclNew::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult )\r\n");
    return retVal;
}


/*
================
DialogDeclNew::OnSetFocus
================
*/
void DialogDeclNew::OnSetFocus( CWnd *pOldWnd ) {
    Sys_Printf("void DialogDeclNew::OnSetFocus( CWnd *pOldWnd )\r\n");
}


/*
================
DialogDeclNew::OnDestroy
================
*/
void DialogDeclNew::OnDestroy() {
    Sys_Printf("void DialogDeclNew::OnDestroy()\r\n");
}


/*
================
DialogDeclNew::OnBnClickedFile
================
*/
void DialogDeclNew::OnBnClickedFile() {
    Sys_Printf("void DialogDeclNew::OnBnClickedFile()\r\n");
}


/*
================
DialogDeclNew::OnBnClickedOk
================
*/
void DialogDeclNew::OnBnClickedOk() {
    Sys_Printf("void DialogDeclNew::OnBnClickedOk()\r\n");
}


/*
================
DialogDeclNew::OnBnClickedCancel
================
*/
void DialogDeclNew::OnBnClickedCancel() {
    Sys_Printf("void DialogDeclNew::OnBnClickedCancel()\r\n");
}

