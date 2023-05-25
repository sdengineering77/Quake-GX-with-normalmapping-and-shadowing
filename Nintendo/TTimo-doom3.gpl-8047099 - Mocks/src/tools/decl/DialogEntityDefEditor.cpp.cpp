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

#include "../comafx/CPathTreeCtrl.h"
#include "DialogDeclBrowser.h"
#include "DialogDeclEditor.h"
#include "DialogEntityDefEditor.h"

#ifdef ID_DEBUG_MEMORY
#undef new
#undef DEBUG_NEW
#define DEBUG_NEW new
#endif


// DialogEntityDefEditor dialog

toolTip_t DialogEntityDefEditor::toolTips[] = {
	{ IDC_DECLEDITOR_BUTTON_TEST, "Test Decl" },
	{ IDOK, "Save Decl" },
	{ IDCANCEL, "Cancel" },
	{ 0, NULL }
};


IMPLEMENT_DYNAMIC(DialogEntityDefEditor, CDialog)

/*
================
DialogEntityDefEditor::DialogEntityDefEditor
================
*/
DialogEntityDefEditor::DialogEntityDefEditor( CWnd* pParent /*=NULL*/ )
	: CDialog(DialogEntityDefEditor::IDD, pParent)
	, decl(NULL)
	, firstLine(0)
{
}

/*
================
DialogEntityDefEditor::~DialogEntityDefEditor
================
*/
DialogEntityDefEditor::~DialogEntityDefEditor() {
}

/*
================
DialogEntityDefEditor::DoDataExchange
================
*/
void DialogEntityDefEditor::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void DialogEntityDefEditor::DoDataExchange(CDataExchange* pDX)\r\n");
}


/*
================
DialogEntityDefEditor::PreTranslateMessage
================
*/
BOOL DialogEntityDefEditor::PreTranslateMessage( MSG* pMsg ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogEntityDefEditor::PreTranslateMessage( MSG* pMsg )\r\n");
    return retVal;
}


/*
================
DialogEntityDefEditor::TestDecl
================
*/
bool DialogEntityDefEditor::TestDecl( const idStr &declText ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool DialogEntityDefEditor::TestDecl( const idStr &declText )\r\n");
    return retVal;
}


/*
================
DialogEntityDefEditor::UpdateStatusBar
================
*/
void DialogEntityDefEditor::UpdateStatusBar( void ) {
    Sys_Printf("void DialogEntityDefEditor::UpdateStatusBar( void )\r\n");
}


/*
================
DialogEntityDefEditor::LoadDecl
================
*/
void DialogEntityDefEditor::LoadDecl( idDeclEntityDef *decl ) {
    Sys_Printf("void DialogEntityDefEditor::LoadDecl( idDeclEntityDef *decl )\r\n");
}


/*
=================
DialogEntityDefEditor::PopulateLists
=================
*/
void DialogEntityDefEditor::PopulateLists( const char *declText, const int textLength )
{
    Sys_Printf("void DialogEntityDefEditor::PopulateLists( const char *declText, const int textLength )\r\n");
}


/*
=================
DialogEntityDefEditor::SetInherit
=================
*/

void DialogEntityDefEditor::SetInherit(idStr &inherit)
{
    Sys_Printf("void DialogEntityDefEditor::SetInherit(idStr &inherit)\r\n");
}


/*
================
DialogEntityDefEditor::OnInitDialog
================
*/
BOOL DialogEntityDefEditor::OnInitDialog()  {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogEntityDefEditor::OnInitDialog()\r\n");
    return retVal;
}



BEGIN_MESSAGE_MAP(DialogEntityDefEditor, CDialog)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTW, 0, 0xFFFF, OnToolTipNotify)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTA, 0, 0xFFFF, OnToolTipNotify)
	ON_WM_DESTROY()
	ON_WM_ACTIVATE()
	ON_WM_MOVE()
	ON_WM_SIZE()
	ON_WM_SIZING()
	ON_WM_SETFOCUS()
	ON_CBN_EDITCHANGE(IDC_ENTITYDEFEDITOR_COMBO_INHERIT, OnInheritChange)
	ON_CBN_SELCHANGE(IDC_ENTITYDEFEDITOR_COMBO_INHERIT, OnInheritChange)
	ON_CBN_EDITCHANGE(IDC_ENTITYDEFEDITOR_COMBO_SPAWNCLASS, OnEditChange)
	ON_EN_CHANGE(IDC_ENTITYDEFEDITOR_EDIT_DECLNAME, OnEditChange)
	ON_NOTIFY(EN_MSGFILTER, IDC_DECLEDITOR_EDIT_TEXT, OnEnInputEdit)

	ON_LBN_SELCHANGE(IDC_ENTITYDEFEDITOR_LIST_KEYVALS, OnKeyValChange)

	ON_BN_CLICKED(IDC_ENTITYDEFEDITOR_BUTTON_ADD, OnBnClickedAdd)
	ON_BN_CLICKED(IDC_ENTITYDEFEDITOR_BUTTON_DELETE, OnBnClickedDelete)

	ON_BN_CLICKED(IDC_DECLEDITOR_BUTTON_TEST, OnBnClickedTest)
	ON_BN_CLICKED(IDOK, OnBnClickedOk)
	ON_BN_CLICKED(IDCANCEL, OnBnClickedCancel)

END_MESSAGE_MAP()


// DialogEntityDefEditor message handlers

/*
================
DialogEntityDefEditor::OnActivate
================
*/
void DialogEntityDefEditor::OnActivate( UINT nState, CWnd *pWndOther, BOOL bMinimized ) {
    Sys_Printf("void DialogEntityDefEditor::OnActivate( UINT nState, CWnd *pWndOther, BOOL bMinimized )\r\n");
}


/*
================
DialogEntityDefEditor::OnToolTipNotify
================
*/
BOOL DialogEntityDefEditor::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogEntityDefEditor::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult )\r\n");
    return retVal;
}


/*
================
DialogEntityDefEditor::OnSetFocus
================
*/
void DialogEntityDefEditor::OnSetFocus( CWnd *pOldWnd ) {
    Sys_Printf("void DialogEntityDefEditor::OnSetFocus( CWnd *pOldWnd )\r\n");
}


/*
================
DialogEntityDefEditor::OnDestroy
================
*/
void DialogEntityDefEditor::OnDestroy() {
    Sys_Printf("void DialogEntityDefEditor::OnDestroy()\r\n");
}


/*
================
DialogEntityDefEditor::OnMove
================
*/
void DialogEntityDefEditor::OnMove( int x, int y ) {
    Sys_Printf("void DialogEntityDefEditor::OnMove( int x, int y )\r\n");
}


/*
================
DialogEntityDefEditor::OnSize
================
*/
#define BORDER_SIZE			4
#define BUTTON_SPACE		4
#define CONTROL_HEIGHT		24
#define TOOLBAR_HEIGHT		24

void DialogEntityDefEditor::OnSize( UINT nType, int cx, int cy ) {
    Sys_Printf("void DialogEntityDefEditor::OnSize( UINT nType, int cx, int cy )\r\n");
}


/*
================
DialogEntityDefEditor::OnSizing
================
*/
void DialogEntityDefEditor::OnSizing( UINT nSide, LPRECT lpRect ) {
    Sys_Printf("void DialogEntityDefEditor::OnSizing( UINT nSide, LPRECT lpRect )\r\n");
}


/*
================
DialogEntityDefEditor::OnEditChange
================
*/
void DialogEntityDefEditor::OnEditChange( ) {
    Sys_Printf("void DialogEntityDefEditor::OnEditChange( )\r\n");
}


/*
================
DialogEntityDefEditor::OnInheritChange
================
*/
void DialogEntityDefEditor::OnInheritChange( ) {
    Sys_Printf("void DialogEntityDefEditor::OnInheritChange( )\r\n");
}



/*
================
DialogEntityDefEditor::OnEnInputEdit
================
*/
void DialogEntityDefEditor::OnEnInputEdit( NMHDR *pNMHDR, LRESULT *pResult ) {
    Sys_Printf("void DialogEntityDefEditor::OnEnInputEdit( NMHDR *pNMHDR, LRESULT *pResult )\r\n");
}


/*
================
DialogEntityDefEditor::BuildDeclText
================
*/

void DialogEntityDefEditor::BuildDeclText( idStr &declText )
{
    Sys_Printf("void DialogEntityDefEditor::BuildDeclText( idStr &declText )\r\n");
}


/*
================
DialogEntityDefEditor::OnBnClickedTest
================
*/
void DialogEntityDefEditor::OnBnClickedTest() {
    Sys_Printf("void DialogEntityDefEditor::OnBnClickedTest()\r\n");
}


/*
================
DialogEntityDefEditor::OnBnClickedOk
================
*/
void DialogEntityDefEditor::OnBnClickedOk() {
    Sys_Printf("void DialogEntityDefEditor::OnBnClickedOk()\r\n");
}


/*
================
DialogEntityDefEditor::OnBnClickedCancel
================
*/
void DialogEntityDefEditor::OnBnClickedCancel() {
    Sys_Printf("void DialogEntityDefEditor::OnBnClickedCancel()\r\n");
}


/*
================
DialogEntityDefEditor::OnKeyValChange
================
*/
void DialogEntityDefEditor::OnKeyValChange() {
    Sys_Printf("void DialogEntityDefEditor::OnKeyValChange()\r\n");
}


/*
================
DialogEntityDefEditor::OnBnClickedAdd
================
*/
void DialogEntityDefEditor::OnBnClickedAdd() {
    Sys_Printf("void DialogEntityDefEditor::OnBnClickedAdd()\r\n");
}


/*
================
DialogEntityDefEditor::OnBnClickedDelete
================
*/
void DialogEntityDefEditor::OnBnClickedDelete() {
    Sys_Printf("void DialogEntityDefEditor::OnBnClickedDelete()\r\n");
}

