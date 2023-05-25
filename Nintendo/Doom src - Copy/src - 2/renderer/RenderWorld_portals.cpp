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


All that is done in these functions is the creation of viewLights
and viewEntitys for the lightDefs and entityDefs that are visible
in the portal areas that can be seen from the current viewpoint.

*/


// if we hit this many planes, we will just stop cropping the
// view down, which is still correct, just conservative
const int MAX_PORTAL_PLANES	= 20;

typedef struct portalStack_s {
	portal_t	*p;
	const struct portalStack_s *next;

	idScreenRect	rect;

	int			numPortalPlanes;
	idPlane		portalPlanes[MAX_PORTAL_PLANES+1];
	// positive side is outside the visible frustum
} portalStack_t;


//====================================================================


/*
===================
idRenderWorldLocal::ScreenRectForWinding
===================
*/
idScreenRect idRenderWorldLocal::ScreenRectFromWinding( const idWinding *w, viewEntity_t *space ) {
    idScreenRect retVal;
    memset(&retVal, 0, sizeof(idScreenRect));
    Sys_Printf("idScreenRect idRenderWorldLocal::ScreenRectFromWinding( const idWinding *w, viewEntity_t *space )\r\n");
    return retVal;
}


/*
===================
PortalIsFoggedOut
===================
*/
bool idRenderWorldLocal::PortalIsFoggedOut( const portal_t *p ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idRenderWorldLocal::PortalIsFoggedOut( const portal_t *p )\r\n");
    return retVal;
}


/*
===================
FloodViewThroughArea_r
===================
*/
void idRenderWorldLocal::FloodViewThroughArea_r( const idVec3 origin, int areaNum, 
								 const struct portalStack_s *ps ) {
    Sys_Printf("void idRenderWorldLocal::FloodViewThroughArea_r( const idVec3 origin, int areaNum, const struct portalStack_s *ps )\r\n");
}


/*
=======================
FlowViewThroughPortals

Finds viewLights and viewEntities by flowing from an origin through the visible portals.
origin point can see into.  The planes array defines a volume (positive
sides facing in) that should contain the origin, such as a view frustum or a point light box.
Zero planes assumes an unbounded volume.
=======================
*/
void idRenderWorldLocal::FlowViewThroughPortals( const idVec3 origin, int numPlanes, const idPlane *planes ) {
    Sys_Printf("void idRenderWorldLocal::FlowViewThroughPortals( const idVec3 origin, int numPlanes, const idPlane *planes )\r\n");
}


//==================================================================================================


/*
===================
FloodLightThroughArea_r
===================
*/
void idRenderWorldLocal::FloodLightThroughArea_r( idRenderLightLocal *light, int areaNum, 
								 const struct portalStack_s *ps ) {
    Sys_Printf("void idRenderWorldLocal::FloodLightThroughArea_r( idRenderLightLocal *light, int areaNum, const struct portalStack_s *ps )\r\n");
}



/*
=======================
FlowLightThroughPortals

Adds an arearef in each area that the light center flows into.
This can only be used for shadow casting lights that have a generated
prelight, because shadows are cast from back side which may not be in visible areas.
=======================
*/
void idRenderWorldLocal::FlowLightThroughPortals( idRenderLightLocal *light ) {
    Sys_Printf("void idRenderWorldLocal::FlowLightThroughPortals( idRenderLightLocal *light )\r\n");
}


//======================================================================================================

/*
===================
idRenderWorldLocal::FloodFrustumAreas_r
===================
*/
areaNumRef_t *idRenderWorldLocal::FloodFrustumAreas_r( const idFrustum &frustum, const int areaNum, const idBounds &bounds, areaNumRef_t *areas ) {
    Sys_Printf("areaNumRef_t *idRenderWorldLocal::FloodFrustumAreas_r( const idFrustum &frustum, const int areaNum, const idBounds &bounds, areaNumRef_t *areas )\r\n");
    return NULL;
}


/*
===================
idRenderWorldLocal::FloodFrustumAreas

  Retrieves all the portal areas the frustum floods into where the frustum starts in the given areas.
  All portals are assumed to be open.
===================
*/
areaNumRef_t *idRenderWorldLocal::FloodFrustumAreas( const idFrustum &frustum, areaNumRef_t *areas ) {
    Sys_Printf("areaNumRef_t *idRenderWorldLocal::FloodFrustumAreas( const idFrustum &frustum, areaNumRef_t *areas )\r\n");
    return NULL;
}



/*
=======================================================================

R_FindViewLightsAndEntities

=======================================================================
*/

/*
================
CullEntityByPortals

Return true if the entity reference bounds do not intersect the current portal chain.
================
*/
bool idRenderWorldLocal::CullEntityByPortals( const idRenderEntityLocal *entity, const portalStack_t *ps ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idRenderWorldLocal::CullEntityByPortals( const idRenderEntityLocal *entity, const portalStack_t *ps )\r\n");
    return retVal;
}


/*
===================
AddAreaEntityRefs

Any models that are visible through the current portalStack will
have their scissor 
===================
*/
void idRenderWorldLocal::AddAreaEntityRefs( int areaNum, const portalStack_t *ps ) {
    Sys_Printf("void idRenderWorldLocal::AddAreaEntityRefs( int areaNum, const portalStack_t *ps )\r\n");
}


/*
================
CullLightByPortals

Return true if the light frustum does not intersect the current portal chain.
The last stack plane is not used because lights are not near clipped.
================
*/
bool idRenderWorldLocal::CullLightByPortals( const idRenderLightLocal *light, const portalStack_t *ps ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idRenderWorldLocal::CullLightByPortals( const idRenderLightLocal *light, const portalStack_t *ps )\r\n");
    return retVal;
}


/*
===================
AddAreaLightRefs

This is the only point where lights get added to the viewLights list
===================
*/
void idRenderWorldLocal::AddAreaLightRefs( int areaNum, const portalStack_t *ps ) {
    Sys_Printf("void idRenderWorldLocal::AddAreaLightRefs( int areaNum, const portalStack_t *ps )\r\n");
}


/*
===================
AddAreaRefs

This may be entered multiple times with different planes
if more than one portal sees into the area
===================
*/
void idRenderWorldLocal::AddAreaRefs( int areaNum, const portalStack_t *ps ) {
    Sys_Printf("void idRenderWorldLocal::AddAreaRefs( int areaNum, const portalStack_t *ps )\r\n");
}


/*
===================
BuildConnectedAreas_r
===================
*/
void idRenderWorldLocal::BuildConnectedAreas_r( int areaNum ) {
    Sys_Printf("void idRenderWorldLocal::BuildConnectedAreas_r( int areaNum )\r\n");
}


/*
===================
BuildConnectedAreas

This is only valid for a given view, not all views in a frame
===================
*/
void idRenderWorldLocal::BuildConnectedAreas( void ) {
    Sys_Printf("void idRenderWorldLocal::BuildConnectedAreas( void )\r\n");
}


/*
=============
FindViewLightsAndEntites

All the modelrefs and lightrefs that are in visible areas
will have viewEntitys and viewLights created for them.

The scissorRects on the viewEntitys and viewLights may be empty if
they were considered, but not actually visible.
=============
*/
void idRenderWorldLocal::FindViewLightsAndEntities( void ) {
    Sys_Printf("void idRenderWorldLocal::FindViewLightsAndEntities( void )\r\n");
}


/*
==============
NumPortals
==============
*/
int idRenderWorldLocal::NumPortals( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idRenderWorldLocal::NumPortals( void )\r\n");
    return retVal;
}


/*
==============
FindPortal

Game code uses this to identify which portals are inside doors.
Returns 0 if no portal contacts the bounds
==============
*/
qhandle_t idRenderWorldLocal::FindPortal( const idBounds &b ) const {
    qhandle_t retVal;
    memset(&retVal, 0, sizeof(qhandle_t));
    Sys_Printf("qhandle_t idRenderWorldLocal::FindPortal( const idBounds &b )\r\n");
    return retVal;
}


/*
=============
FloodConnectedAreas
=============
*/
void	idRenderWorldLocal::FloodConnectedAreas( portalArea_t *area, int portalAttributeIndex ) {
    Sys_Printf("voididRenderWorldLocal::FloodConnectedAreas( portalArea_t *area, int portalAttributeIndex )\r\n");
}


/*
==============
AreasAreConnected

==============
*/
bool	idRenderWorldLocal::AreasAreConnected( int areaNum1, int areaNum2, portalConnection_t connection ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolidRenderWorldLocal::AreasAreConnected( int areaNum1, int areaNum2, portalConnection_t connection )\r\n");
    return retVal;
}



/*
==============
SetPortalState

doors explicitly close off portals when shut
==============
*/
void		idRenderWorldLocal::SetPortalState( qhandle_t portal, int blockTypes ) {
    Sys_Printf("voididRenderWorldLocal::SetPortalState( qhandle_t portal, int blockTypes )\r\n");
}


/*
==============
GetPortalState
==============
*/
int		idRenderWorldLocal::GetPortalState( qhandle_t portal ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidRenderWorldLocal::GetPortalState( qhandle_t portal )\r\n");
    return retVal;
}


/*
=====================
idRenderWorldLocal::ShowPortals

Debugging tool, won't work correctly with SMP or when mirrors are present
=====================
*/
void idRenderWorldLocal::ShowPortals() {
    Sys_Printf("void idRenderWorldLocal::ShowPortals()\r\n");
}

