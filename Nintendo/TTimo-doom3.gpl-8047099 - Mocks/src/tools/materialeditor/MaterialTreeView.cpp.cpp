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

#include "MaterialTreeView.h"

#define IMAGE_FOLDER				0
#define IMAGE_FILE					1
#define IMAGE_MATERIAL				2
#define IMAGE_MATERIAL_FOLDER		3
#define IMAGE_FILE_MOD				4
#define IMAGE_MATERIAL_MOD			5
#define IMAGE_MATERIAL_MOD_APPLY	6

#define HOVER_EXPAND_DELAY 500

#define MSG_RENAME_FOLDER_COMPLETE (WM_USER + 1000)
#define MSG_RENAME_MATERIAL_COMPLETE (WM_USER + 1001)

IMPLEMENT_DYNCREATE(MaterialTreeView, CTreeView)

BEGIN_MESSAGE_MAP(MaterialTreeView, CTreeView)
	ON_WM_CREATE()
	ON_NOTIFY_REFLECT(TVN_SELCHANGED,		OnTvnSelchanged)
	ON_NOTIFY_REFLECT(TVN_BEGINLABELEDIT,	OnTvnBeginlabeledit)
	ON_NOTIFY_REFLECT(TVN_ENDLABELEDIT,		OnTvnEndlabeledit)
	ON_WM_CONTEXTMENU()
	ON_NOTIFY_REFLECT(NM_RCLICK,			OnNMRclick)
	ON_WM_CHAR()
	ON_NOTIFY_REFLECT(TVN_BEGINDRAG,		OnTvnBegindrag)
	ON_WM_MOUSEMOVE()
	ON_WM_LBUTTONUP()

	ON_COMMAND(ID_POPUP_APPLYMATERIAL,		OnApplyMaterial)
	ON_COMMAND(ID_POPUP_APPLYFILE,			OnApplyFile)
	ON_COMMAND(ID_POPUP_APPLYALL,			OnApplyAll)
	ON_COMMAND(ID_POPUP_SAVEMATERIAL,		OnSaveMaterial)
	ON_COMMAND(ID_POPUP_SAVEFILE,			OnSaveFile)
	ON_COMMAND(ID_POPUP_SAVEALL,			OnSaveAll)
	ON_COMMAND(ID_POPUP_RENAMEMATERIAL,		OnRenameMaterial)
	ON_COMMAND(ID_POPUP_ADDMATERIAL,		OnAddMaterial)
	ON_COMMAND(ID_POPUP_ADDFOLDER,			OnAddFolder)
	ON_COMMAND(ID_POPUP_DELETEMATERIAL,		OnDeleteMaterial)
	ON_COMMAND(ID_POPUP_RELOADFILE,			OnReloadFile)

	ON_COMMAND(ID_POPUP_CUT,				OnCut)
	ON_COMMAND(ID_POPUP_COPY,				OnCopy)
	ON_COMMAND(ID_POPUP_PASTE,				OnPaste)

	ON_MESSAGE(MSG_RENAME_FOLDER_COMPLETE, OnRenameFolderComplete)
	ON_MESSAGE(MSG_RENAME_MATERIAL_COMPLETE, OnRenameMaterialComplete)	
END_MESSAGE_MAP()

/** 
* Constructor for MaterialTreeView
*/
MaterialTreeView::MaterialTreeView() {
	treeWithFile = false;
	bDragging = false;
	hoverItem = NULL;
	internalChange = false;
}

/** 
* Destructor for MaterialTreeView
*/
MaterialTreeView::~MaterialTreeView() {
}

/** 
* Clears the tree and rebuilds it.
* @param includeFile Should the list include the filename
* @param filename The file to load or NULL to load all files.
*/
void MaterialTreeView::InitializeMaterialList(bool includeFile, const char* filename) {
    Sys_Printf("void MaterialTreeView::InitializeMaterialList(bool includeFile, const char* filename)\r\n");
}


/** 
* Builds the tree of materials.
* @param includeFile Should the list include the filename
* @param filename The file to load or NULL to load all files.
*/
void MaterialTreeView::BuildMaterialList(bool includeFile, const char* filename) {
    Sys_Printf("void MaterialTreeView::BuildMaterialList(bool includeFile, const char* filename)\r\n");
}


/**
* Called when the material has changed but not applied.
* @param pMaterial The selected material.
*/
void MaterialTreeView::MV_OnMaterialChange(MaterialDoc* pMaterial) {
    Sys_Printf("void MaterialTreeView::MV_OnMaterialChange(MaterialDoc* pMaterial)\r\n");
}


/**
* Called when the material changes have been applied. 
* @param pMaterial The selected material.
*/
void MaterialTreeView::MV_OnMaterialApply(MaterialDoc* pMaterial) {
    Sys_Printf("void MaterialTreeView::MV_OnMaterialApply(MaterialDoc* pMaterial)\r\n");
}


/**
* Called when the material changes have been saved. 
* @param pMaterial The saved material.
*/
void MaterialTreeView::MV_OnMaterialSaved(MaterialDoc* pMaterial) {
    Sys_Printf("void MaterialTreeView::MV_OnMaterialSaved(MaterialDoc* pMaterial)\r\n");
}


/**
* Called when a material is added
* @param pMaterial The material that was added.
*/
void MaterialTreeView::MV_OnMaterialAdd(MaterialDoc* pMaterial) {
    Sys_Printf("void MaterialTreeView::MV_OnMaterialAdd(MaterialDoc* pMaterial)\r\n");
}


/**
* Called when a material is deleted
* @param pMaterial The material that was deleted.
*/
void MaterialTreeView::MV_OnMaterialDelete(MaterialDoc* pMaterial) {
    Sys_Printf("void MaterialTreeView::MV_OnMaterialDelete(MaterialDoc* pMaterial)\r\n");
}


/**
* Called when the material name has changed
* @param pMaterial The material that was deleted.
* @param oldName The old name of the material.
*/
void MaterialTreeView::MV_OnMaterialNameChanged(MaterialDoc* pMaterial, const char* oldName) {
    Sys_Printf("void MaterialTreeView::MV_OnMaterialNameChanged(MaterialDoc* pMaterial, const char* oldName)\r\n");
}


/**
* Called when a file has been reloaded
* @param filename The file that was reloaded.
*/
void MaterialTreeView::MV_OnFileReload(const char* filename) {
    Sys_Printf("void MaterialTreeView::MV_OnFileReload(const char* filename)\r\n");
}


/**
* Returns true if the user can copy the selected item.
*/
bool MaterialTreeView::CanCopy() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialTreeView::CanCopy()\r\n");
    return retVal;
}


/**
* Returns true if the user can paste an item in the copy buffer.
*/
bool MaterialTreeView::CanPaste() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialTreeView::CanPaste()\r\n");
    return retVal;
}


/**
* Returns true if the user can cut the selected item.
*/
bool MaterialTreeView::CanCut() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialTreeView::CanCut()\r\n");
    return retVal;
}


/**
* Returns true if the user can delete the selected item.
*/
bool MaterialTreeView::CanDelete() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialTreeView::CanDelete()\r\n");
    return retVal;
}


/**
* Returns true if the user can rename the selected item.
*/
bool MaterialTreeView::CanRename() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialTreeView::CanRename()\r\n");
    return retVal;
}


/**
* Returns true if the currently selected file needs to be saved.
*/
bool MaterialTreeView::CanSaveFile() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialTreeView::CanSaveFile()\r\n");
    return retVal;
}


/**
* Returns the filename of currently selected file.
*/
idStr MaterialTreeView::GetSaveFilename() {
    idStr retVal;
    memset(&retVal, 0, sizeof(idStr));
    Sys_Printf("idStr MaterialTreeView::GetSaveFilename()\r\n");
    return retVal;
}


/**
* Searches for a material given the supplied search parameters.
* @param searchData The parameters to use for the search.
*/
bool MaterialTreeView::FindNextMaterial(MaterialSearchData_t* searchData) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialTreeView::FindNextMaterial(MaterialSearchData_t* searchData)\r\n");
    return retVal;
}


/**
* Searches for a material given the supplied search parameters. Returns the tree item where
* the item was found or NULL if no material was found.
* @param item The tree item from where to start the search.
* @param searchData The parameters to use for the search.
*/
HTREEITEM MaterialTreeView::FindNextMaterial(HTREEITEM item, MaterialSearchData_t* searchData) {
    HTREEITEM retVal;
    memset(&retVal, 0, sizeof(HTREEITEM));
    Sys_Printf("HTREEITEM MaterialTreeView::FindNextMaterial(HTREEITEM item, MaterialSearchData_t* searchData)\r\n");
    return retVal;
}


/**
* Returns the next item to search or NULL if there is nothing else to search.
* @param item The last item searched.
* @param stayInFile True if the search should stay in the current file.
*/
HTREEITEM MaterialTreeView::GetNextSeachItem(HTREEITEM item, bool stayInFile) {
    HTREEITEM retVal;
    memset(&retVal, 0, sizeof(HTREEITEM));
    Sys_Printf("HTREEITEM MaterialTreeView::GetNextSeachItem(HTREEITEM item, bool stayInFile)\r\n");
    return retVal;
}


/**
* Deletes a given folder.
* @param item The folder to delete.
* @param addUndo True if this operation can be undone.
*/
void  MaterialTreeView::DeleteFolder(HTREEITEM item, bool addUndo) {
    Sys_Printf("void  MaterialTreeView::DeleteFolder(HTREEITEM item, bool addUndo)\r\n");
}


/**
* Adds a new material folder.
* @param name The name of the folder.
* @param parent The parent item of the folder.
*/
HTREEITEM MaterialTreeView::AddFolder(const char* name, HTREEITEM parent) {
    HTREEITEM retVal;
    memset(&retVal, 0, sizeof(HTREEITEM));
    Sys_Printf("HTREEITEM MaterialTreeView::AddFolder(const char* name, HTREEITEM parent)\r\n");
    return retVal;
}


/**
* Renames a material folder.
* @param item The folder tree item.
* @param name The new name of the material folder.
*/
void MaterialTreeView::RenameFolder(HTREEITEM item, const char* name) {
    Sys_Printf("void MaterialTreeView::RenameFolder(HTREEITEM item, const char* name)\r\n");
}


/**
* Handles the keyboard shortcut for delete.
*/
BOOL MaterialTreeView::PreTranslateMessage(MSG* pMsg) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL MaterialTreeView::PreTranslateMessage(MSG* pMsg)\r\n");
    return retVal;
}


/**
* Called by the MFC framework as the view is being created.
*/
int MaterialTreeView::OnCreate(LPCREATESTRUCT lpCreateStruct) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int MaterialTreeView::OnCreate(LPCREATESTRUCT lpCreateStruct)\r\n");
    return retVal;
}


/**
* Changes the selected material when the select tree item changes.
*/
void MaterialTreeView::OnTvnSelchanged(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void MaterialTreeView::OnTvnSelchanged(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


/**
* Determines if a tree item's label can be edited.
*/
void MaterialTreeView::OnTvnBeginlabeledit(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void MaterialTreeView::OnTvnBeginlabeledit(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


/**
* Makes sure that a rename operation can be performed after a label edit is complete and 
* performs the folder or material rename.
*/
void MaterialTreeView::OnTvnEndlabeledit(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void MaterialTreeView::OnTvnEndlabeledit(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


/**
* Displays the popup menu.
*/
void MaterialTreeView::OnContextMenu(CWnd* pWnd, CPoint point)
{
    Sys_Printf("void MaterialTreeView::OnContextMenu(CWnd* pWnd, CPoint point)\r\n");
}


/**
* Displays the popup menu.
*/
void MaterialTreeView::OnNMRclick(NMHDR *pNMHDR, LRESULT *pResult)
{
    Sys_Printf("void MaterialTreeView::OnNMRclick(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


/**
* Handles keyboard shortcut for cut, copy and paste
*/
void MaterialTreeView::OnChar(UINT nChar, UINT nRepCnt, UINT nFlags)
{
    Sys_Printf("void MaterialTreeView::OnChar(UINT nChar, UINT nRepCnt, UINT nFlags)\r\n");
}


/**
* Begins the process of a drag cut/copy.
*/
void MaterialTreeView::OnTvnBegindrag(NMHDR *pNMHDR, LRESULT *pResult)
{
    Sys_Printf("void MaterialTreeView::OnTvnBegindrag(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


/**
* Handles mouse movement as an item is being dragged.
*/
void MaterialTreeView::OnMouseMove(UINT nFlags, CPoint point) {
    Sys_Printf("void MaterialTreeView::OnMouseMove(UINT nFlags, CPoint point)\r\n");
}


/**
* Handles the end of a drag copy/move when the user releases the left mouse button.
*/
void MaterialTreeView::OnLButtonUp(UINT nFlags, CPoint point) {
    Sys_Printf("void MaterialTreeView::OnLButtonUp(UINT nFlags, CPoint point)\r\n");
}


/**
* Applies the current material.
*/
void MaterialTreeView::OnApplyMaterial() {
    Sys_Printf("void MaterialTreeView::OnApplyMaterial()\r\n");
}


/**
* Applies all materials in the currently selected file.
*/
void MaterialTreeView::OnApplyFile() {
    Sys_Printf("void MaterialTreeView::OnApplyFile()\r\n");
}


/**
* Applies all materials that need to be applied.
*/
void MaterialTreeView::OnApplyAll() {
    Sys_Printf("void MaterialTreeView::OnApplyAll()\r\n");
}


/**
* Saves the selected material.
*/
void MaterialTreeView::OnSaveMaterial() {
    Sys_Printf("void MaterialTreeView::OnSaveMaterial()\r\n");
}


/**
* Saves all materials in the selected file.
*/
void MaterialTreeView::OnSaveFile() {
    Sys_Printf("void MaterialTreeView::OnSaveFile()\r\n");
}


/**
* Save all materials that have been changed.
*/
void MaterialTreeView::OnSaveAll() {
    Sys_Printf("void MaterialTreeView::OnSaveAll()\r\n");
}


/**
* Begins a label edit to rename a material or material folder.
*/
void MaterialTreeView::OnRenameMaterial() {
    Sys_Printf("void MaterialTreeView::OnRenameMaterial()\r\n");
}


/**
* Adds a new material.
*/
void MaterialTreeView::OnAddMaterial() {
    Sys_Printf("void MaterialTreeView::OnAddMaterial()\r\n");
}


/**
* Adds a new folder
*/
void MaterialTreeView::OnAddFolder() {
    Sys_Printf("void MaterialTreeView::OnAddFolder()\r\n");
}


/**
* Deletes a material or material folder.
*/
void MaterialTreeView::OnDeleteMaterial() {
    Sys_Printf("void MaterialTreeView::OnDeleteMaterial()\r\n");
}


/**
* Reloads the selected file.
*/
void MaterialTreeView::OnReloadFile() {
    Sys_Printf("void MaterialTreeView::OnReloadFile()\r\n");
}


/**
* Performs a cut operation.
*/
void MaterialTreeView::OnCut() {
    Sys_Printf("void MaterialTreeView::OnCut()\r\n");
}


/**
* Performs a copy operation.
*/
void MaterialTreeView::OnCopy() {
    Sys_Printf("void MaterialTreeView::OnCopy()\r\n");
}


/**
* Performs a paste operation.
*/
void MaterialTreeView::OnPaste() {
    Sys_Printf("void MaterialTreeView::OnPaste()\r\n");
}


/**
* This message is sent after the label edit is complete to actually perform the rename
* operation.
*/
LRESULT MaterialTreeView::OnRenameFolderComplete(WPARAM wParam, LPARAM lParam) {
    LRESULT retVal;
    memset(&retVal, 0, sizeof(LRESULT));
    Sys_Printf("LRESULT MaterialTreeView::OnRenameFolderComplete(WPARAM wParam, LPARAM lParam)\r\n");
    return retVal;
}


/**
* This message is sent after the label edit is complete to ensure that the sorting stays consistent.
*/
LRESULT MaterialTreeView::OnRenameMaterialComplete(WPARAM wParam, LPARAM lParam) {
    LRESULT retVal;
    memset(&retVal, 0, sizeof(LRESULT));
    Sys_Printf("LRESULT MaterialTreeView::OnRenameMaterialComplete(WPARAM wParam, LPARAM lParam)\r\n");
    return retVal;
}


/**
* Handles all of the little problems associated with renaming a folder.
*/
void MaterialTreeView::RenameMaterial(HTREEITEM item, const char* originalName) {
    Sys_Printf("void MaterialTreeView::RenameMaterial(HTREEITEM item, const char* originalName)\r\n");
}


/**
* Returns the filename of the provided item.
* @param item The item for which to generate the filename
* @param out The location the filename will be placed.
*/
bool MaterialTreeView::GetFileName(HTREEITEM item, idStr& out) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialTreeView::GetFileName(HTREEITEM item, idStr& out)\r\n");
    return retVal;
}


/**
* Returns the Doom III name for the provided item
* @param item The item for which to generate the name
* @param type The type of the selected item
*/
idStr MaterialTreeView::GetMediaPath(HTREEITEM item, DWORD type) {
    idStr retVal;
    memset(&retVal, 0, sizeof(idStr));
    Sys_Printf("idStr MaterialTreeView::GetMediaPath(HTREEITEM item, DWORD type)\r\n");
    return retVal;
}


/**
* Creates a list of material paths for all materials under the provided item.
* @param item The base item for which to generate the list
* @param list The list in which the paths will be stored.
*/
void MaterialTreeView::GetMaterialPaths(HTREEITEM item, idList<MaterialTreeItem_t>* list) {
    Sys_Printf("void MaterialTreeView::GetMaterialPaths(HTREEITEM item, idList<MaterialTreeItem_t>* list)\r\n");
}


/**
* Adds a string list of materials to the tree creating the proper hierarchy.
* @param root The name of the root item or NULL for no root item.
* @param list The list of materials.
* @param includeFile If true the materials will be sorted by file.
*/
void MaterialTreeView::AddStrList(const char *root, idStrList *list, bool includeFile) {
    Sys_Printf("void MaterialTreeView::AddStrList(const char *root, idStrList *list, bool includeFile)\r\n");
}


/**
* Displays the popup menu with all of the appropriate menu items enabled.
* @param pt The location where the menu should be displayed.
*/
void MaterialTreeView::PopupMenu(CPoint* pt) {
    Sys_Printf("void MaterialTreeView::PopupMenu(CPoint* pt)\r\n");
}


/**
* Sets the appropriate item image based on the state of the item.
* @param item The item to set.
* @param mod Is the item modified
* @param apply Does the item need an apply
* @param children Should this method recurse through the items children and set their icons.
*/
void MaterialTreeView::SetItemImage(HTREEITEM item, bool mod, bool apply, bool children) {
    Sys_Printf("void MaterialTreeView::SetItemImage(HTREEITEM item, bool mod, bool apply, bool children)\r\n");
}


/**
* Cleans the lookup tables for the provided item and all children.
* @param item The item to start from
*/
void MaterialTreeView::CleanLookupTrees(HTREEITEM item) {
    Sys_Printf("void MaterialTreeView::CleanLookupTrees(HTREEITEM item)\r\n");
}


/**
* Build the lookup tree for a given item and all of its children.
* @param item The item to start from
*/
void MaterialTreeView::BuildLookupTrees(HTREEITEM item) {
    Sys_Printf("void MaterialTreeView::BuildLookupTrees(HTREEITEM item)\r\n");
}


/**
* Returns the quicktree path for a given item.
* @param item The item for which to generate the quicktree path
*/
idStr MaterialTreeView::GetQuicktreePath(HTREEITEM item) {
    idStr retVal;
    memset(&retVal, 0, sizeof(idStr));
    Sys_Printf("idStr MaterialTreeView::GetQuicktreePath(HTREEITEM item)\r\n");
    return retVal;
}












