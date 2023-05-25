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
#include "AASReach.h"

#define INSIDEUNITS							2.0f
#define INSIDEUNITS_WALKEND					0.5f
#define INSIDEUNITS_WALKSTART				0.1f
#define INSIDEUNITS_SWIMEND					0.5f
#define INSIDEUNITS_FLYEND					0.5f
#define INSIDEUNITS_WATERJUMP				15.0f


/*
================
idAASReach::ReachabilityExists
================
*/
bool idAASReach::ReachabilityExists( int fromAreaNum, int toAreaNum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASReach::ReachabilityExists( int fromAreaNum, int toAreaNum )\r\n");
    return retVal;
}


/*
================
idAASReach::CanSwimInArea
================
*/
ID_INLINE bool idAASReach::CanSwimInArea( int areaNum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASReach::CanSwimInArea( int areaNum )\r\n");
    return retVal;
}


/*
================
idAASReach::AreaHasFloor
================
*/
ID_INLINE bool idAASReach::AreaHasFloor( int areaNum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASReach::AreaHasFloor( int areaNum )\r\n");
    return retVal;
}


/*
================
idAASReach::AreaIsClusterPortal
================
*/
ID_INLINE bool idAASReach::AreaIsClusterPortal( int areaNum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASReach::AreaIsClusterPortal( int areaNum )\r\n");
    return retVal;
}


/*
================
idAASReach::AddReachabilityToArea
================
*/
void idAASReach::AddReachabilityToArea( idReachability *reach, int areaNum ) {
    Sys_Printf("void idAASReach::AddReachabilityToArea( idReachability *reach, int areaNum )\r\n");
}


/*
================
idAASReach::Reachability_Fly
================
*/
void idAASReach::Reachability_Fly( int areaNum ) {
    Sys_Printf("void idAASReach::Reachability_Fly( int areaNum )\r\n");
}


/*
================
idAASReach::Reachability_Swim
================
*/
void idAASReach::Reachability_Swim( int areaNum ) {
    Sys_Printf("void idAASReach::Reachability_Swim( int areaNum )\r\n");
}


/*
================
idAASReach::Reachability_EqualFloorHeight
================
*/
void idAASReach::Reachability_EqualFloorHeight( int areaNum ) {
    Sys_Printf("void idAASReach::Reachability_EqualFloorHeight( int areaNum )\r\n");
}


/*
================
idAASReach::Reachability_Step_Barrier_WaterJump_WalkOffLedge
================
*/
bool idAASReach::Reachability_Step_Barrier_WaterJump_WalkOffLedge( int area1num, int area2num ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASReach::Reachability_Step_Barrier_WaterJump_WalkOffLedge( int area1num, int area2num )\r\n");
    return retVal;
}


/*
================
idAASReach::Reachability_WalkOffLedge
================
*/
void idAASReach::Reachability_WalkOffLedge( int areaNum ) {
    Sys_Printf("void idAASReach::Reachability_WalkOffLedge( int areaNum )\r\n");
}


/*
================
idAASReach::FlagReachableAreas
================
*/
void idAASReach::FlagReachableAreas( idAASFileLocal *file ) {
    Sys_Printf("void idAASReach::FlagReachableAreas( idAASFileLocal *file )\r\n");
}


/*
================
idAASReach::Build
================
*/
bool idAASReach::Build( const idMapFile *mapFile, idAASFileLocal *file ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASReach::Build( const idMapFile *mapFile, idAASFileLocal *file )\r\n");
    return retVal;
}

