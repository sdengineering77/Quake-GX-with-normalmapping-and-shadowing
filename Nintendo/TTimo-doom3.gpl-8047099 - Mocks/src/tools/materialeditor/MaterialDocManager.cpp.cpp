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

#include "MaterialDocManager.h"
#include "MaterialView.h"


/**
* Constructor for MaterialDocManager.
*/
MaterialDocManager::MaterialDocManager(void) {
	currentMaterial = NULL;
	cutMaterial = false;
}

/**
* Destructor for MaterialDocManager.
*/
MaterialDocManager::~MaterialDocManager(void) {
	UnRegisterAllMaterialViews();

	ClearUndo();
	ClearRedo();
}

/**
* Registers an object to receive notifications about changes made to materials.
* @param view The object that would like to receive material notifications.
*/
void MaterialDocManager::RegisterMaterialView(MaterialView* view) {
    Sys_Printf("void MaterialDocManager::RegisterMaterialView(MaterialView* view)\r\n");
}


/**
* Tells the MaterialDocManager to stop sending notifications to a view.
* @param view The view that no longer wants notifications.
*/
void MaterialDocManager::UnRegisterMaterialView(MaterialView* view) {
    Sys_Printf("void MaterialDocManager::UnRegisterMaterialView(MaterialView* view)\r\n");
}


/**
* Unregisters all of the views that are registered to get material change
* notifications.
*/
void MaterialDocManager::UnRegisterAllMaterialViews() {
    Sys_Printf("void MaterialDocManager::UnRegisterAllMaterialViews()\r\n");
}


/**
* Tells the MaterialDocManager which material has been selected for editing.
* @param material The material that has been selected.
*/
void MaterialDocManager::SetSelectedMaterial(idMaterial* material) {
    Sys_Printf("void MaterialDocManager::SetSelectedMaterial(idMaterial* material)\r\n");
}


/**
* Returns true if the specified file needs to be applied and false otherwise.
*/
bool MaterialDocManager::DoesFileNeedApply(const char* filename) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialDocManager::DoesFileNeedApply(const char* filename)\r\n");
    return retVal;
}


/**
* Returns true if any material needs to be applied.
*/
bool MaterialDocManager::DoesAnyNeedApply() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialDocManager::DoesAnyNeedApply()\r\n");
    return retVal;
}


/**
* Returns true if the specified file has been modified.
*/
bool MaterialDocManager::IsFileModified(const char* filename) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialDocManager::IsFileModified(const char* filename)\r\n");
    return retVal;
}


/**
* Returns true if any material has been modified.
*/
bool MaterialDocManager::IsAnyModified() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialDocManager::IsAnyModified()\r\n");
    return retVal;
}


/**
* Adds a material.
* @param name The name of the material.
* @param filename The file to place the material in.
* @param sourceText The initial material definition.
* @param addUndo Can this operation be undone.
*/
void MaterialDocManager::AddMaterial(const char* name, const char* filename, const char* sourceText, bool addUndo) {
    Sys_Printf("void MaterialDocManager::AddMaterial(const char* name, const char* filename, const char* sourceText, bool addUndo)\r\n");
}


/**
* Used to redo an add material and undo a delete material. 
* The undo for adding a material deletes the material. Instead of adding a completely
* new material RedoAddMaterial finds the one that was just deleted and uses that. 
* @param name The name of the material that was added/deleted.
* @param clearData Should the material definition be reset to the default definition.
*/
void MaterialDocManager::RedoAddMaterial(const char* name, bool clearData) {
    Sys_Printf("void MaterialDocManager::RedoAddMaterial(const char* name, bool clearData)\r\n");
}


/**
* Deletes a material.
* @param material The material to be deleted.
* @param addUndo Can this operation be undone.
*/
void MaterialDocManager::DeleteMaterial(MaterialDoc* material, bool addUndo) {
    Sys_Printf("void MaterialDocManager::DeleteMaterial(MaterialDoc* material, bool addUndo)\r\n");
}


/**
* Applys changes to a material.
* @param materialDoc The material to be applied.
*/
void MaterialDocManager::ApplyMaterial(MaterialDoc* materialDoc) {
    Sys_Printf("void MaterialDocManager::ApplyMaterial(MaterialDoc* materialDoc)\r\n");
}


/**
* Applies all materials in the specified filename.
* @param filename The file to apply.
*/
void MaterialDocManager::ApplyFile(const char* filename) {
    Sys_Printf("void MaterialDocManager::ApplyFile(const char* filename)\r\n");
}


/**
* Applies all materials that have been changed.
*/
void MaterialDocManager::ApplyAll() {
    Sys_Printf("void MaterialDocManager::ApplyAll()\r\n");
}


/**
* Saves a single material.
* @param material The material to save.
*/
void MaterialDocManager::SaveMaterial(MaterialDoc* material) {
    Sys_Printf("void MaterialDocManager::SaveMaterial(MaterialDoc* material)\r\n");
}


/**
* Saves all materials in the specified file.
* @param filename The file to save.
*/
void MaterialDocManager::SaveFile(const char* filename) {
    Sys_Printf("void MaterialDocManager::SaveFile(const char* filename)\r\n");
}


/**
* Saves all materials that have been changed.
*/
void MaterialDocManager::SaveAllMaterials() {
    Sys_Printf("void MaterialDocManager::SaveAllMaterials()\r\n");
}


/**
* Reloads a specified file.
* @param filename The file to reload.
*/
void MaterialDocManager::ReloadFile(const char *filename) {
    Sys_Printf("void MaterialDocManager::ReloadFile(const char *filename)\r\n");
}


/**
* Creates a MaterialDoc object for the specified material name. If a MaterialDoc 
* object already exists then it is used.
* @param materialName The name of the material for which to create a MaterialDoc object.
*/
MaterialDoc* MaterialDocManager::CreateMaterialDoc(const char* materialName) {
    Sys_Printf("MaterialDoc* MaterialDocManager::CreateMaterialDoc(const char* materialName)\r\n");
    return NULL;
}


/**
* Creates a MaterialDoc object for the specified material. If a MaterialDoc 
* object already exists then it is used.
* @param material The material for which to create a MaterialDoc object.
*/
MaterialDoc* MaterialDocManager::CreateMaterialDoc(idMaterial* material) {
    Sys_Printf("MaterialDoc* MaterialDocManager::CreateMaterialDoc(idMaterial* material)\r\n");
    return NULL;
}


/**
* Checks the current list of in progress MaterialDoc objects to see if
* a MaterialDoc object already exists.
* @param material The material to check for.
*/
MaterialDoc* MaterialDocManager::GetInProgressDoc(idMaterial* material) {
    Sys_Printf("MaterialDoc* MaterialDocManager::GetInProgressDoc(idMaterial* material)\r\n");
    return NULL;
}


/**
* Prepares a material for a copy/cut and paste operations.
* @param materialDoc The material to copy.
* @param cut Is this a cut operation.
*/
void MaterialDocManager::CopyMaterial(MaterialDoc* materialDoc, bool cut) {
    Sys_Printf("void MaterialDocManager::CopyMaterial(MaterialDoc* materialDoc, bool cut)\r\n");
}


/**
* Clears the copy buffer for a material.
*/
void MaterialDocManager::ClearCopy() {
    Sys_Printf("void MaterialDocManager::ClearCopy()\r\n");
}


/**
* Returns true if there is a material in the copy buffer.
*/
bool MaterialDocManager::IsCopyMaterial() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialDocManager::IsCopyMaterial()\r\n");
    return retVal;
}


/**
* Returns the name of the material in the copy buffer.
*/
idStr MaterialDocManager::GetCopyMaterialName() {
    idStr retVal;
    memset(&retVal, 0, sizeof(idStr));
    Sys_Printf("idStr MaterialDocManager::GetCopyMaterialName()\r\n");
    return retVal;
}


/**
* Performs a material paste operation for a material in the copy buffer.
* @param name The new name for the material that is being copied.
* @param filename The file to paste the material in.
*/
void MaterialDocManager::PasteMaterial(const char* name, const char* filename) {
    Sys_Printf("void MaterialDocManager::PasteMaterial(const char* name, const char* filename)\r\n");
}


/**
* Prepares a material stage for a copy/paste operation.
* @param materialDoc The materialDoc that contains the stage to be copied.
* @param stageNum the stage to copy.
*/
void MaterialDocManager::CopyStage(MaterialDoc* materialDoc, int stageNum) {
    Sys_Printf("void MaterialDocManager::CopyStage(MaterialDoc* materialDoc, int stageNum)\r\n");
}


/**
* Clears the copy buffer for copied stages.
*/
void MaterialDocManager::ClearCopyStage() {
    Sys_Printf("void MaterialDocManager::ClearCopyStage()\r\n");
}


/**
* Returns true if there is a stage in the copy buffer.
*/
bool MaterialDocManager::IsCopyStage() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialDocManager::IsCopyStage()\r\n");
    return retVal;
}


/**
* Performs a paste operation of the stage in the copy buffer.
* @param materialDoc The materialDoc to paste the stage in.
*/
void MaterialDocManager::PasteStage(MaterialDoc* materialDoc) {
    Sys_Printf("void MaterialDocManager::PasteStage(MaterialDoc* materialDoc)\r\n");
}


/**
* Returns information about the stage in the copy buffer.
* @param type Holds the type of the stage in the copy buffer.
* @param name Hold the name of the stage in the copy buffer.
*/
void MaterialDocManager::GetCopyStageInfo(int& type, idStr& name) {
    Sys_Printf("void MaterialDocManager::GetCopyStageInfo(int& type, idStr& name)\r\n");
}


/**
* Performs the first available undo operation.
*/
void MaterialDocManager::Undo() {
    Sys_Printf("void MaterialDocManager::Undo()\r\n");
}


/**
* Returns true if an undo operation is available.
*/
bool MaterialDocManager::IsUndoAvailable() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialDocManager::IsUndoAvailable()\r\n");
    return retVal;
}


/**
* Clears the entire undo buffer.
*/
void MaterialDocManager::ClearUndo() {
    Sys_Printf("void MaterialDocManager::ClearUndo()\r\n");
}


/**
* Performs the first available redo operation.
*/
void MaterialDocManager::Redo() {
    Sys_Printf("void MaterialDocManager::Redo()\r\n");
}


/**
* Returns true if a redo operation is available.
*/
bool MaterialDocManager::IsRedoAvailable() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialDocManager::IsRedoAvailable()\r\n");
    return retVal;
}


/**
* Clears the redo buffer.
*/
void MaterialDocManager::ClearRedo() {
    Sys_Printf("void MaterialDocManager::ClearRedo()\r\n");
}


/**
* Adds an undo operation to the undo buffer.
* @param mod The MaterialModifier object that contains the undo data.
* @param clearRedo Should we clear the redo buffer.
*/
void  MaterialDocManager::AddMaterialUndoModifier(MaterialModifier* mod, bool clearRedo) {
    Sys_Printf("void  MaterialDocManager::AddMaterialUndoModifier(MaterialModifier* mod, bool clearRedo)\r\n");
}


/**
* Adds a redo operation to the redo buffer.
* @param mod The MaterialModifier object that contains the redo data.
*/
void  MaterialDocManager::AddMaterialRedoModifier(MaterialModifier* mod) {
    Sys_Printf("void  MaterialDocManager::AddMaterialRedoModifier(MaterialModifier* mod)\r\n");
}


/**
* Searches for a material that matches the specified search data.
* @param name The name of the material to search.
* @param searchData The search parameters.
* @param checkName If true then the name of the material will be checked along with the material text.
*/
bool MaterialDocManager::FindMaterial(const char* name, MaterialSearchData_t* searchData, bool checkName) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialDocManager::FindMaterial(const char* name, MaterialSearchData_t* searchData, bool checkName)\r\n");
    return retVal;
}


/**
* Returns a unique material name given a base name. This is used to resolve materials with the same name.
* @param name The base name of the material.
*/
idStr MaterialDocManager::GetUniqueMaterialName(idStr name) {
    idStr retVal;
    memset(&retVal, 0, sizeof(idStr));
    Sys_Printf("idStr MaterialDocManager::GetUniqueMaterialName(idStr name)\r\n");
    return retVal;
}


/**
* Notifies all registered views of a material event.
* @param materialDoc The material that has been affected.
* @param notifyType The type of event that has occured.
* @param ... Notification specific data. See MaterialView.
*/
void MaterialDocManager::NotifyViews(MaterialDoc* materialDoc, int notifyType, ... ) {
    Sys_Printf("void MaterialDocManager::NotifyViews(MaterialDoc* materialDoc, int notifyType, ... )\r\n");
}


/**
* Called when a material has been edited and notifies all views of the change.
* @param materialDoc The material that has changed.
*/
void MaterialDocManager::MaterialChanged(MaterialDoc* materialDoc) {
    Sys_Printf("void MaterialDocManager::MaterialChanged(MaterialDoc* materialDoc)\r\n");
}


/**
* Called when a material has been applied and notifies all views of the apply.
* @param materialDoc The material that has been applied.
*/
void MaterialDocManager::MaterialApplied(MaterialDoc* materialDoc) {
    Sys_Printf("void MaterialDocManager::MaterialApplied(MaterialDoc* materialDoc)\r\n");
}


/**
* Called when a material has been saved and notifies all views of the save.
* @param materialDoc The material that has been saved.
*/
void MaterialDocManager::MaterialSaved(MaterialDoc* materialDoc) {
    Sys_Printf("void MaterialDocManager::MaterialSaved(MaterialDoc* materialDoc)\r\n");
}


/**
* Called when a material name has been changed and notifies all views of the change.
* @param materialDoc The material that has changed.
*/
void MaterialDocManager::MaterialNameChanged(const char* oldName, MaterialDoc* materialDoc) {
    Sys_Printf("void MaterialDocManager::MaterialNameChanged(const char* oldName, MaterialDoc* materialDoc)\r\n");
}


/**
* Called when a stage is added and notifies all views of the addition.
* @param materialDoc The material that has changed.
* @param stageNum The stage that was added.
*/
void MaterialDocManager::StageAdded(MaterialDoc* materialDoc, int stageNum) {
    Sys_Printf("void MaterialDocManager::StageAdded(MaterialDoc* materialDoc, int stageNum)\r\n");
}


/**
* Called when a stage has been deleted and notifies all views of the change.
* @param materialDoc The material that has changed.
* @param stageNum The stage that was deleted.
*/
void MaterialDocManager::StageDeleted(MaterialDoc* materialDoc, int stageNum) {
    Sys_Printf("void MaterialDocManager::StageDeleted(MaterialDoc* materialDoc, int stageNum)\r\n");
}


/**
* Called when a stage has been movied and notifies all views of the change.
* @param materialDoc The material that has changed.
* @param from The original position of the stage.
* @param to The new position of the stage.
*/
void MaterialDocManager::StageMoved(MaterialDoc* materialDoc, int from, int to) {
    Sys_Printf("void MaterialDocManager::StageMoved(MaterialDoc* materialDoc, int from, int to)\r\n");
}


/**
* Called when a material attribute has been edited and notifies all views of the change.
* @param materialDoc The material that has changed.
* @param stage The stage that contains the changed attribute.
* @param attribName The name of the attribute that changed.
*/
void MaterialDocManager::AttributeChanged(MaterialDoc* materialDoc, int stage, const char* attribName) {
    Sys_Printf("void MaterialDocManager::AttributeChanged(MaterialDoc* materialDoc, int stage, const char* attribName)\r\n");
}

