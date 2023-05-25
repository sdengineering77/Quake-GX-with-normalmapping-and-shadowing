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
#include "TextureBar.h"

//++timo TODO : the whole CTextureBar has to be modified for the new texture code

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CTextureBar dialog


CTextureBar::CTextureBar()
	: CDialogBar()
{
	//{{AFX_DATA_INIT(CTextureBar)
	m_nHShift = 0;
	m_nHScale = 0;
	m_nRotate = 0;
	m_nVShift = 0;
	m_nVScale = 0;
	m_nRotateAmt = 45;
	//}}AFX_DATA_INIT
}


void CTextureBar::DoDataExchange(CDataExchange* pDX)
{
    Sys_Printf("void CTextureBar::DoDataExchange(CDataExchange* pDX)\r\n");
}



BEGIN_MESSAGE_MAP(CTextureBar, CDialogBar)
	//{{AFX_MSG_MAP(CTextureBar)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_HSHIFT, OnDeltaposSpinHshift)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_VSHIFT, OnDeltaposSpinVshift)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_HSCALE, OnDeltaposSpinHScale)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_VSCALE, OnDeltaposSpinVScale)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_ROTATE, OnDeltaposSpinRotate)
	ON_COMMAND(ID_SELECTION_PRINT, OnSelectionPrint)
	ON_WM_CREATE()
	ON_BN_CLICKED(IDC_BTN_APPLYTEXTURESTUFF, OnBtnApplytexturestuff)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CTextureBar message handlers

void CTextureBar::OnDeltaposSpinHshift(NMHDR* pNMHDR, LRESULT* pResult) 
{
    Sys_Printf("void CTextureBar::OnDeltaposSpinHshift(NMHDR* pNMHDR, LRESULT* pResult)\r\n");
}


void CTextureBar::OnDeltaposSpinVshift(NMHDR* pNMHDR, LRESULT* pResult) 
{
    Sys_Printf("void CTextureBar::OnDeltaposSpinVshift(NMHDR* pNMHDR, LRESULT* pResult)\r\n");
}


void CTextureBar::OnDeltaposSpinHScale(NMHDR* pNMHDR, LRESULT* pResult) 
{
    Sys_Printf("void CTextureBar::OnDeltaposSpinHScale(NMHDR* pNMHDR, LRESULT* pResult)\r\n");
}


void CTextureBar::OnDeltaposSpinVScale(NMHDR* pNMHDR, LRESULT* pResult) 
{
    Sys_Printf("void CTextureBar::OnDeltaposSpinVScale(NMHDR* pNMHDR, LRESULT* pResult)\r\n");
}


void CTextureBar::OnDeltaposSpinRotate(NMHDR* pNMHDR, LRESULT* pResult) 
{
    Sys_Printf("void CTextureBar::OnDeltaposSpinRotate(NMHDR* pNMHDR, LRESULT* pResult)\r\n");
}



void CTextureBar::OnSelectionPrint() 
{
    Sys_Printf("void CTextureBar::OnSelectionPrint()\r\n");
}


int CTextureBar::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CTextureBar::OnCreate(LPCREATESTRUCT lpCreateStruct)\r\n");
    return retVal;
}



void CTextureBar::OnBtnApplytexturestuff() 
{
    Sys_Printf("void CTextureBar::OnBtnApplytexturestuff()\r\n");
}


void CTextureBar::GetSurfaceAttributes()
{
    Sys_Printf("void CTextureBar::GetSurfaceAttributes()\r\n");
}


//++timo implement brush primitive here
void CTextureBar::SetSurfaceAttributes()
{
    Sys_Printf("void CTextureBar::SetSurfaceAttributes()\r\n");
}

