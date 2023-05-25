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
PROBLEM: compressed textures may break the zero clamp rule!
*/

static bool FormatIsDXT( int internalFormat ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool FormatIsDXT( int internalFormat )\r\n");
    return retVal;
}


int MakePowerOfTwo( int num ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int MakePowerOfTwo( int num )\r\n");
    return retVal;
}


/*
================
BitsForInternalFormat

Used for determining memory utilization
================
*/
int idImage::BitsForInternalFormat( int internalFormat ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idImage::BitsForInternalFormat( int internalFormat )\r\n");
    return retVal;
}


/*
==================
UploadCompressedNormalMap

Create a 256 color palette to be used by compressed normal maps
==================
*/
void idImage::UploadCompressedNormalMap( int width, int height, const byte *rgba, int mipLevel ) {
    Sys_Printf("void idImage::UploadCompressedNormalMap( int width, int height, const byte *rgba, int mipLevel )\r\n");
}



//=======================================================================


static byte	mipBlendColors[16][4] = {
	{0,0,0,0},
	{255,0,0,128},
	{0,255,0,128},
	{0,0,255,128},
	{255,0,0,128},
	{0,255,0,128},
	{0,0,255,128},
	{255,0,0,128},
	{0,255,0,128},
	{0,0,255,128},
	{255,0,0,128},
	{0,255,0,128},
	{0,0,255,128},
	{255,0,0,128},
	{0,255,0,128},
	{0,0,255,128},
};

/*
===============
SelectInternalFormat

This may need to scan six cube map images
===============
*/
GLenum idImage::SelectInternalFormat( const byte **dataPtrs, int numDataPtrs, int width, int height,
									 textureDepth_t minimumDepth, bool *monochromeResult ) const {
    GLenum retVal;
    memset(&retVal, 0, sizeof(GLenum));
    Sys_Printf("GLenum idImage::SelectInternalFormat( const byte **dataPtrs, int numDataPtrs, int width, int height, textureDepth_t minimumDepth, bool *monochromeResult )\r\n");
    return retVal;
}


/*
==================
SetImageFilterAndRepeat
==================
*/
void idImage::SetImageFilterAndRepeat() const {
    Sys_Printf("void idImage::SetImageFilterAndRepeat()\r\n");
}


/*
================
idImage::Downsize
helper function that takes the current width/height and might make them smaller
================
*/
void idImage::GetDownsize( int &scaled_width, int &scaled_height ) const {
    Sys_Printf("void idImage::GetDownsize( int &scaled_width, int &scaled_height )\r\n");
}


/*
================
GenerateImage

The alpha channel bytes should be 255 if you don't
want the channel.

We need a material characteristic to ask for specific texture modes.

Designed limitations of flexibility:

No support for texture borders.

No support for texture border color.

No support for texture environment colors or GL_BLEND or GL_DECAL
texture environments, because the automatic optimization to single
or dual component textures makes those modes potentially undefined.

No non-power-of-two images.

No palettized textures.

There is no way to specify separate wrap/clamp values for S and T

There is no way to specify explicit mip map levels

================
*/
void idImage::GenerateImage( const byte *pic, int width, int height, 
					   textureFilter_t filterParm, bool allowDownSizeParm, 
					   textureRepeat_t repeatParm, textureDepth_t depthParm ) {
    Sys_Printf("void idImage::GenerateImage( const byte *pic, int width, int height, textureFilter_t filterParm, bool allowDownSizeParm, textureRepeat_t repeatParm, textureDepth_t depthParm )\r\n");
}



/*
==================
Generate3DImage
==================
*/
void idImage::Generate3DImage( const byte *pic, int width, int height, int picDepth,
					   textureFilter_t filterParm, bool allowDownSizeParm, 
					   textureRepeat_t repeatParm, textureDepth_t minDepthParm ) {
    Sys_Printf("void idImage::Generate3DImage( const byte *pic, int width, int height, int picDepth, textureFilter_t filterParm, bool allowDownSizeParm, textureRepeat_t repeatParm, textureDepth_t minDepthParm )\r\n");
}



/*
====================
GenerateCubeImage

Non-square cube sides are not allowed
====================
*/
void idImage::GenerateCubeImage( const byte *pic[6], int size, 
					   textureFilter_t filterParm, bool allowDownSizeParm, 
					   textureDepth_t depthParm ) {
    Sys_Printf("void idImage::GenerateCubeImage( const byte *pic[6], int size, textureFilter_t filterParm, bool allowDownSizeParm, textureDepth_t depthParm )\r\n");
}



/*
================
ImageProgramStringToFileCompressedFileName
================
*/
void idImage::ImageProgramStringToCompressedFileName( const char *imageProg, char *fileName ) const {
    Sys_Printf("void idImage::ImageProgramStringToCompressedFileName( const char *imageProg, char *fileName )\r\n");
}


/*
==================
NumLevelsForImageSize
==================
*/
int	idImage::NumLevelsForImageSize( int width, int height ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidImage::NumLevelsForImageSize( int width, int height )\r\n");
    return retVal;
}


/*
================
WritePrecompressedImage

When we are happy with our source data, we can write out precompressed
versions of everything to speed future load times.
================
*/
void idImage::WritePrecompressedImage() {
    Sys_Printf("void idImage::WritePrecompressedImage()\r\n");
}


/*
================
ShouldImageBePartialCached

Returns true if there is a precompressed image, and it is large enough
to be worth caching
================
*/
bool idImage::ShouldImageBePartialCached() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idImage::ShouldImageBePartialCached()\r\n");
    return retVal;
}


/*
================
CheckPrecompressedImage

If fullLoad is false, only the small mip levels of the image will be loaded
================
*/
bool idImage::CheckPrecompressedImage( bool fullLoad ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idImage::CheckPrecompressedImage( bool fullLoad )\r\n");
    return retVal;
}


/*
===================
UploadPrecompressedImage

This can be called by the front end during nromal loading,
or by the backend after a background read of the file
has completed
===================
*/
void idImage::UploadPrecompressedImage( byte *data, int len ) {
    Sys_Printf("void idImage::UploadPrecompressedImage( byte *data, int len )\r\n");
}


/*
===============
ActuallyLoadImage

Absolutely every image goes through this path
On exit, the idImage will have a valid OpenGL texture number that can be bound
===============
*/
void	idImage::ActuallyLoadImage( bool checkForPrecompressed, bool fromBackEnd ) {
    Sys_Printf("voididImage::ActuallyLoadImage( bool checkForPrecompressed, bool fromBackEnd )\r\n");
}


//=========================================================================================================

/*
===============
PurgeImage
===============
*/
void idImage::PurgeImage() {
    Sys_Printf("void idImage::PurgeImage()\r\n");
}


/*
==============
Bind

Automatically enables 2D mapping, cube mapping, or 3D texturing if needed
==============
*/
void idImage::Bind() {
    Sys_Printf("void idImage::Bind()\r\n");
}


/*
==============
BindFragment

Fragment programs explicitly say which type of map they want, so we don't need to
do any enable / disable changes
==============
*/
void idImage::BindFragment() {
    Sys_Printf("void idImage::BindFragment()\r\n");
}



/*
====================
CopyFramebuffer
====================
*/
void idImage::CopyFramebuffer( int x, int y, int imageWidth, int imageHeight, bool useOversizedBuffer ) {
    Sys_Printf("void idImage::CopyFramebuffer( int x, int y, int imageWidth, int imageHeight, bool useOversizedBuffer )\r\n");
}


/*
====================
CopyDepthbuffer

This should just be part of copyFramebuffer once we have a proper image type field
====================
*/
void idImage::CopyDepthbuffer( int x, int y, int imageWidth, int imageHeight ) {
    Sys_Printf("void idImage::CopyDepthbuffer( int x, int y, int imageWidth, int imageHeight )\r\n");
}


/*
=============
RB_UploadScratchImage

if rows = cols * 6, assume it is a cube map animation
=============
*/
void idImage::UploadScratch( const byte *data, int cols, int rows ) {
    Sys_Printf("void idImage::UploadScratch( const byte *data, int cols, int rows )\r\n");
}



void idImage::SetClassification( int tag ) {
    Sys_Printf("void idImage::SetClassification( int tag )\r\n");
}


/*
==================
StorageSize
==================
*/
int idImage::StorageSize() const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idImage::StorageSize()\r\n");
    return retVal;
}


/*
==================
Print
==================
*/
void idImage::Print() const {
    Sys_Printf("void idImage::Print()\r\n");
}

