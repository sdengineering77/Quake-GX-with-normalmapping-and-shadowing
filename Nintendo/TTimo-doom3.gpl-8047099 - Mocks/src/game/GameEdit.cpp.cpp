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

#include "../idlib/precompiled.h"
#pragma hdrstop

#include "Game_local.h"


/*
===============================================================================

	Ingame cursor.

===============================================================================
*/

CLASS_DECLARATION( idEntity, idCursor3D )
END_CLASS

/*
===============
idCursor3D::idCursor3D
===============
*/
idCursor3D::idCursor3D( void ) {
	draggedPosition.Zero();
}

/*
===============
idCursor3D::~idCursor3D
===============
*/
idCursor3D::~idCursor3D( void ) {
}

/*
===============
idCursor3D::Spawn
===============
*/
void idCursor3D::Spawn( void ) {
    Sys_Printf("void idCursor3D::Spawn( void )\r\n");
}


/*
===============
idCursor3D::Present
===============
*/
void idCursor3D::Present( void ) {
    Sys_Printf("void idCursor3D::Present( void )\r\n");
}


/*
===============
idCursor3D::Think
===============
*/
void idCursor3D::Think( void ) {
    Sys_Printf("void idCursor3D::Think( void )\r\n");
}



/*
===============================================================================

	Allows entities to be dragged through the world with physics.

===============================================================================
*/

#define MAX_DRAG_TRACE_DISTANCE			2048.0f

/*
==============
idDragEntity::idDragEntity
==============
*/
idDragEntity::idDragEntity( void ) {
	cursor = NULL;
	Clear();
}

/*
==============
idDragEntity::~idDragEntity
==============
*/
idDragEntity::~idDragEntity( void ) {
	StopDrag();
	selected = NULL;
	delete cursor;
	cursor = NULL;
}


/*
==============
idDragEntity::Clear
==============
*/
void idDragEntity::Clear() {
    Sys_Printf("void idDragEntity::Clear()\r\n");
}


/*
==============
idDragEntity::StopDrag
==============
*/
void idDragEntity::StopDrag( void ) {
    Sys_Printf("void idDragEntity::StopDrag( void )\r\n");
}


/*
==============
idDragEntity::Update
==============
*/
void idDragEntity::Update( idPlayer *player ) {
    Sys_Printf("void idDragEntity::Update( idPlayer *player )\r\n");
}


/*
==============
idDragEntity::SetSelected
==============
*/
void idDragEntity::SetSelected( idEntity *ent ) {
    Sys_Printf("void idDragEntity::SetSelected( idEntity *ent )\r\n");
}


/*
==============
idDragEntity::DeleteSelected
==============
*/
void idDragEntity::DeleteSelected( void ) {
    Sys_Printf("void idDragEntity::DeleteSelected( void )\r\n");
}


/*
==============
idDragEntity::BindSelected
==============
*/
void idDragEntity::BindSelected( void ) {
    Sys_Printf("void idDragEntity::BindSelected( void )\r\n");
}


/*
==============
idDragEntity::UnbindSelected
==============
*/
void idDragEntity::UnbindSelected( void ) {
    Sys_Printf("void idDragEntity::UnbindSelected( void )\r\n");
}



/*
===============================================================================

	Handles ingame entity editing.

===============================================================================
*/

/*
==============
idEditEntities::idEditEntities
==============
*/
idEditEntities::idEditEntities( void ) {
	selectableEntityClasses.Clear();
	nextSelectTime = 0;
}

/*
=============
idEditEntities::SelectEntity
=============
*/
bool idEditEntities::SelectEntity( const idVec3 &origin, const idVec3 &dir, const idEntity *skip ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEditEntities::SelectEntity( const idVec3 &origin, const idVec3 &dir, const idEntity *skip )\r\n");
    return retVal;
}


/*
=============
idEditEntities::AddSelectedEntity
=============
*/
void idEditEntities::AddSelectedEntity(idEntity *ent) {
    Sys_Printf("void idEditEntities::AddSelectedEntity(idEntity *ent)\r\n");
}


/*
==============
idEditEntities::RemoveSelectedEntity
==============
*/
void idEditEntities::RemoveSelectedEntity( idEntity *ent ) {
    Sys_Printf("void idEditEntities::RemoveSelectedEntity( idEntity *ent )\r\n");
}


/*
=============
idEditEntities::ClearSelectedEntities
=============
*/
void idEditEntities::ClearSelectedEntities() {
    Sys_Printf("void idEditEntities::ClearSelectedEntities()\r\n");
}



/*
=============
idEditEntities::EntityIsSelectable
=============
*/
bool idEditEntities::EntityIsSelectable( idEntity *ent, idVec4 *color, idStr *text ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEditEntities::EntityIsSelectable( idEntity *ent, idVec4 *color, idStr *text )\r\n");
    return retVal;
}


/*
=============
idEditEntities::DisplayEntities
=============
*/
void idEditEntities::DisplayEntities( void ) {
    Sys_Printf("void idEditEntities::DisplayEntities( void )\r\n");
}



/*
===============================================================================

	idGameEdit

===============================================================================
*/

idGameEdit			gameEditLocal;
idGameEdit *		gameEdit = &gameEditLocal;


/*
=============
idGameEdit::GetSelectedEntities
=============
*/
int idGameEdit::GetSelectedEntities( idEntity *list[], int max ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idGameEdit::GetSelectedEntities( idEntity *list[], int max )\r\n");
    return retVal;
}


/*
=============
idGameEdit::TriggerSelected
=============
*/
void idGameEdit::TriggerSelected() {
    Sys_Printf("void idGameEdit::TriggerSelected()\r\n");
}


/*
================
idGameEdit::ClearEntitySelection
================
*/
void idGameEdit::ClearEntitySelection() {
    Sys_Printf("void idGameEdit::ClearEntitySelection()\r\n");
}


/*
================
idGameEdit::AddSelectedEntity
================
*/
void idGameEdit::AddSelectedEntity( idEntity *ent ) {
    Sys_Printf("void idGameEdit::AddSelectedEntity( idEntity *ent )\r\n");
}


/*
================
idGameEdit::FindEntityDefDict
================
*/
const idDict *idGameEdit::FindEntityDefDict( const char *name, bool makeDefault ) const {
    Sys_Printf("idDict *idGameEdit::FindEntityDefDict( const char *name, bool makeDefault )\r\n");
    return NULL;
}


/*
================
idGameEdit::SpawnEntityDef
================
*/
void idGameEdit::SpawnEntityDef( const idDict &args, idEntity **ent ) {
    Sys_Printf("void idGameEdit::SpawnEntityDef( const idDict &args, idEntity **ent )\r\n");
}


/*
================
idGameEdit::FindEntity
================
*/
idEntity *idGameEdit::FindEntity( const char *name ) const {
    Sys_Printf("idEntity *idGameEdit::FindEntity( const char *name )\r\n");
    return NULL;
}


/*
=============
idGameEdit::GetUniqueEntityName

generates a unique name for a given classname
=============
*/
const char *idGameEdit::GetUniqueEntityName( const char *classname ) const {
    Sys_Printf("char *idGameEdit::GetUniqueEntityName( const char *classname )\r\n");
    return NULL;
}


/*
================
idGameEdit::EntityGetOrigin
================
*/
void  idGameEdit::EntityGetOrigin( idEntity *ent, idVec3 &org ) const {
    Sys_Printf("void  idGameEdit::EntityGetOrigin( idEntity *ent, idVec3 &org )\r\n");
}


/*
================
idGameEdit::EntityGetAxis
================
*/
void idGameEdit::EntityGetAxis( idEntity *ent, idMat3 &axis ) const {
    Sys_Printf("void idGameEdit::EntityGetAxis( idEntity *ent, idMat3 &axis )\r\n");
}


/*
================
idGameEdit::EntitySetOrigin
================
*/
void idGameEdit::EntitySetOrigin( idEntity *ent, const idVec3 &org ) {
    Sys_Printf("void idGameEdit::EntitySetOrigin( idEntity *ent, const idVec3 &org )\r\n");
}


/*
================
idGameEdit::EntitySetAxis
================
*/
void idGameEdit::EntitySetAxis( idEntity *ent, const idMat3 &axis ) {
    Sys_Printf("void idGameEdit::EntitySetAxis( idEntity *ent, const idMat3 &axis )\r\n");
}


/*
================
idGameEdit::EntitySetColor
================
*/
void idGameEdit::EntitySetColor( idEntity *ent, const idVec3 color ) {
    Sys_Printf("void idGameEdit::EntitySetColor( idEntity *ent, const idVec3 color )\r\n");
}


/*
================
idGameEdit::EntityTranslate
================
*/
void idGameEdit::EntityTranslate( idEntity *ent, const idVec3 &org ) {
    Sys_Printf("void idGameEdit::EntityTranslate( idEntity *ent, const idVec3 &org )\r\n");
}


/*
================
idGameEdit::EntityGetSpawnArgs
================
*/
const idDict *idGameEdit::EntityGetSpawnArgs( idEntity *ent ) const {
    Sys_Printf("idDict *idGameEdit::EntityGetSpawnArgs( idEntity *ent )\r\n");
    return NULL;
}


/*
================
idGameEdit::EntityUpdateChangeableSpawnArgs
================
*/
void idGameEdit::EntityUpdateChangeableSpawnArgs( idEntity *ent, const idDict *dict ) {
    Sys_Printf("void idGameEdit::EntityUpdateChangeableSpawnArgs( idEntity *ent, const idDict *dict )\r\n");
}


/*
================
idGameEdit::EntityChangeSpawnArgs
================
*/
void idGameEdit::EntityChangeSpawnArgs( idEntity *ent, const idDict *newArgs ) {
    Sys_Printf("void idGameEdit::EntityChangeSpawnArgs( idEntity *ent, const idDict *newArgs )\r\n");
}


/*
================
idGameEdit::EntityUpdateVisuals
================
*/
void idGameEdit::EntityUpdateVisuals( idEntity *ent ) {
    Sys_Printf("void idGameEdit::EntityUpdateVisuals( idEntity *ent )\r\n");
}


/*
================
idGameEdit::EntitySetModel
================
*/
void idGameEdit::EntitySetModel( idEntity *ent, const char *val ) {
    Sys_Printf("void idGameEdit::EntitySetModel( idEntity *ent, const char *val )\r\n");
}


/*
================
idGameEdit::EntityStopSound
================
*/
void idGameEdit::EntityStopSound( idEntity *ent ) {
    Sys_Printf("void idGameEdit::EntityStopSound( idEntity *ent )\r\n");
}


/*
================
idGameEdit::EntityDelete
================
*/
void idGameEdit::EntityDelete( idEntity *ent ) {
    Sys_Printf("void idGameEdit::EntityDelete( idEntity *ent )\r\n");
}


/*
================
idGameEdit::PlayerIsValid
================
*/
bool idGameEdit::PlayerIsValid() const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameEdit::PlayerIsValid()\r\n");
    return retVal;
}


/*
================
idGameEdit::PlayerGetOrigin
================
*/
void idGameEdit::PlayerGetOrigin( idVec3 &org ) const {
    Sys_Printf("void idGameEdit::PlayerGetOrigin( idVec3 &org )\r\n");
}


/*
================
idGameEdit::PlayerGetAxis
================
*/
void idGameEdit::PlayerGetAxis( idMat3 &axis ) const {
    Sys_Printf("void idGameEdit::PlayerGetAxis( idMat3 &axis )\r\n");
}


/*
================
idGameEdit::PlayerGetViewAngles
================
*/
void idGameEdit::PlayerGetViewAngles( idAngles &angles ) const {
    Sys_Printf("void idGameEdit::PlayerGetViewAngles( idAngles &angles )\r\n");
}


/*
================
idGameEdit::PlayerGetEyePosition
================
*/
void idGameEdit::PlayerGetEyePosition( idVec3 &org ) const {
    Sys_Printf("void idGameEdit::PlayerGetEyePosition( idVec3 &org )\r\n");
}



/*
================
idGameEdit::MapGetEntityDict
================
*/
const idDict *idGameEdit::MapGetEntityDict( const char *name ) const {
    Sys_Printf("idDict *idGameEdit::MapGetEntityDict( const char *name )\r\n");
    return NULL;
}


/*
================
idGameEdit::MapSave
================
*/
void idGameEdit::MapSave( const char *path ) const {
    Sys_Printf("void idGameEdit::MapSave( const char *path )\r\n");
}


/*
================
idGameEdit::MapSetEntityKeyVal
================
*/
void idGameEdit::MapSetEntityKeyVal( const char *name, const char *key, const char *val ) const {
    Sys_Printf("void idGameEdit::MapSetEntityKeyVal( const char *name, const char *key, const char *val )\r\n");
}


/*
================
idGameEdit::MapCopyDictToEntity
================
*/
void idGameEdit::MapCopyDictToEntity( const char *name, const idDict *dict ) const {
    Sys_Printf("void idGameEdit::MapCopyDictToEntity( const char *name, const idDict *dict )\r\n");
}




/*
================
idGameEdit::MapGetUniqueMatchingKeyVals
================
*/
int idGameEdit::MapGetUniqueMatchingKeyVals( const char *key, const char *list[], int max ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idGameEdit::MapGetUniqueMatchingKeyVals( const char *key, const char *list[], int max )\r\n");
    return retVal;
}


/*
================
idGameEdit::MapAddEntity
================
*/
void idGameEdit::MapAddEntity( const idDict *dict ) const {
    Sys_Printf("void idGameEdit::MapAddEntity( const idDict *dict )\r\n");
}


/*
================
idGameEdit::MapRemoveEntity
================
*/
void idGameEdit::MapRemoveEntity( const char *name ) const {
    Sys_Printf("void idGameEdit::MapRemoveEntity( const char *name )\r\n");
}



/*
================
idGameEdit::MapGetEntitiesMatchignClassWithString
================
*/
int idGameEdit::MapGetEntitiesMatchingClassWithString( const char *classname, const char *match, const char *list[], const int max ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idGameEdit::MapGetEntitiesMatchingClassWithString( const char *classname, const char *match, const char *list[], const int max )\r\n");
    return retVal;
}



/*
================
idGameEdit::MapEntityTranslate
================
*/
void idGameEdit::MapEntityTranslate( const char *name, const idVec3 &v ) const {
    Sys_Printf("void idGameEdit::MapEntityTranslate( const char *name, const idVec3 &v )\r\n");
}

