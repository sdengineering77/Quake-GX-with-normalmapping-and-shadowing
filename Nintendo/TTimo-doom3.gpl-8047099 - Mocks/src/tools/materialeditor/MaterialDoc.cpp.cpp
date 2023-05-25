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

#include "MaterialDoc.h"
#include "MaterialView.h"

/**
* Constructor for MaterialDoc.
*/
MaterialDoc::MaterialDoc(void) {
	modified = false;
	applyWaiting = false;
	sourceModify = false;
}

/**
* Destructor for MaterialDoc.
*/
MaterialDoc::~MaterialDoc(void) {
	ClearEditMaterial();
}

/**
* Initializes the MaterialDoc instance with a specific idMaterial. This method will 
* parse the material into the internal dictionary representation and optionally 
* allow the idMaterial object to reparse the source.
* @param material The idMaterial instance to use.
* @param parseMaterial Flag to determine if the material should be parsed into the editor representation.
* @param parseRenderMaterial Flag to determine if the idMaterial object should be reparsed.
*/
void MaterialDoc::SetRenderMaterial(idMaterial* material, bool parseMaterial, bool parseRenderMatierial) {
    Sys_Printf("void MaterialDoc::SetRenderMaterial(idMaterial* material, bool parseMaterial, bool parseRenderMatierial)\r\n");
}


/**
* Returns the number of stages in this material.
*/
int	MaterialDoc::GetStageCount() {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intMaterialDoc::GetStageCount()\r\n");
    return retVal;
}


/**
* Returns the index of the stage with the specified type and name or -1
* if the stage does not exist.
* @param stageType The type of stage to find.
* @param name The name of the stage to find.
*/
int	MaterialDoc::FindStage(int stageType, const char* name) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intMaterialDoc::FindStage(int stageType, const char* name)\r\n");
    return retVal;
}


/**
* Returns a copy of the specified stage.
* @param stage The stage to return.
*/
MEStage_t MaterialDoc::GetStage(int stage) {
    MEStage_t retVal;
    memset(&retVal, 0, sizeof(MEStage_t));
    Sys_Printf("MEStage_t MaterialDoc::GetStage(int stage)\r\n");
    return retVal;
}


/**
* Specifies the enabled state of a single stage.
* @param stage The stage to change.
* @param enabled The enabled state.
*/
void MaterialDoc::EnableStage(int stage, bool enabled) {
    Sys_Printf("void MaterialDoc::EnableStage(int stage, bool enabled)\r\n");
}


/**
* Sets the enabled state of all stages.
* @param enabled The enabled state.
*/
void MaterialDoc::EnableAllStages(bool enabled) {
    Sys_Printf("void MaterialDoc::EnableAllStages(bool enabled)\r\n");
}


/**
* Returns the enabled state of a stage.
* @param stage The stage to check.
*/
bool MaterialDoc::IsStageEnabled(int stage) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialDoc::IsStageEnabled(int stage)\r\n");
    return retVal;
}


/**
* Returns an attribute string from the material or a stage.
* @param stage The stage or -1 for the material.
* @param attribName The name of the attribute.
* @param defaultString The default value if the attribute is not specified.
*/
const char*	MaterialDoc::GetAttribute(int stage, const char* attribName, const char* defaultString) {
    Sys_Printf("char*MaterialDoc::GetAttribute(int stage, const char* attribName, const char* defaultString)\r\n");
    return NULL;
}


/**
* Returns an attribute int from the material or a stage.
* @param stage The stage or -1 for the material.
* @param attribName The name of the attribute.
* @param defaultString The default value if the attribute is not specified.
*/
int MaterialDoc::GetAttributeInt(int stage, const char* attribName, const char* defaultString) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int MaterialDoc::GetAttributeInt(int stage, const char* attribName, const char* defaultString)\r\n");
    return retVal;
}


/**
* Returns an attribute float from the material or a stage.
* @param stage The stage or -1 for the material.
* @param attribName The name of the attribute.
* @param defaultString The default value if the attribute is not specified.
*/
float MaterialDoc::GetAttributeFloat(int stage, const char* attribName, const char* defaultString) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float MaterialDoc::GetAttributeFloat(int stage, const char* attribName, const char* defaultString)\r\n");
    return retVal;
}


/**
* Returns an attribute bool from the material or a stage.
* @param stage The stage or -1 for the material.
* @param attribName The name of the attribute.
* @param defaultString The default value if the attribute is not specified.
*/
bool MaterialDoc::GetAttributeBool(int stage, const char* attribName, const char* defaultString) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialDoc::GetAttributeBool(int stage, const char* attribName, const char* defaultString)\r\n");
    return retVal;
}


/**
* Sets an attribute string in the material or a stage.
* @param stage The stage or -1 for the material.
* @param attribName The name of the attribute.
* @param value The value to set.
* @param addUndo Flag that specifies if the system should add an undo operation.
*/
void MaterialDoc::SetAttribute(int stage, const char* attribName, const char* value, bool addUndo) {
    Sys_Printf("void MaterialDoc::SetAttribute(int stage, const char* attribName, const char* value, bool addUndo)\r\n");
}


/**
* Sets an attribute int in the material or a stage.
* @param stage The stage or -1 for the material.
* @param attribName The name of the attribute.
* @param value The value to set.
* @param addUndo Flag that specifies if the system should add an undo operation.
*/
void MaterialDoc::SetAttributeInt(int stage, const char* attribName, int value, bool addUndo) {
    Sys_Printf("void MaterialDoc::SetAttributeInt(int stage, const char* attribName, int value, bool addUndo)\r\n");
}


/**
* Sets an attribute float in the material or a stage.
* @param stage The stage or -1 for the material.
* @param attribName The name of the attribute.
* @param value The value to set.
* @param addUndo Flag that specifies if the system should add an undo operation.
*/
void MaterialDoc::SetAttributeFloat(int stage, const char* attribName, float value, bool addUndo) {
    Sys_Printf("void MaterialDoc::SetAttributeFloat(int stage, const char* attribName, float value, bool addUndo)\r\n");
}


/**
* Sets an attribute bool in the material or a stage.
* @param stage The stage or -1 for the material.
* @param attribName The name of the attribute.
* @param value The value to set.
* @param addUndo Flag that specifies if the system should add an undo operation.
*/
void MaterialDoc::SetAttributeBool(int stage, const char* attribName, bool value, bool addUndo) {
    Sys_Printf("void MaterialDoc::SetAttributeBool(int stage, const char* attribName, bool value, bool addUndo)\r\n");
}


/**
* Sets the material name.
* @param materialName The new name of the material.
* @param addUndo Flag that specifies if the system should add an undo operation.
*/
void MaterialDoc::SetMaterialName(const char* materialName, bool addUndo) {
    Sys_Printf("void MaterialDoc::SetMaterialName(const char* materialName, bool addUndo)\r\n");
}


/**
* Sets the entire dictionary for a material or stage
* @param stage The stage or -1 for the material.
* @param data The dictionary to copy.
*/
void MaterialDoc::SetData(int stage, idDict* data) {
    Sys_Printf("void MaterialDoc::SetData(int stage, idDict* data)\r\n");
}


/**
* Called when the editor modifies the source of the material.
* @param text The new source text.
*/
void MaterialDoc::SourceModify(SourceModifyOwner* owner) {
    Sys_Printf("void MaterialDoc::SourceModify(SourceModifyOwner* owner)\r\n");
}


/**
* Returns true if the source text of this material has been edited.
*/
bool MaterialDoc::IsSourceModified() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialDoc::IsSourceModified()\r\n");
    return retVal;
}


/**
* Applies any source changes to the edit representation of the material.
*/
void MaterialDoc::ApplySourceModify(idStr& text) {
    Sys_Printf("void MaterialDoc::ApplySourceModify(idStr& text)\r\n");
}


/**
* Returns the appropriate source for the editing
*/
const char*	MaterialDoc::GetEditSourceText() {
    Sys_Printf("char*MaterialDoc::GetEditSourceText()\r\n");
    return NULL;
}


/**
* Adds a stage to the material.
* @param stageType The type of the stage: normal or special.
* @param stageName The name of the stage.
* @param addUndo Flag that specifies if the system should add an undo operation.
*/
void MaterialDoc::AddStage(int stageType, const char* stageName, bool addUndo) {
    Sys_Printf("void MaterialDoc::AddStage(int stageType, const char* stageName, bool addUndo)\r\n");
}


/**
* Inserts a new stage to the material at a specified location.
* @param stage The location to insert the stage.
* @param stageType The type of the stage: normal or special.
* @param stageName The name of the stage.
* @param addUndo Flag that specifies if the system should add an undo operation.
*/
void MaterialDoc::InsertStage(int stage, int stageType, const char* stageName, bool addUndo) {
    Sys_Printf("void MaterialDoc::InsertStage(int stage, int stageType, const char* stageName, bool addUndo)\r\n");
}


/**
* Removes a stage from the material.
* @param stage The stage to remove.
* @param addUndo Flag that specifies if the system should add an undo operation.
*/
void MaterialDoc::RemoveStage(int stage, bool addUndo) {
    Sys_Printf("void MaterialDoc::RemoveStage(int stage, bool addUndo)\r\n");
}


/**
* Removes all stages from the material.
*/
void MaterialDoc::ClearStages() {
    Sys_Printf("void MaterialDoc::ClearStages()\r\n");
}


/**
* Moves a stage from one location to another.
* @param from The original location of the stage.
* @param to The new location of the stage.
* @param addUndo Flag that specifies if the system should add an undo operation.
*/
void MaterialDoc::MoveStage(int from, int to, bool addUndo) {
    Sys_Printf("void MaterialDoc::MoveStage(int from, int to, bool addUndo)\r\n");
}


/**
* Applies any changes to the material
* @param force If true then the material will be applied regardless of the number of changes.
*/
void MaterialDoc::ApplyMaterialChanges(bool force) {
    Sys_Printf("void MaterialDoc::ApplyMaterialChanges(bool force)\r\n");
}


/**
* Saves the material.
*/
void MaterialDoc::Save() {
    Sys_Printf("void MaterialDoc::Save()\r\n");
}


/**
* Deletes the material.
*/
void MaterialDoc::Delete() {
    Sys_Printf("void MaterialDoc::Delete()\r\n");
}


/**
* Sets the proper internal states and notifies the MaterialDocManager once a material has been changed.
*/
void MaterialDoc::OnMaterialChanged() {
    Sys_Printf("void MaterialDoc::OnMaterialChanged()\r\n");
}


/**
* Passes text to a render material for parsing.
* @param source The text that sould be applied to the idMaterial.
*/
void MaterialDoc::ParseMaterialText(const char* source) {
    Sys_Printf("void MaterialDoc::ParseMaterialText(const char* source)\r\n");
}


/**
* Parses the source text from an idMaterial and initializes the editor dictionary representation
* of the material.
* @param src The idLexer object that contains the material text.
*/
void MaterialDoc::ParseMaterial(idLexer* src) {
    Sys_Printf("void MaterialDoc::ParseMaterial(idLexer* src)\r\n");
}


/**
* Parses a single stage from the source text from an idMaterial and initializes the editor dictionary 
* representation of the material.
* @param src The idLexer object that contains the material text.
*/
void MaterialDoc::ParseStage(idLexer* src) {
    Sys_Printf("void MaterialDoc::ParseStage(idLexer* src)\r\n");
}


/**
* Adds a special stage to the material.
* @param stageName The name of the special stage bumpmap, diffusemap or specularmap
* @param map The map for the special stage.
*/
void MaterialDoc::AddSpecialMapStage(const char* stageName, const char* map) {
    Sys_Printf("void MaterialDoc::AddSpecialMapStage(const char* stageName, const char* map)\r\n");
}


/**
* Finds the appropriate material definition for the supplied token and initializes the
* internal dictionary data.
* @param token The token to lookup
* @param src The idLexer that contains the material source text.
* @param type The type of attribute grouping to use material, stage or special stage.
* @param dict The dictionary to initialize.
*/
bool MaterialDoc::ParseMaterialDef(idToken* token, idLexer* src, int type, idDict* dict) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MaterialDoc::ParseMaterialDef(idToken* token, idLexer* src, int type, idDict* dict)\r\n");
    return retVal;
}


/**
* Cleans up the edit material by deleting the stage data structures.
*/
void MaterialDoc::ClearEditMaterial() {
    Sys_Printf("void MaterialDoc::ClearEditMaterial()\r\n");
}


/**
* Writes the internal dictionary data to the standard format.
*/
const char*	MaterialDoc::GenerateSourceText() {
    Sys_Printf("char*MaterialDoc::GenerateSourceText()\r\n");
    return NULL;
}


/**
* Writes the internal dictionary data to the standard format and replaces the 
* idMaterial source text with the newly generated text.
*/
void MaterialDoc::ReplaceSourceText() {
    Sys_Printf("void MaterialDoc::ReplaceSourceText()\r\n");
}


/**
* Writes a single stage.
* @param stage The stage to write.
* @param file The file where the stage should be wirtten
*/
void MaterialDoc::WriteStage(int stage, idFile_Memory* file) {
    Sys_Printf("void MaterialDoc::WriteStage(int stage, idFile_Memory* file)\r\n");
}


/**
* Writes a single special stage.
* @param stage The stage to write.
* @param file The file where the stage should be wirtten
*/
void MaterialDoc::WriteSpecialMapStage(int stage, idFile_Memory* file) {
    Sys_Printf("void MaterialDoc::WriteSpecialMapStage(int stage, idFile_Memory* file)\r\n");
}


/**
* Writes a set of material attributes to a file.
* @param stage The stage to write or -1 for the material.
* @param file The file where the stage should be wirtten.
* @param type The attribute grouping to use.
* @param indent The number of tabs to indent the text.
*/
void MaterialDoc::WriteMaterialDef(int stage, idFile_Memory* file, int type, int indent) {
    Sys_Printf("void MaterialDoc::WriteMaterialDef(int stage, idFile_Memory* file, int type, int indent)\r\n");
}


