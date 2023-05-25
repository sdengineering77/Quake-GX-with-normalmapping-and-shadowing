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

/*
================
R_ResampleTexture

Used to resample images in a more general than quartering fashion.

This will only have filter coverage if the resampled size
is greater than half the original size.

If a larger shrinking is needed, use the mipmap function 
after resampling to the next lower power of two.
================
*/
#define	MAX_DIMENSION	4096
byte *R_ResampleTexture( const byte *in, int inwidth, int inheight,  
							int outwidth, int outheight ) {
    Sys_Printf("byte *R_ResampleTexture( const byte *in, int inwidth, int inheight, int outwidth, int outheight )\r\n");
    return NULL;
}


/*
================
R_Dropsample

Used to resample images in a more general than quartering fashion.
Normal maps and such should not be bilerped.
================
*/
byte *R_Dropsample( const byte *in, int inwidth, int inheight,  
							int outwidth, int outheight ) {
    Sys_Printf("byte *R_Dropsample( const byte *in, int inwidth, int inheight, int outwidth, int outheight )\r\n");
    return NULL;
}



/*
===============
R_SetBorderTexels

===============
*/
void R_SetBorderTexels( byte *inBase, int width, int height, const byte border[4] ) {
    Sys_Printf("void R_SetBorderTexels( byte *inBase, int width, int height, const byte border[4] )\r\n");
}


/*
===============
R_SetBorderTexels3D

===============
*/
void R_SetBorderTexels3D( byte *inBase, int width, int height, int depth, const byte border[4] ) {
    Sys_Printf("void R_SetBorderTexels3D( byte *inBase, int width, int height, int depth, const byte border[4] )\r\n");
}


/*
================
R_SetAlphaNormalDivergence

If any of the angles inside the cone would directly reflect to the light, there will be
a specular highlight.  The intensity of the highlight is inversely proportional to the
area of the spread.

Light source area is important for the base size.

area subtended in light is the divergence times the distance

Shininess value is subtracted from the divergence

Sets the alpha channel to the greatest divergence dot product of the surrounding texels.
1.0 = flat, 0.0 = turns a 90 degree angle
Lower values give less shiny specular
With mip maps, the lowest samnpled value will be retained

Should we rewrite the normal as the centered average?
================
*/
void	R_SetAlphaNormalDivergence( byte *in, int width, int height ) {
    Sys_Printf("voidR_SetAlphaNormalDivergence( byte *in, int width, int height )\r\n");
}


/*
================
R_MipMapWithAlphaSpecularity

Returns a new copy of the texture, quartered in size and filtered.
The alpha channel is taken to be the minimum of the dots of all surrounding normals.
================
*/
#define MIP_MIN(a,b) (a<b?a:b)

byte *R_MipMapWithAlphaSpecularity( const byte *in, int width, int height ) {
    Sys_Printf("byte *R_MipMapWithAlphaSpecularity( const byte *in, int width, int height )\r\n");
    return NULL;
}


/*
================
R_MipMap

Returns a new copy of the texture, quartered in size and filtered.

If a texture is intended to be used in GL_CLAMP or GL_CLAMP_TO_EDGE mode with
a completely transparent border, we must prevent any blurring into the outer
ring of texels by filling it with the border from the previous level.  This
will result in a slight shrinking of the texture as it mips, but better than
smeared clamps...
================
*/
byte *R_MipMap( const byte *in, int width, int height, bool preserveBorder ) {
    Sys_Printf("byte *R_MipMap( const byte *in, int width, int height, bool preserveBorder )\r\n");
    return NULL;
}


/*
================
R_MipMap3D

Returns a new copy of the texture, eigthed in size and filtered.

If a texture is intended to be used in GL_CLAMP or GL_CLAMP_TO_EDGE mode with
a completely transparent border, we must prevent any blurring into the outer
ring of texels by filling it with the border from the previous level.  This
will result in a slight shrinking of the texture as it mips, but better than
smeared clamps...
================
*/
byte *R_MipMap3D( const byte *in, int width, int height, int depth, bool preserveBorder ) {
    Sys_Printf("byte *R_MipMap3D( const byte *in, int width, int height, int depth, bool preserveBorder )\r\n");
    return NULL;
}



/*
==================
R_BlendOverTexture

Apply a color blend over a set of pixels
==================
*/
void R_BlendOverTexture( byte *data, int pixelCount, const byte blend[4] ) {
    Sys_Printf("void R_BlendOverTexture( byte *data, int pixelCount, const byte blend[4] )\r\n");
}



/*
==================
R_HorizontalFlip

Flip the image in place
==================
*/
void R_HorizontalFlip( byte *data, int width, int height ) {
    Sys_Printf("void R_HorizontalFlip( byte *data, int width, int height )\r\n");
}


void R_VerticalFlip( byte *data, int width, int height ) {
    Sys_Printf("void R_VerticalFlip( byte *data, int width, int height )\r\n");
}


void R_RotatePic( byte *data, int width ) {
    Sys_Printf("void R_RotatePic( byte *data, int width )\r\n");
}


