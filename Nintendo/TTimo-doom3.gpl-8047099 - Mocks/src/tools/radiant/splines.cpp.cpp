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

#include "../../idlib/precompiled.h"
#pragma hdrstop

#include "splines.h"

idCameraDef splineList;
idCameraDef *g_splineList = &splineList;

/*
================
glLabeledPoint
================
*/
void glLabeledPoint(idVec4 &color, idVec3 &point, float size, const char *label) {
    Sys_Printf("void glLabeledPoint(idVec4 &color, idVec3 &point, float size, const char *label)\r\n");
}


/*
================
glBox
================
*/
void glBox(idVec4 &color, idVec3 &point, float size) {
    Sys_Printf("void glBox(idVec4 &color, idVec3 &point, float size)\r\n");
}


/*
================
splineTest
================
*/
void splineTest() {
    Sys_Printf("void splineTest()\r\n");
}


/*
================
splineDraw
================
*/
void splineDraw() {
    Sys_Printf("void splineDraw()\r\n");
}


/*
================
debugLine
================
*/
void debugLine(idVec4 &color, float x, float y, float z, float x2, float y2, float z2) {
    Sys_Printf("void debugLine(idVec4 &color, float x, float y, float z, float x2, float y2, float z2)\r\n");
}



/*
=================================================================================

idPointListInterface

=================================================================================
*/

/*
================
idPointListInterface::selectPointByRay
================
*/
int idPointListInterface::selectPointByRay(const idVec3 &origin, const idVec3 &direction, bool single) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPointListInterface::selectPointByRay(const idVec3 &origin, const idVec3 &direction, bool single)\r\n");
    return retVal;
}


/*
================
idPointListInterface::isPointSelected
================
*/
int idPointListInterface::isPointSelected(int index) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPointListInterface::isPointSelected(int index)\r\n");
    return retVal;
}


/*
================
idPointListInterface::selectPoint
================
*/
int idPointListInterface::selectPoint(int index, bool single) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPointListInterface::selectPoint(int index, bool single)\r\n");
    return retVal;
}


/*
================
idPointListInterface::selectAll
================
*/
void idPointListInterface::selectAll() {
    Sys_Printf("void idPointListInterface::selectAll()\r\n");
}


/*
================
idPointListInterface::deselectAll
================
*/
void idPointListInterface::deselectAll() {
    Sys_Printf("void idPointListInterface::deselectAll()\r\n");
}


/*
================
idPointListInterface::getSelectedPoint
================
*/
idVec3 *idPointListInterface::getSelectedPoint( int index ) {
    Sys_Printf("idVec3 *idPointListInterface::getSelectedPoint( int index )\r\n");
    return NULL;
}


/*
================
idPointListInterface::updateSelection
================
*/
void idPointListInterface::updateSelection(const idVec3 &move) {
    Sys_Printf("void idPointListInterface::updateSelection(const idVec3 &move)\r\n");
}


/*
================
idPointListInterface::drawSelection
================
*/
void idPointListInterface::drawSelection() {
    Sys_Printf("void idPointListInterface::drawSelection()\r\n");
}


/*
=================================================================================

idSplineList

=================================================================================
*/

/*
================
idSplineList::clearControl
================
*/
void idSplineList::clearControl() {
    Sys_Printf("void idSplineList::clearControl()\r\n");
}


/*
================
idSplineList::clearSpline
================
*/
void idSplineList::clearSpline() {
    Sys_Printf("void idSplineList::clearSpline()\r\n");
}


/*
================
idSplineList::clear
================
*/
void idSplineList::clear() {
    Sys_Printf("void idSplineList::clear()\r\n");
}


/*
================
idSplineList::setColors
================
*/
void idSplineList::setColors(idVec4 &path, idVec4 &segment, idVec4 &control, idVec4 &active) {
    Sys_Printf("void idSplineList::setColors(idVec4 &path, idVec4 &segment, idVec4 &control, idVec4 &active)\r\n");
}


/*
================
idSplineList::validTime
================
*/
bool idSplineList::validTime() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSplineList::validTime()\r\n");
    return retVal;
}


/*
================
idSplineList::addToRenderer
================
*/
void idSplineList::addToRenderer() {
    Sys_Printf("void idSplineList::addToRenderer()\r\n");
}


/*
================
idSplineList::buildSpline
================
*/
void idSplineList::buildSpline() {
    Sys_Printf("void idSplineList::buildSpline()\r\n");
}


/*
================
idSplineList::draw
================
*/
void idSplineList::draw(bool editMode) {
    Sys_Printf("void idSplineList::draw(bool editMode)\r\n");
}


/*
================
idSplineList::totalDistance
================
*/
float idSplineList::totalDistance() {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idSplineList::totalDistance()\r\n");
    return retVal;
}


/*
================
idSplineList::initPosition
================
*/
void idSplineList::initPosition(long bt, long totalTime) {
    Sys_Printf("void idSplineList::initPosition(long bt, long totalTime)\r\n");
}


/*
================
idSplineList::calcSpline
================
*/
float idSplineList::calcSpline(int step, float tension) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idSplineList::calcSpline(int step, float tension)\r\n");
    return retVal;
}


/*
================
idSplineList::updateSelection
================
*/
void idSplineList::updateSelection(const idVec3 &move) {
    Sys_Printf("void idSplineList::updateSelection(const idVec3 &move)\r\n");
}


/*
================
idSplineList::setSelectedPoint
================
*/
void idSplineList::setSelectedPoint(idVec3 *p) {
    Sys_Printf("void idSplineList::setSelectedPoint(idVec3 *p)\r\n");
}


/*
================
idSplineList::getPosition
================
*/
const idVec3 *idSplineList::getPosition(long t) {
    Sys_Printf("idVec3 *idSplineList::getPosition(long t)\r\n");
    return NULL;
}


/*
================
idSplineList::parse
================
*/
void idSplineList::parse( idParser *src ) {
    Sys_Printf("void idSplineList::parse( idParser *src )\r\n");
}


/*
================
idSplineList::write
================
*/
void idSplineList::write( idFile *f, const char *p) {
    Sys_Printf("void idSplineList::write( idFile *f, const char *p)\r\n");
}


/*
=================================================================================

idCamaraDef

=================================================================================
*/

/*
================
idCameraDef::clear
================
*/
void idCameraDef::clear() {
    Sys_Printf("void idCameraDef::clear()\r\n");
}


/*
================
idCameraDef::startNewCamera
================
*/
idCameraPosition *idCameraDef::startNewCamera( idCameraPosition::positionType type ) {
	clear();
	if (type == idCameraPosition::SPLINE) {
		cameraPosition = new idSplinePosition();
	} else if (type == idCameraPosition::INTERPOLATED) {
		cameraPosition = new idInterpolatedPosition();
	} else {
		cameraPosition = new idFixedPosition();
	}
	return cameraPosition;
}

/*
================
idCameraDef::addTarget
================
*/
void idCameraDef::addTarget(const char *name, idCameraPosition::positionType type) {
	const char *text = (name == NULL) ? va("target0%d", numTargets()+1) : name;
	idCameraPosition *pos = newFromType(type);
	if (pos) {
		pos->setName(name);
		targetPositions.Append(pos);
		activeTarget = numTargets()-1;
		if (activeTarget == 0) {
			// first one
			addEvent(idCameraEvent::EVENT_TARGET, name, 0);
		}
	}
}

/*
================
idCameraDef::getActiveTarget
================
*/
idCameraPosition *idCameraDef::getActiveTarget() {
    Sys_Printf("idCameraPosition *idCameraDef::getActiveTarget()\r\n");
    return NULL;
}


/*
================
idCameraDef::getActiveTarget
================
*/
idCameraPosition *idCameraDef::getActiveTarget(int index) {
    Sys_Printf("idCameraPosition *idCameraDef::getActiveTarget(int index)\r\n");
    return NULL;
}


/*
================
idCameraDef::setActiveTargetByName
================
*/
void idCameraDef::setActiveTargetByName( const char *name ) {
    Sys_Printf("void idCameraDef::setActiveTargetByName( const char *name )\r\n");
}


/*
================
idCameraDef::setActiveTarget
================
*/
void idCameraDef::setActiveTarget( int index ) {
    Sys_Printf("void idCameraDef::setActiveTarget( int index )\r\n");
}


/*
================
idCameraDef::draw
================
*/
void idCameraDef::draw( bool editMode ) {
    Sys_Printf("void idCameraDef::draw( bool editMode )\r\n");
}


/*
================
idCameraDef::numPoints
================
*/
int idCameraDef::numPoints() {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCameraDef::numPoints()\r\n");
    return retVal;
}


/*
================
idCameraDef::getPoint
================
*/
const idVec3 *idCameraDef::getPoint(int index) {
    Sys_Printf("idVec3 *idCameraDef::getPoint(int index)\r\n");
    return NULL;
}


/*
================
idCameraDef::stopEdit
================
*/
void idCameraDef::stopEdit() {
    Sys_Printf("void idCameraDef::stopEdit()\r\n");
}


/*
================
idCameraDef::startEdit
================
*/
void idCameraDef::startEdit(bool camera) {
    Sys_Printf("void idCameraDef::startEdit(bool camera)\r\n");
}


/*
================
idCameraDef::getPositionObj
================
*/
idCameraPosition *idCameraDef::getPositionObj() {
    Sys_Printf("idCameraPosition *idCameraDef::getPositionObj()\r\n");
    return NULL;
}


/*
================
idCameraDef::getActiveSegmentInfo
================
*/
void idCameraDef::getActiveSegmentInfo(int segment, idVec3 &origin, idVec3 &direction, float *fov) {
    Sys_Printf("void idCameraDef::getActiveSegmentInfo(int segment, idVec3 &origin, idVec3 &direction, float *fov)\r\n");
}


/*
================
idCameraDef::getCameraInfo
================
*/
bool idCameraDef::getCameraInfo(long time, idVec3 &origin, idVec3 &direction, float *fv) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCameraDef::getCameraInfo(long time, idVec3 &origin, idVec3 &direction, float *fv)\r\n");
    return retVal;
}


/*
================
idCameraDef::waitEvent
================
*/
bool idCameraDef::waitEvent(int index) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCameraDef::waitEvent(int index)\r\n");
    return retVal;
}


/*
================
idCameraDef::buildCamera
================
*/
#define NUM_CCELERATION_SEGS 10
#define CELL_AMT 5

void idCameraDef::buildCamera() {
    Sys_Printf("void idCameraDef::buildCamera()\r\n");
}


/*
================
idCameraDef::startCamera
================
*/
void idCameraDef::startCamera(long t) {
    Sys_Printf("void idCameraDef::startCamera(long t)\r\n");
}


/*
================
idCameraDef::parse
================
*/
void idCameraDef::parse( idParser *src  ) {
    Sys_Printf("void idCameraDef::parse( idParser *src  )\r\n");
}


/*
================
idCameraDef::load
================
*/
bool idCameraDef::load( const char *filename ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCameraDef::load( const char *filename )\r\n");
    return retVal;
}


/*
================
idCameraDef::save
================
*/
void idCameraDef::save(const char *filename) {
    Sys_Printf("void idCameraDef::save(const char *filename)\r\n");
}


/*
================
idCameraDef::sortEvents
================
*/
int idCameraDef::sortEvents(const void *p1, const void *p2) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCameraDef::sortEvents(const void *p1, const void *p2)\r\n");
    return retVal;
}


/*
================
idCameraDef::addEvent
================
*/
void idCameraDef::addEvent(idCameraEvent *event) {
    Sys_Printf("void idCameraDef::addEvent(idCameraEvent *event)\r\n");
}


/*
================
idCameraDef::addEvent
================
*/
void idCameraDef::addEvent(idCameraEvent::eventType t, const char *param, long time) {
	addEvent(new idCameraEvent(t, param, time));
	buildCamera();
}

/*
================
idCameraDef::newFromType
================
*/
idCameraPosition *idCameraDef::newFromType( idCameraPosition::positionType t ) {
	switch (t) {
		case idCameraPosition::FIXED : return new idFixedPosition();
		case idCameraPosition::INTERPOLATED : return new idInterpolatedPosition();
		case idCameraPosition::SPLINE : return new idSplinePosition();
	};
	return NULL;
}


/*
=================================================================================

idCamaraEvent

=================================================================================
*/

/*
================
idCameraEvent::eventStr
================
*/
const char *idCameraEvent::eventStr[] = {
	"NA",
	"WAIT",
	"TARGETWAIT",
	"SPEED",
	"TARGET",
	"SNAPTARGET",
	"FOV",
	"CMD",
	"TRIGGER",
	"STOP",
	"CAMERA",
	"FADEOUT",
	"FADEIN",
	"FEATHER"
};

/*
================
idCameraEvent::parse
================
*/
void idCameraEvent::parse( idParser *src ) {
    Sys_Printf("void idCameraEvent::parse( idParser *src )\r\n");
}


/*
================
idCameraEvent::write
================
*/
void idCameraEvent::write( idFile *f, const char *name) {
    Sys_Printf("void idCameraEvent::write( idFile *f, const char *name)\r\n");
}


/*
=================================================================================

idCamaraPosition

=================================================================================
*/

/*
================
idCameraPosition::positionStr
================
*/
const char *idCameraPosition::positionStr[] = {
	"Fixed",
	"Interpolated",
	"Spline",
};

/*
================
idCameraPosition::positionStr
================
*/
void idCameraPosition::clearVelocities() {
    Sys_Printf("void idCameraPosition::clearVelocities()\r\n");
}


/*
================
idCameraPosition::positionStr
================
*/
float idCameraPosition::getVelocity( long t ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idCameraPosition::getVelocity( long t )\r\n");
    return retVal;
}


/*
================
idCameraPosition::parseToken
================
*/
bool idCameraPosition::parseToken( const idStr &key, idParser *src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCameraPosition::parseToken( const idStr &key, idParser *src )\r\n");
    return retVal;
}


/*
================
idCameraPosition::write
================
*/
void idCameraPosition::write( idFile *f, const char *p ) {
    Sys_Printf("void idCameraPosition::write( idFile *f, const char *p )\r\n");
}


/*
=================================================================================

idInterpolatedPosition

=================================================================================
*/

/*
================
idInterpolatedPosition::getPoint
================
*/
idVec3 *idInterpolatedPosition::getPoint( int index ) {
    Sys_Printf("idVec3 *idInterpolatedPosition::getPoint( int index )\r\n");
    return NULL;
}


/*
================
idInterpolatedPosition::addPoint
================
*/
void idInterpolatedPosition::addPoint( const float x, const float y, const float z ) {
    Sys_Printf("void idInterpolatedPosition::addPoint( const float x, const float y, const float z )\r\n");
}


/*
================
idInterpolatedPosition::addPoint
================
*/
void idInterpolatedPosition::addPoint( const idVec3 &v ) {
    Sys_Printf("void idInterpolatedPosition::addPoint( const idVec3 &v )\r\n");
}


/*
================
idInterpolatedPosition::draw
================
*/
void idInterpolatedPosition::draw( bool editMode ) {
    Sys_Printf("void idInterpolatedPosition::draw( bool editMode )\r\n");
}


/*
================
idInterpolatedPosition::start
================
*/
void idInterpolatedPosition::start( long t ) {
    Sys_Printf("void idInterpolatedPosition::start( long t )\r\n");
}


/*
================
idInterpolatedPosition::getPosition
================
*/
const idVec3 *idInterpolatedPosition::getPosition( long t ) {
    Sys_Printf("idVec3 *idInterpolatedPosition::getPosition( long t )\r\n");
    return NULL;
}


/*
================
idInterpolatedPosition::parse
================
*/
void idInterpolatedPosition::parse( idParser *src ) {
    Sys_Printf("void idInterpolatedPosition::parse( idParser *src )\r\n");
}


/*
================
idInterpolatedPosition::write
================
*/
void idInterpolatedPosition::write( idFile *f, const char *p ) {
    Sys_Printf("void idInterpolatedPosition::write( idFile *f, const char *p )\r\n");
}


/*
=================================================================================

idCameraFOV

=================================================================================
*/

/*
================
idCameraFOV::GetFOV
================
*/
float idCameraFOV::GetFOV( long t ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idCameraFOV::GetFOV( long t )\r\n");
    return retVal;
}


/*
================
idCameraFOV::reset
================
*/
void idCameraFOV::reset( float startfov, float endfov, int start, int len ) {
    Sys_Printf("void idCameraFOV::reset( float startfov, float endfov, int start, int len )\r\n");
}


/*
================
idCameraFOV::parse
================
*/
void idCameraFOV::parse( idParser *src ) {
    Sys_Printf("void idCameraFOV::parse( idParser *src )\r\n");
}


/*
================
idCameraFOV::write
================
*/
void idCameraFOV::write( idFile *f, const char *p ) {
    Sys_Printf("void idCameraFOV::write( idFile *f, const char *p )\r\n");
}


/*
=================================================================================

idFixedPosition

=================================================================================
*/

/*
================
idFixedPosition::parse
================
*/
void idFixedPosition::parse( idParser *src ) {
    Sys_Printf("void idFixedPosition::parse( idParser *src )\r\n");
}


/*
================
idFixedPosition::write
================
*/
void idFixedPosition::write( idFile *f, const char *p ) {
    Sys_Printf("void idFixedPosition::write( idFile *f, const char *p )\r\n");
}


/*
=================================================================================

idSplinePosition

=================================================================================
*/

/*
================
idSplinePosition::start
================
*/
void idSplinePosition::start( long t ) {
    Sys_Printf("void idSplinePosition::start( long t )\r\n");
}


/*
================
idSplinePosition::parse
================
*/
void idSplinePosition::parse( idParser *src ) {
    Sys_Printf("void idSplinePosition::parse( idParser *src )\r\n");
}


/*
================
idSplinePosition::write
================
*/
void idSplinePosition::write( idFile *f, const char *p ) {
    Sys_Printf("void idSplinePosition::write( idFile *f, const char *p )\r\n");
}


/*
================
idSplinePosition::getPosition
================
*/
const idVec3 *idSplinePosition::getPosition(long t) {
    Sys_Printf("idVec3 *idSplinePosition::getPosition(long t)\r\n");
    return NULL;
}

