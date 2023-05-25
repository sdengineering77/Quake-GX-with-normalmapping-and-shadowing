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
#include "../sys/win32/win_local.h"

/*

strictly experimental / research codepaths

!!!if we use front facing occluders, we can portal flow from light centers

try depth_component_16 rendering

do we care about portals from light perspective? back / front face issues.

how do we do weapon depth hacks with shadow buffers?
	distort their world space vertexes instead of offsetting their depth?

jittering off the side of a projection will give wrong shadows

really huge lights, like sunlight, are going to be problematic with fixed projections
	we could tile the projections and let the auto-resize cut them down as necessary

It sucks that depth buffers are non-linear, because the bias and compares change with distance

polygon offset factor causes occasional texture holes from highly angled textures

*/

static	bool		initialized;

static	int lightBufferSize = 1024;
static	int	maxLightBufferSize = 1024;
static float lightBufferSizeFraction = 0.5;

static	int viewBufferSize = 1024;
static	int	viewBufferHeight = 768;
static	int	maxViewBufferSize = 1024;
static float viewBufferSizeFraction = 0.5;
static float viewBufferHeightFraction = 0.5;
static	bool	nativeViewBuffer = false;		// true if viewBufferSize is the viewport width

static	HPBUFFERARB	floatPbuffer;
static	HDC			floatPbufferDC;
static	idImage		*floatPbufferImage;

static	HPBUFFERARB	floatPbuffer2;
static	HDC			floatPbuffer2DC;
static	idImage		*floatPbuffer2Image;

static	HPBUFFERARB	floatPbufferQuarter;
static	HDC			floatPbufferQuarterDC;
static	idImage		*floatPbufferQuarterImage;

static	HGLRC		floatContext;

static	HPBUFFERARB	shadowPbuffer;
static	HDC			shadowPbufferDC;

static	HPBUFFERARB	viewPbuffer;
static	HDC			viewPbufferDC;

static	idImage		*shadowImage[3];

static	idImage		*viewDepthImage;
static	idImage		*viewAlphaImage;

static	idImage		*viewShadowImage;

static	idImage		*jitterImage16;
static	idImage		*jitterImage4;
static	idImage		*jitterImage1;

static	idImage		*random256Image;

static	int			shadowVertexProgram;
static	int			shadowFragmentProgram16;
static	int			shadowFragmentProgram4;
static	int			shadowFragmentProgram1;
static	int			shadowFragmentProgram0;

static	int			screenSpaceShadowVertexProgram;
static	int			screenSpaceShadowFragmentProgram16;
static	int			screenSpaceShadowFragmentProgram4;
static	int			screenSpaceShadowFragmentProgram1;
static	int			screenSpaceShadowFragmentProgram0;

static	int			depthMidpointVertexProgram;
static	int			depthMidpointFragmentProgram;

static	int			shadowResampleVertexProgram;
static	int			shadowResampleFragmentProgram;

static	int			gammaDitherVertexProgram;
static	int			gammaDitherFragmentProgram;

static	int			downSampleVertexProgram;
static	int			downSampleFragmentProgram;

static	int			bloomVertexProgram;
static	int			bloomFragmentProgram;

static	float		viewLightAxialSize;

idCVar r_sb_lightResolution( "r_sb_lightResolution", "1024", CVAR_RENDERER | CVAR_INTEGER, "Pixel dimensions for each shadow buffer, 64 - 2048" );
idCVar r_sb_viewResolution( "r_sb_viewResolution", "1024", CVAR_RENDERER | CVAR_INTEGER, "Width of screen space shadow sampling" );
idCVar r_sb_noShadows( "r_sb_noShadows", "0", CVAR_RENDERER | CVAR_BOOL, "don't draw any occluders" );
idCVar r_sb_usePbuffer( "r_sb_usePbuffer", "1", CVAR_RENDERER | CVAR_BOOL, "draw offscreen" );
idCVar r_sb_jitterScale( "r_sb_jitterScale", "0.006", CVAR_RENDERER | CVAR_FLOAT, "scale factor for jitter offset" );
idCVar r_sb_biasScale( "r_sb_biasScale", "0.0001", CVAR_RENDERER | CVAR_FLOAT, "scale factor for jitter bias" );
idCVar r_sb_samples( "r_sb_samples", "4", CVAR_RENDERER | CVAR_INTEGER, "0, 1, 4, or 16" );
idCVar r_sb_randomize( "r_sb_randomize", "1", CVAR_RENDERER | CVAR_BOOL, "randomly offset jitter texture each draw" );
// polyOfsFactor causes holes in low res images
idCVar r_sb_polyOfsFactor( "r_sb_polyOfsFactor", "2", CVAR_RENDERER | CVAR_FLOAT, "polygonOffset factor for drawing shadow buffer" );
idCVar r_sb_polyOfsUnits( "r_sb_polyOfsUnits", "3000", CVAR_RENDERER | CVAR_FLOAT, "polygonOffset units for drawing shadow buffer" );
idCVar r_sb_occluderFacing( "r_sb_occluderFacing", "0", CVAR_RENDERER | CVAR_INTEGER, "0 = front faces, 1 = back faces, 2 = midway between" );
// r_sb_randomizeBufferOrientation?

idCVar r_sb_frustomFOV( "r_sb_frustomFOV", "92", CVAR_RENDERER | CVAR_FLOAT, "oversize FOV for point light side matching" );
idCVar r_sb_showFrustumPixels( "r_sb_showFrustumPixels", "0", CVAR_RENDERER | CVAR_BOOL, "color the pixels contained in the frustum" );
idCVar r_sb_singleSide( "r_sb_singleSide", "-1", CVAR_RENDERER | CVAR_INTEGER, "only draw a single side (0-5) of point lights" );
idCVar r_sb_useCulling( "r_sb_useCulling", "1", CVAR_RENDERER | CVAR_BOOL, "cull geometry to individual side frustums" );
idCVar r_sb_linearFilter( "r_sb_linearFilter", "1", CVAR_RENDERER | CVAR_BOOL, "use GL_LINEAR instead of GL_NEAREST on shadow maps" );

idCVar r_sb_screenSpaceShadow( "r_sb_screenSpaceShadow", "1", CVAR_RENDERER | CVAR_BOOL, "build shadows in screen space instead of on surfaces" );

idCVar r_hdr_useFloats( "r_hdr_useFloats", "0", CVAR_RENDERER | CVAR_BOOL, "use a floating point rendering buffer" );
idCVar r_hdr_exposure( "r_hdr_exposure", "1.0", CVAR_RENDERER | CVAR_FLOAT, "maximum light scale" );
idCVar r_hdr_bloomFraction( "r_hdr_bloomFraction", "0.1", CVAR_RENDERER | CVAR_FLOAT, "fraction to smear across neighbors" );
idCVar r_hdr_gamma( "r_hdr_gamma", "1", CVAR_RENDERER | CVAR_FLOAT, "monitor gamma power" );
idCVar r_hdr_monitorDither( "r_hdr_monitorDither", "0.01", CVAR_RENDERER | CVAR_FLOAT, "random dither in monitor space" );

// from world space to light origin, looking down the X axis
static float	unflippedLightMatrix[16];

// from world space to OpenGL view space, looking down the negative Z axis
static float	lightMatrix[16];

// from OpenGL view space to OpenGL NDC ( -1 : 1 in XYZ )
static float	lightProjectionMatrix[16];


void	RB_ARB2_DrawInteraction( const drawInteraction_t *din );

typedef struct {
	const char	*name;
	int			num;
} wglString_t;

wglString_t	wglString[] = {
{ "WGL_NUMBER_PIXEL_FORMATS_ARB",		0x2000 },
{ "WGL_DRAW_TO_WINDOW_ARB",			0x2001 },
{ "WGL_DRAW_TO_BITMAP_ARB",			0x2002 },
{ "WGL_ACCELERATION_ARB",			0x2003 },
{ "WGL_NEED_PALETTE_ARB",			0x2004 },
{ "WGL_NEED_SYSTEM_PALETTE_ARB",		0x2005 },
{ "WGL_SWAP_LAYER_BUFFERS_ARB",		0x2006 },
{ "WGL_SWAP_METHOD_ARB",			0x2007 },
{ "WGL_NUMBER_OVERLAYS_ARB",			0x2008 },
{ "WGL_NUMBER_UNDERLAYS_ARB",		0x2009 },
{ "WGL_TRANSPARENT_ARB",			0x200A },
{ "WGL_TRANSPARENT_RED_VALUE_ARB",		0x2037 },
{ "WGL_TRANSPARENT_GREEN_VALUE_ARB",		0x2038 },
{ "WGL_TRANSPARENT_BLUE_VALUE_ARB",		0x2039 },
{ "WGL_TRANSPARENT_ALPHA_VALUE_ARB",		0x203A },
{ "WGL_TRANSPARENT_INDEX_VALUE_ARB",		0x203B },
{ "WGL_SHARE_DEPTH_ARB",			0x200C },
{ "WGL_SHARE_STENCIL_ARB",			0x200D },
{ "WGL_SHARE_ACCUM_ARB",			0x200E },
{ "WGL_SUPPORT_GDI_ARB",			0x200F },
{ "WGL_SUPPORT_OPENGL_ARB",			0x2010 },
{ "WGL_DOUBLE_BUFFER_ARB",			0x2011 },
{ "WGL_STEREO_ARB",				0x2012 },
{ "WGL_PIXEL_TYPE_ARB",			0x2013 },
{ "WGL_COLOR_BITS_ARB",			0x2014 },
{ "WGL_RED_BITS_ARB",			0x2015 },
{ "WGL_RED_SHIFT_ARB",			0x2016 },
{ "WGL_GREEN_BITS_ARB",			0x2017 },
{ "WGL_GREEN_SHIFT_ARB",			0x2018 },
{ "WGL_BLUE_BITS_ARB",			0x2019 },
{ "WGL_BLUE_SHIFT_ARB",			0x201A },
{ "WGL_ALPHA_BITS_ARB",			0x201B },
{ "WGL_ALPHA_SHIFT_ARB",			0x201C },
{ "WGL_ACCUM_BITS_ARB",			0x201D },
{ "WGL_ACCUM_RED_BITS_ARB",			0x201E },
{ "WGL_ACCUM_GREEN_BITS_ARB",		0x201F },
{ "WGL_ACCUM_BLUE_BITS_ARB",			0x2020 },
{ "WGL_ACCUM_ALPHA_BITS_ARB",		0x2021 },
{ "WGL_DEPTH_BITS_ARB",			0x2022 },
{ "WGL_STENCIL_BITS_ARB",			0x2023 },
{ "WGL_AUX_BUFFERS_ARB",			0x2024 },

{ "WGL_NO_ACCELERATION_ARB",			0x2025 },
{ "WGL_GENERIC_ACCELERATION_ARB",		0x2026 },
{ "WGL_FULL_ACCELERATION_ARB",		0x2027 },

{ "WGL_SWAP_EXCHANGE_ARB",			0x2028 },
{ "WGL_SWAP_COPY_ARB",			0x2029 },
{ "WGL_SWAP_UNDEFINED_ARB",			0x202A },

{ "WGL_TYPE_RGBA_ARB",			0x202B },
{ "WGL_TYPE_COLORINDEX_ARB",			0x202C },
};

static const int NUM_WGL_STRINGS = sizeof( wglString ) / sizeof( wglString[0] );

static void R_CheckWglErrors( void ) {
    Sys_Printf("void R_CheckWglErrors( void )\r\n");
}


static void R_MakeCurrent( HDC dc, HGLRC context, HPBUFFERARB pbuffer ) {
    Sys_Printf("void R_MakeCurrent( HDC dc, HGLRC context, HPBUFFERARB pbuffer )\r\n");
}


static void R_BindTexImage( HPBUFFERARB pbuffer ) {
    Sys_Printf("void R_BindTexImage( HPBUFFERARB pbuffer )\r\n");
}


static void R_ReportTextureParms( void ) {
    Sys_Printf("void R_ReportTextureParms( void )\r\n");
}


/*
====================
RB_CreateBloomTable
====================
*/
static const int	BLOOM_RADIUS = 8;
static void RB_CreateBloomTable( void ) {
    Sys_Printf("void RB_CreateBloomTable( void )\r\n");
}


/*
====================
GL_SelectTextureNoClient
====================
*/
static void GL_SelectTextureNoClient( int unit ) {
    Sys_Printf("void GL_SelectTextureNoClient( int unit )\r\n");
}



/*
================
R_CreateShadowBufferImage

================
*/
static void R_CreateShadowBufferImage( idImage *image ) {
    Sys_Printf("void R_CreateShadowBufferImage( idImage *image )\r\n");
}


static void R_CreateViewAlphaImage( idImage *image ) {
    Sys_Printf("void R_CreateViewAlphaImage( idImage *image )\r\n");
}


static void R_CreateStubImage( idImage *image ) {
    Sys_Printf("void R_CreateStubImage( idImage *image )\r\n");
}


/*
================
R_CreateJitterImage

================
*/
const static	int JITTER_SIZE = 128;
static void R_CreateJitterImage16( idImage *image ) {
    Sys_Printf("void R_CreateJitterImage16( idImage *image )\r\n");
}


static void R_CreateJitterImage4( idImage *image ) {
    Sys_Printf("void R_CreateJitterImage4( idImage *image )\r\n");
}


static void R_CreateJitterImage1( idImage *image ) {
    Sys_Printf("void R_CreateJitterImage1( idImage *image )\r\n");
}


static void R_CreateRandom256Image( idImage *image ) {
    Sys_Printf("void R_CreateRandom256Image( idImage *image )\r\n");
}



/*
==================
R_PrintPixelFormat
==================
*/
void R_PrintPixelFormat( int pixelFormat ) {
    Sys_Printf("void R_PrintPixelFormat( int pixelFormat )\r\n");
}



/*
==================
R_Exp_Allocate
==================
*/
void R_Exp_Allocate( void ) {
    Sys_Printf("void R_Exp_Allocate( void )\r\n");
}


//===========================================================================================

static const int CULL_RECEIVER = 1;	// still draw occluder, but it is out of the view
static const int CULL_OCCLUDER_AND_RECEIVER = 2;	// the surface doesn't effect the view at all

/*
==================
RB_EXP_CullInteractions

Sets surfaceInteraction_t->cullBits
==================
*/
void RB_EXP_CullInteractions( viewLight_t *vLight, idPlane frustumPlanes[6] ) {
    Sys_Printf("void RB_EXP_CullInteractions( viewLight_t *vLight, idPlane frustumPlanes[6] )\r\n");
}


/*
==================
RB_EXP_RenderOccluders
==================
*/
void RB_EXP_RenderOccluders( viewLight_t *vLight ) {
    Sys_Printf("void RB_EXP_RenderOccluders( viewLight_t *vLight )\r\n");
}


/*
==================
RB_RenderShadowBuffer
==================
*/
void    RB_RenderShadowBuffer( viewLight_t	*vLight, int side ) {
    Sys_Printf("void    RB_RenderShadowBuffer( viewLight_t*vLight, int side )\r\n");
}


/*
==================
RB_EXP_DrawInteraction
==================
*/
void	RB_EXP_DrawInteraction( const drawInteraction_t *din ) {
    Sys_Printf("voidRB_EXP_DrawInteraction( const drawInteraction_t *din )\r\n");
}


/*
=============
RB_EXP_CreateDrawInteractions

=============
*/
void RB_EXP_CreateDrawInteractions( const drawSurf_t *surf ) {
    Sys_Printf("void RB_EXP_CreateDrawInteractions( const drawSurf_t *surf )\r\n");
}


void InvertByTranspose( const float a[16], float r[16] ) {
    Sys_Printf("void InvertByTranspose( const float a[16], float r[16] )\r\n");
}


void FullInvert( const float a[16], float r[16] ) {
    Sys_Printf("void FullInvert( const float a[16], float r[16] )\r\n");
}


/*
==================
RB_Exp_TrianglesForFrustum
==================
*/
const srfTriangles_t	*RB_Exp_TrianglesForFrustum( viewLight_t *vLight, int side ) {
    Sys_Printf("srfTriangles_t*RB_Exp_TrianglesForFrustum( viewLight_t *vLight, int side )\r\n");
    return NULL;
}



/*
==================
RB_Exp_SelectFrustum
==================
*/
void	RB_Exp_SelectFrustum( viewLight_t *vLight, int side ) {
    Sys_Printf("voidRB_Exp_SelectFrustum( viewLight_t *vLight, int side )\r\n");
}


/*
==================
R_EXP_CalcLightAxialSize

all light side projections must currently match, so non-centered
and non-cubic lights must take the largest length
==================
*/
float	R_EXP_CalcLightAxialSize( viewLight_t *vLight ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("floatR_EXP_CalcLightAxialSize( viewLight_t *vLight )\r\n");
    return retVal;
}


/*
==================
R_EXP_RenderViewDepthImage

This could be avoided by drop sampling the native view depth buffer with render to texture
Bilerp might even be aprorpiate, although it would cause issues at edges
==================
*/
void RB_T_FillDepthBuffer( const drawSurf_t *surf );

void R_EXP_RenderViewDepthImage( void ) {
    Sys_Printf("void R_EXP_RenderViewDepthImage( void )\r\n");
}


/*
==================
RB_EXP_SetNativeBuffer

This is always the back buffer, and scissor is set full screen
==================
*/
void RB_EXP_SetNativeBuffer( void ) {
    Sys_Printf("void RB_EXP_SetNativeBuffer( void )\r\n");
}


/*
==================
RB_EXP_SetRenderBuffer

This may be to a float pBuffer, and scissor is set to cover only the light
==================
*/
void RB_EXP_SetRenderBuffer( viewLight_t *vLight ) {
    Sys_Printf("void RB_EXP_SetRenderBuffer( viewLight_t *vLight )\r\n");
}


/*
==================
RB_shadowResampleAlpha

==================
*/
void	RB_shadowResampleAlpha( void ) {
    Sys_Printf("voidRB_shadowResampleAlpha( void )\r\n");
}



/*
==================
RB_EXP_CoverScreen
==================
*/
void RB_EXP_CoverScreen( void ) {
    Sys_Printf("void RB_EXP_CoverScreen( void )\r\n");
}


/*
==================
RB_EXP_ReadFloatBuffer
==================
*/
void RB_EXP_ReadFloatBuffer( void ) {
    Sys_Printf("void RB_EXP_ReadFloatBuffer( void )\r\n");
}



void RB_TestGamma( void );

/*
==================
RB_EXP_GammaDither
==================
*/
void	RB_EXP_GammaDither( void ) {
    Sys_Printf("voidRB_EXP_GammaDither( void )\r\n");
}


/*
==================
RB_EXP_Bloom
==================
*/
void	RB_EXP_Bloom( void ) {
    Sys_Printf("voidRB_EXP_Bloom( void )\r\n");
}


/*
==================
RB_Exp_DrawInteractions
==================
*/
void    RB_Exp_DrawInteractions( void ) {
    Sys_Printf("void    RB_Exp_DrawInteractions( void )\r\n");
}




/*
==================
R_Exp_Init
==================
*/
void R_Exp_Init( void ) {
    Sys_Printf("void R_Exp_Init( void )\r\n");
}

