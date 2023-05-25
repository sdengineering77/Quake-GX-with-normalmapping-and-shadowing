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

#include "AAS_local.h"
#include "../Game_local.h"		// for print and error

#define CACHETYPE_AREA				1
#define CACHETYPE_PORTAL			2

#define MAX_ROUTING_CACHE_MEMORY	(2*1024*1024)

#define LEDGE_TRAVELTIME_PANALTY	250

/*
============
idRoutingCache::idRoutingCache
============
*/
idRoutingCache::idRoutingCache( int size ) {
	areaNum = 0;
	cluster = 0;
	next = prev = NULL;
	time_next = time_prev = NULL;
	travelFlags = 0;
	startTravelTime = 0;
	type = 0;
	this->size = size;
	reachabilities = new byte[size];
	memset( reachabilities, 0, size * sizeof( reachabilities[0] ) );
	travelTimes = new unsigned short[size];
	memset( travelTimes, 0, size * sizeof( travelTimes[0] ) );
}

/*
============
idRoutingCache::~idRoutingCache
============
*/
idRoutingCache::~idRoutingCache( void ) {
	delete [] reachabilities;
	delete [] travelTimes;
}

/*
============
idRoutingCache::Size
============
*/
int idRoutingCache::Size( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idRoutingCache::Size( void )\r\n");
    return retVal;
}


/*
============
idAASLocal::AreaTravelTime
============
*/
unsigned short idAASLocal::AreaTravelTime( int areaNum, const idVec3 &start, const idVec3 &end ) const {
    short retVal;
    memset(&retVal, 0, sizeof(short));
    Sys_Printf("short idAASLocal::AreaTravelTime( int areaNum, const idVec3 &start, const idVec3 &end )\r\n");
    return retVal;
}


/*
============
idAASLocal::CalculateAreaTravelTimes
============
*/
void idAASLocal::CalculateAreaTravelTimes(void) {
    Sys_Printf("void idAASLocal::CalculateAreaTravelTimes(void)\r\n");
}


/*
============
idAASLocal::DeleteAreaTravelTimes
============
*/
void idAASLocal::DeleteAreaTravelTimes( void ) {
    Sys_Printf("void idAASLocal::DeleteAreaTravelTimes( void )\r\n");
}


/*
============
idAASLocal::SetupRoutingCache
============
*/
void idAASLocal::SetupRoutingCache( void ) {
    Sys_Printf("void idAASLocal::SetupRoutingCache( void )\r\n");
}


/*
============
idAASLocal::DeleteClusterCache
============
*/
void idAASLocal::DeleteClusterCache( int clusterNum ) {
    Sys_Printf("void idAASLocal::DeleteClusterCache( int clusterNum )\r\n");
}


/*
============
idAASLocal::DeletePortalCache
============
*/
void idAASLocal::DeletePortalCache( void ) {
    Sys_Printf("void idAASLocal::DeletePortalCache( void )\r\n");
}


/*
============
idAASLocal::ShutdownRoutingCache
============
*/
void idAASLocal::ShutdownRoutingCache( void ) {
    Sys_Printf("void idAASLocal::ShutdownRoutingCache( void )\r\n");
}


/*
============
idAASLocal::SetupRouting
============
*/
bool idAASLocal::SetupRouting( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASLocal::SetupRouting( void )\r\n");
    return retVal;
}


/*
============
idAASLocal::ShutdownRouting
============
*/
void idAASLocal::ShutdownRouting( void ) {
    Sys_Printf("void idAASLocal::ShutdownRouting( void )\r\n");
}


/*
============
idAASLocal::RoutingStats
============
*/
void idAASLocal::RoutingStats( void ) const {
    Sys_Printf("void idAASLocal::RoutingStats( void )\r\n");
}


/*
============
idAASLocal::RemoveRoutingCacheUsingArea
============
*/
void idAASLocal::RemoveRoutingCacheUsingArea( int areaNum ) {
    Sys_Printf("void idAASLocal::RemoveRoutingCacheUsingArea( int areaNum )\r\n");
}


/*
============
idAASLocal::DisableArea
============
*/
void idAASLocal::DisableArea( int areaNum ) {
    Sys_Printf("void idAASLocal::DisableArea( int areaNum )\r\n");
}


/*
============
idAASLocal::EnableArea
============
*/
void idAASLocal::EnableArea( int areaNum ) {
    Sys_Printf("void idAASLocal::EnableArea( int areaNum )\r\n");
}


/*
============
idAASLocal::SetAreaState_r
============
*/
bool idAASLocal::SetAreaState_r( int nodeNum, const idBounds &bounds, const int areaContents, bool disabled ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASLocal::SetAreaState_r( int nodeNum, const idBounds &bounds, const int areaContents, bool disabled )\r\n");
    return retVal;
}


/*
============
idAASLocal::SetAreaState
============
*/
bool idAASLocal::SetAreaState( const idBounds &bounds, const int areaContents, bool disabled ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASLocal::SetAreaState( const idBounds &bounds, const int areaContents, bool disabled )\r\n");
    return retVal;
}


/*
============
idAASLocal::GetBoundsAreas_r
============
*/
void idAASLocal::GetBoundsAreas_r( int nodeNum, const idBounds &bounds, idList<int> &areas ) const {
    Sys_Printf("void idAASLocal::GetBoundsAreas_r( int nodeNum, const idBounds &bounds, idList<int> &areas )\r\n");
}


/*
============
idAASLocal::SetObstacleState
============
*/
void idAASLocal::SetObstacleState( const idRoutingObstacle *obstacle, bool enable ) {
    Sys_Printf("void idAASLocal::SetObstacleState( const idRoutingObstacle *obstacle, bool enable )\r\n");
}


/*
============
idAASLocal::AddObstacle
============
*/
aasHandle_t idAASLocal::AddObstacle( const idBounds &bounds ) {
    aasHandle_t retVal;
    memset(&retVal, 0, sizeof(aasHandle_t));
    Sys_Printf("aasHandle_t idAASLocal::AddObstacle( const idBounds &bounds )\r\n");
    return retVal;
}


/*
============
idAASLocal::RemoveObstacle
============
*/
void idAASLocal::RemoveObstacle( const aasHandle_t handle ) {
    Sys_Printf("void idAASLocal::RemoveObstacle( const aasHandle_t handle )\r\n");
}


/*
============
idAASLocal::RemoveAllObstacles
============
*/
void idAASLocal::RemoveAllObstacles( void ) {
    Sys_Printf("void idAASLocal::RemoveAllObstacles( void )\r\n");
}


/*
============
idAASLocal::LinkCache

  link the cache in the cache list sorted from oldest to newest cache
============
*/
void idAASLocal::LinkCache( idRoutingCache *cache ) const {
    Sys_Printf("void idAASLocal::LinkCache( idRoutingCache *cache )\r\n");
}


/*
============
idAASLocal::UnlinkCache
============
*/
void idAASLocal::UnlinkCache( idRoutingCache *cache ) const {
    Sys_Printf("void idAASLocal::UnlinkCache( idRoutingCache *cache )\r\n");
}


/*
============
idAASLocal::DeleteOldestCache
============
*/
void idAASLocal::DeleteOldestCache( void ) const {
    Sys_Printf("void idAASLocal::DeleteOldestCache( void )\r\n");
}


/*
============
idAASLocal::GetAreaReachability
============
*/
idReachability *idAASLocal::GetAreaReachability( int areaNum, int reachabilityNum ) const {
    Sys_Printf("idReachability *idAASLocal::GetAreaReachability( int areaNum, int reachabilityNum )\r\n");
    return NULL;
}


/*
============
idAASLocal::ClusterAreaNum
============
*/
ID_INLINE int idAASLocal::ClusterAreaNum( int clusterNum, int areaNum ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAASLocal::ClusterAreaNum( int clusterNum, int areaNum )\r\n");
    return retVal;
}


/*
============
idAASLocal::UpdateAreaRoutingCache
============
*/
void idAASLocal::UpdateAreaRoutingCache( idRoutingCache *areaCache ) const {
    Sys_Printf("void idAASLocal::UpdateAreaRoutingCache( idRoutingCache *areaCache )\r\n");
}


/*
============
idAASLocal::GetAreaRoutingCache
============
*/
idRoutingCache *idAASLocal::GetAreaRoutingCache( int clusterNum, int areaNum, int travelFlags ) const {
    Sys_Printf("idRoutingCache *idAASLocal::GetAreaRoutingCache( int clusterNum, int areaNum, int travelFlags )\r\n");
    return NULL;
}


/*
============
idAASLocal::UpdatePortalRoutingCache
============
*/
void idAASLocal::UpdatePortalRoutingCache( idRoutingCache *portalCache ) const {
    Sys_Printf("void idAASLocal::UpdatePortalRoutingCache( idRoutingCache *portalCache )\r\n");
}


/*
============
idAASLocal::GetPortalRoutingCache
============
*/
idRoutingCache *idAASLocal::GetPortalRoutingCache( int clusterNum, int areaNum, int travelFlags ) const {
    Sys_Printf("idRoutingCache *idAASLocal::GetPortalRoutingCache( int clusterNum, int areaNum, int travelFlags )\r\n");
    return NULL;
}


/*
============
idAASLocal::RouteToGoalArea
============
*/
bool idAASLocal::RouteToGoalArea( int areaNum, const idVec3 origin, int goalAreaNum, int travelFlags, int &travelTime, idReachability **reach ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASLocal::RouteToGoalArea( int areaNum, const idVec3 origin, int goalAreaNum, int travelFlags, int &travelTime, idReachability **reach )\r\n");
    return retVal;
}


/*
============
idAASLocal::TravelTimeToGoalArea
============
*/
int idAASLocal::TravelTimeToGoalArea( int areaNum, const idVec3 &origin, int goalAreaNum, int travelFlags ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAASLocal::TravelTimeToGoalArea( int areaNum, const idVec3 &origin, int goalAreaNum, int travelFlags )\r\n");
    return retVal;
}


/*
============
idAASLocal::FindNearestGoal
============
*/
bool idAASLocal::FindNearestGoal( aasGoal_t &goal, int areaNum, const idVec3 origin, const idVec3 &target, int travelFlags, aasObstacle_t *obstacles, int numObstacles, idAASCallback &callback ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASLocal::FindNearestGoal( aasGoal_t &goal, int areaNum, const idVec3 origin, const idVec3 &target, int travelFlags, aasObstacle_t *obstacles, int numObstacles, idAASCallback &callback )\r\n");
    return retVal;
}

