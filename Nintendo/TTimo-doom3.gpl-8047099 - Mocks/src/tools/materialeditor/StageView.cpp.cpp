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

#include "StageView.h"

IMPLEMENT_DYNCREATE(StageView, ToggleListView)

BEGIN_MESSAGE_MAP(StageView, ToggleListView)
	ON_WM_CREATE()
	ON_NOTIFY_REFLECT(LVN_ITEMCHANGED, OnLvnItemchanged)
	ON_NOTIFY_REFLECT(LVN_DELETEALLITEMS, OnLvnDeleteallitems)
	ON_NOTIFY_REFLECT(LVN_BEGINDRAG, OnLvnBegindrag)
	ON_WM_LBUTTONUP()
	ON_WM_MOUSEMOVE()
	ON_NOTIFY_REFLECT(NM_RCLICK, OnNMRclick)

	ON_COMMAND(ID_STAGEPOPUP_RENAMESTAGE, OnRenameStage)
	ON_COMMAND(ID_STAGEPOPUP_DELETESTAGE, OnDeleteStage)
	ON_COMMAND(ID_STAGEPOPUP_DELETEALLSTAGES, OnDeleteAllStages)
	ON_COMMAND(ID_STAGEPOPUP_ADDSTAGE, OnAddStage)
	ON_COMMAND(ID_STAGEPOPUP_ADDBUMPMAP, OnAddBumpmapStage)
	ON_COMMAND(ID_STAGEPOPUP_ADDDIFFUSEMAP, OnAddDiffuseStage)
	ON_COMMAND(ID_STAGEPOPUP_ADDSPECULAR, OnAddSpecualarStage)

	ON_COMMAND(ID_STAGEPOPUP_COPY, OnCopy)
	ON_COMMAND(ID_STAGEPOPUP_PASTE, OnPaste)

	ON_NOTIFY_REFLECT(LVN_BEGINLABELEDIT, OnLvnBeginlabeledit)
	ON_NOTIFY_REFLECT(LVN_ENDLABELEDIT, OnLvnEndlabeledit)
	ON_WM_CHAR()
END_MESSAGE_MAP()

/**
* Constructor for StageView.
*/
StageView::StageView() {
	currentMaterial = NULL;
	bDragging = false;
	internalChange = false;
}

/**
* Destructor for StageView.
*/
StageView::~StageView() {
}

/**
* Called when the selected material has changed.
* @param pMaterial The newly selected material.
*/
void StageView::MV_OnMaterialSelectionChange(MaterialDoc* pMaterial) {
    Sys_Printf("void StageView::MV_OnMaterialSelectionChange(MaterialDoc* pMaterial)\r\n");
}


/**
* Called when the material changes have been saved. 
* @param pMaterial The saved material.
*/
void StageView::MV_OnMaterialSaved(MaterialDoc* pMaterial) {
    Sys_Printf("void StageView::MV_OnMaterialSaved(MaterialDoc* pMaterial)\r\n");
}


/**
* Called when a stage is added
* @param pMaterial The material that was affected.
* @param stageNum The index of the stage that was added
*/
void StageView::MV_OnMaterialStageAdd(MaterialDoc* pMaterial, int stageNum) {
    Sys_Printf("void StageView::MV_OnMaterialStageAdd(MaterialDoc* pMaterial, int stageNum)\r\n");
}


/**
* Called when a stage is deleted
* @param pMaterial The material that was affected.
* @param stageNum The index of the stage that was deleted
*/
void StageView::MV_OnMaterialStageDelete(MaterialDoc* pMaterial, int stageNum) {
    Sys_Printf("void StageView::MV_OnMaterialStageDelete(MaterialDoc* pMaterial, int stageNum)\r\n");
}


/**
* Called when a stage is moved
* @param pMaterial The material that was deleted.
* @param from The from index
* @param to The to index
*/
void StageView::MV_OnMaterialStageMove(MaterialDoc* pMaterial, int from, int to) {
    Sys_Printf("void StageView::MV_OnMaterialStageMove(MaterialDoc* pMaterial, int from, int to)\r\n");
}


/**
* Called when an attribute is changed
* @param pMaterial The material that was deleted.
* @param stage The stage that contains the change.
* @param attribName The attribute that has changed.
*/
void StageView::MV_OnMaterialAttributeChanged(MaterialDoc* pMaterial, int stage, const char* attribName) {
    Sys_Printf("void StageView::MV_OnMaterialAttributeChanged(MaterialDoc* pMaterial, int stage, const char* attribName)\r\n");
}


/**
* Returns true if the current state of the stage view will allow a copy operation
*/
bool StageView::CanCopy() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool StageView::CanCopy()\r\n");
    return retVal;
}


/**
* Returns true if the current state of the stage view will allow a paste operation
*/
bool StageView::CanPaste() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool StageView::CanPaste()\r\n");
    return retVal;
}


/**
* Cut is not supported for stages.
*/
bool StageView::CanCut() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool StageView::CanCut()\r\n");
    return retVal;
}


/**
* Returns true if the current state of the stage view will allow a delete operation
*/
bool StageView::CanDelete() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool StageView::CanDelete()\r\n");
    return retVal;
}


/**
* Returns true if the current state of the stage view will allow a rename operation
*/
bool StageView::CanRename() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool StageView::CanRename()\r\n");
    return retVal;
}


/**
* Rebuilds the list of stages based on the currently selected material
*/
void StageView::RefreshStageList() {
    Sys_Printf("void StageView::RefreshStageList()\r\n");
}


/** 
* Called by the MFC framework when the view is being created.
*/
int StageView::OnCreate(LPCREATESTRUCT lpCreateStruct) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int StageView::OnCreate(LPCREATESTRUCT lpCreateStruct)\r\n");
    return retVal;
}


/** 
* Called when the user changes the selection in the list box. This method will notify the 
* property view of the change so that it can display the appropriate properties.
*/
void StageView::OnLvnItemchanged(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void StageView::OnLvnItemchanged(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


/** 
* Notifies the property view that all stages have been removed.
*/
void StageView::OnLvnDeleteallitems(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void StageView::OnLvnDeleteallitems(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


/** 
* Starts the stage drag operation.
*/
void StageView::OnLvnBegindrag(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void StageView::OnLvnBegindrag(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


/** 
* Finishes a stage drag operation of the user was dragging a stage.
*/
void StageView::OnLButtonUp(UINT nFlags, CPoint point) {
    Sys_Printf("void StageView::OnLButtonUp(UINT nFlags, CPoint point)\r\n");
}


/** 
* Handles drawing the drag image when a user is draging a stage.
*/
void StageView::OnMouseMove(UINT nFlags, CPoint point) {
    Sys_Printf("void StageView::OnMouseMove(UINT nFlags, CPoint point)\r\n");
}


/** 
* Displays the popup menu when the user performs a right mouse click.
*/
void StageView::OnNMRclick(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void StageView::OnNMRclick(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


/** 
* Begins a label edit when the user selects the rename menu option.
*/
void StageView::OnRenameStage() {
    Sys_Printf("void StageView::OnRenameStage()\r\n");
}


/** 
* Deletes the selected stage when the user selects the delete menu option.
*/
void StageView::OnDeleteStage() {
    Sys_Printf("void StageView::OnDeleteStage()\r\n");
}


/** 
* Conforms the user wants to delete all stages and then performs the operation.
*/
void StageView::OnDeleteAllStages() {
    Sys_Printf("void StageView::OnDeleteAllStages()\r\n");
}


/** 
* Adds a new stage when the user selects the menu option.
*/
void StageView::OnAddStage() {
    Sys_Printf("void StageView::OnAddStage()\r\n");
}


/** 
* Adds a new bumpmap stage when the user selects the menu option.
*/
void StageView::OnAddBumpmapStage() {
    Sys_Printf("void StageView::OnAddBumpmapStage()\r\n");
}


/** 
* Adds a new diffusemap stage when the user selects the menu option.
*/
void StageView::OnAddDiffuseStage() {
    Sys_Printf("void StageView::OnAddDiffuseStage()\r\n");
}


/** 
* Adds a new specularmap stage when the user selects the menu option.
*/
void StageView::OnAddSpecualarStage() {
    Sys_Printf("void StageView::OnAddSpecualarStage()\r\n");
}


/** 
* Performs a copy operation when the user selects the menu option.
*/
void StageView::OnCopy() {
    Sys_Printf("void StageView::OnCopy()\r\n");
}


/** 
* Performs a paste operation when the user selects the menu option.
*/
void StageView::OnPaste() {
    Sys_Printf("void StageView::OnPaste()\r\n");
}


/** 
* Determines is a label edit can be performed on the selected stage.
*/
void StageView::OnLvnBeginlabeledit(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void StageView::OnLvnBeginlabeledit(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


/** 
* Performs the stage name change after the label edit is done.
*/
void StageView::OnLvnEndlabeledit(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void StageView::OnLvnEndlabeledit(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


/** 
* Handles keyboard shortcuts for copy and paste operations.
*/
void StageView::OnChar(UINT nChar, UINT nRepCnt, UINT nFlags) {
    Sys_Printf("void StageView::OnChar(UINT nChar, UINT nRepCnt, UINT nFlags)\r\n");
}


/** 
* Handles keyboard shortcut for the delete operations.
*/
BOOL StageView::PreTranslateMessage(MSG* pMsg) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL StageView::PreTranslateMessage(MSG* pMsg)\r\n");
    return retVal;
}


/** 
* Sets window styles before the window is created.
*/
BOOL StageView::PreCreateWindow(CREATESTRUCT& cs) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL StageView::PreCreateWindow(CREATESTRUCT& cs)\r\n");
    return retVal;
}


/** 
* Called by the ToggleListView when the toggle state has changed.
*/
void StageView::OnStateChanged(int index, int toggleState) {
    Sys_Printf("void StageView::OnStateChanged(int index, int toggleState)\r\n");
}


/** 
* Dispalys the popup menu with the appropriate menu items enabled.
*/
void StageView::PopupMenu(CPoint* pt) {
    Sys_Printf("void StageView::PopupMenu(CPoint* pt)\r\n");
}


/** 
* Performs the stage move when the user has dragged and dropped a stage.
*/
void StageView::DropItemOnList() {
    Sys_Printf("void StageView::DropItemOnList()\r\n");
}





