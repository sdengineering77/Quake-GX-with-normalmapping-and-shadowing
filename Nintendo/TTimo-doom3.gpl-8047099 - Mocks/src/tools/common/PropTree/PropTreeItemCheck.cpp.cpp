// PropTreeItemCheck.cpp : implementation file
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
#include "PropTreeItemCheck.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#define CHECK_BOX_SIZE 14

/////////////////////////////////////////////////////////////////////////////
// CPropTreeItemCheck

CPropTreeItemCheck::CPropTreeItemCheck()
{
    CPropTreeItemCheck retVal;
    memset(&retVal, 0, sizeof(CPropTreeItemCheck));
    Sys_Printf("CPropTreeItemCheckCPropTreeItemCheck::CPropTreeItemCheck()\r\n");
    return retVal;
}


CPropTreeItemCheck::~CPropTreeItemCheck()
{
}


BEGIN_MESSAGE_MAP(CPropTreeItemCheck, CButton)
	//{{AFX_MSG_MAP(CPropTreeItemCheck)
	//}}AFX_MSG_MAP
	ON_CONTROL_REFLECT(BN_KILLFOCUS, OnBnKillfocus)
	ON_CONTROL_REFLECT(BN_CLICKED, OnBnClicked)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CPropTreeItemCheck message handlers

void CPropTreeItemCheck::DrawAttribute(CDC* pDC, const RECT& rc)
{
    Sys_Printf("void CPropTreeItemCheck::DrawAttribute(CDC* pDC, const RECT& rc)\r\n");
}


void CPropTreeItemCheck::SetCheckState(BOOL state)
 {
    Sys_Printf("void CPropTreeItemCheck::SetCheckState(BOOL state)\r\n");
}



LPARAM CPropTreeItemCheck::GetItemValue()
{
    LPARAM retVal;
    memset(&retVal, 0, sizeof(LPARAM));
    Sys_Printf("LPARAM CPropTreeItemCheck::GetItemValue()\r\n");
    return retVal;
}



void CPropTreeItemCheck::SetItemValue(LPARAM lParam)
{
    Sys_Printf("void CPropTreeItemCheck::SetItemValue(LPARAM lParam)\r\n");
}



void CPropTreeItemCheck::OnMove()
{
    Sys_Printf("void CPropTreeItemCheck::OnMove()\r\n");
}



void CPropTreeItemCheck::OnRefresh()
{
    Sys_Printf("void CPropTreeItemCheck::OnRefresh()\r\n");
}



void CPropTreeItemCheck::OnCommit()
{
    Sys_Printf("void CPropTreeItemCheck::OnCommit()\r\n");
}



void CPropTreeItemCheck::OnActivate(int activateType, CPoint point)
{
    Sys_Printf("void CPropTreeItemCheck::OnActivate(int activateType, CPoint point)\r\n");
}



bool CPropTreeItemCheck::CreateCheckBox() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CPropTreeItemCheck::CreateCheckBox()\r\n");
    return retVal;
}


void CPropTreeItemCheck::OnBnKillfocus()
{
    Sys_Printf("void CPropTreeItemCheck::OnBnKillfocus()\r\n");
}


void CPropTreeItemCheck::OnBnClicked()
{
    Sys_Printf("void CPropTreeItemCheck::OnBnClicked()\r\n");
}

