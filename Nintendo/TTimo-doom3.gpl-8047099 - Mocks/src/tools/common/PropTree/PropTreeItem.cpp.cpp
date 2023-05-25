// PropTreeItem.cpp
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

#include "PropTreeItem.h"

#define PROPTREEITEM_DEFHEIGHT			21			// default heigt of an item
#define PROPTREEITEM_SPACE				5			// default horz spacing
#define PROPTREEITEM_EXPANDBOX			9			// size of the expand box
#define PROPTREEITEM_CHECKBOX			14			// size of the check box
#define PROPTREEITEM_EXPANDCOLUMN		16			// width of the expand column
#define PNINDENT						16			// child level indent

#define PROPTREEITEM_EXPANDBOXHALF		(PROPTREEITEM_EXPANDBOX/2)


/////////////////////////////////////////////////////////////////////////////
// drawing helper functions
//

// draw a dotted horizontal line
static void _DotHLine(HDC hdc, LONG x, LONG y, LONG w)
{
    Sys_Printf("void _DotHLine(HDC hdc, LONG x, LONG y, LONG w)\r\n");
}



// draw the plus/minus button
static void _DrawExpand(HDC hdc, LONG x, LONG y, BOOL bExpand, BOOL bFill)
{
    Sys_Printf("void _DrawExpand(HDC hdc, LONG x, LONG y, BOOL bExpand, BOOL bFill)\r\n");
}


/////////////////////////////////////////////////////////////////////////////
// CPropTreeItem
//

CPropTreeItem::CPropTreeItem() :
	m_pProp(NULL),
	m_sLabel(_T("")),
	m_sInfo(_T("")),
	m_loc(0,0),
	m_rc(0,0,0,0),
	m_lParam(0),
	m_nCtrlID(0),
	m_dwState(0),
	m_bActivated(FALSE),
	m_bCommitOnce(FALSE),
	m_rcExpand(0,0,0,0),
	m_rcCheckbox(0,0,0,0),
	m_rcButton(0,0,0,0),
	m_pParent(NULL),
	m_pSibling(NULL),
	m_pChild(NULL),
	m_pVis(NULL)
{
}


CPropTreeItem::~CPropTreeItem()
{
}


BOOL CPropTreeItem::IsExpanded()
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTreeItem::IsExpanded()\r\n");
    return retVal;
}



BOOL CPropTreeItem::IsSelected()
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTreeItem::IsSelected()\r\n");
    return retVal;
}



BOOL CPropTreeItem::IsChecked()
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTreeItem::IsChecked()\r\n");
    return retVal;
}



BOOL CPropTreeItem::IsReadOnly()
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTreeItem::IsReadOnly()\r\n");
    return retVal;
}



BOOL CPropTreeItem::IsActivated()
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTreeItem::IsActivated()\r\n");
    return retVal;
}



void CPropTreeItem::Select(BOOL bSelect)
{
    Sys_Printf("void CPropTreeItem::Select(BOOL bSelect)\r\n");
}



void CPropTreeItem::Expand(BOOL bExpand)
{
    Sys_Printf("void CPropTreeItem::Expand(BOOL bExpand)\r\n");
}



void CPropTreeItem::Check(BOOL bCheck)
{
    Sys_Printf("void CPropTreeItem::Check(BOOL bCheck)\r\n");
}



void CPropTreeItem::ReadOnly(BOOL bReadOnly)
{
    Sys_Printf("void CPropTreeItem::ReadOnly(BOOL bReadOnly)\r\n");
}



BOOL CPropTreeItem::IsCheckBox()
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTreeItem::IsCheckBox()\r\n");
    return retVal;
}



void CPropTreeItem::HasCheckBox(BOOL bCheckbox)
{
    Sys_Printf("void CPropTreeItem::HasCheckBox(BOOL bCheckbox)\r\n");
}



BOOL CPropTreeItem::HitExpand(const POINT& pt)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTreeItem::HitExpand(const POINT& pt)\r\n");
    return retVal;
}



BOOL CPropTreeItem::HitCheckBox(const POINT& pt)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTreeItem::HitCheckBox(const POINT& pt)\r\n");
    return retVal;
}



BOOL CPropTreeItem::IsRootLevel()
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTreeItem::IsRootLevel()\r\n");
    return retVal;
}



LONG CPropTreeItem::GetTotalHeight()
{
    LONG retVal;
    memset(&retVal, 0, sizeof(LONG));
    Sys_Printf("LONG CPropTreeItem::GetTotalHeight()\r\n");
    return retVal;
}



void CPropTreeItem::SetLabelText(LPCTSTR sLabel)
{
    Sys_Printf("void CPropTreeItem::SetLabelText(LPCTSTR sLabel)\r\n");
}



LPCTSTR CPropTreeItem::GetLabelText()
{
    LPCTSTR retVal;
    memset(&retVal, 0, sizeof(LPCTSTR));
    Sys_Printf("LPCTSTR CPropTreeItem::GetLabelText()\r\n");
    return retVal;
}



void CPropTreeItem::SetInfoText(LPCTSTR sInfo)
{
    Sys_Printf("void CPropTreeItem::SetInfoText(LPCTSTR sInfo)\r\n");
}



LPCTSTR CPropTreeItem::GetInfoText()
{
    LPCTSTR retVal;
    memset(&retVal, 0, sizeof(LPCTSTR));
    Sys_Printf("LPCTSTR CPropTreeItem::GetInfoText()\r\n");
    return retVal;
}



void CPropTreeItem::SetCtrlID(UINT nCtrlID)
{
    Sys_Printf("void CPropTreeItem::SetCtrlID(UINT nCtrlID)\r\n");
}



UINT CPropTreeItem::GetCtrlID()
{
    UINT retVal;
    memset(&retVal, 0, sizeof(UINT));
    Sys_Printf("UINT CPropTreeItem::GetCtrlID()\r\n");
    return retVal;
}



LONG CPropTreeItem::GetHeight()
{
    LONG retVal;
    memset(&retVal, 0, sizeof(LONG));
    Sys_Printf("LONG CPropTreeItem::GetHeight()\r\n");
    return retVal;
}



LPARAM CPropTreeItem::GetItemValue()
{
    LPARAM retVal;
    memset(&retVal, 0, sizeof(LPARAM));
    Sys_Printf("LPARAM CPropTreeItem::GetItemValue()\r\n");
    return retVal;
}



void CPropTreeItem::SetItemValue(LPARAM)
{
    Sys_Printf("void CPropTreeItem::SetItemValue(LPARAM)\r\n");
}



void CPropTreeItem::OnMove()
{
    Sys_Printf("void CPropTreeItem::OnMove()\r\n");
}



void CPropTreeItem::OnRefresh()
{
    Sys_Printf("void CPropTreeItem::OnRefresh()\r\n");
}



void CPropTreeItem::OnCommit()
{
    Sys_Printf("void CPropTreeItem::OnCommit()\r\n");
}



void CPropTreeItem::Activate(int activateType, CPoint point)
{
    Sys_Printf("void CPropTreeItem::Activate(int activateType, CPoint point)\r\n");
}



void CPropTreeItem::CommitChanges()
{
    Sys_Printf("void CPropTreeItem::CommitChanges()\r\n");
}



void CPropTreeItem::OnActivate(int activateType, CPoint point)
{
    Sys_Printf("void CPropTreeItem::OnActivate(int activateType, CPoint point)\r\n");
}



void CPropTreeItem::SetPropOwner(CPropTree* pProp)
{
    Sys_Printf("void CPropTreeItem::SetPropOwner(CPropTree* pProp)\r\n");
}



const POINT& CPropTreeItem::GetLocation()
{
	return m_loc;
}


CPropTreeItem* CPropTreeItem::GetParent()
{
    Sys_Printf("CPropTreeItem* CPropTreeItem::GetParent()\r\n");
    return NULL;
}



CPropTreeItem* CPropTreeItem::GetSibling()
{
    Sys_Printf("CPropTreeItem* CPropTreeItem::GetSibling()\r\n");
    return NULL;
}



CPropTreeItem* CPropTreeItem::GetChild()
{
    Sys_Printf("CPropTreeItem* CPropTreeItem::GetChild()\r\n");
    return NULL;
}



CPropTreeItem* CPropTreeItem::GetNextVisible()
{
    Sys_Printf("CPropTreeItem* CPropTreeItem::GetNextVisible()\r\n");
    return NULL;
}



void CPropTreeItem::SetParent(CPropTreeItem* pParent)
{
    Sys_Printf("void CPropTreeItem::SetParent(CPropTreeItem* pParent)\r\n");
}



void CPropTreeItem::SetSibling(CPropTreeItem* pSibling)
{
    Sys_Printf("void CPropTreeItem::SetSibling(CPropTreeItem* pSibling)\r\n");
}



void CPropTreeItem::SetChild(CPropTreeItem* pChild)
{
    Sys_Printf("void CPropTreeItem::SetChild(CPropTreeItem* pChild)\r\n");
}



void CPropTreeItem::SetNextVisible(CPropTreeItem* pVis)
{
    Sys_Printf("void CPropTreeItem::SetNextVisible(CPropTreeItem* pVis)\r\n");
}



LONG CPropTreeItem::DrawItem(CDC* pDC, const RECT& rc, LONG x, LONG y)
{
    LONG retVal;
    memset(&retVal, 0, sizeof(LONG));
    Sys_Printf("LONG CPropTreeItem::DrawItem(CDC* pDC, const RECT& rc, LONG x, LONG y)\r\n");
    return retVal;
}



void CPropTreeItem::DrawAttribute(CDC*, const RECT&)
{
    Sys_Printf("void CPropTreeItem::DrawAttribute(CDC*, const RECT&)\r\n");
}

