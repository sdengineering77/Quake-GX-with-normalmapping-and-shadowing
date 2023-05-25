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

#include <float.h>

idAngles ang_zero( 0.0f, 0.0f, 0.0f );


/*
=================
idAngles::Normalize360

returns angles normalized to the range [0 <= angle < 360]
=================
*/
idAngles& idAngles::Normalize360( void ) {
	int i;

	for ( i = 0; i < 3; i++ ) {
		if ( ( (*this)[i] >= 360.0f ) || ( (*this)[i] < 0.0f ) ) {
			(*this)[i] -= floor( (*this)[i] / 360.0f ) * 360.0f;

			if ( (*this)[i] >= 360.0f ) {
				(*this)[i] -= 360.0f;
			}
			if ( (*this)[i] < 0.0f ) {
				(*this)[i] += 360.0f;
			}
		}
	}

	return *this;
}

/*
=================
idAngles::Normalize180

returns angles normalized to the range [-180 < angle <= 180]
=================
*/
idAngles& idAngles::Normalize180( void ) {
	Normalize360();

	if ( pitch > 180.0f ) {
		pitch -= 360.0f;
	}
	
	if ( yaw > 180.0f ) {
		yaw -= 360.0f;
	}

	if ( roll > 180.0f ) {
		roll -= 360.0f;
	}
	return *this;
}

/*
=================
idAngles::ToVectors
=================
*/
void idAngles::ToVectors( idVec3 *forward, idVec3 *right, idVec3 *up ) const {
    Sys_Printf("void idAngles::ToVectors( idVec3 *forward, idVec3 *right, idVec3 *up )\r\n");
}


/*
=================
idAngles::ToForward
=================
*/
idVec3 idAngles::ToForward( void ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idAngles::ToForward( void )\r\n");
    return retVal;
}


/*
=================
idAngles::ToQuat
=================
*/
idQuat idAngles::ToQuat( void ) const {
    idQuat retVal;
    memset(&retVal, 0, sizeof(idQuat));
    Sys_Printf("idQuat idAngles::ToQuat( void )\r\n");
    return retVal;
}


/*
=================
idAngles::ToRotation
=================
*/
idRotation idAngles::ToRotation( void ) const {
    idRotation retVal;
    memset(&retVal, 0, sizeof(idRotation));
    Sys_Printf("idRotation idAngles::ToRotation( void )\r\n");
    return retVal;
}


/*
=================
idAngles::ToMat3
=================
*/
idMat3 idAngles::ToMat3( void ) const {
    idMat3 retVal;
    memset(&retVal, 0, sizeof(idMat3));
    Sys_Printf("idMat3 idAngles::ToMat3( void )\r\n");
    return retVal;
}


/*
=================
idAngles::ToMat4
=================
*/
idMat4 idAngles::ToMat4( void ) const {
    idMat4 retVal;
    memset(&retVal, 0, sizeof(idMat4));
    Sys_Printf("idMat4 idAngles::ToMat4( void )\r\n");
    return retVal;
}


/*
=================
idAngles::ToAngularVelocity
=================
*/
idVec3 idAngles::ToAngularVelocity( void ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idAngles::ToAngularVelocity( void )\r\n");
    return retVal;
}


/*
=============
idAngles::ToString
=============
*/
const char *idAngles::ToString( int precision ) const {
    Sys_Printf("char *idAngles::ToString( int precision )\r\n");
    return NULL;
}

