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

//#define WRITE_GUIS

typedef struct {
	int		version;
	int		sizeofRenderEntity;
	int		sizeofRenderLight;
	char	mapname[256];
} demoHeader_t;


/*
==============
StartWritingDemo
==============
*/
void		idRenderWorldLocal::StartWritingDemo( idDemoFile *demo ) {
    Sys_Printf("voididRenderWorldLocal::StartWritingDemo( idDemoFile *demo )\r\n");
}


void idRenderWorldLocal::StopWritingDemo() {
    Sys_Printf("void idRenderWorldLocal::StopWritingDemo()\r\n");
}


/*
==============
ProcessDemoCommand
==============
*/
bool		idRenderWorldLocal::ProcessDemoCommand( idDemoFile *readDemo, renderView_t *renderView, int *demoTimeOffset ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolidRenderWorldLocal::ProcessDemoCommand( idDemoFile *readDemo, renderView_t *renderView, int *demoTimeOffset )\r\n");
    return retVal;
}


/*
================
WriteLoadMap
================
*/
void	idRenderWorldLocal::WriteLoadMap() {
    Sys_Printf("voididRenderWorldLocal::WriteLoadMap()\r\n");
}


/*
================
WriteVisibleDefs

================
*/
void	idRenderWorldLocal::WriteVisibleDefs( const viewDef_t *viewDef ) {
    Sys_Printf("voididRenderWorldLocal::WriteVisibleDefs( const viewDef_t *viewDef )\r\n");
}



/*
================
WriteRenderView
================
*/
void	idRenderWorldLocal::WriteRenderView( const renderView_t *renderView ) {
    Sys_Printf("voididRenderWorldLocal::WriteRenderView( const renderView_t *renderView )\r\n");
}


/*
================
WriteFreeEntity
================
*/
void	idRenderWorldLocal::WriteFreeEntity( qhandle_t handle ) {
    Sys_Printf("voididRenderWorldLocal::WriteFreeEntity( qhandle_t handle )\r\n");
}


/*
================
WriteFreeLightEntity
================
*/
void	idRenderWorldLocal::WriteFreeLight( qhandle_t handle ) {
    Sys_Printf("voididRenderWorldLocal::WriteFreeLight( qhandle_t handle )\r\n");
}


/*
================
WriteRenderLight
================
*/
void	idRenderWorldLocal::WriteRenderLight( qhandle_t handle, const renderLight_t *light ) {
    Sys_Printf("voididRenderWorldLocal::WriteRenderLight( qhandle_t handle, const renderLight_t *light )\r\n");
}


/*
================
ReadRenderLight
================
*/
void	idRenderWorldLocal::ReadRenderLight( ) {
    Sys_Printf("voididRenderWorldLocal::ReadRenderLight( )\r\n");
}


/*
================
WriteRenderEntity
================
*/
void	idRenderWorldLocal::WriteRenderEntity( qhandle_t handle, const renderEntity_t *ent ) {
    Sys_Printf("voididRenderWorldLocal::WriteRenderEntity( qhandle_t handle, const renderEntity_t *ent )\r\n");
}


/*
================
ReadRenderEntity
================
*/
void	idRenderWorldLocal::ReadRenderEntity() {
    Sys_Printf("voididRenderWorldLocal::ReadRenderEntity()\r\n");
}

