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

idRenderSystemLocal	tr;
idRenderSystem	*renderSystem = &tr;


/*
=====================
R_PerformanceCounters

This prints both front and back end counters, so it should
only be called when the back end thread is idle.
=====================
*/
static void R_PerformanceCounters( void ) {
    Sys_Printf("void R_PerformanceCounters( void )\r\n");
}




/*
====================
R_IssueRenderCommands

Called by R_EndFrame each frame
====================
*/
static void R_IssueRenderCommands( void ) {
    Sys_Printf("void R_IssueRenderCommands( void )\r\n");
}


/*
============
R_GetCommandBuffer

Returns memory for a command buffer (stretchPicCommand_t, 
drawSurfsCommand_t, etc) and links it to the end of the
current command chain.
============
*/
void *R_GetCommandBuffer( int bytes ) {
    Sys_Printf("void *R_GetCommandBuffer( int bytes )\r\n");
    return NULL;
}



/*
====================
R_ClearCommandChain

Called after every buffer submission
and by R_ToggleSmpFrame
====================
*/
void R_ClearCommandChain( void ) {
    Sys_Printf("void R_ClearCommandChain( void )\r\n");
}


/*
=================
R_ViewStatistics
=================
*/
static void R_ViewStatistics( viewDef_t *parms ) {
    Sys_Printf("void R_ViewStatistics( viewDef_t *parms )\r\n");
}


/*
=============
R_AddDrawViewCmd

This is the main 3D rendering command.  A single scene may
have multiple views if a mirror, portal, or dynamic texture is present.
=============
*/
void	R_AddDrawViewCmd( viewDef_t *parms ) {
    Sys_Printf("voidR_AddDrawViewCmd( viewDef_t *parms )\r\n");
}



//=================================================================================


/*
======================
R_LockSurfaceScene

r_lockSurfaces allows a developer to move around
without changing the composition of the scene, including
culling.  The only thing that is modified is the
view position and axis, no front end work is done at all


Add the stored off command again, so the new rendering will use EXACTLY
the same surfaces, including all the culling, even though the transformation
matricies have been changed.  This allow the culling tightness to be
evaluated interactively.
======================
*/
void R_LockSurfaceScene( viewDef_t *parms ) {
    Sys_Printf("void R_LockSurfaceScene( viewDef_t *parms )\r\n");
}


/*
=============
R_CheckCvars

See if some cvars that we watch have changed
=============
*/
static void R_CheckCvars( void ) {
    Sys_Printf("void R_CheckCvars( void )\r\n");
}


/*
=============
idRenderSystemLocal::idRenderSystemLocal
=============
*/
idRenderSystemLocal::idRenderSystemLocal( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idRenderSystemLocal::idRenderSystemLocal( void ) size %d\r\n", sizeof(*this));
#endif

	Clear();
}

/*
=============
idRenderSystemLocal::~idRenderSystemLocal
=============
*/
idRenderSystemLocal::~idRenderSystemLocal( void ) {
}

/*
=============
SetColor

This can be used to pass general information to the current material, not
just colors
=============
*/
void idRenderSystemLocal::SetColor( const idVec4 &rgba ) {
    Sys_Printf("void idRenderSystemLocal::SetColor( const idVec4 &rgba )\r\n");
}



/*
=============
SetColor4
=============
*/
void idRenderSystemLocal::SetColor4( float r, float g, float b, float a ) {
    Sys_Printf("void idRenderSystemLocal::SetColor4( float r, float g, float b, float a )\r\n");
}


/*
=============
DrawStretchPic
=============
*/
void idRenderSystemLocal::DrawStretchPic( const idDrawVert *verts, const glIndex_t *indexes, int vertCount, int indexCount, const idMaterial *material, 
									   bool clip, float min_x, float min_y, float max_x, float max_y ) {
    Sys_Printf("void idRenderSystemLocal::DrawStretchPic( const idDrawVert *verts, const glIndex_t *indexes, int vertCount, int indexCount, const idMaterial *material, bool clip, float min_x, float min_y, float max_x, float max_y )\r\n");
}


/*
=============
DrawStretchPic

x/y/w/h are in the 0,0 to 640,480 range
=============
*/
void idRenderSystemLocal::DrawStretchPic( float x, float y, float w, float h, float s1, float t1, float s2, float t2, const idMaterial *material ) {
    Sys_Printf("void idRenderSystemLocal::DrawStretchPic( float x, float y, float w, float h, float s1, float t1, float s2, float t2, const idMaterial *material )\r\n");
}


/*
=============
DrawStretchTri

x/y/w/h are in the 0,0 to 640,480 range
=============
*/
void idRenderSystemLocal::DrawStretchTri( idVec2 p1, idVec2 p2, idVec2 p3, idVec2 t1, idVec2 t2, idVec2 t3, const idMaterial *material ) {
    Sys_Printf("void idRenderSystemLocal::DrawStretchTri( idVec2 p1, idVec2 p2, idVec2 p3, idVec2 t1, idVec2 t2, idVec2 t3, const idMaterial *material )\r\n");
}


/*
=============
GlobalToNormalizedDeviceCoordinates
=============
*/
void idRenderSystemLocal::GlobalToNormalizedDeviceCoordinates( const idVec3 &global, idVec3 &ndc ) {
    Sys_Printf("void idRenderSystemLocal::GlobalToNormalizedDeviceCoordinates( const idVec3 &global, idVec3 &ndc )\r\n");
}


/*
=============
GlobalToNormalizedDeviceCoordinates
=============
*/
void idRenderSystemLocal::GetGLSettings( int& width, int& height ) {
    Sys_Printf("void idRenderSystemLocal::GetGLSettings( int& width, int& height )\r\n");
}


/*
=====================
idRenderSystemLocal::DrawSmallChar

small chars are drawn at native screen resolution
=====================
*/
void idRenderSystemLocal::DrawSmallChar( int x, int y, int ch, const idMaterial *material ) {
    Sys_Printf("void idRenderSystemLocal::DrawSmallChar( int x, int y, int ch, const idMaterial *material )\r\n");
}


/*
==================
idRenderSystemLocal::DrawSmallString[Color]

Draws a multi-colored string with a drop shadow, optionally forcing
to a fixed color.

Coordinates are at 640 by 480 virtual resolution
==================
*/
void idRenderSystemLocal::DrawSmallStringExt( int x, int y, const char *string, const idVec4 &setColor, bool forceColor, const idMaterial *material ) {
    Sys_Printf("void idRenderSystemLocal::DrawSmallStringExt( int x, int y, const char *string, const idVec4 &setColor, bool forceColor, const idMaterial *material )\r\n");
}


/*
=====================
idRenderSystemLocal::DrawBigChar
=====================
*/
void idRenderSystemLocal::DrawBigChar( int x, int y, int ch, const idMaterial *material ) {
    Sys_Printf("void idRenderSystemLocal::DrawBigChar( int x, int y, int ch, const idMaterial *material )\r\n");
}


/*
==================
idRenderSystemLocal::DrawBigString[Color]

Draws a multi-colored string with a drop shadow, optionally forcing
to a fixed color.

Coordinates are at 640 by 480 virtual resolution
==================
*/
void idRenderSystemLocal::DrawBigStringExt( int x, int y, const char *string, const idVec4 &setColor, bool forceColor, const idMaterial *material ) {
    Sys_Printf("void idRenderSystemLocal::DrawBigStringExt( int x, int y, const char *string, const idVec4 &setColor, bool forceColor, const idMaterial *material )\r\n");
}


//======================================================================================

/*
==================
SetBackEndRenderer

Check for changes in the back end renderSystem, possibly invalidating cached data
==================
*/
void idRenderSystemLocal::SetBackEndRenderer() {
Sys_Printf(">>> void idRenderSystemLocal::SetBackEndRenderer()\r\n");
Sys_Printf(">>> void idRenderSystemLocal::SetBackEndRenderer() value: %s\r\n", r_renderer.GetString());
	if ( !r_renderer.IsModified() ) {
		return;
	}

	bool oldVPstate = backEndRendererHasVertexPrograms;

	backEndRenderer = BE_BAD;

	if ( idStr::Icmp( r_renderer.GetString(), "arb" ) == 0 ) {
		backEndRenderer = BE_ARB;
	} else if ( idStr::Icmp( r_renderer.GetString(), "arb2" ) == 0 ) {
		if ( glConfig.allowARB2Path ) {
			backEndRenderer = BE_ARB2;
		}
	} else if ( idStr::Icmp( r_renderer.GetString(), "nv10" ) == 0 ) {
		if ( glConfig.allowNV10Path ) {
			backEndRenderer = BE_NV10;
		}
	} else if ( idStr::Icmp( r_renderer.GetString(), "nv20" ) == 0 ) {
		if ( glConfig.allowNV20Path ) {
			backEndRenderer = BE_NV20;
		}
	} else if ( idStr::Icmp( r_renderer.GetString(), "r200" ) == 0 ) {
		if ( glConfig.allowR200Path ) {
			backEndRenderer = BE_R200;
		}
	}

	// fallback
	if ( backEndRenderer == BE_BAD ) {
		// choose the best
		if ( glConfig.allowARB2Path ) {
			backEndRenderer = BE_ARB2;
		} else if ( glConfig.allowR200Path ) {
			backEndRenderer = BE_R200;
		} else if ( glConfig.allowNV20Path ) {
			backEndRenderer = BE_NV20;
		} else if ( glConfig.allowNV10Path ) {
			backEndRenderer = BE_NV10;
		} else {
			// the others are considered experimental
			backEndRenderer = BE_ARB;
		}
	}

	backEndRendererHasVertexPrograms = false;
	backEndRendererMaxLight = 1.0;

	switch( backEndRenderer ) {
	case BE_ARB:
		common->Printf( "using ARB renderSystem\n" );
		break;
	case BE_NV10:
		common->Printf( "using NV10 renderSystem\n" );
		break;
	case BE_NV20:
		common->Printf( "using NV20 renderSystem\n" );
		backEndRendererHasVertexPrograms = true;
		break;
	case BE_R200:
		common->Printf( "using R200 renderSystem\n" );
		backEndRendererHasVertexPrograms = true;
		break;
	case BE_ARB2:
		common->Printf( "using ARB2 renderSystem\n" );
		backEndRendererHasVertexPrograms = true;
		backEndRendererMaxLight = 999;
		break;
	default:
		common->FatalError( "SetbackEndRenderer: bad back end" );
	}

	// clear the vertex cache if we are changing between
	// using vertex programs and not, because specular and
	// shadows will be different data
	if ( oldVPstate != backEndRendererHasVertexPrograms ) {
		vertexCache.PurgeAll();
		if ( primaryWorld ) {
			primaryWorld->FreeInteractions();
		}
	}

	r_renderer.ClearModified();
}


/*
====================
BeginFrame
====================
*/
void idRenderSystemLocal::BeginFrame( int windowWidth, int windowHeight ) {
    Sys_Printf("void idRenderSystemLocal::BeginFrame( int windowWidth, int windowHeight )\r\n");
}


void idRenderSystemLocal::WriteDemoPics() {
    Sys_Printf("void idRenderSystemLocal::WriteDemoPics()\r\n");
}


void idRenderSystemLocal::DrawDemoPics() {
    Sys_Printf("void idRenderSystemLocal::DrawDemoPics()\r\n");
}


/*
=============
EndFrame

Returns the number of msec spent in the back end
=============
*/
void idRenderSystemLocal::EndFrame( int *frontEndMsec, int *backEndMsec ) {
    Sys_Printf("void idRenderSystemLocal::EndFrame( int *frontEndMsec, int *backEndMsec )\r\n");
}


/*
=====================
RenderViewToViewport

Converts from SCREEN_WIDTH / SCREEN_HEIGHT coordinates to current cropped pixel coordinates
=====================
*/
void idRenderSystemLocal::RenderViewToViewport( const renderView_t *renderView, idScreenRect *viewport ) {
    Sys_Printf("void idRenderSystemLocal::RenderViewToViewport( const renderView_t *renderView, idScreenRect *viewport )\r\n");
}


static int RoundDownToPowerOfTwo( int v ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int RoundDownToPowerOfTwo( int v )\r\n");
    return retVal;
}


/*
================
CropRenderSize

This automatically halves sizes until it fits in the current window size,
so if you specify a power of two size for a texture copy, it may be shrunk
down, but still valid.
================
*/
void	idRenderSystemLocal::CropRenderSize( int width, int height, bool makePowerOfTwo, bool forceDimensions ) {
    Sys_Printf("voididRenderSystemLocal::CropRenderSize( int width, int height, bool makePowerOfTwo, bool forceDimensions )\r\n");
}


/*
================
UnCrop
================
*/
void idRenderSystemLocal::UnCrop() {
    Sys_Printf("void idRenderSystemLocal::UnCrop()\r\n");
}


/*
================
CaptureRenderToImage
================
*/
void idRenderSystemLocal::CaptureRenderToImage( const char *imageName ) {
    Sys_Printf("void idRenderSystemLocal::CaptureRenderToImage( const char *imageName )\r\n");
}


/*
==============
CaptureRenderToFile

==============
*/
void idRenderSystemLocal::CaptureRenderToFile( const char *fileName, bool fixAlpha ) {
    Sys_Printf("void idRenderSystemLocal::CaptureRenderToFile( const char *fileName, bool fixAlpha )\r\n");
}



/*
==============
AllocRenderWorld
==============
*/
idRenderWorld *idRenderSystemLocal::AllocRenderWorld() {
	idRenderWorldLocal *rw;
	rw = new idRenderWorldLocal;
	worlds.Append( rw );
	return rw;
}

/*
==============
FreeRenderWorld
==============
*/
void idRenderSystemLocal::FreeRenderWorld( idRenderWorld *rw ) {
	if ( primaryWorld == rw ) {
		primaryWorld = NULL;
	}
	worlds.Remove( static_cast<idRenderWorldLocal *>(rw) );
	delete rw;
}

/*
==============
PrintMemInfo
==============
*/
void idRenderSystemLocal::PrintMemInfo( MemInfo_t *mi ) {
	// sum up image totals
	globalImages->PrintMemInfo( mi );

	// sum up model totals
	renderModelManager->PrintMemInfo( mi );

	// compute render totals

}

/*
===============
idRenderSystemLocal::UploadImage
===============
*/
bool idRenderSystemLocal::UploadImage( const char *imageName, const byte *data, int width, int height  ) {
Sys_Printf(">>> idRenderSystemLocal::UploadImage \r\n");
	idImage *image = globalImages->GetImage( imageName );
	if ( !image ) {
		return false;
	}
	image->UploadScratch( data, width, height );
	image->SetImageFilterAndRepeat();
	return true;
}
