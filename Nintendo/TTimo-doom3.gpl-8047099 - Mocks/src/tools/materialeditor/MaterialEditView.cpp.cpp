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

#include "MaterialEditView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

#define EDIT_HEIGHT 25

#define EDIT_TAB_CONTROL	0x2006
#define NAME_CONTROL		0x2007

IMPLEMENT_DYNCREATE(MaterialEditView, CFormView)

BEGIN_MESSAGE_MAP(MaterialEditView, CFormView)
	ON_WM_SIZE()
	ON_WM_CREATE()
	ON_NOTIFY(TCN_SELCHANGE, EDIT_TAB_CONTROL, OnTcnSelChange)
	ON_NOTIFY(EN_CHANGE, IDC_MATERIALEDITOR_EDIT_TEXT, OnEnChangeEdit)
END_MESSAGE_MAP()

/**
* Constructor for MaterialEditView.
*/
MaterialEditView::MaterialEditView()
: CFormView(MaterialEditView::IDD) {
	
	initHack = false;
	sourceInit = false;
	sourceChanged = false;
}

/**
* Destructor for MaterialEditView.
*/
MaterialEditView::~MaterialEditView() {
}

/**
* Called when the selected material has changed.
* @param pMaterial The newly selected material.
*/
void MaterialEditView::MV_OnMaterialSelectionChange(MaterialDoc* pMaterial) {
    Sys_Printf("void MaterialEditView::MV_OnMaterialSelectionChange(MaterialDoc* pMaterial)\r\n");
}


void MaterialEditView::MV_OnMaterialNameChanged(MaterialDoc* pMaterial, const char* oldName) {
    Sys_Printf("void MaterialEditView::MV_OnMaterialNameChanged(MaterialDoc* pMaterial, const char* oldName)\r\n");
}


/**
* Returns the current source text in the source edit control.
*/
idStr MaterialEditView::GetSourceText() {
    idStr retVal;
    memset(&retVal, 0, sizeof(idStr));
    Sys_Printf("idStr MaterialEditView::GetSourceText()\r\n");
    return retVal;
}


/**
* Gets the source of the current document and populates the
* source edit control.
*/
void MaterialEditView::GetMaterialSource() {
    Sys_Printf("void MaterialEditView::GetMaterialSource()\r\n");
}


/**
* Takes the source out of the edit control and applies it
* to the material.
*/
void MaterialEditView::ApplyMaterialSource() {
    Sys_Printf("void MaterialEditView::ApplyMaterialSource()\r\n");
}


/**
* Transfers data to and from the controls in the console.
*/
void MaterialEditView::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void MaterialEditView::DoDataExchange(CDataExchange* pDX)\r\n");
}


/**
* Called by the MFC framework when the view is being created.
*/
void MaterialEditView::OnInitialUpdate() {
    Sys_Printf("void MaterialEditView::OnInitialUpdate()\r\n");
}


/**
* Called by the MFC framework when the view is being created.
*/
int MaterialEditView::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int MaterialEditView::OnCreate(LPCREATESTRUCT lpCreateStruct)\r\n");
    return retVal;
}


/**
* Windows message called when the window is resized.
*/
void MaterialEditView::OnSize(UINT nType, int cx, int cy) {
    Sys_Printf("void MaterialEditView::OnSize(UINT nType, int cx, int cy)\r\n");
}


/**
* Called when the user changes the properties/text tab selection. This methods shows and hides 
* the appropriate windows.
*/
void MaterialEditView::OnTcnSelChange(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void MaterialEditView::OnTcnSelChange(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


/**
* Called when the user changes text in the edit control
*/
void MaterialEditView::OnEnChangeEdit( NMHDR *pNMHDR, LRESULT *pResult ) {
    Sys_Printf("void MaterialEditView::OnEnChangeEdit( NMHDR *pNMHDR, LRESULT *pResult )\r\n");
}








