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

idVec2 vec2_origin( 0.0f, 0.0f );
idVec3 vec3_origin( 0.0f, 0.0f, 0.0f );
idVec4 vec4_origin( 0.0f, 0.0f, 0.0f, 0.0f );
idVec5 vec5_origin( 0.0f, 0.0f, 0.0f, 0.0f, 0.0f );
idVec6 vec6_origin( 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f );
idVec6 vec6_infinity( idMath::INFINITY, idMath::INFINITY, idMath::INFINITY, idMath::INFINITY, idMath::INFINITY, idMath::INFINITY );


//===============================================================
//
//	idVec2
//
//===============================================================

/*
=============
idVec2::ToString
=============
*/
const char *idVec2::ToString( int precision ) const {
    Sys_Printf("char *idVec2::ToString( int precision )\r\n");
    return NULL;
}


/*
=============
Lerp

Linearly inperpolates one vector to another.
=============
*/
void idVec2::Lerp( const idVec2 &v1, const idVec2 &v2, const float l ) {
    Sys_Printf("void idVec2::Lerp( const idVec2 &v1, const idVec2 &v2, const float l )\r\n");
}



//===============================================================
//
//	idVec3
//
//===============================================================

/*
=============
idVec3::ToYaw
=============
*/
float idVec3::ToYaw( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idVec3::ToYaw( void )\r\n");
    return retVal;
}


/*
=============
idVec3::ToPitch
=============
*/
float idVec3::ToPitch( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idVec3::ToPitch( void )\r\n");
    return retVal;
}


/*
=============
idVec3::ToAngles
=============
*/
idAngles idVec3::ToAngles( void ) const {
    idAngles retVal;
    memset(&retVal, 0, sizeof(idAngles));
    Sys_Printf("idAngles idVec3::ToAngles( void )\r\n");
    return retVal;
}


/*
=============
idVec3::ToPolar
=============
*/
idPolar3 idVec3::ToPolar( void ) const {
    idPolar3 retVal;
    memset(&retVal, 0, sizeof(idPolar3));
    Sys_Printf("idPolar3 idVec3::ToPolar( void )\r\n");
    return retVal;
}


/*
=============
idVec3::ToMat3
=============
*/
idMat3 idVec3::ToMat3( void ) const {
    idMat3 retVal;
    memset(&retVal, 0, sizeof(idMat3));
    Sys_Printf("idMat3 idVec3::ToMat3( void )\r\n");
    return retVal;
}


/*
=============
idVec3::ToString
=============
*/
const char *idVec3::ToString( int precision ) const {
    Sys_Printf("char *idVec3::ToString( int precision )\r\n");
    return NULL;
}


/*
=============
Lerp

Linearly inperpolates one vector to another.
=============
*/
void idVec3::Lerp( const idVec3 &v1, const idVec3 &v2, const float l ) {
    Sys_Printf("void idVec3::Lerp( const idVec3 &v1, const idVec3 &v2, const float l )\r\n");
}


/*
=============
SLerp

Spherical linear interpolation from v1 to v2.
Vectors are expected to be normalized.
=============
*/
#define LERP_DELTA 1e-6

void idVec3::SLerp( const idVec3 &v1, const idVec3 &v2, const float t ) {
    Sys_Printf("void idVec3::SLerp( const idVec3 &v1, const idVec3 &v2, const float t )\r\n");
}


/*
=============
ProjectSelfOntoSphere

Projects the z component onto a sphere.
=============
*/
void idVec3::ProjectSelfOntoSphere( const float radius ) {
    Sys_Printf("void idVec3::ProjectSelfOntoSphere( const float radius )\r\n");
}




//===============================================================
//
//	idVec4
//
//===============================================================

/*
=============
idVec4::ToString
=============
*/
const char *idVec4::ToString( int precision ) const {
    Sys_Printf("char *idVec4::ToString( int precision )\r\n");
    return NULL;
}


/*
=============
Lerp

Linearly inperpolates one vector to another.
=============
*/
void idVec4::Lerp( const idVec4 &v1, const idVec4 &v2, const float l ) {
    Sys_Printf("void idVec4::Lerp( const idVec4 &v1, const idVec4 &v2, const float l )\r\n");
}



//===============================================================
//
//	idVec5
//
//===============================================================

/*
=============
idVec5::ToString
=============
*/
const char *idVec5::ToString( int precision ) const {
    Sys_Printf("char *idVec5::ToString( int precision )\r\n");
    return NULL;
}


/*
=============
idVec5::Lerp
=============
*/
void idVec5::Lerp( const idVec5 &v1, const idVec5 &v2, const float l ) {
    Sys_Printf("void idVec5::Lerp( const idVec5 &v1, const idVec5 &v2, const float l )\r\n");
}



//===============================================================
//
//	idVec6
//
//===============================================================

/*
=============
idVec6::ToString
=============
*/
const char *idVec6::ToString( int precision ) const {
    Sys_Printf("char *idVec6::ToString( int precision )\r\n");
    return NULL;
}



//===============================================================
//
//	idVecX
//
//===============================================================

float	idVecX::temp[VECX_MAX_TEMP+4];
float *	idVecX::tempPtr = (float *) ( ( (int) idVecX::temp + 15 ) & ~15 );
int		idVecX::tempIndex = 0;

/*
=============
idVecX::ToString
=============
*/
const char *idVecX::ToString( int precision ) const {
    Sys_Printf("char *idVecX::ToString( int precision )\r\n");
    return NULL;
}

