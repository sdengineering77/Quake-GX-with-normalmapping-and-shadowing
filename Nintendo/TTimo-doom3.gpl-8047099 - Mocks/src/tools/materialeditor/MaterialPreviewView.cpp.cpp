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


#include "../../../idlib/precompiled.h"
#pragma hdrstop

#include "../radiant/QE3.H"
#include "MaterialPreviewView.h"


// MaterialPreviewView
IMPLEMENT_DYNCREATE(MaterialPreviewView, CView)

MaterialPreviewView::MaterialPreviewView() {
	// Initialize the rendered material
	renderedView.setMedia( "_default" );
}

MaterialPreviewView::~MaterialPreviewView() {
}

BEGIN_MESSAGE_MAP(MaterialPreviewView, CView)
	ON_WM_CREATE()
	ON_WM_SIZE()
END_MESSAGE_MAP()


// MaterialPreviewView drawing

void MaterialPreviewView::OnDraw(CDC* pDC) {
    Sys_Printf("void MaterialPreviewView::OnDraw(CDC* pDC)\r\n");
}


// MaterialPreviewView diagnostics

#ifdef _DEBUG
void MaterialPreviewView::AssertValid() const {
    Sys_Printf("void MaterialPreviewView::AssertValid()\r\n");
}


void MaterialPreviewView::Dump(CDumpContext& dc) const {
    Sys_Printf("void MaterialPreviewView::Dump(CDumpContext& dc)\r\n");
}

#endif //_DEBUG

// MaterialPreviewView message handlers

int MaterialPreviewView::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int MaterialPreviewView::OnCreate(LPCREATESTRUCT lpCreateStruct)\r\n");
    return retVal;
}


void MaterialPreviewView::OnSize(UINT nType, int cx, int cy)
{
    Sys_Printf("void MaterialPreviewView::OnSize(UINT nType, int cx, int cy)\r\n");
}


void MaterialPreviewView::MV_OnMaterialSelectionChange( MaterialDoc *pMaterial )
{
    Sys_Printf("void MaterialPreviewView::MV_OnMaterialSelectionChange( MaterialDoc *pMaterial )\r\n");
}


void MaterialPreviewView::OnLocalParmChange( int parmNum, float value ) {
    Sys_Printf("void MaterialPreviewView::OnLocalParmChange( int parmNum, float value )\r\n");
}


void MaterialPreviewView::OnGlobalParmChange( int parmNum, float value ) {
    Sys_Printf("void MaterialPreviewView::OnGlobalParmChange( int parmNum, float value )\r\n");
}


void MaterialPreviewView::OnLightShaderChange( int lightId, idStr shaderName ) {
    Sys_Printf("void MaterialPreviewView::OnLightShaderChange( int lightId, idStr shaderName )\r\n");
}


void MaterialPreviewView::OnLightColorChange( int lightId, idVec3 &color ) {
    Sys_Printf("void MaterialPreviewView::OnLightColorChange( int lightId, idVec3 &color )\r\n");
}


void MaterialPreviewView::OnLightRadiusChange( int lightId, float radius ) {
    Sys_Printf("void MaterialPreviewView::OnLightRadiusChange( int lightId, float radius )\r\n");
}


void MaterialPreviewView::OnLightAllowMoveChange( int lightId, bool move ) {
    Sys_Printf("void MaterialPreviewView::OnLightAllowMoveChange( int lightId, bool move )\r\n");
}


void MaterialPreviewView::OnAddLight( void ) {
    Sys_Printf("void MaterialPreviewView::OnAddLight( void )\r\n");
}


void MaterialPreviewView::OnDeleteLight( int lightId ) {
    Sys_Printf("void MaterialPreviewView::OnDeleteLight( int lightId )\r\n");
}


void MaterialPreviewView::OnModelChange( int modelId ) {
    Sys_Printf("void MaterialPreviewView::OnModelChange( int modelId )\r\n");
}


void MaterialPreviewView::OnCustomModelChange( idStr modelName ) {
    Sys_Printf("void MaterialPreviewView::OnCustomModelChange( idStr modelName )\r\n");
}


void MaterialPreviewView::OnShowLightsChange( bool showLights ) {
    Sys_Printf("void MaterialPreviewView::OnShowLightsChange( bool showLights )\r\n");
}


/*
 =============================================================================
 =============================================================================
 =============================================================================
 */

extern bool		Sys_KeyDown(int key);
extern float	fDiff(float f1, float f2);

idGLDrawableView::idGLDrawableView() {
	material = NULL;
	modelDefHandle = -1;

	objectId = 0;
	showLights = true;
	realTime = 16;

	viewOrigin.Set( 0.f, 0.f, 0.f );
	viewRotation.Set( 0.f, 0.f, 0.f );
	viewDistance = -196.f;

	world = NULL;
	worldModel = NULL;

	ResetView();
}

idGLDrawableView::~idGLDrawableView() {
	delete world;
	delete worldModel;
}

void idGLDrawableView::ResetView( void ) {
    Sys_Printf("void idGLDrawableView::ResetView( void )\r\n");
}


void idGLDrawableView::InitWorld() {
    Sys_Printf("void idGLDrawableView::InitWorld()\r\n");
}


void idGLDrawableView::buttonDown(int _button, float x, float y) {
    Sys_Printf("void idGLDrawableView::buttonDown(int _button, float x, float y)\r\n");
}


void idGLDrawableView::mouseMove(float x, float y) {
    Sys_Printf("void idGLDrawableView::mouseMove(float x, float y)\r\n");
}


void idGLDrawableView::addLight( void ) {
    Sys_Printf("void idGLDrawableView::addLight( void )\r\n");
}


void idGLDrawableView::deleteLight( const int lightId ) {
    Sys_Printf("void idGLDrawableView::deleteLight( const int lightId )\r\n");
}


void idGLDrawableView::UpdateCamera( renderView_t *refdef ) {
    Sys_Printf("void idGLDrawableView::UpdateCamera( renderView_t *refdef )\r\n");
}



void idGLDrawableView::UpdateModel( void ) {
    Sys_Printf("void idGLDrawableView::UpdateModel( void )\r\n");
}


void idGLDrawableView::UpdateLights( void ) {
    Sys_Printf("void idGLDrawableView::UpdateLights( void )\r\n");
}


void idGLDrawableView::drawLights( renderView_t *refdef ) {
    Sys_Printf("void idGLDrawableView::drawLights( renderView_t *refdef )\r\n");
}



void idGLDrawableView::draw(int x, int y, int w, int h) {
    Sys_Printf("void idGLDrawableView::draw(int x, int y, int w, int h)\r\n");
}


// ============================
// Interface to PropTree Window
// ============================

void idGLDrawableView::setMedia(const char *name) {
    Sys_Printf("void idGLDrawableView::setMedia(const char *name)\r\n");
}


void idGLDrawableView::setLocalParm( int parmNum, float value ) {
    Sys_Printf("void idGLDrawableView::setLocalParm( int parmNum, float value )\r\n");
}


void idGLDrawableView::setGlobalParm( int parmNum, float value ) {
    Sys_Printf("void idGLDrawableView::setGlobalParm( int parmNum, float value )\r\n");
}


void idGLDrawableView::setLightShader( const int lightId, const idStr shaderName ) {
    Sys_Printf("void idGLDrawableView::setLightShader( const int lightId, const idStr shaderName )\r\n");
}


void idGLDrawableView::setLightColor( const int lightId, const idVec3 &value ) {
    Sys_Printf("void idGLDrawableView::setLightColor( const int lightId, const idVec3 &value )\r\n");
}


void idGLDrawableView::setLightRadius( const int lightId, const float radius ) {
    Sys_Printf("void idGLDrawableView::setLightRadius( const int lightId, const float radius )\r\n");
}


void idGLDrawableView::setLightAllowMove( const int lightId, const bool move ) {
    Sys_Printf("void idGLDrawableView::setLightAllowMove( const int lightId, const bool move )\r\n");
}


void idGLDrawableView::setObject( int Id ) {
    Sys_Printf("void idGLDrawableView::setObject( int Id )\r\n");
}


void idGLDrawableView::setCustomModel( const idStr modelName ) {
    Sys_Printf("void idGLDrawableView::setCustomModel( const idStr modelName )\r\n");
}


void idGLDrawableView::setShowLights( bool _showLights ) {
    Sys_Printf("void idGLDrawableView::setShowLights( bool _showLights )\r\n");
}


