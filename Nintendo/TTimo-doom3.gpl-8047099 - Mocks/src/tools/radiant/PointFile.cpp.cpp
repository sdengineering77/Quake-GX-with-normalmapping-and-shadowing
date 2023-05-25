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

#define	MAX_POINTFILE	8192
static idVec3	s_pointvecs[MAX_POINTFILE];
static int		s_num_points, s_check_point;

void Pointfile_Delete (void)
{
    Sys_Printf("void Pointfile_Delete (void)\r\n");
}


// advance camera to next point
void Pointfile_Next (void)
{
    Sys_Printf("void Pointfile_Next (void)\r\n");
}


// advance camera to previous point
void Pointfile_Prev (void)
{
    Sys_Printf("void Pointfile_Prev (void)\r\n");
}


void WINAPI Pointfile_Check (void)
{
    WINAPI retVal;
    memset(&retVal, 0, sizeof(WINAPI));
    Sys_Printf("WINAPI Pointfile_Check (void)\r\n");
    return retVal;
}


void Pointfile_Draw( void )
{
    Sys_Printf("void Pointfile_Draw( void )\r\n");
}


void Pointfile_Clear (void)
{
    Sys_Printf("void Pointfile_Clear (void)\r\n");
}


