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

#ifdef BUILD_FREETYPE
#include "../ft2/fterrors.h"
#include "../ft2/ftsystem.h"
#include "../ft2/ftimage.h"
#include "../ft2/freetype.h"
#include "../ft2/ftoutln.h"

#define _FLOOR(x)  ((x) & -64)
#define _CEIL(x)   (((x)+63) & -64)
#define _TRUNC(x)  ((x) >> 6)

FT_Library ftLibrary = NULL;  
#endif


#ifdef BUILD_FREETYPE

/*
============
R_GetGlyphInfo
============
*/
void R_GetGlyphInfo(FT_GlyphSlot glyph, int *left, int *right, int *width, int *top, int *bottom, int *height, int *pitch) {
    Sys_Printf("void R_GetGlyphInfo(FT_GlyphSlot glyph, int *left, int *right, int *width, int *top, int *bottom, int *height, int *pitch)\r\n");
}


/*
============
R_RenderGlyph
============
*/
FT_Bitmap *R_RenderGlyph(FT_GlyphSlot glyph, glyphInfo_t* glyphOut) {
    Sys_Printf("FT_Bitmap *R_RenderGlyph(FT_GlyphSlot glyph, glyphInfo_t* glyphOut)\r\n");
    return NULL;
}


/*
============
RE_ConstructGlyphInfo
============
*/
glyphInfo_t *RE_ConstructGlyphInfo( unsigned char *imageOut, int *xOut, int *yOut, int *maxHeight, FT_Face face, const unsigned char c, qboolean calcHeight ) {
    Sys_Printf("glyphInfo_t *RE_ConstructGlyphInfo( unsigned char *imageOut, int *xOut, int *yOut, int *maxHeight, FT_Face face, const unsigned char c, qboolean calcHeight )\r\n");
    return NULL;
}


#endif

static int fdOffset;
static byte	*fdFile;

/*
============
readInt
============
*/
int readInt( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int readInt( void )\r\n");
    return retVal;
}


typedef union {
	byte	fred[4];
	float	ffred;
} poor;

/*
============
readFloat
============
*/
float readFloat( void ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float readFloat( void )\r\n");
    return retVal;
}


/*
============
RegisterFont

Loads 3 point sizes, 12, 24, and 48
============
*/
bool idRenderSystemLocal::RegisterFont( const char *fontName, fontInfoEx_t &font ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idRenderSystemLocal::RegisterFont( const char *fontName, fontInfoEx_t &font )\r\n");
    return retVal;
}


/*
============
R_InitFreeType
============
*/
void R_InitFreeType( void ) {
    Sys_Printf("void R_InitFreeType( void )\r\n");
}


/*
============
R_DoneFreeType
============
*/
void R_DoneFreeType( void ) {
    Sys_Printf("void R_DoneFreeType( void )\r\n");
}

