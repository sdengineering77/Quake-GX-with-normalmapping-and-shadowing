// PropTree.cpp : implementation file
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

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#define PROPTREEITEM_EXPANDCOLUMN		16			// width of the expand column
#define PROPTREEITEM_COLRNG				5			// width of splitter

//static AFX_EXTENSION_MODULE PropTreeDLL = {NULL, NULL};
static const CString strOfficeFontName	= _T("Tahoma");
static const CString strDefaultFontName = _T("MS Sans Serif");

HINSTANCE ghInst;

/*extern "C" int APIENTRY DllMain(HINSTANCE hInstance, DWORD dwReason, LPVOID)
{
    APIENTRY retVal;
    memset(&retVal, 0, sizeof(APIENTRY));
    Sys_Printf("APIENTRY DllMain(HINSTANCE hInstance, DWORD dwReason, LPVOID)\r\n");
    return retVal;
}
*/

void InitPropTree(HINSTANCE hInstance) {
    Sys_Printf("void InitPropTree(HINSTANCE hInstance)\r\n");
}


static int CALLBACK FontFamilyProcFonts(const LOGFONT FAR* lplf, const TEXTMETRIC FAR*, ULONG, LPARAM)
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK FontFamilyProcFonts(const LOGFONT FAR* lplf, const TEXTMETRIC FAR*, ULONG, LPARAM)\r\n");
    return retVal;
}


/////////////////////////////////////////////////////////////////////////////
// CPropTree

UINT CPropTree::s_nInstanceCount;
CFont* CPropTree::s_pNormalFont;
CFont* CPropTree::s_pBoldFont;
CPropTreeItem* CPropTree::s_pFound;

CPropTree::CPropTree() :
	m_bShowInfo(TRUE),
	m_nInfoHeight(50),
	m_pVisbleList(NULL),
	m_Origin(100,0),
	m_nLastUID(1),
	m_pFocus(NULL),
	m_bDisableInput(FALSE)
{
	m_Root.Expand();

	// init global resources only once
	if (!s_nInstanceCount)
		InitGlobalResources();
	s_nInstanceCount++;
}


CPropTree::~CPropTree()
{
	DeleteAllItems();

	s_nInstanceCount--;

	// free global resource when ALL CPropTrees are destroyed
	if (!s_nInstanceCount)
		FreeGlobalResources();
}


BEGIN_MESSAGE_MAP(CPropTree, CWnd)
	//{{AFX_MSG_MAP(CPropTree)
	ON_WM_CREATE()
	ON_WM_SIZE()
	ON_WM_ENABLE()
	ON_WM_SYSCOLORCHANGE()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// CPropTree message handlers

const POINT& CPropTree::GetOrigin()
{
	return m_Origin;
}


BOOL CPropTree::Create(DWORD dwStyle, const RECT& rect, CWnd* pParentWnd, UINT nID)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTree::Create(DWORD dwStyle, const RECT& rect, CWnd* pParentWnd, UINT nID)\r\n");
    return retVal;
}



int CPropTree::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CPropTree::OnCreate(LPCREATESTRUCT lpCreateStruct)\r\n");
    return retVal;
}



CWnd* CPropTree::GetCtrlParent()
{
    Sys_Printf("CWnd* CPropTree::GetCtrlParent()\r\n");
    return NULL;
}



void CPropTree::OnSize(UINT nType, int cx, int cy) 
{
    Sys_Printf("void CPropTree::OnSize(UINT nType, int cx, int cy)\r\n");
}



void CPropTree::ResizeChildWindows(int cx, int cy)
{
    Sys_Printf("void CPropTree::ResizeChildWindows(int cx, int cy)\r\n");
}



void CPropTree::InitGlobalResources()
{
    Sys_Printf("void CPropTree::InitGlobalResources()\r\n");
}



void CPropTree::FreeGlobalResources()
{
    Sys_Printf("void CPropTree::FreeGlobalResources()\r\n");
}



CFont* CPropTree::GetNormalFont()
{
    Sys_Printf("CFont* CPropTree::GetNormalFont()\r\n");
    return NULL;
}



CFont* CPropTree::GetBoldFont()
{
    Sys_Printf("CFont* CPropTree::GetBoldFont()\r\n");
    return NULL;
}



CPropTreeItem* CPropTree::GetFocusedItem()
{
    Sys_Printf("CPropTreeItem* CPropTree::GetFocusedItem()\r\n");
    return NULL;
}



CPropTreeItem* CPropTree::GetRootItem()
{
    Sys_Printf("CPropTreeItem* CPropTree::GetRootItem()\r\n");
    return NULL;
}



void CPropTree::ClearVisibleList()
{
    Sys_Printf("void CPropTree::ClearVisibleList()\r\n");
}



CPropTreeItem* CPropTree::GetVisibleList()
{
    Sys_Printf("CPropTreeItem* CPropTree::GetVisibleList()\r\n");
    return NULL;
}



void CPropTree::AddToVisibleList(CPropTreeItem* pItem)
{
    Sys_Printf("void CPropTree::AddToVisibleList(CPropTreeItem* pItem)\r\n");
}



BOOL CPropTree::EnumItems(CPropTreeItem* pItem, ENUMPROPITEMPROC proc, LPARAM lParam)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTree::EnumItems(CPropTreeItem* pItem, ENUMPROPITEMPROC proc, LPARAM lParam)\r\n");
    return retVal;
}



void CPropTree::SetOriginOffset(LONG nOffset)
{
    Sys_Printf("void CPropTree::SetOriginOffset(LONG nOffset)\r\n");
}


	
void CPropTree::UpdatedItems()
{
    Sys_Printf("void CPropTree::UpdatedItems()\r\n");
}



void CPropTree::DeleteAllItems()
{
    Sys_Printf("void CPropTree::DeleteAllItems()\r\n");
}



void CPropTree::DeleteItem(CPropTreeItem* pItem)
{
    Sys_Printf("void CPropTree::DeleteItem(CPropTreeItem* pItem)\r\n");
}



LONG CPropTree::GetColumn()
{
    LONG retVal;
    memset(&retVal, 0, sizeof(LONG));
    Sys_Printf("LONG CPropTree::GetColumn()\r\n");
    return retVal;
}



void CPropTree::SetColumn(LONG nColumn)
{
    Sys_Printf("void CPropTree::SetColumn(LONG nColumn)\r\n");
}



void CPropTree::Delete(CPropTreeItem* pItem)
{
    Sys_Printf("void CPropTree::Delete(CPropTreeItem* pItem)\r\n");
}



void CPropTree::SetFocusedItem(CPropTreeItem* pItem)
{
    Sys_Printf("void CPropTree::SetFocusedItem(CPropTreeItem* pItem)\r\n");
}



void CPropTree::ShowInfoText(BOOL bShow)
{
    Sys_Printf("void CPropTree::ShowInfoText(BOOL bShow)\r\n");
}



BOOL CPropTree::IsItemVisible(CPropTreeItem* pItem)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTree::IsItemVisible(CPropTreeItem* pItem)\r\n");
    return retVal;
}



void CPropTree::EnsureVisible(CPropTreeItem* pItem)
{
    Sys_Printf("void CPropTree::EnsureVisible(CPropTreeItem* pItem)\r\n");
}



CPropTreeItem* CPropTree::InsertItem(CPropTreeItem* pItem, CPropTreeItem* pParent)
{
    Sys_Printf("CPropTreeItem* CPropTree::InsertItem(CPropTreeItem* pItem, CPropTreeItem* pParent)\r\n");
    return NULL;
}




LONG CPropTree::HitTest(const POINT& pt)
{
    LONG retVal;
    memset(&retVal, 0, sizeof(LONG));
    Sys_Printf("LONG CPropTree::HitTest(const POINT& pt)\r\n");
    return retVal;
}



CPropTreeItem* CPropTree::FindItem(const POINT& pt)
{
    Sys_Printf("CPropTreeItem* CPropTree::FindItem(const POINT& pt)\r\n");
    return NULL;
}



CPropTreeItem* CPropTree::FindItem(UINT nCtrlID)
{
    Sys_Printf("CPropTreeItem* CPropTree::FindItem(UINT nCtrlID)\r\n");
    return NULL;
}



BOOL CALLBACK CPropTree::EnumFindItem(CPropTree*, CPropTreeItem* pItem, LPARAM lParam)
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK CPropTree::EnumFindItem(CPropTree*, CPropTreeItem* pItem, LPARAM lParam)\r\n");
    return retVal;
}



BOOL CPropTree::IsDisableInput()
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTree::IsDisableInput()\r\n");
    return retVal;
}



void CPropTree::DisableInput(BOOL bDisable)
{
    Sys_Printf("void CPropTree::DisableInput(BOOL bDisable)\r\n");
}



void CPropTree::SelectItems(CPropTreeItem* pItem, BOOL bSelect)
{
    Sys_Printf("void CPropTree::SelectItems(CPropTreeItem* pItem, BOOL bSelect)\r\n");
}



CPropTreeItem* CPropTree::FocusFirst()
{
    Sys_Printf("CPropTreeItem* CPropTree::FocusFirst()\r\n");
    return NULL;
}



CPropTreeItem* CPropTree::FocusLast()
{
    Sys_Printf("CPropTreeItem* CPropTree::FocusLast()\r\n");
    return NULL;
}



CPropTreeItem* CPropTree::FocusPrev()
{
    Sys_Printf("CPropTreeItem* CPropTree::FocusPrev()\r\n");
    return NULL;
}



CPropTreeItem* CPropTree::FocusNext()
{
    Sys_Printf("CPropTreeItem* CPropTree::FocusNext()\r\n");
    return NULL;
}



void CPropTree::UpdateMoveAllItems()
{
    Sys_Printf("void CPropTree::UpdateMoveAllItems()\r\n");
}



void CPropTree::RefreshItems(CPropTreeItem* pItem)
{
    Sys_Printf("void CPropTree::RefreshItems(CPropTreeItem* pItem)\r\n");
}



BOOL CALLBACK CPropTree::EnumSelectAll(CPropTree*, CPropTreeItem* pItem, LPARAM lParam)
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK CPropTree::EnumSelectAll(CPropTree*, CPropTreeItem* pItem, LPARAM lParam)\r\n");
    return retVal;
}



BOOL CALLBACK CPropTree::EnumRefreshAll(CPropTree*, CPropTreeItem* pItem, LPARAM)
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK CPropTree::EnumRefreshAll(CPropTree*, CPropTreeItem* pItem, LPARAM)\r\n");
    return retVal;
}



BOOL CALLBACK CPropTree::EnumMoveAll(CPropTree*, CPropTreeItem* pItem, LPARAM)
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK CPropTree::EnumMoveAll(CPropTree*, CPropTreeItem* pItem, LPARAM)\r\n");
    return retVal;
}



LRESULT CPropTree::SendNotify(UINT nNotifyCode, CPropTreeItem* pItem)
{
    LRESULT retVal;
    memset(&retVal, 0, sizeof(LRESULT));
    Sys_Printf("LRESULT CPropTree::SendNotify(UINT nNotifyCode, CPropTreeItem* pItem)\r\n");
    return retVal;
}



void CPropTree::OnEnable(BOOL bEnable) 
{
    Sys_Printf("void CPropTree::OnEnable(BOOL bEnable)\r\n");
}



void CPropTree::OnSysColorChange() 
{
    Sys_Printf("void CPropTree::OnSysColorChange()\r\n");
}



BOOL CPropTree::IsSingleSelection()
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTree::IsSingleSelection()\r\n");
    return retVal;
}

