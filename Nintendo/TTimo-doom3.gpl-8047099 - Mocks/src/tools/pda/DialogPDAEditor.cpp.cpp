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

#include "../../game/game.h"
#include "../../sys/win32/win_local.h"
#include "../../sys/win32/rc/common_resource.h"
#include "../../sys/win32/rc/PDAEditor_resource.h"
#include "../comafx/DialogName.h"

#include "DialogPDAEditor.h"

#ifdef ID_DEBUG_MEMORY
#undef new
#undef DEBUG_NEW
#define DEBUG_NEW new
#endif

/////////////////////////////////////////////////////////////////////////////
// CCDialogPDAEditor dialog
CDialogPDAEditor *g_PDAEditorDialog = NULL;


CDialogPDAEditor::CDialogPDAEditor(CWnd* pParent /*=NULL*/)
	: CDialog(CDialogPDAEditor::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDialogPDAEditor)
	//}}AFX_DATA_INIT
}


void CDialogPDAEditor::DoDataExchange(CDataExchange* pDX)
{
    Sys_Printf("void CDialogPDAEditor::DoDataExchange(CDataExchange* pDX)\r\n");
}



BEGIN_MESSAGE_MAP(CDialogPDAEditor, CDialog)
	//{{AFX_MSG_MAP(CDialogPDAEditor)
	ON_LBN_SELCHANGE( IDC_LIST_PDAS, OnSelChangePDA )
	ON_BN_CLICKED( IDC_BUTTON_SAVE, OnBtnClickedSave )
	ON_BN_CLICKED( IDC_BUTTON_RANDOMID, OnBtnClickedRandom )
	ON_BN_CLICKED( IDC_BUTTON_PDA_ADD, OnBtnClickedPDAAdd )
	ON_BN_CLICKED( IDC_BUTTON_PDA_DEL, OnBtnClickedPDADel )
	ON_BN_CLICKED( IDC_BUTTON_EMAIL_ADD, OnBtnClickedEmailAdd )
	ON_BN_CLICKED( IDC_BUTTON_EMAIL_EDIT, OnBtnClickedEmailEdit )
	ON_BN_CLICKED( IDC_BUTTON_EMAIL_DELETE, OnBtnClickedEmailDel )
	ON_BN_CLICKED( IDC_BUTTON_AUDIO_ADD, OnBtnClickedAudioAdd )
	ON_BN_CLICKED( IDC_BUTTON_AUDIO_EDIT, OnBtnClickedAudioEdit )
	ON_BN_CLICKED( IDC_BUTTON_AUDIO_DELETE, OnBtnClickedAudioDel )
	ON_BN_CLICKED( IDC_BUTTON_VIDEO_ADD, OnBtnClickedVideoAdd )
	ON_BN_CLICKED( IDC_BUTTON_VIDEO_EDIT, OnBtnClickedVideoEdit )
	ON_BN_CLICKED( IDC_BUTTON_VIDEO_DELETE, OnBtnClickedVideoDel )
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDialogPDAEditor message handlers

void PDAEditorInit( const idDict *spawnArgs ) {
    Sys_Printf("void PDAEditorInit( const idDict *spawnArgs )\r\n");
}


void PDAEditorRun( void ) {
    Sys_Printf("void PDAEditorRun( void )\r\n");
}


void PDAEditorShutdown( void ) {
    Sys_Printf("void PDAEditorShutdown( void )\r\n");
}


void CDialogPDAEditor::OnActivate( UINT nState, CWnd *pWndOther, BOOL bMinimized ) {
    Sys_Printf("void CDialogPDAEditor::OnActivate( UINT nState, CWnd *pWndOther, BOOL bMinimized )\r\n");
}


void CDialogPDAEditor::OnMove( int x, int y ) {
    Sys_Printf("void CDialogPDAEditor::OnMove( int x, int y )\r\n");
}


void CDialogPDAEditor::OnDestroy() {
    Sys_Printf("void CDialogPDAEditor::OnDestroy()\r\n");
}


BOOL CDialogPDAEditor::OnInitDialog() 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDialogPDAEditor::OnInitDialog()\r\n");
    return retVal;
}


BOOL CDialogPDAEditor::PreTranslateMessage(MSG* pMsg)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDialogPDAEditor::PreTranslateMessage(MSG* pMsg)\r\n");
    return retVal;
}


void CDialogPDAEditor::PopulatePDAList()
{
    Sys_Printf("void CDialogPDAEditor::PopulatePDAList()\r\n");
}


void CDialogPDAEditor::OnSelChangePDA()
{
    Sys_Printf("void CDialogPDAEditor::OnSelChangePDA()\r\n");
}


void CDialogPDAEditor::OnBtnClickedSave()
{
    Sys_Printf("void CDialogPDAEditor::OnBtnClickedSave()\r\n");
}


void CDialogPDAEditor::OnBtnClickedRandom()
{
    Sys_Printf("void CDialogPDAEditor::OnBtnClickedRandom()\r\n");
}


class CDialogPDAAdd : public CDialog
{
public:
	CDialogPDAAdd() : CDialog(IDD_DIALOG_PDA_ADD) {}
	CString name;
	void OnOK() {
    Sys_Printf("void OnOK()\r\n");
}

};

void CDialogPDAEditor::OnBtnClickedPDAAdd()
{
    Sys_Printf("void CDialogPDAEditor::OnBtnClickedPDAAdd()\r\n");
}


void CDialogPDAEditor::OnBtnClickedPDADel()
{
    Sys_Printf("void CDialogPDAEditor::OnBtnClickedPDADel()\r\n");
}


void CDialogPDAEditor::OnBtnClickedEmailAdd()
{
    Sys_Printf("void CDialogPDAEditor::OnBtnClickedEmailAdd()\r\n");
}


void CDialogPDAEditor::OnBtnClickedEmailEdit()
{
    Sys_Printf("void CDialogPDAEditor::OnBtnClickedEmailEdit()\r\n");
}


void CDialogPDAEditor::OnBtnClickedEmailDel()
{
    Sys_Printf("void CDialogPDAEditor::OnBtnClickedEmailDel()\r\n");
}


void CDialogPDAEditor::OnBtnClickedAudioAdd()
{
    Sys_Printf("void CDialogPDAEditor::OnBtnClickedAudioAdd()\r\n");
}


void CDialogPDAEditor::OnBtnClickedAudioEdit()
{
    Sys_Printf("void CDialogPDAEditor::OnBtnClickedAudioEdit()\r\n");
}


void CDialogPDAEditor::OnBtnClickedAudioDel()
{
    Sys_Printf("void CDialogPDAEditor::OnBtnClickedAudioDel()\r\n");
}


void CDialogPDAEditor::OnBtnClickedVideoAdd()
{
    Sys_Printf("void CDialogPDAEditor::OnBtnClickedVideoAdd()\r\n");
}


void CDialogPDAEditor::OnBtnClickedVideoEdit()
{
    Sys_Printf("void CDialogPDAEditor::OnBtnClickedVideoEdit()\r\n");
}


void CDialogPDAEditor::OnBtnClickedVideoDel()
{
    Sys_Printf("void CDialogPDAEditor::OnBtnClickedVideoDel()\r\n");
}





CDialogPDAEditEmail::CDialogPDAEditEmail(CWnd* pParent /*=NULL*/)
	: CDialog(CDialogPDAEditEmail::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDialogPDAEditEmail)
	//}}AFX_DATA_INIT
}


void CDialogPDAEditEmail::DoDataExchange(CDataExchange* pDX)
{
    Sys_Printf("void CDialogPDAEditEmail::DoDataExchange(CDataExchange* pDX)\r\n");
}



BEGIN_MESSAGE_MAP(CDialogPDAEditEmail, CDialog)
	//{{AFX_MSG_MAP(CDialogPDAEditEmail)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDialogPDAEditor message handlers

BOOL CDialogPDAEditEmail::OnInitDialog() 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDialogPDAEditEmail::OnInitDialog()\r\n");
    return retVal;
}


void CDialogPDAEditEmail::SetName( CString &_name )
{
    Sys_Printf("void CDialogPDAEditEmail::SetName( CString &_name )\r\n");
}


void CDialogPDAEditEmail::SetEmail( const idDeclEmail *email )
{
    Sys_Printf("void CDialogPDAEditEmail::SetEmail( const idDeclEmail *email )\r\n");
}


CString CDialogPDAEditEmail::GetDeclText()
{
    CString retVal;
    memset(&retVal, 0, sizeof(CString));
    Sys_Printf("CString CDialogPDAEditEmail::GetDeclText()\r\n");
    return retVal;
}


