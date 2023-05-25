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

#include "qe3.h"
#include "Radiant.h"
#include "GLWidget.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif



/////////////////////////////////////////////////////////////////////////////
// idGLWidget
class idMiniDrawVert {
public:
	idVec3 xyz;
	idVec2 st;
	idMiniDrawVert(float x, float y, float z, float s, float t) : xyz(x,y,z), st(s, t) {
	};
};

static idMiniDrawVert cubeData[] = {
	idMiniDrawVert(-1.0, -1.0, +1.0, 0.0, 0.0),
	idMiniDrawVert(+1.0, -1.0, +1.0, 1.0, 0.0),
	idMiniDrawVert(+1.0, +1.0, +1.0, 1.0, 1.0),
	idMiniDrawVert(-1.0, +1.0, +1.0, 0.0, 1.0),

	idMiniDrawVert(-1.0, -1.0, -1.0, 1.0, 0.0),
	idMiniDrawVert(-1.0, +1.0, +1.0, 1.0, 1.0),
	idMiniDrawVert(+1.0, +1.0, -1.0, 0.0, 1.0),
	idMiniDrawVert(+1.0, -1.0, -1.0, 0.0, 0.0),

	idMiniDrawVert(-1.0, +1.0, -1.0, 0.0, 1.0),
	idMiniDrawVert(-1.0, +1.0, +1.0, 0.0, 0.0),
	idMiniDrawVert(+1.0, +1.0, +1.0, 1.0, 0.0),
	idMiniDrawVert(+1.0, +1.0, -1.0, 1.0, 1.0),

	idMiniDrawVert(-1.0, -1.0, -1.0, 1.0, 1.0),
	idMiniDrawVert(+1.0, -1.0, -1.0, 0.0, 1.0),
	idMiniDrawVert(+1.0, -1.0, +1.0, 0.0, 0.0),
	idMiniDrawVert(-1.0, -1.0, +1.0, 1.0, 0.0),

	idMiniDrawVert(+1.0, -1.0, -1.0, 1.0, 0.0),
	idMiniDrawVert(+1.0, +1.0, -1.0, 1.0, 1.0),
	idMiniDrawVert(+1.0, +1.0, +1.0, 0.0, 1.0),
	idMiniDrawVert(+1.0, -1.0, +1.0, 0.0, 0.0),

	idMiniDrawVert(-1.0, -1.0, -1.0, 0.0, 0.0),
	idMiniDrawVert(-1.0, -1.0, +1.0, 1.0, 0.0),
	idMiniDrawVert(-1.0, +1.0, +1.0, 1.0, 1.0),
	idMiniDrawVert(-1.0, +1.0, -1.0, 0.0, 1.0)
};

static int cubeSides = sizeof(cubeData) / sizeof(idMiniDrawVert);
static int numQuads = cubeSides / 4;

void glTexturedBox(idVec3 &point, float size, const idMaterial *mat) {
    Sys_Printf("void glTexturedBox(idVec3 &point, float size, const idMaterial *mat)\r\n");
}


idGLWidget::idGLWidget()
{
	initialized = false;
	drawable = NULL;
}

idGLWidget::~idGLWidget()
{
}


BEGIN_MESSAGE_MAP(idGLWidget, CWnd)
	//{{AFX_MSG_MAP(idGLWidget)
	ON_WM_PAINT()
	ON_WM_LBUTTONDOWN()
	ON_WM_LBUTTONUP()
	ON_WM_MBUTTONDOWN()
	ON_WM_MBUTTONUP()
	ON_WM_MOUSEMOVE()
	ON_WM_MOUSEWHEEL()
	ON_WM_RBUTTONDOWN()
	ON_WM_RBUTTONUP()
	ON_WM_TIMER()
	ON_WM_ERASEBKGND()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// idGLWidget message handlers

BOOL idGLWidget::PreCreateWindow(CREATESTRUCT& cs) 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL idGLWidget::PreCreateWindow(CREATESTRUCT& cs)\r\n");
    return retVal;
}


BOOL idGLWidget::Create(LPCTSTR lpszClassName, LPCTSTR lpszWindowName, DWORD dwStyle, const RECT& rect, CWnd* pParentWnd, UINT nID, CCreateContext* pContext) 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL idGLWidget::Create(LPCTSTR lpszClassName, LPCTSTR lpszWindowName, DWORD dwStyle, const RECT& rect, CWnd* pParentWnd, UINT nID, CCreateContext* pContext)\r\n");
    return retVal;
}


void idGLWidget::OnPaint() 
{
    Sys_Printf("void idGLWidget::OnPaint()\r\n");
}


extern bool Sys_KeyDown(int key);

void idGLDrawable::buttonDown(int _button, float x, float y) {
    Sys_Printf("void idGLDrawable::buttonDown(int _button, float x, float y)\r\n");
}


void idGLDrawable::buttonUp(int button, float x, float y) {
    Sys_Printf("void idGLDrawable::buttonUp(int button, float x, float y)\r\n");
}


extern float	fDiff(float f1, float f2);
void idGLDrawable::mouseMove(float x, float y) {
    Sys_Printf("void idGLDrawable::mouseMove(float x, float y)\r\n");
}


void idGLDrawable::draw(int x, int y, int w, int h) {
    Sys_Printf("void idGLDrawable::draw(int x, int y, int w, int h)\r\n");
}


static int viewAngle = -98;
void idGLDrawableMaterial::buttonDown(int button, float x, float y) {
    Sys_Printf("void idGLDrawableMaterial::buttonDown(int button, float x, float y)\r\n");
}



void idGLDrawableMaterial::mouseMove(float x, float y) {
    Sys_Printf("void idGLDrawableMaterial::mouseMove(float x, float y)\r\n");
}



void idGLDrawableMaterial::draw(int x, int y, int w, int h) {
    Sys_Printf("void idGLDrawableMaterial::draw(int x, int y, int w, int h)\r\n");
}


void idGLDrawableMaterial::setMedia(const char *name) {
    Sys_Printf("void idGLDrawableMaterial::setMedia(const char *name)\r\n");
}


idGLDrawableModel::idGLDrawableModel(const char *name) {
	worldModel = renderModelManager->FindModel( name );
	light = 1.0;
	worldDirty = true;
}

idGLDrawableModel::idGLDrawableModel() {
	worldModel = renderModelManager->DefaultModel();
	light = 1.0;
}

void idGLDrawableModel::setMedia(const char *name) {
    Sys_Printf("void idGLDrawableModel::setMedia(const char *name)\r\n");
}


void idGLDrawableModel::SetSkin( const char *skin ) {
    Sys_Printf("void idGLDrawableModel::SetSkin( const char *skin )\r\n");
}



void idGLDrawableModel::buttonDown(int _button, float x, float y) {
    Sys_Printf("void idGLDrawableModel::buttonDown(int _button, float x, float y)\r\n");
}


void idGLDrawableModel::mouseMove(float x, float y) {
    Sys_Printf("void idGLDrawableModel::mouseMove(float x, float y)\r\n");
}



void idGLDrawableModel::draw(int x, int y, int w, int h) {
    Sys_Printf("void idGLDrawableModel::draw(int x, int y, int w, int h)\r\n");
}




void idGLWidget::OnLButtonDown(UINT nFlags, CPoint point) 
{
    Sys_Printf("void idGLWidget::OnLButtonDown(UINT nFlags, CPoint point)\r\n");
}


void idGLWidget::OnLButtonUp(UINT nFlags, CPoint point) 
{
    Sys_Printf("void idGLWidget::OnLButtonUp(UINT nFlags, CPoint point)\r\n");
}


void idGLWidget::OnMButtonDown(UINT nFlags, CPoint point) 
{
    Sys_Printf("void idGLWidget::OnMButtonDown(UINT nFlags, CPoint point)\r\n");
}


void idGLWidget::OnMButtonUp(UINT nFlags, CPoint point) 
{
    Sys_Printf("void idGLWidget::OnMButtonUp(UINT nFlags, CPoint point)\r\n");
}


void idGLWidget::OnMouseMove(UINT nFlags, CPoint point) 
{
    Sys_Printf("void idGLWidget::OnMouseMove(UINT nFlags, CPoint point)\r\n");
}


BOOL idGLWidget::OnMouseWheel(UINT nFlags, short zDelta, CPoint pt) 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL idGLWidget::OnMouseWheel(UINT nFlags, short zDelta, CPoint pt)\r\n");
    return retVal;
}


void idGLWidget::OnRButtonDown(UINT nFlags, CPoint point) 
{
    Sys_Printf("void idGLWidget::OnRButtonDown(UINT nFlags, CPoint point)\r\n");
}


void idGLWidget::OnRButtonUp(UINT nFlags, CPoint point) 
{
    Sys_Printf("void idGLWidget::OnRButtonUp(UINT nFlags, CPoint point)\r\n");
}


void idGLWidget::setDrawable(idGLDrawable *d) {
    Sys_Printf("void idGLWidget::setDrawable(idGLDrawable *d)\r\n");
}



void idGLWidget::OnTimer(UINT nIDEvent) {
    Sys_Printf("void idGLWidget::OnTimer(UINT nIDEvent)\r\n");
}



idGLDrawable::idGLDrawable() {
	scale = 1.0;   
	xOffset = 0.0;
	yOffset = 0.0;
	handleMove = false;
	realTime = 0;

}

void idGLDrawableConsole::draw(int x, int y, int w, int h) {
    Sys_Printf("void idGLDrawableConsole::draw(int x, int y, int w, int h)\r\n");
}


void idGLConsoleWidget::init() {
    Sys_Printf("void idGLConsoleWidget::init()\r\n");
}


void idGLConsoleWidget::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
    Sys_Printf("void idGLConsoleWidget::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags)\r\n");
}


BEGIN_MESSAGE_MAP(idGLConsoleWidget, idGLWidget)
	//{{AFX_MSG_MAP(idGLConsoleWidget)
	ON_WM_PAINT()
	ON_WM_KEYDOWN()
	ON_WM_KEYUP()
	ON_WM_CHAR()
	ON_WM_LBUTTONDOWN()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()



void idGLConsoleWidget::OnKeyUp(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
    Sys_Printf("void idGLConsoleWidget::OnKeyUp(UINT nChar, UINT nRepCnt, UINT nFlags)\r\n");
}


void idGLConsoleWidget::OnPaint() {
    Sys_Printf("void idGLConsoleWidget::OnPaint()\r\n");
}


void idGLConsoleWidget::OnChar(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
    Sys_Printf("void idGLConsoleWidget::OnChar(UINT nChar, UINT nRepCnt, UINT nFlags)\r\n");
}


void idGLConsoleWidget::OnLButtonDown(UINT nFlags, CPoint point) {
    Sys_Printf("void idGLConsoleWidget::OnLButtonDown(UINT nFlags, CPoint point)\r\n");
}


BOOL idGLWidget::OnEraseBkgnd(CDC* pDC) 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL idGLWidget::OnEraseBkgnd(CDC* pDC)\r\n");
    return retVal;
}



idGLDrawableWorld::idGLDrawableWorld() {
	world = NULL;
	worldModel = NULL;
	InitWorld();
}

idGLDrawableWorld::~idGLDrawableWorld() {
	delete world;
}

void idGLDrawableWorld::AddTris(srfTriangles_t *tris, const idMaterial *mat) {
    Sys_Printf("void idGLDrawableWorld::AddTris(srfTriangles_t *tris, const idMaterial *mat)\r\n");
}


void idGLDrawableWorld::draw(int x, int y, int w, int h) {
    Sys_Printf("void idGLDrawableWorld::draw(int x, int y, int w, int h)\r\n");
}


void idGLDrawableWorld::InitWorld() {
    Sys_Printf("void idGLDrawableWorld::InitWorld()\r\n");
}

