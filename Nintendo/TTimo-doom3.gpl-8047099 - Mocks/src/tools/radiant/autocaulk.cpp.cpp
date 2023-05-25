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

#include "qe3.h"
#include "Radiant.h"
#include "autocaulk.h"

// Note: the code in here looks pretty goofy in places, and probably doesn't use the new Q4 class stuff fully, 
//   but I just got it in and compiling from the JK2/SOF2 Radiants via some ugly code replaces, and it works, so there.
// Also, a bunch of Radiant fields no longer exist in this codebase, likewise the whole point of passing in the bool
//	to this code, but I've just left it as-is. A designer tested it and pronounced it fine.
 
//#pragma warning( disable : 4786)
//#include <list>
//using namespace std;
//#pragma warning( disable : 4786)

#undef strnicmp
#define strnicmp		idStr::Icmpn

#if 1


//extern void ClearBounds (idVec3 mins, idVec3 maxs);
//extern void AddPointToBounds (const idVec3 v, idVec3 mins, idVec3 maxs);
void ClearBounds (idVec3 &mins, idVec3 &maxs)
{
    Sys_Printf("void ClearBounds (idVec3 &mins, idVec3 &maxs)\r\n");
}


void AddPointToBounds( const idVec3 &v, idVec3 &mins, idVec3 &maxs ) 
{
    Sys_Printf("void AddPointToBounds( const idVec3 &v, idVec3 &mins, idVec3 &maxs )\r\n");
}



static void FloorBounds(idVec3 &mins, idVec3 &maxs)
{
    Sys_Printf("void FloorBounds(idVec3 &mins, idVec3 &maxs)\r\n");
}



static LPCSTR vtos(idVec3 &v3)
{
    LPCSTR retVal;
    memset(&retVal, 0, sizeof(LPCSTR));
    Sys_Printf("LPCSTR vtos(idVec3 &v3)\r\n");
    return retVal;
}

struct PairBrushFace_t
{
	face_t*		pFace;
	brush_t*	pBrush;
};
idList < PairBrushFace_t > FacesToCaulk;
void Select_AutoCaulk()
{
    Sys_Printf("void Select_AutoCaulk()\r\n");
}

#endif
