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

idCVar idMegaTexture::r_megaTextureLevel( "r_megaTextureLevel", "0", CVAR_RENDERER | CVAR_INTEGER, "draw only a specific level" );
idCVar idMegaTexture::r_showMegaTexture( "r_showMegaTexture", "0", CVAR_RENDERER | CVAR_BOOL, "display all the level images" );
idCVar idMegaTexture::r_showMegaTextureLabels( "r_showMegaTextureLabels", "0", CVAR_RENDERER | CVAR_BOOL, "draw colored blocks in each tile" );
idCVar idMegaTexture::r_skipMegaTexture( "r_skipMegaTexture", "0", CVAR_RENDERER | CVAR_INTEGER, "only use the lowest level image" );
idCVar idMegaTexture::r_terrainScale( "r_terrainScale", "3", CVAR_RENDERER | CVAR_INTEGER, "vertically scale USGS data" );

/*

allow sparse population of the upper detail tiles

*/

int RoundDownToPowerOfTwo( int num ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int RoundDownToPowerOfTwo( int num )\r\n");
    return retVal;
}


static union {
	int		intVal;
	byte	color[4];
} fillColor;

static byte	colors[8][4] = {
	{ 0, 0, 0, 255 },
	{ 255, 0, 0, 255 },
	{ 0, 255, 0, 255 },
	{ 255, 255, 0, 255 },
	{ 0, 0, 255, 255 },
	{ 255, 0, 255, 255 },
	{ 0, 255, 255, 255 },
	{ 255, 255, 255, 255 }
};

static void R_EmptyLevelImage( idImage *image ) {
    Sys_Printf("void R_EmptyLevelImage( idImage *image )\r\n");
}



/*
====================
InitFromMegaFile
====================
*/
bool idMegaTexture::InitFromMegaFile( const char *fileBase ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMegaTexture::InitFromMegaFile( const char *fileBase )\r\n");
    return retVal;
}


/*
====================
SetMappingForSurface

analyzes xyz and st to create a mapping
This is not very robust, but works for rectangular grids
====================
*/
void	idMegaTexture::SetMappingForSurface( const srfTriangles_t *tri ) {
    Sys_Printf("voididMegaTexture::SetMappingForSurface( const srfTriangles_t *tri )\r\n");
}


/*
====================
BindForViewOrigin
====================
*/
void idMegaTexture::BindForViewOrigin( const idVec3 viewOrigin ) {
    Sys_Printf("void idMegaTexture::BindForViewOrigin( const idVec3 viewOrigin )\r\n");
}


/*
====================
Unbind

This can go away once everything uses fragment programs so the enable states don't
need tracking
====================
*/
void idMegaTexture::Unbind( void ) {
    Sys_Printf("void idMegaTexture::Unbind( void )\r\n");
}



/*
====================
SetViewOrigin
====================
*/
void idMegaTexture::SetViewOrigin( const idVec3 viewOrigin ) {
    Sys_Printf("void idMegaTexture::SetViewOrigin( const idVec3 viewOrigin )\r\n");
}



/*
====================
UpdateTile

A local tile will only be mapped to globalTile[ localTile + X * TILE_PER_LEVEL ] for some x
====================
*/
void idTextureLevel::UpdateTile( int localX, int localY, int globalX, int globalY ) {
    Sys_Printf("void idTextureLevel::UpdateTile( int localX, int localY, int globalX, int globalY )\r\n");
}


/*
====================
UpdateForCenter

Center is in the 0.0 to 1.0 range
====================
*/
void idTextureLevel::UpdateForCenter( float center[2] ) {
    Sys_Printf("void idTextureLevel::UpdateForCenter( float center[2] )\r\n");
}


/*
=====================
Invalidate

Forces all tiles to be regenerated
=====================
*/
void idTextureLevel::Invalidate() {
    Sys_Printf("void idTextureLevel::Invalidate()\r\n");
}


//===================================================================================================


typedef struct _TargaHeader {
	unsigned char 	id_length, colormap_type, image_type;
	unsigned short	colormap_index, colormap_length;
	unsigned char	colormap_size;
	unsigned short	x_origin, y_origin, width, height;
	unsigned char	pixel_size, attributes;
} TargaHeader;


static byte ReadByte( idFile *f ) {
    byte retVal;
    memset(&retVal, 0, sizeof(byte));
    Sys_Printf("byte ReadByte( idFile *f )\r\n");
    return retVal;
}


static short ReadShort( idFile *f ) {
    short retVal;
    memset(&retVal, 0, sizeof(short));
    Sys_Printf("short ReadShort( idFile *f )\r\n");
    return retVal;
}



/*
====================
GenerateMegaMipMaps
====================
*/
void	idMegaTexture::GenerateMegaMipMaps( megaTextureHeader_t *header, idFile *outFile ) {
    Sys_Printf("voididMegaTexture::GenerateMegaMipMaps( megaTextureHeader_t *header, idFile *outFile )\r\n");
}


/*
====================
GenerateMegaPreview

Make a 2k x 2k preview image for a mega texture that can be used in modeling programs
====================
*/
void	idMegaTexture::GenerateMegaPreview( const char *fileName ) {
    Sys_Printf("voididMegaTexture::GenerateMegaPreview( const char *fileName )\r\n");
}



/*
====================
MakeMegaTexture_f

Incrementally load a giant tga file and process into the mega texture block format
====================
*/
void idMegaTexture::MakeMegaTexture_f( const idCmdArgs &args ) {
    Sys_Printf("void idMegaTexture::MakeMegaTexture_f( const idCmdArgs &args )\r\n");
}



