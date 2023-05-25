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

#include "QE3.H"
#include "TabsDlg.h"
// CTabsDlg dialog

//IMPLEMENT_DYNAMIC ( CTabsDlg , CDialog )
CTabsDlg::CTabsDlg(UINT ID , CWnd* pParent /*=NULL*/)
	: CDialog(ID, pParent)
{
	m_DragTabActive = false;
}

BEGIN_MESSAGE_MAP(CTabsDlg, CDialog)
	//}}AFX_MSG_MAP
//	ON_NOTIFY(TCN_SELCHANGE, IDC_TAB1, OnTcnSelchangeTab1)
ON_WM_LBUTTONDOWN()
ON_WM_LBUTTONUP()
ON_WM_MOUSEMOVE()
ON_WM_DESTROY()
END_MESSAGE_MAP()

void CTabsDlg::DoDataExchange(CDataExchange* pDX)
{
    Sys_Printf("void CTabsDlg::DoDataExchange(CDataExchange* pDX)\r\n");
}


// CTabsDlg message handlers

BOOL CTabsDlg::OnInitDialog()
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CTabsDlg::OnInitDialog()\r\n");
    return retVal;
}


void CTabsDlg::OnTcnSelchange(NMHDR *pNMHDR, LRESULT *pResult)
{
    Sys_Printf("void CTabsDlg::OnTcnSelchange(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void CTabsDlg::DockWindow ( int ID , bool dock )
{
    Sys_Printf("void CTabsDlg::DockWindow ( int ID , bool dock )\r\n");
}


int CTabsDlg::PreTranslateMessage ( MSG* msg )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CTabsDlg::PreTranslateMessage ( MSG* msg )\r\n");
    return retVal;
}


bool CTabsDlg::RectWithinDockManager ( CRect& rect )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CTabsDlg::RectWithinDockManager ( CRect& rect )\r\n");
    return retVal;
}


void CTabsDlg::OnLButtonDown(UINT nFlags, CPoint point)
{
    Sys_Printf("void CTabsDlg::OnLButtonDown(UINT nFlags, CPoint point)\r\n");
}


void CTabsDlg::OnLButtonUp(UINT nFlags, CPoint point)
{
    Sys_Printf("void CTabsDlg::OnLButtonUp(UINT nFlags, CPoint point)\r\n");
}



void CTabsDlg::HandleUndock ()
{
    Sys_Printf("void CTabsDlg::HandleUndock ()\r\n");
}


void CTabsDlg::OnMouseMove(UINT nFlags, CPoint point)
{
    Sys_Printf("void CTabsDlg::OnMouseMove(UINT nFlags, CPoint point)\r\n");
}



void CTabsDlg::AddDockedWindow ( CWnd* wnd , int ID , int imageID , const CString& title , bool dock , pfnOnDockEvent dockCallback )
{
    Sys_Printf("void CTabsDlg::AddDockedWindow ( CWnd* wnd , int ID , int imageID , const CString& title , bool dock , pfnOnDockEvent dockCallback )\r\n");
}


void CTabsDlg::ShowAllWindows ( bool show )
{
    Sys_Printf("void CTabsDlg::ShowAllWindows ( bool show )\r\n");
}


void CTabsDlg::FocusWindow ( int ID )
{
    Sys_Printf("void CTabsDlg::FocusWindow ( int ID )\r\n");
}


void CTabsDlg::UpdateTabControlIndices ()
{
    Sys_Printf("void CTabsDlg::UpdateTabControlIndices ()\r\n");
}

void CTabsDlg::OnDestroy()
{
    Sys_Printf("void CTabsDlg::OnDestroy()\r\n");
}



bool CTabsDlg::IsDocked ( CWnd* wnd )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CTabsDlg::IsDocked ( CWnd* wnd )\r\n");
    return retVal;
}


void CTabsDlg::SaveWindowPlacement( int ID ) 
{
    Sys_Printf("void CTabsDlg::SaveWindowPlacement( int ID )\r\n");
}

