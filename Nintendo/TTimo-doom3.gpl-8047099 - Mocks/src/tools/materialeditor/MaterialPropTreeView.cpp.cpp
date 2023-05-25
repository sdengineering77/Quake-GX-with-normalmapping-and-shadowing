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

#include "MaterialPropTreeView.h"

#define PROP_TREE_VIEW "PropTreeView"


IMPLEMENT_DYNCREATE(MaterialPropTreeView, CPropTreeView)

BEGIN_MESSAGE_MAP(MaterialPropTreeView, CPropTreeView)
	ON_NOTIFY( PTN_ITEMCHANGED, IDC_PROPERTYTREE, OnPropertyChangeNotification )
	ON_NOTIFY( PTN_ITEMEXPANDING, IDC_PROPERTYTREE, OnPropertyItemExpanding )
END_MESSAGE_MAP()


/**
* Constructor for MaterialPropTreeView.
*/
MaterialPropTreeView::MaterialPropTreeView() {
	registry.Init("Software\\id Software\\DOOM3\\Tools\\MaterialEditor\\PropertySettings");
	internalChange = false;
}

/**
* Destructor for MaterialPropTreeView.
*/
MaterialPropTreeView::~MaterialPropTreeView() {
}

/**
* Initializes the list of properties based on the type (material, stage, special stage).
* @param listType The type of list (material, stage, special stage)
* @param stageNum The stage from which to get the attributes.
*/
void MaterialPropTreeView::SetPropertyListType(int listType, int stageNum) {
    Sys_Printf("void MaterialPropTreeView::SetPropertyListType(int listType, int stageNum)\r\n");
}


/**
* Loads the property view settings from the registry.
*/
void MaterialPropTreeView::LoadSettings() {
    Sys_Printf("void MaterialPropTreeView::LoadSettings()\r\n");
}


/**
* Saves the property view settings to the registry.
*/
void MaterialPropTreeView::SaveSettings() {
    Sys_Printf("void MaterialPropTreeView::SaveSettings()\r\n");
}


/**
* Called when the material has changed but not applied.
* @param pMaterial The selected material.
*/
void MaterialPropTreeView::MV_OnMaterialChange(MaterialDoc* pMaterial) {
    Sys_Printf("void MaterialPropTreeView::MV_OnMaterialChange(MaterialDoc* pMaterial)\r\n");
}


/**
* Updated the material when an attribute has been changed.
*/
void MaterialPropTreeView::OnPropertyChangeNotification( NMHDR *nmhdr, LRESULT *lresult ) {
    Sys_Printf("void MaterialPropTreeView::OnPropertyChangeNotification( NMHDR *nmhdr, LRESULT *lresult )\r\n");
}


/**
* Changes the property setting of a group when is expanding.
*/
void MaterialPropTreeView::OnPropertyItemExpanding( NMHDR *nmhdr, LRESULT *lresult ) {
    Sys_Printf("void MaterialPropTreeView::OnPropertyItemExpanding( NMHDR *nmhdr, LRESULT *lresult )\r\n");
}


/**
* Returns the MeterialDef for a given property tree item.
* @param treeID The id of the tree item in question.
*/
MaterialDef* MaterialPropTreeView::FindDefForTreeID(UINT treeID) {
    Sys_Printf("MaterialDef* MaterialPropTreeView::FindDefForTreeID(UINT treeID)\r\n");
    return NULL;
}


/**
* Initializes the property tree with the data from the currently selected material.
*/
void MaterialPropTreeView::RefreshProperties() {
    Sys_Printf("void MaterialPropTreeView::RefreshProperties()\r\n");
}






