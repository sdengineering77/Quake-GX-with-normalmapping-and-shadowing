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
/***********************************************************************

game/ai/AI_Vagary.cpp

Vagary specific AI code

***********************************************************************/

#include "../../idlib/precompiled.h"
#pragma hdrstop

#include "../Game_local.h"

class idAI_Vagary : public idAI {
public:
	CLASS_PROTOTYPE( idAI_Vagary );

private:
	void	Event_ChooseObjectToThrow( const idVec3 &mins, const idVec3 &maxs, float speed, float minDist, float offset );
	void	Event_ThrowObjectAtEnemy( idEntity *ent, float speed );
};

const idEventDef AI_Vagary_ChooseObjectToThrow( "vagary_ChooseObjectToThrow", "vvfff", 'e' );
const idEventDef AI_Vagary_ThrowObjectAtEnemy( "vagary_ThrowObjectAtEnemy", "ef" );

CLASS_DECLARATION( idAI, idAI_Vagary )
	EVENT( AI_Vagary_ChooseObjectToThrow,	idAI_Vagary::Event_ChooseObjectToThrow )
	EVENT( AI_Vagary_ThrowObjectAtEnemy,	idAI_Vagary::Event_ThrowObjectAtEnemy )
END_CLASS

/*
================
idAI_Vagary::Event_ChooseObjectToThrow
================
*/
void idAI_Vagary::Event_ChooseObjectToThrow( const idVec3 &mins, const idVec3 &maxs, float speed, float minDist, float offset ) {
    Sys_Printf("void idAI_Vagary::Event_ChooseObjectToThrow( const idVec3 &mins, const idVec3 &maxs, float speed, float minDist, float offset )\r\n");
}


/*
================
idAI_Vagary::Event_ThrowObjectAtEnemy
================
*/
void idAI_Vagary::Event_ThrowObjectAtEnemy( idEntity *ent, float speed ) {
    Sys_Printf("void idAI_Vagary::Event_ThrowObjectAtEnemy( idEntity *ent, float speed )\r\n");
}

