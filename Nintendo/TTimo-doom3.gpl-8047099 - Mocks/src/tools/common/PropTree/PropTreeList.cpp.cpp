// PropTreeList.cpp : implementation file
//
//  Copyright (C) 1998-2001 Scott Ramsay
//	sramsay@gonavi.com
//	http://www.gonavi.com
//
//  This material is provided "as is", with absolutely no warranty expressed
//  or implied. Any use is at your own risk.
// 
//  Permission to use or copy this software for any purpose is hereby granted 
//  without fee, provided the above notices are retained on all copies.
//  Permission to modify the code and to distribute modified code is granted,
//  provided the above notices are retained, and a notice that the code was
//  modified is included with the above copyright notice.
// 
//	If you use this code, drop me an email.  I'd like to know if you find the code
//	useful.

//#include "stdafx.h"
#include "../../../idlib/precompiled.h"
#pragma hdrstop

#include "PropTree.h"
#include "../../../sys/win32/rc/proptree_Resource.h"
#include "PropTreeList.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#define PROPTREEITEM_EXPANDCOLUMN		16			// width of the expand column
#define PROPTREEITEM_COLRNG				5			// width of splitter
#define PROPTREEITEM_DEFHEIGHT			21			// default heigt of an item

extern HINSTANCE ghInst;

/////////////////////////////////////////////////////////////////////////////
// CPropTreeList

CPropTreeList::CPropTreeList() :
	m_pProp(NULL),
	m_BackBufferSize(0,0),
	m_bColDrag(FALSE),
	m_nPrevCol(0)
{
}

CPropTreeList::~CPropTreeList()
{
}


BEGIN_MESSAGE_MAP(CPropTreeList, CWnd)
	//{{AFX_MSG_MAP(CPropTreeList)
	ON_WM_SIZE()
	ON_WM_PAINT()
	ON_WM_SETCURSOR()
	ON_WM_LBUTTONDOWN()
	ON_WM_LBUTTONUP()
	ON_WM_LBUTTONDBLCLK()
	ON_WM_MOUSEMOVE()
	ON_WM_MOUSEWHEEL()
	ON_WM_KEYDOWN()
	ON_WM_GETDLGCODE()
	ON_WM_VSCROLL()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// CPropTreeList message handlers

void CPropTreeList::SetPropOwner(CPropTree* pProp)
{
    Sys_Printf("void CPropTreeList::SetPropOwner(CPropTree* pProp)\r\n");
}



BOOL CPropTreeList::Create(DWORD dwStyle, const RECT& rect, CWnd* pParentWnd, UINT nID)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTreeList::Create(DWORD dwStyle, const RECT& rect, CWnd* pParentWnd, UINT nID)\r\n");
    return retVal;
}



void CPropTreeList::OnSize(UINT nType, int cx, int cy) 
{
    Sys_Printf("void CPropTreeList::OnSize(UINT nType, int cx, int cy)\r\n");
}



void CPropTreeList::RecreateBackBuffer(int cx, int cy)
{
    Sys_Printf("void CPropTreeList::RecreateBackBuffer(int cx, int cy)\r\n");
}



void CPropTreeList::UpdateResize()
{
    Sys_Printf("void CPropTreeList::UpdateResize()\r\n");
}



void CPropTreeList::OnPaint() 
{
    Sys_Printf("void CPropTreeList::OnPaint()\r\n");
}



BOOL CPropTreeList::OnSetCursor(CWnd* pWnd, UINT nHitTest, UINT message) 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTreeList::OnSetCursor(CWnd* pWnd, UINT nHitTest, UINT message)\r\n");
    return retVal;
}



void CPropTreeList::OnLButtonDown(UINT, CPoint point) 
{
    Sys_Printf("void CPropTreeList::OnLButtonDown(UINT, CPoint point)\r\n");
}



void CPropTreeList::OnLButtonUp(UINT, CPoint point) 
{
    Sys_Printf("void CPropTreeList::OnLButtonUp(UINT, CPoint point)\r\n");
}



void CPropTreeList::OnLButtonDblClk(UINT, CPoint point)
{
    Sys_Printf("void CPropTreeList::OnLButtonDblClk(UINT, CPoint point)\r\n");
}



void CPropTreeList::OnMouseMove(UINT, CPoint point)
{
    Sys_Printf("void CPropTreeList::OnMouseMove(UINT, CPoint point)\r\n");
}



BOOL CPropTreeList::OnMouseWheel(UINT, short zDelta, CPoint) 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTreeList::OnMouseWheel(UINT, short zDelta, CPoint)\r\n");
    return retVal;
}



void CPropTreeList::OnKeyDown(UINT nChar, UINT, UINT) 
{
    Sys_Printf("void CPropTreeList::OnKeyDown(UINT nChar, UINT, UINT)\r\n");
}



UINT CPropTreeList::OnGetDlgCode() 
{
    UINT retVal;
    memset(&retVal, 0, sizeof(UINT));
    Sys_Printf("UINT CPropTreeList::OnGetDlgCode()\r\n");
    return retVal;
}



void CPropTreeList::OnVScroll(UINT nSBCode, UINT nPos, CScrollBar*) 
{
    Sys_Printf("void CPropTreeList::OnVScroll(UINT nSBCode, UINT nPos, CScrollBar*)\r\n");
}



void CPropTreeList::CheckVisibleFocus()
{
    Sys_Printf("void CPropTreeList::CheckVisibleFocus()\r\n");
}

