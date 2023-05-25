// PropTreeItemButton.cpp : implementation file
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
#include "PropTreeItemButton.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#define BUTTON_SIZE 17

/////////////////////////////////////////////////////////////////////////////
// CPropTreeItemButton

CPropTreeItemButton::CPropTreeItemButton() {
    CPropTreeItemButton retVal;
    memset(&retVal, 0, sizeof(CPropTreeItemButton));
    Sys_Printf("CPropTreeItemButtonCPropTreeItemButton::CPropTreeItemButton()\r\n");
    return retVal;
}


CPropTreeItemButton::~CPropTreeItemButton() {
}


/////////////////////////////////////////////////////////////////////////////
// CPropTreeItemButton message handlers

LONG CPropTreeItemButton::DrawItem( CDC* pDC, const RECT& rc, LONG x, LONG y )
{
    LONG retVal;
    memset(&retVal, 0, sizeof(LONG));
    Sys_Printf("LONG CPropTreeItemButton::DrawItem( CDC* pDC, const RECT& rc, LONG x, LONG y )\r\n");
    return retVal;
}


void CPropTreeItemButton::DrawAttribute(CDC* pDC, const RECT& rc) {
    Sys_Printf("void CPropTreeItemButton::DrawAttribute(CDC* pDC, const RECT& rc)\r\n");
}



LPARAM CPropTreeItemButton::GetItemValue() {
    LPARAM retVal;
    memset(&retVal, 0, sizeof(LPARAM));
    Sys_Printf("LPARAM CPropTreeItemButton::GetItemValue()\r\n");
    return retVal;
}



void CPropTreeItemButton::SetItemValue(LPARAM lParam) {
    Sys_Printf("void CPropTreeItemButton::SetItemValue(LPARAM lParam)\r\n");
}



BOOL CPropTreeItemButton::HitButton( const POINT& pt ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTreeItemButton::HitButton( const POINT& pt )\r\n");
    return retVal;
}


void CPropTreeItemButton::SetButtonText( LPCSTR text ) {
    Sys_Printf("void CPropTreeItemButton::SetButtonText( LPCSTR text )\r\n");
}

