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

#include "../precompiled.h"
#pragma hdrstop

idBox box_zero( vec3_zero, vec3_zero, mat3_identity );

/*
            4---{4}---5
 +         /|        /|
 Z      {7} {8}   {5} |
 -     /    |    /    {9}
      7--{6}----6     |
      |     |   |     |
    {11}    0---|-{0}-1
      |    /    |    /       -
      | {3}  {10} {1}       Y
      |/        |/         +
      3---{2}---2

	    - X +

  plane bits:
  0 = min x
  1 = max x
  2 = min y
  3 = max y
  4 = min z
  5 = max z

*/

/*
static int boxVertPlanes[8] = {
	( (1<<0) | (1<<2) | (1<<4) ),
	( (1<<1) | (1<<2) | (1<<4) ),
	( (1<<1) | (1<<3) | (1<<4) ),
	( (1<<0) | (1<<3) | (1<<4) ),
	( (1<<0) | (1<<2) | (1<<5) ),
	( (1<<1) | (1<<2) | (1<<5) ),
	( (1<<1) | (1<<3) | (1<<5) ),
	( (1<<0) | (1<<3) | (1<<5) )
};

static int boxVertEdges[8][3] = {
	// bottom
	{ 3, 0, 8 },
	{ 0, 1, 9 },
	{ 1, 2, 10 },
	{ 2, 3, 11 },
	// top
	{ 7, 4, 8 },
	{ 4, 5, 9 },
	{ 5, 6, 10 },
	{ 6, 7, 11 }
};

static int boxEdgePlanes[12][2] = {
	// bottom
	{ 4, 2 },
	{ 4, 1 },
	{ 4, 3 },
	{ 4, 0 },
	// top
	{ 5, 2 },
	{ 5, 1 },
	{ 5, 3 },
	{ 5, 0 },
	// sides
	{ 0, 2 },
	{ 2, 1 },
	{ 1, 3 },
	{ 3, 0 }
};

static int boxEdgeVerts[12][2] = {
	// bottom
	{ 0, 1 },
	{ 1, 2 },
	{ 2, 3 },
	{ 3, 0 },
	// top
	{ 4, 5 },
	{ 5, 6 },
	{ 6, 7 },
	{ 7, 4 },
	// sides
	{ 0, 4 },
	{ 1, 5 },
	{ 2, 6 },
	{ 3, 7 }
};
*/

static int boxPlaneBitsSilVerts[64][7] = {
	{ 0, 0, 0, 0, 0, 0, 0 }, // 000000 = 0
	{ 4, 7, 4, 0, 3, 0, 0 }, // 000001 = 1
	{ 4, 5, 6, 2, 1, 0, 0 }, // 000010 = 2
	{ 0, 0, 0, 0, 0, 0, 0 }, // 000011 = 3
	{ 4, 4, 5, 1, 0, 0, 0 }, // 000100 = 4
	{ 6, 3, 7, 4, 5, 1, 0 }, // 000101 = 5
	{ 6, 4, 5, 6, 2, 1, 0 }, // 000110 = 6
	{ 0, 0, 0, 0, 0, 0, 0 }, // 000111 = 7
	{ 4, 6, 7, 3, 2, 0, 0 }, // 001000 = 8
	{ 6, 6, 7, 4, 0, 3, 2 }, // 001001 = 9
	{ 6, 5, 6, 7, 3, 2, 1 }, // 001010 = 10
	{ 0, 0, 0, 0, 0, 0, 0 }, // 001011 = 11
	{ 0, 0, 0, 0, 0, 0, 0 }, // 001100 = 12
	{ 0, 0, 0, 0, 0, 0, 0 }, // 001101 = 13
	{ 0, 0, 0, 0, 0, 0, 0 }, // 001110 = 14
	{ 0, 0, 0, 0, 0, 0, 0 }, // 001111 = 15
	{ 4, 0, 1, 2, 3, 0, 0 }, // 010000 = 16
	{ 6, 0, 1, 2, 3, 7, 4 }, // 010001 = 17
	{ 6, 3, 2, 6, 5, 1, 0 }, // 010010 = 18
	{ 0, 0, 0, 0, 0, 0, 0 }, // 010011 = 19
	{ 6, 1, 2, 3, 0, 4, 5 }, // 010100 = 20
	{ 6, 1, 2, 3, 7, 4, 5 }, // 010101 = 21
	{ 6, 2, 3, 0, 4, 5, 6 }, // 010110 = 22
	{ 0, 0, 0, 0, 0, 0, 0 }, // 010111 = 23
	{ 6, 0, 1, 2, 6, 7, 3 }, // 011000 = 24
	{ 6, 0, 1, 2, 6, 7, 4 }, // 011001 = 25
	{ 6, 0, 1, 5, 6, 7, 3 }, // 011010 = 26
	{ 0, 0, 0, 0, 0, 0, 0 }, // 011011 = 27
	{ 0, 0, 0, 0, 0, 0, 0 }, // 011100 = 28
	{ 0, 0, 0, 0, 0, 0, 0 }, // 011101 = 29
	{ 0, 0, 0, 0, 0, 0, 0 }, // 011110 = 30
	{ 0, 0, 0, 0, 0, 0, 0 }, // 011111 = 31
	{ 4, 7, 6, 5, 4, 0, 0 }, // 100000 = 32
	{ 6, 7, 6, 5, 4, 0, 3 }, // 100001 = 33
	{ 6, 5, 4, 7, 6, 2, 1 }, // 100010 = 34
	{ 0, 0, 0, 0, 0, 0, 0 }, // 100011 = 35
	{ 6, 4, 7, 6, 5, 1, 0 }, // 100100 = 36
	{ 6, 3, 7, 6, 5, 1, 0 }, // 100101 = 37
	{ 6, 4, 7, 6, 2, 1, 0 }, // 100110 = 38
	{ 0, 0, 0, 0, 0, 0, 0 }, // 100111 = 39
	{ 6, 6, 5, 4, 7, 3, 2 }, // 101000 = 40
	{ 6, 6, 5, 4, 0, 3, 2 }, // 101001 = 41
	{ 6, 5, 4, 7, 3, 2, 1 }, // 101010 = 42
	{ 0, 0, 0, 0, 0, 0, 0 }, // 101011 = 43
	{ 0, 0, 0, 0, 0, 0, 0 }, // 101100 = 44
	{ 0, 0, 0, 0, 0, 0, 0 }, // 101101 = 45
	{ 0, 0, 0, 0, 0, 0, 0 }, // 101110 = 46
	{ 0, 0, 0, 0, 0, 0, 0 }, // 101111 = 47
	{ 0, 0, 0, 0, 0, 0, 0 }, // 110000 = 48
	{ 0, 0, 0, 0, 0, 0, 0 }, // 110001 = 49
	{ 0, 0, 0, 0, 0, 0, 0 }, // 110010 = 50
	{ 0, 0, 0, 0, 0, 0, 0 }, // 110011 = 51
	{ 0, 0, 0, 0, 0, 0, 0 }, // 110100 = 52
	{ 0, 0, 0, 0, 0, 0, 0 }, // 110101 = 53
	{ 0, 0, 0, 0, 0, 0, 0 }, // 110110 = 54
	{ 0, 0, 0, 0, 0, 0, 0 }, // 110111 = 55
	{ 0, 0, 0, 0, 0, 0, 0 }, // 111000 = 56
	{ 0, 0, 0, 0, 0, 0, 0 }, // 111001 = 57
	{ 0, 0, 0, 0, 0, 0, 0 }, // 111010 = 58
	{ 0, 0, 0, 0, 0, 0, 0 }, // 111011 = 59
	{ 0, 0, 0, 0, 0, 0, 0 }, // 111100 = 60
	{ 0, 0, 0, 0, 0, 0, 0 }, // 111101 = 61
	{ 0, 0, 0, 0, 0, 0, 0 }, // 111110 = 62
	{ 0, 0, 0, 0, 0, 0, 0 }, // 111111 = 63
};


/*
============
idBox::AddPoint
============
*/
bool idBox::AddPoint( const idVec3 &v ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBox::AddPoint( const idVec3 &v )\r\n");
    return retVal;
}


/*
============
idBox::AddBox
============
*/
bool idBox::AddBox( const idBox &a ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBox::AddBox( const idBox &a )\r\n");
    return retVal;
}


/*
================
idBox::PlaneDistance
================
*/
float idBox::PlaneDistance( const idPlane &plane ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idBox::PlaneDistance( const idPlane &plane )\r\n");
    return retVal;
}


/*
================
idBox::PlaneSide
================
*/
int idBox::PlaneSide( const idPlane &plane, const float epsilon ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBox::PlaneSide( const idPlane &plane, const float epsilon )\r\n");
    return retVal;
}


/*
============
idBox::IntersectsBox
============
*/
bool idBox::IntersectsBox( const idBox &a ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBox::IntersectsBox( const idBox &a )\r\n");
    return retVal;
}


/*
============
idBox::LineIntersection

  Returns true if the line intersects the box between the start and end point.
============
*/
bool idBox::LineIntersection( const idVec3 &start, const idVec3 &end ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBox::LineIntersection( const idVec3 &start, const idVec3 &end )\r\n");
    return retVal;
}


/*
============
BoxPlaneClip
============
*/
static bool BoxPlaneClip( const float denom, const float numer, float &scale0, float &scale1 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool BoxPlaneClip( const float denom, const float numer, float &scale0, float &scale1 )\r\n");
    return retVal;
}


/*
============
idBox::RayIntersection

  Returns true if the ray intersects the box.
  The ray can intersect the box in both directions from the start point.
  If start is inside the box then scale1 < 0 and scale2 > 0.
============
*/
bool idBox::RayIntersection( const idVec3 &start, const idVec3 &dir, float &scale1, float &scale2 ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBox::RayIntersection( const idVec3 &start, const idVec3 &dir, float &scale1, float &scale2 )\r\n");
    return retVal;
}


/*
============
idBox::FromPoints

  Tight box for a collection of points.
============
*/
void idBox::FromPoints( const idVec3 *points, const int numPoints ) {
    Sys_Printf("void idBox::FromPoints( const idVec3 *points, const int numPoints )\r\n");
}


/*
============
idBox::FromPointTranslation

  Most tight box for the translational movement of the given point.
============
*/
void idBox::FromPointTranslation( const idVec3 &point, const idVec3 &translation ) {
    Sys_Printf("void idBox::FromPointTranslation( const idVec3 &point, const idVec3 &translation )\r\n");
}


/*
============
idBox::FromBoxTranslation

  Most tight box for the translational movement of the given box.
============
*/
void idBox::FromBoxTranslation( const idBox &box, const idVec3 &translation ) {
    Sys_Printf("void idBox::FromBoxTranslation( const idBox &box, const idVec3 &translation )\r\n");
}


/*
============
idBox::FromPointRotation

  Most tight bounds for the rotational movement of the given point.
============
*/
void idBox::FromPointRotation( const idVec3 &point, const idRotation &rotation ) {
    Sys_Printf("void idBox::FromPointRotation( const idVec3 &point, const idRotation &rotation )\r\n");
}


/*
============
idBox::FromBoxRotation

  Most tight box for the rotational movement of the given box.
============
*/
void idBox::FromBoxRotation( const idBox &box, const idRotation &rotation ) {
    Sys_Printf("void idBox::FromBoxRotation( const idBox &box, const idRotation &rotation )\r\n");
}


/*
============
idBox::ToPoints
============
*/
void idBox::ToPoints( idVec3 points[8] ) const {
    Sys_Printf("void idBox::ToPoints( idVec3 points[8] )\r\n");
}


/*
============
idBox::GetProjectionSilhouetteVerts
============
*/
int idBox::GetProjectionSilhouetteVerts( const idVec3 &projectionOrigin, idVec3 silVerts[6] ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBox::GetProjectionSilhouetteVerts( const idVec3 &projectionOrigin, idVec3 silVerts[6] )\r\n");
    return retVal;
}


/*
============
idBox::GetParallelProjectionSilhouetteVerts
============
*/
int idBox::GetParallelProjectionSilhouetteVerts( const idVec3 &projectionDir, idVec3 silVerts[6] ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBox::GetParallelProjectionSilhouetteVerts( const idVec3 &projectionDir, idVec3 silVerts[6] )\r\n");
    return retVal;
}

