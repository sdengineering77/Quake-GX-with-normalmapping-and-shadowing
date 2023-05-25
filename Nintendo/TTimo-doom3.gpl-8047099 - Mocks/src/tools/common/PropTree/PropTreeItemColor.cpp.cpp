// PropTreeItemColor.cpp : implementation file
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
#include "PropTreeItemColor.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

extern HINSTANCE ghInst;

typedef struct _ColorTableEntry
{
	COLORREF	color;
	RECT		rcSpot;
} ColorTableEntry;

static ColorTableEntry _crColors[] = 
{
    {RGB(0x00, 0x00, 0x00)},
    {RGB(0xA5, 0x2A, 0x00)},
    {RGB(0x00, 0x40, 0x40)},
    {RGB(0x00, 0x55, 0x00)},
    {RGB(0x00, 0x00, 0x5E)},
    {RGB(0x00, 0x00, 0x8B)},
    {RGB(0x4B, 0x00, 0x82)},
    {RGB(0x28, 0x28, 0x28)},

    {RGB(0x8B, 0x00, 0x00)},
    {RGB(0xFF, 0x68, 0x20)},
    {RGB(0x8B, 0x8B, 0x00)},
    {RGB(0x00, 0x93, 0x00)},
    {RGB(0x38, 0x8E, 0x8E)},
    {RGB(0x00, 0x00, 0xFF)},
    {RGB(0x7B, 0x7B, 0xC0)},
    {RGB(0x66, 0x66, 0x66)},

    {RGB(0xFF, 0x00, 0x00)},
    {RGB(0xFF, 0xAD, 0x5B)},
    {RGB(0x32, 0xCD, 0x32)}, 
    {RGB(0x3C, 0xB3, 0x71)},
    {RGB(0x7F, 0xFF, 0xD4)},
    {RGB(0x7D, 0x9E, 0xC0)},
    {RGB(0x80, 0x00, 0x80)},
    {RGB(0x7F, 0x7F, 0x7F)},

    {RGB(0xFF, 0xC0, 0xCB)},
    {RGB(0xFF, 0xD7, 0x00)},
    {RGB(0xFF, 0xFF, 0x00)},    
    {RGB(0x00, 0xFF, 0x00)},
    {RGB(0x40, 0xE0, 0xD0)},
    {RGB(0xC0, 0xFF, 0xFF)},
    {RGB(0x48, 0x00, 0x48)},
    {RGB(0xC0, 0xC0, 0xC0)},

    {RGB(0xFF, 0xE4, 0xE1)},
    {RGB(0xD2, 0xB4, 0x8C)},
    {RGB(0xFF, 0xFF, 0xE0)},
    {RGB(0x98, 0xFB, 0x98)},
    {RGB(0xAF, 0xEE, 0xEE)},
    {RGB(0x68, 0x83, 0x8B)},
    {RGB(0xE6, 0xE6, 0xFA)},
    {RGB(0xFF, 0xFF, 0xFF)}
};

static void ColorBox(CDC* pDC, CPoint pt, COLORREF clr, BOOL bHover)
{
    Sys_Printf("void ColorBox(CDC* pDC, CPoint pt, COLORREF clr, BOOL bHover)\r\n");
}




static LONG FindSpot(CPoint point)
{
    LONG retVal;
    memset(&retVal, 0, sizeof(LONG));
    Sys_Printf("LONG FindSpot(CPoint point)\r\n");
    return retVal;
}



/////////////////////////////////////////////////////////////////////////////
// CPropTreeItemColor

COLORREF* CPropTreeItemColor::s_pColors = NULL;

CPropTreeItemColor::CPropTreeItemColor() :
	m_cColor(0),
	m_cPrevColor(0),
	m_nSpot(-1),
	m_bButton(FALSE),
	m_bInDialog(FALSE)
{
}

CPropTreeItemColor::~CPropTreeItemColor()
{
}


BEGIN_MESSAGE_MAP(CPropTreeItemColor, CWnd)
	//{{AFX_MSG_MAP(CPropTreeItemColor)
	ON_WM_KILLFOCUS()
	ON_WM_PAINT()
	ON_WM_CLOSE()
	ON_WM_MOUSEMOVE()
	ON_WM_SETCURSOR()
	ON_WM_LBUTTONDOWN()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// CPropTreeItemColor message handlers

void CPropTreeItemColor::SetDefaultColorsList(COLORREF* pColors)
{
    Sys_Printf("void CPropTreeItemColor::SetDefaultColorsList(COLORREF* pColors)\r\n");
}



void CPropTreeItemColor::DrawAttribute(CDC* pDC, const RECT& rc)
{
    Sys_Printf("void CPropTreeItemColor::DrawAttribute(CDC* pDC, const RECT& rc)\r\n");
}



LPARAM CPropTreeItemColor::GetItemValue()
{
    LPARAM retVal;
    memset(&retVal, 0, sizeof(LPARAM));
    Sys_Printf("LPARAM CPropTreeItemColor::GetItemValue()\r\n");
    return retVal;
}



void CPropTreeItemColor::SetItemValue(LPARAM lParam)
{
    Sys_Printf("void CPropTreeItemColor::SetItemValue(LPARAM lParam)\r\n");
}



void CPropTreeItemColor::OnMove()
{
    Sys_Printf("void CPropTreeItemColor::OnMove()\r\n");
}



void CPropTreeItemColor::OnRefresh()
{
    Sys_Printf("void CPropTreeItemColor::OnRefresh()\r\n");
}



void CPropTreeItemColor::OnCommit()
{
    Sys_Printf("void CPropTreeItemColor::OnCommit()\r\n");
}



void CPropTreeItemColor::OnActivate(int activateType, CPoint point)
{
    Sys_Printf("void CPropTreeItemColor::OnActivate(int activateType, CPoint point)\r\n");
}



void CPropTreeItemColor::OnKillFocus(CWnd* pNewWnd) 
{
    Sys_Printf("void CPropTreeItemColor::OnKillFocus(CWnd* pNewWnd)\r\n");
}



void CPropTreeItemColor::OnPaint() 
{
    Sys_Printf("void CPropTreeItemColor::OnPaint()\r\n");
}



void CPropTreeItemColor::OnClose() 
{
    Sys_Printf("void CPropTreeItemColor::OnClose()\r\n");
}



void CPropTreeItemColor::OnMouseMove(UINT, CPoint point) 
{
    Sys_Printf("void CPropTreeItemColor::OnMouseMove(UINT, CPoint point)\r\n");
}



BOOL CPropTreeItemColor::OnSetCursor(CWnd* pWnd, UINT nHitTest, UINT message) 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTreeItemColor::OnSetCursor(CWnd* pWnd, UINT nHitTest, UINT message)\r\n");
    return retVal;
}



void CPropTreeItemColor::OnLButtonDown(UINT, CPoint point) 
{
    Sys_Printf("void CPropTreeItemColor::OnLButtonDown(UINT, CPoint point)\r\n");
}

