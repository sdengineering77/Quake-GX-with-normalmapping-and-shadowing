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
#include "GLWidget.h"
#include "ConsoleDlg.h"
#include "InspectorDialog.h"
#include "TabsDlg.h"

CInspectorDialog *g_Inspectors = NULL;
// CInspectorDialog dialog

void InspectorsDockingCallback ( bool docked , int ID , CWnd* wnd )
{
    Sys_Printf("void InspectorsDockingCallback ( bool docked , int ID , CWnd* wnd )\r\n");
}



// CInspectorDialog dialog
//IMPLEMENT_DYNAMIC(CInspectorDialog,CTabsDlg)
CInspectorDialog::CInspectorDialog(CWnd* pParent /*=NULL*/)
	: CTabsDlg(CInspectorDialog::IDD, pParent)
{
	initialized = false;
	dockedTabs = W_CONSOLE | W_TEXTURE | W_MEDIA;
}

CInspectorDialog::~CInspectorDialog()
{
}


BEGIN_MESSAGE_MAP(CInspectorDialog, CTabsDlg)
	ON_NOTIFY(TCN_SELCHANGE, IDC_TAB_INSPECTOR, OnTcnSelchange )
	ON_WM_SIZE()
	ON_WM_DESTROY()
	ON_WM_CLOSE()
END_MESSAGE_MAP()


// CInspectorDialog message handlers

BOOL CInspectorDialog::OnInitDialog()
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CInspectorDialog::OnInitDialog()\r\n");
    return retVal;
}


void CInspectorDialog::SetMode(int mode, bool updateTabs) {
    Sys_Printf("void CInspectorDialog::SetMode(int mode, bool updateTabs)\r\n");
}


void CInspectorDialog::UpdateEntitySel(eclass_t *ent) {
    Sys_Printf("void CInspectorDialog::UpdateEntitySel(eclass_t *ent)\r\n");
}


void CInspectorDialog::FillClassList() {
    Sys_Printf("void CInspectorDialog::FillClassList()\r\n");
}


void CInspectorDialog::UpdateSelectedEntity() {
    Sys_Printf("void CInspectorDialog::UpdateSelectedEntity()\r\n");
}


bool CInspectorDialog::GetSelectAllCriteria(idStr &key, idStr &val) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CInspectorDialog::GetSelectAllCriteria(idStr &key, idStr &val)\r\n");
    return retVal;
}




void CInspectorDialog::OnSize(UINT nType, int cx, int cy)
{
    Sys_Printf("void CInspectorDialog::OnSize(UINT nType, int cx, int cy)\r\n");
}


void CInspectorDialog::OnDestroy()
{
    Sys_Printf("void CInspectorDialog::OnDestroy()\r\n");
}


void CInspectorDialog::OnClose()
{
    Sys_Printf("void CInspectorDialog::OnClose()\r\n");
}


BOOL CInspectorDialog::PreTranslateMessage(MSG* pMsg)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CInspectorDialog::PreTranslateMessage(MSG* pMsg)\r\n");
    return retVal;
}


void CInspectorDialog::SetDockedTabs ( bool docked , int ID )
{
    Sys_Printf("void CInspectorDialog::SetDockedTabs ( bool docked , int ID )\r\n");
}


void CInspectorDialog::AssignModel ()
{
    Sys_Printf("void CInspectorDialog::AssignModel ()\r\n");
}

