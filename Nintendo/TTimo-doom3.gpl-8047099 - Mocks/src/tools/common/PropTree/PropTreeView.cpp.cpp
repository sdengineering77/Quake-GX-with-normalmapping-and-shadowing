// CPropTreeView.cpp : implementation file
//

//#include "stdafx.h"
#include "../../../idlib/precompiled.h"
#pragma hdrstop


#include "PropTreeView.h"

// CPropTreeView

IMPLEMENT_DYNCREATE(CPropTreeView, CFormView)

CPropTreeView::CPropTreeView()
: CFormView((LPCTSTR) NULL)
{
}

CPropTreeView::~CPropTreeView()
{
}

BEGIN_MESSAGE_MAP(CPropTreeView, CView)
	ON_WM_CREATE()
	ON_WM_SIZE()
	ON_WM_PAINT()
END_MESSAGE_MAP()


// CPropTreeView drawing

void CPropTreeView::OnDraw(CDC* pDC)
{
    Sys_Printf("void CPropTreeView::OnDraw(CDC* pDC)\r\n");
}



// CPropTreeView diagnostics

#ifdef _DEBUG
void CPropTreeView::AssertValid() const
{
    Sys_Printf("void CPropTreeView::AssertValid()\r\n");
}


void CPropTreeView::Dump(CDumpContext& dc) const
{
    Sys_Printf("void CPropTreeView::Dump(CDumpContext& dc)\r\n");
}

#endif //_DEBUG


BOOL CPropTreeView::Create(LPCTSTR lpszClassName, LPCTSTR lpszWindowName,
					   DWORD dwStyle, const RECT& rect, CWnd* pParentWnd,
					   UINT nID, CCreateContext* pContext)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPropTreeView::Create(LPCTSTR lpszClassName, LPCTSTR lpszWindowName, DWORD dwStyle, const RECT& rect, CWnd* pParentWnd, UINT nID, CCreateContext* pContext)\r\n");
    return retVal;
}

// CPropTreeView message handlers

int CPropTreeView::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CPropTreeView::OnCreate(LPCREATESTRUCT lpCreateStruct)\r\n");
    return retVal;
}


void CPropTreeView::OnSize(UINT nType, int cx, int cy)
{
    Sys_Printf("void CPropTreeView::OnSize(UINT nType, int cx, int cy)\r\n");
}



void CPropTreeView::OnPaint()
{
    Sys_Printf("void CPropTreeView::OnPaint()\r\n");
}

