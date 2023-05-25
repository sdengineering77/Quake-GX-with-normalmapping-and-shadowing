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

/*
===============================================================================

	Trace model vs. polygonal model collision detection.

===============================================================================
*/

#include "../idlib/precompiled.h"
#pragma hdrstop

#include "CollisionModel_local.h"


/*
===============================================================================

Visualisation code

===============================================================================
*/

const char *cm_contentsNameByIndex[] = {
	"none",							// 0
	"solid",						// 1
	"opaque",						// 2
	"water",						// 3
	"playerclip",					// 4
	"monsterclip",					// 5
	"moveableclip",					// 6
	"ikclip",						// 7
	"blood",						// 8
	"body",							// 9
	"corpse",						// 10
	"trigger",						// 11
	"aas_solid",					// 12
	"aas_obstacle",					// 13
	"flashlight_trigger",			// 14
	NULL
};

int cm_contentsFlagByIndex[] = {
	-1,								// 0
	CONTENTS_SOLID,					// 1
	CONTENTS_OPAQUE,				// 2
	CONTENTS_WATER,					// 3
	CONTENTS_PLAYERCLIP,			// 4
	CONTENTS_MONSTERCLIP,			// 5
	CONTENTS_MOVEABLECLIP,			// 6
	CONTENTS_IKCLIP,				// 7
	CONTENTS_BLOOD,					// 8
	CONTENTS_BODY,					// 9
	CONTENTS_CORPSE,				// 10
	CONTENTS_TRIGGER,				// 11
	CONTENTS_AAS_SOLID,				// 12
	CONTENTS_AAS_OBSTACLE,			// 13
	CONTENTS_FLASHLIGHT_TRIGGER,	// 14
	0
};

idCVar cm_drawMask(			"cm_drawMask",			"none",		CVAR_GAME,				"collision mask", cm_contentsNameByIndex, idCmdSystem::ArgCompletion_String<cm_contentsNameByIndex> );
idCVar cm_drawColor(		"cm_drawColor",			"1 0 0 .5",	CVAR_GAME,				"color used to draw the collision models" );
idCVar cm_drawFilled(		"cm_drawFilled",		"0",		CVAR_GAME | CVAR_BOOL,	"draw filled polygons" );
idCVar cm_drawInternal(		"cm_drawInternal",		"1",		CVAR_GAME | CVAR_BOOL,	"draw internal edges green" );
idCVar cm_drawNormals(		"cm_drawNormals",		"0",		CVAR_GAME | CVAR_BOOL,	"draw polygon and edge normals" );
idCVar cm_backFaceCull(		"cm_backFaceCull",		"0",		CVAR_GAME | CVAR_BOOL,	"cull back facing polygons" );
idCVar cm_debugCollision(	"cm_debugCollision",	"0",		CVAR_GAME | CVAR_BOOL,	"debug the collision detection" );

static idVec4 cm_color;

/*
================
idCollisionModelManagerLocal::ContentsFromString
================
*/
int idCollisionModelManagerLocal::ContentsFromString( const char *string ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCollisionModelManagerLocal::ContentsFromString( const char *string )\r\n");
    return retVal;
}


/*
================
idCollisionModelManagerLocal::StringFromContents
================
*/
const char *idCollisionModelManagerLocal::StringFromContents( const int contents ) const {
    Sys_Printf("char *idCollisionModelManagerLocal::StringFromContents( const int contents )\r\n");
    return NULL;
}


/*
================
idCollisionModelManagerLocal::DrawEdge
================
*/
void idCollisionModelManagerLocal::DrawEdge( cm_model_t *model, int edgeNum, const idVec3 &origin, const idMat3 &axis ) {
    Sys_Printf("void idCollisionModelManagerLocal::DrawEdge( cm_model_t *model, int edgeNum, const idVec3 &origin, const idMat3 &axis )\r\n");
}


/*
================
idCollisionModelManagerLocal::DrawPolygon
================
*/
void idCollisionModelManagerLocal::DrawPolygon( cm_model_t *model, cm_polygon_t *p, const idVec3 &origin, const idMat3 &axis, const idVec3 &viewOrigin ) {
    Sys_Printf("void idCollisionModelManagerLocal::DrawPolygon( cm_model_t *model, cm_polygon_t *p, const idVec3 &origin, const idMat3 &axis, const idVec3 &viewOrigin )\r\n");
}


/*
================
idCollisionModelManagerLocal::DrawNodePolygons
================
*/
void idCollisionModelManagerLocal::DrawNodePolygons( cm_model_t *model, cm_node_t *node,
										   const idVec3 &origin, const idMat3 &axis,
										   const idVec3 &viewOrigin, const float radius ) {
    Sys_Printf("void idCollisionModelManagerLocal::DrawNodePolygons( cm_model_t *model, cm_node_t *node, const idVec3 &origin, const idMat3 &axis, const idVec3 &viewOrigin, const float radius )\r\n");
}


/*
================
idCollisionModelManagerLocal::DrawModel
================
*/
void idCollisionModelManagerLocal::DrawModel( cmHandle_t handle, const idVec3 &modelOrigin, const idMat3 &modelAxis,
					const idVec3 &viewOrigin, const float radius ) {
    Sys_Printf("void idCollisionModelManagerLocal::DrawModel( cmHandle_t handle, const idVec3 &modelOrigin, const idMat3 &modelAxis,const idVec3 &viewOrigin, const float radius )\r\n");
}


/*
===============================================================================

Speed test code

===============================================================================
*/

static idCVar cm_testCollision(		"cm_testCollision",		"0",					CVAR_GAME | CVAR_BOOL,		"" );
static idCVar cm_testRotation(		"cm_testRotation",		"1",					CVAR_GAME | CVAR_BOOL,		"" );
static idCVar cm_testModel(			"cm_testModel",			"0",					CVAR_GAME | CVAR_INTEGER,	"" );
static idCVar cm_testTimes(			"cm_testTimes",			"1000",					CVAR_GAME | CVAR_INTEGER,	"" );
static idCVar cm_testRandomMany(	"cm_testRandomMany",	"0",					CVAR_GAME | CVAR_BOOL,		"" );
static idCVar cm_testOrigin(		"cm_testOrigin",		"0 0 0",				CVAR_GAME,					"" );
static idCVar cm_testReset(			"cm_testReset",			"0",					CVAR_GAME | CVAR_BOOL,		"" );
static idCVar cm_testBox(			"cm_testBox",			"-16 -16 0 16 16 64",	CVAR_GAME,					"" );
static idCVar cm_testBoxRotation(	"cm_testBoxRotation",	"0 0 0",				CVAR_GAME,					"" );
static idCVar cm_testWalk(			"cm_testWalk",			"1",					CVAR_GAME | CVAR_BOOL,		"" );
static idCVar cm_testLength(		"cm_testLength",		"1024",					CVAR_GAME | CVAR_FLOAT,		"" );
static idCVar cm_testRadius(		"cm_testRadius",		"64",					CVAR_GAME | CVAR_FLOAT,		"" );
static idCVar cm_testAngle(			"cm_testAngle",			"60",					CVAR_GAME | CVAR_FLOAT,		"" );

static int total_translation;
static int min_translation = 999999;
static int max_translation = -999999;
static int num_translation = 0;
static int total_rotation;
static int min_rotation = 999999;
static int max_rotation = -999999;
static int num_rotation = 0;
static idVec3 start;
static idVec3 *testend;

#include "../sys/sys_public.h"

void idCollisionModelManagerLocal::DebugOutput( const idVec3 &origin ) {
    Sys_Printf("void idCollisionModelManagerLocal::DebugOutput( const idVec3 &origin )\r\n");
}

