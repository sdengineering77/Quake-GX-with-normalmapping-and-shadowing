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

#include "qe3.h"
#include "Radiant.h"
#include "EditViewDlg.h"


// CEditViewDlg dialog

IMPLEMENT_DYNAMIC(CEditViewDlg, CDialog)
CEditViewDlg::CEditViewDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CEditViewDlg::IDD, pParent)
{
	findDlg = NULL;
}

CEditViewDlg::~CEditViewDlg() {
}

void CEditViewDlg::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void CEditViewDlg::DoDataExchange(CDataExchange* pDX)\r\n");
}



static UINT FindDialogMessage = ::RegisterWindowMessage(FINDMSGSTRING);

BEGIN_MESSAGE_MAP(CEditViewDlg, CDialog)
	ON_WM_SIZE()
	ON_BN_CLICKED(IDC_BUTTON_OPEN, OnBnClickedButtonOpen)
	ON_BN_CLICKED(IDC_BUTTON_SAVE, OnBnClickedButtonSave)
	ON_WM_DESTROY()
	ON_WM_TIMER()
	ON_BN_CLICKED(IDC_BUTTON_GOTO, OnBnClickedButtonGoto)
     ON_REGISTERED_MESSAGE(FindDialogMessage, OnFindDialogMessage)
END_MESSAGE_MAP()


// CEditViewDlg message handlers

void CEditViewDlg::OnSize(UINT nType, int cx, int cy) {
    Sys_Printf("void CEditViewDlg::OnSize(UINT nType, int cx, int cy)\r\n");
}


void CEditViewDlg::ShowFindDlg() {
    Sys_Printf("void CEditViewDlg::ShowFindDlg()\r\n");
}


void CEditViewDlg::OnBnClickedButtonOpen() {
    Sys_Printf("void CEditViewDlg::OnBnClickedButtonOpen()\r\n");
}


void CEditViewDlg::OnBnClickedButtonSave() {
    Sys_Printf("void CEditViewDlg::OnBnClickedButtonSave()\r\n");
}


void CEditViewDlg::UpdateEditPreview() {
    Sys_Printf("void CEditViewDlg::UpdateEditPreview()\r\n");
}


BOOL CEditViewDlg::OnInitDialog() {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CEditViewDlg::OnInitDialog()\r\n");
    return retVal;
}


void CEditViewDlg::OnDestroy() {
    Sys_Printf("void CEditViewDlg::OnDestroy()\r\n");
}


void CEditViewDlg::SetMaterialInfo(const char *name, const char *file, int _line) {
    Sys_Printf("void CEditViewDlg::SetMaterialInfo(const char *name, const char *file, int _line)\r\n");
}


void CEditViewDlg::SetGuiInfo(const char *name) {
    Sys_Printf("void CEditViewDlg::SetGuiInfo(const char *name)\r\n");
}


void CEditViewDlg::OnTimer(UINT nIDEvent) {
    Sys_Printf("void CEditViewDlg::OnTimer(UINT nIDEvent)\r\n");
}


void CEditViewDlg::OnBnClickedButtonGoto() {
    Sys_Printf("void CEditViewDlg::OnBnClickedButtonGoto()\r\n");
}


BOOL CEditViewDlg::PreTranslateMessage(MSG* pMsg) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CEditViewDlg::PreTranslateMessage(MSG* pMsg)\r\n");
    return retVal;
}


LRESULT CEditViewDlg::OnFindDialogMessage(WPARAM wParam, LPARAM lParam) {
    LRESULT retVal;
    memset(&retVal, 0, sizeof(LRESULT));
    Sys_Printf("LRESULT CEditViewDlg::OnFindDialogMessage(WPARAM wParam, LPARAM lParam)\r\n");
    return retVal;
}

