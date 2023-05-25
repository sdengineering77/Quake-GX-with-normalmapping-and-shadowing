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

#include "MaterialEditor.h"
#include "MEMainFrame.h"
#include "MaterialDef.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

#define TAB_CONTROL 0x1006

IMPLEMENT_DYNAMIC(MEMainFrame, CFrameWnd)

BEGIN_MESSAGE_MAP(MEMainFrame, CFrameWnd)
	ON_WM_CREATE()
	ON_WM_SETFOCUS()
	ON_WM_DESTROY()
	ON_WM_SIZE()

	ON_NOTIFY(TCN_SELCHANGE, TAB_CONTROL, OnTcnSelChange)
	
	ON_COMMAND(ID_ME_FILE_EXIT, OnFileExit)
	ON_COMMAND(ID_ME_FILE_SAVEMATERIAL, OnFileSaveMaterial)
	ON_COMMAND(ID_ME_FILE_SAVEFILE, OnFileSaveFile)
	ON_COMMAND(ID_ME_FILE_SAVE, OnFileSaveAll)
	ON_UPDATE_COMMAND_UI(ID_ME_FILE_SAVEMATERIAL, OnFileSaveMaterialUpdate )
	ON_UPDATE_COMMAND_UI(ID_ME_FILE_SAVEFILE, OnFileSaveFileUpdate )
	ON_UPDATE_COMMAND_UI(ID_ME_FILE_SAVE, OnFileSaveAllUpdate )
	
	ON_COMMAND(ID_ME_PREVIEW_APPLYCHANGES, OnApplyMaterial)
	ON_COMMAND(ID_ME_PREVIEW_APPLYFILE, OnApplyFile)
	ON_COMMAND(ID_ME_PREVIEW_APPLYALL, OnApplyAll)
	ON_UPDATE_COMMAND_UI(ID_ME_PREVIEW_APPLYCHANGES, OnApplyMaterialUpdate )
	ON_UPDATE_COMMAND_UI(ID_ME_PREVIEW_APPLYFILE, OnApplyFileUpdate )
	ON_UPDATE_COMMAND_UI(ID_ME_PREVIEW_APPLYALL, OnApplyAllUpdate )

	ON_COMMAND(ID_ME_EDIT_CUT, OnEditCut)
	ON_COMMAND(ID_ME_EDIT_COPY, OnEditCopy)
	ON_COMMAND(ID_ME_EDIT_PASTE, OnEditPaste)
	ON_COMMAND(ID_ME_EDIT_DELETE, OnEditDelete)
	ON_COMMAND(ID_ME_EDIT_RENAME, OnEditRename)
	ON_UPDATE_COMMAND_UI(ID_ME_EDIT_CUT, OnEditCutUpdate)
	ON_UPDATE_COMMAND_UI(ID_ME_EDIT_COPY, OnEditCopyUpdate)
	ON_UPDATE_COMMAND_UI(ID_ME_EDIT_PASTE, OnEditPasteUpdate)
	ON_UPDATE_COMMAND_UI(ID_ME_EDIT_DELETE, OnEditDeleteUpdate)
	ON_UPDATE_COMMAND_UI(ID_ME_EDIT_RENAME, OnEditRenameUpdate)

	ON_COMMAND(ID_ME_EDIT_FIND, OnEditFind)
	ON_COMMAND(ID_ME_EDIT_FIND_NEXT, OnEditFindNext)

	ON_COMMAND(ID_ME_EDIT_UNDO, OnEditUndo)
	ON_COMMAND(ID_ME_EDIT_REDO, OnEditRedo)
	ON_UPDATE_COMMAND_UI(ID_ME_EDIT_UNDO, OnEditUndoUpdate )
	ON_UPDATE_COMMAND_UI(ID_ME_EDIT_REDO, OnEditRedoUpdate )
	
	ON_COMMAND(ID_VIEW_INCLUDEFILENAME, OnViewIncludeFile)
	ON_COMMAND(ID_PREVIEW_RELOADARBPROGRAMS, OnReloadArbPrograms)
	ON_COMMAND(ID_PREVIEW_RELOADIMAGES, OnReloadImages )	
END_MESSAGE_MAP()

static UINT indicators[] =
{
	ID_SEPARATOR,           // status line indicator
	ID_INDICATOR_CAPS,
	ID_INDICATOR_NUM,
	ID_INDICATOR_SCRL,
};

/**
* Constructor for MEMainFrame. Initialize some member data and load the options.
*/
MEMainFrame::MEMainFrame() {
	
	currentDoc = NULL;
	m_find = NULL;

	searchData.searched = false;

	options.Load();
}

/**
* Destructor for MEMainFrame.
*/
MEMainFrame::~MEMainFrame() {
}

/**
* Called to add console text to the console view.
* @param msg The text that is to be added to the console.
*/
void MEMainFrame::PrintConsoleMessage(const char *msg) {
    Sys_Printf("void MEMainFrame::PrintConsoleMessage(const char *msg)\r\n");
}


/**
* Sets a few window styles for the main window during the creation process.
*/
BOOL MEMainFrame::PreCreateWindow(CREATESTRUCT& cs) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL MEMainFrame::PreCreateWindow(CREATESTRUCT& cs)\r\n");
    return retVal;
}


/**
* Called by the MFC framework to allow the window to create any client windows. This method
* creates all of the spliter windows and registers all of the views with the document manager.
*/
BOOL MEMainFrame::OnCreateClient(LPCREATESTRUCT lpcs, CCreateContext* pContext) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL MEMainFrame::OnCreateClient(LPCREATESTRUCT lpcs, CCreateContext* pContext)\r\n");
    return retVal;
}


/**
* Called by the framework while the window is being created. This methods
* creates the tool bars and status bars
* /todo Bmatt Nerve: Need to get the toolbars to work correctly.
*/
int MEMainFrame::OnCreate(LPCREATESTRUCT lpCreateStruct) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int MEMainFrame::OnCreate(LPCREATESTRUCT lpCreateStruct)\r\n");
    return retVal;
}


/**
* Called by the MFC framework while the window is being destroyed. This method
* saves the splitter and window positions.
*/
void MEMainFrame::OnDestroy() {
    Sys_Printf("void MEMainFrame::OnDestroy()\r\n");
}


/**
* Called by the MFC framework when the window size is changed. This method adjusts the console view
* so that it is always at the bottom of the window and resizes the splitter window to fit
* the remaining space.
*/
void MEMainFrame::OnSize(UINT nType, int cx, int cy)
{
    Sys_Printf("void MEMainFrame::OnSize(UINT nType, int cx, int cy)\r\n");
}


/**
* Called when the user changes the editor/console tab selection. This methods shows and hides 
* the appropriate windows.
*/
void MEMainFrame::OnTcnSelChange(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void MEMainFrame::OnTcnSelChange(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


/**
* Shuts down the material editor.
* /todo BMatt Nerve: Need to warn the user if a file is modified.
*/
void MEMainFrame::OnFileExit() {
    Sys_Printf("void MEMainFrame::OnFileExit()\r\n");
}


/**
* Saves the selected material.
*/
void MEMainFrame::OnFileSaveMaterial() {
    Sys_Printf("void MEMainFrame::OnFileSaveMaterial()\r\n");
}


/**
* Saves the selected file.
*/
void MEMainFrame::OnFileSaveFile() {
    Sys_Printf("void MEMainFrame::OnFileSaveFile()\r\n");
}


/**
* Saves all modified materials.
*/
void MEMainFrame::OnFileSaveAll() {
    Sys_Printf("void MEMainFrame::OnFileSaveAll()\r\n");
}


/**
* Enables the save material menu item if a material is selected and has been modified.
*/
void MEMainFrame::OnFileSaveMaterialUpdate(CCmdUI *pCmdUI) {
    Sys_Printf("void MEMainFrame::OnFileSaveMaterialUpdate(CCmdUI *pCmdUI)\r\n");
}


/**
* Enables the Save File menu item if the current file contains a modified material.
*/
void MEMainFrame::OnFileSaveFileUpdate(CCmdUI *pCmdUI) {
    Sys_Printf("void MEMainFrame::OnFileSaveFileUpdate(CCmdUI *pCmdUI)\r\n");
}


/**
* Enables the Save All menu item if there are any materials that have been modified.
*/
void MEMainFrame::OnFileSaveAllUpdate(CCmdUI *pCmdUI) {
    Sys_Printf("void MEMainFrame::OnFileSaveAllUpdate(CCmdUI *pCmdUI)\r\n");
}


/**
* Apply the selected material.
*/
void MEMainFrame::OnApplyMaterial() {
    Sys_Printf("void MEMainFrame::OnApplyMaterial()\r\n");
}


/**
* Applies all modified materials in the selected file.
*/
void MEMainFrame::OnApplyFile() {
    Sys_Printf("void MEMainFrame::OnApplyFile()\r\n");
}


/**
* Applies all modified materials.
*/
void MEMainFrame::OnApplyAll() {
    Sys_Printf("void MEMainFrame::OnApplyAll()\r\n");
}


/**
* Enables the Apply Material menu item if the current material has an apply waiting.
*/
void MEMainFrame::OnApplyMaterialUpdate(CCmdUI *pCmdUI) {
    Sys_Printf("void MEMainFrame::OnApplyMaterialUpdate(CCmdUI *pCmdUI)\r\n");
}


/**
* Enables the apply file menu item if the current file contains any materials
* that need to be applied.
*/
void MEMainFrame::OnApplyFileUpdate(CCmdUI *pCmdUI) {
    Sys_Printf("void MEMainFrame::OnApplyFileUpdate(CCmdUI *pCmdUI)\r\n");
}


/**
* Enables the apply all menu item if there are any materials that need
* to be applied.
*/
void MEMainFrame::OnApplyAllUpdate(CCmdUI *pCmdUI) {
    Sys_Printf("void MEMainFrame::OnApplyAllUpdate(CCmdUI *pCmdUI)\r\n");
}


/**
* Performs a cut operation on the selected material.
*/
void MEMainFrame::OnEditCut() {
    Sys_Printf("void MEMainFrame::OnEditCut()\r\n");
}


/**
* Performs a copy operation on the selected material or stage.
*/
void MEMainFrame::OnEditCopy() {
    Sys_Printf("void MEMainFrame::OnEditCopy()\r\n");
}


/**
* Performs a paste operation on the selected material or stage.
*/
void MEMainFrame::OnEditPaste() {
    Sys_Printf("void MEMainFrame::OnEditPaste()\r\n");
}


/**
* Performs a delete operation on the selected material or stage.
*/
void MEMainFrame::OnEditDelete() {
    Sys_Printf("void MEMainFrame::OnEditDelete()\r\n");
}


/**
* Performs a rename operation on the selected material or stage.
*/
void MEMainFrame::OnEditRename() {
    Sys_Printf("void MEMainFrame::OnEditRename()\r\n");
}



/**
* Enable the cut menu item if a material is selected.
*/
void MEMainFrame::OnEditCutUpdate(CCmdUI *pCmdUI) {
    Sys_Printf("void MEMainFrame::OnEditCutUpdate(CCmdUI *pCmdUI)\r\n");
}


/**
* Enables the copy menu item if a material or stage is selected.
*/
void MEMainFrame::OnEditCopyUpdate(CCmdUI *pCmdUI) {
    Sys_Printf("void MEMainFrame::OnEditCopyUpdate(CCmdUI *pCmdUI)\r\n");
}


/**
* Enables a paste operation when a material or stage has been copied.
*/
void MEMainFrame::OnEditPasteUpdate(CCmdUI *pCmdUI) {
    Sys_Printf("void MEMainFrame::OnEditPasteUpdate(CCmdUI *pCmdUI)\r\n");
}


/**
* Enables a delete operation when a material or stage is selected.
*/
void MEMainFrame::OnEditDeleteUpdate(CCmdUI *pCmdUI) {
    Sys_Printf("void MEMainFrame::OnEditDeleteUpdate(CCmdUI *pCmdUI)\r\n");
}


/**
* Enables a rename operation when a material, folder or stage is selected.
*/
void MEMainFrame::OnEditRenameUpdate(CCmdUI *pCmdUI) {
    Sys_Printf("void MEMainFrame::OnEditRenameUpdate(CCmdUI *pCmdUI)\r\n");
}


/**
* Opens the find dialog.
*/
void MEMainFrame::OnEditFind() {
    Sys_Printf("void MEMainFrame::OnEditFind()\r\n");
}


/**
* Performs a search with the previously selected search parameters.
*/
void MEMainFrame::OnEditFindNext() {
    Sys_Printf("void MEMainFrame::OnEditFindNext()\r\n");
}


/**
* Performs an undo operation.
*/
void MEMainFrame::OnEditUndo() {
    Sys_Printf("void MEMainFrame::OnEditUndo()\r\n");
}


/**
* Performs a redo operation.
*/
void MEMainFrame::OnEditRedo() {
    Sys_Printf("void MEMainFrame::OnEditRedo()\r\n");
}


/**
* Enables the undo menu item if an undo is available.
*/
void MEMainFrame::OnEditUndoUpdate(CCmdUI *pCmdUI) {
    Sys_Printf("void MEMainFrame::OnEditUndoUpdate(CCmdUI *pCmdUI)\r\n");
}


/**
* Enables the redo menu item if a redo is available.
*/
void MEMainFrame::OnEditRedoUpdate(CCmdUI *pCmdUI) {
    Sys_Printf("void MEMainFrame::OnEditRedoUpdate(CCmdUI *pCmdUI)\r\n");
}


/**
* Toggles between including the file into the material list and not.
*/
void MEMainFrame::OnViewIncludeFile() {
    Sys_Printf("void MEMainFrame::OnViewIncludeFile()\r\n");
}


/**
* Executes the reloadARBPrograms console command for convinience.
*/
void MEMainFrame::OnReloadArbPrograms() {
    Sys_Printf("void MEMainFrame::OnReloadArbPrograms()\r\n");
}


/**
* Executes the reloadImages command to reload images that have been changed outside
* of the editor.
*/
void MEMainFrame::OnReloadImages() {
    Sys_Printf("void MEMainFrame::OnReloadImages()\r\n");
}


/**
* Called by the find dialog when it is closing.
*/
void MEMainFrame::CloseFind() {
    Sys_Printf("void MEMainFrame::CloseFind()\r\n");
}


/**
* Begins a search based on the provided parameters or the previously used
* parameters.
*/
void MEMainFrame::FindNext(MaterialSearchData_t* search) {
    Sys_Printf("void MEMainFrame::FindNext(MaterialSearchData_t* search)\r\n");
}


/**
* Called when the selected material has changed.
* @param pMaterial The newly selected material.
*/
void MEMainFrame::MV_OnMaterialSelectionChange(MaterialDoc* pMaterial) {
    Sys_Printf("void MEMainFrame::MV_OnMaterialSelectionChange(MaterialDoc* pMaterial)\r\n");
}

