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

#include "../Game_local.h"

#define	MAX_SECTOR_DEPTH				12
#define MAX_SECTORS						((1<<(MAX_SECTOR_DEPTH+1))-1)

typedef struct clipSector_s {
	int						axis;		// -1 = leaf node
	float					dist;
	struct clipSector_s *	children[2];
	struct clipLink_s *		clipLinks;
} clipSector_t;

typedef struct clipLink_s {
	idClipModel *			clipModel;
	struct clipSector_s *	sector;
	struct clipLink_s *		prevInSector;
	struct clipLink_s *		nextInSector;
	struct clipLink_s *		nextLink;
} clipLink_t;

typedef struct trmCache_s {
	idTraceModel			trm;
	int						refCount;
	float					volume;
	idVec3					centerOfMass;
	idMat3					inertiaTensor;
} trmCache_t;

idVec3 vec3_boxEpsilon( CM_BOX_EPSILON, CM_BOX_EPSILON, CM_BOX_EPSILON );

idBlockAlloc<clipLink_t, 1024>	clipLinkAllocator;


/*
===============================================================

	idClipModel trace model cache

===============================================================
*/

static idList<trmCache_s*>		traceModelCache;
static idHashIndex				traceModelHash;
	
/*
===============
idClipModel::ClearTraceModelCache
===============
*/
void idClipModel::ClearTraceModelCache( void ) {
    Sys_Printf("void idClipModel::ClearTraceModelCache( void )\r\n");
}


/*
===============
idClipModel::TraceModelCacheSize
===============
*/
int idClipModel::TraceModelCacheSize( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idClipModel::TraceModelCacheSize( void )\r\n");
    return retVal;
}


/*
===============
idClipModel::AllocTraceModel
===============
*/
int idClipModel::AllocTraceModel( const idTraceModel &trm ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idClipModel::AllocTraceModel( const idTraceModel &trm )\r\n");
    return retVal;
}


/*
===============
idClipModel::FreeTraceModel
===============
*/
void idClipModel::FreeTraceModel( int traceModelIndex ) {
    Sys_Printf("void idClipModel::FreeTraceModel( int traceModelIndex )\r\n");
}


/*
===============
idClipModel::GetCachedTraceModel
===============
*/
idTraceModel *idClipModel::GetCachedTraceModel( int traceModelIndex ) {
    Sys_Printf("idTraceModel *idClipModel::GetCachedTraceModel( int traceModelIndex )\r\n");
    return NULL;
}


/*
===============
idClipModel::GetTraceModelHashKey
===============
*/
int idClipModel::GetTraceModelHashKey( const idTraceModel &trm ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idClipModel::GetTraceModelHashKey( const idTraceModel &trm )\r\n");
    return retVal;
}


/*
===============
idClipModel::SaveTraceModels
===============
*/
void idClipModel::SaveTraceModels( idSaveGame *savefile ) {
    Sys_Printf("void idClipModel::SaveTraceModels( idSaveGame *savefile )\r\n");
}


/*
===============
idClipModel::RestoreTraceModels
===============
*/
void idClipModel::RestoreTraceModels( idRestoreGame *savefile ) {
    Sys_Printf("void idClipModel::RestoreTraceModels( idRestoreGame *savefile )\r\n");
}



/*
===============================================================

	idClipModel

===============================================================
*/

/*
================
idClipModel::LoadModel
================
*/
bool idClipModel::LoadModel( const char *name ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClipModel::LoadModel( const char *name )\r\n");
    return retVal;
}


/*
================
idClipModel::LoadModel
================
*/
void idClipModel::LoadModel( const idTraceModel &trm ) {
    Sys_Printf("void idClipModel::LoadModel( const idTraceModel &trm )\r\n");
}


/*
================
idClipModel::LoadModel
================
*/
void idClipModel::LoadModel( const int renderModelHandle ) {
    Sys_Printf("void idClipModel::LoadModel( const int renderModelHandle )\r\n");
}


/*
================
idClipModel::Init
================
*/
void idClipModel::Init( void ) {
    Sys_Printf("void idClipModel::Init( void )\r\n");
}


/*
================
idClipModel::idClipModel
================
*/
idClipModel::idClipModel( void ) {
	Init();
}

/*
================
idClipModel::idClipModel
================
*/
idClipModel::idClipModel( const char *name ) {
	Init();
	LoadModel( name );
}

/*
================
idClipModel::idClipModel
================
*/
idClipModel::idClipModel( const idTraceModel &trm ) {
	Init();
	LoadModel( trm );
}

/*
================
idClipModel::idClipModel
================
*/
idClipModel::idClipModel( const int renderModelHandle ) {
	Init();
	contents = CONTENTS_RENDERMODEL;
	LoadModel( renderModelHandle );
}

/*
================
idClipModel::idClipModel
================
*/
idClipModel::idClipModel( const idClipModel *model ) {
	enabled = model->enabled;
	entity = model->entity;
	id = model->id;
	owner = model->owner;
	origin = model->origin;
	axis = model->axis;
	bounds = model->bounds;
	absBounds = model->absBounds;
	material = model->material;
	contents = model->contents;
	collisionModelHandle = model->collisionModelHandle;
	traceModelIndex = -1;
	if ( model->traceModelIndex != -1 ) {
		LoadModel( *GetCachedTraceModel( model->traceModelIndex ) );
	}
	renderModelHandle = model->renderModelHandle;
	clipLinks = NULL;
	touchCount = -1;
}

/*
================
idClipModel::~idClipModel
================
*/
idClipModel::~idClipModel( void ) {
	// make sure the clip model is no longer linked
	Unlink();
	if ( traceModelIndex != -1 ) {
		FreeTraceModel( traceModelIndex );
	}
}

/*
================
idClipModel::Save
================
*/
void idClipModel::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idClipModel::Save( idSaveGame *savefile )\r\n");
}


/*
================
idClipModel::Restore
================
*/
void idClipModel::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idClipModel::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idClipModel::SetPosition
================
*/
void idClipModel::SetPosition( const idVec3 &newOrigin, const idMat3 &newAxis ) {
    Sys_Printf("void idClipModel::SetPosition( const idVec3 &newOrigin, const idMat3 &newAxis )\r\n");
}


/*
================
idClipModel::Handle
================
*/
cmHandle_t idClipModel::Handle( void ) const {
    cmHandle_t retVal;
    memset(&retVal, 0, sizeof(cmHandle_t));
    Sys_Printf("cmHandle_t idClipModel::Handle( void )\r\n");
    return retVal;
}


/*
================
idClipModel::GetMassProperties
================
*/
void idClipModel::GetMassProperties( const float density, float &mass, idVec3 &centerOfMass, idMat3 &inertiaTensor ) const {
    Sys_Printf("void idClipModel::GetMassProperties( const float density, float &mass, idVec3 &centerOfMass, idMat3 &inertiaTensor )\r\n");
}


/*
===============
idClipModel::Unlink
===============
*/
void idClipModel::Unlink( void ) {
    Sys_Printf("void idClipModel::Unlink( void )\r\n");
}


/*
===============
idClipModel::Link_r
===============
*/
void idClipModel::Link_r( struct clipSector_s *node ) {
    Sys_Printf("void idClipModel::Link_r( struct clipSector_s *node )\r\n");
}


/*
===============
idClipModel::Link
===============
*/
void idClipModel::Link( idClip &clp ) {
    Sys_Printf("void idClipModel::Link( idClip &clp )\r\n");
}


/*
===============
idClipModel::Link
===============
*/
void idClipModel::Link( idClip &clp, idEntity *ent, int newId, const idVec3 &newOrigin, const idMat3 &newAxis, int renderModelHandle ) {
    Sys_Printf("void idClipModel::Link( idClip &clp, idEntity *ent, int newId, const idVec3 &newOrigin, const idMat3 &newAxis, int renderModelHandle )\r\n");
}


/*
============
idClipModel::CheckModel
============
*/
cmHandle_t idClipModel::CheckModel( const char *name ) {
    cmHandle_t retVal;
    memset(&retVal, 0, sizeof(cmHandle_t));
    Sys_Printf("cmHandle_t idClipModel::CheckModel( const char *name )\r\n");
    return retVal;
}



/*
===============================================================

	idClip

===============================================================
*/

/*
===============
idClip::idClip
===============
*/
idClip::idClip( void ) {
	numClipSectors = 0;
	clipSectors = NULL;
	worldBounds.Zero();
	numRotations = numTranslations = numMotions = numRenderModelTraces = numContents = numContacts = 0;
}

/*
===============
idClip::CreateClipSectors_r

Builds a uniformly subdivided tree for the given world size
===============
*/
clipSector_t *idClip::CreateClipSectors_r( const int depth, const idBounds &bounds, idVec3 &maxSector ) {
    Sys_Printf("clipSector_t *idClip::CreateClipSectors_r( const int depth, const idBounds &bounds, idVec3 &maxSector )\r\n");
    return NULL;
}


/*
===============
idClip::Init
===============
*/
void idClip::Init( void ) {
    Sys_Printf("void idClip::Init( void )\r\n");
}


/*
===============
idClip::Shutdown
===============
*/
void idClip::Shutdown( void ) {
    Sys_Printf("void idClip::Shutdown( void )\r\n");
}


/*
====================
idClip::ClipModelsTouchingBounds_r
====================
*/
typedef struct listParms_s {
	idBounds		bounds;
	int				contentMask;
	idClipModel	**	list;
	int				count;
	int				maxCount;
} listParms_t;

void idClip::ClipModelsTouchingBounds_r( const struct clipSector_s *node, listParms_t &parms ) const {
    Sys_Printf("void idClip::ClipModelsTouchingBounds_r( const struct clipSector_s *node, listParms_t &parms )\r\n");
}


/*
================
idClip::ClipModelsTouchingBounds
================
*/
int idClip::ClipModelsTouchingBounds( const idBounds &bounds, int contentMask, idClipModel **clipModelList, int maxCount ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idClip::ClipModelsTouchingBounds( const idBounds &bounds, int contentMask, idClipModel **clipModelList, int maxCount )\r\n");
    return retVal;
}


/*
================
idClip::EntitiesTouchingBounds
================
*/
int idClip::EntitiesTouchingBounds( const idBounds &bounds, int contentMask, idEntity **entityList, int maxCount ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idClip::EntitiesTouchingBounds( const idBounds &bounds, int contentMask, idEntity **entityList, int maxCount )\r\n");
    return retVal;
}


/*
====================
idClip::GetTraceClipModels

  an ent will be excluded from testing if:
  cm->entity == passEntity ( don't clip against the pass entity )
  cm->entity == passOwner ( missiles don't clip with owner )
  cm->owner == passEntity ( don't interact with your own missiles )
  cm->owner == passOwner ( don't interact with other missiles from same owner )
====================
*/
int idClip::GetTraceClipModels( const idBounds &bounds, int contentMask, const idEntity *passEntity, idClipModel **clipModelList ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idClip::GetTraceClipModels( const idBounds &bounds, int contentMask, const idEntity *passEntity, idClipModel **clipModelList )\r\n");
    return retVal;
}


/*
============
idClip::TraceRenderModel
============
*/
void idClip::TraceRenderModel( trace_t &trace, const idVec3 &start, const idVec3 &end, const float radius, const idMat3 &axis, idClipModel *touch ) const {
    Sys_Printf("void idClip::TraceRenderModel( trace_t &trace, const idVec3 &start, const idVec3 &end, const float radius, const idMat3 &axis, idClipModel *touch )\r\n");
}


/*
============
idClip::TraceModelForClipModel
============
*/
const idTraceModel *idClip::TraceModelForClipModel( const idClipModel *mdl ) const {
    Sys_Printf("idTraceModel *idClip::TraceModelForClipModel( const idClipModel *mdl )\r\n");
    return NULL;
}


/*
============
idClip::TestHugeTranslation
============
*/
ID_INLINE bool TestHugeTranslation( trace_t &results, const idClipModel *mdl, const idVec3 &start, const idVec3 &end, const idMat3 &trmAxis ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool TestHugeTranslation( trace_t &results, const idClipModel *mdl, const idVec3 &start, const idVec3 &end, const idMat3 &trmAxis )\r\n");
    return retVal;
}


/*
============
idClip::TranslationEntities
============
*/
void idClip::TranslationEntities( trace_t &results, const idVec3 &start, const idVec3 &end,
						const idClipModel *mdl, const idMat3 &trmAxis, int contentMask, const idEntity *passEntity ) {
    Sys_Printf("void idClip::TranslationEntities( trace_t &results, const idVec3 &start, const idVec3 &end,const idClipModel *mdl, const idMat3 &trmAxis, int contentMask, const idEntity *passEntity )\r\n");
}


/*
============
idClip::Translation
============
*/
bool idClip::Translation( trace_t &results, const idVec3 &start, const idVec3 &end,
						const idClipModel *mdl, const idMat3 &trmAxis, int contentMask, const idEntity *passEntity ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClip::Translation( trace_t &results, const idVec3 &start, const idVec3 &end,const idClipModel *mdl, const idMat3 &trmAxis, int contentMask, const idEntity *passEntity )\r\n");
    return retVal;
}


/*
============
idClip::Rotation
============
*/
bool idClip::Rotation( trace_t &results, const idVec3 &start, const idRotation &rotation,
					const idClipModel *mdl, const idMat3 &trmAxis, int contentMask, const idEntity *passEntity ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClip::Rotation( trace_t &results, const idVec3 &start, const idRotation &rotation,const idClipModel *mdl, const idMat3 &trmAxis, int contentMask, const idEntity *passEntity )\r\n");
    return retVal;
}


/*
============
idClip::Motion
============
*/
bool idClip::Motion( trace_t &results, const idVec3 &start, const idVec3 &end, const idRotation &rotation,
					const idClipModel *mdl, const idMat3 &trmAxis, int contentMask, const idEntity *passEntity ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClip::Motion( trace_t &results, const idVec3 &start, const idVec3 &end, const idRotation &rotation,const idClipModel *mdl, const idMat3 &trmAxis, int contentMask, const idEntity *passEntity )\r\n");
    return retVal;
}


/*
============
idClip::Contacts
============
*/
int idClip::Contacts( contactInfo_t *contacts, const int maxContacts, const idVec3 &start, const idVec6 &dir, const float depth,
					 const idClipModel *mdl, const idMat3 &trmAxis, int contentMask, const idEntity *passEntity ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idClip::Contacts( contactInfo_t *contacts, const int maxContacts, const idVec3 &start, const idVec6 &dir, const float depth, const idClipModel *mdl, const idMat3 &trmAxis, int contentMask, const idEntity *passEntity )\r\n");
    return retVal;
}


/*
============
idClip::Contents
============
*/
int idClip::Contents( const idVec3 &start, const idClipModel *mdl, const idMat3 &trmAxis, int contentMask, const idEntity *passEntity ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idClip::Contents( const idVec3 &start, const idClipModel *mdl, const idMat3 &trmAxis, int contentMask, const idEntity *passEntity )\r\n");
    return retVal;
}


/*
============
idClip::TranslationModel
============
*/
void idClip::TranslationModel( trace_t &results, const idVec3 &start, const idVec3 &end,
					const idClipModel *mdl, const idMat3 &trmAxis, int contentMask,
					cmHandle_t model, const idVec3 &modelOrigin, const idMat3 &modelAxis ) {
    Sys_Printf("void idClip::TranslationModel( trace_t &results, const idVec3 &start, const idVec3 &end,const idClipModel *mdl, const idMat3 &trmAxis, int contentMask,cmHandle_t model, const idVec3 &modelOrigin, const idMat3 &modelAxis )\r\n");
}


/*
============
idClip::RotationModel
============
*/
void idClip::RotationModel( trace_t &results, const idVec3 &start, const idRotation &rotation,
					const idClipModel *mdl, const idMat3 &trmAxis, int contentMask,
					cmHandle_t model, const idVec3 &modelOrigin, const idMat3 &modelAxis ) {
    Sys_Printf("void idClip::RotationModel( trace_t &results, const idVec3 &start, const idRotation &rotation,const idClipModel *mdl, const idMat3 &trmAxis, int contentMask,cmHandle_t model, const idVec3 &modelOrigin, const idMat3 &modelAxis )\r\n");
}


/*
============
idClip::ContactsModel
============
*/
int idClip::ContactsModel( contactInfo_t *contacts, const int maxContacts, const idVec3 &start, const idVec6 &dir, const float depth,
					const idClipModel *mdl, const idMat3 &trmAxis, int contentMask,
					cmHandle_t model, const idVec3 &modelOrigin, const idMat3 &modelAxis ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idClip::ContactsModel( contactInfo_t *contacts, const int maxContacts, const idVec3 &start, const idVec6 &dir, const float depth,const idClipModel *mdl, const idMat3 &trmAxis, int contentMask,cmHandle_t model, const idVec3 &modelOrigin, const idMat3 &modelAxis )\r\n");
    return retVal;
}


/*
============
idClip::ContentsModel
============
*/
int idClip::ContentsModel( const idVec3 &start,
					const idClipModel *mdl, const idMat3 &trmAxis, int contentMask,
					cmHandle_t model, const idVec3 &modelOrigin, const idMat3 &modelAxis ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idClip::ContentsModel( const idVec3 &start,const idClipModel *mdl, const idMat3 &trmAxis, int contentMask,cmHandle_t model, const idVec3 &modelOrigin, const idMat3 &modelAxis )\r\n");
    return retVal;
}


/*
============
idClip::GetModelContactFeature
============
*/
bool idClip::GetModelContactFeature( const contactInfo_t &contact, const idClipModel *clipModel, idFixedWinding &winding ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClip::GetModelContactFeature( const contactInfo_t &contact, const idClipModel *clipModel, idFixedWinding &winding )\r\n");
    return retVal;
}


/*
============
idClip::PrintStatistics
============
*/
void idClip::PrintStatistics( void ) {
    Sys_Printf("void idClip::PrintStatistics( void )\r\n");
}


/*
============
idClip::DrawClipModels
============
*/
void idClip::DrawClipModels( const idVec3 &eye, const float radius, const idEntity *passEntity ) {
    Sys_Printf("void idClip::DrawClipModels( const idVec3 &eye, const float radius, const idEntity *passEntity )\r\n");
}


/*
============
idClip::DrawModelContactFeature
============
*/
bool idClip::DrawModelContactFeature( const contactInfo_t &contact, const idClipModel *clipModel, int lifetime ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClip::DrawModelContactFeature( const contactInfo_t &contact, const idClipModel *clipModel, int lifetime )\r\n");
    return retVal;
}

