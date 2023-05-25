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

// TearoffContainerWindow.cpp : implementation file
//

#include "TabsDlg.h"
#include "TearoffContainerWindow.h"


// CTearoffContainerWindow

IMPLEMENT_DYNAMIC(CTearoffContainerWindow, CWnd)
CTearoffContainerWindow::CTearoffContainerWindow()
{
	m_DragPreviewActive = false;
	m_ContainedDialog = NULL;
	m_DockManager = NULL;
}

CTearoffContainerWindow::~CTearoffContainerWindow()
{
}


BEGIN_MESSAGE_MAP(CTearoffContainerWindow, CWnd)
	ON_WM_NCLBUTTONDBLCLK()
	ON_WM_CLOSE()
	ON_WM_SIZE()
	ON_WM_DESTROY()
	ON_WM_SETFOCUS()
END_MESSAGE_MAP()

// CTearoffContainerWindow message handlers


void CTearoffContainerWindow::OnNcLButtonDblClk(UINT nHitTest, CPoint point)
{
    Sys_Printf("void CTearoffContainerWindow::OnNcLButtonDblClk(UINT nHitTest, CPoint point)\r\n");
}



void CTearoffContainerWindow::SetDialog ( CWnd* dlg , int ID )
{
    Sys_Printf("void CTearoffContainerWindow::SetDialog ( CWnd* dlg , int ID )\r\n");
}


void CTearoffContainerWindow::SetDockManager ( CTabsDlg* dlg )
{
    Sys_Printf("void CTearoffContainerWindow::SetDockManager ( CTabsDlg* dlg )\r\n");
}

void CTearoffContainerWindow::OnClose()
{
    Sys_Printf("void CTearoffContainerWindow::OnClose()\r\n");
}



BOOL CTearoffContainerWindow:: PreTranslateMessage( MSG* pMsg ) 
{
	if ( pMsg->message == WM_NCLBUTTONUP )
	{
/*		CRect rect;
		GetWindowRect ( rect );

		rect.DeflateRect( 0,0,0,rect.Height() - GetSystemMetrics(SM_CYSMSIZE));
		if ( m_DockManager->RectWithinDockManager ( rect ))
		{
			m_DockManager->DockDialog ( m_DialogID , true );
		}
*/
	}

	return CWnd::PreTranslateMessage(pMsg);
}
void CTearoffContainerWindow::OnSize(UINT nType, int cx, int cy)
{
    Sys_Printf("void CTearoffContainerWindow::OnSize(UINT nType, int cx, int cy)\r\n");
}


void CTearoffContainerWindow::OnDestroy()
{
    Sys_Printf("void CTearoffContainerWindow::OnDestroy()\r\n");
}


void CTearoffContainerWindow::OnSetFocus(CWnd* pOldWnd)
{
    Sys_Printf("void CTearoffContainerWindow::OnSetFocus(CWnd* pOldWnd)\r\n");
}

