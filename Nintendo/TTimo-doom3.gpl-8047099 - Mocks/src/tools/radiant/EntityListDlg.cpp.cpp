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
#include "EntityListDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

CEntityListDlg g_EntityListDlg;
/////////////////////////////////////////////////////////////////////////////
// CEntityListDlg dialog

void CEntityListDlg::ShowDialog() {
    Sys_Printf("void CEntityListDlg::ShowDialog()\r\n");
}


CEntityListDlg::CEntityListDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CEntityListDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CEntityListDlg)
	//}}AFX_DATA_INIT
}


void CEntityListDlg::DoDataExchange(CDataExchange* pDX)
{
    Sys_Printf("void CEntityListDlg::DoDataExchange(CDataExchange* pDX)\r\n");
}


BEGIN_MESSAGE_MAP(CEntityListDlg, CDialog)
	//{{AFX_MSG_MAP(CEntityListDlg)
	ON_BN_CLICKED(IDC_SELECT, OnSelect)
	ON_WM_CLOSE()
	ON_WM_DESTROY()
	//}}AFX_MSG_MAP
	ON_LBN_SELCHANGE(IDC_LIST_ENTITIES, OnLbnSelchangeListEntities)
	ON_LBN_DBLCLK(IDC_LIST_ENTITIES, OnLbnDblclkListEntities)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CEntityListDlg message handlers

void CEntityListDlg::OnSelect() 
{
    Sys_Printf("void CEntityListDlg::OnSelect()\r\n");
}


void CEntityListDlg::UpdateList() {
    Sys_Printf("void CEntityListDlg::UpdateList()\r\n");
}


void CEntityListDlg::OnSysCommand(UINT nID,  LPARAM lParam) {
    Sys_Printf("void CEntityListDlg::OnSysCommand(UINT nID, LPARAM lParam)\r\n");
}


void CEntityListDlg::OnCancel() {
    Sys_Printf("void CEntityListDlg::OnCancel()\r\n");
}


BOOL CEntityListDlg::OnInitDialog() 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CEntityListDlg::OnInitDialog()\r\n");
    return retVal;
}


void CEntityListDlg::OnClose() {
    Sys_Printf("void CEntityListDlg::OnClose()\r\n");
}


void CEntityListDlg::OnLbnSelchangeListEntities()
{
    Sys_Printf("void CEntityListDlg::OnLbnSelchangeListEntities()\r\n");
}


void CEntityListDlg::OnLbnDblclkListEntities()
{
    Sys_Printf("void CEntityListDlg::OnLbnDblclkListEntities()\r\n");
}

