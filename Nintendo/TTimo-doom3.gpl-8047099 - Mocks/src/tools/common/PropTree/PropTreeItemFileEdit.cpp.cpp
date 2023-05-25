// PropTreeItemFileEdit.cpp : implementation file


//#include "stdafx.h"
#include "../../../idlib/precompiled.h"
#pragma hdrstop

#include "proptree.h"
#include "PropTreeItemFileEdit.h"

#include "../../../sys/win32/rc/proptree_Resource.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CPropTreeItemFileEdit

CPropTreeItemFileEdit::CPropTreeItemFileEdit() {
    CPropTreeItemFileEdit retVal;
    memset(&retVal, 0, sizeof(CPropTreeItemFileEdit));
    Sys_Printf("CPropTreeItemFileEditCPropTreeItemFileEdit::CPropTreeItemFileEdit()\r\n");
    return retVal;
}


CPropTreeItemFileEdit::~CPropTreeItemFileEdit() {
}


BEGIN_MESSAGE_MAP(CPropTreeItemFileEdit, CPropTreeItemEdit)
	//{{AFX_MSG_MAP(CPropTreeItemFileEdit)
	//}}AFX_MSG_MAP
	ON_WM_CONTEXTMENU()
	ON_WM_CREATE()
	
	ON_COMMAND(ID_EDITMENU_INSERTFILE, OnInsertFile)
	ON_COMMAND(ID_EDIT_UNDO, OnEditUndo)
	ON_COMMAND(ID_EDIT_CUT, OnEditCut)
	ON_COMMAND(ID_EDIT_COPY, OnEditCopy)
	ON_COMMAND(ID_EDIT_PASTE, OnEditPaste)
	ON_COMMAND(ID_EDIT_DELETE, OnEditDelete)
	ON_COMMAND(ID_EDIT_SELECTALL, OnEditSelectAll)

END_MESSAGE_MAP()


void CPropTreeItemFileEdit::OnContextMenu(CWnd* pWnd, CPoint point) {
    Sys_Printf("void CPropTreeItemFileEdit::OnContextMenu(CWnd* pWnd, CPoint point)\r\n");
}


int CPropTreeItemFileEdit::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CPropTreeItemFileEdit::OnCreate(LPCREATESTRUCT lpCreateStruct)\r\n");
    return retVal;
}


void CPropTreeItemFileEdit::OnInsertFile() {
    Sys_Printf("void CPropTreeItemFileEdit::OnInsertFile()\r\n");
}


void CPropTreeItemFileEdit::OnEditUndo() {
    Sys_Printf("void CPropTreeItemFileEdit::OnEditUndo()\r\n");
}


void CPropTreeItemFileEdit::OnEditCut() {
    Sys_Printf("void CPropTreeItemFileEdit::OnEditCut()\r\n");
}


void CPropTreeItemFileEdit::OnEditCopy() {
    Sys_Printf("void CPropTreeItemFileEdit::OnEditCopy()\r\n");
}


void CPropTreeItemFileEdit::OnEditPaste() {
    Sys_Printf("void CPropTreeItemFileEdit::OnEditPaste()\r\n");
}


void CPropTreeItemFileEdit::OnEditDelete() {
    Sys_Printf("void CPropTreeItemFileEdit::OnEditDelete()\r\n");
}


void CPropTreeItemFileEdit::OnEditSelectAll() {
    Sys_Printf("void CPropTreeItemFileEdit::OnEditSelectAll()\r\n");
}

