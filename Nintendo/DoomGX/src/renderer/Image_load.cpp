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
#include "../sys/ogc/gx_textures.h"

/*
PROBLEM: compressed textures may break the zero clamp rule!
*/

static bool FormatIsDXT( int internalFormat ) {
	if ( internalFormat < GL_COMPRESSED_RGB_S3TC_DXT1_EXT
	|| internalFormat > GL_COMPRESSED_RGBA_S3TC_DXT5_EXT ) {
		return false;
	}
	return true;
}

int MakePowerOfTwo( int num ) {
	int		pot;
	for (pot = 1 ; pot < num ; pot<<=1) {
	}
	return pot;
}


/*
================
BitsForInternalFormat

Used for determining memory utilization
================
*/
int idImage::BitsForInternalFormat( int internalFormat ) const {
	switch ( internalFormat ) {
	case GL_INTENSITY8:
	case 1:
		return 8;
	case 2:
	case GL_LUMINANCE8_ALPHA8:
		return 16;
	case 3:
		return 32;		// on some future hardware, this may actually be 24, but be conservative
	case 4:
		return 32;
	case GL_LUMINANCE8:
		return 8;
	case GL_ALPHA8:
		return 8;
	case GL_RGBA8:
		return 32;
	case GL_RGB8:
		return 32;		// on some future hardware, this may actually be 24, but be conservative
	case GL_COMPRESSED_RGB_S3TC_DXT1_EXT:
		return 4;
	case GL_COMPRESSED_RGBA_S3TC_DXT1_EXT:
		return 4;
	case GL_COMPRESSED_RGBA_S3TC_DXT3_EXT:
		return 8;
	case GL_COMPRESSED_RGBA_S3TC_DXT5_EXT:
		return 8;
	case GL_RGBA4:
		return 16;
	case GL_RGB5:
		return 16;
	case GL_COLOR_INDEX8_EXT:
		return 8;
	case GL_COLOR_INDEX:
		return 8;
	case GL_COMPRESSED_RGB_ARB:
		return 4;			// not sure
	case GL_COMPRESSED_RGBA_ARB:
		return 8;			// not sure
	default:
		common->Error( "R_BitsForInternalFormat: BAD FORMAT:%i", internalFormat );
	}
	return 0;
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
	int		i, c;
	const byte	*scan;
	int		rgbOr, rgbAnd, aOr, aAnd;
	int		rgbDiffer, rgbaDiffer;

	// determine if the rgb channels are all the same
	// and if either all rgb or all alpha are 255
	c = width*height;
	rgbDiffer = 0;
	rgbaDiffer = 0;
	rgbOr = 0;
	rgbAnd = -1;
	aOr = 0;
	aAnd = -1;

	*monochromeResult = true;	// until shown otherwise

	for ( int side = 0 ; side < numDataPtrs ; side++ ) {
		scan = dataPtrs[side];
		for ( i = 0; i < c; i++, scan += 4 ) {
			int		cor, cand;

			aOr |= scan[3];
			aAnd &= scan[3];

			cor = scan[0] | scan[1] | scan[2];
			cand = scan[0] & scan[1] & scan[2];

			// if rgb are all the same, the or and and will match
			rgbDiffer |= ( cor ^ cand );

			// our "isMonochrome" test is more lax than rgbDiffer,
			// allowing the values to be off by several units and
			// still use the NV20 mono path
			if ( *monochromeResult ) {
				if ( abs( scan[0] - scan[1] ) > 16
					|| abs( scan[0] - scan[2] ) > 16 ) {
						*monochromeResult = false;
					}
			}

			rgbOr |= cor;
			rgbAnd &= cand;

			cor |= scan[3];
			cand &= scan[3];

			rgbaDiffer |= ( cor ^ cand );
		}
	}

	// we assume that all 0 implies that the alpha channel isn't needed,
	// because some tools will spit out 32 bit images with a 0 alpha instead
	// of 255 alpha, but if the alpha actually is referenced, there will be
	// different behavior in the compressed vs uncompressed states.
	bool needAlpha;
	if ( aAnd == 255 || aOr == 0 ) {
		needAlpha = false;
	} else {
		needAlpha = true;
	}

	// catch normal maps first
	if ( minimumDepth == TD_BUMP ) {
		if ( globalImages->image_useCompression.GetBool() && globalImages->image_useNormalCompression.GetInteger() == 1 && glConfig.sharedTexturePaletteAvailable ) {
			// image_useNormalCompression should only be set to 1 on nv_10 and nv_20 paths
			return GL_COLOR_INDEX8_EXT;
		} else if ( globalImages->image_useCompression.GetBool() && globalImages->image_useNormalCompression.GetInteger() && glConfig.textureCompressionAvailable ) {
			// image_useNormalCompression == 2 uses rxgb format which produces really good quality for medium settings
			return GL_COMPRESSED_RGBA_S3TC_DXT5_EXT;
		} else {
			// we always need the alpha channel for bump maps for swizzling
			return GL_RGBA8;
		}
	}

	// allow a complete override of image compression with a cvar
	if ( !globalImages->image_useCompression.GetBool() ) {
		minimumDepth = TD_HIGH_QUALITY;
	}

	if ( minimumDepth == TD_SPECULAR ) {
		// we are assuming that any alpha channel is unintentional
		if ( glConfig.textureCompressionAvailable ) {
			return GL_COMPRESSED_RGB_S3TC_DXT1_EXT;
		} else {
			return GL_RGB5;
		}
	}
	if ( minimumDepth == TD_DIFFUSE ) {
		// we might intentionally have an alpha channel for alpha tested textures
		if ( glConfig.textureCompressionAvailable ) {
			if ( !needAlpha ) {
				return GL_COMPRESSED_RGB_S3TC_DXT1_EXT;
			} else {
				return GL_COMPRESSED_RGBA_S3TC_DXT3_EXT;
			}
		} else if ( ( aAnd == 255 || aOr == 0 ) ) {
#ifndef DOOMGX
			return GL_RGB5;
#else
			return GL_COMPRESSED_RGB_S3TC_DXT1_EXT;
#endif
		} else {
			return GL_RGBA4;
		}
	}

	// there will probably be some drivers that don't
	// correctly handle the intensity/alpha/luminance/luminance+alpha
	// formats, so provide a fallback that only uses the rgb/rgba formats
	if ( !globalImages->image_useAllFormats.GetBool() ) {
		// pretend rgb is varying and inconsistant, which
		// prevents any of the more compact forms
		rgbDiffer = 1;
		rgbaDiffer = 1;
		rgbAnd = 0;
	}

	// cases without alpha
	if ( !needAlpha ) {
#ifndef DOOMGX
		if ( minimumDepth == TD_HIGH_QUALITY ) {
			return GL_RGB8;			// four bytes
		}
		if ( glConfig.textureCompressionAvailable ) {
			return GL_COMPRESSED_RGB_S3TC_DXT1_EXT;	// half byte
		}
		return GL_RGB5;			// two bytes
#else
		return GL_COMPRESSED_RGB_S3TC_DXT1_EXT;
#endif

	}

	// cases with alpha
	if ( !rgbaDiffer ) {
#ifndef DOOMGX
		if ( minimumDepth != TD_HIGH_QUALITY && glConfig.textureCompressionAvailable ) {
			return GL_COMPRESSED_RGBA_S3TC_DXT3_EXT;	// one byte
		}
#endif
		return GL_INTENSITY8;	// single byte for all channels
	}

#if 0
	// we don't support alpha textures any more, because there
	// is a discrepancy in the definition of TEX_ENV_COMBINE that
	// causes them to be treated as 0 0 0 A, instead of 1 1 1 A as
	// normal texture modulation treats them
	if ( rgbAnd == 255 ) {
		return GL_ALPHA8;		// single byte, only alpha
	}
#endif

	if ( minimumDepth == TD_HIGH_QUALITY ) {
		return GL_RGBA8;	// four bytes
	}
	if ( glConfig.textureCompressionAvailable ) {
		return GL_COMPRESSED_RGBA_S3TC_DXT3_EXT;	// one byte
	}
	if ( !rgbDiffer ) {
		return GL_LUMINANCE8_ALPHA8;	// two bytes, max quality
	}
	return GL_RGBA4;	// two bytes
}


/*
==================
SetImageFilterAndRepeat
==================
*/
void idImage::SetImageFilterAndRepeat() const {
	// set the minimize / maximize filtering
#ifndef DOOMGX
	switch( filter ) {
	case TF_DEFAULT:
		qglTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, globalImages->textureMinFilter );
		qglTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, globalImages->textureMaxFilter );
		break;
	case TF_LINEAR:
		qglTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
		qglTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
		break;
	case TF_NEAREST:
		qglTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST );
		qglTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST );
		break;
	default:
		common->FatalError( "R_CreateImage: bad texture filter" );
	}

	if ( glConfig.anisotropicAvailable ) {
		// only do aniso filtering on mip mapped images
		if ( filter == TF_DEFAULT ) {
			qglTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAX_ANISOTROPY_EXT, globalImages->textureAnisotropy );
		} else {
			qglTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAX_ANISOTROPY_EXT, 1 );
		}
	}
	if ( glConfig.textureLODBiasAvailable ) {
		qglTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_LOD_BIAS_EXT, globalImages->textureLODBias );
	}

	// set the wrap/clamp modes
	switch( repeat ) {
	case TR_REPEAT:
		qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT );
		qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT );
		break;
	case TR_CLAMP_TO_BORDER:
		qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_BORDER );
		qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_BORDER );
		break;
	case TR_CLAMP_TO_ZERO:
	case TR_CLAMP_TO_ZERO_ALPHA:
	case TR_CLAMP:
		qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE );
		qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE );
		break;
	default:
		common->FatalError( "R_CreateImage: bad texture repeat" );
	}
#else
	int glFilterMin, glFilterMax, glWrapS, glWrapT, glAniso;
	switch( filter ) {
	case TF_DEFAULT:
		glFilterMin = globalImages->textureMinFilter;
		glFilterMax = globalImages->textureMaxFilter;
		break;
	case TF_LINEAR:
		glFilterMin = GL_LINEAR;
		glFilterMax = GL_LINEAR;
		break;
	case TF_NEAREST:
		glFilterMin = GL_NEAREST;
		glFilterMax = GL_NEAREST;
		break;
	default:
		common->FatalError( "R_CreateImage: bad texture filter" );
		glFilterMin = 0;
		glFilterMax = 0;
	}

	if ( glConfig.anisotropicAvailable ) {
		// only do aniso filtering on mip mapped images
		if ( filter == TF_DEFAULT ) {
			glAniso = globalImages->textureAnisotropy;
		} else {
			glAniso = 1;
		}
	}
	//if ( glConfig.textureLODBiasAvailable ) {
	//	qglTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_LOD_BIAS_EXT, globalImages->textureLODBias );
	//}

	// set the wrap/clamp modes
	switch( repeat ) {
	case TR_REPEAT:
		glWrapS = GL_REPEAT;
		glWrapT = GL_REPEAT;
		break;
	case TR_CLAMP_TO_BORDER:
		glWrapS = GL_CLAMP_TO_BORDER;
		glWrapT = GL_CLAMP_TO_BORDER;
		break;
	case TR_CLAMP_TO_ZERO:
	case TR_CLAMP_TO_ZERO_ALPHA:
	case TR_CLAMP:
		glWrapS = GL_CLAMP_TO_EDGE;
		glWrapT = GL_CLAMP_TO_EDGE;
		break;
	default:
		common->FatalError( "R_CreateImage: bad texture repeat" );
		glWrapS = 0;
		glWrapT = 0;
	}

	qgxSetGLTexParam(glWrapS, glWrapT, glFilterMin, glFilterMax, glAniso);
#endif

}


/*
================
idImage::Downsize
helper function that takes the current width/height and might make them smaller
================
*/
void idImage::GetDownsize( int &scaled_width, int &scaled_height ) const {
	int size = 0;

	// perform optional picmip operation to save texture memory
	if ( depth == TD_SPECULAR && globalImages->image_downSizeSpecular.GetInteger() ) {
		size = globalImages->image_downSizeSpecularLimit.GetInteger();
		if ( size == 0 ) {
			size = 64;
		}
	} else if ( depth == TD_BUMP && globalImages->image_downSizeBump.GetInteger() ) {
		size = globalImages->image_downSizeBumpLimit.GetInteger();
		if ( size == 0 ) {
			size = 64;
		}
	} else if ( ( allowDownSize || globalImages->image_forceDownSize.GetBool() ) && globalImages->image_downSize.GetInteger() ) {
		size = globalImages->image_downSizeLimit.GetInteger();
		if ( size == 0 ) {
			size = 256;
		}
	}

	if ( size > 0 ) {
		while ( scaled_width > size || scaled_height > size ) {
			if ( scaled_width > 1 ) {
				scaled_width >>= 1;
			}
			if ( scaled_height > 1 ) {
				scaled_height >>= 1;
			}
		}
	}

	// clamp to minimum size
	if ( scaled_width < 1 ) {
		scaled_width = 1;
	}
	if ( scaled_height < 1 ) {
		scaled_height = 1;
	}

	// clamp size to the hardware specific upper limit
	// scale both axis down equally so we don't have to
	// deal with a half mip resampling
	// This causes a 512*256 texture to sample down to
	// 256*128 on a voodoo3, even though it could be 256*256
	while ( scaled_width > glConfig.maxTextureSize
		|| scaled_height > glConfig.maxTextureSize ) {
		scaled_width >>= 1;
		scaled_height >>= 1;
	}
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
	bool	preserveBorder;
	byte		*scaledBuffer;
	int			scaled_width, scaled_height;
	byte		*shrunk;

	PurgeImage();

	filter = filterParm;
	allowDownSize = allowDownSizeParm;
	repeat = repeatParm;
	depth = depthParm;

	// if we don't have a rendering context, just return after we
	// have filled in the parms.  We must have the values set, or
	// an image match from a shader before OpenGL starts would miss
	// the generated texture
	if ( !glConfig.isInitialized ) {
		return;
	}

	// don't let mip mapping smear the texture into the clamped border
	if ( repeat == TR_CLAMP_TO_ZERO ) {
		preserveBorder = true;
	} else {
		preserveBorder = false;
	}

	// make sure it is a power of 2
	scaled_width = MakePowerOfTwo( width );
	scaled_height = MakePowerOfTwo( height );

	if ( scaled_width != width || scaled_height != height ) {
		common->Error( "R_CreateImage: not a power of 2 image" );
	}

	// Optionally modify our width/height based on options/hardware
	GetDownsize( scaled_width, scaled_height );

	scaledBuffer = NULL;

	// generate the texture number
#ifdef DOOMGX
	qgxGenTextures( 1, &texnum );
#else
	qglGenTextures( 1, &texnum );
#endif
	// select proper internal format before we resample
	internalFormat = SelectInternalFormat( &pic, 1, width, height, depth, &isMonochrome );

	// copy or resample data as appropriate for first MIP level
	if ( ( scaled_width == width ) && ( scaled_height == height ) ) {
		// we must copy even if unchanged, because the border zeroing
		// would otherwise modify const data
		scaledBuffer = (byte *)R_StaticAlloc( sizeof( unsigned ) * scaled_width * scaled_height );
		memcpy (scaledBuffer, pic, width*height*4);
	} else {
		// resample down as needed (FIXME: this doesn't seem like it resamples anymore!)
		// scaledBuffer = R_ResampleTexture( pic, width, height, width >>= 1, height >>= 1 );
		// DRS: R_MipMap only scales down, did Resample() also blend or so?
		scaledBuffer = R_MipMap( pic, width, height, preserveBorder );
		width >>= 1;
		height >>= 1;
		if ( width < 1 ) {
			width = 1;
		}
		if ( height < 1 ) {
			height = 1;
		}

		while ( width > scaled_width || height > scaled_height ) {
			shrunk = R_MipMap( scaledBuffer, width, height, preserveBorder );
			R_StaticFree( scaledBuffer );
			scaledBuffer = shrunk;

			width >>= 1;
			height >>= 1;
			if ( width < 1 ) {
				width = 1;
			}
			if ( height < 1 ) {
				height = 1;
			}
		}

		// one might have shrunk down below the target size
		scaled_width = width;
		scaled_height = height;
	}

	uploadHeight = scaled_height;
	uploadWidth = scaled_width;
	type = TT_2D;

	// zero the border if desired, allowing clamped projection textures
	// even after picmip resampling or careless artists.
	if ( repeat == TR_CLAMP_TO_ZERO ) {
		byte	rgba[4];

		rgba[0] = rgba[1] = rgba[2] = 0;
		rgba[3] = 255;
		R_SetBorderTexels( (byte *)scaledBuffer, width, height, rgba );
	}
	if ( repeat == TR_CLAMP_TO_ZERO_ALPHA ) {
		byte	rgba[4];

		rgba[0] = rgba[1] = rgba[2] = 255;
		rgba[3] = 0;
		R_SetBorderTexels( (byte *)scaledBuffer, width, height, rgba );
	}

	if ( generatorFunction == NULL && ( depth == TD_BUMP && globalImages->image_writeNormalTGA.GetBool() || depth != TD_BUMP && globalImages->image_writeTGA.GetBool() ) ) {
		// Optionally write out the texture to a .tga
		char filename[MAX_IMAGE_NAME];
		ImageProgramStringToCompressedFileName( imgName, filename );
		char *ext = strrchr(filename, '.');
		if ( ext ) {
			strcpy( ext, ".tga" );
			// swap the red/alpha for the write
			/*
			if ( depth == TD_BUMP ) {
				for ( int i = 0; i < scaled_width * scaled_height * 4; i += 4 ) {
					scaledBuffer[ i ] = scaledBuffer[ i + 3 ];
					scaledBuffer[ i + 3 ] = 0;
				}
			}
			*/
			R_WriteTGA( filename, scaledBuffer, scaled_width, scaled_height, false );

			// put it back
			/*
			if ( depth == TD_BUMP ) {
				for ( int i = 0; i < scaled_width * scaled_height * 4; i += 4 ) {
					scaledBuffer[ i + 3 ] = scaledBuffer[ i ];
					scaledBuffer[ i ] = 0;
				}
			}
			*/
		}
	}

	// swap the red and alpha for rxgb support
	// do this even on tga normal maps so we only have to use
	// one fragment program
	// if the image is precompressed ( either in palletized mode or true rxgb mode )
	// then it is loaded above and the swap never happens here
	if ( depth == TD_BUMP && globalImages->image_useNormalCompression.GetInteger() != 1 ) {
		for ( int i = 0; i < scaled_width * scaled_height * 4; i += 4 ) {
			scaledBuffer[ i + 3 ] = scaledBuffer[ i ];
			scaledBuffer[ i ] = 0;
		}
	}
	// upload the main image level
	Bind();


	if ( internalFormat == GL_COLOR_INDEX8_EXT ) {
		/*
		if ( depth == TD_BUMP ) {
			for ( int i = 0; i < scaled_width * scaled_height * 4; i += 4 ) {
				scaledBuffer[ i ] = scaledBuffer[ i + 3 ];
				scaledBuffer[ i + 3 ] = 0;
			}
		}
		*/
		UploadCompressedNormalMap( scaled_width, scaled_height, scaledBuffer, 0 );
	} else {
#ifndef DOOMGX
		qglTexImage2D( GL_TEXTURE_2D, 0, internalFormat, scaled_width, scaled_height, 0, GL_RGBA, GL_UNSIGNED_BYTE, scaledBuffer );
#else
		qgxTexImage2D(0, internalFormat, scaled_width, scaled_height, GL_RGBA, scaledBuffer);
#endif

	}

	// create and upload the mip map levels, which we do in all cases, even if we don't think they are needed
	int		miplevel;

	miplevel = 0;
	while ( scaled_width > 1 || scaled_height > 1 ) {
		// preserve the border after mip map unless repeating
		shrunk = R_MipMap( scaledBuffer, scaled_width, scaled_height, preserveBorder );
		R_StaticFree( scaledBuffer );
		scaledBuffer = shrunk;

		scaled_width >>= 1;
		scaled_height >>= 1;
		if ( scaled_width < 1 ) {
			scaled_width = 1;
		}
		if ( scaled_height < 1 ) {
			scaled_height = 1;
		}
		miplevel++;

		// this is a visualization tool that shades each mip map
		// level with a different color so you can see the
		// rasterizer's texture level selection algorithm
		// Changing the color doesn't help with lumminance/alpha/intensity formats...
		if ( depth == TD_DIFFUSE && globalImages->image_colorMipLevels.GetBool() ) {
			R_BlendOverTexture( (byte *)scaledBuffer, scaled_width * scaled_height, mipBlendColors[miplevel] );
		}

		// upload the mip map
		if ( internalFormat == GL_COLOR_INDEX8_EXT ) {
			UploadCompressedNormalMap( scaled_width, scaled_height, scaledBuffer, miplevel );
		} else {
#ifndef DOOMGX
		qglTexImage2D( GL_TEXTURE_2D, miplevel, internalFormat, scaled_width, scaled_height, 0, GL_RGBA, GL_UNSIGNED_BYTE, scaledBuffer );
#else
		qgxTexImage2D(miplevel, internalFormat, scaled_width, scaled_height, GL_RGBA, scaledBuffer);
#endif
		}
	}

	if ( scaledBuffer != 0 ) {
		R_StaticFree( scaledBuffer );
	}

	SetImageFilterAndRepeat();

	// see if we messed anything up
	GL_CheckErrors();
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
	const char	*s;
	char	*f;

	strcpy( fileName, "dds/" );
	f = fileName + strlen( fileName );

	int depth = 0;

	// convert all illegal characters to underscores
	// this could conceivably produce a duplicated mapping, but we aren't going to worry about it
	for ( s = imageProg ; *s ; s++ ) {
		if ( *s == '/' || *s == '\\' || *s == '(') {
			if ( depth < 4 ) {
				*f = '/';
				depth ++;
			} else {
				*f = ' ';
			}
			f++;
		} else if ( *s == '<' || *s == '>' || *s == ':' || *s == '|' || *s == '"' || *s == '.' ) {
			*f = '_';
			f++;
		} else if ( *s == ' ' && *(f-1) == '/' ) {	// ignore a space right after a slash
		} else if ( *s == ')' || *s == ',' ) {		// always ignore these
		} else {
			*f = *s;
			f++;
		}
	}
	*f++ = 0;
	strcat( fileName, ".dds" );
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
	if ( !glConfig.textureCompressionAvailable ) {
		return false;
	}

	if ( !globalImages->image_useCache.GetBool() ) {
		return false;
	}

	// the allowDownSize flag does double-duty as don't-partial-load
	if ( !allowDownSize ) {
		return false;
	}

	if ( globalImages->image_cacheMinK.GetInteger() <= 0 ) {
		return false;
	}

	// if we are doing a copyFiles, make sure the original images are referenced
	if ( fileSystem->PerformingCopyFiles() ) {
		return false;
	}

	char	filename[MAX_IMAGE_NAME];
	ImageProgramStringToCompressedFileName( imgName, filename );

	// get the file timestamp
	fileSystem->ReadFile( filename, NULL, &timestamp );

	if ( timestamp == FILE_NOT_FOUND_TIMESTAMP ) {
		return false;
	}

	// open it and get the file size
	idFile *f;

	f = fileSystem->OpenFileRead( filename );
	if ( !f ) {
		return false;
	}

	int	len = f->Length();
	fileSystem->CloseFile( f );

	if ( len <= globalImages->image_cacheMinK.GetInteger() * 1024 ) {
		return false;
	}

	// we do want to do a partial load
	return true;
}


/*
================
CheckPrecompressedImage

If fullLoad is false, only the small mip levels of the image will be loaded
================
*/
bool idImage::CheckPrecompressedImage( bool fullLoad ) {
	if ( !glConfig.isInitialized || !glConfig.textureCompressionAvailable ) {
		return false;
	}

#if 1 // ( _D3XP had disabled ) - Allow grabbing of DDS's from original Doom pak files
	// if we are doing a copyFiles, make sure the original images are referenced
	if ( fileSystem->PerformingCopyFiles() ) {
		return false;
	}
#endif

	if ( depth == TD_BUMP && globalImages->image_useNormalCompression.GetInteger() != 2 ) {
		return false;
	}

	// god i love last minute hacks :-)
	if ( com_machineSpec.GetInteger() >= 1 && com_videoRam.GetInteger() >= 128 && imgName.Icmpn( "lights/", 7 ) == 0 ) {
		return false;
	}

	char filename[MAX_IMAGE_NAME];
	ImageProgramStringToCompressedFileName( imgName, filename );

	// get the file timestamp
	ID_TIME_T precompTimestamp;
	fileSystem->ReadFile( filename, NULL, &precompTimestamp );


	if ( precompTimestamp == FILE_NOT_FOUND_TIMESTAMP ) {
		return false;
	}

	if ( !generatorFunction && timestamp != FILE_NOT_FOUND_TIMESTAMP ) {
		if ( precompTimestamp < timestamp ) {
			// The image has changed after being precompressed
			return false;
		}
	}

	timestamp = precompTimestamp;

	// open it and just read the header
	idFile *f;

	f = fileSystem->OpenFileRead( filename );
	if ( !f ) {
		return false;
	}

	int	len = f->Length();
	if ( len < sizeof( ddsFileHeader_t ) ) {
		fileSystem->CloseFile( f );
		return false;
	}

	if ( !fullLoad && len > globalImages->image_cacheMinK.GetInteger() * 1024 ) {
		len = globalImages->image_cacheMinK.GetInteger() * 1024;
	}

	byte *data = (byte *)R_StaticAlloc( len );

	f->Read( data, len );

	fileSystem->CloseFile( f );

	unsigned long magic = LittleLong( *(unsigned long *)data );
	ddsFileHeader_t	*_header = (ddsFileHeader_t *)(data + 4);
	int ddspf_dwFlags = LittleLong( _header->ddspf.dwFlags );

	if ( magic != DDS_MAKEFOURCC('D', 'D', 'S', ' ')) {
		common->Printf( "CheckPrecompressedImage( %s ): magic != 'DDS '\n", imgName.c_str() );
		R_StaticFree( data );
		return false;
	}

	// if we don't support color index textures, we must load the full image
	// should we just expand the 256 color image to 32 bit for upload?
	if ( (ddspf_dwFlags & DDSF_ID_INDEXCOLOR) && !glConfig.sharedTexturePaletteAvailable ) {
		R_StaticFree( data );
		return false;
	}

	// upload all the levels
	UploadPrecompressedImage( data, len );

	R_StaticFree( data );

	return true;
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
	ddsFileHeader_t	*header = (ddsFileHeader_t *)(data + 4);

	// ( not byte swapping dwReserved1 dwReserved2 )
	header->dwSize = LittleLong( header->dwSize );
	header->dwFlags = LittleLong( header->dwFlags );
	header->dwHeight = LittleLong( header->dwHeight );
	header->dwWidth = LittleLong( header->dwWidth );
	header->dwPitchOrLinearSize = LittleLong( header->dwPitchOrLinearSize );
	header->dwDepth = LittleLong( header->dwDepth );
	header->dwMipMapCount = LittleLong( header->dwMipMapCount );
	header->dwCaps1 = LittleLong( header->dwCaps1 );
	header->dwCaps2 = LittleLong( header->dwCaps2 );

	header->ddspf.dwSize = LittleLong( header->ddspf.dwSize );
	header->ddspf.dwFlags = LittleLong( header->ddspf.dwFlags );
	header->ddspf.dwFourCC = LittleLong( header->ddspf.dwFourCC );
	header->ddspf.dwRGBBitCount = LittleLong( header->ddspf.dwRGBBitCount );
	header->ddspf.dwRBitMask = LittleLong( header->ddspf.dwRBitMask );
	header->ddspf.dwGBitMask = LittleLong( header->ddspf.dwGBitMask );
	header->ddspf.dwBBitMask = LittleLong( header->ddspf.dwBBitMask );
	header->ddspf.dwABitMask = LittleLong( header->ddspf.dwABitMask );

	// generate the texture number
#ifndef DOOMGX
	qglGenTextures( 1, &texnum );
#else
	qgxGenTextures( 1, &texnum );
#endif

	int externalFormat = 0;

	precompressedFile = true;

	uploadWidth = header->dwWidth;
	uploadHeight = header->dwHeight;
    if ( header->ddspf.dwFlags & DDSF_FOURCC ) {
        switch ( header->ddspf.dwFourCC ) {
        case DDS_MAKEFOURCC( 'D', 'X', 'T', '1' ):
			if ( header->ddspf.dwFlags & DDSF_ALPHAPIXELS ) {
				internalFormat = GL_COMPRESSED_RGBA_S3TC_DXT1_EXT;
			} else {
				internalFormat = GL_COMPRESSED_RGB_S3TC_DXT1_EXT;
			}
            break;
        case DDS_MAKEFOURCC( 'D', 'X', 'T', '3' ):
            internalFormat = GL_COMPRESSED_RGBA_S3TC_DXT3_EXT;
            break;
        case DDS_MAKEFOURCC( 'D', 'X', 'T', '5' ):
            internalFormat = GL_COMPRESSED_RGBA_S3TC_DXT5_EXT;
            break;
		case DDS_MAKEFOURCC( 'R', 'X', 'G', 'B' ):
			internalFormat = GL_COMPRESSED_RGBA_S3TC_DXT5_EXT;
			break;
        default:
            common->Warning( "Invalid compressed internal format\n" );
            return;
        }
    } else if ( ( header->ddspf.dwFlags & DDSF_RGBA ) && header->ddspf.dwRGBBitCount == 32 ) {
		externalFormat = GL_BGRA_EXT;
		internalFormat = GL_RGBA8;
    } else if ( ( header->ddspf.dwFlags & DDSF_RGB ) && header->ddspf.dwRGBBitCount == 32 ) {
        externalFormat = GL_BGRA_EXT;
		internalFormat = GL_RGBA8;
    } else if ( ( header->ddspf.dwFlags & DDSF_RGB ) && header->ddspf.dwRGBBitCount == 24 ) {
		if ( header->ddspf.dwFlags & DDSF_ID_INDEXCOLOR ) {
			externalFormat = GL_COLOR_INDEX;
			internalFormat = GL_COLOR_INDEX8_EXT;
		} else {
			externalFormat = GL_BGR_EXT;
			internalFormat = GL_RGB8;
		}
	} else if ( header->ddspf.dwRGBBitCount == 8 ) {
		externalFormat = GL_ALPHA;
		internalFormat = GL_ALPHA8;
	} else {
		common->Warning( "Invalid uncompressed internal format\n" );
		return;
	}

	// we need the monochrome flag for the NV20 optimized path
	if ( header->dwFlags & DDSF_ID_MONOCHROME ) {
		isMonochrome = true;
	}

	type = TT_2D;			// FIXME: we may want to support pre-compressed cube maps in the future

	Bind();

	int numMipmaps = 1;
	if ( header->dwFlags & DDSF_MIPMAPCOUNT ) {
		numMipmaps = header->dwMipMapCount;
	}

	int uw = uploadWidth;
	int uh = uploadHeight;

	// We may skip some mip maps if we are downsizing
	int skipMip = 0;
	GetDownsize( uploadWidth, uploadHeight );

	byte *imagedata = data + sizeof(ddsFileHeader_t) + 4;

	for ( int i = 0 ; i < numMipmaps; i++ ) {
		int size = 0;
		if ( FormatIsDXT( internalFormat ) ) {
			size = ( ( uw + 3 ) / 4 ) * ( ( uh + 3 ) / 4 ) *
				(internalFormat <= GL_COMPRESSED_RGBA_S3TC_DXT1_EXT ? 8 : 16);
		} else {
			size = uw * uh * (header->ddspf.dwRGBBitCount / 8);
		}

		if ( uw > uploadWidth || uh > uploadHeight ) {
			skipMip++;
		} else {
			if ( FormatIsDXT( internalFormat ) ) {
// DRS TODO: See: http://code.google.com/p/dolphin-emu/source/browse/Source/Core/VideoCommon/Src/TextureDecoder.cpp :583
Sys_Printf("TODO: image_load.cpp: 999 qglCompressedTexImage2DARB( GL_TEXTURE_2D, i - skipMip, internalFormat, uw, uh, 0, size, imagedata );\r\n");

			} else {
				qgxTexImage2D(i - skipMip, internalFormat, uw, uh, externalFormat, imagedata);
			}
		}

		imagedata += size;
		uw /= 2;
		uh /= 2;
		if (uw < 1) {
			uw = 1;
		}
		if (uh < 1) {
			uh = 1;
		}
	}

	SetImageFilterAndRepeat();
}


/*
===============
ActuallyLoadImage

Absolutely every image goes through this path
On exit, the idImage will have a valid OpenGL texture number that can be bound
===============
*/
void	idImage::ActuallyLoadImage( bool checkForPrecompressed, bool fromBackEnd ) {
	int		width, height;
	byte	*pic;

	// this is the ONLY place generatorFunction will ever be called
	if ( generatorFunction ) {
		generatorFunction( this );
		return;
	}

	// if we are a partial image, we are only going to load from a compressed file
	if ( isPartialImage ) {
		if ( CheckPrecompressedImage( false ) ) {
			return;
		}
		// this is an error -- the partial image failed to load
		MakeDefault();
		return;
	}

	//
	// load the image from disk
	//
	if ( cubeFiles != CF_2D ) {
		// DRS TODO: try something... at least...
#ifndef DOOMGX
		byte	*pics[6];

		// we don't check for pre-compressed cube images currently
		R_LoadCubeImages( imgName, cubeFiles, pics, &width, &timestamp );

		if ( pics[0] == NULL ) {
			common->Warning( "Couldn't load cube image: %s", imgName.c_str() );
			MakeDefault();
			return;
		}

		GenerateCubeImage( (const byte **)pics, width, filter, allowDownSize, depth );
		precompressedFile = false;

		for ( int i = 0 ; i < 6 ; i++ ) {
			if ( pics[i] ) {
				R_StaticFree( pics[i] );
			}
		}
#endif
	} else {
		// see if we have a pre-generated image file that is
		// already image processed and compressed
		if ( checkForPrecompressed && globalImages->image_usePrecompressedTextures.GetBool() ) {
			if ( CheckPrecompressedImage( true ) ) {
				// we got the precompressed image
				return;
			}
			// fall through to load the normal image
		}

		R_LoadImageProgram( imgName, &pic, &width, &height, &timestamp, &depth );

		if ( pic == NULL ) {
			common->Warning( "Couldn't load image: %s", imgName.c_str() );
			MakeDefault();
			return;
		}
/*
		// swap the red and alpha for rxgb support
		// do this even on tga normal maps so we only have to use
		// one fragment program
		// if the image is precompressed ( either in palletized mode or true rxgb mode )
		// then it is loaded above and the swap never happens here
		if ( depth == TD_BUMP && globalImages->image_useNormalCompression.GetInteger() != 1 ) {
			for ( int i = 0; i < width * height * 4; i += 4 ) {
				pic[ i + 3 ] = pic[ i ];
				pic[ i ] = 0;
			}
		}
*/
		// build a hash for checking duplicate image files
		// NOTE: takes about 10% of image load times (SD)
		// may not be strictly necessary, but some code uses it, so let's leave it in
		imageHash = MD4_BlockChecksum( pic, width * height * 4 );

		GenerateImage( pic, width, height, filter, allowDownSize, repeat, depth );
		timestamp = timestamp;
		precompressedFile = false;

		R_StaticFree( pic );

		// write out the precompressed version of this file if needed
		WritePrecompressedImage();
	}
}


//=========================================================================================================

/*
===============
PurgeImage
===============
*/
void idImage::PurgeImage() {
	if ( texnum != TEXTURE_NOT_LOADED ) {
		// sometimes is NULL when exiting with an error
		if ( qglDeleteTextures ) {
#ifndef DOOMGX
			qglDeleteTextures( 1, &texnum );	// this should be the ONLY place it is ever called!
#else
			qgxDeleteTextures( 1, &texnum );
#endif

		}
		texnum = TEXTURE_NOT_LOADED;
	}

	// clear all the current binding caches, so the next bind will do a real one
	for ( int i = 0 ; i < MAX_MULTITEXTURE_UNITS ; i++ ) {
		backEnd.glState.tmu[i].current2DMap = -1;
		backEnd.glState.tmu[i].current3DMap = -1;
		backEnd.glState.tmu[i].currentCubeMap = -1;
	}
}

/*
==============
Bind

Automatically enables 2D mapping, cube mapping, or 3D texturing if needed
==============
*/
void idImage::Bind() {
	if ( tr.logFile ) {
		RB_LogComment( "idImage::Bind( %s )\n", imgName.c_str() );
	}

	// if this is an image that we are caching, move it to the front of the LRU chain
	if ( partialImage ) {
		if ( cacheUsageNext ) {
			// unlink from old position
			cacheUsageNext->cacheUsagePrev = cacheUsagePrev;
			cacheUsagePrev->cacheUsageNext = cacheUsageNext;
		}
		// link in at the head of the list
		cacheUsageNext = globalImages->cacheLRU.cacheUsageNext;
		cacheUsagePrev = &globalImages->cacheLRU;

		cacheUsageNext->cacheUsagePrev = this;
		cacheUsagePrev->cacheUsageNext = this;
	}

	// load the image if necessary (FIXME: not SMP safe!)
	if ( texnum == TEXTURE_NOT_LOADED ) {
		if ( partialImage ) {
			// if we have a partial image, go ahead and use that
			this->partialImage->Bind();

			// start a background load of the full thing if it isn't already in the queue
			if ( !backgroundLoadInProgress ) {
				StartBackgroundImageLoad();
			}
			return;
		}

		// load the image on demand here, which isn't our normal game operating mode
		ActuallyLoadImage( true, true );	// check for precompressed, load is from back end
	}


	// bump our statistic counters
	frameUsed = backEnd.frameCount;
	bindCount++;

	tmu_t			*tmu = &backEnd.glState.tmu[backEnd.glState.currenttmu];

	// enable or disable apropriate texture modes
	if ( tmu->textureType != type && ( backEnd.glState.currenttmu <	glConfig.maxTextureUnits ) ) {
#ifndef DOOMGX
		if ( tmu->textureType == TT_CUBIC ) {
			qglDisable( GL_TEXTURE_CUBE_MAP_EXT );
		} else if ( tmu->textureType == TT_3D ) {
			qglDisable( GL_TEXTURE_3D );
		} else if ( tmu->textureType == TT_2D ) {
			qglDisable( GL_TEXTURE_2D );
		}

		if ( type == TT_CUBIC ) {
			qglEnable( GL_TEXTURE_CUBE_MAP_EXT );
		} else if ( type == TT_3D ) {
			qglEnable( GL_TEXTURE_3D );
		} else if ( type == TT_2D ) {
			qglEnable( GL_TEXTURE_2D );
		}
#endif
		tmu->textureType = type;
	}

	// bind the texture
	if ( type == TT_2D ) {
		if ( tmu->current2DMap != texnum ) {
			tmu->current2DMap = texnum;
#ifndef DOOMGX
			qglBindTexture( GL_TEXTURE_2D, texnum );
#else
			qgxBindTexture(texnum);
#endif
		}
	} else if ( type == TT_CUBIC ) {
		if ( tmu->currentCubeMap != texnum ) {
			tmu->currentCubeMap = texnum;
#ifndef DOOMGX
			qglBindTexture( GL_TEXTURE_CUBE_MAP_EXT, texnum );
#else
			qgxBindTexture(texnum);
#endif
		}
	} else if ( type == TT_3D ) {
		if ( tmu->current3DMap != texnum ) {
			tmu->current3DMap = texnum;
#ifndef DOOMGX
			qglBindTexture( GL_TEXTURE_3D, texnum );
#else
			qgxBindTexture(texnum);
#endif
		}
	}

#ifndef DOOMGX
	if ( com_purgeAll.GetBool() ) {
		GLclampf priority = 1.0f;
		qglPrioritizeTextures( 1, &texnum, &priority );
	}
#endif
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
    Sys_Printf(">>> void idImage::UploadScratch( const byte *data, int cols, int rows )\r\n");

	// if rows = cols * 6, assume it is a cube map animation
	if ( rows == cols * 6 ) {
#ifndef DOOMGX
		int			i;

		if ( type != TT_CUBIC ) {
			type = TT_CUBIC;
			uploadWidth = -1;	// for a non-sub upload
		}

		Bind();

		rows /= 6;
		// if the scratchImage isn't in the format we want, specify it as a new texture
		if ( cols != uploadWidth || rows != uploadHeight ) {
			uploadWidth = cols;
			uploadHeight = rows;

			// upload the base level
			for ( i = 0 ; i < 6 ; i++ ) {
				qglTexImage2D( GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT+i, 0, GL_RGB8, cols, rows, 0,
					GL_RGBA, GL_UNSIGNED_BYTE, data + cols*rows*4*i );
			}
		} else {
			// otherwi se, just subimage upload it so that drivers can tell we are going to be changing
			// it and don't try and do a texture compression
			for ( i = 0 ; i < 6 ; i++ ) {
				qglTexSubImage2D( GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT+i, 0, 0, 0, cols, rows,
					GL_RGBA, GL_UNSIGNED_BYTE, data + cols*rows*4*i );
			}
		}
		qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
		qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
		// no other clamp mode makes sense
		qglTexParameteri(GL_TEXTURE_CUBE_MAP_EXT, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
		qglTexParameteri(GL_TEXTURE_CUBE_MAP_EXT, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
#endif
	} else {
		// otherwise, it is a 2D image
		if ( type != TT_2D ) {
			type = TT_2D;
			uploadWidth = -1;	// for a non-sub upload
		}

		Bind();

		// if the scratchImage isn't in the format we want, specify it as a new texture
		if ( cols != uploadWidth || rows != uploadHeight ) {
			uploadWidth = cols;
			uploadHeight = rows;
			#ifndef DOOMGX
			qglTexImage2D( GL_TEXTURE_2D, 0, GL_RGB8, cols, rows, 0, GL_RGBA, GL_UNSIGNED_BYTE, data );
			#else
			qgxTexImage2D(0, GL_RGB8, cols, rows, GL_RGBA, (byte *) data);
			#endif
		} else {
			// otherwise, just subimage upload it so that drivers can tell we are going to be changing
			// it and don't try and do a texture compression
			#ifndef DOOMGX
			qglTexSubImage2D( GL_TEXTURE_2D, 0, 0, 0, cols, rows, GL_RGBA, GL_UNSIGNED_BYTE, data );

			qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
			qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
			// these probably should be clamp, but we have a lot of issues with editor
			// geometry coming out with texcoords slightly off one side, resulting in
			// a smear across the entire polygon
			qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT );
			qglTexParameterf( GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT );

			#else
			qgxTexImage2D(0, GL_RGB8, cols, rows, GL_RGBA, (byte *) data); // DRS TODO: can we do this?
			qgxSetGLTexParam(GL_REPEAT, GL_REPEAT, GL_LINEAR, GL_LINEAR, 1);
			#endif
		}
	}
}



void idImage::SetClassification( int tag ) {
	classification = tag;
}

/*
==================
StorageSize
==================
*/
int idImage::StorageSize() const {
	int		baseSize;

	if ( texnum == TEXTURE_NOT_LOADED ) {
		return 0;
	}

	switch ( type ) {
	default:
	case TT_2D:
		baseSize = uploadWidth*uploadHeight;
		break;
	case TT_3D:
		baseSize = uploadWidth*uploadHeight*uploadDepth;
		break;
	case TT_CUBIC:
		baseSize = 6 * uploadWidth*uploadHeight;
		break;
	}

	baseSize *= BitsForInternalFormat( internalFormat );

	baseSize /= 8;

	// account for mip mapping
	baseSize = baseSize * 4 / 3;

	return baseSize;
}

/*
==================
Print
==================
*/
void idImage::Print() const {
	if ( precompressedFile ) {
		common->Printf( "P" );
	} else if ( generatorFunction ) {
		common->Printf( "F" );
	} else {
		common->Printf( " " );
	}

	switch ( type ) {
	case TT_2D:
		common->Printf( " " );
		break;
	case TT_3D:
		common->Printf( "3" );
		break;
	case TT_CUBIC:
		common->Printf( "C" );
		break;
	case TT_RECT:
		common->Printf( "R" );
		break;
	default:
		common->Printf( "<BAD TYPE:%i>", type );
		break;
	}

	common->Printf( "%4i %4i ",	uploadWidth, uploadHeight );

	switch( filter ) {
	case TF_DEFAULT:
		common->Printf( "dflt " );
		break;
	case TF_LINEAR:
		common->Printf( "linr " );
		break;
	case TF_NEAREST:
		common->Printf( "nrst " );
		break;
	default:
		common->Printf( "<BAD FILTER:%i>", filter );
		break;
	}

	switch ( internalFormat ) {
	case GL_INTENSITY8:
	case 1:
		common->Printf( "I     " );
		break;
	case 2:
	case GL_LUMINANCE8_ALPHA8:
		common->Printf( "LA    " );
		break;
	case 3:
		common->Printf( "RGB   " );
		break;
	case 4:
		common->Printf( "RGBA  " );
		break;
	case GL_LUMINANCE8:
		common->Printf( "L     " );
		break;
	case GL_ALPHA8:
		common->Printf( "A     " );
		break;
	case GL_RGBA8:
		common->Printf( "RGBA8 " );
		break;
	case GL_RGB8:
		common->Printf( "RGB8  " );
		break;
	case GL_COMPRESSED_RGB_S3TC_DXT1_EXT:
		common->Printf( "DXT1  " );
		break;
	case GL_COMPRESSED_RGBA_S3TC_DXT1_EXT:
		common->Printf( "DXT1A " );
		break;
	case GL_COMPRESSED_RGBA_S3TC_DXT3_EXT:
		common->Printf( "DXT3  " );
		break;
	case GL_COMPRESSED_RGBA_S3TC_DXT5_EXT:
		common->Printf( "DXT5  " );
		break;
	case GL_RGBA4:
		common->Printf( "RGBA4 " );
		break;
	case GL_RGB5:
		common->Printf( "RGB5  " );
		break;
	case GL_COLOR_INDEX8_EXT:
		common->Printf( "CI8   " );
		break;
	case GL_COLOR_INDEX:
		common->Printf( "CI    " );
		break;
	case GL_COMPRESSED_RGB_ARB:
		common->Printf( "RGBC  " );
		break;
	case GL_COMPRESSED_RGBA_ARB:
		common->Printf( "RGBAC " );
		break;
	case 0:
		common->Printf( "      " );
		break;
	default:
		common->Printf( "<BAD FORMAT:%i>", internalFormat );
		break;
	}

	switch ( repeat ) {
	case TR_REPEAT:
		common->Printf( "rept " );
		break;
	case TR_CLAMP_TO_ZERO:
		common->Printf( "zero " );
		break;
	case TR_CLAMP_TO_ZERO_ALPHA:
		common->Printf( "azro " );
		break;
	case TR_CLAMP:
		common->Printf( "clmp " );
		break;
	default:
		common->Printf( "<BAD REPEAT:%i>", repeat );
		break;
	}

	common->Printf( "%4ik ", StorageSize() / 1024 );

	common->Printf( " %s\n", imgName.c_str() );
}

