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


/*
============
idRotation::ToAngles
============
*/
idAngles idRotation::ToAngles( void ) const {
    idAngles retVal;
    memset(&retVal, 0, sizeof(idAngles));
    Sys_Printf("idAngles idRotation::ToAngles( void )\r\n");
    return retVal;
}


/*
============
idRotation::ToQuat
============
*/
idQuat idRotation::ToQuat( void ) const {
    idQuat retVal;
    memset(&retVal, 0, sizeof(idQuat));
    Sys_Printf("idQuat idRotation::ToQuat( void )\r\n");
    return retVal;
}


/*
============
idRotation::toMat3
============
*/
const idMat3 &idRotation::ToMat3( void ) const {
	float wx, wy, wz;
	float xx, yy, yz;
	float xy, xz, zz;
	float x2, y2, z2;
	float a, c, s, x, y, z;

	if ( axisValid ) {
		return axis;
	}

	a = angle * ( idMath::M_DEG2RAD * 0.5f );
	idMath::SinCos( a, s, c );

	x = vec[0] * s;
	y = vec[1] * s;
	z = vec[2] * s;

	x2 = x + x;
	y2 = y + y;
	z2 = z + z;

	xx = x * x2;
	xy = x * y2;
	xz = x * z2;

	yy = y * y2;
	yz = y * z2;
	zz = z * z2;

	wx = c * x2;
	wy = c * y2;
	wz = c * z2;

	axis[ 0 ][ 0 ] = 1.0f - ( yy + zz );
	axis[ 0 ][ 1 ] = xy - wz;
	axis[ 0 ][ 2 ] = xz + wy;

	axis[ 1 ][ 0 ] = xy + wz;
	axis[ 1 ][ 1 ] = 1.0f - ( xx + zz );
	axis[ 1 ][ 2 ] = yz - wx;

	axis[ 2 ][ 0 ] = xz - wy;
	axis[ 2 ][ 1 ] = yz + wx;
	axis[ 2 ][ 2 ] = 1.0f - ( xx + yy );

	axisValid = true;

	return axis;
}

/*
============
idRotation::ToMat4
============
*/
idMat4 idRotation::ToMat4( void ) const {
    idMat4 retVal;
    memset(&retVal, 0, sizeof(idMat4));
    Sys_Printf("idMat4 idRotation::ToMat4( void )\r\n");
    return retVal;
}


/*
============
idRotation::ToAngularVelocity
============
*/
idVec3 idRotation::ToAngularVelocity( void ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idRotation::ToAngularVelocity( void )\r\n");
    return retVal;
}


/*
============
idRotation::Normalize180
============
*/
void idRotation::Normalize180( void ) {
    Sys_Printf("void idRotation::Normalize180( void )\r\n");
}


/*
============
idRotation::Normalize360
============
*/
void idRotation::Normalize360( void ) {
    Sys_Printf("void idRotation::Normalize360( void )\r\n");
}

