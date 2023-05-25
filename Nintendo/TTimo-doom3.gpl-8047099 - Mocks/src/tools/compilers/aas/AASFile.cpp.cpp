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

#include "AASFile.h"
#include "AASFile_local.h"


/*
===============================================================================

	idReachability

===============================================================================
*/

/*
================
Reachability_Write
================
*/
bool Reachability_Write( idFile *fp, idReachability *reach ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Reachability_Write( idFile *fp, idReachability *reach )\r\n");
    return retVal;
}


/*
================
Reachability_Read
================
*/
bool Reachability_Read( idLexer &src, idReachability *reach ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Reachability_Read( idLexer &src, idReachability *reach )\r\n");
    return retVal;
}


/*
================
idReachability::CopyBase
================
*/
void idReachability::CopyBase( idReachability &reach ) {
    Sys_Printf("void idReachability::CopyBase( idReachability &reach )\r\n");
}



/*
===============================================================================

	idReachability_Special

===============================================================================
*/

/*
================
Reachability_Special_Write
================
*/
bool Reachability_Special_Write( idFile *fp, idReachability_Special *reach ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Reachability_Special_Write( idFile *fp, idReachability_Special *reach )\r\n");
    return retVal;
}


/*
================
Reachability_Special_Read
================
*/
bool Reachability_Special_Read( idLexer &src, idReachability_Special *reach ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Reachability_Special_Read( idLexer &src, idReachability_Special *reach )\r\n");
    return retVal;
}


/*
===============================================================================

	idAASSettings

===============================================================================
*/

/*
============
idAASSettings::idAASSettings
============
*/
idAASSettings::idAASSettings( void ) {
	numBoundingBoxes = 1;
	boundingBoxes[0] = idBounds( idVec3( -16, -16, 0 ), idVec3( 16, 16, 72 ) );
	usePatches = false;
	writeBrushMap = false;
	playerFlood = false;
	noOptimize = false;
	allowSwimReachabilities = false;
	allowFlyReachabilities = false;
	fileExtension = "aas48";
	// physics settings
	gravity = idVec3( 0, 0, -1066 );
	gravityDir = gravity;
	gravityValue = gravityDir.Normalize();
	invGravityDir = -gravityDir;
	maxStepHeight = 14.0f;
	maxBarrierHeight = 32.0f;
	maxWaterJumpHeight = 20.0f;
	maxFallHeight = 64.0f;
	minFloorCos = 0.7f;
	// fixed travel times
	tt_barrierJump = 100;
	tt_startCrouching = 100;
	tt_waterJump = 100;
	tt_startWalkOffLedge = 100;
}

/*
============
idAASSettings::ParseBool
============
*/
bool idAASSettings::ParseBool( idLexer &src, bool &b ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASSettings::ParseBool( idLexer &src, bool &b )\r\n");
    return retVal;
}


/*
============
idAASSettings::ParseInt
============
*/
bool idAASSettings::ParseInt( idLexer &src, int &i ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASSettings::ParseInt( idLexer &src, int &i )\r\n");
    return retVal;
}


/*
============
idAASSettings::ParseFloat
============
*/
bool idAASSettings::ParseFloat( idLexer &src, float &f ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASSettings::ParseFloat( idLexer &src, float &f )\r\n");
    return retVal;
}


/*
============
idAASSettings::ParseVector
============
*/
bool idAASSettings::ParseVector( idLexer &src, idVec3 &vec ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASSettings::ParseVector( idLexer &src, idVec3 &vec )\r\n");
    return retVal;
}


/*
============
idAASSettings::ParseBBoxes
============
*/
bool idAASSettings::ParseBBoxes( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASSettings::ParseBBoxes( idLexer &src )\r\n");
    return retVal;
}


/*
============
idAASSettings::FromParser
============
*/
bool idAASSettings::FromParser( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASSettings::FromParser( idLexer &src )\r\n");
    return retVal;
}


/*
============
idAASSettings::FromFile
============
*/
bool idAASSettings::FromFile( const idStr &fileName ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASSettings::FromFile( const idStr &fileName )\r\n");
    return retVal;
}


/*
============
idAASSettings::FromDict
============
*/
bool idAASSettings::FromDict( const char *name, const idDict *dict ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASSettings::FromDict( const char *name, const idDict *dict )\r\n");
    return retVal;
}



/*
============
idAASSettings::WriteToFile
============
*/
bool idAASSettings::WriteToFile( idFile *fp ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASSettings::WriteToFile( idFile *fp )\r\n");
    return retVal;
}


/*
============
idAASSettings::ValidForBounds
============
*/
bool idAASSettings::ValidForBounds( const idBounds &bounds ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASSettings::ValidForBounds( const idBounds &bounds )\r\n");
    return retVal;
}


/*
============
idAASSettings::ValidEntity
============
*/
bool idAASSettings::ValidEntity( const char *classname ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASSettings::ValidEntity( const char *classname )\r\n");
    return retVal;
}



/*
===============================================================================

	idAASFileLocal

===============================================================================
*/

#define AAS_LIST_GRANULARITY	1024
#define AAS_INDEX_GRANULARITY	4096
#define AAS_PLANE_GRANULARITY	4096
#define AAS_VERTEX_GRANULARITY	4096
#define AAS_EDGE_GRANULARITY	4096

/*
================
idAASFileLocal::idAASFileLocal
================
*/
idAASFileLocal::idAASFileLocal( void ) {
	planeList.SetGranularity( AAS_PLANE_GRANULARITY );
	vertices.SetGranularity( AAS_VERTEX_GRANULARITY );
	edges.SetGranularity( AAS_EDGE_GRANULARITY );
	edgeIndex.SetGranularity( AAS_INDEX_GRANULARITY );
	faces.SetGranularity( AAS_LIST_GRANULARITY );
	faceIndex.SetGranularity( AAS_INDEX_GRANULARITY );
	areas.SetGranularity( AAS_LIST_GRANULARITY );
	nodes.SetGranularity( AAS_LIST_GRANULARITY );
	portals.SetGranularity( AAS_LIST_GRANULARITY );
	portalIndex.SetGranularity( AAS_INDEX_GRANULARITY );
	clusters.SetGranularity( AAS_LIST_GRANULARITY );
}

/*
================
idAASFileLocal::~idAASFileLocal
================
*/
idAASFileLocal::~idAASFileLocal( void ) {
	int i;
	idReachability *reach, *next;

	for ( i = 0; i < areas.Num(); i++ ) {
		for ( reach = areas[i].reach; reach; reach = next ) {
			next = reach->next;
			delete reach;
		}
	}
}

/*
================
idAASFileLocal::Clear
================
*/
void idAASFileLocal::Clear( void ) {
    Sys_Printf("void idAASFileLocal::Clear( void )\r\n");
}


/*
================
idAASFileLocal::Write
================
*/
bool idAASFileLocal::Write( const idStr &fileName, unsigned int mapFileCRC ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASFileLocal::Write( const idStr &fileName, unsigned int mapFileCRC )\r\n");
    return retVal;
}


/*
================
idAASFileLocal::ParseIndex
================
*/
bool idAASFileLocal::ParseIndex( idLexer &src, idList<aasIndex_t> &indexes ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASFileLocal::ParseIndex( idLexer &src, idList<aasIndex_t> &indexes )\r\n");
    return retVal;
}


/*
================
idAASFileLocal::ParsePlanes
================
*/
bool idAASFileLocal::ParsePlanes( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASFileLocal::ParsePlanes( idLexer &src )\r\n");
    return retVal;
}


/*
================
idAASFileLocal::ParseVertices
================
*/
bool idAASFileLocal::ParseVertices( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASFileLocal::ParseVertices( idLexer &src )\r\n");
    return retVal;
}


/*
================
idAASFileLocal::ParseEdges
================
*/
bool idAASFileLocal::ParseEdges( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASFileLocal::ParseEdges( idLexer &src )\r\n");
    return retVal;
}


/*
================
idAASFileLocal::ParseFaces
================
*/
bool idAASFileLocal::ParseFaces( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASFileLocal::ParseFaces( idLexer &src )\r\n");
    return retVal;
}


/*
================
idAASFileLocal::ParseReachabilities
================
*/
bool idAASFileLocal::ParseReachabilities( idLexer &src, int areaNum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASFileLocal::ParseReachabilities( idLexer &src, int areaNum )\r\n");
    return retVal;
}


/*
================
idAASFileLocal::LinkReversedReachability
================
*/
void idAASFileLocal::LinkReversedReachability( void ) {
    Sys_Printf("void idAASFileLocal::LinkReversedReachability( void )\r\n");
}


/*
================
idAASFileLocal::ParseAreas
================
*/
bool idAASFileLocal::ParseAreas( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASFileLocal::ParseAreas( idLexer &src )\r\n");
    return retVal;
}


/*
================
idAASFileLocal::ParseNodes
================
*/
bool idAASFileLocal::ParseNodes( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASFileLocal::ParseNodes( idLexer &src )\r\n");
    return retVal;
}


/*
================
idAASFileLocal::ParsePortals
================
*/
bool idAASFileLocal::ParsePortals( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASFileLocal::ParsePortals( idLexer &src )\r\n");
    return retVal;
}


/*
================
idAASFileLocal::ParseClusters
================
*/
bool idAASFileLocal::ParseClusters( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASFileLocal::ParseClusters( idLexer &src )\r\n");
    return retVal;
}


/*
================
idAASFileLocal::FinishAreas
================
*/
void idAASFileLocal::FinishAreas( void ) {
    Sys_Printf("void idAASFileLocal::FinishAreas( void )\r\n");
}


/*
================
idAASFileLocal::Load
================
*/
bool idAASFileLocal::Load( const idStr &fileName, unsigned int mapFileCRC ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASFileLocal::Load( const idStr &fileName, unsigned int mapFileCRC )\r\n");
    return retVal;
}


/*
================
idAASFileLocal::MemorySize
================
*/
int idAASFileLocal::MemorySize( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAASFileLocal::MemorySize( void )\r\n");
    return retVal;
}


/*
================
idAASFileLocal::PrintInfo
================
*/
void idAASFileLocal::PrintInfo( void ) const {
    Sys_Printf("void idAASFileLocal::PrintInfo( void )\r\n");
}


/*
================
idAASFileLocal::NumReachabilities
================
*/
int idAASFileLocal::NumReachabilities( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAASFileLocal::NumReachabilities( void )\r\n");
    return retVal;
}


/*
================
idAASFileLocal::ReportRoutingEfficiency
================
*/
void idAASFileLocal::ReportRoutingEfficiency( void ) const {
    Sys_Printf("void idAASFileLocal::ReportRoutingEfficiency( void )\r\n");
}


/*
================
idAASFileLocal::DeleteReachabilities
================
*/
void idAASFileLocal::DeleteReachabilities( void ) {
    Sys_Printf("void idAASFileLocal::DeleteReachabilities( void )\r\n");
}


/*
================
idAASFileLocal::DeleteClusters
================
*/
void idAASFileLocal::DeleteClusters( void ) {
    Sys_Printf("void idAASFileLocal::DeleteClusters( void )\r\n");
}

