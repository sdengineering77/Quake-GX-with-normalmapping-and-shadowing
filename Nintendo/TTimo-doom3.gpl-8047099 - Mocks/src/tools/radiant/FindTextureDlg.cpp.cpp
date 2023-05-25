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
#include "FindTextureDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CFindTextureDlg dialog

CFindTextureDlg g_TexFindDlg;
CFindTextureDlg& g_dlgFind = g_TexFindDlg;
static bool g_bFindActive = true;

void CFindTextureDlg::updateTextures(const char *p)
{
    Sys_Printf("void CFindTextureDlg::updateTextures(const char *p)\r\n");
}


CFindTextureDlg::CFindTextureDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CFindTextureDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CFindTextureDlg)
	m_bSelectedOnly = FALSE;
	m_strFind = _T("");
	m_strReplace = _T("");
	m_bForce = FALSE;
	m_bLive = TRUE;
	//}}AFX_DATA_INIT
}


void CFindTextureDlg::DoDataExchange(CDataExchange* pDX)
{
    Sys_Printf("void CFindTextureDlg::DoDataExchange(CDataExchange* pDX)\r\n");
}



BEGIN_MESSAGE_MAP(CFindTextureDlg, CDialog)
	//{{AFX_MSG_MAP(CFindTextureDlg)
	ON_BN_CLICKED(IDC_BTN_APPLY, OnBtnApply)
	ON_EN_SETFOCUS(IDC_EDIT_FIND, OnSetfocusEditFind)
	ON_EN_SETFOCUS(IDC_EDIT_REPLACE, OnSetfocusEditReplace)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

void CFindTextureDlg::OnBtnApply() 
{
    Sys_Printf("void CFindTextureDlg::OnBtnApply()\r\n");
}


void CFindTextureDlg::OnOK() 
{
    Sys_Printf("void CFindTextureDlg::OnOK()\r\n");
}


void CFindTextureDlg::show()
{
    Sys_Printf("void CFindTextureDlg::show()\r\n");
}
		


bool CFindTextureDlg::isOpen()
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CFindTextureDlg::isOpen()\r\n");
    return retVal;
}


void CFindTextureDlg::setFindStr(const char * p)
{
    Sys_Printf("void CFindTextureDlg::setFindStr(const char * p)\r\n");
}


void CFindTextureDlg::setReplaceStr(const char * p)
{
    Sys_Printf("void CFindTextureDlg::setReplaceStr(const char * p)\r\n");
}



void CFindTextureDlg::OnCancel() 
{
    Sys_Printf("void CFindTextureDlg::OnCancel()\r\n");
}


BOOL CFindTextureDlg::DestroyWindow() 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CFindTextureDlg::DestroyWindow()\r\n");
    return retVal;
}


void CFindTextureDlg::OnSetfocusEditFind() 
{
    Sys_Printf("void CFindTextureDlg::OnSetfocusEditFind()\r\n");
}


void CFindTextureDlg::OnSetfocusEditReplace() 
{
    Sys_Printf("void CFindTextureDlg::OnSetfocusEditReplace()\r\n");
}

