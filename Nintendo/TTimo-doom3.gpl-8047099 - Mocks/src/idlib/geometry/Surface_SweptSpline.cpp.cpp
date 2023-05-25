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
====================
idSurface_SweptSpline::SetSpline
====================
*/
void idSurface_SweptSpline::SetSpline( idCurve_Spline<idVec4> *spline ) {
    Sys_Printf("void idSurface_SweptSpline::SetSpline( idCurve_Spline<idVec4> *spline )\r\n");
}


/*
====================
idSurface_SweptSpline::SetSweptSpline
====================
*/
void idSurface_SweptSpline::SetSweptSpline( idCurve_Spline<idVec4> *sweptSpline ) {
    Sys_Printf("void idSurface_SweptSpline::SetSweptSpline( idCurve_Spline<idVec4> *sweptSpline )\r\n");
}


/*
====================
idSurface_SweptSpline::SetSweptCircle

  Sets the swept spline to a NURBS circle.
====================
*/
void idSurface_SweptSpline::SetSweptCircle( const float radius ) {
    Sys_Printf("void idSurface_SweptSpline::SetSweptCircle( const float radius )\r\n");
}


/*
====================
idSurface_SweptSpline::GetFrame
====================
*/
void idSurface_SweptSpline::GetFrame( const idMat3 &previousFrame, const idVec3 dir, idMat3 &newFrame ) {
    Sys_Printf("void idSurface_SweptSpline::GetFrame( const idMat3 &previousFrame, const idVec3 dir, idMat3 &newFrame )\r\n");
}


/*
====================
idSurface_SweptSpline::Tessellate

  tesselate the surface
====================
*/
void idSurface_SweptSpline::Tessellate( const int splineSubdivisions, const int sweptSplineSubdivisions ) {
    Sys_Printf("void idSurface_SweptSpline::Tessellate( const int splineSubdivisions, const int sweptSplineSubdivisions )\r\n");
}

