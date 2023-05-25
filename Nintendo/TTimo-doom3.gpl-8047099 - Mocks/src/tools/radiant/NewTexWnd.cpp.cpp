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
#include "NewTexWnd.h"
#include "io.h"

#include "../../renderer/tr_local.h"

#ifdef _DEBUG
	#define new DEBUG_NEW
	#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool Sys_KeyDown( int key ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Sys_KeyDown( int key )\r\n");
    return retVal;
}


// CNewTexWnd
IMPLEMENT_DYNCREATE(CNewTexWnd, CWnd);

/*
 =======================================================================================================================
 =======================================================================================================================
 */
CNewTexWnd::CNewTexWnd() {
	m_bNeedRange = true;
	hglrcTexture = NULL;
	hdcTexture = NULL;
	cursor.x = cursor.y = 0;
	origin.x = origin.y = 0;
}

/*
 =======================================================================================================================
 =======================================================================================================================
 */
CNewTexWnd::~CNewTexWnd() {
}

BEGIN_MESSAGE_MAP(CNewTexWnd, CWnd)
//{{AFX_MSG_MAP(CNewTexWnd)
	ON_WM_CREATE()
	ON_WM_SIZE()
	ON_WM_PARENTNOTIFY()
	ON_WM_KEYDOWN()
	ON_WM_KEYUP()
	ON_WM_PAINT()
	ON_WM_VSCROLL()
	ON_WM_LBUTTONDOWN()
	ON_WM_MBUTTONDOWN()
	ON_WM_RBUTTONDOWN()
	ON_WM_LBUTTONUP()
	ON_WM_MBUTTONUP()
	ON_WM_RBUTTONUP()
	ON_WM_MOUSEMOVE()
	ON_WM_MOUSEWHEEL()
	//}}AFX_MSG_MAP
	ON_WM_SETFOCUS()
END_MESSAGE_MAP()
//
// =======================================================================================================================
//    CNewTexWnd message handlers
// =======================================================================================================================
//
BOOL CNewTexWnd::PreCreateWindow(CREATESTRUCT &cs) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CNewTexWnd::PreCreateWindow(CREATESTRUCT &cs)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
int CNewTexWnd::OnCreate(LPCREATESTRUCT lpCreateStruct) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CNewTexWnd::OnCreate(LPCREATESTRUCT lpCreateStruct)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CNewTexWnd::OnSize(UINT nType, int cx, int cy) {
    Sys_Printf("void CNewTexWnd::OnSize(UINT nType, int cx, int cy)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CNewTexWnd::OnParentNotify(UINT message, LPARAM lParam) {
    Sys_Printf("void CNewTexWnd::OnParentNotify(UINT message, LPARAM lParam)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CNewTexWnd::UpdatePrefs() {
    Sys_Printf("void CNewTexWnd::UpdatePrefs()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CNewTexWnd::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) {
    Sys_Printf("void CNewTexWnd::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CNewTexWnd::OnKeyUp(UINT nChar, UINT nRepCnt, UINT nFlags) {
    Sys_Printf("void CNewTexWnd::OnKeyUp(UINT nChar, UINT nRepCnt, UINT nFlags)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
const idMaterial *CNewTexWnd::NextPos() {
    Sys_Printf("idMaterial *CNewTexWnd::NextPos()\r\n");
    return NULL;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CNewTexWnd::OnPaint() {
    Sys_Printf("void CNewTexWnd::OnPaint()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CNewTexWnd::OnVScroll(UINT nSBCode, UINT nPos, CScrollBar *pScrollBar) {
    Sys_Printf("void CNewTexWnd::OnVScroll(UINT nSBCode, UINT nPos, CScrollBar *pScrollBar)\r\n");
}


BOOL CNewTexWnd::DestroyWindow() {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CNewTexWnd::DestroyWindow()\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */						    
BOOL CNewTexWnd::Create
(
	LPCTSTR			lpszClassName,
	LPCTSTR			lpszWindowName,
	DWORD			dwStyle,
	const RECT		&rect,
	CWnd			*pParentWnd,
	UINT			nID,
	CCreateContext	*pContext
) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CNewTexWnd::Create(LPCTSTRlpszClassName,LPCTSTRlpszWindowName,DWORDdwStyle,const RECT&rect,CWnd*pParentWnd,UINTnID,CCreateContext*pContext)\r\n");
    return retVal;
}


const idMaterial *CNewTexWnd::getMaterialAtPoint(CPoint point) {
    Sys_Printf("idMaterial *CNewTexWnd::getMaterialAtPoint(CPoint point)\r\n");
    return NULL;
}

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CNewTexWnd::OnLButtonDown(UINT nFlags, CPoint point) {
    Sys_Printf("void CNewTexWnd::OnLButtonDown(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CNewTexWnd::OnMButtonDown(UINT nFlags, CPoint point) {
    Sys_Printf("void CNewTexWnd::OnMButtonDown(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CNewTexWnd::OnRButtonDown(UINT nFlags, CPoint point) {
    Sys_Printf("void CNewTexWnd::OnRButtonDown(UINT nFlags, CPoint point)\r\n");
}


/*
 ===============================t========================================================================================
 =======================================================================================================================
 */
void CNewTexWnd::OnLButtonUp(UINT nFlags, CPoint point) {
    Sys_Printf("void CNewTexWnd::OnLButtonUp(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CNewTexWnd::OnMButtonUp(UINT nFlags, CPoint point) {
    Sys_Printf("void CNewTexWnd::OnMButtonUp(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CNewTexWnd::OnRButtonUp(UINT nFlags, CPoint point) {
    Sys_Printf("void CNewTexWnd::OnRButtonUp(UINT nFlags, CPoint point)\r\n");
}


extern float	fDiff(float f1, float f2);

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CNewTexWnd::OnMouseMove(UINT nFlags, CPoint point) {
    Sys_Printf("void CNewTexWnd::OnMouseMove(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CNewTexWnd::LoadMaterials() {
    Sys_Printf("void CNewTexWnd::LoadMaterials()\r\n");
}



void Texture_SetTexture(texdef_t *texdef, brushprimit_texdef_t	*brushprimit_texdef, bool bFitScale, bool bSetSelection) {
    Sys_Printf("void Texture_SetTexture(texdef_t *texdef, brushprimit_texdef_t*brushprimit_texdef, bool bFitScale, bool bSetSelection)\r\n");
}


const idMaterial *Texture_LoadLight(const char *name) {
    Sys_Printf("idMaterial *Texture_LoadLight(const char *name)\r\n");
    return NULL;
}



void Texture_ClearInuse(void) {
    Sys_Printf("void Texture_ClearInuse(void)\r\n");
}


void Texture_ShowAll(void) {
    Sys_Printf("void Texture_ShowAll(void)\r\n");
}


void Texture_HideAll() {
    Sys_Printf("void Texture_HideAll()\r\n");
}


const idMaterial *Texture_ForName(const char *name) {
    Sys_Printf("idMaterial *Texture_ForName(const char *name)\r\n");
    return NULL;
}


void Texture_ShowInuse(void) {
    Sys_Printf("void Texture_ShowInuse(void)\r\n");
}


void Texture_Cleanup(CStringList *pList) {
    Sys_Printf("void Texture_Cleanup(CStringList *pList)\r\n");
}


int				texture_mode = GL_LINEAR_MIPMAP_LINEAR;
bool texture_showinuse = true;


/*
 =======================================================================================================================
    Texture_SetMode
 =======================================================================================================================
 */
void Texture_SetMode(int iMenu) {
    Sys_Printf("void Texture_SetMode(int iMenu)\r\n");
}




void CNewTexWnd::EnsureTextureIsVisible(const char *name) {
    Sys_Printf("void CNewTexWnd::EnsureTextureIsVisible(const char *name)\r\n");
}



BOOL CNewTexWnd::OnToolTipNotify( UINT id, NMHDR * pNMHDR, LRESULT * pResult ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CNewTexWnd::OnToolTipNotify( UINT id, NMHDR * pNMHDR, LRESULT * pResult )\r\n");
    return retVal;
}


int CNewTexWnd::OnToolHitTest(CPoint point, TOOLINFO * pTI)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CNewTexWnd::OnToolHitTest(CPoint point, TOOLINFO * pTI)\r\n");
    return retVal;
}


BOOL CNewTexWnd::OnMouseWheel(UINT nFlags, short zDelta, CPoint pt) 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CNewTexWnd::OnMouseWheel(UINT nFlags, short zDelta, CPoint pt)\r\n");
    return retVal;
}


BOOL CNewTexWnd::PreTranslateMessage(MSG* pMsg)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CNewTexWnd::PreTranslateMessage(MSG* pMsg)\r\n");
    return retVal;
}


void CNewTexWnd::OnSetFocus(CWnd* pOldWnd)
{
    Sys_Printf("void CNewTexWnd::OnSetFocus(CWnd* pOldWnd)\r\n");
}

