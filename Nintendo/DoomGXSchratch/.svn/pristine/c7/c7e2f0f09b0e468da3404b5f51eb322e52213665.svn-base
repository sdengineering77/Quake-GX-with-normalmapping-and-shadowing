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

/*

all uncompressed
uncompressed normal maps

downsample images

16 meg Dynamic cache

Anisotropic texturing

Trilinear on all
Trilinear on normal maps, bilinear on others
Bilinear on all


Manager

->List
->Print
->Reload( bool force )

*/

#include "../idlib/precompiled.h"
#pragma hdrstop

// tr_imageprogram.c

#include "tr_local.h"

/*

Anywhere that an image name is used (diffusemaps, bumpmaps, specularmaps, lights, etc),
an imageProgram can be specified.

This allows load time operations, like heightmap-to-normalmap conversion and image
composition, to be automatically handled in a way that supports timestamped reloads.

*/

/*
=================
R_HeightmapToNormalMap

it is not possible to convert a heightmap into a normal map
properly without knowing the texture coordinate stretching.
We can assume constant and equal ST vectors for walls, but not for characters.
=================
*/
static void R_HeightmapToNormalMap( byte *data, int width, int height, float scale ) {
    Sys_Printf("void R_HeightmapToNormalMap( byte *data, int width, int height, float scale )\r\n");
}



/*
=================
R_ImageScale
=================
*/
static void R_ImageScale( byte *data, int width, int height, float scale[4] ) {
    Sys_Printf("void R_ImageScale( byte *data, int width, int height, float scale[4] )\r\n");
}


/*
=================
R_InvertAlpha
=================
*/
static void R_InvertAlpha( byte *data, int width, int height ) {
    Sys_Printf("void R_InvertAlpha( byte *data, int width, int height )\r\n");
}


/*
=================
R_InvertColor
=================
*/
static void R_InvertColor( byte *data, int width, int height ) {
    Sys_Printf("void R_InvertColor( byte *data, int width, int height )\r\n");
}



/*
===================
R_AddNormalMaps

===================
*/
static void R_AddNormalMaps( byte *data1, int width1, int height1, byte *data2, int width2, int height2 ) {
    Sys_Printf("void R_AddNormalMaps( byte *data1, int width1, int height1, byte *data2, int width2, int height2 )\r\n");
}


/*
================
R_SmoothNormalMap
================
*/
static void R_SmoothNormalMap( byte *data, int width, int height ) {
    Sys_Printf("void R_SmoothNormalMap( byte *data, int width, int height )\r\n");
}



/*
===================
R_ImageAdd

===================
*/
static void R_ImageAdd( byte *data1, int width1, int height1, byte *data2, int width2, int height2 ) {
    Sys_Printf("void R_ImageAdd( byte *data1, int width1, int height1, byte *data2, int width2, int height2 )\r\n");
}



// we build a canonical token form of the image program here
static char parseBuffer[MAX_IMAGE_NAME];

/*
===================
AppendToken
===================
*/
static void AppendToken( idToken &token ) {
    Sys_Printf("void AppendToken( idToken &token )\r\n");
}


/*
===================
MatchAndAppendToken
===================
*/
static void MatchAndAppendToken( idLexer &src, const char *match ) {
    Sys_Printf("void MatchAndAppendToken( idLexer &src, const char *match )\r\n");
}


/*
===================
R_ParseImageProgram_r

If pic is NULL, the timestamps will be filled in, but no image will be generated
If both pic and timestamps are NULL, it will just advance past it, which can be
used to parse an image program from a text stream.
===================
*/
static bool R_ParseImageProgram_r( idLexer &src, byte **pic, int *width, int *height,
								  ID_TIME_T *timestamps, textureDepth_t *depth ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool R_ParseImageProgram_r( idLexer &src, byte **pic, int *width, int *height, ID_TIME_T *timestamps, textureDepth_t *depth )\r\n");
    return retVal;
}



/*
===================
R_LoadImageProgram
===================
*/
void R_LoadImageProgram( const char *name, byte **pic, int *width, int *height, ID_TIME_T *timestamps, textureDepth_t *depth ) {
    Sys_Printf("void R_LoadImageProgram( const char *name, byte **pic, int *width, int *height, ID_TIME_T *timestamps, textureDepth_t *depth )\r\n");
}


/*
===================
R_ParsePastImageProgram
===================
*/
const char *R_ParsePastImageProgram( idLexer &src ) {
    Sys_Printf("char *R_ParsePastImageProgram( idLexer &src )\r\n");
    return NULL;
}


