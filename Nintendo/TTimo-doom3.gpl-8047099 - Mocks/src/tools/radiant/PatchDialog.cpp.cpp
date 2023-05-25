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
#include "PatchDialog.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CPatchDialog dialog

CPatchDialog g_PatchDialog;

CPatchDialog::CPatchDialog(CWnd* pParent /*=NULL*/)
	: CDialog(CPatchDialog::IDD, pParent)
{
	//{{AFX_DATA_INIT(CPatchDialog)
	m_strName = _T("");
	m_fS = 0.0f;
	m_fT = 0.0f;
	m_fX = 0.0f;
	m_fY = 0.0f;
	m_fZ = 0.0f;
	m_fHScale = 0.05f;
	m_fHShift = 0.05f;
	m_fRotate = 45;
	m_fVScale = 0.05f;
	m_fVShift = 0.05f;
	//}}AFX_DATA_INIT
	m_Patch = NULL;
}


void CPatchDialog::DoDataExchange(CDataExchange* pDX)
{
    Sys_Printf("void CPatchDialog::DoDataExchange(CDataExchange* pDX)\r\n");
}



BEGIN_MESSAGE_MAP(CPatchDialog, CDialog)
	//{{AFX_MSG_MAP(CPatchDialog)
	ON_BN_CLICKED(IDC_BTN_PATCHDETAILS, OnBtnPatchdetails)
	ON_BN_CLICKED(IDC_BTN_PATCHFIT, OnBtnPatchfit)
	ON_BN_CLICKED(IDC_BTN_PATCHNATURAL, OnBtnPatchnatural)
	ON_BN_CLICKED(IDC_BTN_PATCHRESET, OnBtnPatchreset)
	ON_CBN_SELCHANGE(IDC_COMBO_COL, OnSelchangeComboCol)
	ON_CBN_SELCHANGE(IDC_COMBO_ROW, OnSelchangeComboRow)
	ON_CBN_SELCHANGE(IDC_COMBO_TYPE, OnSelchangeComboType)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_HSCALE, OnDeltaposSpin)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_ROTATE, OnDeltaposSpin)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_VSCALE, OnDeltaposSpin)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_VSHIFT, OnDeltaposSpin)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_HSHIFT, OnDeltaposSpin)
	ON_WM_DESTROY()
	ON_BN_CLICKED(IDC_APPLY, OnApply)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CPatchDialog message handlers

void CPatchDialog::OnBtnPatchdetails() 
{
    Sys_Printf("void CPatchDialog::OnBtnPatchdetails()\r\n");
}


void CPatchDialog::OnBtnPatchfit() 
{
    Sys_Printf("void CPatchDialog::OnBtnPatchfit()\r\n");
}


void CPatchDialog::OnBtnPatchnatural() 
{
    Sys_Printf("void CPatchDialog::OnBtnPatchnatural()\r\n");
}


void CPatchDialog::OnBtnPatchreset() 
{
    Sys_Printf("void CPatchDialog::OnBtnPatchreset()\r\n");
}


void CPatchDialog::OnSelchangeComboCol() 
{
    Sys_Printf("void CPatchDialog::OnSelchangeComboCol()\r\n");
}


void CPatchDialog::OnSelchangeComboRow() 
{
    Sys_Printf("void CPatchDialog::OnSelchangeComboRow()\r\n");
}


void CPatchDialog::OnSelchangeComboType() 
{
    Sys_Printf("void CPatchDialog::OnSelchangeComboType()\r\n");
}


void CPatchDialog::OnOK() 
{
    Sys_Printf("void CPatchDialog::OnOK()\r\n");
}


void CPatchDialog::OnDeltaposSpin(NMHDR* pNMHDR, LRESULT* pResult) 
{
    Sys_Printf("void CPatchDialog::OnDeltaposSpin(NMHDR* pNMHDR, LRESULT* pResult)\r\n");
}


BOOL CPatchDialog::OnInitDialog() 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPatchDialog::OnInitDialog()\r\n");
    return retVal;
}




void CPatchDialog::GetPatchInfo()
{
    Sys_Printf("void CPatchDialog::GetPatchInfo()\r\n");
}


void CPatchDialog::SetPatchInfo()
{
    Sys_Printf("void CPatchDialog::SetPatchInfo()\r\n");
}


void DoPatchInspector()
{
    Sys_Printf("void DoPatchInspector()\r\n");
}


void UpdatePatchInspector()
{
    Sys_Printf("void UpdatePatchInspector()\r\n");
}


void CPatchDialog::OnDestroy() 
{
    Sys_Printf("void CPatchDialog::OnDestroy()\r\n");
}


void CPatchDialog::UpdateRowColInfo()
{
    Sys_Printf("void CPatchDialog::UpdateRowColInfo()\r\n");
}


void CPatchDialog::UpdateInfo()
{
    Sys_Printf("void CPatchDialog::UpdateInfo()\r\n");
}


void CPatchDialog::OnApply() 
{
    Sys_Printf("void CPatchDialog::OnApply()\r\n");
}


void CPatchDialog::UpdateSpinners(bool bUp, int nID)
{
    Sys_Printf("void CPatchDialog::UpdateSpinners(bool bUp, int nID)\r\n");
}



