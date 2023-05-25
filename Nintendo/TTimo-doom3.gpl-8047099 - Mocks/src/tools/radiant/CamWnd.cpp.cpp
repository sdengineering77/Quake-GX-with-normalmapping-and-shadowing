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
#include "XYWnd.h"
#include "CamWnd.h"
#include "splines.h"
#include <GL/glu.h>

#include "../../renderer/tr_local.h"
#include "../../renderer/model_local.h"	// for idRenderModelMD5

#ifdef _DEBUG
	#define new DEBUG_NEW
	#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif
extern void DrawPathLines();

int g_axialAnchor = -1;
int g_axialDest = -1;
bool g_bAxialMode = false;

void ValidateAxialPoints() {
    Sys_Printf("void ValidateAxialPoints()\r\n");
}


// CCamWnd
IMPLEMENT_DYNCREATE(CCamWnd, CWnd);

/*
 =======================================================================================================================
 =======================================================================================================================
 */
CCamWnd::CCamWnd() {
	m_pXYFriend = NULL;
	memset(&m_Camera, 0, sizeof(camera_t));
	m_pSide_select = NULL;
	m_bClipMode = false;
	worldDirty = true;
	worldModel = NULL;
	renderMode = false;
	rebuildMode = false;
	entityMode = false;
	animationMode = false;
	selectMode = false;
	soundMode = false;
	saveValid = false;
	Cam_Init();
}

/*
 =======================================================================================================================
 =======================================================================================================================
 */
CCamWnd::~CCamWnd() {
}

BEGIN_MESSAGE_MAP(CCamWnd, CWnd)
//{{AFX_MSG_MAP(CCamWnd)
	ON_WM_KEYDOWN()
	ON_WM_PAINT()
	ON_WM_DESTROY()
	ON_WM_CLOSE()
	ON_WM_MOUSEMOVE()
	ON_WM_LBUTTONDOWN()
	ON_WM_LBUTTONUP()
	ON_WM_MBUTTONDOWN()
	ON_WM_MBUTTONUP()
	ON_WM_RBUTTONDOWN()
	ON_WM_RBUTTONUP()
	ON_WM_CREATE()
	ON_WM_SIZE()
	ON_WM_KEYUP()
	ON_WM_NCCALCSIZE()
	ON_WM_KILLFOCUS()
	ON_WM_SETFOCUS()
	ON_WM_TIMER()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()
/*
 =======================================================================================================================
 =======================================================================================================================
 */
LONG WINAPI CamWndProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam) {
    WINAPI retVal;
    memset(&retVal, 0, sizeof(WINAPI));
    Sys_Printf("WINAPI CamWndProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)\r\n");
    return retVal;
}


//
// =======================================================================================================================
//    CCamWnd message handlers
// =======================================================================================================================
//
BOOL CCamWnd::PreCreateWindow(CREATESTRUCT &cs) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CCamWnd::PreCreateWindow(CREATESTRUCT &cs)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) {
    Sys_Printf("void CCamWnd::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags)\r\n");
}


brush_t *g_pSplitList = NULL;

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::OnPaint() {
    Sys_Printf("void CCamWnd::OnPaint()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::SetXYFriend(CXYWnd *pWnd) {
    Sys_Printf("void CCamWnd::SetXYFriend(CXYWnd *pWnd)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::OnDestroy() {
    Sys_Printf("void CCamWnd::OnDestroy()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::OnClose() {
    Sys_Printf("void CCamWnd::OnClose()\r\n");
}


extern void Select_RotateTexture(float amt, bool absolute);

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::OnMouseMove(UINT nFlags, CPoint point) {
    Sys_Printf("void CCamWnd::OnMouseMove(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::OnLButtonDown(UINT nFlags, CPoint point) {
    Sys_Printf("void CCamWnd::OnLButtonDown(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::OnLButtonUp(UINT nFlags, CPoint point) {
    Sys_Printf("void CCamWnd::OnLButtonUp(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::OnMButtonDown(UINT nFlags, CPoint point) {
    Sys_Printf("void CCamWnd::OnMButtonDown(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::OnMButtonUp(UINT nFlags, CPoint point) {
    Sys_Printf("void CCamWnd::OnMButtonUp(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::OnRButtonDown(UINT nFlags, CPoint point) {
    Sys_Printf("void CCamWnd::OnRButtonDown(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::OnRButtonUp(UINT nFlags, CPoint point) {
    Sys_Printf("void CCamWnd::OnRButtonUp(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
int CCamWnd::OnCreate(LPCREATESTRUCT lpCreateStruct) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CCamWnd::OnCreate(LPCREATESTRUCT lpCreateStruct)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::OriginalMouseUp(UINT nFlags, CPoint point) {
    Sys_Printf("void CCamWnd::OriginalMouseUp(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::OriginalMouseDown(UINT nFlags, CPoint point) {
    Sys_Printf("void CCamWnd::OriginalMouseDown(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::Cam_Init() {
    Sys_Printf("void CCamWnd::Cam_Init()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::Cam_BuildMatrix() {
    Sys_Printf("void CCamWnd::Cam_BuildMatrix()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */

void CCamWnd::Cam_ChangeFloor(bool up) {
    Sys_Printf("void CCamWnd::Cam_ChangeFloor(bool up)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::Cam_PositionDrag() {
    Sys_Printf("void CCamWnd::Cam_PositionDrag()\r\n");
}


void CCamWnd::Cam_MouseLook() {
    Sys_Printf("void CCamWnd::Cam_MouseLook()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::Cam_MouseControl(float dtime) {
    Sys_Printf("void CCamWnd::Cam_MouseControl(float dtime)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::Cam_MouseDown(int x, int y, int buttons) {
    Sys_Printf("void CCamWnd::Cam_MouseDown(int x, int y, int buttons)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::Cam_MouseUp(int x, int y, int buttons) {
    Sys_Printf("void CCamWnd::Cam_MouseUp(int x, int y, int buttons)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::Cam_MouseMoved(int x, int y, int buttons) {
    Sys_Printf("void CCamWnd::Cam_MouseMoved(int x, int y, int buttons)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::InitCull() {
    Sys_Printf("void CCamWnd::InitCull()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool CCamWnd::CullBrush(brush_t *b, bool cubicOnly) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CCamWnd::CullBrush(brush_t *b, bool cubicOnly)\r\n");
    return retVal;
}


#if 0

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::DrawLightRadius(brush_t *pBrush) {
    Sys_Printf("void CCamWnd::DrawLightRadius(brush_t *pBrush)\r\n");
}

#endif

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void setGLMode(int mode) {
    Sys_Printf("void setGLMode(int mode)\r\n");
}



extern void glLabeledPoint(idVec4 &color, idVec3 &point, float size, const char *label);
void DrawAxial(face_t *selFace) {
    Sys_Printf("void DrawAxial(face_t *selFace)\r\n");
}



/*
 =======================================================================================================================
    Cam_Draw
 =======================================================================================================================
 */
void CCamWnd::SetProjectionMatrix() {
    Sys_Printf("void CCamWnd::SetProjectionMatrix()\r\n");
}


void CCamWnd::Cam_Draw() {
    Sys_Printf("void CCamWnd::Cam_Draw()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::OnSize(UINT nType, int cx, int cy) {
    Sys_Printf("void CCamWnd::OnSize(UINT nType, int cx, int cy)\r\n");
}



/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CCamWnd::OnKeyUp(UINT nChar, UINT nRepCnt, UINT nFlags) {
    Sys_Printf("void CCamWnd::OnKeyUp(UINT nChar, UINT nRepCnt, UINT nFlags)\r\n");
}


//
// =======================================================================================================================
//    Timo brush primitive texture shifting, using camera view to select translations::
// =======================================================================================================================
//
void CCamWnd::ShiftTexture_BrushPrimit(face_t *f, int x, int y) {
    Sys_Printf("void CCamWnd::ShiftTexture_BrushPrimit(face_t *f, int x, int y)\r\n");
}



bool IsBModel(brush_t *b) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool IsBModel(brush_t *b)\r\n");
    return retVal;
}


/*
================
BuildEntityRenderState

Creates or updates modelDef and lightDef for an entity
================
*/
int Brush_ToTris(brush_t *brush, idTriList *tris, idMatList *mats, bool models, bool bmodel);

void CCamWnd::BuildEntityRenderState( entity_t *ent, bool update) {
    Sys_Printf("void CCamWnd::BuildEntityRenderState( entity_t *ent, bool update)\r\n");
}


void Tris_ToOBJ(const char *outFile, idTriList *tris, idMatList *mats) {
    Sys_Printf("void Tris_ToOBJ(const char *outFile, idTriList *tris, idMatList *mats)\r\n");
}


int Brush_TransformModel(brush_t *brush, idTriList *tris, idMatList *mats) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Brush_TransformModel(brush_t *brush, idTriList *tris, idMatList *mats)\r\n");
    return retVal;
}



#define	MAX_TRI_SURFACES	16384
int Brush_ToTris(brush_t *brush, idTriList *tris, idMatList *mats, bool models, bool bmodel) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Brush_ToTris(brush_t *brush, idTriList *tris, idMatList *mats, bool models, bool bmodel)\r\n");
    return retVal;
}


void Select_ToOBJ() {
    Sys_Printf("void Select_ToOBJ()\r\n");
}


void Select_ToCM() {
    Sys_Printf("void Select_ToCM()\r\n");
}



/*
=================
BuildRendererState

Builds models, lightdefs, and modeldefs for the current editor data
so it can be rendered by the game renderSystem
=================
*/
void CCamWnd::BuildRendererState() {
    Sys_Printf("void CCamWnd::BuildRendererState()\r\n");
}


/*
===============================
CCamWnd::UpdateRenderEntities

  Creates a new entity state list
  returns true if a repaint is needed
===============================
*/
bool CCamWnd::UpdateRenderEntities() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CCamWnd::UpdateRenderEntities()\r\n");
    return retVal;
}


/*
============================
CCamWnd::FreeRendererState

  Frees the render state data
============================
*/
void CCamWnd::FreeRendererState() {
    Sys_Printf("void CCamWnd::FreeRendererState()\r\n");
}



/*
========================
CCamWnd::UpdateCaption

  updates the caption based on rendermode and whether the render mode needs updated
========================
*/
void CCamWnd::UpdateCaption() {
    Sys_Printf("void CCamWnd::UpdateCaption()\r\n");
}


/*
===========================
CCamWnd::ToggleRenderMode

	Toggles the render mode
===========================
*/
void CCamWnd::ToggleRenderMode() {
    Sys_Printf("void CCamWnd::ToggleRenderMode()\r\n");
}


/*
===========================
CCamWnd::ToggleRebuildMode

	Toggles the rebuild mode
===========================
*/
void CCamWnd::ToggleRebuildMode() {
    Sys_Printf("void CCamWnd::ToggleRebuildMode()\r\n");
}


/*
===========================
CCamWnd::ToggleEntityMode

	Toggles the entity mode
===========================
*/
void CCamWnd::ToggleEntityMode() {
    Sys_Printf("void CCamWnd::ToggleEntityMode()\r\n");
}



/*
===========================
CCamWnd::ToggleRenderMode

	Toggles the render mode
===========================
*/
void CCamWnd::ToggleAnimationMode() {
    Sys_Printf("void CCamWnd::ToggleAnimationMode()\r\n");
}


/*
===========================
CCamWnd::ToggleSoundMode

	Toggles the sound mode
===========================
*/
void CCamWnd::ToggleSoundMode() {
    Sys_Printf("void CCamWnd::ToggleSoundMode()\r\n");
}


/*
===========================
CCamWnd::ToggleRenderMode

	Toggles the render mode
===========================
*/
void CCamWnd::ToggleSelectMode() {
    Sys_Printf("void CCamWnd::ToggleSelectMode()\r\n");
}


/*
=========================
CCamWnd::MarkWorldDirty

  marks the render world as dirty
=========================
*/
void CCamWnd::MarkWorldDirty() {
    Sys_Printf("void CCamWnd::MarkWorldDirty()\r\n");
}



/*
=========================
CCamWnd::DrawEntityData

  Draws entity data ( experimental )
=========================
*/
extern void glBox(idVec4 &color, idVec3 &point, float size);

void CCamWnd::DrawEntityData() {
    Sys_Printf("void CCamWnd::DrawEntityData()\r\n");
}



/*
 =======================================================================================================================
    Cam_Render

	This used the renderSystem to draw a fully lit view of the world
 =======================================================================================================================
 */
void CCamWnd::Cam_Render() {
    Sys_Printf("void CCamWnd::Cam_Render()\r\n");
}



void CCamWnd::OnTimer(UINT nIDEvent) 
{
    Sys_Printf("void CCamWnd::OnTimer(UINT nIDEvent)\r\n");
}



void CCamWnd::UpdateCameraView() {
    Sys_Printf("void CCamWnd::UpdateCameraView()\r\n");
}


