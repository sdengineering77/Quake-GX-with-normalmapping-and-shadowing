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

#include "tr_local.h"
#include "Model_local.h"
#include "Model_ase.h"
#include "Model_lwo.h"
#include "Model_ma.h"

idCVar idRenderModelStatic::r_mergeModelSurfaces( "r_mergeModelSurfaces", "1", CVAR_BOOL|CVAR_RENDERER, "combine model surfaces with the same material" );
idCVar idRenderModelStatic::r_slopVertex( "r_slopVertex", "0.01", CVAR_RENDERER, "merge xyz coordinates this far apart" );
idCVar idRenderModelStatic::r_slopTexCoord( "r_slopTexCoord", "0.001", CVAR_RENDERER, "merge texture coordinates this far apart" );
idCVar idRenderModelStatic::r_slopNormal( "r_slopNormal", "0.02", CVAR_RENDERER, "merge normals that dot less than this" );

/*
================
idRenderModelStatic::idRenderModelStatic
================
*/
idRenderModelStatic::idRenderModelStatic() {
	name = "<undefined>";
	bounds.Clear();
	lastModifiedFrame = 0;
	lastArchivedFrame = 0;
	overlaysAdded = 0;
	shadowHull = NULL;
	isStaticWorldModel = false;
	defaulted = false;
	purged = false;
	fastLoad = false;
	reloadable = true;
	levelLoadReferenced = false;
	timeStamp = 0;
}

/*
================
idRenderModelStatic::~idRenderModelStatic
================
*/
idRenderModelStatic::~idRenderModelStatic() {
	PurgeModel();
}

/*
==============
idRenderModelStatic::Print
==============
*/
void idRenderModelStatic::Print() const {
    Sys_Printf("void idRenderModelStatic::Print()\r\n");
}


/*
==============
idRenderModelStatic::Memory
==============
*/
int idRenderModelStatic::Memory() const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idRenderModelStatic::Memory()\r\n");
    return retVal;
}


/*
==============
idRenderModelStatic::List
==============
*/
void idRenderModelStatic::List() const {
    Sys_Printf("void idRenderModelStatic::List()\r\n");
}


/*
================
idRenderModelStatic::IsDefaultModel
================
*/
bool idRenderModelStatic::IsDefaultModel() const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idRenderModelStatic::IsDefaultModel()\r\n");
    return retVal;
}


/*
================
AddCubeFace
================
*/
static void AddCubeFace( srfTriangles_t *tri, idVec3 v1, idVec3 v2, idVec3 v3, idVec3 v4 ) {
    Sys_Printf("void AddCubeFace( srfTriangles_t *tri, idVec3 v1, idVec3 v2, idVec3 v3, idVec3 v4 )\r\n");
}


/*
================
idRenderModelStatic::MakeDefaultModel
================
*/
void idRenderModelStatic::MakeDefaultModel() {
    Sys_Printf("void idRenderModelStatic::MakeDefaultModel()\r\n");
}


/*
================
idRenderModelStatic::PartialInitFromFile
================
*/
void idRenderModelStatic::PartialInitFromFile( const char *fileName ) {
    Sys_Printf("void idRenderModelStatic::PartialInitFromFile( const char *fileName )\r\n");
}


/*
================
idRenderModelStatic::InitFromFile
================
*/
void idRenderModelStatic::InitFromFile( const char *fileName ) {
    Sys_Printf("void idRenderModelStatic::InitFromFile( const char *fileName )\r\n");
}


/*
================
idRenderModelStatic::LoadModel
================
*/
void idRenderModelStatic::LoadModel() {
    Sys_Printf("void idRenderModelStatic::LoadModel()\r\n");
}


/*
================
idRenderModelStatic::InitEmpty
================
*/
void idRenderModelStatic::InitEmpty( const char *fileName ) {
    Sys_Printf("void idRenderModelStatic::InitEmpty( const char *fileName )\r\n");
}


/*
================
idRenderModelStatic::AddSurface
================
*/
void idRenderModelStatic::AddSurface( modelSurface_t surface ) {
    Sys_Printf("void idRenderModelStatic::AddSurface( modelSurface_t surface )\r\n");
}


/*
================
idRenderModelStatic::Name
================
*/
const char *idRenderModelStatic::Name() const {
    Sys_Printf("char *idRenderModelStatic::Name()\r\n");
    return NULL;
}


/*
================
idRenderModelStatic::Timestamp
================
*/
ID_TIME_T idRenderModelStatic::Timestamp() const {
    ID_TIME_T retVal;
    memset(&retVal, 0, sizeof(ID_TIME_T));
    Sys_Printf("ID_TIME_T idRenderModelStatic::Timestamp()\r\n");
    return retVal;
}


/*
================
idRenderModelStatic::NumSurfaces
================
*/
int idRenderModelStatic::NumSurfaces() const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idRenderModelStatic::NumSurfaces()\r\n");
    return retVal;
}


/*
================
idRenderModelStatic::NumBaseSurfaces
================
*/
int idRenderModelStatic::NumBaseSurfaces() const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idRenderModelStatic::NumBaseSurfaces()\r\n");
    return retVal;
}


/*
================
idRenderModelStatic::Surface
================
*/
const modelSurface_t *idRenderModelStatic::Surface( int surfaceNum ) const {
    Sys_Printf("modelSurface_t *idRenderModelStatic::Surface( int surfaceNum )\r\n");
    return NULL;
}


/*
================
idRenderModelStatic::AllocSurfaceTriangles
================
*/
srfTriangles_t *idRenderModelStatic::AllocSurfaceTriangles( int numVerts, int numIndexes ) const {
    Sys_Printf("srfTriangles_t *idRenderModelStatic::AllocSurfaceTriangles( int numVerts, int numIndexes )\r\n");
    return NULL;
}


/*
================
idRenderModelStatic::FreeSurfaceTriangles
================
*/
void idRenderModelStatic::FreeSurfaceTriangles( srfTriangles_t *tris ) const {
    Sys_Printf("void idRenderModelStatic::FreeSurfaceTriangles( srfTriangles_t *tris )\r\n");
}


/*
================
idRenderModelStatic::ShadowHull
================
*/
srfTriangles_t *idRenderModelStatic::ShadowHull() const {
    Sys_Printf("srfTriangles_t *idRenderModelStatic::ShadowHull()\r\n");
    return NULL;
}


/*
================
idRenderModelStatic::IsStaticWorldModel
================
*/
bool idRenderModelStatic::IsStaticWorldModel() const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idRenderModelStatic::IsStaticWorldModel()\r\n");
    return retVal;
}


/*
================
idRenderModelStatic::IsDynamicModel
================
*/
dynamicModel_t idRenderModelStatic::IsDynamicModel() const {
    dynamicModel_t retVal;
    memset(&retVal, 0, sizeof(dynamicModel_t));
    Sys_Printf("dynamicModel_t idRenderModelStatic::IsDynamicModel()\r\n");
    return retVal;
}


/*
================
idRenderModelStatic::IsReloadable
================
*/
bool idRenderModelStatic::IsReloadable() const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idRenderModelStatic::IsReloadable()\r\n");
    return retVal;
}


/*
================
idRenderModelStatic::Bounds
================
*/
idBounds idRenderModelStatic::Bounds( const struct renderEntity_s *mdef ) const {
    idBounds retVal;
    memset(&retVal, 0, sizeof(idBounds));
    Sys_Printf("idBounds idRenderModelStatic::Bounds( const struct renderEntity_s *mdef )\r\n");
    return retVal;
}


/*
================
idRenderModelStatic::DepthHack
================
*/
float idRenderModelStatic::DepthHack() const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idRenderModelStatic::DepthHack()\r\n");
    return retVal;
}


/*
================
idRenderModelStatic::InstantiateDynamicModel
================
*/
idRenderModel *idRenderModelStatic::InstantiateDynamicModel( const struct renderEntity_s *ent, const struct viewDef_s *view, idRenderModel *cachedModel ) {
    Sys_Printf("idRenderModel *idRenderModelStatic::InstantiateDynamicModel( const struct renderEntity_s *ent, const struct viewDef_s *view, idRenderModel *cachedModel )\r\n");
    return NULL;
}


/*
================
idRenderModelStatic::NumJoints
================
*/
int idRenderModelStatic::NumJoints( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idRenderModelStatic::NumJoints( void )\r\n");
    return retVal;
}


/*
================
idRenderModelStatic::GetJoints
================
*/
const idMD5Joint *idRenderModelStatic::GetJoints( void ) const {
    Sys_Printf("idMD5Joint *idRenderModelStatic::GetJoints( void )\r\n");
    return NULL;
}


/*
================
idRenderModelStatic::GetJointHandle
================
*/
jointHandle_t idRenderModelStatic::GetJointHandle( const char *name ) const {
    jointHandle_t retVal;
    memset(&retVal, 0, sizeof(jointHandle_t));
    Sys_Printf("jointHandle_t idRenderModelStatic::GetJointHandle( const char *name )\r\n");
    return retVal;
}


/*
================
idRenderModelStatic::GetJointName
================
*/
const char * idRenderModelStatic::GetJointName( jointHandle_t handle ) const {
    Sys_Printf("char * idRenderModelStatic::GetJointName( jointHandle_t handle )\r\n");
    return NULL;
}


/*
================
idRenderModelStatic::GetDefaultPose
================
*/
const idJointQuat *idRenderModelStatic::GetDefaultPose( void ) const {
    Sys_Printf("idJointQuat *idRenderModelStatic::GetDefaultPose( void )\r\n");
    return NULL;
}


/*
================
idRenderModelStatic::NearestJoint
================
*/
int idRenderModelStatic::NearestJoint( int surfaceNum, int a, int b, int c ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idRenderModelStatic::NearestJoint( int surfaceNum, int a, int b, int c )\r\n");
    return retVal;
}



//=====================================================================


/*
================
idRenderModelStatic::FinishSurfaces

The mergeShadows option allows surfaces with different textures to share
silhouette edges for shadow calculation, instead of leaving shared edges
hanging.

If any of the original shaders have the noSelfShadow flag set, the surfaces
can't be merged, because they will need to be drawn in different order.

If there is only one surface, a separate merged surface won't be generated.

A model with multiple surfaces can't later have a skinned shader change the
state of the noSelfShadow flag.

-----------------

Creates mirrored copies of two sided surfaces with normal maps, which would
otherwise light funny.

Extends the bounds of deformed surfaces so they don't cull incorrectly at screen edges.

================
*/
void idRenderModelStatic::FinishSurfaces() {
    Sys_Printf("void idRenderModelStatic::FinishSurfaces()\r\n");
}


/*
=================
idRenderModelStatic::ConvertASEToModelSurfaces
=================
*/
typedef struct matchVert_s {
	struct matchVert_s	*next;
	int		v, tv;
	byte	color[4];
	idVec3	normal;
} matchVert_t;

bool idRenderModelStatic::ConvertASEToModelSurfaces( const struct aseModel_s *ase ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idRenderModelStatic::ConvertASEToModelSurfaces( const struct aseModel_s *ase )\r\n");
    return retVal;
}


/*
=================
idRenderModelStatic::ConvertLWOToModelSurfaces
=================
*/
bool idRenderModelStatic::ConvertLWOToModelSurfaces( const struct st_lwObject *lwo ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idRenderModelStatic::ConvertLWOToModelSurfaces( const struct st_lwObject *lwo )\r\n");
    return retVal;
}


/*
=================
idRenderModelStatic::ConvertLWOToASE
=================
*/
struct aseModel_s *idRenderModelStatic::ConvertLWOToASE( const struct st_lwObject *obj, const char *fileName ) {
    Sys_Printf("aseModel_s *idRenderModelStatic::ConvertLWOToASE( const struct st_lwObject *obj, const char *fileName )\r\n");
    return NULL;
}


/*
=================
idRenderModelStatic::ConvertMAToModelSurfaces
=================
*/
bool idRenderModelStatic::ConvertMAToModelSurfaces (const struct maModel_s *ma ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idRenderModelStatic::ConvertMAToModelSurfaces (const struct maModel_s *ma )\r\n");
    return retVal;
}


/*
=================
idRenderModelStatic::LoadASE
=================
*/
bool idRenderModelStatic::LoadASE( const char *fileName ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idRenderModelStatic::LoadASE( const char *fileName )\r\n");
    return retVal;
}


/*
=================
idRenderModelStatic::LoadLWO
=================
*/
bool idRenderModelStatic::LoadLWO( const char *fileName ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idRenderModelStatic::LoadLWO( const char *fileName )\r\n");
    return retVal;
}


/*
=================
idRenderModelStatic::LoadMA
=================
*/
bool idRenderModelStatic::LoadMA( const char *fileName ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idRenderModelStatic::LoadMA( const char *fileName )\r\n");
    return retVal;
}


/*
=================
idRenderModelStatic::LoadFLT

USGS height map data for megaTexture experiments
=================
*/
bool idRenderModelStatic::LoadFLT( const char *fileName ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idRenderModelStatic::LoadFLT( const char *fileName )\r\n");
    return retVal;
}



//=============================================================================

/*
================
idRenderModelStatic::PurgeModel
================
*/
void idRenderModelStatic::PurgeModel() {
    Sys_Printf("void idRenderModelStatic::PurgeModel()\r\n");
}


/*
==============
idRenderModelStatic::FreeVertexCache

We are about to restart the vertex cache, so dump everything
==============
*/
void idRenderModelStatic::FreeVertexCache( void ) {
    Sys_Printf("void idRenderModelStatic::FreeVertexCache( void )\r\n");
}


/*
================
idRenderModelStatic::ReadFromDemoFile
================
*/
void idRenderModelStatic::ReadFromDemoFile( class idDemoFile *f ) {
    Sys_Printf("void idRenderModelStatic::ReadFromDemoFile( class idDemoFile *f )\r\n");
}


/*
================
idRenderModelStatic::WriteToDemoFile
================
*/
void idRenderModelStatic::WriteToDemoFile( class idDemoFile *f ) {
    Sys_Printf("void idRenderModelStatic::WriteToDemoFile( class idDemoFile *f )\r\n");
}


/*
================
idRenderModelStatic::IsLoaded
================
*/
bool idRenderModelStatic::IsLoaded( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idRenderModelStatic::IsLoaded( void )\r\n");
    return retVal;
}


/*
================
idRenderModelStatic::SetLevelLoadReferenced
================
*/
void idRenderModelStatic::SetLevelLoadReferenced( bool referenced ) {
    Sys_Printf("void idRenderModelStatic::SetLevelLoadReferenced( bool referenced )\r\n");
}


/*
================
idRenderModelStatic::IsLevelLoadReferenced
================
*/
bool idRenderModelStatic::IsLevelLoadReferenced( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idRenderModelStatic::IsLevelLoadReferenced( void )\r\n");
    return retVal;
}


/*
=================
idRenderModelStatic::TouchData
=================
*/
void idRenderModelStatic::TouchData( void ) {
    Sys_Printf("void idRenderModelStatic::TouchData( void )\r\n");
}


/*
=================
idRenderModelStatic::DeleteSurfaceWithId
=================
*/
bool idRenderModelStatic::DeleteSurfaceWithId( int id ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idRenderModelStatic::DeleteSurfaceWithId( int id )\r\n");
    return retVal;
}


/*
=================
idRenderModelStatic::DeleteSurfacesWithNegativeId
=================
*/
void idRenderModelStatic::DeleteSurfacesWithNegativeId( void ) {
    Sys_Printf("void idRenderModelStatic::DeleteSurfacesWithNegativeId( void )\r\n");
}


/*
=================
idRenderModelStatic::FindSurfaceWithId
=================
*/
bool idRenderModelStatic::FindSurfaceWithId( int id, int &surfaceNum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idRenderModelStatic::FindSurfaceWithId( int id, int &surfaceNum )\r\n");
    return retVal;
}

