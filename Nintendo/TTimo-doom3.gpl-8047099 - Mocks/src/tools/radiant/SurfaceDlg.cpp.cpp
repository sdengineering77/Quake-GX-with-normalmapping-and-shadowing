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
#include "SurfaceDlg.h"
#include "mainfrm.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CSurfaceDlg dialog

CSurfaceDlg g_dlgSurface;


CSurfaceDlg::CSurfaceDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CSurfaceDlg::IDD, pParent) {
	//{{AFX_DATA_INIT(CSurfaceDlg)
	m_nHorz = 3;
	m_nVert = 3;
	m_horzScale = 1.0f;
	m_horzShift = 0.5f;
	m_rotate = 15.0f;
	m_vertScale = 1.0f;
	m_vertShift = 0.5f;
	m_strMaterial = _T("");
	m_subdivide = FALSE;
	m_fHeight = 1.0f;
	m_fWidth = 1.0f;
	m_absolute = FALSE;
	//}}AFX_DATA_INIT
}


void CSurfaceDlg::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void CSurfaceDlg::DoDataExchange(CDataExchange* pDX)\r\n");
}



BEGIN_MESSAGE_MAP(CSurfaceDlg, CDialog)
	//{{AFX_MSG_MAP(CSurfaceDlg)
	ON_WM_HSCROLL()
	ON_WM_KEYDOWN()
	ON_WM_VSCROLL()
	ON_WM_CLOSE()
	ON_WM_DESTROY()
	ON_BN_CLICKED(IDCANCEL, OnBtnCancel)
	ON_BN_CLICKED(IDC_BTN_COLOR, OnBtnColor)
	ON_WM_CTLCOLOR()
	ON_WM_CREATE()
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_HSHIFT, OnDeltaPosSpin)
	ON_BN_CLICKED(IDC_BTN_PATCHDETAILS, OnBtnPatchdetails)
	ON_BN_CLICKED(IDC_BTN_PATCHNATURAL, OnBtnPatchnatural)
	ON_BN_CLICKED(IDC_BTN_PATCHRESET, OnBtnPatchreset)
	ON_BN_CLICKED(IDC_BTN_AXIAL, OnBtnAxial)
	ON_BN_CLICKED(IDC_BTN_BRUSHFIT, OnBtnBrushfit)
	ON_BN_CLICKED(IDC_BTN_FACEFIT, OnBtnFacefit)
	ON_BN_CLICKED(IDC_CHECK_SUBDIVIDE, OnCheckSubdivide)
	ON_EN_CHANGE(IDC_EDIT_HORZ, OnChangeEditHorz)
	ON_EN_CHANGE(IDC_EDIT_VERT, OnChangeEditVert)
	ON_EN_SETFOCUS(IDC_HSCALE, OnSetfocusHscale)
	ON_EN_KILLFOCUS(IDC_HSCALE, OnKillfocusHscale)
	ON_EN_KILLFOCUS(IDC_VSCALE, OnKillfocusVscale)
	ON_EN_SETFOCUS(IDC_VSCALE, OnSetfocusVscale)
	ON_EN_KILLFOCUS(IDC_EDIT_WIDTH, OnKillfocusEditWidth)
	ON_EN_SETFOCUS(IDC_EDIT_WIDTH, OnSetfocusEditWidth)
	ON_EN_KILLFOCUS(IDC_EDIT_HEIGHT, OnKillfocusEditHeight)
	ON_EN_SETFOCUS(IDC_EDIT_HEIGHT, OnSetfocusEditHeight)
	ON_BN_CLICKED(IDC_BTN_FLIPX, OnBtnFlipx)
	ON_BN_CLICKED(IDC_BTN_FLIPY, OnBtnFlipy)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_ROTATE, OnDeltaPosSpin)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_VSHIFT, OnDeltaPosSpin)
	ON_EN_KILLFOCUS(IDC_ROTATE, OnKillfocusRotate)
	ON_EN_SETFOCUS(IDC_ROTATE, OnSetfocusRotate)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CSurfaceDlg message handlers


/*
===================================================

  SURFACE INSPECTOR

===================================================
*/

texdef_t	g_old_texdef;
texdef_t	g_patch_texdef;
HWND		g_surfwin = NULL;
bool	g_changed_surface;

/*
==============
SetTexMods

Set the fields to the current texdef
if one face selected -> will read this face texdef, else current texdef
if only patches selected, will read the patch texdef
===============
*/
extern void Face_GetScale_BrushPrimit(face_t *face, float *s, float *t, float *rot);
void CSurfaceDlg::SetTexMods() {
    Sys_Printf("void CSurfaceDlg::SetTexMods()\r\n");
}



bool g_bNewFace = false;
bool g_bNewApplyHandling = false;
bool g_bGatewayhack = false;


/*
=================
UpdateSpinners
=================
*/

void CSurfaceDlg::UpdateSpinners(bool up, int nID) {
    Sys_Printf("void CSurfaceDlg::UpdateSpinners(bool up, int nID)\r\n");
}


void CSurfaceDlg::UpdateSpinners(int nScrollCode, int nPos, CScrollBar* pBar) {
    Sys_Printf("void CSurfaceDlg::UpdateSpinners(int nScrollCode, int nPos, CScrollBar* pBar)\r\n");
}


void UpdateSurfaceDialog() {
    Sys_Printf("void UpdateSurfaceDialog()\r\n");
}


bool ByeByeSurfaceDialog();

void DoSurface (void) {
    Sys_Printf("void DoSurface (void)\r\n");
}
		

bool ByeByeSurfaceDialog() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool ByeByeSurfaceDialog()\r\n");
    return retVal;
}


BOOL CSurfaceDlg::OnInitDialog() {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CSurfaceDlg::OnInitDialog()\r\n");
    return retVal;
}


void CSurfaceDlg::OnHScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar) {
    Sys_Printf("void CSurfaceDlg::OnHScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar)\r\n");
}


void CSurfaceDlg::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) {
    Sys_Printf("void CSurfaceDlg::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags)\r\n");
}


void CSurfaceDlg::OnVScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar) {
    Sys_Printf("void CSurfaceDlg::OnVScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar)\r\n");
}



void CSurfaceDlg::OnOK() {
    Sys_Printf("void CSurfaceDlg::OnOK()\r\n");
}


void CSurfaceDlg::OnClose() {
    Sys_Printf("void CSurfaceDlg::OnClose()\r\n");
}


void CSurfaceDlg::OnCancel() {
    Sys_Printf("void CSurfaceDlg::OnCancel()\r\n");
}


void CSurfaceDlg::OnDestroy() {
    Sys_Printf("void CSurfaceDlg::OnDestroy()\r\n");
}


void CSurfaceDlg::OnBtnCancel() {
    Sys_Printf("void CSurfaceDlg::OnBtnCancel()\r\n");
}


void CSurfaceDlg::OnBtnColor() {
    Sys_Printf("void CSurfaceDlg::OnBtnColor()\r\n");
}


HBRUSH CSurfaceDlg::OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor) {
    HBRUSH retVal;
    memset(&retVal, 0, sizeof(HBRUSH));
    Sys_Printf("HBRUSH CSurfaceDlg::OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor)\r\n");
    return retVal;
}


int CSurfaceDlg::OnCreate(LPCREATESTRUCT lpCreateStruct) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CSurfaceDlg::OnCreate(LPCREATESTRUCT lpCreateStruct)\r\n");
    return retVal;
}


BOOL CSurfaceDlg::PreCreateWindow(CREATESTRUCT& cs) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CSurfaceDlg::PreCreateWindow(CREATESTRUCT& cs)\r\n");
    return retVal;
}



void CSurfaceDlg::OnDeltaPosSpin(NMHDR* pNMHDR, LRESULT* pResult) {
    Sys_Printf("void CSurfaceDlg::OnDeltaPosSpin(NMHDR* pNMHDR, LRESULT* pResult)\r\n");
}


void CSurfaceDlg::OnBtnPatchdetails() {
    Sys_Printf("void CSurfaceDlg::OnBtnPatchdetails()\r\n");
}


void CSurfaceDlg::OnBtnPatchnatural() {
    Sys_Printf("void CSurfaceDlg::OnBtnPatchnatural()\r\n");
}


void CSurfaceDlg::OnBtnPatchreset() {
    Sys_Printf("void CSurfaceDlg::OnBtnPatchreset()\r\n");
}


void CSurfaceDlg::OnBtnAxial() {
    Sys_Printf("void CSurfaceDlg::OnBtnAxial()\r\n");
}


void CSurfaceDlg::OnBtnBrushfit() {
    Sys_Printf("void CSurfaceDlg::OnBtnBrushfit()\r\n");
}


void CSurfaceDlg::OnBtnFacefit() {
    Sys_Printf("void CSurfaceDlg::OnBtnFacefit()\r\n");
}



void CSurfaceDlg::OnCheckSubdivide() {
    Sys_Printf("void CSurfaceDlg::OnCheckSubdivide()\r\n");
}


void CSurfaceDlg::OnChangeEditHorz() 
{
    Sys_Printf("void CSurfaceDlg::OnChangeEditHorz()\r\n");
}


void CSurfaceDlg::OnChangeEditVert() 
{
    Sys_Printf("void CSurfaceDlg::OnChangeEditVert()\r\n");
}


BOOL CSurfaceDlg::PreTranslateMessage(MSG* pMsg) 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CSurfaceDlg::PreTranslateMessage(MSG* pMsg)\r\n");
    return retVal;
}


void CSurfaceDlg::OnSetfocusHscale() 
{
    Sys_Printf("void CSurfaceDlg::OnSetfocusHscale()\r\n");
}


void CSurfaceDlg::OnKillfocusHscale() 
{
    Sys_Printf("void CSurfaceDlg::OnKillfocusHscale()\r\n");
}


void CSurfaceDlg::OnKillfocusVscale() 
{
    Sys_Printf("void CSurfaceDlg::OnKillfocusVscale()\r\n");
}


void CSurfaceDlg::OnSetfocusVscale() 
{
    Sys_Printf("void CSurfaceDlg::OnSetfocusVscale()\r\n");
}


void CSurfaceDlg::OnKillfocusEditWidth() 
{
    Sys_Printf("void CSurfaceDlg::OnKillfocusEditWidth()\r\n");
}


void CSurfaceDlg::OnSetfocusEditWidth() 
{
    Sys_Printf("void CSurfaceDlg::OnSetfocusEditWidth()\r\n");
}


void CSurfaceDlg::OnKillfocusEditHeight() 
{
    Sys_Printf("void CSurfaceDlg::OnKillfocusEditHeight()\r\n");
}


void CSurfaceDlg::OnSetfocusEditHeight() 
{
    Sys_Printf("void CSurfaceDlg::OnSetfocusEditHeight()\r\n");
}


void CSurfaceDlg::OnBtnFlipx() 
{
    Sys_Printf("void CSurfaceDlg::OnBtnFlipx()\r\n");
}


void CSurfaceDlg::OnBtnFlipy() 
{
    Sys_Printf("void CSurfaceDlg::OnBtnFlipy()\r\n");
}


void CSurfaceDlg::OnKillfocusRotate() 
{
    Sys_Printf("void CSurfaceDlg::OnKillfocusRotate()\r\n");
}


void CSurfaceDlg::OnSetfocusRotate() 
{
    Sys_Printf("void CSurfaceDlg::OnSetfocusRotate()\r\n");
}

