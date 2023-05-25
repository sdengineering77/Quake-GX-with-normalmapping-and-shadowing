// PropTreeItemEdit.cpp : implementation file
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

#include "proptree.h"
#include "PropTreeItemEditButton.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#define BUTTON_SIZE 17

/////////////////////////////////////////////////////////////////////////////
// CPropTreeItemEditButton

CPropTreeItemEditButton::CPropTreeItemEditButton() :
m_sEdit(_T("")),
m_nFormat(ValueFormatText),
m_bPassword(FALSE),
m_fValue(0.0f)
{
	mouseDown = false;
}

CPropTreeItemEditButton::~CPropTreeItemEditButton()
{
}


BEGIN_MESSAGE_MAP(CPropTreeItemEditButton, CEdit)
	//{{AFX_MSG_MAP(CPropTreeItemEditButton)
	ON_WM_GETDLGCODE()
	ON_WM_KEYDOWN()
	ON_CONTROL_REFLECT(EN_KILLFOCUS, OnKillfocus)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CPropTreeItemEditButton message handlers

LONG CPropTreeItemEditButton::DrawItem( CDC* pDC, const RECT& rc, LONG x, LONG y )
{
    LONG retVal;
    memset(&retVal, 0, sizeof(LONG));
    Sys_Printf("LONG CPropTreeItemEditButton::DrawItem( CDC* pDC, const RECT& rc, LONG x, LONG y )\r\n");
    return retVal;
}


void CPropTreeItemEditButton::DrawAttribute(CDC* pDC, const RECT& rc)
{
    Sys_Printf("void CPropTreeItemEditButton::DrawAttribute(CDC* pDC, const RECT& rc)\r\n");
}




void CPropTreeItemEditButton::SetAsPassword(BOOL bPassword)
{
    Sys_Printf("void CPropTreeItemEditButton::SetAsPassword(BOOL bPassword)\r\n");
}



void CPropTreeItemEditButton::SetValueFormat(ValueFormat nFormat)
{
    Sys_Printf("void CPropTreeItemEditButton::SetValueFormat(ValueFormat nFormat)\r\n");
}



LPARAM CPropTreeItemEditButton::GetItemValue()
{
    LPARAM retVal;
    memset(&retVal, 0, sizeof(LPARAM));
    Sys_Printf("LPARAM CPropTreeItemEditButton::GetItemValue()\r\n");
    return retVal;
}



void CPropTreeItemEditButton::SetItemValue(LPARAM lParam)
{
    Sys_Printf("void CPropTreeItemEditButton::SetItemValue(LPARAM lParam)\r\n");
}



void CPropTreeItemEditButton::OnMove()
{
    Sys_Printf("void CPropTreeItemEditButton::OnMove()\r\n");
}



void CPropTreeItemEditButton::OnRefresh()
{
    Sys_Printf("void CPropTreeItemEditButton::OnRefresh()\r\n");
}



void CPropTreeItemEditButton::OnCommit()
{
    Sys_Printf("void CPropTreeItemEditButton::OnCommit()\r\n");
}



void CPropTreeItemEditButton::OnActivate(int activateType, CPoint point)
{
    Sys_Printf("void CPropTreeItemEditButton::OnActivate(int activateType, CPoint point)\r\n");
}



UINT CPropTreeItemEditButton::OnGetDlgCode() 
{
    UINT retVal;
    memset(&retVal, 0, sizeof(UINT));
    Sys_Printf("UINT CPropTreeItemEditButton::OnGetDlgCode()\r\n");
    return retVal;
}



void CPropTreeItemEditButton::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
    Sys_Printf("void CPropTreeItemEditButton::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags)\r\n");
}



void CPropTreeItemEditButton::OnKillfocus() 
{
    Sys_Printf("void CPropTreeItemEditButton::OnKillfocus()\r\n");
}


BOOL CPropTreeItemEditButton::HitButton( const POINT& pt ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTreeItemEditButton::HitButton( const POINT& pt )\r\n");
    return retVal;
}


void CPropTreeItemEditButton::SetButtonText( LPCSTR text ) {
    Sys_Printf("void CPropTreeItemEditButton::SetButtonText( LPCSTR text )\r\n");
}

