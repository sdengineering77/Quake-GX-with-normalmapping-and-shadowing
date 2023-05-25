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


const float	idMath::PI				= 3.14159265358979323846f;
const float	idMath::TWO_PI			= 2.0f * PI;
const float	idMath::HALF_PI			= 0.5f * PI;
const float	idMath::ONEFOURTH_PI	= 0.25f * PI;
const float idMath::E				= 2.71828182845904523536f;
const float idMath::SQRT_TWO		= 1.41421356237309504880f;
const float idMath::SQRT_THREE		= 1.73205080756887729352f;
const float	idMath::SQRT_1OVER2		= 0.70710678118654752440f;
const float	idMath::SQRT_1OVER3		= 0.57735026918962576450f;
const float	idMath::M_DEG2RAD		= PI / 180.0f;
const float	idMath::M_RAD2DEG		= 180.0f / PI;
const float	idMath::M_SEC2MS		= 1000.0f;
const float	idMath::M_MS2SEC		= 0.001f;
const float	idMath::INFINITY		= 1e30f;
const float idMath::FLT_EPSILON		= 1.192092896e-07f;

bool		idMath::initialized		= false;
dword		idMath::iSqrt[SQRT_TABLE_SIZE];		// inverse square root lookup table

/*
===============
idMath::Init
===============
*/
void idMath::Init( void ) {
    Sys_Printf("void idMath::Init( void )\r\n");
}


/*
================
idMath::FloatToBits
================
*/
int idMath::FloatToBits( float f, int exponentBits, int mantissaBits ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMath::FloatToBits( float f, int exponentBits, int mantissaBits )\r\n");
    return retVal;
}


/*
================
idMath::BitsToFloat
================
*/
float idMath::BitsToFloat( int i, int exponentBits, int mantissaBits ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idMath::BitsToFloat( int i, int exponentBits, int mantissaBits )\r\n");
    return retVal;
}

