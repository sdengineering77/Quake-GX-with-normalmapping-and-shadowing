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
=====================
idQuat::ToAngles
=====================
*/
idAngles idQuat::ToAngles( void ) const {
    idAngles retVal;
    memset(&retVal, 0, sizeof(idAngles));
    Sys_Printf("idAngles idQuat::ToAngles( void )\r\n");
    return retVal;
}


/*
=====================
idQuat::ToRotation
=====================
*/
idRotation idQuat::ToRotation( void ) const {
    idRotation retVal;
    memset(&retVal, 0, sizeof(idRotation));
    Sys_Printf("idRotation idQuat::ToRotation( void )\r\n");
    return retVal;
}


/*
=====================
idQuat::ToMat3
=====================
*/
idMat3 idQuat::ToMat3( void ) const {
    idMat3 retVal;
    memset(&retVal, 0, sizeof(idMat3));
    Sys_Printf("idMat3 idQuat::ToMat3( void )\r\n");
    return retVal;
}


/*
=====================
idQuat::ToMat4
=====================
*/
idMat4 idQuat::ToMat4( void ) const {
    idMat4 retVal;
    memset(&retVal, 0, sizeof(idMat4));
    Sys_Printf("idMat4 idQuat::ToMat4( void )\r\n");
    return retVal;
}


/*
=====================
idQuat::ToCQuat
=====================
*/
idCQuat idQuat::ToCQuat( void ) const {
    idCQuat retVal;
    memset(&retVal, 0, sizeof(idCQuat));
    Sys_Printf("idCQuat idQuat::ToCQuat( void )\r\n");
    return retVal;
}


/*
============
idQuat::ToAngularVelocity
============
*/
idVec3 idQuat::ToAngularVelocity( void ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idQuat::ToAngularVelocity( void )\r\n");
    return retVal;
}


/*
=============
idQuat::ToString
=============
*/
const char *idQuat::ToString( int precision ) const {
    Sys_Printf("char *idQuat::ToString( int precision )\r\n");
    return NULL;
}


/*
=====================
idQuat::Slerp

Spherical linear interpolation between two quaternions.
=====================
*/
idQuat &idQuat::Slerp( const idQuat &from, const idQuat &to, float t ) {
	idQuat	temp;
	float	omega, cosom, sinom, scale0, scale1;

	if ( t <= 0.0f ) {
		*this = from;
		return *this;
	}

	if ( t >= 1.0f ) {
		*this = to;
		return *this;
	}

	if ( from == to ) {
		*this = to;
		return *this;
	}

	cosom = from.x * to.x + from.y * to.y + from.z * to.z + from.w * to.w;
	if ( cosom < 0.0f ) {
		temp = -to;
		cosom = -cosom;
	} else {
		temp = to;
	}

	if ( ( 1.0f - cosom ) > 1e-6f ) {
#if 0
		omega = acos( cosom );
		sinom = 1.0f / sin( omega );
		scale0 = sin( ( 1.0f - t ) * omega ) * sinom;
		scale1 = sin( t * omega ) * sinom;
#else
		scale0 = 1.0f - cosom * cosom;
		sinom = idMath::InvSqrt( scale0 );
		omega = idMath::ATan16( scale0 * sinom, cosom );
		scale0 = idMath::Sin16( ( 1.0f - t ) * omega ) * sinom;
		scale1 = idMath::Sin16( t * omega ) * sinom;
#endif
	} else {
		scale0 = 1.0f - t;
		scale1 = t;
	}

	*this = ( scale0 * from ) + ( scale1 * temp );
	return *this;
}

/*
=============
idCQuat::ToAngles
=============
*/
idAngles idCQuat::ToAngles( void ) const {
    idAngles retVal;
    memset(&retVal, 0, sizeof(idAngles));
    Sys_Printf("idAngles idCQuat::ToAngles( void )\r\n");
    return retVal;
}


/*
=============
idCQuat::ToRotation
=============
*/
idRotation idCQuat::ToRotation( void ) const {
    idRotation retVal;
    memset(&retVal, 0, sizeof(idRotation));
    Sys_Printf("idRotation idCQuat::ToRotation( void )\r\n");
    return retVal;
}


/*
=============
idCQuat::ToMat3
=============
*/
idMat3 idCQuat::ToMat3( void ) const {
    idMat3 retVal;
    memset(&retVal, 0, sizeof(idMat3));
    Sys_Printf("idMat3 idCQuat::ToMat3( void )\r\n");
    return retVal;
}


/*
=============
idCQuat::ToMat4
=============
*/
idMat4 idCQuat::ToMat4( void ) const {
    idMat4 retVal;
    memset(&retVal, 0, sizeof(idMat4));
    Sys_Printf("idMat4 idCQuat::ToMat4( void )\r\n");
    return retVal;
}


/*
=============
idCQuat::ToString
=============
*/
const char *idCQuat::ToString( int precision ) const {
    Sys_Printf("char *idCQuat::ToString( int precision )\r\n");
    return NULL;
}

