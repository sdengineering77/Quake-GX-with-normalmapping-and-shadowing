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
#include "PropTreeItemEdit.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CPropTreeItemEdit

CPropTreeItemEdit::CPropTreeItemEdit() :
	m_sEdit(_T("")),
	m_nFormat(ValueFormatText),
	m_bPassword(FALSE),
	m_fValue(0.0f)
{
}

CPropTreeItemEdit::~CPropTreeItemEdit()
{
}


BEGIN_MESSAGE_MAP(CPropTreeItemEdit, CEdit)
	//{{AFX_MSG_MAP(CPropTreeItemEdit)
	ON_WM_GETDLGCODE()
	ON_WM_KEYDOWN()
	ON_CONTROL_REFLECT(EN_KILLFOCUS, OnKillfocus)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CPropTreeItemEdit message handlers

void CPropTreeItemEdit::DrawAttribute(CDC* pDC, const RECT& rc)
{
    Sys_Printf("void CPropTreeItemEdit::DrawAttribute(CDC* pDC, const RECT& rc)\r\n");
}




void CPropTreeItemEdit::SetAsPassword(BOOL bPassword)
{
    Sys_Printf("void CPropTreeItemEdit::SetAsPassword(BOOL bPassword)\r\n");
}



void CPropTreeItemEdit::SetValueFormat(ValueFormat nFormat)
{
    Sys_Printf("void CPropTreeItemEdit::SetValueFormat(ValueFormat nFormat)\r\n");
}



LPARAM CPropTreeItemEdit::GetItemValue()
{
    LPARAM retVal;
    memset(&retVal, 0, sizeof(LPARAM));
    Sys_Printf("LPARAM CPropTreeItemEdit::GetItemValue()\r\n");
    return retVal;
}



void CPropTreeItemEdit::SetItemValue(LPARAM lParam)
{
    Sys_Printf("void CPropTreeItemEdit::SetItemValue(LPARAM lParam)\r\n");
}



void CPropTreeItemEdit::OnMove()
{
    Sys_Printf("void CPropTreeItemEdit::OnMove()\r\n");
}



void CPropTreeItemEdit::OnRefresh()
{
    Sys_Printf("void CPropTreeItemEdit::OnRefresh()\r\n");
}



void CPropTreeItemEdit::OnCommit()
{
    Sys_Printf("void CPropTreeItemEdit::OnCommit()\r\n");
}



void CPropTreeItemEdit::OnActivate(int activateType, CPoint point)
{
    Sys_Printf("void CPropTreeItemEdit::OnActivate(int activateType, CPoint point)\r\n");
}



UINT CPropTreeItemEdit::OnGetDlgCode() 
{
    UINT retVal;
    memset(&retVal, 0, sizeof(UINT));
    Sys_Printf("UINT CPropTreeItemEdit::OnGetDlgCode()\r\n");
    return retVal;
}



void CPropTreeItemEdit::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
    Sys_Printf("void CPropTreeItemEdit::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags)\r\n");
}



void CPropTreeItemEdit::OnKillfocus() 
{
    Sys_Printf("void CPropTreeItemEdit::OnKillfocus()\r\n");
}

