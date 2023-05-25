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

const char *imageFilter[] = {
	"GL_LINEAR_MIPMAP_NEAREST",
	"GL_LINEAR_MIPMAP_LINEAR",
	"GL_NEAREST",
	"GL_LINEAR",
	"GL_NEAREST_MIPMAP_NEAREST",
	"GL_NEAREST_MIPMAP_LINEAR",
	NULL
};

idCVar idImageManager::image_filter( "image_filter", imageFilter[1], CVAR_RENDERER | CVAR_ARCHIVE, "changes texture filtering on mipmapped images", imageFilter, idCmdSystem::ArgCompletion_String<imageFilter> );
idCVar idImageManager::image_anisotropy( "image_anisotropy", "1", CVAR_RENDERER | CVAR_ARCHIVE, "set the maximum texture anisotropy if available" );
idCVar idImageManager::image_lodbias( "image_lodbias", "0", CVAR_RENDERER | CVAR_ARCHIVE, "change lod bias on mipmapped images" );
idCVar idImageManager::image_downSize( "image_downSize", "0", CVAR_RENDERER | CVAR_ARCHIVE, "controls texture downsampling" );
idCVar idImageManager::image_forceDownSize( "image_forceDownSize", "0", CVAR_RENDERER | CVAR_ARCHIVE | CVAR_BOOL, "" );
idCVar idImageManager::image_roundDown( "image_roundDown", "1", CVAR_RENDERER | CVAR_ARCHIVE | CVAR_BOOL, "round bad sizes down to nearest power of two" );
idCVar idImageManager::image_colorMipLevels( "image_colorMipLevels", "0", CVAR_RENDERER | CVAR_BOOL, "development aid to see texture mip usage" );
idCVar idImageManager::image_preload( "image_preload", "1", CVAR_RENDERER | CVAR_BOOL | CVAR_ARCHIVE, "if 0, dynamically load all images" );
idCVar idImageManager::image_useCompression( "image_useCompression", "1", CVAR_RENDERER | CVAR_ARCHIVE | CVAR_BOOL, "0 = force everything to high quality" );
idCVar idImageManager::image_useAllFormats( "image_useAllFormats", "1", CVAR_RENDERER | CVAR_ARCHIVE | CVAR_BOOL, "allow alpha/intensity/luminance/luminance+alpha" );
idCVar idImageManager::image_useNormalCompression( "image_useNormalCompression", "2", CVAR_RENDERER | CVAR_ARCHIVE | CVAR_INTEGER, "2 = use rxgb compression for normal maps, 1 = use 256 color compression for normal maps if available" );
idCVar idImageManager::image_usePrecompressedTextures( "image_usePrecompressedTextures", "1", CVAR_RENDERER | CVAR_ARCHIVE | CVAR_BOOL, "use .dds files if present" );
idCVar idImageManager::image_writePrecompressedTextures( "image_writePrecompressedTextures", "0", CVAR_RENDERER | CVAR_BOOL, "write .dds files if necessary" );
idCVar idImageManager::image_writeNormalTGA( "image_writeNormalTGA", "0", CVAR_RENDERER | CVAR_BOOL, "write .tgas of the final normal maps for debugging" );
idCVar idImageManager::image_writeNormalTGAPalletized( "image_writeNormalTGAPalletized", "0", CVAR_RENDERER | CVAR_BOOL, "write .tgas of the final palletized normal maps for debugging" );
idCVar idImageManager::image_writeTGA( "image_writeTGA", "0", CVAR_RENDERER | CVAR_BOOL, "write .tgas of the non normal maps for debugging" );
idCVar idImageManager::image_useOffLineCompression( "image_useOfflineCompression", "0", CVAR_RENDERER | CVAR_BOOL, "write a batch file for offline compression of DDS files" );
idCVar idImageManager::image_cacheMinK( "image_cacheMinK", "200", CVAR_RENDERER | CVAR_ARCHIVE | CVAR_INTEGER, "maximum KB of precompressed files to read at specification time" );
idCVar idImageManager::image_cacheMegs( "image_cacheMegs", "20", CVAR_RENDERER | CVAR_ARCHIVE, "maximum MB set aside for temporary loading of full-sized precompressed images" );
idCVar idImageManager::image_useCache( "image_useCache", "0", CVAR_RENDERER | CVAR_ARCHIVE | CVAR_BOOL, "1 = do background load image caching" );
idCVar idImageManager::image_showBackgroundLoads( "image_showBackgroundLoads", "0", CVAR_RENDERER | CVAR_BOOL, "1 = print number of outstanding background loads" );
idCVar idImageManager::image_downSizeSpecular( "image_downSizeSpecular", "0", CVAR_RENDERER | CVAR_ARCHIVE, "controls specular downsampling" );
idCVar idImageManager::image_downSizeBump( "image_downSizeBump", "0", CVAR_RENDERER | CVAR_ARCHIVE, "controls normal map downsampling" );
idCVar idImageManager::image_downSizeSpecularLimit( "image_downSizeSpecularLimit", "64", CVAR_RENDERER | CVAR_ARCHIVE, "controls specular downsampled limit" );
idCVar idImageManager::image_downSizeBumpLimit( "image_downSizeBumpLimit", "128", CVAR_RENDERER | CVAR_ARCHIVE, "controls normal map downsample limit" );
idCVar idImageManager::image_ignoreHighQuality( "image_ignoreHighQuality", "0", CVAR_RENDERER | CVAR_ARCHIVE, "ignore high quality setting on materials" );
idCVar idImageManager::image_downSizeLimit( "image_downSizeLimit", "256", CVAR_RENDERER | CVAR_ARCHIVE, "controls diffuse map downsample limit" ); 
// do this with a pointer, in case we want to make the actual manager
// a private virtual subclass
idImageManager	imageManager;
idImageManager	*globalImages = &imageManager;


enum IMAGE_CLASSIFICATION {
	IC_NPC,
	IC_WEAPON,
	IC_MONSTER,
	IC_MODELGEOMETRY,
	IC_ITEMS,
	IC_MODELSOTHER,
	IC_GUIS,
	IC_WORLDGEOMETRY,
	IC_OTHER,
	IC_COUNT
};

struct imageClassificate_t {
	const char *rootPath;
	const char *desc;
	int type;
	int maxWidth;
	int maxHeight;
};

typedef idList< int > intList;

const imageClassificate_t IC_Info[] = {
	{ "models/characters", "Characters", IC_NPC, 512, 512 },
	{ "models/weapons", "Weapons", IC_WEAPON, 512, 512 },
	{ "models/monsters", "Monsters", IC_MONSTER, 512, 512 },
	{ "models/mapobjects", "Model Geometry", IC_MODELGEOMETRY, 512, 512 },
	{ "models/items", "Items", IC_ITEMS, 512, 512 },
	{ "models", "Other model textures", IC_MODELSOTHER, 512, 512 },
	{ "guis/assets", "Guis", IC_GUIS, 256, 256 },
	{ "textures", "World Geometry", IC_WORLDGEOMETRY, 256, 256 },
	{ "", "Other", IC_OTHER, 256, 256 }
};



static int ClassifyImage( const char *name ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int ClassifyImage( const char *name )\r\n");
    return retVal;
}


/*
================
R_RampImage

Creates a 0-255 ramp image
================
*/
static void R_RampImage( idImage *image ) {
    Sys_Printf("void R_RampImage( idImage *image )\r\n");
}


/*
================
R_SpecularTableImage

Creates a ramp that matches our fudged specular calculation
================
*/
static void R_SpecularTableImage( idImage *image ) {
    Sys_Printf("void R_SpecularTableImage( idImage *image )\r\n");
}



/*
================
R_Specular2DTableImage

Create a 2D table that calculates ( reflection dot , specularity )
================
*/
static void R_Specular2DTableImage( idImage *image ) {
    Sys_Printf("void R_Specular2DTableImage( idImage *image )\r\n");
}




/*
================
R_AlphaRampImage

Creates a 0-255 ramp image
================
*/
static void R_AlphaRampImage( idImage *image ) {
    Sys_Printf("void R_AlphaRampImage( idImage *image )\r\n");
}




/*
==================
R_CreateDefaultImage

the default image will be grey with a white box outline
to allow you to see the mapping coordinates on a surface
==================
*/
#define	DEFAULT_SIZE	16
void idImage::MakeDefault() {
    Sys_Printf("void idImage::MakeDefault()\r\n");
}


static void R_DefaultImage( idImage *image ) {
    Sys_Printf("void R_DefaultImage( idImage *image )\r\n");
}


static void R_WhiteImage( idImage *image ) {
    Sys_Printf("void R_WhiteImage( idImage *image )\r\n");
}


static void R_BlackImage( idImage *image ) {
    Sys_Printf("void R_BlackImage( idImage *image )\r\n");
}



// the size determines how far away from the edge the blocks start fading
static const int BORDER_CLAMP_SIZE = 32;
static void R_BorderClampImage( idImage *image ) {
    Sys_Printf("void R_BorderClampImage( idImage *image )\r\n");
}


static void R_RGBA8Image( idImage *image ) {
    Sys_Printf("void R_RGBA8Image( idImage *image )\r\n");
}


static void R_RGB8Image( idImage *image ) {
    Sys_Printf("void R_RGB8Image( idImage *image )\r\n");
}


static void R_AlphaNotchImage( idImage *image ) {
    Sys_Printf("void R_AlphaNotchImage( idImage *image )\r\n");
}


static void R_FlatNormalImage( idImage *image ) {
    Sys_Printf("void R_FlatNormalImage( idImage *image )\r\n");
}


static void R_AmbientNormalImage( idImage *image ) {
    Sys_Printf("void R_AmbientNormalImage( idImage *image )\r\n");
}



static void CreateSquareLight( void ) {
    Sys_Printf("void CreateSquareLight( void )\r\n");
}


static void CreateFlashOff( void ) {
    Sys_Printf("void CreateFlashOff( void )\r\n");
}



/*
===============
CreatePitFogImage
===============
*/
void CreatePitFogImage( void ) {
    Sys_Printf("void CreatePitFogImage( void )\r\n");
}


/*
===============
CreatealphaSquareImage
===============
*/
void CreatealphaSquareImage( void ) {
    Sys_Printf("void CreatealphaSquareImage( void )\r\n");
}


#define	NORMAL_MAP_SIZE		32

/*** NORMALIZATION CUBE MAP CONSTRUCTION ***/

/* Given a cube map face index, cube map size, and integer 2D face position,
 * return the cooresponding normalized vector.
 */
static void getCubeVector(int i, int cubesize, int x, int y, float *vector) {
    Sys_Printf("void getCubeVector(int i, int cubesize, int x, int y, float *vector)\r\n");
}


/* Initialize a cube map texture object that generates RGB values
 * that when expanded to a [-1,1] range in the register combiners
 * form a normalized vector matching the per-pixel vector used to
 * access the cube map.
 */
static void makeNormalizeVectorCubeMap( idImage *image ) {
    Sys_Printf("void makeNormalizeVectorCubeMap( idImage *image )\r\n");
}





/*
================
R_CreateNoFalloffImage

This is a solid white texture that is zero clamped.
================
*/
static void R_CreateNoFalloffImage( idImage *image ) {
    Sys_Printf("void R_CreateNoFalloffImage( idImage *image )\r\n");
}



/*
================
R_FogImage

We calculate distance correctly in two planes, but the
third will still be projection based
================
*/
const int	FOG_SIZE = 128;

void R_FogImage( idImage *image ) {
    Sys_Printf("void R_FogImage( idImage *image )\r\n");
}



/*
================
FogFraction

Height values below zero are inside the fog volume
================
*/
static const float	RAMP_RANGE =	8;
static const float	DEEP_RANGE =	-30;
static float	FogFraction( float viewHeight, float targetHeight ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("floatFogFraction( float viewHeight, float targetHeight )\r\n");
    return retVal;
}


/*
================
R_FogEnterImage

Modulate the fog alpha density based on the distance of the
start and end points to the terminator plane
================
*/
void R_FogEnterImage( idImage *image ) {
    Sys_Printf("void R_FogEnterImage( idImage *image )\r\n");
}



/*
================
R_QuadraticImage

================
*/
static const int	QUADRATIC_WIDTH = 32;
static const int	QUADRATIC_HEIGHT = 4;

void R_QuadraticImage( idImage *image ) {
    Sys_Printf("void R_QuadraticImage( idImage *image )\r\n");
}


//=====================================================================


typedef struct {
	char *name;
	int	minimize, maximize;
} filterName_t;



/*
===============
ChangeTextureFilter

This resets filtering on all loaded images
New images will automatically pick up the current values.
===============
*/
void idImageManager::ChangeTextureFilter( void ) {
    Sys_Printf("void idImageManager::ChangeTextureFilter( void )\r\n");
}


/*
===============
idImage::Reload
===============
*/
void idImage::Reload( bool checkPrecompressed, bool force ) {
    Sys_Printf("void idImage::Reload( bool checkPrecompressed, bool force )\r\n");
}


/*
===============
R_ReloadImages_f

Regenerate all images that came directly from files that have changed, so
any saved changes will show up in place.

New r_texturesize/r_texturedepth variables will take effect on reload

reloadImages <all>
===============
*/
void R_ReloadImages_f( const idCmdArgs &args ) {
    Sys_Printf("void R_ReloadImages_f( const idCmdArgs &args )\r\n");
}


typedef struct {
	idImage	*image;
	int		size;
} sortedImage_t;

/*
=======================
R_QsortImageSizes

=======================
*/
static int R_QsortImageSizes( const void *a, const void *b ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int R_QsortImageSizes( const void *a, const void *b )\r\n");
    return retVal;
}


/*
===============
R_ListImages_f
===============
*/
void R_ListImages_f( const idCmdArgs &args ) {
    Sys_Printf("void R_ListImages_f( const idCmdArgs &args )\r\n");
}


/*
==================
SetNormalPalette

Create a 256 color palette to be used by compressed normal maps
==================
*/
void idImageManager::SetNormalPalette( void ) {
    Sys_Printf("void idImageManager::SetNormalPalette( void )\r\n");
}


/*
==============
AllocImage

Allocates an idImage, adds it to the list,
copies the name, and adds it to the hash chain.
==============
*/
idImage *idImageManager::AllocImage( const char *name ) {
    Sys_Printf("idImage *idImageManager::AllocImage( const char *name )\r\n");
    return NULL;
}


/*
==================
ImageFromFunction

Images that are procedurally generated are allways specified
with a callback which must work at any time, allowing the OpenGL
system to be completely regenerated if needed.
==================
*/
idImage *idImageManager::ImageFromFunction( const char *_name, void (*generatorFunction)( idImage *image ) ) {
	idStr name;
	idImage	*image;
	int	hash;

	if ( !name ) {
		common->FatalError( "idImageManager::ImageFromFunction: NULL name" );
	}

	// strip any .tga file extensions from anywhere in the _name
	name = _name;
	name.Replace( ".tga", "" );
	name.BackSlashesToSlashes();

	// see if the image already exists
	hash = name.FileNameHash();
	for ( image = imageHashTable[hash] ; image; image = image->hashNext ) {
		if ( name.Icmp( image->imgName ) == 0 ) {
			if ( image->generatorFunction != generatorFunction ) {
				common->DPrintf( "WARNING: reused image %s with mixed generators\n", name.c_str() );
			}
			return image;
		}
	}

	// create the image and issue the callback
	image = AllocImage( name );

	image->generatorFunction = generatorFunction;

	if ( image_preload.GetBool() ) {
		// check for precompressed, load is from the front end
		image->referencedOutsideLevelLoad = true;
		image->ActuallyLoadImage( true, false );
	}

	return image;
}

/*
===============
ImageFromFile

Finds or loads the given image, always returning a valid image pointer.
Loading of the image may be deferred for dynamic loading.
==============
*/
idImage	*idImageManager::ImageFromFile( const char *_name, textureFilter_t filter, bool allowDownSize,
						 textureRepeat_t repeat, textureDepth_t depth, cubeFiles_t cubeMap ) {
    Sys_Printf("idImage*idImageManager::ImageFromFile( const char *_name, textureFilter_t filter, bool allowDownSize, textureRepeat_t repeat, textureDepth_t depth, cubeFiles_t cubeMap )\r\n");
    return NULL;
}


/*
===============
idImageManager::GetImage
===============
*/
idImage *idImageManager::GetImage( const char *_name ) const {
    Sys_Printf("idImage *idImageManager::GetImage( const char *_name )\r\n");
    return NULL;
}


/*
===============
PurgeAllImages
===============
*/
void idImageManager::PurgeAllImages() {
    Sys_Printf("void idImageManager::PurgeAllImages()\r\n");
}


/*
===============
ReloadAllImages
===============
*/
void idImageManager::ReloadAllImages() {
    Sys_Printf("void idImageManager::ReloadAllImages()\r\n");
}


/*
===============
R_CombineCubeImages_f

Used to combine animations of six separate tga files into
a serials of 6x taller tga files, for preparation to roq compress
===============
*/
void R_CombineCubeImages_f( const idCmdArgs &args ) {
    Sys_Printf("void R_CombineCubeImages_f( const idCmdArgs &args )\r\n");
}



/*
==================
idImage::StartBackgroundImageLoad
==================
*/
void idImage::StartBackgroundImageLoad() {
    Sys_Printf("void idImage::StartBackgroundImageLoad()\r\n");
}


/*
==================
R_CompleteBackgroundImageLoads

Do we need to worry about vid_restarts here?
==================
*/
void idImageManager::CompleteBackgroundImageLoads() {
    Sys_Printf("void idImageManager::CompleteBackgroundImageLoads()\r\n");
}


/*
===============
CheckCvars
===============
*/
void idImageManager::CheckCvars() {
    Sys_Printf("void idImageManager::CheckCvars()\r\n");
}


/*
===============
SumOfUsedImages
===============
*/
int idImageManager::SumOfUsedImages() {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idImageManager::SumOfUsedImages()\r\n");
    return retVal;
}


/*
===============
BindNull
===============
*/
void idImageManager::BindNull() {
    Sys_Printf("void idImageManager::BindNull()\r\n");
}


/*
===============
Init
===============
*/
void idImageManager::Init() {
    Sys_Printf("void idImageManager::Init()\r\n");
}


/*
===============
Shutdown
===============
*/
void idImageManager::Shutdown() {
    Sys_Printf("void idImageManager::Shutdown()\r\n");
}


/*
====================
BeginLevelLoad

Mark all file based images as currently unused,
but don't free anything.  Calls to ImageFromFile() will
either mark the image as used, or create a new image without
loading the actual data.
====================
*/
void idImageManager::BeginLevelLoad() {
    Sys_Printf("void idImageManager::BeginLevelLoad()\r\n");
}


/*
====================
EndLevelLoad

Free all images marked as unused, and load all images that are necessary.
This architecture prevents us from having the union of two level's
worth of data present at one time.

preload everything, never free
preload everything, free unused after level load
blocking load on demand
preload low mip levels, background load remainder on demand
====================
*/
void idImageManager::EndLevelLoad() {
    Sys_Printf("void idImageManager::EndLevelLoad()\r\n");
}


/*
===============
idImageManager::StartBuild
===============
*/
void idImageManager::StartBuild() {
    Sys_Printf("void idImageManager::StartBuild()\r\n");
}


/*
===============
idImageManager::FinishBuild
===============
*/
void idImageManager::FinishBuild( bool removeDups ) {
    Sys_Printf("void idImageManager::FinishBuild( bool removeDups )\r\n");
}


/*
===============
idImageManager::AddDDSCommand
===============
*/
void idImageManager::AddDDSCommand( const char *cmd ) {
    Sys_Printf("void idImageManager::AddDDSCommand( const char *cmd )\r\n");
}


/*
===============
idImageManager::PrintMemInfo
===============
*/
void idImageManager::PrintMemInfo( MemInfo_t *mi ) {
    Sys_Printf("void idImageManager::PrintMemInfo( MemInfo_t *mi )\r\n");
}

