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

#include "GEModifierGroup.h"

rvGEModifierGroup::rvGEModifierGroup ( ) :
	rvGEModifier ( "Group", NULL )
{	
}

rvGEModifierGroup::~rvGEModifierGroup ( )
{
	int i;
	
	for ( i = 0; i < mModifiers.Num(); i ++ )
	{
		delete mModifiers[i];
	}
	
	mModifiers.Clear ( );
}

bool rvGEModifierGroup::Append ( rvGEModifier* mod )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEModifierGroup::Append ( rvGEModifier* mod )\r\n");
    return retVal;
}


bool rvGEModifierGroup::IsValid ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEModifierGroup::IsValid ( void )\r\n");
    return retVal;
}


bool rvGEModifierGroup::Apply ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEModifierGroup::Apply ( void )\r\n");
    return retVal;
}


bool rvGEModifierGroup::Undo ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEModifierGroup::Undo ( void )\r\n");
    return retVal;
}


bool rvGEModifierGroup::CanMerge ( rvGEModifier* mergebase )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEModifierGroup::CanMerge ( rvGEModifier* mergebase )\r\n");
    return retVal;
}


bool rvGEModifierGroup::Merge ( rvGEModifier* mergebase )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEModifierGroup::Merge ( rvGEModifier* mergebase )\r\n");
    return retVal;
}

