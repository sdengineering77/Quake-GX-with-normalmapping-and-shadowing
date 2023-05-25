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

#include "MaterialDef.h"


/**
* Constructor.
*/
MaterialDef::MaterialDef(void) {
	type = 0;
	quotes = false;
}

/**
* Destructor.
*/
MaterialDef::~MaterialDef(void) {
}

/**
* Returns view specific data associated with the material definition.
*/
DWORD MaterialDef::GetViewData(const char* viewName) {
    DWORD retVal;
    memset(&retVal, 0, sizeof(DWORD));
    Sys_Printf("DWORD MaterialDef::GetViewData(const char* viewName)\r\n");
    return retVal;
}


/**
* Sets view specific data for the material definition.
*/
void MaterialDef::SetViewData(const char* viewName, DWORD value) {
    Sys_Printf("void MaterialDef::SetViewData(const char* viewName, DWORD value)\r\n");
}


#define MATERIAL_DEF_FILE "MaterialEditorDefs.med"

MaterialDefList MaterialDefManager::materialDefs[MaterialDefManager::MATERIAL_DEF_NUM];


/**
* Loads the material definition file instatiates MaterialDef objects for each definition
* and groups the definitions.
*/
void MaterialDefManager::InitializeMaterialDefLists() {
    Sys_Printf("void MaterialDefManager::InitializeMaterialDefLists()\r\n");
}


/**
* Loads a single type of material attributes and adds them to the supplied MaterialDefList object.
* @param src The idLexer object that contains the file.
* @param typeName The name of the attribute grouping to search for in the file.
* @param list The MaterialDefList object to append the MaterialDef instances to.
*/
void MaterialDefManager::InitializeMaterialDefList(idLexer* src, const char* typeName, MaterialDefList* list) {
    Sys_Printf("void MaterialDefManager::InitializeMaterialDefList(idLexer* src, const char* typeName, MaterialDefList* list)\r\n");
}


/**
* Destroys all MaterialDef instances and clears the material attribute grouping lists.
*/
void MaterialDefManager::DestroyMaterialDefLists() {
    Sys_Printf("void MaterialDefManager::DestroyMaterialDefLists()\r\n");
}


/**
* Returns the MaterialDefList for the specified attribute grouping.
* @param type The attribute grouping for which to retreive the attribute list.
*/
MaterialDefList* MaterialDefManager::GetMaterialDefs(int type) {
    Sys_Printf("MaterialDefList* MaterialDefManager::GetMaterialDefs(int type)\r\n");
    return NULL;
}

