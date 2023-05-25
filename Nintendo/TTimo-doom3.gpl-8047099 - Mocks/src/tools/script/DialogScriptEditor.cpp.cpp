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
#include "../../sys/win32/rc/ScriptEditor_resource.h"

#include "../comafx/DialogGoToLine.h"
#include "DialogScriptEditor.h"

#ifdef ID_DEBUG_MEMORY
#undef new
#undef DEBUG_NEW
#define DEBUG_NEW new
#endif


typedef struct scriptEventInfo_s {
	idStr		name;
	idStr		parms;
	idStr		help;
} scriptEventInfo_t;

static idList<scriptEventInfo_t> scriptEvents;

static DialogScriptEditor *g_ScriptDialog = NULL;

// DialogScriptEditor dialog

static UINT FindDialogMessage = ::RegisterWindowMessage( FINDMSGSTRING );

toolTip_t DialogScriptEditor::toolTips[] = {
	{ IDOK, "save" },
	{ IDCANCEL, "cancel" },
	{ 0, NULL }
};


IMPLEMENT_DYNAMIC(DialogScriptEditor, CDialog)

/*
================
DialogScriptEditor::DialogScriptEditor
================
*/
DialogScriptEditor::DialogScriptEditor( CWnd* pParent /*=NULL*/ )
	: CDialog(DialogScriptEditor::IDD, pParent)
	, findDlg(NULL)
	, matchCase(false)
	, matchWholeWords(false)
	, firstLine(0)
{
}

/*
================
DialogScriptEditor::~DialogScriptEditor
================
*/
DialogScriptEditor::~DialogScriptEditor() {
}

/*
================
DialogScriptEditor::DoDataExchange
================
*/
void DialogScriptEditor::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void DialogScriptEditor::DoDataExchange(CDataExchange* pDX)\r\n");
}


/*
================
DialogScriptEditor::PreTranslateMessage
================
*/
BOOL DialogScriptEditor::PreTranslateMessage( MSG* pMsg ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogScriptEditor::PreTranslateMessage( MSG* pMsg )\r\n");
    return retVal;
}


/*
================
DialogScriptEditor::UpdateStatusBar
================
*/
void DialogScriptEditor::UpdateStatusBar( void ) {
    Sys_Printf("void DialogScriptEditor::UpdateStatusBar( void )\r\n");
}


/*
================
DialogScriptEditor::InitScriptEvents
================
*/
void DialogScriptEditor::InitScriptEvents( void ) {
    Sys_Printf("void DialogScriptEditor::InitScriptEvents( void )\r\n");
}


/*
================
GetScriptEvents
================
*/
bool GetScriptEvents( const char *objectName, CListBox &listBox ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GetScriptEvents( const char *objectName, CListBox &listBox )\r\n");
    return retVal;
}


/*
================
GetFunctionParms
================
*/
bool GetFunctionParms( const char *funcName, CString &parmString ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GetFunctionParms( const char *funcName, CString &parmString )\r\n");
    return retVal;
}


/*
================
GetToolTip
================
*/
bool GetToolTip( const char *name, CString &string ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GetToolTip( const char *name, CString &string )\r\n");
    return retVal;
}


/*
================
DialogScriptEditor::OpenFile
================
*/
void DialogScriptEditor::OpenFile( const char *fileName ) {
    Sys_Printf("void DialogScriptEditor::OpenFile( const char *fileName )\r\n");
}


/*
================
DialogScriptEditor::OnInitDialog
================
*/
BOOL DialogScriptEditor::OnInitDialog()  {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogScriptEditor::OnInitDialog()\r\n");
    return retVal;
}


BEGIN_MESSAGE_MAP(DialogScriptEditor, CDialog)
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
	ON_COMMAND(ID_SCRIPTEDITOR_FIND_NEXT, OnEditFindNext)
	ON_COMMAND(ID_SCRIPTEDITOR_GOTOLINE, OnEditGoToLine)
	ON_REGISTERED_MESSAGE(FindDialogMessage, OnFindDialogMessage)
	ON_NOTIFY(EN_CHANGE, IDC_SCRIPTEDITOR_EDIT_TEXT, OnEnChangeEdit)
	ON_NOTIFY(EN_MSGFILTER, IDC_SCRIPTEDITOR_EDIT_TEXT, OnEnInputEdit)
	ON_BN_CLICKED(IDOK, OnBnClickedOk)
	ON_BN_CLICKED(IDCANCEL, OnBnClickedCancel)
END_MESSAGE_MAP()

/*
================
ScriptEditorInit
================
*/
void ScriptEditorInit( const idDict *spawnArgs ) {
    Sys_Printf("void ScriptEditorInit( const idDict *spawnArgs )\r\n");
}


/*
================
ScriptEditorRun
================
*/
void ScriptEditorRun( void ) {
    Sys_Printf("void ScriptEditorRun( void )\r\n");
}


/*
================
ScriptEditorShutdown
================
*/
void ScriptEditorShutdown( void ) {
    Sys_Printf("void ScriptEditorShutdown( void )\r\n");
}



// DialogScriptEditor message handlers

/*
================
DialogScriptEditor::OnActivate
================
*/
void DialogScriptEditor::OnActivate( UINT nState, CWnd *pWndOther, BOOL bMinimized ) {
    Sys_Printf("void DialogScriptEditor::OnActivate( UINT nState, CWnd *pWndOther, BOOL bMinimized )\r\n");
}


/*
================
DialogScriptEditor::OnToolTipNotify
================
*/
BOOL DialogScriptEditor::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogScriptEditor::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult )\r\n");
    return retVal;
}


/*
================
DialogScriptEditor::OnSetFocus
================
*/
void DialogScriptEditor::OnSetFocus( CWnd *pOldWnd ) {
    Sys_Printf("void DialogScriptEditor::OnSetFocus( CWnd *pOldWnd )\r\n");
}


/*
================
DialogScriptEditor::OnDestroy
================
*/
void DialogScriptEditor::OnDestroy() {
    Sys_Printf("void DialogScriptEditor::OnDestroy()\r\n");
}


/*
================
DialogScriptEditor::OnMove
================
*/
void DialogScriptEditor::OnMove( int x, int y ) {
    Sys_Printf("void DialogScriptEditor::OnMove( int x, int y )\r\n");
}


/*
================
DialogScriptEditor::OnSize
================
*/
#define BORDER_SIZE			0
#define BUTTON_SPACE		4
#define TOOLBAR_HEIGHT		24

void DialogScriptEditor::OnSize( UINT nType, int cx, int cy ) {
    Sys_Printf("void DialogScriptEditor::OnSize( UINT nType, int cx, int cy )\r\n");
}


/*
================
DialogScriptEditor::OnSizing
================
*/
void DialogScriptEditor::OnSizing( UINT nSide, LPRECT lpRect ) {
    Sys_Printf("void DialogScriptEditor::OnSizing( UINT nSide, LPRECT lpRect )\r\n");
}


/*
================
DialogScriptEditor::OnEditGoToLine
================
*/
void DialogScriptEditor::OnEditGoToLine() {
    Sys_Printf("void DialogScriptEditor::OnEditGoToLine()\r\n");
}


/*
================
DialogScriptEditor::OnEditFind
================
*/
void DialogScriptEditor::OnEditFind() {
    Sys_Printf("void DialogScriptEditor::OnEditFind()\r\n");
}


/*
================
DialogScriptEditor::OnEditFindNext
================
*/
void DialogScriptEditor::OnEditFindNext() {
    Sys_Printf("void DialogScriptEditor::OnEditFindNext()\r\n");
}


/*
================
DialogScriptEditor::OnEditReplace
================
*/
void DialogScriptEditor::OnEditReplace() {
    Sys_Printf("void DialogScriptEditor::OnEditReplace()\r\n");
}


/*
================
DialogScriptEditor::OnFindDialogMessage
================
*/
LRESULT DialogScriptEditor::OnFindDialogMessage( WPARAM wParam, LPARAM lParam ) {
    LRESULT retVal;
    memset(&retVal, 0, sizeof(LRESULT));
    Sys_Printf("LRESULT DialogScriptEditor::OnFindDialogMessage( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
DialogScriptEditor::OnEnChangeEdit
================
*/
void DialogScriptEditor::OnEnChangeEdit( NMHDR *pNMHDR, LRESULT *pResult ) {
    Sys_Printf("void DialogScriptEditor::OnEnChangeEdit( NMHDR *pNMHDR, LRESULT *pResult )\r\n");
}


/*
================
DialogScriptEditor::OnEnInputEdit
================
*/
void DialogScriptEditor::OnEnInputEdit( NMHDR *pNMHDR, LRESULT *pResult ) {
    Sys_Printf("void DialogScriptEditor::OnEnInputEdit( NMHDR *pNMHDR, LRESULT *pResult )\r\n");
}


/*
================
DialogScriptEditor::OnBnClickedOk
================
*/
void DialogScriptEditor::OnBnClickedOk() {
    Sys_Printf("void DialogScriptEditor::OnBnClickedOk()\r\n");
}


/*
================
DialogScriptEditor::OnBnClickedCancel
================
*/
void DialogScriptEditor::OnBnClickedCancel() {
    Sys_Printf("void DialogScriptEditor::OnBnClickedCancel()\r\n");
}

