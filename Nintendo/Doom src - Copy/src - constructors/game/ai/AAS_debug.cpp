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

#include "AAS_local.h"
#include "../Game_local.h"		// for cvars and debug drawing


/*
============
idAASLocal::DrawCone
============
*/
void idAASLocal::DrawCone( const idVec3 &origin, const idVec3 &dir, float radius, const idVec4 &color ) const {
    Sys_Printf("void idAASLocal::DrawCone( const idVec3 &origin, const idVec3 &dir, float radius, const idVec4 &color )\r\n");
}


/*
============
idAASLocal::DrawReachability
============
*/
void idAASLocal::DrawReachability( const idReachability *reach ) const {
    Sys_Printf("void idAASLocal::DrawReachability( const idReachability *reach )\r\n");
}


/*
============
idAASLocal::DrawEdge
============
*/
void idAASLocal::DrawEdge( int edgeNum, bool arrow ) const {
    Sys_Printf("void idAASLocal::DrawEdge( int edgeNum, bool arrow )\r\n");
}


/*
============
idAASLocal::DrawFace
============
*/
void idAASLocal::DrawFace( int faceNum, bool side ) const {
    Sys_Printf("void idAASLocal::DrawFace( int faceNum, bool side )\r\n");
}


/*
============
idAASLocal::DrawArea
============
*/
void idAASLocal::DrawArea( int areaNum ) const {
    Sys_Printf("void idAASLocal::DrawArea( int areaNum )\r\n");
}


/*
============
idAASLocal::DefaultSearchBounds
============
*/
const idBounds &idAASLocal::DefaultSearchBounds( void ) const {
	return file->GetSettings().boundingBoxes[0];
}

/*
============
idAASLocal::ShowArea
============
*/
void idAASLocal::ShowArea( const idVec3 &origin ) const {
    Sys_Printf("void idAASLocal::ShowArea( const idVec3 &origin )\r\n");
}


/*
============
idAASLocal::ShowWalkPath
============
*/
void idAASLocal::ShowWalkPath( const idVec3 &origin, int goalAreaNum, const idVec3 &goalOrigin ) const {
    Sys_Printf("void idAASLocal::ShowWalkPath( const idVec3 &origin, int goalAreaNum, const idVec3 &goalOrigin )\r\n");
}


/*
============
idAASLocal::ShowFlyPath
============
*/
void idAASLocal::ShowFlyPath( const idVec3 &origin, int goalAreaNum, const idVec3 &goalOrigin ) const {
    Sys_Printf("void idAASLocal::ShowFlyPath( const idVec3 &origin, int goalAreaNum, const idVec3 &goalOrigin )\r\n");
}


/*
============
idAASLocal::ShowWallEdges
============
*/
void idAASLocal::ShowWallEdges( const idVec3 &origin ) const {
    Sys_Printf("void idAASLocal::ShowWallEdges( const idVec3 &origin )\r\n");
}


/*
============
idAASLocal::ShowHideArea
============
*/
void idAASLocal::ShowHideArea( const idVec3 &origin, int targetAreaNum ) const {
    Sys_Printf("void idAASLocal::ShowHideArea( const idVec3 &origin, int targetAreaNum )\r\n");
}


/*
============
idAASLocal::PullPlayer
============
*/
bool idAASLocal::PullPlayer( const idVec3 &origin, int toAreaNum ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASLocal::PullPlayer( const idVec3 &origin, int toAreaNum )\r\n");
    return retVal;
}


/*
============
idAASLocal::RandomPullPlayer
============
*/
void idAASLocal::RandomPullPlayer( const idVec3 &origin ) const {
    Sys_Printf("void idAASLocal::RandomPullPlayer( const idVec3 &origin )\r\n");
}


/*
============
idAASLocal::ShowPushIntoArea
============
*/
void idAASLocal::ShowPushIntoArea( const idVec3 &origin ) const {
    Sys_Printf("void idAASLocal::ShowPushIntoArea( const idVec3 &origin )\r\n");
}


/*
============
idAASLocal::Test
============
*/
void idAASLocal::Test( const idVec3 &origin ) {
    Sys_Printf("void idAASLocal::Test( const idVec3 &origin )\r\n");
}

