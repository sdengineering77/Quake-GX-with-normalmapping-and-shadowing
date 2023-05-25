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

/*
===============================================================================

	Dynamic Obstacle Avoidance

	- assumes the AI lives inside a bounding box aligned with the gravity direction
	- obstacles in proximity of the AI are gathered
	- if obstacles are found the AAS walls are also considered as obstacles
	- every obstacle is represented by an oriented bounding box (OBB)
	- an OBB is projected onto a 2D plane orthogonal to AI's gravity direction
	- the 2D windings of the projections are expanded for the AI bbox
	- a path tree is build using clockwise and counter clockwise edge walks along the winding edges
	- the path tree is pruned and optimized
	- the shortest path is chosen for navigation

===============================================================================
*/

const float MAX_OBSTACLE_RADIUS			= 256.0f;
const float PUSH_OUTSIDE_OBSTACLES		= 0.5f;
const float CLIP_BOUNDS_EPSILON			= 10.0f;
const int 	MAX_AAS_WALL_EDGES			= 256;
const int 	MAX_OBSTACLES				= 256;
const int	MAX_PATH_NODES				= 256;
const int 	MAX_OBSTACLE_PATH			= 64;

typedef struct obstacle_s {
	idVec2				bounds[2];
	idWinding2D			winding;
	idEntity *			entity;
} obstacle_t;

typedef struct pathNode_s {
	int					dir;
	idVec2				pos;
	idVec2				delta;
	float				dist;
	int					obstacle;
	int					edgeNum;
	int					numNodes;
	struct pathNode_s *	parent;
	struct pathNode_s *	children[2];
	struct pathNode_s *	next;
	void				Init();
} pathNode_t;

void pathNode_s::Init() {
    Sys_Printf("void pathNode_s::Init()\r\n");
}


idBlockAlloc<pathNode_t, 128>	pathNodeAllocator;


/*
============
LineIntersectsPath
============
*/
bool LineIntersectsPath( const idVec2 &start, const idVec2 &end, const pathNode_t *node ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool LineIntersectsPath( const idVec2 &start, const idVec2 &end, const pathNode_t *node )\r\n");
    return retVal;
}


/*
============
PointInsideObstacle
============
*/
int PointInsideObstacle( const obstacle_t *obstacles, const int numObstacles, const idVec2 &point ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int PointInsideObstacle( const obstacle_t *obstacles, const int numObstacles, const idVec2 &point )\r\n");
    return retVal;
}


/*
============
GetPointOutsideObstacles
============
*/
void GetPointOutsideObstacles( const obstacle_t *obstacles, const int numObstacles, idVec2 &point, int *obstacle, int *edgeNum ) {
    Sys_Printf("void GetPointOutsideObstacles( const obstacle_t *obstacles, const int numObstacles, idVec2 &point, int *obstacle, int *edgeNum )\r\n");
}


/*
============
GetFirstBlockingObstacle
============
*/
bool GetFirstBlockingObstacle( const obstacle_t *obstacles, int numObstacles, int skipObstacle, const idVec2 &startPos, const idVec2 &delta, float &blockingScale, int &blockingObstacle, int &blockingEdgeNum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GetFirstBlockingObstacle( const obstacle_t *obstacles, int numObstacles, int skipObstacle, const idVec2 &startPos, const idVec2 &delta, float &blockingScale, int &blockingObstacle, int &blockingEdgeNum )\r\n");
    return retVal;
}


/*
============
GetObstacles
============
*/
int GetObstacles( const idPhysics *physics, const idAAS *aas, const idEntity *ignore, int areaNum, const idVec3 &startPos, const idVec3 &seekPos, obstacle_t *obstacles, int maxObstacles, idBounds &clipBounds ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int GetObstacles( const idPhysics *physics, const idAAS *aas, const idEntity *ignore, int areaNum, const idVec3 &startPos, const idVec3 &seekPos, obstacle_t *obstacles, int maxObstacles, idBounds &clipBounds )\r\n");
    return retVal;
}


/*
============
FreePathTree_r
============
*/
void FreePathTree_r( pathNode_t *node ) {
    Sys_Printf("void FreePathTree_r( pathNode_t *node )\r\n");
}


/*
============
DrawPathTree
============
*/
void DrawPathTree( const pathNode_t *root, const float height ) {
    Sys_Printf("void DrawPathTree( const pathNode_t *root, const float height )\r\n");
}


/*
============
GetPathNodeDelta
============
*/
bool GetPathNodeDelta( pathNode_t *node, const obstacle_t *obstacles, const idVec2 &seekPos, bool blocked ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GetPathNodeDelta( pathNode_t *node, const obstacle_t *obstacles, const idVec2 &seekPos, bool blocked )\r\n");
    return retVal;
}


/*
============
BuildPathTree
============
*/
pathNode_t *BuildPathTree( const obstacle_t *obstacles, int numObstacles, const idBounds &clipBounds, const idVec2 &startPos, const idVec2 &seekPos, obstaclePath_t &path ) {
    Sys_Printf("pathNode_t *BuildPathTree( const obstacle_t *obstacles, int numObstacles, const idBounds &clipBounds, const idVec2 &startPos, const idVec2 &seekPos, obstaclePath_t &path )\r\n");
    return NULL;
}


/*
============
PrunePathTree
============
*/
void PrunePathTree( pathNode_t *root, const idVec2 &seekPos ) {
    Sys_Printf("void PrunePathTree( pathNode_t *root, const idVec2 &seekPos )\r\n");
}


/*
============
OptimizePath
============
*/
int OptimizePath( const pathNode_t *root, const pathNode_t *leafNode, const obstacle_t *obstacles, int numObstacles, idVec2 optimizedPath[MAX_OBSTACLE_PATH] ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int OptimizePath( const pathNode_t *root, const pathNode_t *leafNode, const obstacle_t *obstacles, int numObstacles, idVec2 optimizedPath[MAX_OBSTACLE_PATH] )\r\n");
    return retVal;
}


/*
============
PathLength
============
*/
float PathLength( idVec2 optimizedPath[MAX_OBSTACLE_PATH], int numPathPoints, const idVec2 &curDir ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float PathLength( idVec2 optimizedPath[MAX_OBSTACLE_PATH], int numPathPoints, const idVec2 &curDir )\r\n");
    return retVal;
}


/*
============
FindOptimalPath

  Returns true if there is a path all the way to the goal.
============
*/
bool FindOptimalPath( const pathNode_t *root, const obstacle_t *obstacles, int numObstacles, const float height, const idVec3 &curDir, idVec3 &seekPos ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool FindOptimalPath( const pathNode_t *root, const obstacle_t *obstacles, int numObstacles, const float height, const idVec3 &curDir, idVec3 &seekPos )\r\n");
    return retVal;
}


/*
============
idAI::FindPathAroundObstacles

  Finds a path around dynamic obstacles using a path tree with clockwise and counter clockwise edge walks.
============
*/
bool idAI::FindPathAroundObstacles( const idPhysics *physics, const idAAS *aas, const idEntity *ignore, const idVec3 &startPos, const idVec3 &seekPos, obstaclePath_t &path ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::FindPathAroundObstacles( const idPhysics *physics, const idAAS *aas, const idEntity *ignore, const idVec3 &startPos, const idVec3 &seekPos, obstaclePath_t &path )\r\n");
    return retVal;
}


/*
============
idAI::FreeObstacleAvoidanceNodes
============
*/
void idAI::FreeObstacleAvoidanceNodes( void ) {
    Sys_Printf("void idAI::FreeObstacleAvoidanceNodes( void )\r\n");
}



/*
===============================================================================

	Path Prediction

	Uses the AAS to quickly and accurately predict a path for a certain
	period of time based on an initial position and velocity.

===============================================================================
*/

const float OVERCLIP			= 1.001f;
const int MAX_FRAME_SLIDE		= 5;

typedef struct pathTrace_s {
	float					fraction;
	idVec3					endPos;
	idVec3					normal;
	const idEntity *		blockingEntity;
} pathTrace_t;

/*
============
PathTrace

  Returns true if a stop event was triggered.
============
*/
bool PathTrace( const idEntity *ent, const idAAS *aas, const idVec3 &start, const idVec3 &end, int stopEvent, struct pathTrace_s &trace, predictedPath_t &path ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool PathTrace( const idEntity *ent, const idAAS *aas, const idVec3 &start, const idVec3 &end, int stopEvent, struct pathTrace_s &trace, predictedPath_t &path )\r\n");
    return retVal;
}


/*
============
idAI::PredictPath

  Can also be used when there is no AAS file available however ledges are not detected.
============
*/
bool idAI::PredictPath( const idEntity *ent, const idAAS *aas, const idVec3 &start, const idVec3 &velocity, int totalTime, int frameTime, int stopEvent, predictedPath_t &path ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::PredictPath( const idEntity *ent, const idAAS *aas, const idVec3 &start, const idVec3 &velocity, int totalTime, int frameTime, int stopEvent, predictedPath_t &path )\r\n");
    return retVal;
}



/*
===============================================================================

	Trajectory Prediction

	Finds the best collision free trajectory for a clip model based on an
	initial position, target position and speed.

===============================================================================
*/

/*
=====================
Ballistics

  get the ideal aim pitch angle in order to hit the target
  also get the time it takes for the projectile to arrive at the target
=====================
*/
typedef struct ballistics_s {
	float				angle;		// angle in degrees in the range [-180, 180]
	float				time;		// time it takes before the projectile arrives
} ballistics_t;

static int Ballistics( const idVec3 &start, const idVec3 &end, float speed, float gravity, ballistics_t bal[2] ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Ballistics( const idVec3 &start, const idVec3 &end, float speed, float gravity, ballistics_t bal[2] )\r\n");
    return retVal;
}


/*
=====================
HeightForTrajectory

Returns the maximum hieght of a given trajectory
=====================
*/
static float HeightForTrajectory( const idVec3 &start, float zVel, float gravity ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float HeightForTrajectory( const idVec3 &start, float zVel, float gravity )\r\n");
    return retVal;
}


/*
=====================
idAI::TestTrajectory
=====================
*/
bool idAI::TestTrajectory( const idVec3 &start, const idVec3 &end, float zVel, float gravity, float time, float max_height, const idClipModel *clip, int clipmask, const idEntity *ignore, const idEntity *targetEntity, int drawtime ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::TestTrajectory( const idVec3 &start, const idVec3 &end, float zVel, float gravity, float time, float max_height, const idClipModel *clip, int clipmask, const idEntity *ignore, const idEntity *targetEntity, int drawtime )\r\n");
    return retVal;
}


/*
=====================
idAI::PredictTrajectory

  returns true if there is a collision free trajectory for the clip model
  aimDir is set to the ideal aim direction in order to hit the target
=====================
*/
bool idAI::PredictTrajectory( const idVec3 &firePos, const idVec3 &target, float projectileSpeed, const idVec3 &projGravity, const idClipModel *clip, int clipmask, float max_height, const idEntity *ignore, const idEntity *targetEntity, int drawtime, idVec3 &aimDir ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::PredictTrajectory( const idVec3 &firePos, const idVec3 &target, float projectileSpeed, const idVec3 &projGravity, const idClipModel *clip, int clipmask, float max_height, const idEntity *ignore, const idEntity *targetEntity, int drawtime, idVec3 &aimDir )\r\n");
    return retVal;
}

