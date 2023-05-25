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
#include "DialogInfo.h"
#include "splines.h"
#include "../../renderer/tr_local.h"
#include "../../renderer/model_local.h"	// for idRenderModelLiquid

#ifdef _DEBUG
	#define new DEBUG_NEW
	#undef THIS_FILE
static char		THIS_FILE[] = __FILE__;
#endif

const char		*g_pDimStrings[] = { "x:%.f", "y:%.f", "z:%.f" };
const char		*g_pOrgStrings[] = { "(x:%.f  y:%.f)", "(x:%.f  z:%.f)", "(y:%.f  z:%.f)" };
CString			g_strDim;
CString			g_strStatus;

bool			g_bCrossHairs = false;
bool			g_bScaleMode;
int				g_nScaleHow;
bool			g_bRotateMode;
bool			g_bClipMode;
bool			g_bRogueClipMode;
bool			g_bSwitch;
CClipPoint		g_Clip1;
CClipPoint		g_Clip2;
CClipPoint		g_Clip3;
CClipPoint		*g_pMovingClip;
brush_t			g_brFrontSplits;
brush_t			g_brBackSplits;

brush_t			g_brClipboard;
brush_t			g_brUndo;
entity_t		g_enClipboard;

idVec3			g_vRotateOrigin;
idVec3			g_vRotation;

bool			g_bPathMode;
CClipPoint		g_PathPoints[256];
CClipPoint		*g_pMovingPath;
int				g_nPathCount;
int				g_nPathLimit;

bool			g_bSmartGo;

bool			g_bPointMode;
CClipPoint		g_PointPoints[512];
CClipPoint		*g_pMovingPoint;
int				g_nPointCount;
int				g_nPointLimit;

const int		XY_LEFT = 0x01;
const int		XY_RIGHT = 0x02;
const int		XY_UP = 0x04;
const int		XY_DOWN = 0x08;

PFNPathCallback *g_pPathFunc = NULL;
void	Select_Ungroup();

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void AcquirePath(int nCount, PFNPathCallback *pFunc) {
    Sys_Printf("void AcquirePath(int nCount, PFNPathCallback *pFunc)\r\n");
}


CPtrArray	g_ptrMenus;

CMemFile	g_Clipboard(4096);
CMemFile	g_PatchClipboard(4096);

extern int	pressx;
extern int	pressy;

/*
 =======================================================================================================================
 =======================================================================================================================
 */
float fDiff(float f1, float f2) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float fDiff(float f1, float f2)\r\n");
    return retVal;
}


#define MAX_DRAG_POINTS 128

CPtrArray			dragPoints;
static CDragPoint	*activeDrag = NULL;
static bool			activeDragging = false;

/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool CDragPoint::PointWithin(idVec3 p, int nView) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CDragPoint::PointWithin(idVec3 p, int nView)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
CDragPoint *PointRay(const idVec3 &org, const idVec3 &dir, float *dist) {
    Sys_Printf("CDragPoint *PointRay(const idVec3 &org, const idVec3 &dir, float *dist)\r\n");
    return NULL;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void ClearSelectablePoints(brush_t *b) {
    Sys_Printf("void ClearSelectablePoints(brush_t *b)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void AddSelectablePoint(brush_t *b, idVec3 v, int type, bool priority) {
    Sys_Printf("void AddSelectablePoint(brush_t *b, idVec3 v, int type, bool priority)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void UpdateSelectablePoint(brush_t *b, idVec3 v, int type) {
    Sys_Printf("void UpdateSelectablePoint(brush_t *b, idVec3 v, int type)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void VectorToAngles(idVec3 vec, idVec3 angles) {
    Sys_Printf("void VectorToAngles(idVec3 vec, idVec3 angles)\r\n");
}


/*
 =======================================================================================================================
    RotateLight target is relative to the light origin up and right are relative to the target up and right are
    perpendicular and are on a plane through the target with the target vector as normal delta is the movement of the
    target relative to the light
 =======================================================================================================================
*/
void VectorSnapGrid(idVec3 &v) {
    Sys_Printf("void VectorSnapGrid(idVec3 &v)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
*/
static void RotateLight(idVec3 &target, idVec3 &up, idVec3 &right, const idVec3 &delta) {
    Sys_Printf("void RotateLight(idVec3 &target, idVec3 &up, idVec3 &right, const idVec3 &delta)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
*/
extern idVec3 Brush_TransformedPoint(brush_t *b, const idVec3 &in);
extern idMat3 Brush_RotationMatrix(brush_t *b);
bool UpdateActiveDragPoint(const idVec3 &move) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool UpdateActiveDragPoint(const idVec3 &move)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
*/
bool SetDragPointCursor(idVec3 p, int nView) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool SetDragPointCursor(idVec3 p, int nView)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void SetActiveDrag(CDragPoint *p) {
    Sys_Printf("void SetActiveDrag(CDragPoint *p)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void ClearActiveDrag() {
    Sys_Printf("void ClearActiveDrag()\r\n");
}


// CXYWnd
IMPLEMENT_DYNCREATE(CXYWnd, CWnd);

/*
 =======================================================================================================================
 =======================================================================================================================
 */
CXYWnd::CXYWnd() {
	g_brClipboard.next = &g_brClipboard;
	g_brUndo.next = &g_brUndo;
	g_nScaleHow = 0;
	g_bRotateMode = false;
	g_bClipMode = false;
	g_bRogueClipMode = false;
	g_bSwitch = true;
	g_pMovingClip = NULL;
	g_pMovingPath = NULL;
	g_brFrontSplits.next = &g_brFrontSplits;
	g_brBackSplits.next = &g_brBackSplits;
	m_bActive = false;

	m_bRButtonDown = false;
	m_nUpdateBits = W_XY;
	g_bPathMode = false;
	g_nPathCount = 0;
	g_nPathLimit = 0;
	m_nTimerID = -1;
	m_nButtonstate = 0;
	XY_Init();
}

/*
 =======================================================================================================================
 =======================================================================================================================
 */
CXYWnd::~CXYWnd() {
	int nSize = g_ptrMenus.GetSize();
	while (nSize > 0) {
		CMenu	*pMenu = reinterpret_cast < CMenu * > (g_ptrMenus.GetAt(nSize - 1));
		ASSERT(pMenu);
		pMenu->DestroyMenu();
		delete pMenu;
		nSize--;
	}

	g_ptrMenus.RemoveAll();
	m_mnuDrop.DestroyMenu();
}

BEGIN_MESSAGE_MAP(CXYWnd, CWnd)
//{{AFX_MSG_MAP(CXYWnd)
	ON_WM_CREATE()
	ON_WM_LBUTTONDOWN()
	ON_WM_MBUTTONDOWN()
	ON_WM_RBUTTONDOWN()
	ON_WM_LBUTTONUP()
	ON_WM_MBUTTONUP()
	ON_WM_RBUTTONUP()
	ON_WM_MOUSEMOVE()
	ON_WM_PAINT()
	ON_WM_KEYDOWN()
	ON_WM_SIZE()
	ON_WM_DESTROY()
	ON_COMMAND(ID_SELECT_MOUSEROTATE, OnSelectMouserotate)
	ON_WM_TIMER()
	ON_WM_KEYUP()
	ON_WM_NCCALCSIZE()
	ON_WM_KILLFOCUS()
	ON_WM_SETFOCUS()
	ON_WM_CLOSE()
	ON_WM_ERASEBKGND()
	ON_WM_MOUSEWHEEL()
	ON_COMMAND(ID_DROP_NEWMODEL, OnDropNewmodel)
	//}}AFX_MSG_MAP
	ON_COMMAND_RANGE(ID_ENTITY_START, ID_ENTITY_END, OnEntityCreate)
END_MESSAGE_MAP()
// CXYWnd message handlers
LONG WINAPI XYWndProc(HWND, UINT, WPARAM, LPARAM);

/*
 =======================================================================================================================
 =======================================================================================================================
 */
BOOL CXYWnd::PreCreateWindow(CREATESTRUCT &cs) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CXYWnd::PreCreateWindow(CREATESTRUCT &cs)\r\n");
    return retVal;
}


HDC				s_hdcXY;
HGLRC			s_hglrcXY;

static unsigned s_stipple[32] = {
	0xaaaaaaaa,
	0x55555555,
	0xaaaaaaaa,
	0x55555555,
	0xaaaaaaaa,
	0x55555555,
	0xaaaaaaaa,
	0x55555555,
	0xaaaaaaaa,
	0x55555555,
	0xaaaaaaaa,
	0x55555555,
	0xaaaaaaaa,
	0x55555555,
	0xaaaaaaaa,
	0x55555555,
	0xaaaaaaaa,
	0x55555555,
	0xaaaaaaaa,
	0x55555555,
	0xaaaaaaaa,
	0x55555555,
	0xaaaaaaaa,
	0x55555555,
	0xaaaaaaaa,
	0x55555555,
	0xaaaaaaaa,
	0x55555555,
	0xaaaaaaaa,
	0x55555555,
	0xaaaaaaaa,
	0x55555555,
};

/*
 =======================================================================================================================
    WXY_WndProc
 =======================================================================================================================
 */
LONG WINAPI XYWndProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam) {
    WINAPI retVal;
    memset(&retVal, 0, sizeof(WINAPI));
    Sys_Printf("WINAPI XYWndProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
static void WXY_InitPixelFormat(PIXELFORMATDESCRIPTOR *pPFD) {
    Sys_Printf("void WXY_InitPixelFormat(PIXELFORMATDESCRIPTOR *pPFD)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void WXY_Print(void) {
    Sys_Printf("void WXY_Print(void)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
int CXYWnd::OnCreate(LPCREATESTRUCT lpCreateStruct) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CXYWnd::OnCreate(LPCREATESTRUCT lpCreateStruct)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
float ptSum(idVec3 pt) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float ptSum(idVec3 pt)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::DropClipPoint(UINT nFlags, CPoint point) {
    Sys_Printf("void CXYWnd::DropClipPoint(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::DropPathPoint(UINT nFlags, CPoint point) {
    Sys_Printf("void CXYWnd::DropPathPoint(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::AddPointPoint(UINT nFlags, idVec3 *pVec) {
    Sys_Printf("void CXYWnd::AddPointPoint(UINT nFlags, idVec3 *pVec)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::OnLButtonDown(UINT nFlags, CPoint point) {
    Sys_Printf("void CXYWnd::OnLButtonDown(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::OnMButtonDown(UINT nFlags, CPoint point) {
    Sys_Printf("void CXYWnd::OnMButtonDown(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
float Betwixt(float f1, float f2) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float Betwixt(float f1, float f2)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::ProduceSplits(brush_t **pFront, brush_t **pBack) {
    Sys_Printf("void CXYWnd::ProduceSplits(brush_t **pFront, brush_t **pBack)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CleanList(brush_t *pList) {
    Sys_Printf("void CleanList(brush_t *pList)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::ProduceSplitLists() {
    Sys_Printf("void CXYWnd::ProduceSplitLists()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void Brush_CopyList(brush_t *pFrom, brush_t *pTo) {
    Sys_Printf("void Brush_CopyList(brush_t *pFrom, brush_t *pTo)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::OnRButtonDown(UINT nFlags, CPoint point) {
    Sys_Printf("void CXYWnd::OnRButtonDown(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::OnLButtonUp(UINT nFlags, CPoint point) {
    Sys_Printf("void CXYWnd::OnLButtonUp(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::OnMButtonUp(UINT nFlags, CPoint point) {
    Sys_Printf("void CXYWnd::OnMButtonUp(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::OnRButtonUp(UINT nFlags, CPoint point) {
    Sys_Printf("void CXYWnd::OnRButtonUp(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::OriginalButtonDown(UINT nFlags, CPoint point) {
    Sys_Printf("void CXYWnd::OriginalButtonDown(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::OriginalButtonUp(UINT nFlags, CPoint point) {
    Sys_Printf("void CXYWnd::OriginalButtonUp(UINT nFlags, CPoint point)\r\n");
}


idVec3	tdp;

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::OnMouseMove(UINT nFlags, CPoint point) {
    Sys_Printf("void CXYWnd::OnMouseMove(UINT nFlags, CPoint point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::RetainClipMode(bool bMode) {
    Sys_Printf("void CXYWnd::RetainClipMode(bool bMode)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::SetClipMode(bool bMode) {
    Sys_Printf("void CXYWnd::SetClipMode(bool bMode)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool CXYWnd::ClipMode() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CXYWnd::ClipMode()\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool CXYWnd::RogueClipMode() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CXYWnd::RogueClipMode()\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool CXYWnd::PathMode() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CXYWnd::PathMode()\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool CXYWnd::PointMode() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CXYWnd::PointMode()\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::SetPointMode(bool b) {
    Sys_Printf("void CXYWnd::SetPointMode(bool b)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::OnPaint() {
    Sys_Printf("void CXYWnd::OnPaint()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) {
    Sys_Printf("void CXYWnd::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags)\r\n");
}


//
// =======================================================================================================================
//    FIXME: the brush_t *pBrush is never used. ( Entity_Create uses selected_brushes )
// =======================================================================================================================
//
void CreateEntityFromName(char *pName, brush_t *pBrush, bool forceFixed, idVec3 min, idVec3 max, idVec3 org) {
    Sys_Printf("void CreateEntityFromName(char *pName, brush_t *pBrush, bool forceFixed, idVec3 min, idVec3 max, idVec3 org)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
brush_t *CreateEntityBrush(int x, int y, CXYWnd *pWnd) {
    Sys_Printf("brush_t *CreateEntityBrush(int x, int y, CXYWnd *pWnd)\r\n");
    return NULL;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CreateRightClickEntity(CXYWnd *pWnd, int x, int y, char *pName) {
    Sys_Printf("void CreateRightClickEntity(CXYWnd *pWnd, int x, int y, char *pName)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
brush_t *CreateSmartBrush(idVec3 v) {
    Sys_Printf("brush_t *CreateSmartBrush(idVec3 v)\r\n");
    return NULL;
}


CString g_strSmartEntity;
int		g_nSmartX;
int		g_nSmartY;
bool	g_bSmartWaiting;

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void _SmartPointDone(bool b, int n) {
    Sys_Printf("void _SmartPointDone(bool b, int n)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CreateSmartEntity(CXYWnd *pWnd, int x, int y, const char *pName) {
    Sys_Printf("void CreateSmartEntity(CXYWnd *pWnd, int x, int y, const char *pName)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void FinishSmartCreation() {
    Sys_Printf("void FinishSmartCreation()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::KillPathMode() {
    Sys_Printf("void CXYWnd::KillPathMode()\r\n");
}


//
// =======================================================================================================================
//    gets called for drop down menu messages TIP: it's not always about EntityCreate
// =======================================================================================================================
//
void CXYWnd::OnEntityCreate(unsigned int nID) {
    Sys_Printf("void CXYWnd::OnEntityCreate(unsigned int nID)\r\n");
}


BOOL CXYWnd::OnCmdMsg( UINT nID, int nCode, void *pExtra, AFX_CMDHANDLERINFO *pHandlerInfo )
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CXYWnd::OnCmdMsg( UINT nID, int nCode, void *pExtra, AFX_CMDHANDLERINFO *pHandlerInfo )\r\n");
    return retVal;
}


bool MergeMenu(CMenu * pMenuDestination, const CMenu * pMenuAdd, bool bTopLevel /*=false*/)
{
	// get the number menu items in the menus
	int iMenuAddItemCount	= pMenuAdd->GetMenuItemCount();
	int iMenuDestItemCount	= pMenuDestination->GetMenuItemCount();

	// if there are no items return
	if (iMenuAddItemCount == 0)
		return true;

	// if we are not at top level and the destination menu is not empty
	// -> we append a seperator
	if (!bTopLevel && iMenuDestItemCount > 0)
		pMenuDestination->AppendMenu(MF_SEPARATOR);

	// iterate through the top level of <pMenuAdd>
	for(int iLoop = 0; iLoop < iMenuAddItemCount; iLoop++)
	{
		// get the menu string from the add menu
		CString sMenuAddString;
		pMenuAdd->GetMenuString(iLoop, sMenuAddString, MF_BYPOSITION);

		// try to get the submenu of the current menu item
		CMenu* pSubMenu = pMenuAdd->GetSubMenu(iLoop);

		// check if we have a sub menu
		if (!pSubMenu)
		{
			// normal menu item
			// read the source and append at the destination
			UINT nState	 = pMenuAdd->GetMenuState(iLoop, MF_BYPOSITION);
			UINT nItemID = pMenuAdd->GetMenuItemID(iLoop);
			if (pMenuDestination->AppendMenu(nState, nItemID, sMenuAddString))
			{
				// menu item added, don't forget to correct the item count
				iMenuDestItemCount++;
			}
			else
			{
				TRACE("MergeMenu: AppendMenu failed!\n");
				return false;
			}
		}
		else
		{
			// create or insert a new popup menu item

			// default insert pos is like ap
			int iInsertPosDefault = -1;

			// if we are at top level merge into existing popups rather than
			// creating new ones
			if(bTopLevel)
			{
    ones retVal;
    memset(&retVal, 0, sizeof(ones));
    Sys_Printf("onesif(bTopLevel)\r\n");
    return retVal;
}
 // if (bTopLevel)

			// if the top level search did not find a position append the menu
			if( iInsertPosDefault == -1 )
			{
				iInsertPosDefault = pMenuDestination->GetMenuItemCount();
			}

			// create a new popup and insert before <Window> or <Help>
			CMenu NewPopupMenu;
			if (!NewPopupMenu.CreatePopupMenu())
			{
				TRACE("MergeMenu: CreatePopupMenu failed!\n");
				return false;
			}

			// merge the new popup recursivly
			if (!MergeMenu(&NewPopupMenu, pSubMenu, false))
				return false;

			// insert the new popup menu into the destination menu
			HMENU hNewMenu = NewPopupMenu.GetSafeHmenu();
			if (pMenuDestination->InsertMenu(iInsertPosDefault,
				MF_BYPOSITION | MF_POPUP | MF_ENABLED, 
				(UINT)hNewMenu, sMenuAddString ))
			{
				// don't forget to correct the item count
				iMenuDestItemCount++;
			}
			else
			{
				TRACE("MergeMenu: InsertMenu failed!\n");
				return false;
			}

			// don't destroy the new menu		
			NewPopupMenu.Detach();
		} // if (pSubMenu)
	} // for (iLoop)
	return true;
}




/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::HandleDrop() {
    Sys_Printf("void CXYWnd::HandleDrop()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::XY_Init() {
    Sys_Printf("void CXYWnd::XY_Init()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::SnapToPoint(int x, int y, idVec3 &point) {
    Sys_Printf("void CXYWnd::SnapToPoint(int x, int y, idVec3 &point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::XY_ToPoint(int x, int y, idVec3 &point) {
    Sys_Printf("void CXYWnd::XY_ToPoint(int x, int y, idVec3 &point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::XY_ToGridPoint(int x, int y, idVec3 &point) {
    Sys_Printf("void CXYWnd::XY_ToGridPoint(int x, int y, idVec3 &point)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
idVec3 dragOrigin;
idVec3 dragDir;
idVec3 dragX;
idVec3 dragY;

void CXYWnd::XY_MouseDown(int x, int y, int buttons) {
    Sys_Printf("void CXYWnd::XY_MouseDown(int x, int y, int buttons)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::XY_MouseUp(int x, int y, int buttons) {
    Sys_Printf("void CXYWnd::XY_MouseUp(int x, int y, int buttons)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool CXYWnd::DragDelta(int x, int y, idVec3 &move) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CXYWnd::DragDelta(int x, int y, idVec3 &move)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
    NewBrushDrag
 =======================================================================================================================
 */
void CXYWnd::NewBrushDrag(int x, int y) {
    Sys_Printf("void CXYWnd::NewBrushDrag(int x, int y)\r\n");
}


/*
 =======================================================================================================================
    XY_MouseMoved
 =======================================================================================================================
 */
bool CXYWnd::XY_MouseMoved(int x, int y, int buttons) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CXYWnd::XY_MouseMoved(int x, int y, int buttons)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
    DRAWING £
    XY_DrawGrid
 =======================================================================================================================
 */
void CXYWnd::XY_DrawGrid() {
    Sys_Printf("void CXYWnd::XY_DrawGrid()\r\n");
}


/*
 =======================================================================================================================
    XY_DrawBlockGrid
 =======================================================================================================================
 */
void CXYWnd::XY_DrawBlockGrid() {
    Sys_Printf("void CXYWnd::XY_DrawBlockGrid()\r\n");
}


void GLColoredBoxWithLabel(float x, float y, float size, idVec4 color, const char *text, idVec4 textColor, float xofs, float yofs, float lineSize) {
    Sys_Printf("void GLColoredBoxWithLabel(float x, float y, float size, idVec4 color, const char *text, idVec4 textColor, float xofs, float yofs, float lineSize)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::DrawRotateIcon() {
    Sys_Printf("void CXYWnd::DrawRotateIcon()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::DrawCameraIcon() {
    Sys_Printf("void CXYWnd::DrawCameraIcon()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::DrawZIcon(void) {
    Sys_Printf("void CXYWnd::DrawZIcon(void)\r\n");
}


/*
 =======================================================================================================================
    FilterBrush
 =======================================================================================================================
 */
bool FilterBrush(brush_t *pb) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool FilterBrush(brush_t *pb)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
    PATH LINES £
    DrawPathLines Draws connections between entities. Needs to consider all entities, not just ones on screen, because
    the lines can be visible when neither end is. Called for both camera view and xy view.
 =======================================================================================================================
 */
void DrawPathLines(void) {
    Sys_Printf("void DrawPathLines(void)\r\n");
}


//
// =======================================================================================================================
//    can be greatly simplified but per usual i am in a hurry which is not an excuse, just a fact
// =======================================================================================================================
//
void CXYWnd::PaintSizeInfo(int nDim1, int nDim2, idVec3 vMinBounds, idVec3 vMaxBounds) {
    Sys_Printf("void CXYWnd::PaintSizeInfo(int nDim1, int nDim2, idVec3 vMinBounds, idVec3 vMaxBounds)\r\n");
}


/* XY_Draw */
long		g_lCount = 0;
long		g_lTotal = 0;
extern void DrawBrushEntityName(brush_t *b);

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::XY_Draw() {
    Sys_Printf("void CXYWnd::XY_Draw()\r\n");
}



/*
 =======================================================================================================================
 =======================================================================================================================
 */
idVec3 &CXYWnd::GetOrigin() {
	return m_vOrigin;
}

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::SetOrigin(idVec3 org) {
    Sys_Printf("void CXYWnd::SetOrigin(idVec3 org)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::OnSize(UINT nType, int cx, int cy) {
    Sys_Printf("void CXYWnd::OnSize(UINT nType, int cx, int cy)\r\n");
}


brush_t hold_brushes;

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::Clip() {
    Sys_Printf("void CXYWnd::Clip()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::SplitClip() {
    Sys_Printf("void CXYWnd::SplitClip()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::FlipClip() {
    Sys_Printf("void CXYWnd::FlipClip()\r\n");
}


//
// =======================================================================================================================
//    makes sure the selected brush or camera is in view
// =======================================================================================================================
//
void CXYWnd::PositionView() {
    Sys_Printf("void CXYWnd::PositionView()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::VectorCopyXY(const idVec3 &in, idVec3 &out) {
    Sys_Printf("void CXYWnd::VectorCopyXY(const idVec3 &in, idVec3 &out)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::OnDestroy() {
    Sys_Printf("void CXYWnd::OnDestroy()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::SetViewType(int n) {
    Sys_Printf("void CXYWnd::SetViewType(int n)\r\n");
}
;

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::Redraw(unsigned int nBits) {
    Sys_Printf("void CXYWnd::Redraw(unsigned int nBits)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool CXYWnd::RotateMode() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CXYWnd::RotateMode()\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool CXYWnd::ScaleMode() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CXYWnd::ScaleMode()\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
extern bool Select_OnlyModelsSelected();
bool CXYWnd::SetRotateMode(bool bMode) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CXYWnd::SetRotateMode(bool bMode)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::SetScaleMode(bool bMode) {
    Sys_Printf("void CXYWnd::SetScaleMode(bool bMode)\r\n");
}


//
// =======================================================================================================================
//    xy - z xz - y yz - x
// =======================================================================================================================
//
void CXYWnd::OnSelectMouserotate() {
    Sys_Printf("void CXYWnd::OnSelectMouserotate()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CleanCopyEntities() {
    Sys_Printf("void CleanCopyEntities()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
entity_t *Entity_CopyClone(entity_t *e) {
    Sys_Printf("entity_t *Entity_CopyClone(entity_t *e)\r\n");
    return NULL;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool OnList(entity_t *pFind, CPtrArray *pList) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool OnList(entity_t *pFind, CPtrArray *pList)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::Copy()
{
    Sys_Printf("void CXYWnd::Copy()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::Undo() {
    Sys_Printf("void CXYWnd::Undo()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::UndoClear() {
    Sys_Printf("void CXYWnd::UndoClear()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::UndoCopy() {
    Sys_Printf("void CXYWnd::UndoCopy()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool CXYWnd::UndoAvailable() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CXYWnd::UndoAvailable()\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::Paste()
{
    Sys_Printf("void CXYWnd::Paste()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
idVec3 &CXYWnd::Rotation() {
	return g_vRotation;
}

/*
 =======================================================================================================================
 =======================================================================================================================
 */
idVec3 &CXYWnd::RotateOrigin() {
	return g_vRotateOrigin;
}

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::OnTimer(UINT nIDEvent) {
    Sys_Printf("void CXYWnd::OnTimer(UINT nIDEvent)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::OnKeyUp(UINT nChar, UINT nRepCnt, UINT nFlags) {
    Sys_Printf("void CXYWnd::OnKeyUp(UINT nChar, UINT nRepCnt, UINT nFlags)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::OnNcCalcSize(BOOL bCalcValidRects, NCCALCSIZE_PARAMS FAR *lpncsp) {
    Sys_Printf("void CXYWnd::OnNcCalcSize(BOOL bCalcValidRects, NCCALCSIZE_PARAMS FAR *lpncsp)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::OnKillFocus(CWnd *pNewWnd) {
    Sys_Printf("void CXYWnd::OnKillFocus(CWnd *pNewWnd)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::OnSetFocus(CWnd *pOldWnd) {
    Sys_Printf("void CXYWnd::OnSetFocus(CWnd *pOldWnd)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CXYWnd::OnClose() {
    Sys_Printf("void CXYWnd::OnClose()\r\n");
}


//
// =======================================================================================================================
//    should be static as should be the rotate scale stuff
// =======================================================================================================================
//
bool CXYWnd::AreaSelectOK() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CXYWnd::AreaSelectOK()\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
BOOL CXYWnd::OnEraseBkgnd(CDC *pDC) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CXYWnd::OnEraseBkgnd(CDC *pDC)\r\n");
    return retVal;
}


extern void AssignModel();
void CXYWnd::OnDropNewmodel() 
{
    Sys_Printf("void CXYWnd::OnDropNewmodel()\r\n");
}


BOOL CXYWnd::OnMouseWheel(UINT nFlags, short zDelta, CPoint pt) 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CXYWnd::OnMouseWheel(UINT nFlags, short zDelta, CPoint pt)\r\n");
    return retVal;
}





 //---------------------------------------------------------------------------
 // CyclePrecisionCrosshairMode
 // 
 // Called when the user presses the "cycle precision cursor mode" key.
 // Cycles the precision cursor among the following three modes:
 //		PRECISION_CURSOR_NONE
 //		PRECISION_CURSOR_SNAP
 //		PRECISION_CURSOR_FREE
 //---------------------------------------------------------------------------
 void CXYWnd::CyclePrecisionCrosshairMode( void )
 {
    Sys_Printf("void CXYWnd::CyclePrecisionCrosshairMode( void )\r\n");
}


 //---------------------------------------------------------------------------
// DrawPrecisionCrosshair 
// 
// Draws a precision crosshair beneath the cursor in the 2d (XY) view,
//  depending on one of the following values for m_precisionCrosshairMode:
// 
// PRECISION_CROSSHAIR_NONE		No crosshair is drawn.  Do not force refresh of XY view.
// PRECISION_CROSSHAIR_SNAP		Crosshair snaps to grid size.  Force refresh of XY view.
// PRECISION_CROSSHAIR_FREE		Crosshair does not snap to grid.  Force refresh of XY view.
//---------------------------------------------------------------------------
void CXYWnd::DrawPrecisionCrosshair( void )
{
    Sys_Printf("void CXYWnd::DrawPrecisionCrosshair( void )\r\n");
}

