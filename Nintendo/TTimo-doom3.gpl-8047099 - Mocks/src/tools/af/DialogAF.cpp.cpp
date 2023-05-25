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
#include "DialogAFView.h"
#include "DialogAFProperties.h"
#include "DialogAFBody.h"
#include "DialogAFConstraint.h"

#ifdef ID_DEBUG_MEMORY
#undef new
#undef DEBUG_NEW
#define DEBUG_NEW new
#endif

// DialogAF

#define AFTAB_VIEW				0x01
#define AFTAB_PROPERTIES		0x02
#define AFTAB_BODIES			0x03
#define AFTAB_CONSTRAINTS		0x04

toolTip_t DialogAF::toolTips[] = {
	{ IDC_COMBO_AF, "select an articulated figure for editing" },
	{ IDC_BUTTON_AF_NEW, "create a new articulated figure" },
	{ IDC_BUTTON_AF_DELETE, "delete the selected articulated figure" },
	{ IDC_BUTTON_AF_SPAWN, "spawn ingame entity using the selected articulated figure" },
	{ IDC_BUTTON_AF_TPOSE, "set ingame entity using the selected articulated figure back into T-Pose" },
	{ IDC_BUTTON_AF_KILL, "kill ingame entity using the selected articulated figure" },
	{ IDC_BUTTON_AF_SAVE, "save the selected articulated figure" },
	{ IDCANCEL, "cancel all changes to all articulated figures" },
	{ 0, NULL }
};


DialogAF *g_AFDialog = NULL;


IMPLEMENT_DYNAMIC(DialogAF, CDialog)

/*
================
DialogAF::DialogAF
================
*/
DialogAF::DialogAF( CWnd* pParent /*=NULL*/ )
	: CDialog(DialogAF::IDD, pParent)
	, file(NULL)
{
	wndTabs = NULL;
	wndTabDisplay = NULL;
}

/*
================
DialogAF::~DialogAF
================
*/
DialogAF::~DialogAF() {
}

/*
================
DialogAF::DoDataExchange
================
*/
void DialogAF::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void DialogAF::DoDataExchange(CDataExchange* pDX)\r\n");
}


/*
================
DialogAF::LoadFile
================
*/
void DialogAF::LoadFile( idDeclAF *af ) {
    Sys_Printf("void DialogAF::LoadFile( idDeclAF *af )\r\n");
}


/*
================
DialogAF::LoadFile
================
*/
void DialogAF::SaveFile( void ) {
    Sys_Printf("void DialogAF::SaveFile( void )\r\n");
}


/*
================
DialogAF::SetFileModified
================
*/
void DialogAF::SetFileModified( void ) {
    Sys_Printf("void DialogAF::SetFileModified( void )\r\n");
}


/*
================
DialogAF::ReloadFile
================
*/
void DialogAF::ReloadFile( void ) {
    Sys_Printf("void DialogAF::ReloadFile( void )\r\n");
}


/*
================
DialogAF::InitAFList
================
*/
void DialogAF::InitAFList( void ) {
    Sys_Printf("void DialogAF::InitAFList( void )\r\n");
}


/*
================
DialogAF::AddTabItem
================
*/
void DialogAF::AddTabItem( int id, const char *name ) {
    Sys_Printf("void DialogAF::AddTabItem( int id, const char *name )\r\n");
}


/*
================
DialogAF::SetTab
================
*/
void DialogAF::SetTab( int id ) {
    Sys_Printf("void DialogAF::SetTab( int id )\r\n");
}


/*
================
DialogAF::SetTabChildPos

  position the child dialog box
================
*/
void DialogAF::SetTabChildPos( void ) {
    Sys_Printf("void DialogAF::SetTabChildPos( void )\r\n");
}


/*
================
DialogAF::OnInitDialog
================
*/
BOOL DialogAF::OnInitDialog()  {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogAF::OnInitDialog()\r\n");
    return retVal;
}



BEGIN_MESSAGE_MAP(DialogAF, CDialog)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTW, 0, 0xFFFF, OnToolTipNotify)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTA, 0, 0xFFFF, OnToolTipNotify)
	ON_NOTIFY(TCN_SELCHANGE, IDC_DIALOG_AF_TAB_MODE, OnTcnSelchangeTabMode)
	ON_WM_DESTROY()
	ON_WM_ACTIVATE()
	ON_WM_MOVE()
	ON_WM_SETFOCUS()
	ON_CBN_SELCHANGE(IDC_COMBO_AF, OnCbnSelchangeComboAf)
	ON_BN_CLICKED(IDC_BUTTON_AF_NEW, OnBnClickedButtonAfNew)
	ON_BN_CLICKED(IDC_BUTTON_AF_DELETE, OnBnClickedButtonAfDelete)
	ON_BN_CLICKED(IDC_BUTTON_AF_SAVE, OnBnClickedButtonAfSave)
	ON_BN_CLICKED(IDC_BUTTON_AF_SPAWN, OnBnClickedButtonAfSpawn)
	ON_BN_CLICKED(IDCANCEL, OnBnClickedCancel)
	ON_BN_CLICKED(IDC_BUTTON_AF_KILL, OnBnClickedButtonAfKill)
	ON_BN_CLICKED(IDC_BUTTON_AF_TPOSE, OnBnClickedButtonAfTpose)
END_MESSAGE_MAP()


/*
================
AFEditorInit
================
*/
void AFEditorInit( const idDict *spawnArgs ) {
    Sys_Printf("void AFEditorInit( const idDict *spawnArgs )\r\n");
}


/*
================
AFEditorRun
================
*/
void AFEditorRun( void ) {
    Sys_Printf("void AFEditorRun( void )\r\n");
}


/*
================
AFEditorShutdown
================
*/
void AFEditorShutdown( void ) {
    Sys_Printf("void AFEditorShutdown( void )\r\n");
}



// DialogAF message handlers

/*
================
DialogAF::OnActivate
================
*/
void DialogAF::OnActivate( UINT nState, CWnd *pWndOther, BOOL bMinimized ) {
    Sys_Printf("void DialogAF::OnActivate( UINT nState, CWnd *pWndOther, BOOL bMinimized )\r\n");
}


/*
================
DialogAF::OnToolTipNotify
================
*/
BOOL DialogAF::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogAF::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult )\r\n");
    return retVal;
}


/*
================
DialogAF::OnSetFocus
================
*/
void DialogAF::OnSetFocus( CWnd *pOldWnd ) {
    Sys_Printf("void DialogAF::OnSetFocus( CWnd *pOldWnd )\r\n");
}


/*
================
DialogAF::OnDestroy
================
*/
void DialogAF::OnDestroy() {
    Sys_Printf("void DialogAF::OnDestroy()\r\n");
}


/*
================
DialogAF::OnMove
================
*/
void DialogAF::OnMove( int x, int y ) {
    Sys_Printf("void DialogAF::OnMove( int x, int y )\r\n");
}


/*
================
DialogAF::OnTcnSelchangeTabMode

  tab control notification handler
================
*/
void DialogAF::OnTcnSelchangeTabMode( NMHDR *pNMHDR, LRESULT *pResult ) {
    Sys_Printf("void DialogAF::OnTcnSelchangeTabMode( NMHDR *pNMHDR, LRESULT *pResult )\r\n");
}


/*
================
DialogAF::OnCbnSelchangeComboAf
================
*/
void DialogAF::OnCbnSelchangeComboAf() {
    Sys_Printf("void DialogAF::OnCbnSelchangeComboAf()\r\n");
}


/*
================
DialogAF::OnBnClickedButtonAfNew
================
*/
void DialogAF::OnBnClickedButtonAfNew() {
    Sys_Printf("void DialogAF::OnBnClickedButtonAfNew()\r\n");
}


/*
================
DialogAF::OnBnClickedButtonAfDelete
================
*/
void DialogAF::OnBnClickedButtonAfDelete() {
    Sys_Printf("void DialogAF::OnBnClickedButtonAfDelete()\r\n");
}


/*
================
DialogAF::OnBnClickedButtonAfSpawn
================
*/
void DialogAF::OnBnClickedButtonAfSpawn() {
    Sys_Printf("void DialogAF::OnBnClickedButtonAfSpawn()\r\n");
}


/*
================
DialogAF::OnBnClickedButtonAfTpose
================
*/
void DialogAF::OnBnClickedButtonAfTpose() {
    Sys_Printf("void DialogAF::OnBnClickedButtonAfTpose()\r\n");
}


/*
================
DialogAF::OnBnClickedButtonAfKill
================
*/
void DialogAF::OnBnClickedButtonAfKill() {
    Sys_Printf("void DialogAF::OnBnClickedButtonAfKill()\r\n");
}


/*
================
DialogAF::OnBnClickedButtonAfSave
================
*/
void DialogAF::OnBnClickedButtonAfSave() {
    Sys_Printf("void DialogAF::OnBnClickedButtonAfSave()\r\n");
}


/*
================
DialogAF::OnBnClickedCancel
================
*/
void DialogAF::OnBnClickedCancel() {
    Sys_Printf("void DialogAF::OnBnClickedCancel()\r\n");
}



// General convenience routines

/*
================
AFDialogSetFileModified
================
*/
void AFDialogSetFileModified( void ) {
    Sys_Printf("void AFDialogSetFileModified( void )\r\n");
}


/*
================
AFDialogReloadFile
================
*/
void AFDialogReloadFile( void ) {
    Sys_Printf("void AFDialogReloadFile( void )\r\n");
}

