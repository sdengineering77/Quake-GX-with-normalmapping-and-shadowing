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
#include "PropertyList.h"
#include "entitydlg.h"
#include "PreviewDlg.h"
#include "CurveDlg.h"

#include "../../renderer/model_local.h"		// for idRenderModelPrt

void	Select_Ungroup();

// CEntityDlg dialog

IMPLEMENT_DYNAMIC(CEntityDlg, CDialog)
CEntityDlg::CEntityDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CEntityDlg::IDD, pParent)
{
	editEntity = NULL;
	multipleEntities = false;
	currentAnimation = NULL;
}

CEntityDlg::~CEntityDlg()
{
}

void CEntityDlg::DoDataExchange(CDataExchange* pDX)
{
    Sys_Printf("void CEntityDlg::DoDataExchange(CDataExchange* pDX)\r\n");
}




BOOL CEntityDlg::OnInitDialog()
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CEntityDlg::OnInitDialog()\r\n");
    return retVal;
}


int CEntityDlg::OnToolHitTest(CPoint point, TOOLINFO* pTI) const
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CEntityDlg::OnToolHitTest(CPoint point, TOOLINFO* pTI)\r\n");
    return retVal;
}



void CEntityDlg::AddClassNames() {
    Sys_Printf("void CEntityDlg::AddClassNames()\r\n");
}


BEGIN_MESSAGE_MAP(CEntityDlg, CDialog)
	ON_WM_SIZE()
	ON_CBN_SELCHANGE(IDC_COMBO_CLASS, OnCbnSelchangeComboClass)
	ON_LBN_SELCHANGE(IDC_LIST_KEYVAL, OnLbnSelchangeListkeyval)
	ON_BN_CLICKED(IDC_E_135, OnBnClickedE135)
	ON_BN_CLICKED(IDC_E_90, OnBnClickedE90)
	ON_BN_CLICKED(IDC_E_45, OnBnClickedE45)
	ON_BN_CLICKED(IDC_E_180, OnBnClickedE180)
	ON_BN_CLICKED(IDC_E_0, OnBnClickedE0)
	ON_BN_CLICKED(IDC_E_225, OnBnClickedE225)
	ON_BN_CLICKED(IDC_E_270, OnBnClickedE270)
	ON_BN_CLICKED(IDC_E_315, OnBnClickedE315)
	ON_BN_CLICKED(IDC_E_UP, OnBnClickedEUp)
	ON_BN_CLICKED(IDC_E_DOWN, OnBnClickedEDown)
	ON_BN_CLICKED(IDC_BUTTON_MODEL, OnBnClickedButtonModel)
	ON_BN_CLICKED(IDC_BUTTON_SOUND, OnBnClickedButtonSound)
	ON_BN_CLICKED(IDC_BUTTON_GUI, OnBnClickedButtonGui)
	ON_BN_CLICKED(IDC_BUTTON_BROWSE, OnBnClickedButtonBrowse)
	ON_CBN_DBLCLK(IDC_COMBO_CLASS, OnCbnDblclkComboClass)
	ON_BN_CLICKED(IDC_BUTTON_CREATE, OnBnClickedButtonCreate)
	ON_LBN_DBLCLK(IDC_LIST_KEYVAL, OnLbnDblclkListkeyval)
	ON_LBN_SELCHANGE(IDC_LIST_VARS, OnLbnSelchangeListVars)
	ON_LBN_DBLCLK(IDC_LIST_VARS, OnLbnDblclkListVars)
	ON_NOTIFY(NM_RELEASEDCAPTURE, IDC_ANIMATION_SLIDER, OnNMReleasedcaptureSlider1)
	ON_BN_CLICKED(IDC_BUTTON_PARTICLE, OnBnClickedButtonParticle)
	ON_BN_CLICKED(IDC_BUTTON_SKIN, OnBnClickedButtonSkin)
	ON_BN_CLICKED(IDC_BUTTON_CURVE, OnBnClickedButtonCurve)
	ON_CBN_SELCHANGE(IDC_ENTITY_ANIMATIONS, OnCbnAnimationChange)
	ON_BN_CLICKED(IDC_ENTITY_PLAY_ANIM , OnBnClickedStartAnimation)
	ON_BN_CLICKED(IDC_ENTITY_STOP_ANIM , OnBnClickedStopAnimation)
	ON_WM_TIMER()
	ON_BN_CLICKED(IDOK, OnOK)
END_MESSAGE_MAP()

void CEntityDlg::OnSize(UINT nType, int cx, int cy)
{
    Sys_Printf("void CEntityDlg::OnSize(UINT nType, int cx, int cy)\r\n");
}


void CEntityDlg::OnCbnSelchangeComboClass()
{
    Sys_Printf("void CEntityDlg::OnCbnSelchangeComboClass()\r\n");
}


const char *CEntityDlg::TranslateString(const char *buf) {
    Sys_Printf("char *CEntityDlg::TranslateString(const char *buf)\r\n");
    return NULL;
}


void CEntityDlg::UpdateFromListBox() {
    Sys_Printf("void CEntityDlg::UpdateFromListBox()\r\n");
}


void CEntityDlg::SetKeyValPairs( bool updateAnims ) {
    Sys_Printf("void CEntityDlg::SetKeyValPairs( bool updateAnims )\r\n");
}


void CEntityDlg::UpdateEntitySel(eclass_t *ent) {
    Sys_Printf("void CEntityDlg::UpdateEntitySel(eclass_t *ent)\r\n");
}


void CEntityDlg::OnLbnSelchangeListkeyval()
{
    Sys_Printf("void CEntityDlg::OnLbnSelchangeListkeyval()\r\n");
}


static int TabOrder[] = {
	IDC_COMBO_CLASS,
	IDC_BUTTON_CREATE,
	//IDC_EDIT_INFO,
	IDC_LIST_KEYVAL,
	IDC_EDIT_KEY,
	IDC_EDIT_VAL,
	IDC_BUTTON_BROWSE,
	IDC_E_135,
	IDC_E_90,
	IDC_E_45,
	IDC_E_180,
	IDC_E_0,
	IDC_E_225,
	IDC_E_270,
	IDC_E_315,
	IDC_E_UP,
	IDC_E_DOWN,
	IDC_BUTTON_MODEL,
	IDC_BUTTON_SOUND,
	IDC_BUTTON_GUI,
	IDC_ENTITY_ANIMATIONS
};

int TabCount = sizeof(TabOrder) / sizeof(int);

void CEntityDlg::DelProp() {
    Sys_Printf("void CEntityDlg::DelProp()\r\n");
}



BOOL CEntityDlg::PreTranslateMessage(MSG* pMsg)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CEntityDlg::PreTranslateMessage(MSG* pMsg)\r\n");
    return retVal;
}



/*
 =======================================================================================================================
    AddProp
 =======================================================================================================================
 */
void CEntityDlg::AddProp() {
    Sys_Printf("void CEntityDlg::AddProp()\r\n");
}


const char *CEntityDlg::AngleKey() {
    Sys_Printf("char *CEntityDlg::AngleKey()\r\n");
    return NULL;
}



void CEntityDlg::OnBnClickedE135()
{
    Sys_Printf("void CEntityDlg::OnBnClickedE135()\r\n");
}


void CEntityDlg::OnBnClickedE90()
{
    Sys_Printf("void CEntityDlg::OnBnClickedE90()\r\n");
}


void CEntityDlg::OnBnClickedE45()
{
    Sys_Printf("void CEntityDlg::OnBnClickedE45()\r\n");
}


void CEntityDlg::OnBnClickedE180()
{
    Sys_Printf("void CEntityDlg::OnBnClickedE180()\r\n");
}


void CEntityDlg::OnBnClickedE0()
{
    Sys_Printf("void CEntityDlg::OnBnClickedE0()\r\n");
}


void CEntityDlg::OnBnClickedE225()
{
    Sys_Printf("void CEntityDlg::OnBnClickedE225()\r\n");
}


void CEntityDlg::OnBnClickedE270()
{
    Sys_Printf("void CEntityDlg::OnBnClickedE270()\r\n");
}


void CEntityDlg::OnBnClickedE315()
{
    Sys_Printf("void CEntityDlg::OnBnClickedE315()\r\n");
}


void CEntityDlg::OnBnClickedEUp()
{
    Sys_Printf("void CEntityDlg::OnBnClickedEUp()\r\n");
}


void CEntityDlg::OnBnClickedEDown()
{
    Sys_Printf("void CEntityDlg::OnBnClickedEDown()\r\n");
}


CPreviewDlg *CEntityDlg::ShowModelChooser() {
    Sys_Printf("CPreviewDlg *CEntityDlg::ShowModelChooser()\r\n");
    return NULL;
}


CPreviewDlg *CEntityDlg::ShowParticleChooser() {
    Sys_Printf("CPreviewDlg *CEntityDlg::ShowParticleChooser()\r\n");
    return NULL;
}


CPreviewDlg *CEntityDlg::ShowSkinChooser(entity_t *ent) {
    Sys_Printf("CPreviewDlg *CEntityDlg::ShowSkinChooser(entity_t *ent)\r\n");
    return NULL;
}


CPreviewDlg *CEntityDlg::ShowGuiChooser() {
    Sys_Printf("CPreviewDlg *CEntityDlg::ShowGuiChooser()\r\n");
    return NULL;
}


CPreviewDlg *CEntityDlg::ShowSoundChooser() {
    Sys_Printf("CPreviewDlg *CEntityDlg::ShowSoundChooser()\r\n");
    return NULL;
}


CPreviewDlg *CEntityDlg::ShowMaterialChooser() {
    Sys_Printf("CPreviewDlg *CEntityDlg::ShowMaterialChooser()\r\n");
    return NULL;
}


void CEntityDlg::AssignModel ()
{
    Sys_Printf("void CEntityDlg::AssignModel ()\r\n");
}

void CEntityDlg::OnBnClickedButtonModel() {
    Sys_Printf("void CEntityDlg::OnBnClickedButtonModel()\r\n");
}


void CEntityDlg::OnBnClickedButtonSound() {
    Sys_Printf("void CEntityDlg::OnBnClickedButtonSound()\r\n");
}


void CEntityDlg::OnBnClickedButtonGui() {
    Sys_Printf("void CEntityDlg::OnBnClickedButtonGui()\r\n");
}


void CEntityDlg::OnBnClickedButtonParticle() {
    Sys_Printf("void CEntityDlg::OnBnClickedButtonParticle()\r\n");
}


void CEntityDlg::OnBnClickedButtonSkin() {
    Sys_Printf("void CEntityDlg::OnBnClickedButtonSkin()\r\n");
}


void CEntityDlg::OnBnClickedButtonCurve() {
    Sys_Printf("void CEntityDlg::OnBnClickedButtonCurve()\r\n");
}


void CEntityDlg::OnBnClickedButtonBrowse() {
    Sys_Printf("void CEntityDlg::OnBnClickedButtonBrowse()\r\n");
}


void CEntityDlg::OnCbnDblclkComboClass()
{
    Sys_Printf("void CEntityDlg::OnCbnDblclkComboClass()\r\n");
}


//
// =======================================================================================================================
//    CreateEntity Creates a new entity based on the currently selected brush and entity type.
// =======================================================================================================================
//
void CEntityDlg::CreateEntity() {
    Sys_Printf("void CEntityDlg::CreateEntity()\r\n");
}


void CEntityDlg::OnBnClickedButtonCreate()
{
    Sys_Printf("void CEntityDlg::OnBnClickedButtonCreate()\r\n");
}


void CEntityDlg::OnLbnDblclkListkeyval()
{
    Sys_Printf("void CEntityDlg::OnLbnDblclkListkeyval()\r\n");
}


void CEntityDlg::OnLbnSelchangeListVars() {
    Sys_Printf("void CEntityDlg::OnLbnSelchangeListVars()\r\n");
}


void CEntityDlg::OnLbnDblclkListVars() {
    Sys_Printf("void CEntityDlg::OnLbnDblclkListVars()\r\n");
}



void CEntityDlg::UpdateKeyVal(const char *key, const char *val) {
    Sys_Printf("void CEntityDlg::UpdateKeyVal(const char *key, const char *val)\r\n");
}



void CEntityDlg::OnNMReleasedcaptureSlider1(NMHDR *pNMHDR, LRESULT *pResult)
{
    Sys_Printf("void CEntityDlg::OnNMReleasedcaptureSlider1(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void CEntityDlg::UpdateFromAnimationFrame ( bool updateKeyValueDisplay )
{
    Sys_Printf("void CEntityDlg::UpdateFromAnimationFrame ( bool updateKeyValueDisplay )\r\n");
}


void CEntityDlg::OnCbnAnimationChange ()
{
    Sys_Printf("void CEntityDlg::OnCbnAnimationChange ()\r\n");
}


void CEntityDlg::OnBnClickedStartAnimation()
{
    Sys_Printf("void CEntityDlg::OnBnClickedStartAnimation()\r\n");
}


void CEntityDlg::OnBnClickedStopAnimation()
{
    Sys_Printf("void CEntityDlg::OnBnClickedStopAnimation()\r\n");
}


void CEntityDlg::OnTimer(UINT nIDEvent)
{
    Sys_Printf("void CEntityDlg::OnTimer(UINT nIDEvent)\r\n");
}


void CEntityDlg::AddCurvePoints() {
    Sys_Printf("void CEntityDlg::AddCurvePoints()\r\n");
}


void CEntityDlg::EditCurvePoints() {
    Sys_Printf("void CEntityDlg::EditCurvePoints()\r\n");
}


void CEntityDlg::InsertCurvePoint() {
    Sys_Printf("void CEntityDlg::InsertCurvePoint()\r\n");
}


void CEntityDlg::DeleteCurvePoint() {
    Sys_Printf("void CEntityDlg::DeleteCurvePoint()\r\n");
}



void CEntityDlg::UpdateEntityCurve() {
    Sys_Printf("void CEntityDlg::UpdateEntityCurve()\r\n");
}



void CEntityDlg::SelectCurvePointByRay(const idVec3 &org, const idVec3 &dir, int buttons) {
    Sys_Printf("void CEntityDlg::SelectCurvePointByRay(const idVec3 &org, const idVec3 &dir, int buttons)\r\n");
}


