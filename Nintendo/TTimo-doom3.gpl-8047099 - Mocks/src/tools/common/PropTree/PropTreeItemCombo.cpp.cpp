// PropTreeItemCombo.cpp : implementation file
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

#include "PropTreeItemCombo.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#define DROPDOWN_HEIGHT			100

/////////////////////////////////////////////////////////////////////////////
// CPropTreeItemCombo

CPropTreeItemCombo::CPropTreeItemCombo() :
	m_lComboData(0),
	m_nDropHeight(DROPDOWN_HEIGHT)
{
}

CPropTreeItemCombo::~CPropTreeItemCombo()
{
}


BEGIN_MESSAGE_MAP(CPropTreeItemCombo, CComboBox)
	//{{AFX_MSG_MAP(CPropTreeItemCombo)
	ON_CONTROL_REFLECT(CBN_SELCHANGE, OnSelchange)
	ON_CONTROL_REFLECT(CBN_KILLFOCUS, OnKillfocus)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CPropTreeItemCombo message handlers

void CPropTreeItemCombo::DrawAttribute(CDC* pDC, const RECT& rc)
{
    Sys_Printf("void CPropTreeItemCombo::DrawAttribute(CDC* pDC, const RECT& rc)\r\n");
}



LPARAM CPropTreeItemCombo::GetItemValue()
{
    LPARAM retVal;
    memset(&retVal, 0, sizeof(LPARAM));
    Sys_Printf("LPARAM CPropTreeItemCombo::GetItemValue()\r\n");
    return retVal;
}



void CPropTreeItemCombo::SetItemValue(LPARAM lParam)
{
    Sys_Printf("void CPropTreeItemCombo::SetItemValue(LPARAM lParam)\r\n");
}



void CPropTreeItemCombo::OnMove()
{
    Sys_Printf("void CPropTreeItemCombo::OnMove()\r\n");
}



void CPropTreeItemCombo::OnRefresh()
{
    Sys_Printf("void CPropTreeItemCombo::OnRefresh()\r\n");
}



void CPropTreeItemCombo::OnCommit()
{
    Sys_Printf("void CPropTreeItemCombo::OnCommit()\r\n");
}



void CPropTreeItemCombo::OnActivate(int activateType, CPoint point)
{
    Sys_Printf("void CPropTreeItemCombo::OnActivate(int activateType, CPoint point)\r\n");
}



BOOL CPropTreeItemCombo::CreateComboBox(DWORD dwStyle)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTreeItemCombo::CreateComboBox(DWORD dwStyle)\r\n");
    return retVal;
}



BOOL CPropTreeItemCombo::CreateComboBoxBool()
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTreeItemCombo::CreateComboBoxBool()\r\n");
    return retVal;
}



LONG CPropTreeItemCombo::FindCBData(LPARAM lParam)
{
    LONG retVal;
    memset(&retVal, 0, sizeof(LONG));
    Sys_Printf("LONG CPropTreeItemCombo::FindCBData(LPARAM lParam)\r\n");
    return retVal;
}



void CPropTreeItemCombo::OnSelchange() 
{
    Sys_Printf("void CPropTreeItemCombo::OnSelchange()\r\n");
}



void CPropTreeItemCombo::OnKillfocus() 
{
    Sys_Printf("void CPropTreeItemCombo::OnKillfocus()\r\n");
}



void CPropTreeItemCombo::SetDropDownHeight(LONG nDropHeight)
{
    Sys_Printf("void CPropTreeItemCombo::SetDropDownHeight(LONG nDropHeight)\r\n");
}



LONG CPropTreeItemCombo::GetDropDownHeight()
{
    LONG retVal;
    memset(&retVal, 0, sizeof(LONG));
    Sys_Printf("LONG CPropTreeItemCombo::GetDropDownHeight()\r\n");
    return retVal;
}

