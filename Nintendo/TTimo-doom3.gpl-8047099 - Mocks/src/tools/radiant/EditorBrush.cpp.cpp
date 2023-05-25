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
#include <GL/glu.h>

#include "../../renderer/tr_local.h"
#include "../../renderer/model_local.h"	// for idRenderModelMD5

void	Brush_UpdateLightPoints(brush_t *b, const idVec3 &offset);
void Brush_DrawCurve( brush_t *b, bool bSelected, bool cam );

// globals
int		g_nBrushId = 0;
bool	g_bShowLightVolumes = false;
bool	g_bShowLightTextures = false;

void GLCircle(float x, float y, float z, float r);

const int POINTS_PER_KNOT = 50;

/*
================
DrawRenderModel
================
*/
void DrawRenderModel( idRenderModel *model, idVec3 &origin, idMat3 &axis, bool cameraView ) {
    Sys_Printf("void DrawRenderModel( idRenderModel *model, idVec3 &origin, idMat3 &axis, bool cameraView )\r\n");
}


/*
================
SnapVectorToGrid
================
*/
void SnapVectorToGrid(idVec3 &v) {
    Sys_Printf("void SnapVectorToGrid(idVec3 &v)\r\n");
}


/*
================
Brush_Name
================
*/
const char *Brush_Name( brush_t *b ) {
    Sys_Printf("char *Brush_Name( brush_t *b )\r\n");
    return NULL;
}


/*
================
Brush_Alloc
================
*/
brush_t *Brush_Alloc( void ) {
    Sys_Printf("brush_t *Brush_Alloc( void )\r\n");
    return NULL;
}


/*
================
TextureAxisFromPlane
================
*/
idVec3	baseaxis[18] = {
	idVec3(0, 0, 1),
	idVec3(1, 0, 0),
	idVec3(0, -1, 0),

	// floor
	idVec3(0, 0, -1),
	idVec3(1, 0, 0),
	idVec3(0, -1, 0),

	// ceiling
	idVec3(1, 0, 0),
	idVec3(0, 1, 0),
	idVec3(0, 0, -1),

	// west wall
	idVec3(-1, 0, 0),
	idVec3(0, 1, 0),
	idVec3(0, 0, -1),

	// east wall
	idVec3(0, 1, 0),
	idVec3(1, 0, 0),
	idVec3(0, 0, -1),

	// south wall
	idVec3(0, -1, 0),
	idVec3(1, 0, 0),
	idVec3(0, 0, -1)	// north wall
};

void TextureAxisFromPlane( const idPlane &pln, idVec3 &xv, idVec3 &yv) {
    Sys_Printf("void TextureAxisFromPlane( const idPlane &pln, idVec3 &xv, idVec3 &yv)\r\n");
}


/*
================
ShadeForNormal

  Light different planes differently to improve recognition
================
*/
float	lightaxis[3] = { 0.6f, 0.8f, 1.0f };

float ShadeForNormal(idVec3 normal) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float ShadeForNormal(idVec3 normal)\r\n");
    return retVal;
}


/*
================
Face_Alloc
================
*/
face_t *Face_Alloc(void) {
    Sys_Printf("face_t *Face_Alloc(void)\r\n");
    return NULL;
}


/*
================
Face_Free
================
*/
void Face_Free(face_t *f) {
    Sys_Printf("void Face_Free(face_t *f)\r\n");
}


/*
================
Face_Clone
================
*/
face_t *Face_Clone(face_t *f) {
    Sys_Printf("face_t *Face_Clone(face_t *f)\r\n");
    return NULL;
}


/*
================
Face_FullClone

  Used by Undo.
  Makes an exact copy of the face.
================
*/
face_t *Face_FullClone(face_t *f) {
    Sys_Printf("face_t *Face_FullClone(face_t *f)\r\n");
    return NULL;
}


/*
================
Clamp
================
*/
void Clamp(float &f, int nClamp) {
    Sys_Printf("void Clamp(float &f, int nClamp)\r\n");
}


/*
================
Face_MoveTexture
================
*/
void Face_MoveTexture(face_t *f, idVec3 delta) {
    Sys_Printf("void Face_MoveTexture(face_t *f, idVec3 delta)\r\n");
}


/*
================
Face_SetColor
================
*/
void Face_SetColor(brush_t *b, face_t *f, float fCurveColor) {
    Sys_Printf("void Face_SetColor(brush_t *b, face_t *f, float fCurveColor)\r\n");
}


/*
================
Face_TextureVectors

  NOTE: this is never to get called while in brush primitives mode
================
*/
void Face_TextureVectors(face_t *f, float STfromXYZ[2][4]) {
    Sys_Printf("void Face_TextureVectors(face_t *f, float STfromXYZ[2][4])\r\n");
}


/*
================
Face_MakePlane
================
*/
void Face_MakePlane(face_t *f) {
    Sys_Printf("void Face_MakePlane(face_t *f)\r\n");
}


/*
================
EmitTextureCoordinates
================
*/
void EmitTextureCoordinates(idVec5 &xyzst, const idMaterial *q, face_t *f, bool force) {
    Sys_Printf("void EmitTextureCoordinates(idVec5 &xyzst, const idMaterial *q, face_t *f, bool force)\r\n");
}


/*
================
Brush_MakeFacePlanes
================
*/
void Brush_MakeFacePlanes(brush_t *b) {
    Sys_Printf("void Brush_MakeFacePlanes(brush_t *b)\r\n");
}


/*
================
DrawBrushEntityName
================
*/
void DrawBrushEntityName(brush_t *b) {
    Sys_Printf("void DrawBrushEntityName(brush_t *b)\r\n");
}


/*
================
Brush_MakeFaceWinding

  returns the visible winding
================
*/
idWinding *Brush_MakeFaceWinding(brush_t *b, face_t *face, bool keepOnPlaneWinding) {
    Sys_Printf("idWinding *Brush_MakeFaceWinding(brush_t *b, face_t *face, bool keepOnPlaneWinding)\r\n");
    return NULL;
}


/*
================
Brush_Build

  Builds a brush rendering data and also sets the min/max bounds
  TTimo added a bConvert flag to convert between old and new brush texture formats
  TTimo brush grouping: update the group treeview if necessary
================
*/
void Brush_Build(brush_t *b, bool bSnap, bool bMarkMap, bool bConvert, bool updateLights) {
    Sys_Printf("void Brush_Build(brush_t *b, bool bSnap, bool bMarkMap, bool bConvert, bool updateLights)\r\n");
}


/*
================
Brush_SplitBrushByFace

  The incoming brush is NOT freed. The incoming face is NOT left referenced.
================
*/
void Brush_SplitBrushByFace(brush_t *in, face_t *f, brush_t **front, brush_t **back) {
    Sys_Printf("void Brush_SplitBrushByFace(brush_t *in, face_t *f, brush_t **front, brush_t **back)\r\n");
}


/*
================
Brush_BestSplitFace

  returns the best face to split the brush with. return NULL if the brush is convex
================
*/
face_t *Brush_BestSplitFace(brush_t *b) {
    Sys_Printf("face_t *Brush_BestSplitFace(brush_t *b)\r\n");
    return NULL;
}


/*
================
Brush_MakeConvexBrushes

  MrE FIXME: this doesn't work because the old Brush_SplitBrushByFace is used
  Turns the brush into a minimal number of convex brushes.
  If the input brush is convex then it will be returned. Otherwise the input
  brush will be freed.
  NOTE: the input brush should have windings for the faces.
================
*/
brush_t *Brush_MakeConvexBrushes(brush_t *b) {
    Sys_Printf("brush_t *Brush_MakeConvexBrushes(brush_t *b)\r\n");
    return NULL;
}


/*
================
Brush_Convex

  returns true if the brush is convex
================
*/
int Brush_Convex(brush_t *b) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Brush_Convex(brush_t *b)\r\n");
    return retVal;
}


/*
================
Brush_MoveVertexes

  The input brush must be convex.
  The input brush must have face windings.
  The output brush will be convex.
  Returns true if the WHOLE vertex movement is performed.
================
*/
#define MAX_MOVE_FACES	64
#define TINY_EPSILON	0.0325f

int Brush_MoveVertex(brush_t *b, const idVec3 &vertex, const idVec3 &delta, idVec3 &end, bool bSnap) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Brush_MoveVertex(brush_t *b, const idVec3 &vertex, const idVec3 &delta, idVec3 &end, bool bSnap)\r\n");
    return retVal;
}


/*
================
Brush_InsertVertexBetween

  Adds a vertex to the brush windings between the given two points.
================
*/
int Brush_InsertVertexBetween(brush_t *b, idVec3 p1, idVec3 p2) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Brush_InsertVertexBetween(brush_t *b, idVec3 p1, idVec3 p2)\r\n");
    return retVal;
}


/*
================
Brush_ResetFaceOriginals

  reset points to original faces to NULL
================
*/
void Brush_ResetFaceOriginals(brush_t *b) {
    Sys_Printf("void Brush_ResetFaceOriginals(brush_t *b)\r\n");
}


/*
================
Brush_Parse

  The brush is NOT linked to any list
  FIXME: when using old brush primitives, the test loop for "Brush" and "patchDef2" "patchDef3"
  run before each face parsing. It works, but it's a performance hit
================
*/
brush_t *Brush_Parse(idVec3 origin) {
    Sys_Printf("brush_t *Brush_Parse(idVec3 origin)\r\n");
    return NULL;
}


/*
================
QERApp_MapPrintf_FILE

  callback for surface properties plugin must fit a PFN_QERAPP_MAPPRINTF ( see isurfaceplugin.h )
  carefully initialize !
================
*/
FILE	*g_File;

void WINAPI QERApp_MapPrintf_FILE(char *text, ...) {
    WINAPI retVal;
    memset(&retVal, 0, sizeof(WINAPI));
    Sys_Printf("WINAPI QERApp_MapPrintf_FILE(char *text, ...)\r\n");
    return retVal;
}


/*
================
Brush_SetEpair

  sets an epair for the given brush
================
*/
void Brush_SetEpair(brush_t *b, const char *pKey, const char *pValue) {
    Sys_Printf("void Brush_SetEpair(brush_t *b, const char *pKey, const char *pValue)\r\n");
}


/*
================
Brush_GetKeyValue
================
*/
const char *Brush_GetKeyValue(brush_t *b, const char *pKey) {
    Sys_Printf("char *Brush_GetKeyValue(brush_t *b, const char *pKey)\r\n");
    return NULL;
}


/*
================
Brush_Write

	save all brushes as Brush primitive format
================
*/
void Brush_Write(brush_t *b, FILE *f, const idVec3 &origin, bool newFormat) {
    Sys_Printf("void Brush_Write(brush_t *b, FILE *f, const idVec3 &origin, bool newFormat)\r\n");
}


/*
================
QERApp_MapPrintf_MEMFILE

  callback for surface properties plugin must fit a PFN_QERAPP_MAPPRINTF ( see isurfaceplugin.h )
  carefully initialize !
================
*/
CMemFile	*g_pMemFile;

void WINAPI QERApp_MapPrintf_MEMFILE(char *text, ...) {
    WINAPI retVal;
    memset(&retVal, 0, sizeof(WINAPI));
    Sys_Printf("WINAPI QERApp_MapPrintf_MEMFILE(char *text, ...)\r\n");
    return retVal;
}


/*
================
Brush_Write

  save all brushes as Brush primitive format to a CMemFile*
================
*/
void Brush_Write(brush_t *b, CMemFile *pMemFile, const idVec3 &origin, bool newFormat) {
    Sys_Printf("void Brush_Write(brush_t *b, CMemFile *pMemFile, const idVec3 &origin, bool newFormat)\r\n");
}


/*
================
Brush_Create

  Create non-textured blocks for entities The brush is NOT linked to any list
================
*/
brush_t *Brush_Create(idVec3 mins, idVec3 maxs, texdef_t *texdef) {
    Sys_Printf("brush_t *Brush_Create(idVec3 mins, idVec3 maxs, texdef_t *texdef)\r\n");
    return NULL;
}


/*
=============
Brush_Scale
=============
*/
void Brush_Scale(brush_t* b) {
    Sys_Printf("void Brush_Scale(brush_t* b)\r\n");
}


/*
================
Brush_CreatePyramid

  Create non-textured pyramid for light entities The brush is NOT linked to any list
================
*/
brush_t *Brush_CreatePyramid(idVec3 mins, idVec3 maxs, texdef_t *texdef) {
    Sys_Printf("brush_t *Brush_CreatePyramid(idVec3 mins, idVec3 maxs, texdef_t *texdef)\r\n");
    return NULL;
}


/*
================
Brush_MakeSided

  Makes the current brush have the given number of 2d sides
================
*/
void Brush_MakeSided(int sides) {
    Sys_Printf("void Brush_MakeSided(int sides)\r\n");
}


/*
================
Brush_Free

  Frees the brush with all of its faces and display list.
  Unlinks the brush from whichever chain it is in.
  Decrements the owner entity's brushcount.
  Removes owner entity if this was the last brush unless owner is the world.
  Removes from groups

  set bRemoveNode to false to avoid trying to delete the item in group view tree control
================
*/
void Brush_Free(brush_t *b, bool bRemoveNode) {
    Sys_Printf("void Brush_Free(brush_t *b, bool bRemoveNode)\r\n");
}


/*
================
Face_MemorySize

  returns the size in memory of the face
================
*/
int Face_MemorySize(face_t *f) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Face_MemorySize(face_t *f)\r\n");
    return retVal;
}


/*
================
Brush_MemorySize

  returns the size in memory of the brush
================
*/
int Brush_MemorySize( brush_t *b ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Brush_MemorySize( brush_t *b )\r\n");
    return retVal;
}


/*
================
Brush_Clone

  does not add the brush to any lists
================
*/
brush_t *Brush_Clone(brush_t *b) {
    Sys_Printf("brush_t *Brush_Clone(brush_t *b)\r\n");
    return NULL;
}


/*
================
Brush_FullClone

  Used by Undo.
  Makes an exact copy of the brush.
  Does NOT add the new brush to any lists.
================
*/
brush_t *Brush_FullClone(brush_t *b) {
    Sys_Printf("brush_t *Brush_FullClone(brush_t *b)\r\n");
    return NULL;
}


extern bool GetMatrixForKey(entity_t *ent, const char *key, idMat3 &mat);
extern bool Patch_Intersect(patchMesh_t *pm, idVec3 origin, idVec3 direction , float &scale);
extern bool RayIntersectsTri
			(
				const idVec3	&origin,
				const idVec3	&direction,
				const idVec3	&vert0,
				const idVec3	&vert1,
				const idVec3	&vert2,
                float           &scale
			);


/*
================
RotateVector
================
*/
void RotateVector(idVec3 &v, idVec3 origin, float a, float c, float s) {
    Sys_Printf("void RotateVector(idVec3 &v, idVec3 origin, float a, float c, float s)\r\n");
}

/*
================
Brush_ModelIntersect
================
*/

bool Brush_ModelIntersect(brush_t *b, idVec3 origin, idVec3 dir,float &scale) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Brush_ModelIntersect(brush_t *b, idVec3 origin, idVec3 dir,float &scale)\r\n");
    return retVal;
}


face_t *Brush_Ray(idVec3 origin, idVec3 dir, brush_t *b, float *dist, bool testPrimitive) {
    Sys_Printf("face_t *Brush_Ray(idVec3 origin, idVec3 dir, brush_t *b, float *dist, bool testPrimitive)\r\n");
    return NULL;
}


/*
================
Brush_Point
================
*/
face_t *Brush_Point(idVec3 origin, brush_t *b) {
    Sys_Printf("face_t *Brush_Point(idVec3 origin, brush_t *b)\r\n");
    return NULL;
}


/*
================
Brush_AddToList
================
*/
void Brush_AddToList(brush_t *b, brush_t *list) {
    Sys_Printf("void Brush_AddToList(brush_t *b, brush_t *list)\r\n");
}


/*
================
Brush_RemoveFromList
================
*/
void Brush_RemoveFromList(brush_t *b) {
    Sys_Printf("void Brush_RemoveFromList(brush_t *b)\r\n");
}


/*
================
SetFaceTexdef

  Doesn't set the curve flags.
  NOTE: never trust f->d_texture here, f->texdef and f->d_texture are out of sync when
  called by Brush_SetTexture use Texture_ForName() to find the right shader
  FIXME: send the right shader ( qtexture_t * ) in the parameters ?
  TTimo: surface plugin, added an IPluginTexdef* parameter if not NULL,
  get ->Copy() of it into the face ( and remember to hook ) if NULL, ask for a default
================
*/
void SetFaceTexdef( brush_t *b, face_t *f, texdef_t *texdef, brushprimit_texdef_t *brushprimit_texdef, bool bFitScale ) {
    Sys_Printf("void SetFaceTexdef( brush_t *b, face_t *f, texdef_t *texdef, brushprimit_texdef_t *brushprimit_texdef, bool bFitScale )\r\n");
}


/*
================
Brush_SetTexture
================
*/
void Brush_SetTexture(brush_t *b, texdef_t *texdef, brushprimit_texdef_t *brushprimit_texdef, bool bFitScale) {
    Sys_Printf("void Brush_SetTexture(brush_t *b, texdef_t *texdef, brushprimit_texdef_t *brushprimit_texdef, bool bFitScale)\r\n");
}


/*
====================
Brush_SetTextureName
====================
*/
void Brush_SetTextureName(brush_t *b, const char *name) {
    Sys_Printf("void Brush_SetTextureName(brush_t *b, const char *name)\r\n");
}


/*
================
ClipLineToFace
================
*/
bool ClipLineToFace(idVec3 &p1, idVec3 &p2, face_t *f) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool ClipLineToFace(idVec3 &p1, idVec3 &p2, face_t *f)\r\n");
    return retVal;
}


/*
================
AddPlanept
================
*/
int AddPlanept(idVec3 *f) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int AddPlanept(idVec3 *f)\r\n");
    return retVal;
}


/*
================
AddMovePlane
================
*/
void AddMovePlane( idPlane *p ) {
    Sys_Printf("void AddMovePlane( idPlane *p )\r\n");
}


/*
================
Brush_SelectFaceForDragging

  Adds the faces planepts to move_points, and rotates and adds the planepts of adjacent face if shear is set
================
*/
void Brush_SelectFaceForDragging(brush_t *b, face_t *f, bool shear) {
    Sys_Printf("void Brush_SelectFaceForDragging(brush_t *b, face_t *f, bool shear)\r\n");
}


/*
================
Brush_SideSelect

  The mouse click did not hit the brush, so grab one or more side planes for dragging.
================
*/
void Brush_SideSelect(brush_t *b, idVec3 origin, idVec3 dir, bool shear) {
    Sys_Printf("void Brush_SideSelect(brush_t *b, idVec3 origin, idVec3 dir, bool shear)\r\n");
}


extern void UpdateSelectablePoint(brush_t *b, idVec3 v, int type);
extern void	AddSelectablePoint(brush_t *b, idVec3 v, int type, bool priority);
extern void	ClearSelectablePoints(brush_t *b);

/*
================
Brush_TransformedPoint
================
*/
extern void VectorSnapGrid(idVec3 &v);

idMat3 Brush_RotationMatrix(brush_t *b) {
    idMat3 retVal;
    memset(&retVal, 0, sizeof(idMat3));
    Sys_Printf("idMat3 Brush_RotationMatrix(brush_t *b)\r\n");
    return retVal;
}


idVec3 Brush_TransformedPoint(brush_t *b, const idVec3 &in) {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 Brush_TransformedPoint(brush_t *b, const idVec3 &in)\r\n");
    return retVal;
}

/*
================
Brush_UpdateLightPoints
================
*/
void Brush_UpdateLightPoints(brush_t *b, const idVec3 &offset) {
    Sys_Printf("void Brush_UpdateLightPoints(brush_t *b, const idVec3 &offset)\r\n");
}


/*
================
Brush_BuildWindings
================
*/
void Brush_BuildWindings(brush_t *b, bool bSnap, bool keepOnPlaneWinding, bool updateLights, bool makeFacePlanes) {
    Sys_Printf("void Brush_BuildWindings(brush_t *b, bool bSnap, bool keepOnPlaneWinding, bool updateLights, bool makeFacePlanes)\r\n");
}


/*
================
Brush_RemoveEmptyFaces

  Frees any overconstraining faces
================
*/
void Brush_RemoveEmptyFaces(brush_t *b) {
    Sys_Printf("void Brush_RemoveEmptyFaces(brush_t *b)\r\n");
}


/*
================
Brush_SnapToGrid
================
*/
void Brush_SnapToGrid(brush_t *pb) {
    Sys_Printf("void Brush_SnapToGrid(brush_t *pb)\r\n");
}


/*
================
Brush_Rotate
================
*/
void Brush_Rotate(brush_t *b, idMat3 matrix, idVec3 origin, bool bBuild) {
    Sys_Printf("void Brush_Rotate(brush_t *b, idMat3 matrix, idVec3 origin, bool bBuild)\r\n");
}


extern void VectorRotate3Origin( const idVec3 &vIn, const idVec3 &vRotation, const idVec3 &vOrigin, idVec3 &out );

/*
================
Brush_Rotate
================
*/
void Brush_Rotate(brush_t *b, idVec3 vAngle, idVec3 vOrigin, bool bBuild) {
    Sys_Printf("void Brush_Rotate(brush_t *b, idVec3 vAngle, idVec3 vOrigin, bool bBuild)\r\n");
}


/*
================
Brush_Center
================
*/
void Brush_Center(brush_t *b, idVec3 vNewCenter) {
    Sys_Printf("void Brush_Center(brush_t *b, idVec3 vNewCenter)\r\n");
}


/*
================
Brush_Resize

  the brush must be a true axial box
================
*/
void Brush_Resize( brush_t *b, idVec3 vMin, idVec3 vMax ) {
    Sys_Printf("void Brush_Resize( brush_t *b, idVec3 vMin, idVec3 vMax )\r\n");
}


/*
================
HasModel
================
*/
eclass_t *HasModel(brush_t *b) {
    Sys_Printf("eclass_t *HasModel(brush_t *b)\r\n");
    return NULL;
}


/*
================
Entity_GetRotationMatrixAngles
================
*/
bool Entity_GetRotationMatrixAngles( entity_t *e, idMat3 &mat, idAngles &angles ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Entity_GetRotationMatrixAngles( entity_t *e, idMat3 &mat, idAngles &angles )\r\n");
    return retVal;
}


/*
================
FacingVectors
================
*/
static void FacingVectors(entity_t *e, idVec3 &forward, idVec3 &right, idVec3 &up) {
    Sys_Printf("void FacingVectors(entity_t *e, idVec3 &forward, idVec3 &right, idVec3 &up)\r\n");
}


/*
================
Brush_DrawFacingAngle
================
*/
void Brush_DrawFacingAngle( brush_t *b, entity_t *e, bool particle ) {
    Sys_Printf("void Brush_DrawFacingAngle( brush_t *b, entity_t *e, bool particle )\r\n");
}


/*
================
DrawProjectedLight
================
*/
void DrawProjectedLight(brush_t *b, bool bSelected, bool texture) {
    Sys_Printf("void DrawProjectedLight(brush_t *b, bool bSelected, bool texture)\r\n");
}


/*
================
GLCircle
================
*/
void GLCircle(float x, float y, float z, float r) 
{
    Sys_Printf("void GLCircle(float x, float y, float z, float r)\r\n");
}
 

/*
================
DrawSpeaker
================
*/
void DrawSpeaker(brush_t *b, bool bSelected, bool twoD) {
    Sys_Printf("void DrawSpeaker(brush_t *b, bool bSelected, bool twoD)\r\n");
}


/*
================
DrawLight
================
*/
void DrawLight(brush_t *b, bool bSelected) {
    Sys_Printf("void DrawLight(brush_t *b, bool bSelected)\r\n");
}


/*
================
Control_Draw
================
*/
void Control_Draw(brush_t *b) {
    Sys_Printf("void Control_Draw(brush_t *b)\r\n");
}


/*
================
Brush_DrawModel
================
*/
void Brush_DrawModel( brush_t *b, bool camera, bool bSelected ) {
    Sys_Printf("void Brush_DrawModel( brush_t *b, bool camera, bool bSelected )\r\n");
}


/*
================
GLTransformedVertex
================
*/
void GLTransformedVertex(float x, float y, float z, idMat3 mat, idVec3 origin, idVec3 color, float maxDist) {
    Sys_Printf("void GLTransformedVertex(float x, float y, float z, idMat3 mat, idVec3 origin, idVec3 color, float maxDist)\r\n");
}


/*
================
GLTransformedCircle
================
*/
void GLTransformedCircle(int type, idVec3 origin, float r, idMat3 mat, float pointSize, idVec3 color, float maxDist) {
    Sys_Printf("void GLTransformedCircle(int type, idVec3 origin, float r, idMat3 mat, float pointSize, idVec3 color, float maxDist)\r\n");
}


/*
================
Brush_DrawAxis
================
*/
void Brush_DrawAxis(brush_t *b) {
    Sys_Printf("void Brush_DrawAxis(brush_t *b)\r\n");
}


/*
================
Brush_DrawModelInfo
================
*/
void Brush_DrawModelInfo(brush_t *b, bool selected) {
    Sys_Printf("void Brush_DrawModelInfo(brush_t *b, bool selected)\r\n");
}


/*
================
Brush_DrawEmitter
================
*/
void Brush_DrawEmitter(brush_t *b, bool bSelected, bool cam) {
    Sys_Printf("void Brush_DrawEmitter(brush_t *b, bool bSelected, bool cam)\r\n");
}


/*
================
Brush_DrawEnv
================
*/
void Brush_DrawEnv( brush_t *b, bool cameraView, bool bSelected ) {
    Sys_Printf("void Brush_DrawEnv( brush_t *b, bool cameraView, bool bSelected )\r\n");
}


/*
================
Brush_DrawCombatNode
================
*/
void Brush_DrawCombatNode( brush_t *b, bool cameraView, bool bSelected ) {
    Sys_Printf("void Brush_DrawCombatNode( brush_t *b, bool cameraView, bool bSelected )\r\n");
}


/*
================
Brush_Draw
================
*/
void Brush_Draw(brush_t *b, bool bSelected) {
    Sys_Printf("void Brush_Draw(brush_t *b, bool bSelected)\r\n");
}


/*
================
Face_Draw
================
*/
void Face_Draw(face_t *f) {
    Sys_Printf("void Face_Draw(face_t *f)\r\n");
}



idSurface_SweptSpline *SplineToSweptSpline( idCurve<idVec3> *curve ) {
    Sys_Printf("idSurface_SweptSpline *SplineToSweptSpline( idCurve<idVec3> *curve )\r\n");
    return NULL;
}


/*
================
Brush_DrawCurve
================
*/
void Brush_DrawCurve( brush_t *b, bool bSelected, bool cam ) {
    Sys_Printf("void Brush_DrawCurve( brush_t *b, bool bSelected, bool cam )\r\n");
}


/*
================
Brush_DrawXY
================
*/
void Brush_DrawXY(brush_t *b, int nViewType, bool bSelected, bool ignoreViewType) {
    Sys_Printf("void Brush_DrawXY(brush_t *b, int nViewType, bool bSelected, bool ignoreViewType)\r\n");
}


/*
==================
PointValueInPointList
==================
*/
static int PointValueInPointList( idVec3 v ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int PointValueInPointList( idVec3 v )\r\n");
    return retVal;
}



extern bool Sys_KeyDown(int key);
/*
================
Brush_Move
================
*/
void Brush_Move(brush_t *b, const idVec3 move, bool bSnap, bool updateOrigin) {
    Sys_Printf("void Brush_Move(brush_t *b, const idVec3 move, bool bSnap, bool updateOrigin)\r\n");
}


/*
================
Select_AddProjectedLight
================
*/
void Select_AddProjectedLight() {
    Sys_Printf("void Select_AddProjectedLight()\r\n");
}


/*
================
Brush_Print
================
*/
void Brush_Print(brush_t *b) {
    Sys_Printf("void Brush_Print(brush_t *b)\r\n");
}


/*
================
Brush_MakeSidedCone

  Makes the current brush have the given number of 2d sides and turns it into a cone
================
*/
void Brush_MakeSidedCone(int sides) {
    Sys_Printf("void Brush_MakeSidedCone(int sides)\r\n");
}


/*
================
Brush_MakeSidedSphere

  Makes the current brushhave the given number of 2d sides and turns it into a sphere
================
*/
void Brush_MakeSidedSphere(int sides) {
    Sys_Printf("void Brush_MakeSidedSphere(int sides)\r\n");
}


extern void Face_FitTexture_BrushPrimit(face_t *f, idVec3 mins, idVec3 maxs, float nHeight, float nWidth);

/*
================
Face_FitTexture
================
*/
void Face_FitTexture(face_t *face, float nHeight, float nWidth) {
    Sys_Printf("void Face_FitTexture(face_t *face, float nHeight, float nWidth)\r\n");
}


/*
================
Brush_FitTexture
================
*/
void Brush_FitTexture(brush_t *b, float nHeight, float nWidth) {
    Sys_Printf("void Brush_FitTexture(brush_t *b, float nHeight, float nWidth)\r\n");
}


void Brush_GetBounds( brush_t *b, idBounds &bo ) {
    Sys_Printf("void Brush_GetBounds( brush_t *b, idBounds &bo )\r\n");
}

