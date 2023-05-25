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

#include "../idlib/precompiled.h"
#pragma hdrstop

#include "tr_local.h"


/*
================
idGuiModel::idGuiModel
================
*/
idGuiModel::idGuiModel() {
	indexes.SetGranularity( 1000 );
	verts.SetGranularity( 1000 );
}

/*
================
idGuiModel::Clear

Begins collecting draw commands into surfaces
================
*/
void idGuiModel::Clear() {
    Sys_Printf("void idGuiModel::Clear()\r\n");
}


/*
================
idGuiModel::WriteToDemo
================
*/
void idGuiModel::WriteToDemo( idDemoFile *demo ) {
    Sys_Printf("void idGuiModel::WriteToDemo( idDemoFile *demo )\r\n");
}


/*
================
idGuiModel::ReadFromDemo
================
*/
void idGuiModel::ReadFromDemo( idDemoFile *demo ) {
    Sys_Printf("void idGuiModel::ReadFromDemo( idDemoFile *demo )\r\n");
}


/*
================
EmitSurface
================
*/
void idGuiModel::EmitSurface( guiModelSurface_t *surf, float modelMatrix[16], float modelViewMatrix[16], bool depthHack ) {
    Sys_Printf("void idGuiModel::EmitSurface( guiModelSurface_t *surf, float modelMatrix[16], float modelViewMatrix[16], bool depthHack )\r\n");
}


/*
====================
EmitToCurrentView
====================
*/
void idGuiModel::EmitToCurrentView( float modelMatrix[16], bool depthHack ) {
    Sys_Printf("void idGuiModel::EmitToCurrentView( float modelMatrix[16], bool depthHack )\r\n");
}


/*
================
idGuiModel::EmitFullScreen

Creates a view that covers the screen and emit the surfaces
================
*/
void idGuiModel::EmitFullScreen( void ) {
    Sys_Printf("void idGuiModel::EmitFullScreen( void )\r\n");
}


/*
=============
AdvanceSurf
=============
*/
void idGuiModel::AdvanceSurf() {
    Sys_Printf("void idGuiModel::AdvanceSurf()\r\n");
}


/*
=============
SetColor
=============
*/
void idGuiModel::SetColor( float r, float g, float b, float a ) {
    Sys_Printf("void idGuiModel::SetColor( float r, float g, float b, float a )\r\n");
}


/*
=============
DrawStretchPic
=============
*/
void idGuiModel::DrawStretchPic( const idDrawVert *dverts, const glIndex_t *dindexes, int vertCount, int indexCount, const idMaterial *hShader, 
									   bool clip, float min_x, float min_y, float max_x, float max_y ) {
    Sys_Printf("void idGuiModel::DrawStretchPic( const idDrawVert *dverts, const glIndex_t *dindexes, int vertCount, int indexCount, const idMaterial *hShader, bool clip, float min_x, float min_y, float max_x, float max_y )\r\n");
}


/*
=============
DrawStretchPic

x/y/w/h are in the 0,0 to 640,480 range
=============
*/
void idGuiModel::DrawStretchPic( float x, float y, float w, float h, float s1, float t1, float s2, float t2, const idMaterial *hShader ) {
    Sys_Printf("void idGuiModel::DrawStretchPic( float x, float y, float w, float h, float s1, float t1, float s2, float t2, const idMaterial *hShader )\r\n");
}


/*
=============
DrawStretchTri

x/y/w/h are in the 0,0 to 640,480 range
=============
*/
void idGuiModel::DrawStretchTri( idVec2 p1, idVec2 p2, idVec2 p3, idVec2 t1, idVec2 t2, idVec2 t3, const idMaterial *material ) {
    Sys_Printf("void idGuiModel::DrawStretchTri( idVec2 p1, idVec2 p2, idVec2 p3, idVec2 t1, idVec2 t2, idVec2 t3, const idMaterial *material )\r\n");
}


