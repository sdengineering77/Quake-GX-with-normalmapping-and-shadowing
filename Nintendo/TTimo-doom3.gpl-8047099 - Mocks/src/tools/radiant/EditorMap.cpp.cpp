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

#include "qe3.h"

int			mapModified;			// for quit confirmation (0 = clean, 1 = unsaved,

// 2 = autosaved, but not regular saved)
char		currentmap[1024];

brush_t		active_brushes;			// brushes currently being displayed
brush_t		selected_brushes;		// highlighted

face_t		*selected_face;
brush_t		*selected_face_brush;

brush_t		filtered_brushes;		// brushes that have been filtered or regioned

entity_t	entities;				// head/tail of doubly linked list

entity_t	*world_entity = NULL;	// "classname" "worldspawn" !

void		AddRegionBrushes(void);
void		RemoveRegionBrushes(void);

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void DupLists() {
    Sys_Printf("void DupLists()\r\n");
}


/*
 * Cross map selection saving this could mess this up if you have only part of a
 * complex entity selected...
 */
brush_t		between_brushes;
entity_t	between_entities;

bool		g_bRestoreBetween = false;

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void Map_SaveBetween(void) {
    Sys_Printf("void Map_SaveBetween(void)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void Map_RestoreBetween(void) {
    Sys_Printf("void Map_RestoreBetween(void)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool CheckForTinyBrush(brush_t *b, int n, float fSize) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CheckForTinyBrush(brush_t *b, int n, float fSize)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void Map_BuildBrushData(void) {
    Sys_Printf("void Map_BuildBrushData(void)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
entity_t *Map_FindClass(char *cname) {
    Sys_Printf("entity_t *Map_FindClass(char *cname)\r\n");
    return NULL;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
int Map_GetUniqueEntityID(const char *prefix, const char *eclass) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Map_GetUniqueEntityID(const char *prefix, const char *eclass)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool Entity_NameIsUnique(const char *name) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Entity_NameIsUnique(const char *name)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
    Map_Free
 =======================================================================================================================
 */
void Map_Free(void) {
    Sys_Printf("void Map_Free(void)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
entity_t *AngledEntity() {
    Sys_Printf("entity_t *AngledEntity()\r\n");
    return NULL;
}



brush_t *BrushFromMapPatch(idMapPatch *mappatch, idVec3 origin) {
    Sys_Printf("brush_t *BrushFromMapPatch(idMapPatch *mappatch, idVec3 origin)\r\n");
    return NULL;
}


brush_t *BrushFromMapBrush(idMapBrush *mapbrush, idVec3 origin) {
    Sys_Printf("brush_t *BrushFromMapBrush(idMapBrush *mapbrush, idVec3 origin)\r\n");
    return NULL;
}


entity_t *EntityFromMapEntity(idMapEntity *mapent, CWaitDlg *dlg) {
    Sys_Printf("entity_t *EntityFromMapEntity(idMapEntity *mapent, CWaitDlg *dlg)\r\n");
    return NULL;
}


extern entity_t *Entity_PostParse(entity_t *ent, brush_t *pList);
 /*
 =======================================================================================================================
    Map_LoadFile
 =======================================================================================================================
 */
void Map_LoadFile(const char *filename) {
    Sys_Printf("void Map_LoadFile(const char *filename)\r\n");
}



void Map_VerifyCurrentMap(const char *map) {
    Sys_Printf("void Map_VerifyCurrentMap(const char *map)\r\n");
}


idMapPrimitive *BrushToMapPrimitive( const brush_t *b, const idVec3 &origin ) {
    Sys_Printf("idMapPrimitive *BrushToMapPrimitive( const brush_t *b, const idVec3 &origin )\r\n");
    return NULL;
}


idMapEntity *EntityToMapEntity(entity_t *e, bool use_region, CWaitDlg *dlg) {
    Sys_Printf("idMapEntity *EntityToMapEntity(entity_t *e, bool use_region, CWaitDlg *dlg)\r\n");
    return NULL;
}


/*
 =======================================================================================================================
    Map_SaveFile
 =======================================================================================================================
 */
bool Map_SaveFile(const char *filename, bool use_region, bool autosave) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Map_SaveFile(const char *filename, bool use_region, bool autosave)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
    Map_New
 =======================================================================================================================
 */
void Map_New(void) {
    Sys_Printf("void Map_New(void)\r\n");
}



bool	region_active;
idVec3	region_mins(MIN_WORLD_COORD, MIN_WORLD_COORD, MIN_WORLD_COORD);
idVec3	region_maxs(MAX_WORLD_COORD, MAX_WORLD_COORD, MAX_WORLD_COORD);

brush_t *region_sides[6];

/*
 =======================================================================================================================
    AddRegionBrushes a regioned map will have temp walls put up at the region boundary
 =======================================================================================================================
 */
void AddRegionBrushes(void) {
    Sys_Printf("void AddRegionBrushes(void)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void RemoveRegionBrushes(void) {
    Sys_Printf("void RemoveRegionBrushes(void)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool Map_IsBrushFiltered(brush_t *b) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Map_IsBrushFiltered(brush_t *b)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
    Map_RegionOff Other filtering options may still be on
 =======================================================================================================================
 */
void Map_RegionOff(void) {
    Sys_Printf("void Map_RegionOff(void)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void Map_ApplyRegion(void) {
    Sys_Printf("void Map_ApplyRegion(void)\r\n");
}


/*
 =======================================================================================================================
    Map_RegionSelectedBrushes
 =======================================================================================================================
 */
void Map_RegionSelectedBrushes(void) {
    Sys_Printf("void Map_RegionSelectedBrushes(void)\r\n");
}


/*
 =======================================================================================================================
    Map_RegionXY
 =======================================================================================================================
 */
void Map_RegionXY(void) {
    Sys_Printf("void Map_RegionXY(void)\r\n");
}


/*
 =======================================================================================================================
    Map_RegionTallBrush
 =======================================================================================================================
 */
void Map_RegionTallBrush(void) {
    Sys_Printf("void Map_RegionTallBrush(void)\r\n");
}


/*
 =======================================================================================================================
    Map_RegionBrush
 =======================================================================================================================
 */
void Map_RegionBrush(void) {
    Sys_Printf("void Map_RegionBrush(void)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void UniqueTargetName(idStr &rStr) {
    Sys_Printf("void UniqueTargetName(idStr &rStr)\r\n");
}


//
// =======================================================================================================================
//    Map_ImportFile Timo 09/01/99:: called by CXYWnd::Paste & Map_ImportFile if Map_ImportFile ( prefab ), the buffer
//    may contain brushes in old format ( conversion needed )
// =======================================================================================================================
//
void Map_ImportBuffer(char *buf, bool renameEntities) {
    Sys_Printf("void Map_ImportBuffer(char *buf, bool renameEntities)\r\n");
}


//
// =======================================================================================================================
//    Map_ImportFile
// =======================================================================================================================
//
void Map_ImportFile(char *fileName) {
    Sys_Printf("void Map_ImportFile(char *fileName)\r\n");
}


//
// =======================================================================================================================
//    Map_SaveSelected Saves selected world brushes and whole entities with partial/full selections
// =======================================================================================================================
//
void Map_SaveSelected(char *fileName) {
    Sys_Printf("void Map_SaveSelected(char *fileName)\r\n");
}


//
// =======================================================================================================================
//    Map_SaveSelected Saves selected world brushes and whole entities with partial/full selections
// =======================================================================================================================
//
void Map_SaveSelected(CMemFile *pMemFile, CMemFile *pPatchFile) {
    Sys_Printf("void Map_SaveSelected(CMemFile *pMemFile, CMemFile *pPatchFile)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */

/*
================
WriteFileString
================
*/
bool WriteFileString( FILE *fp, char *string, ... ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool WriteFileString( FILE *fp, char *string, ... )\r\n");
    return retVal;
}


/*
================
MemFile_fprintf
================
*/
void MemFile_fprintf( CMemFile *pMemFile, const char *string, ... ) {
    Sys_Printf("void MemFile_fprintf( CMemFile *pMemFile, const char *string, ... )\r\n");
}

