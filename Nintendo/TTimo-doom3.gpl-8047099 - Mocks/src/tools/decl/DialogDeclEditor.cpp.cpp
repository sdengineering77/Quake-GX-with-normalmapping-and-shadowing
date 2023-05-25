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

#include "../../sys/win32/rc/Common_resource.h"
#include "../../sys/win32/rc/DeclEditor_resource.h"

#include "../comafx/DialogGoToLine.h"
#include "../comafx/CPathTreeCtrl.h"
#include "DialogDeclBrowser.h"
#include "DialogDeclEditor.h"

#ifdef ID_DEBUG_MEMORY
#undef new
#undef DEBUG_NEW
#define DEBUG_NEW new
#endif


// DialogDeclEditor dialog

static UINT FindDialogMessage = ::RegisterWindowMessage( FINDMSGSTRING );

toolTip_t DialogDeclEditor::toolTips[] = {
	{ IDC_DECLEDITOR_BUTTON_TEST, "test decl" },
	{ IDOK, "save decl" },
	{ IDCANCEL, "cancel" },
	{ 0, NULL }
};


IMPLEMENT_DYNAMIC(DialogDeclEditor, CDialog)

/*
================
DialogDeclEditor::DialogDeclEditor
================
*/
DialogDeclEditor::DialogDeclEditor( CWnd* pParent /*=NULL*/ )
	: CDialog(DialogDeclEditor::IDD, pParent)
	, findDlg(NULL)
	, matchCase(false)
	, matchWholeWords(false)
	, decl(NULL)
	, firstLine(0)
{
}

/*
================
DialogDeclEditor::~DialogDeclEditor
================
*/
DialogDeclEditor::~DialogDeclEditor() {
}

/*
================
DialogDeclEditor::DoDataExchange
================
*/
void DialogDeclEditor::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void DialogDeclEditor::DoDataExchange(CDataExchange* pDX)\r\n");
}


/*
================
DialogDeclEditor::PreTranslateMessage
================
*/
BOOL DialogDeclEditor::PreTranslateMessage( MSG* pMsg ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogDeclEditor::PreTranslateMessage( MSG* pMsg )\r\n");
    return retVal;
}


/*
================
DialogDeclEditor::TestDecl
================
*/
bool DialogDeclEditor::TestDecl( const idStr &declText ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool DialogDeclEditor::TestDecl( const idStr &declText )\r\n");
    return retVal;
}


/*
================
DialogDeclEditor::UpdateStatusBar
================
*/
void DialogDeclEditor::UpdateStatusBar( void ) {
    Sys_Printf("void DialogDeclEditor::UpdateStatusBar( void )\r\n");
}


/*
================
DialogDeclEditor::LoadDecl
================
*/
void DialogDeclEditor::LoadDecl( idDecl *decl ) {
    Sys_Printf("void DialogDeclEditor::LoadDecl( idDecl *decl )\r\n");
}


/*
================
DialogDeclEditor::OnInitDialog
================
*/
BOOL DialogDeclEditor::OnInitDialog()  {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogDeclEditor::OnInitDialog()\r\n");
    return retVal;
}



BEGIN_MESSAGE_MAP(DialogDeclEditor, CDialog)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTW, 0, 0xFFFF, OnToolTipNotify)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTA, 0, 0xFFFF, OnToolTipNotify)
	ON_WM_DESTROY()
	ON_WM_ACTIVATE()
	ON_WM_MOVE()
	ON_WM_SIZE()
	ON_WM_SIZING()
	ON_WM_SETFOCUS()
	ON_COMMAND(ID_EDIT_FIND, OnEditFind)
	ON_COMMAND(ID_EDIT_REPLACE, OnEditReplace)
	ON_COMMAND(ID_DECLEDITOR_FIND_NEXT, OnEditFindNext)
	ON_COMMAND(ID_DECLEDITOR_GOTOLINE, OnEditGoToLine)
	ON_REGISTERED_MESSAGE(FindDialogMessage, OnFindDialogMessage)
	ON_NOTIFY(EN_CHANGE, IDC_DECLEDITOR_EDIT_TEXT, OnEnChangeEdit)
	ON_NOTIFY(EN_MSGFILTER, IDC_DECLEDITOR_EDIT_TEXT, OnEnInputEdit)
	ON_BN_CLICKED(IDC_DECLEDITOR_BUTTON_TEST, OnBnClickedTest)
	ON_BN_CLICKED(IDOK, OnBnClickedOk)
	ON_BN_CLICKED(IDCANCEL, OnBnClickedCancel)
END_MESSAGE_MAP()


// DialogDeclEditor message handlers

/*
================
DialogDeclEditor::OnActivate
================
*/
void DialogDeclEditor::OnActivate( UINT nState, CWnd *pWndOther, BOOL bMinimized ) {
    Sys_Printf("void DialogDeclEditor::OnActivate( UINT nState, CWnd *pWndOther, BOOL bMinimized )\r\n");
}


/*
================
DialogDeclEditor::OnToolTipNotify
================
*/
BOOL DialogDeclEditor::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogDeclEditor::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult )\r\n");
    return retVal;
}


/*
================
DialogDeclEditor::OnSetFocus
================
*/
void DialogDeclEditor::OnSetFocus( CWnd *pOldWnd ) {
    Sys_Printf("void DialogDeclEditor::OnSetFocus( CWnd *pOldWnd )\r\n");
}


/*
================
DialogDeclEditor::OnDestroy
================
*/
void DialogDeclEditor::OnDestroy() {
    Sys_Printf("void DialogDeclEditor::OnDestroy()\r\n");
}


/*
================
DialogDeclEditor::OnMove
================
*/
void DialogDeclEditor::OnMove( int x, int y ) {
    Sys_Printf("void DialogDeclEditor::OnMove( int x, int y )\r\n");
}


/*
================
DialogDeclEditor::OnSize
================
*/
#define BORDER_SIZE			0
#define BUTTON_SPACE		4
#define TOOLBAR_HEIGHT		24

void DialogDeclEditor::OnSize( UINT nType, int cx, int cy ) {
    Sys_Printf("void DialogDeclEditor::OnSize( UINT nType, int cx, int cy )\r\n");
}


/*
================
DialogDeclEditor::OnSizing
================
*/
void DialogDeclEditor::OnSizing( UINT nSide, LPRECT lpRect ) {
    Sys_Printf("void DialogDeclEditor::OnSizing( UINT nSide, LPRECT lpRect )\r\n");
}


/*
================
DialogDeclEditor::OnEditGoToLine
================
*/
void DialogDeclEditor::OnEditGoToLine() {
    Sys_Printf("void DialogDeclEditor::OnEditGoToLine()\r\n");
}


/*
================
DialogDeclEditor::OnEditFind
================
*/
void DialogDeclEditor::OnEditFind() {
    Sys_Printf("void DialogDeclEditor::OnEditFind()\r\n");
}


/*
================
DialogDeclEditor::OnEditFindNext
================
*/
void DialogDeclEditor::OnEditFindNext() {
    Sys_Printf("void DialogDeclEditor::OnEditFindNext()\r\n");
}


/*
================
DialogDeclEditor::OnEditReplace
================
*/
void DialogDeclEditor::OnEditReplace() {
    Sys_Printf("void DialogDeclEditor::OnEditReplace()\r\n");
}


/*
================
DialogDeclEditor::OnFindDialogMessage
================
*/
LRESULT DialogDeclEditor::OnFindDialogMessage( WPARAM wParam, LPARAM lParam ) {
    LRESULT retVal;
    memset(&retVal, 0, sizeof(LRESULT));
    Sys_Printf("LRESULT DialogDeclEditor::OnFindDialogMessage( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
DialogDeclEditor::OnEnChangeEdit
================
*/
void DialogDeclEditor::OnEnChangeEdit( NMHDR *pNMHDR, LRESULT *pResult ) {
    Sys_Printf("void DialogDeclEditor::OnEnChangeEdit( NMHDR *pNMHDR, LRESULT *pResult )\r\n");
}


/*
================
DialogDeclEditor::OnEnInputEdit
================
*/
void DialogDeclEditor::OnEnInputEdit( NMHDR *pNMHDR, LRESULT *pResult ) {
    Sys_Printf("void DialogDeclEditor::OnEnInputEdit( NMHDR *pNMHDR, LRESULT *pResult )\r\n");
}


/*
================
DialogDeclEditor::OnBnClickedTest
================
*/
void DialogDeclEditor::OnBnClickedTest() {
    Sys_Printf("void DialogDeclEditor::OnBnClickedTest()\r\n");
}


/*
================
DialogDeclEditor::OnBnClickedOk
================
*/
void DialogDeclEditor::OnBnClickedOk() {
    Sys_Printf("void DialogDeclEditor::OnBnClickedOk()\r\n");
}


/*
================
DialogDeclEditor::OnBnClickedCancel
================
*/
void DialogDeclEditor::OnBnClickedCancel() {
    Sys_Printf("void DialogDeclEditor::OnBnClickedCancel()\r\n");
}

