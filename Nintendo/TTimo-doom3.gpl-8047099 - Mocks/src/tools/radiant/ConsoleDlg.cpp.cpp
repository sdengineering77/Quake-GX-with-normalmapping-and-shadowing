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
#include "ConsoleDlg.h"


// CConsoleDlg dialog

IMPLEMENT_DYNCREATE(CConsoleDlg, CDialog)
CConsoleDlg::CConsoleDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CConsoleDlg::IDD)
{
    currentHistoryPosition = -1;
    currentCommand = "";
	saveCurrentCommand = true;
}

CConsoleDlg::~CConsoleDlg()
{
}

void CConsoleDlg::DoDataExchange(CDataExchange* pDX)
{
    Sys_Printf("void CConsoleDlg::DoDataExchange(CDataExchange* pDX)\r\n");
}


void CConsoleDlg::AddText( const char *msg ) {
    Sys_Printf("void CConsoleDlg::AddText( const char *msg )\r\n");
}



BEGIN_MESSAGE_MAP(CConsoleDlg, CDialog)
	ON_WM_SIZE()
	ON_WM_SETFOCUS()
	ON_WM_ACTIVATE()
END_MESSAGE_MAP()


// CConsoleDlg message handlers

void CConsoleDlg::OnSize(UINT nType, int cx, int cy)
{
    Sys_Printf("void CConsoleDlg::OnSize(UINT nType, int cx, int cy)\r\n");
}


BOOL CConsoleDlg::PreTranslateMessage(MSG* pMsg)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CConsoleDlg::PreTranslateMessage(MSG* pMsg)\r\n");
    return retVal;
}


void CConsoleDlg::OnSetFocus(CWnd* pOldWnd) {
    Sys_Printf("void CConsoleDlg::OnSetFocus(CWnd* pOldWnd)\r\n");
}


void CConsoleDlg::SetConsoleText ( const idStr& text ) {
    Sys_Printf("void CConsoleDlg::SetConsoleText ( const idStr& text )\r\n");
}


void CConsoleDlg::ExecuteCommand ( const idStr& cmd ) {
    Sys_Printf("void CConsoleDlg::ExecuteCommand ( const idStr& cmd )\r\n");
}


void CConsoleDlg::OnActivate(UINT nState, CWnd* pWndOther, BOOL bMinimized)
{
    Sys_Printf("void CConsoleDlg::OnActivate(UINT nState, CWnd* pWndOther, BOOL bMinimized)\r\n");
}

