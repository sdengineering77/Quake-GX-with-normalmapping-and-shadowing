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
=================
idSurface_Patch::SetSize
=================
*/
void idSurface_Patch::SetSize( int patchWidth, int patchHeight ) {
    Sys_Printf("void idSurface_Patch::SetSize( int patchWidth, int patchHeight )\r\n");
}


/*
=================
idSurface_Patch::PutOnCurve

Expects an expanded patch.
=================
*/
void idSurface_Patch::PutOnCurve( void ) {
    Sys_Printf("void idSurface_Patch::PutOnCurve( void )\r\n");
}


/*
================
idSurface_Patch::ProjectPointOntoVector
================
*/
void idSurface_Patch::ProjectPointOntoVector( const idVec3 &point, const idVec3 &vStart, const idVec3 &vEnd, idVec3 &vProj ) {
    Sys_Printf("void idSurface_Patch::ProjectPointOntoVector( const idVec3 &point, const idVec3 &vStart, const idVec3 &vEnd, idVec3 &vProj )\r\n");
}


/*
================
idSurface_Patch::RemoveLinearColumnsRows

Expects an expanded patch.
================
*/
void idSurface_Patch::RemoveLinearColumnsRows( void ) {
    Sys_Printf("void idSurface_Patch::RemoveLinearColumnsRows( void )\r\n");
}


/*
================
idSurface_Patch::ResizeExpanded
================
*/
void idSurface_Patch::ResizeExpanded( int newHeight, int newWidth ) {
    Sys_Printf("void idSurface_Patch::ResizeExpanded( int newHeight, int newWidth )\r\n");
}


/*
================
idSurface_Patch::Collapse
================
*/
void idSurface_Patch::Collapse( void ) {
    Sys_Printf("void idSurface_Patch::Collapse( void )\r\n");
}


/*
================
idSurface_Patch::Expand
================
*/
void idSurface_Patch::Expand( void ) {
    Sys_Printf("void idSurface_Patch::Expand( void )\r\n");
}


/*
============
idSurface_Patch::LerpVert
============
*/
void idSurface_Patch::LerpVert( const idDrawVert &a, const idDrawVert &b, idDrawVert &out ) const {
    Sys_Printf("void idSurface_Patch::LerpVert( const idDrawVert &a, const idDrawVert &b, idDrawVert &out )\r\n");
}


/*
=================
idSurface_Patch::GenerateNormals

Handles all the complicated wrapping and degenerate cases
Expects a Not expanded patch.
=================
*/
#define	COPLANAR_EPSILON	0.1f

void idSurface_Patch::GenerateNormals( void ) {
    Sys_Printf("void idSurface_Patch::GenerateNormals( void )\r\n");
}


/*
=================
idSurface_Patch::GenerateIndexes
=================
*/
void idSurface_Patch::GenerateIndexes( void ) {
    Sys_Printf("void idSurface_Patch::GenerateIndexes( void )\r\n");
}


/*
===============
idSurface_Patch::SampleSinglePatchPoint
===============
*/
void idSurface_Patch::SampleSinglePatchPoint( const idDrawVert ctrl[3][3], float u, float v, idDrawVert *out ) const {
    Sys_Printf("void idSurface_Patch::SampleSinglePatchPoint( const idDrawVert ctrl[3][3], float u, float v, idDrawVert *out )\r\n");
}


/*
===================
idSurface_Patch::SampleSinglePatch
===================
*/
void idSurface_Patch::SampleSinglePatch( const idDrawVert ctrl[3][3], int baseCol, int baseRow, int width, int horzSub, int vertSub, idDrawVert *outVerts ) const {
    Sys_Printf("void idSurface_Patch::SampleSinglePatch( const idDrawVert ctrl[3][3], int baseCol, int baseRow, int width, int horzSub, int vertSub, idDrawVert *outVerts )\r\n");
}


/*
=================
idSurface_Patch::SubdivideExplicit
=================
*/
void idSurface_Patch::SubdivideExplicit( int horzSubdivisions, int vertSubdivisions, bool genNormals, bool removeLinear ) {
    Sys_Printf("void idSurface_Patch::SubdivideExplicit( int horzSubdivisions, int vertSubdivisions, bool genNormals, bool removeLinear )\r\n");
}


/*
=================
idSurface_Patch::Subdivide
=================
*/
void idSurface_Patch::Subdivide( float maxHorizontalError, float maxVerticalError, float maxLength, bool genNormals ) {
    Sys_Printf("void idSurface_Patch::Subdivide( float maxHorizontalError, float maxVerticalError, float maxLength, bool genNormals )\r\n");
}

