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

#include "../../../idlib/precompiled.h"
#pragma hdrstop

#include "dmap.h"

#ifdef WIN32
#include <windows.h>
#include <GL/gl.h>
#include <GL/glu.h>
//#include <GL/glaux.h>

#define	WIN_SIZE	1024

void Draw_ClearWindow( void ) {
    Sys_Printf("void Draw_ClearWindow( void )\r\n");
}


void Draw_SetRed (void)
{
    Sys_Printf("void Draw_SetRed (void)\r\n");
}


void Draw_SetGrey (void)
{
    Sys_Printf("void Draw_SetGrey (void)\r\n");
}


void Draw_SetBlack (void)
{
    Sys_Printf("void Draw_SetBlack (void)\r\n");
}


void DrawWinding ( const idWinding *w )
{
    Sys_Printf("void DrawWinding ( const idWinding *w )\r\n");
}


void DrawAuxWinding ( const idWinding *w)
{
    Sys_Printf("void DrawAuxWinding ( const idWinding *w)\r\n");
}


void DrawLine( idVec3 v1, idVec3 v2, int color ) {
    Sys_Printf("void DrawLine( idVec3 v1, idVec3 v2, int color )\r\n");
}


//============================================================

#define	GLSERV_PORT	25001

bool	wins_init;
int			draw_socket;

void GLS_BeginScene (void)
{
    Sys_Printf("void GLS_BeginScene (void)\r\n");
}


void GLS_Winding( const idWinding *w, int code )
{
    Sys_Printf("void GLS_Winding( const idWinding *w, int code )\r\n");
}


void GLS_Triangle( const mapTri_t *tri, int code ) {
    Sys_Printf("void GLS_Triangle( const mapTri_t *tri, int code )\r\n");
}


void GLS_EndScene (void)
{
    Sys_Printf("void GLS_EndScene (void)\r\n");
}

#else
void Draw_ClearWindow( void ) {
    Sys_Printf("void Draw_ClearWindow( void )\r\n");
}


void DrawWinding( const idWinding *w) {
    Sys_Printf("void DrawWinding( const idWinding *w)\r\n");
}


void DrawAuxWinding ( const idWinding *w) {
    Sys_Printf("void DrawAuxWinding ( const idWinding *w)\r\n");
}


void GLS_Winding( const idWinding *w, int code ) {
    Sys_Printf("void GLS_Winding( const idWinding *w, int code )\r\n");
}


void GLS_BeginScene (void) {
    Sys_Printf("void GLS_BeginScene (void)\r\n");
}


void GLS_EndScene (void)
{
    Sys_Printf("void GLS_EndScene (void)\r\n");
}


#endif
