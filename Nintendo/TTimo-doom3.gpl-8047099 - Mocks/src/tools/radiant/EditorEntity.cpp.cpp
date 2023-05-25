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
#include "../../renderer/tr_local.h"
#include "../../renderer/model_local.h"	// for idRenderModelMD5
int g_entityId = 1;

#define CURVE_TAG "curve_"

extern void Brush_Resize(brush_t *b, idVec3 vMin, idVec3 vMax);

int	GetNumKeys(entity_t *ent)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intGetNumKeys(entity_t *ent)\r\n");
    return retVal;
}


const char *GetKeyString(entity_t *ent, int iIndex)
{
    Sys_Printf("char *GetKeyString(entity_t *ent, int iIndex)\r\n");
    return NULL;
}



/*
 =======================================================================================================================
 =======================================================================================================================
 */
const char *ValueForKey(entity_t *ent, const char *key) {
    Sys_Printf("char *ValueForKey(entity_t *ent, const char *key)\r\n");
    return NULL;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void TrackMD3Angles(entity_t *e, const char *key, const char *value) {
    Sys_Printf("void TrackMD3Angles(entity_t *e, const char *key, const char *value)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void SetKeyValue(entity_t *ent, const char *key, const char *value, bool trackAngles) {
    Sys_Printf("void SetKeyValue(entity_t *ent, const char *key, const char *value, bool trackAngles)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void SetKeyVec3(entity_t *ent, const char *key, idVec3 v) {
    Sys_Printf("void SetKeyVec3(entity_t *ent, const char *key, idVec3 v)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void SetKeyMat3(entity_t *ent, const char *key, idMat3 m) {
    Sys_Printf("void SetKeyMat3(entity_t *ent, const char *key, idMat3 m)\r\n");
}




/*
 =======================================================================================================================
 =======================================================================================================================
 */
void DeleteKey(entity_t *ent, const char *key) {
    Sys_Printf("void DeleteKey(entity_t *ent, const char *key)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
float FloatForKey(entity_t *ent, const char *key) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float FloatForKey(entity_t *ent, const char *key)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
int IntForKey(entity_t *ent, const char *key) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int IntForKey(entity_t *ent, const char *key)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool GetVectorForKey(entity_t *ent, const char *key, idVec3 &vec) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GetVectorForKey(entity_t *ent, const char *key, idVec3 &vec)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool GetVector4ForKey(entity_t *ent, const char *key, idVec4 &vec) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GetVector4ForKey(entity_t *ent, const char *key, idVec4 &vec)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool GetFloatForKey(entity_t *ent, const char *key, float *f) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GetFloatForKey(entity_t *ent, const char *key, float *f)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool GetMatrixForKey(entity_t *ent, const char *key, idMat3 &mat) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GetMatrixForKey(entity_t *ent, const char *key, idMat3 &mat)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
    Entity_FreeEpairs Frees the entity epairs.
 =======================================================================================================================
 */
void Entity_FreeEpairs(entity_t *e) {
    Sys_Printf("void Entity_FreeEpairs(entity_t *e)\r\n");
}


/*
 =======================================================================================================================
    Entity_AddToList
 =======================================================================================================================
 */
void Entity_AddToList(entity_t *e, entity_t *list) {
    Sys_Printf("void Entity_AddToList(entity_t *e, entity_t *list)\r\n");
}


/*
 =======================================================================================================================
    Entity_RemoveFromList
 =======================================================================================================================
 */
void Entity_RemoveFromList(entity_t *e) {
    Sys_Printf("void Entity_RemoveFromList(entity_t *e)\r\n");
}


/*
 =======================================================================================================================
    Entity_Free Frees the entity and any brushes is has. The entity is removed from the global entities list.
 =======================================================================================================================
 */
void Entity_Free( entity_t *e ) {
    Sys_Printf("void Entity_Free( entity_t *e )\r\n");
}


/*
 =======================================================================================================================
    Entity_MemorySize
 =======================================================================================================================
 */

int Entity_MemorySize( entity_t *e ) 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Entity_MemorySize( entity_t *e )\r\n");
    return retVal;
}


/*
 =======================================================================================================================
    ParseEpair
 =======================================================================================================================
 */

struct EpairFixup {
	const char *name;
	int type;
};


const EpairFixup FloatFixups[] = {
	{ "origin", 1 },
	{ "rotation", 2 },
	{ "_color", 1 },
	{ "falloff", 0 },
	{ "light", 0 },
	{ "light_target", 1 },
	{ "light_up", 1 },
	{ "light_right", 1 },
	{ "light_start", 1 },
	{ "light_center", 1 },
	{ "light_end", 1 },
	{ "light_radius", 1 },
	{ "light_origin", 1 }
};

const int FixupCount = sizeof(FloatFixups) / sizeof(EpairFixup);

void FixFloats(idDict *dict) {
    Sys_Printf("void FixFloats(idDict *dict)\r\n");
}


void ParseEpair(idDict *dict) {
    Sys_Printf("void ParseEpair(idDict *dict)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool EntityHasModel(entity_t *ent) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool EntityHasModel(entity_t *ent)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
entity_t *Entity_New() {
    Sys_Printf("entity_t *Entity_New()\r\n");
    return NULL;
}


void Entity_UpdateCurveData( entity_t *ent ) {
    Sys_Printf("void Entity_UpdateCurveData( entity_t *ent )\r\n");
}


idCurve<idVec3> *Entity_MakeCurve( entity_t *ent ) {
	const idKeyValue *kv = ent->epairs.MatchPrefix( CURVE_TAG );
	if ( kv ) {
		idStr str = kv->GetKey().Right( kv->GetKey().Length() - strlen( CURVE_TAG ) );
		if ( str.Icmp( "CatmullRomSpline" ) == 0 ) {
			return new idCurve_CatmullRomSpline<idVec3>();
		} else if ( str.Icmp( "Nurbs" ) == 0 ) {
			return new idCurve_NURBS<idVec3>();
		}
	}
	return NULL;
}

void Entity_SetCurveData( entity_t *ent ) {
    Sys_Printf("void Entity_SetCurveData( entity_t *ent )\r\n");
}


entity_t *Entity_PostParse(entity_t *ent, brush_t *pList) {
    Sys_Printf("entity_t *Entity_PostParse(entity_t *ent, brush_t *pList)\r\n");
    return NULL;
}


/*
 =======================================================================================================================
    Entity_Parse If onlypairs is set, the classname info will not be looked up, and the entity will not be added to the
    global list. Used for parsing the project.
 =======================================================================================================================
 */
entity_t *Entity_Parse(bool onlypairs, brush_t *pList) {
    Sys_Printf("entity_t *Entity_Parse(bool onlypairs, brush_t *pList)\r\n");
    return NULL;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void VectorMidpoint(idVec3 va, idVec3 vb, idVec3 &out) {
    Sys_Printf("void VectorMidpoint(idVec3 va, idVec3 vb, idVec3 &out)\r\n");
}


/*
 =======================================================================================================================
    Entity_Write
 =======================================================================================================================
 */
void Entity_Write(entity_t *e, FILE *f, bool use_region) {
    Sys_Printf("void Entity_Write(entity_t *e, FILE *f, bool use_region)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool IsBrushSelected(brush_t *bSel) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool IsBrushSelected(brush_t *bSel)\r\n");
    return retVal;
}


//
// =======================================================================================================================
//    Entity_WriteSelected
// =======================================================================================================================
//
void Entity_WriteSelected(entity_t *e, FILE *f) {
    Sys_Printf("void Entity_WriteSelected(entity_t *e, FILE *f)\r\n");
}


//
// =======================================================================================================================
//    Entity_WriteSelected to a CMemFile
// =======================================================================================================================
//
void Entity_WriteSelected(entity_t *e, CMemFile *pMemFile) {
    Sys_Printf("void Entity_WriteSelected(entity_t *e, CMemFile *pMemFile)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void Entity_SetName(entity_t *e, const char *name) {
    Sys_Printf("void Entity_SetName(entity_t *e, const char *name)\r\n");
}


extern bool Entity_NameIsUnique(const char *name);

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void Entity_Name(entity_t *e, bool force) {
    Sys_Printf("void Entity_Name(entity_t *e, bool force)\r\n");
}


/*
 =======================================================================================================================
    Entity_Create Creates a new entity out of the selected_brushes list. If the entity class is fixed size, the brushes
    are only used to find a midpoint. Otherwise, the brushes have their ownership transfered to the new entity.
 =======================================================================================================================
 */
entity_t *Entity_Create(eclass_t *c, bool forceFixed) {
    Sys_Printf("entity_t *Entity_Create(eclass_t *c, bool forceFixed)\r\n");
    return NULL;
}


void Brush_MakeDirty(brush_t *b) {
    Sys_Printf("void Brush_MakeDirty(brush_t *b)\r\n");
}

/*
 =======================================================================================================================
    Entity_LinkBrush
 =======================================================================================================================
 */
void Entity_LinkBrush(entity_t *e, brush_t *b) {
    Sys_Printf("void Entity_LinkBrush(entity_t *e, brush_t *b)\r\n");
}


/*
 =======================================================================================================================
    Entity_UnlinkBrush
 =======================================================================================================================
 */
void Entity_UnlinkBrush(brush_t *b) {
    Sys_Printf("void Entity_UnlinkBrush(brush_t *b)\r\n");
}


/*
 =======================================================================================================================
    Entity_Clone
 =======================================================================================================================
 */
entity_t *Entity_Clone(entity_t *e) {
    Sys_Printf("entity_t *Entity_Clone(entity_t *e)\r\n");
    return NULL;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
int GetUniqueTargetId(int iHint) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int GetUniqueTargetId(int iHint)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
entity_t *FindEntity(const char *pszKey, const char *pszValue) {
    Sys_Printf("entity_t *FindEntity(const char *pszKey, const char *pszValue)\r\n");
    return NULL;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
entity_t *FindEntityInt(const char *pszKey, int iValue) {
    Sys_Printf("entity_t *FindEntityInt(const char *pszKey, int iValue)\r\n");
    return NULL;
}


/*
====================
Entity_UpdateSoundEmitter

Deletes the soundEmitter if the entity should not emit a sound due
to it not having one, being filtered away, or the sound mode being turned off.

Creates or updates the soundEmitter if needed
====================
*/
void Entity_UpdateSoundEmitter( entity_t *ent ) {
    Sys_Printf("void Entity_UpdateSoundEmitter( entity_t *ent )\r\n");
}


