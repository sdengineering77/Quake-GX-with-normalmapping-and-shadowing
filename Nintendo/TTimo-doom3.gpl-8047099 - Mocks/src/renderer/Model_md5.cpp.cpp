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

static const char *MD5_SnapshotName = "_MD5_Snapshot_";


/***********************************************************************

	idMD5Mesh

***********************************************************************/

static int c_numVerts = 0;
static int c_numWeights = 0;
static int c_numWeightJoints = 0;

typedef struct vertexWeight_s {
	int							vert;
	int							joint;
	idVec3						offset;
	float						jointWeight;
} vertexWeight_t;

/*
====================
idMD5Mesh::idMD5Mesh
====================
*/
idMD5Mesh::idMD5Mesh() {
	scaledWeights	= NULL;
	weightIndex		= NULL;
	shader			= NULL;
	numTris			= 0;
	deformInfo		= NULL;
	surfaceNum		= 0;
}

/*
====================
idMD5Mesh::~idMD5Mesh
====================
*/
idMD5Mesh::~idMD5Mesh() {
	Mem_Free16( scaledWeights );
	Mem_Free16( weightIndex );
	if ( deformInfo ) {
		R_FreeDeformInfo( deformInfo );
		deformInfo = NULL;
	}
}

/*
====================
idMD5Mesh::ParseMesh
====================
*/
void idMD5Mesh::ParseMesh( idLexer &parser, int numJoints, const idJointMat *joints ) {
    Sys_Printf("void idMD5Mesh::ParseMesh( idLexer &parser, int numJoints, const idJointMat *joints )\r\n");
}


/*
====================
idMD5Mesh::TransformVerts
====================
*/
void idMD5Mesh::TransformVerts( idDrawVert *verts, const idJointMat *entJoints ) {
    Sys_Printf("void idMD5Mesh::TransformVerts( idDrawVert *verts, const idJointMat *entJoints )\r\n");
}


/*
====================
idMD5Mesh::TransformScaledVerts

Special transform to make the mesh seem fat or skinny.  May be used for zombie deaths
====================
*/
void idMD5Mesh::TransformScaledVerts( idDrawVert *verts, const idJointMat *entJoints, float scale ) {
    Sys_Printf("void idMD5Mesh::TransformScaledVerts( idDrawVert *verts, const idJointMat *entJoints, float scale )\r\n");
}


/*
====================
idMD5Mesh::UpdateSurface
====================
*/
void idMD5Mesh::UpdateSurface( const struct renderEntity_s *ent, const idJointMat *entJoints, modelSurface_t *surf ) {
    Sys_Printf("void idMD5Mesh::UpdateSurface( const struct renderEntity_s *ent, const idJointMat *entJoints, modelSurface_t *surf )\r\n");
}


/*
====================
idMD5Mesh::CalcBounds
====================
*/
idBounds idMD5Mesh::CalcBounds( const idJointMat *entJoints ) {
    idBounds retVal;
    memset(&retVal, 0, sizeof(idBounds));
    Sys_Printf("idBounds idMD5Mesh::CalcBounds( const idJointMat *entJoints )\r\n");
    return retVal;
}


/*
====================
idMD5Mesh::NearestJoint
====================
*/
int idMD5Mesh::NearestJoint( int a, int b, int c ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMD5Mesh::NearestJoint( int a, int b, int c )\r\n");
    return retVal;
}


/*
====================
idMD5Mesh::NumVerts
====================
*/
int idMD5Mesh::NumVerts( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMD5Mesh::NumVerts( void )\r\n");
    return retVal;
}


/*
====================
idMD5Mesh::NumTris
====================
*/
int	idMD5Mesh::NumTris( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidMD5Mesh::NumTris( void )\r\n");
    return retVal;
}


/*
====================
idMD5Mesh::NumWeights
====================
*/
int	idMD5Mesh::NumWeights( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidMD5Mesh::NumWeights( void )\r\n");
    return retVal;
}


/***********************************************************************

	idRenderModelMD5

***********************************************************************/

/*
====================
idRenderModelMD5::ParseJoint
====================
*/
void idRenderModelMD5::ParseJoint( idLexer &parser, idMD5Joint *joint, idJointQuat *defaultPose ) {
    Sys_Printf("void idRenderModelMD5::ParseJoint( idLexer &parser, idMD5Joint *joint, idJointQuat *defaultPose )\r\n");
}


/*
====================
idRenderModelMD5::InitFromFile
====================
*/
void idRenderModelMD5::InitFromFile( const char *fileName ) {
    Sys_Printf("void idRenderModelMD5::InitFromFile( const char *fileName )\r\n");
}


/*
====================
idRenderModelMD5::LoadModel

used for initial loads, reloadModel, and reloading the data of purged models
Upon exit, the model will absolutely be valid, but possibly as a default model
====================
*/
void idRenderModelMD5::LoadModel() {
    Sys_Printf("void idRenderModelMD5::LoadModel()\r\n");
}


/*
==============
idRenderModelMD5::Print
==============
*/
void idRenderModelMD5::Print() const {
    Sys_Printf("void idRenderModelMD5::Print()\r\n");
}


/*
==============
idRenderModelMD5::List
==============
*/
void idRenderModelMD5::List() const {
    Sys_Printf("void idRenderModelMD5::List()\r\n");
}


/*
====================
idRenderModelMD5::CalculateBounds
====================
*/
void idRenderModelMD5::CalculateBounds( const idJointMat *entJoints ) {
    Sys_Printf("void idRenderModelMD5::CalculateBounds( const idJointMat *entJoints )\r\n");
}


/*
====================
idRenderModelMD5::Bounds

This calculates a rough bounds by using the joint radii without
transforming all the points
====================
*/
idBounds idRenderModelMD5::Bounds( const renderEntity_t *ent ) const {
    idBounds retVal;
    memset(&retVal, 0, sizeof(idBounds));
    Sys_Printf("idBounds idRenderModelMD5::Bounds( const renderEntity_t *ent )\r\n");
    return retVal;
}


/*
====================
idRenderModelMD5::DrawJoints
====================
*/
void idRenderModelMD5::DrawJoints( const renderEntity_t *ent, const struct viewDef_s *view ) const {
    Sys_Printf("void idRenderModelMD5::DrawJoints( const renderEntity_t *ent, const struct viewDef_s *view )\r\n");
}


/*
====================
idRenderModelMD5::InstantiateDynamicModel
====================
*/
idRenderModel *idRenderModelMD5::InstantiateDynamicModel( const struct renderEntity_s *ent, const struct viewDef_s *view, idRenderModel *cachedModel ) {
    Sys_Printf("idRenderModel *idRenderModelMD5::InstantiateDynamicModel( const struct renderEntity_s *ent, const struct viewDef_s *view, idRenderModel *cachedModel )\r\n");
    return NULL;
}


/*
====================
idRenderModelMD5::IsDynamicModel
====================
*/
dynamicModel_t idRenderModelMD5::IsDynamicModel() const {
    dynamicModel_t retVal;
    memset(&retVal, 0, sizeof(dynamicModel_t));
    Sys_Printf("dynamicModel_t idRenderModelMD5::IsDynamicModel()\r\n");
    return retVal;
}


/*
====================
idRenderModelMD5::NumJoints
====================
*/
int idRenderModelMD5::NumJoints( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idRenderModelMD5::NumJoints( void )\r\n");
    return retVal;
}


/*
====================
idRenderModelMD5::GetJoints
====================
*/
const idMD5Joint *idRenderModelMD5::GetJoints( void ) const {
    Sys_Printf("idMD5Joint *idRenderModelMD5::GetJoints( void )\r\n");
    return NULL;
}


/*
====================
idRenderModelMD5::GetDefaultPose
====================
*/
const idJointQuat *idRenderModelMD5::GetDefaultPose( void ) const {
    Sys_Printf("idJointQuat *idRenderModelMD5::GetDefaultPose( void )\r\n");
    return NULL;
}


/*
====================
idRenderModelMD5::GetJointHandle
====================
*/
jointHandle_t idRenderModelMD5::GetJointHandle( const char *name ) const {
    jointHandle_t retVal;
    memset(&retVal, 0, sizeof(jointHandle_t));
    Sys_Printf("jointHandle_t idRenderModelMD5::GetJointHandle( const char *name )\r\n");
    return retVal;
}


/*
=====================
idRenderModelMD5::GetJointName
=====================
*/
const char *idRenderModelMD5::GetJointName( jointHandle_t handle ) const {
    Sys_Printf("char *idRenderModelMD5::GetJointName( jointHandle_t handle )\r\n");
    return NULL;
}


/*
====================
idRenderModelMD5::NearestJoint
====================
*/
int idRenderModelMD5::NearestJoint( int surfaceNum, int a, int b, int c ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idRenderModelMD5::NearestJoint( int surfaceNum, int a, int b, int c )\r\n");
    return retVal;
}


/*
====================
idRenderModelMD5::TouchData

models that are already loaded at level start time
will still touch their materials to make sure they
are kept loaded
====================
*/
void idRenderModelMD5::TouchData() {
    Sys_Printf("void idRenderModelMD5::TouchData()\r\n");
}


/*
===================
idRenderModelMD5::PurgeModel

frees all the data, but leaves the class around for dangling references,
which can regenerate the data with LoadModel()
===================
*/
void idRenderModelMD5::PurgeModel() {
    Sys_Printf("void idRenderModelMD5::PurgeModel()\r\n");
}


/*
===================
idRenderModelMD5::Memory
===================
*/
int	idRenderModelMD5::Memory() const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidRenderModelMD5::Memory()\r\n");
    return retVal;
}

