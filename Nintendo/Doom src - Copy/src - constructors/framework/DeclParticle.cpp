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

struct ParticleParmDesc {
	const char *name;
	int count;
	const char *desc;
};

const ParticleParmDesc ParticleDistributionDesc[] = {
	{ "rect", 3, "" },
	{ "cylinder", 4, "" },
	{ "sphere", 3, "" }
};

const ParticleParmDesc ParticleDirectionDesc[] = {
	{ "cone", 1, "" },
	{ "outward", 1, "" },
};

const ParticleParmDesc ParticleOrientationDesc[] = {
	{ "view", 0, "" },
	{ "aimed", 2, "" },
	{ "x", 0, "" },
	{ "y", 0, "" },
	{ "z", 0, "" } 
};

const ParticleParmDesc ParticleCustomDesc[] = {
	{ "standard", 0, "Standard" },
	{ "helix", 5, "sizeX Y Z radialSpeed axialSpeed" },
	{ "flies", 3, "radialSpeed axialSpeed size" },
	{ "orbit", 2, "radius speed"},
	{ "drip", 2, "something something" }
};

const int CustomParticleCount = sizeof( ParticleCustomDesc ) / sizeof( const ParticleParmDesc );

/*
=================
idDeclParticle::Size
=================
*/
size_t idDeclParticle::Size( void ) const {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idDeclParticle::Size( void )\r\n");
    return retVal;
}


/*
=====================
idDeclParticle::GetStageBounds
=====================
*/
void idDeclParticle::GetStageBounds( idParticleStage *stage ) {
    Sys_Printf("void idDeclParticle::GetStageBounds( idParticleStage *stage )\r\n");
}


/*
================
idDeclParticle::ParseParms

Parses a variable length list of parms on one line
================
*/
void idDeclParticle::ParseParms( idLexer &src, float *parms, int maxParms ) {
    Sys_Printf("void idDeclParticle::ParseParms( idLexer &src, float *parms, int maxParms )\r\n");
}


/*
================
idDeclParticle::ParseParametric
================
*/
void idDeclParticle::ParseParametric( idLexer &src, idParticleParm *parm ) {
    Sys_Printf("void idDeclParticle::ParseParametric( idLexer &src, idParticleParm *parm )\r\n");
}


/*
================
idDeclParticle::ParseParticleStage
================
*/
idParticleStage *idDeclParticle::ParseParticleStage( idLexer &src ) {
    Sys_Printf("idParticleStage *idDeclParticle::ParseParticleStage( idLexer &src )\r\n");
    return NULL;
}


/*
================
idDeclParticle::Parse
================
*/
bool idDeclParticle::Parse( const char *text, const int textLength ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclParticle::Parse( const char *text, const int textLength )\r\n");
    return retVal;
}


/*
================
idDeclParticle::FreeData
================
*/
void idDeclParticle::FreeData( void ) {
    Sys_Printf("void idDeclParticle::FreeData( void )\r\n");
}


/*
================
idDeclParticle::DefaultDefinition
================
*/
const char *idDeclParticle::DefaultDefinition( void ) const {
    Sys_Printf("char *idDeclParticle::DefaultDefinition( void )\r\n");
    return NULL;
}


/*
================
idDeclParticle::WriteParticleParm
================
*/
void idDeclParticle::WriteParticleParm( idFile *f, idParticleParm *parm, const char *name ) {
    Sys_Printf("void idDeclParticle::WriteParticleParm( idFile *f, idParticleParm *parm, const char *name )\r\n");
}


/*
================
idDeclParticle::WriteStage
================
*/
void idDeclParticle::WriteStage( idFile *f, idParticleStage *stage ) {
    Sys_Printf("void idDeclParticle::WriteStage( idFile *f, idParticleStage *stage )\r\n");
}


/*
================
idDeclParticle::RebuildTextSource
================
*/
bool idDeclParticle::RebuildTextSource( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclParticle::RebuildTextSource( void )\r\n");
    return retVal;
}


/*
================
idDeclParticle::Save
================
*/
bool idDeclParticle::Save( const char *fileName ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclParticle::Save( const char *fileName )\r\n");
    return retVal;
}


/*
====================================================================================

idParticleParm

====================================================================================
*/

float idParticleParm::Eval( float frac, idRandom &rand ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idParticleParm::Eval( float frac, idRandom &rand )\r\n");
    return retVal;
}


float idParticleParm::Integrate( float frac, idRandom &rand ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idParticleParm::Integrate( float frac, idRandom &rand )\r\n");
    return retVal;
}


/*
====================================================================================

idParticleStage

====================================================================================
*/

/*
================
idParticleStage::idParticleStage
================
*/
idParticleStage::idParticleStage( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idParticleStage::idParticleStage( void ) size %d\r\n", sizeof(*this));
#endif

	material = NULL;
	totalParticles = 0;
	cycles = 0.0f;
	cycleMsec = 0;
	spawnBunching = 0.0f;
	particleLife = 0.0f;
	timeOffset = 0.0f;
	deadTime = 0.0f;
	distributionType = PDIST_RECT;
	distributionParms[0] = distributionParms[1] = distributionParms[2] = distributionParms[3] = 0.0f;
	directionType = PDIR_CONE;
	directionParms[0] = directionParms[1] = directionParms[2] = directionParms[3] = 0.0f;
	// idParticleParm		speed;
	gravity = 0.0f;
	worldGravity = false;
	customPathType = PPATH_STANDARD;
	customPathParms[0] = customPathParms[1] = customPathParms[2] = customPathParms[3] = 0.0f;
	customPathParms[4] = customPathParms[5] = customPathParms[6] = customPathParms[7] = 0.0f;
	offset.Zero();
	animationFrames = 0;
	animationRate = 0.0f;
	randomDistribution = true;
	entityColor = false;
	initialAngle = 0.0f;
	// idParticleParm		rotationSpeed;
	orientation = POR_VIEW;
	orientationParms[0] = orientationParms[1] = orientationParms[2] = orientationParms[3] = 0.0f;
	// idParticleParm		size
	// idParticleParm		aspect
	color.Zero();
	fadeColor.Zero();
	fadeInFraction = 0.0f;
	fadeOutFraction = 0.0f;
	fadeIndexFraction = 0.0f;
	hidden = false;
	boundsExpansion = 0.0f;
	bounds.Clear();
}

/*
================
idParticleStage::Default

Sets the stage to a default state
================
*/
void idParticleStage::Default() {
    Sys_Printf("void idParticleStage::Default()\r\n");
}


/*
================
idParticleStage::NumQuadsPerParticle

includes trails and cross faded animations
================
*/
int idParticleStage::NumQuadsPerParticle() const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idParticleStage::NumQuadsPerParticle()\r\n");
    return retVal;
}


/*
===============
idParticleStage::ParticleOrigin
===============
*/
void idParticleStage::ParticleOrigin( particleGen_t *g, idVec3 &origin ) const {
    Sys_Printf("void idParticleStage::ParticleOrigin( particleGen_t *g, idVec3 &origin )\r\n");
}


/*
==================
idParticleStage::ParticleVerts
==================
*/
int	idParticleStage::ParticleVerts( particleGen_t *g, idVec3 origin, idDrawVert *verts ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidParticleStage::ParticleVerts( particleGen_t *g, idVec3 origin, idDrawVert *verts )\r\n");
    return retVal;
}


/*
==================
idParticleStage::ParticleTexCoords
==================
*/
void idParticleStage::ParticleTexCoords( particleGen_t *g, idDrawVert *verts ) const {
    Sys_Printf("void idParticleStage::ParticleTexCoords( particleGen_t *g, idDrawVert *verts )\r\n");
}


/*
==================
idParticleStage::ParticleColors
==================
*/
void idParticleStage::ParticleColors( particleGen_t *g, idDrawVert *verts ) const {
    Sys_Printf("void idParticleStage::ParticleColors( particleGen_t *g, idDrawVert *verts )\r\n");
}


/*
================
idParticleStage::CreateParticle

Returns 0 if no particle is created because it is completely faded out
Returns 4 if a normal quad is created
Returns 8 if two cross faded quads are created

Vertex order is:

0 1
2 3
================
*/
int idParticleStage::CreateParticle( particleGen_t *g, idDrawVert *verts ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idParticleStage::CreateParticle( particleGen_t *g, idDrawVert *verts )\r\n");
    return retVal;
}


/*
==================
idParticleStage::GetCustomPathName
==================
*/
const char* idParticleStage::GetCustomPathName() {
    Sys_Printf("char* idParticleStage::GetCustomPathName()\r\n");
    return NULL;
}


/*
==================
idParticleStage::GetCustomPathDesc
==================
*/
const char* idParticleStage::GetCustomPathDesc() {
    Sys_Printf("char* idParticleStage::GetCustomPathDesc()\r\n");
    return NULL;
}


/*
==================
idParticleStage::NumCustomPathParms
==================
*/
int idParticleStage::NumCustomPathParms() {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idParticleStage::NumCustomPathParms()\r\n");
    return retVal;
}


/*
==================
idParticleStage::SetCustomPathType
==================
*/
void idParticleStage::SetCustomPathType( const char *p ) {
    Sys_Printf("void idParticleStage::SetCustomPathType( const char *p )\r\n");
}


/*
==================
idParticleStage::operator=
==================
*/
void idParticleStage::operator=( const idParticleStage &src ) {
	material = src.material;
	totalParticles = src.totalParticles;
	cycles = src.cycles;
	cycleMsec = src.cycleMsec;
	spawnBunching = src.spawnBunching;
	particleLife = src.particleLife;
	timeOffset = src.timeOffset;
	deadTime = src.deadTime;
	distributionType = src.distributionType;
	distributionParms[0] = src.distributionParms[0];
	distributionParms[1] = src.distributionParms[1];
	distributionParms[2] = src.distributionParms[2];
	distributionParms[3] = src.distributionParms[3];
	directionType = src.directionType;
	directionParms[0] = src.directionParms[0];
	directionParms[1] = src.directionParms[1];
	directionParms[2] = src.directionParms[2];
	directionParms[3] = src.directionParms[3];
	speed = src.speed;
	gravity = src.gravity;
	worldGravity = src.worldGravity;
	randomDistribution = src.randomDistribution;
	entityColor = src.entityColor;
	customPathType = src.customPathType;
	customPathParms[0] = src.customPathParms[0];
	customPathParms[1] = src.customPathParms[1];
	customPathParms[2] = src.customPathParms[2];
	customPathParms[3] = src.customPathParms[3];
	customPathParms[4] = src.customPathParms[4];
	customPathParms[5] = src.customPathParms[5];
	customPathParms[6] = src.customPathParms[6];
	customPathParms[7] = src.customPathParms[7];
	offset = src.offset;
	animationFrames = src.animationFrames;
	animationRate = src.animationRate;
	initialAngle = src.initialAngle;
	rotationSpeed = src.rotationSpeed;
	orientation = src.orientation;
	orientationParms[0] = src.orientationParms[0];
	orientationParms[1] = src.orientationParms[1];
	orientationParms[2] = src.orientationParms[2];
	orientationParms[3] = src.orientationParms[3];
	size = src.size;
	aspect = src.aspect;
	color = src.color;
	fadeColor = src.fadeColor;
	fadeInFraction = src.fadeInFraction;
	fadeOutFraction = src.fadeOutFraction;
	fadeIndexFraction = src.fadeIndexFraction;
	hidden = src.hidden;
	boundsExpansion = src.boundsExpansion;
	bounds = src.bounds;
}
