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
#include "PropertyList.h"

#include "../comafx/DialogColorPicker.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CPropertyList

CPropertyList::CPropertyList() {
    CPropertyList retVal;
    memset(&retVal, 0, sizeof(CPropertyList));
    Sys_Printf("CPropertyListCPropertyList::CPropertyList()\r\n");
    return retVal;
}


CPropertyList::~CPropertyList() {
}


BEGIN_MESSAGE_MAP(CPropertyList, CListBox)
	//{{AFX_MSG_MAP(CPropertyList)
	ON_WM_CREATE()
	ON_CONTROL_REFLECT(LBN_SELCHANGE, OnSelchange)
	ON_WM_LBUTTONUP()
	ON_WM_KILLFOCUS()
	ON_WM_LBUTTONDOWN()
	ON_WM_MOUSEMOVE()
	//}}AFX_MSG_MAP
	ON_CBN_CLOSEUP(IDC_PROPCMBBOX, OnKillfocusCmbBox)
	ON_CBN_SELCHANGE(IDC_PROPCMBBOX, OnSelchangeCmbBox)
	ON_EN_KILLFOCUS(IDC_PROPEDITBOX, OnKillfocusEditBox)
	ON_EN_CHANGE(IDC_PROPEDITBOX, OnChangeEditBox)
	ON_BN_CLICKED(IDC_PROPBTNCTRL, OnButton)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CPropertyList message handlers

BOOL CPropertyList::PreCreateWindow(CREATESTRUCT& cs) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropertyList::PreCreateWindow(CREATESTRUCT& cs)\r\n");
    return retVal;
}


void CPropertyList::MeasureItem(LPMEASUREITEMSTRUCT lpMeasureItemStruct) {
    Sys_Printf("void CPropertyList::MeasureItem(LPMEASUREITEMSTRUCT lpMeasureItemStruct)\r\n");
}



void CPropertyList::DrawItem(LPDRAWITEMSTRUCT lpDIS) {
    Sys_Printf("void CPropertyList::DrawItem(LPDRAWITEMSTRUCT lpDIS)\r\n");
}


int CPropertyList::AddItem(CString txt) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CPropertyList::AddItem(CString txt)\r\n");
    return retVal;
}


int CPropertyList::AddPropItem(CPropertyItem* pItem) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CPropertyList::AddPropItem(CPropertyItem* pItem)\r\n");
    return retVal;
}


int CPropertyList::OnCreate(LPCREATESTRUCT lpCreateStruct) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CPropertyList::OnCreate(LPCREATESTRUCT lpCreateStruct)\r\n");
    return retVal;
}


void CPropertyList::OnSelchange() {
    Sys_Printf("void CPropertyList::OnSelchange()\r\n");
}


void CPropertyList::DisplayButton(CRect region) {
    Sys_Printf("void CPropertyList::DisplayButton(CRect region)\r\n");
}


void CPropertyList::ResetContent() {
    Sys_Printf("void CPropertyList::ResetContent()\r\n");
}


void CPropertyList::OnKillFocus(CWnd* pNewWnd) {
    Sys_Printf("void CPropertyList::OnKillFocus(CWnd* pNewWnd)\r\n");
}


void CPropertyList::OnKillfocusCmbBox() {
    Sys_Printf("void CPropertyList::OnKillfocusCmbBox()\r\n");
}


void CPropertyList::OnKillfocusEditBox() {
    Sys_Printf("void CPropertyList::OnKillfocusEditBox()\r\n");
}


void CPropertyList::OnSelchangeCmbBox() {
    Sys_Printf("void CPropertyList::OnSelchangeCmbBox()\r\n");
}


void CPropertyList::OnChangeEditBox() {
    Sys_Printf("void CPropertyList::OnChangeEditBox()\r\n");
}


void CPropertyList::OnButton() {
    Sys_Printf("void CPropertyList::OnButton()\r\n");
}


void CPropertyList::OnLButtonUp(UINT nFlags, CPoint point) {
    Sys_Printf("void CPropertyList::OnLButtonUp(UINT nFlags, CPoint point)\r\n");
}


void CPropertyList::OnLButtonDown(UINT nFlags, CPoint point) {
    Sys_Printf("void CPropertyList::OnLButtonDown(UINT nFlags, CPoint point)\r\n");
}


void CPropertyList::OnMouseMove(UINT nFlags, CPoint point) {
    Sys_Printf("void CPropertyList::OnMouseMove(UINT nFlags, CPoint point)\r\n");
}


void CPropertyList::InvertLine(CDC* pDC,CPoint ptFrom,CPoint ptTo) {
    Sys_Printf("void CPropertyList::InvertLine(CDC* pDC,CPoint ptFrom,CPoint ptTo)\r\n");
}


void CPropertyList::PreSubclassWindow() {
    Sys_Printf("void CPropertyList::PreSubclassWindow()\r\n");
}



void CPropertyList::OnVScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar) {
    Sys_Printf("void CPropertyList::OnVScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar)\r\n");
}
 

