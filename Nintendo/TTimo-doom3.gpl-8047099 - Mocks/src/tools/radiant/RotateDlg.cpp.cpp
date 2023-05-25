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
#include "RotateDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CRotateDlg dialog


CRotateDlg::CRotateDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CRotateDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CRotateDlg)
	m_strX = _T("");
	m_strY = _T("");
	m_strZ = _T("");
	//}}AFX_DATA_INIT
}


void CRotateDlg::DoDataExchange(CDataExchange* pDX)
{
    Sys_Printf("void CRotateDlg::DoDataExchange(CDataExchange* pDX)\r\n");
}



BEGIN_MESSAGE_MAP(CRotateDlg, CDialog)
	//{{AFX_MSG_MAP(CRotateDlg)
	ON_BN_CLICKED(IDC_APPLY, OnApply)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN1, OnDeltaposSpin1)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN2, OnDeltaposSpin2)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN3, OnDeltaposSpin3)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CRotateDlg message handlers

void CRotateDlg::OnOK() 
{
    Sys_Printf("void CRotateDlg::OnOK()\r\n");
}


void CRotateDlg::OnApply() 
{
    Sys_Printf("void CRotateDlg::OnApply()\r\n");
}


BOOL CRotateDlg::OnInitDialog() 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CRotateDlg::OnInitDialog()\r\n");
    return retVal;
}


void CRotateDlg::OnDeltaposSpin1(NMHDR* pNMHDR, LRESULT* pResult) 
{
    Sys_Printf("void CRotateDlg::OnDeltaposSpin1(NMHDR* pNMHDR, LRESULT* pResult)\r\n");
}


void CRotateDlg::OnDeltaposSpin2(NMHDR* pNMHDR, LRESULT* pResult) 
{
    Sys_Printf("void CRotateDlg::OnDeltaposSpin2(NMHDR* pNMHDR, LRESULT* pResult)\r\n");
}


void CRotateDlg::OnDeltaposSpin3(NMHDR* pNMHDR, LRESULT* pResult) 
{
    Sys_Printf("void CRotateDlg::OnDeltaposSpin3(NMHDR* pNMHDR, LRESULT* pResult)\r\n");
}


void CRotateDlg::ApplyNoPaint()
{
    Sys_Printf("void CRotateDlg::ApplyNoPaint()\r\n");
}

