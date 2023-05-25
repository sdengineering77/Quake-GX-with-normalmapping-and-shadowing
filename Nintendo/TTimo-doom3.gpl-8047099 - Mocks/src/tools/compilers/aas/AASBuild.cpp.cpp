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

#include "../../../idlib/precompiled.h"
#pragma hdrstop

#include "AASBuild_local.h"

#define BFL_PATCH		0x1000

//===============================================================
//
//	idAASBuild
//
//===============================================================

/*
============
idAASBuild::idAASBuild
============
*/
idAASBuild::idAASBuild( void ) {
	file = NULL;
	procNodes = NULL;
	numProcNodes = 0;
	numGravitationalSubdivisions = 0;
	numMergedLeafNodes = 0;
	numLedgeSubdivisions = 0;
	ledgeMap = NULL;
}

/*
============
idAASBuild::~idAASBuild
============
*/
idAASBuild::~idAASBuild( void ) {
	Shutdown();
}

/*
================
idAASBuild::Shutdown
================
*/
void idAASBuild::Shutdown( void ) {
    Sys_Printf("void idAASBuild::Shutdown( void )\r\n");
}


/*
================
idAASBuild::ParseProcNodes
================
*/
void idAASBuild::ParseProcNodes( idLexer *src ) {
    Sys_Printf("void idAASBuild::ParseProcNodes( idLexer *src )\r\n");
}


/*
================
idAASBuild::LoadProcBSP
================
*/
bool idAASBuild::LoadProcBSP( const char *name, ID_TIME_T minFileTime ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASBuild::LoadProcBSP( const char *name, ID_TIME_T minFileTime )\r\n");
    return retVal;
}


/*
============
idAASBuild::DeleteProcBSP
============
*/
void idAASBuild::DeleteProcBSP( void ) {
    Sys_Printf("void idAASBuild::DeleteProcBSP( void )\r\n");
}


/*
============
idAASBuild::ChoppedAwayByProcBSP
============
*/
bool idAASBuild::ChoppedAwayByProcBSP( int nodeNum, idFixedWinding *w, const idVec3 &normal, const idVec3 &origin, const float radius ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASBuild::ChoppedAwayByProcBSP( int nodeNum, idFixedWinding *w, const idVec3 &normal, const idVec3 &origin, const float radius )\r\n");
    return retVal;
}


/*
============
idAASBuild::ClipBrushSidesWithProcBSP
============
*/
void idAASBuild::ClipBrushSidesWithProcBSP( idBrushList &brushList ) {
    Sys_Printf("void idAASBuild::ClipBrushSidesWithProcBSP( idBrushList &brushList )\r\n");
}


/*
============
idAASBuild::ContentsForAAS
============
*/
int idAASBuild::ContentsForAAS( int contents ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAASBuild::ContentsForAAS( int contents )\r\n");
    return retVal;
}


/*
============
idAASBuild::AddBrushForMapBrush
============
*/
idBrushList idAASBuild::AddBrushesForMapBrush( const idMapBrush *mapBrush, const idVec3 &origin, const idMat3 &axis, int entityNum, int primitiveNum, idBrushList brushList ) {
    idBrushList retVal;
    memset(&retVal, 0, sizeof(idBrushList));
    Sys_Printf("idBrushList idAASBuild::AddBrushesForMapBrush( const idMapBrush *mapBrush, const idVec3 &origin, const idMat3 &axis, int entityNum, int primitiveNum, idBrushList brushList )\r\n");
    return retVal;
}


/*
============
idAASBuild::AddBrushesForPatch
============
*/
idBrushList idAASBuild::AddBrushesForMapPatch( const idMapPatch *mapPatch, const idVec3 &origin, const idMat3 &axis, int entityNum, int primitiveNum, idBrushList brushList ) {
    idBrushList retVal;
    memset(&retVal, 0, sizeof(idBrushList));
    Sys_Printf("idBrushList idAASBuild::AddBrushesForMapPatch( const idMapPatch *mapPatch, const idVec3 &origin, const idMat3 &axis, int entityNum, int primitiveNum, idBrushList brushList )\r\n");
    return retVal;
}


/*
============
idAASBuild::AddBrushesForMapEntity
============
*/
idBrushList idAASBuild::AddBrushesForMapEntity( const idMapEntity *mapEnt, int entityNum, idBrushList brushList ) {
    idBrushList retVal;
    memset(&retVal, 0, sizeof(idBrushList));
    Sys_Printf("idBrushList idAASBuild::AddBrushesForMapEntity( const idMapEntity *mapEnt, int entityNum, idBrushList brushList )\r\n");
    return retVal;
}


/*
============
idAASBuild::AddBrushesForMapFile
============
*/
idBrushList idAASBuild::AddBrushesForMapFile( const idMapFile * mapFile, idBrushList brushList ) {
    idBrushList retVal;
    memset(&retVal, 0, sizeof(idBrushList));
    Sys_Printf("idBrushList idAASBuild::AddBrushesForMapFile( const idMapFile * mapFile, idBrushList brushList )\r\n");
    return retVal;
}


/*
============
idAASBuild::CheckForEntities
============
*/
bool idAASBuild::CheckForEntities( const idMapFile *mapFile, idStrList &entityClassNames ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASBuild::CheckForEntities( const idMapFile *mapFile, idStrList &entityClassNames )\r\n");
    return retVal;
}


/*
============
MergeAllowed
============
*/
bool MergeAllowed( idBrush *b1, idBrush *b2 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MergeAllowed( idBrush *b1, idBrush *b2 )\r\n");
    return retVal;
}


/*
============
ExpandedChopAllowed
============
*/
bool ExpandedChopAllowed( idBrush *b1, idBrush *b2 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool ExpandedChopAllowed( idBrush *b1, idBrush *b2 )\r\n");
    return retVal;
}


/*
============
ExpandedMergeAllowed
============
*/
bool ExpandedMergeAllowed( idBrush *b1, idBrush *b2 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool ExpandedMergeAllowed( idBrush *b1, idBrush *b2 )\r\n");
    return retVal;
}


/*
============
idAASBuild::ChangeMultipleBoundingBoxContents
============
*/
void idAASBuild::ChangeMultipleBoundingBoxContents_r( idBrushBSPNode *node, int mask ) {
    Sys_Printf("void idAASBuild::ChangeMultipleBoundingBoxContents_r( idBrushBSPNode *node, int mask )\r\n");
}


/*
============
idAASBuild::Build
============
*/
bool idAASBuild::Build( const idStr &fileName, const idAASSettings *settings ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASBuild::Build( const idStr &fileName, const idAASSettings *settings )\r\n");
    return retVal;
}


/*
============
idAASBuild::BuildReachability
============
*/
bool idAASBuild::BuildReachability( const idStr &fileName, const idAASSettings *settings ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASBuild::BuildReachability( const idStr &fileName, const idAASSettings *settings )\r\n");
    return retVal;
}


/*
============
ParseOptions
============
*/
int ParseOptions( const idCmdArgs &args, idAASSettings &settings ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int ParseOptions( const idCmdArgs &args, idAASSettings &settings )\r\n");
    return retVal;
}


/*
============
RunAAS_f
============
*/
void RunAAS_f( const idCmdArgs &args ) {
    Sys_Printf("void RunAAS_f( const idCmdArgs &args )\r\n");
}


/*
============
RunAASDir_f
============
*/
void RunAASDir_f( const idCmdArgs &args ) {
    Sys_Printf("void RunAASDir_f( const idCmdArgs &args )\r\n");
}


/*
============
RunReach_f
============
*/
void RunReach_f( const idCmdArgs &args ) {
    Sys_Printf("void RunReach_f( const idCmdArgs &args )\r\n");
}

