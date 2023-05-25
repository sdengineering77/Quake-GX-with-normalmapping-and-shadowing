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
#include "ZWnd.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CZWnd
IMPLEMENT_DYNCREATE(CZWnd, CWnd);


CZWnd::CZWnd()
{
	m_pZClip = NULL;
}

CZWnd::~CZWnd()
{
}


BEGIN_MESSAGE_MAP(CZWnd, CWnd)
	//{{AFX_MSG_MAP(CZWnd)
	ON_WM_CREATE()
	ON_WM_DESTROY()
	ON_WM_KEYDOWN()
	ON_WM_LBUTTONDOWN()
	ON_WM_MBUTTONDOWN()
	ON_WM_RBUTTONDOWN()
	ON_WM_PAINT()
	ON_WM_GETMINMAXINFO()
	ON_WM_MOUSEMOVE()
	ON_WM_SIZE()
	ON_WM_NCCALCSIZE()
	ON_WM_KILLFOCUS()
	ON_WM_SETFOCUS()
	ON_WM_CLOSE()
	ON_WM_LBUTTONUP()
	ON_WM_MBUTTONUP()
	ON_WM_RBUTTONUP()
	ON_WM_KEYUP()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// CZWnd message handlers

int CZWnd::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CZWnd::OnCreate(LPCREATESTRUCT lpCreateStruct)\r\n");
    return retVal;
}


void CZWnd::OnDestroy() 
{
    Sys_Printf("void CZWnd::OnDestroy()\r\n");
}


void CZWnd::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
    Sys_Printf("void CZWnd::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags)\r\n");
}


void CZWnd::OnLButtonDown(UINT nFlags, CPoint point) 
{
    Sys_Printf("void CZWnd::OnLButtonDown(UINT nFlags, CPoint point)\r\n");
}


void CZWnd::OnMButtonDown(UINT nFlags, CPoint point) 
{
    Sys_Printf("void CZWnd::OnMButtonDown(UINT nFlags, CPoint point)\r\n");
}


void CZWnd::OnRButtonDown(UINT nFlags, CPoint point) 
{
    Sys_Printf("void CZWnd::OnRButtonDown(UINT nFlags, CPoint point)\r\n");
}


void CZWnd::OnPaint() 
{
    Sys_Printf("void CZWnd::OnPaint()\r\n");
}


void CZWnd::OnGetMinMaxInfo(MINMAXINFO FAR* lpMMI) 
{
    Sys_Printf("void CZWnd::OnGetMinMaxInfo(MINMAXINFO FAR* lpMMI)\r\n");
}


void CZWnd::OnMouseMove(UINT nFlags, CPoint point) 
{
    Sys_Printf("void CZWnd::OnMouseMove(UINT nFlags, CPoint point)\r\n");
}


void CZWnd::OnSize(UINT nType, int cx, int cy) 
{
    Sys_Printf("void CZWnd::OnSize(UINT nType, int cx, int cy)\r\n");
}


void CZWnd::OnNcCalcSize(BOOL bCalcValidRects, NCCALCSIZE_PARAMS FAR* lpncsp) 
{
    Sys_Printf("void CZWnd::OnNcCalcSize(BOOL bCalcValidRects, NCCALCSIZE_PARAMS FAR* lpncsp)\r\n");
}


void CZWnd::OnKillFocus(CWnd* pNewWnd) 
{
    Sys_Printf("void CZWnd::OnKillFocus(CWnd* pNewWnd)\r\n");
}


void CZWnd::OnSetFocus(CWnd* pOldWnd) 
{
    Sys_Printf("void CZWnd::OnSetFocus(CWnd* pOldWnd)\r\n");
}


void CZWnd::OnClose() 
{
    Sys_Printf("void CZWnd::OnClose()\r\n");
}


void CZWnd::OnLButtonUp(UINT nFlags, CPoint point) 
{
    Sys_Printf("void CZWnd::OnLButtonUp(UINT nFlags, CPoint point)\r\n");
}


void CZWnd::OnMButtonUp(UINT nFlags, CPoint point) 
{
    Sys_Printf("void CZWnd::OnMButtonUp(UINT nFlags, CPoint point)\r\n");
}


void CZWnd::OnRButtonUp(UINT nFlags, CPoint point) 
{
    Sys_Printf("void CZWnd::OnRButtonUp(UINT nFlags, CPoint point)\r\n");
}



BOOL CZWnd::PreCreateWindow(CREATESTRUCT& cs) 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CZWnd::PreCreateWindow(CREATESTRUCT& cs)\r\n");
    return retVal;
}



void CZWnd::OnKeyUp(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
    Sys_Printf("void CZWnd::OnKeyUp(UINT nChar, UINT nRepCnt, UINT nFlags)\r\n");
}

