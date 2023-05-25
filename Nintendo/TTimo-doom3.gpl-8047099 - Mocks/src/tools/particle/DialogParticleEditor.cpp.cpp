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

#include "../../game/game.h"
#include "../../sys/win32/win_local.h"
#include "../../sys/win32/rc/common_resource.h"
#include "../../sys/win32/rc/Radiant_resource.h"
#include "../../sys/win32/rc/ParticleEditor_resource.h"
#include "../comafx/DialogName.h"
#include "../comafx/VectorCtl.h"
#include "../comafx/DialogColorPicker.h"
#include "../radiant/GLWidget.h"
#include "../radiant/PreviewDlg.h"

#include "DialogParticleEditor.h"

#ifdef ID_DEBUG_MEMORY
#undef new
#undef DEBUG_NEW
#define DEBUG_NEW new
#endif

const int StageEnableID[] = {
	IDC_EDIT_MATERIAL,
	IDC_BUTTON_BROWSEMATERIAL,
	IDC_EDIT_ANIMFRAMES,
	IDC_EDIT_ANIMRATE,
	IDC_EDIT_COLOR,
	IDC_BUTTON_BROWSECOLOR,
	IDC_EDIT_FADECOLOR,
	IDC_BUTTON_BROWSEFADECOLOR,
	IDC_EDIT_FADEIN,
	IDC_SLIDER_FADEIN,
	IDC_EDIT_FADEOUT,
	IDC_EDIT_FADEFRACTION,
	IDC_SLIDER_FADEOUT,
	IDC_SLIDER_FADEFRACTION,
	IDC_EDIT_BUNCHING,
	IDC_SLIDER_BUNCHING,
	IDC_EDIT_COUNT,
	IDC_SLIDER_COUNT,
	IDC_EDIT_TIME,
	IDC_SLIDER_TIME,
	IDC_EDIT_CYCLES,
	IDC_EDIT_TIMEOFFSET,
	IDC_EDIT_DEADTIME,
	IDC_CHECK_WORLDGRAVITY,
	IDC_EDIT_GRAVITY,
	IDC_SLIDER_GRAVITY,
	IDC_RADIO_RECT,
	IDC_RADIO_CYLINDER,
	IDC_RADIO_SPHERE,
	IDC_EDIT_OFFSET,
	IDC_EDIT_XSIZE,
	IDC_EDIT_YSIZE,
	IDC_EDIT_ZSIZE,
	IDC_EDIT_RINGOFFSET,
	IDC_RADIO_CONE,
	IDC_RADIO_OUTWARD,
	IDC_EDIT_DIRECTIONPARM,
	IDC_RADIO_AIMED,
	IDC_RADIO_VIEW,
	IDC_RADIO_X,
	IDC_RADIO_Y,
	IDC_RADIO_Z,
	IDC_EDIT_ORIENTATIONPARM1,
	IDC_EDIT_ORIENTATIONPARM2,
	IDC_SLIDER_SPEEDFROM,
	IDC_EDIT_SPEEDFROM,
	IDC_EDIT_SPEEDTO,
	IDC_SLIDER_SPEEDTO,
	IDC_SLIDER_ROTATIONFROM,
	IDC_EDIT_ROTATIONFROM,
	IDC_EDIT_ROTATIONTO,
	IDC_SLIDER_ROTATIONTO,
	IDC_SLIDER_SIZEFROM,
	IDC_EDIT_SIZEFROM,
	IDC_EDIT_SIZETO,
	IDC_SLIDER_SIZETO,
	IDC_SLIDER_ASPECTFROM,
	IDC_EDIT_ASPECTFROM,
	IDC_EDIT_ASPECTTO,
	IDC_SLIDER_ASPECTTO,
	IDC_COMBO_CUSTOMPATH,
	IDC_CHECK_ENTITYCOLOR,
};

const int StageIDCount = sizeof( StageEnableID ) / sizeof ( const int );

const int EditEnableID[] = {
	IDC_BUTTON_XDN,
	IDC_BUTTON_XUP,
	IDC_BUTTON_YUP,
	IDC_BUTTON_YDN,
	IDC_BUTTON_ZUP,
	IDC_BUTTON_ZDN,
	IDC_BUTTON_DROPEMITTER,
	IDC_BUTTON_VECTOR,
	IDC_BUTTON_BROWSECOLOR_ENTITY
};

const int EditIDCount = sizeof ( EditEnableID ) / sizeof ( const int );


CDialogParticleEditor *g_ParticleDialog = NULL;


/*
================
ParticleEditorInit
================
*/
void ParticleEditorInit( const idDict *spawnArgs ) {
    Sys_Printf("void ParticleEditorInit( const idDict *spawnArgs )\r\n");
}



/*
================
ParticleEditorRun
================
*/
void ParticleEditorRun( void ) {
    Sys_Printf("void ParticleEditorRun( void )\r\n");
}


/*
================
ParticleEditorShutdown
================
*/
void ParticleEditorShutdown( void ) {
    Sys_Printf("void ParticleEditorShutdown( void )\r\n");
}



// CDialogParticleEditor dialog

IMPLEMENT_DYNAMIC(CDialogParticleEditor, CDialog)
CDialogParticleEditor::CDialogParticleEditor(CWnd* pParent /*=NULL*/)
	: CDialog(CDialogParticleEditor::IDD, pParent)
	, matName(_T(""))
	, animFrames(_T(""))
	, animRate(_T(""))
	, color(_T(""))
	, fadeColor(_T(""))
	, fadeIn(_T(""))
	, fadeOut(_T(""))
	, fadeFraction(_T(""))
	, count(_T(""))
	, time(_T(""))
	, timeOffset(_T(""))
	, deadTime(_T(""))
	, gravity(_T(""))
	, bunching(_T(""))
	, offset(_T(""))
	, xSize(_T(""))
	, ySize(_T(""))
	, zSize(_T(""))
	, ringOffset(_T(""))
	, directionParm(_T(""))
	, direction(0)
	, orientation(0)
	, distribution(0)
	, viewOrigin(_T(""))
	, speedFrom(_T(""))
	, speedTo(_T(""))
	, rotationFrom(_T(""))
	, rotationTo(_T(""))
	, sizeFrom(_T(""))
	, sizeTo(_T(""))
	, aspectFrom(_T(""))
	, aspectTo(_T(""))
	, customPath(_T(""))
	, customParms(_T(""))
	, trails(_T(""))
	, trailTime(_T(""))
	, worldGravity(TRUE)
	, entityColor(TRUE)
	, randomDistribution(TRUE)
	, initialAngle(_T(""))
	, boundsExpansion(_T(""))
	, customDesc(_T(""))
	, particleMode(FALSE)
{
	visualization = TESTMODEL;
	mapModified = false;
}

CDialogParticleEditor::~CDialogParticleEditor() {
}

void CDialogParticleEditor::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void CDialogParticleEditor::DoDataExchange(CDataExchange* pDX)\r\n");
}



BEGIN_MESSAGE_MAP(CDialogParticleEditor, CDialog)
	ON_BN_CLICKED(IDC_BUTTON_ADDSTAGE, OnBnClickedButtonAddstage)
	ON_BN_CLICKED(IDC_BUTTON_REMOVESTAGE, OnBnClickedButtonRemovestage)
	ON_BN_CLICKED(IDC_BUTTON_BROWSEMATERIAL, OnBnClickedButtonBrowsematerial)
	ON_BN_CLICKED(IDC_BUTTON_BROWSECOLOR, OnBnClickedButtonBrowsecolor)
	ON_BN_CLICKED(IDC_BUTTON_BROWSEFADECOLOR, OnBnClickedButtonBrowsefadecolor)
	ON_BN_CLICKED(IDC_BUTTON_BROWSECOLOR_ENTITY, OnBnClickedButtonBrowseEntitycolor)
	ON_BN_CLICKED(IDC_BUTTON_UPDATE, OnBnClickedButtonUpdate)
	ON_CBN_SELCHANGE(IDC_COMBO_PARTICLES, OnCbnSelchangeComboParticles)
	ON_CBN_SELCHANGE(IDC_COMBO_CUSTOMPATH, OnCbnSelchangeComboPath)
	ON_BN_CLICKED(IDC_RADIO_RECT, OnBnClickedRadioRect)
	ON_BN_CLICKED(IDC_RADIO_SPHERE, OnBnClickedRadioSphere)
	ON_BN_CLICKED(IDC_RADIO_CYLINDER, OnBnClickedRadioCylinder)
	ON_BN_CLICKED(IDC_RADIO_CONE, OnBnClickedRadioCone)
	ON_BN_CLICKED(IDC_RADIO_OUTWARD, OnBnClickedRadioOutward)
	ON_BN_CLICKED(IDC_RADIO_VIEW, OnBnClickedRadioView)
	ON_BN_CLICKED(IDC_RADIO_AIMED, OnBnClickedRadioAimed)
	ON_BN_CLICKED(IDC_RADIO_X, OnBnClickedRadioX)
	ON_BN_CLICKED(IDC_RADIO_Y, OnBnClickedRadioY)
	ON_BN_CLICKED(IDC_RADIO_Z, OnBnClickedRadioZ)
	ON_BN_CLICKED(IDC_BUTTON_HIDESTAGE, OnBnClickedButtonHidestage)
	ON_BN_CLICKED(IDC_BUTTON_SHOWSTAGE, OnBnClickedButtonShowstage)
	ON_BN_CLICKED(IDC_CHECK_WORLDGRAVITY, OnBnClickedWorldGravity)
	ON_BN_CLICKED(IDC_CHECK_ENTITYCOLOR, OnBnClickedEntityColor)
	ON_LBN_SELCHANGE(IDC_LIST_STAGES, OnLbnSelchangeListStages)
	ON_BN_CLICKED(IDC_BUTTON_NEW, OnBnClickedButtonNew)
	ON_BN_CLICKED(IDC_BUTTON_SAVE_PARTICLE, OnBnClickedButtonSave)
	ON_BN_CLICKED(IDC_BUTTON_SAVE_PARTICLE_AS, OnBnClickedButtonSaveAs)
	ON_BN_CLICKED(IDC_BUTTON_SAVE_PARTICLEENTITIES, OnBnClickedButtonSaveParticles)
	ON_BN_CLICKED(IDC_BUTTON_TESTMODEL, OnBnClickedTestModel)
	ON_BN_CLICKED(IDC_BUTTON_IMPACT, OnBnClickedImpact)
	ON_BN_CLICKED(IDC_BUTTON_MUZZLE, OnBnClickedMuzzle)
	ON_BN_CLICKED(IDC_BUTTON_FLIGHT, OnBnClickedFlight)
	ON_BN_CLICKED(IDC_BUTTON_SELECTED, OnBnClickedSelected)
	ON_BN_CLICKED(IDC_BUTTON_DOOM, OnBnClickedDoom)
	ON_BN_CLICKED(IDC_CHECK_EDITPARTICLEMODE, OnBnClickedParticleMode)
	ON_BN_CLICKED(IDC_BUTTON_DROPEMITTER, OnBtnDrop)
	ON_BN_CLICKED(IDC_BUTTON_YUP, OnBtnYup)
	ON_BN_CLICKED(IDC_BUTTON_YDN, OnBtnYdn)
	ON_BN_CLICKED(IDC_BUTTON_XDN, OnBtnXdn)
	ON_BN_CLICKED(IDC_BUTTON_XUP, OnBtnXup)
	ON_BN_CLICKED(IDC_BUTTON_ZUP, OnBtnZup)
	ON_BN_CLICKED(IDC_BUTTON_ZDN, OnBtnZdn)
	ON_WM_HSCROLL()
END_MESSAGE_MAP()


// CDialogParticleEditor message handlers

void CDialogParticleEditor::OnBnClickedParticleMode() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedParticleMode()\r\n");
}



void CDialogParticleEditor::OnBnClickedButtonSaveAs() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedButtonSaveAs()\r\n");
}



void CDialogParticleEditor::OnBnClickedButtonSaveParticles() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedButtonSaveParticles()\r\n");
}


void CDialogParticleEditor::OnBnClickedButtonAddstage() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedButtonAddstage()\r\n");
}


void CDialogParticleEditor::OnBnClickedButtonRemovestage() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedButtonRemovestage()\r\n");
}


void CDialogParticleEditor::OnBnClickedButtonBrowsematerial() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedButtonBrowsematerial()\r\n");
}


void CDialogParticleEditor::OnBnClickedButtonBrowsecolor() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedButtonBrowsecolor()\r\n");
}


void CDialogParticleEditor::OnBnClickedButtonBrowseEntitycolor() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedButtonBrowseEntitycolor()\r\n");
}


void CDialogParticleEditor::OnBnClickedButtonBrowsefadecolor() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedButtonBrowsefadecolor()\r\n");
}


void CDialogParticleEditor::OnBnClickedButtonUpdate() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedButtonUpdate()\r\n");
}


void CDialogParticleEditor::SelectParticle( const char *name ) {
    Sys_Printf("void CDialogParticleEditor::SelectParticle( const char *name )\r\n");
}


idDeclParticle *CDialogParticleEditor::GetCurParticle() {
    Sys_Printf("idDeclParticle *CDialogParticleEditor::GetCurParticle()\r\n");
    return NULL;
}


void CDialogParticleEditor::UpdateParticleData() {
    Sys_Printf("void CDialogParticleEditor::UpdateParticleData()\r\n");
}


void CDialogParticleEditor::OnCbnSelchangeComboParticles() {
    Sys_Printf("void CDialogParticleEditor::OnCbnSelchangeComboParticles()\r\n");
}



void CDialogParticleEditor::OnCbnSelchangeComboPath() {
    Sys_Printf("void CDialogParticleEditor::OnCbnSelchangeComboPath()\r\n");
}


void CDialogParticleEditor::UpdateControlInfo() {
    Sys_Printf("void CDialogParticleEditor::UpdateControlInfo()\r\n");
}


void CDialogParticleEditor::OnBnClickedRadioRect() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedRadioRect()\r\n");
}


void CDialogParticleEditor::OnBnClickedRadioSphere() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedRadioSphere()\r\n");
}


void CDialogParticleEditor::OnBnClickedRadioCylinder() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedRadioCylinder()\r\n");
}


void CDialogParticleEditor::OnBnClickedRadioCone() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedRadioCone()\r\n");
}


void CDialogParticleEditor::OnBnClickedRadioOutward() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedRadioOutward()\r\n");
}


void CDialogParticleEditor::OnBnClickedRadioView() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedRadioView()\r\n");
}


void CDialogParticleEditor::OnBnClickedRadioAimed() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedRadioAimed()\r\n");
}


void CDialogParticleEditor::OnBnClickedRadioX() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedRadioX()\r\n");
}


void CDialogParticleEditor::OnBnClickedRadioY() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedRadioY()\r\n");
}


void CDialogParticleEditor::OnBnClickedRadioZ() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedRadioZ()\r\n");
}


void CDialogParticleEditor::OnBnClickedDoom() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedDoom()\r\n");
}



void CDialogParticleEditor::OnBnClickedTestModel() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedTestModel()\r\n");
}


void CDialogParticleEditor::OnBnClickedImpact() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedImpact()\r\n");
}


void CDialogParticleEditor::OnBnClickedMuzzle(){ 
	visualization = MUZZLE;
	SetParticleView();
}

void CDialogParticleEditor::OnBnClickedFlight() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedFlight()\r\n");
}


void CDialogParticleEditor::OnBnClickedSelected() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedSelected()\r\n");
}


void CDialogParticleEditor::SetParticleVisualization( int i ) {
    Sys_Printf("void CDialogParticleEditor::SetParticleVisualization( int i )\r\n");
}


void CDialogParticleEditor::SetParticleView() {
    Sys_Printf("void CDialogParticleEditor::SetParticleView()\r\n");
}


void CDialogParticleEditor::SetSelectedModel( const char *val ) {
    Sys_Printf("void CDialogParticleEditor::SetSelectedModel( const char *val )\r\n");
}



void CDialogParticleEditor::OnBnClickedButtonHidestage() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedButtonHidestage()\r\n");
}


void CDialogParticleEditor::OnBnClickedButtonShowstage() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedButtonShowstage()\r\n");
}



void CDialogParticleEditor::OnBnClickedWorldGravity() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedWorldGravity()\r\n");
}


void CDialogParticleEditor::OnBnClickedEntityColor() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedEntityColor()\r\n");
}



void CDialogParticleEditor::AddStage() {
    Sys_Printf("void CDialogParticleEditor::AddStage()\r\n");
}


void CDialogParticleEditor::RemoveStage() {
    Sys_Printf("void CDialogParticleEditor::RemoveStage()\r\n");
}


void CDialogParticleEditor::ShowStage() {
    Sys_Printf("void CDialogParticleEditor::ShowStage()\r\n");
}


void CDialogParticleEditor::HideStage() {
    Sys_Printf("void CDialogParticleEditor::HideStage()\r\n");
}


idParticleStage *CDialogParticleEditor::GetCurStage() {
    Sys_Printf("idParticleStage *CDialogParticleEditor::GetCurStage()\r\n");
    return NULL;
}


void CDialogParticleEditor::ClearDlgVars() {
    Sys_Printf("void CDialogParticleEditor::ClearDlgVars()\r\n");
}


void CDialogParticleEditor::CurStageToDlgVars() {
    Sys_Printf("void CDialogParticleEditor::CurStageToDlgVars()\r\n");
}


void CDialogParticleEditor::DlgVarsToCurStage() {
    Sys_Printf("void CDialogParticleEditor::DlgVarsToCurStage()\r\n");
}


void CDialogParticleEditor::ShowCurrentStage() {
    Sys_Printf("void CDialogParticleEditor::ShowCurrentStage()\r\n");
}


void CDialogParticleEditor::OnLbnSelchangeListStages() {
    Sys_Printf("void CDialogParticleEditor::OnLbnSelchangeListStages()\r\n");
}


void CDialogParticleEditor::OnBnClickedButtonNew() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedButtonNew()\r\n");
}


void CDialogParticleEditor::OnBnClickedButtonSave() {
    Sys_Printf("void CDialogParticleEditor::OnBnClickedButtonSave()\r\n");
}


void CDialogParticleEditor::EnumParticles() {
    Sys_Printf("void CDialogParticleEditor::EnumParticles()\r\n");
}


void CDialogParticleEditor::OnDestroy() {
    Sys_Printf("void CDialogParticleEditor::OnDestroy()\r\n");
}


void VectorCallBack( idQuat rotation ) {
    Sys_Printf("void VectorCallBack( idQuat rotation )\r\n");
}


void CDialogParticleEditor::SetVectorControlUpdate( idQuat rotation ) {
    Sys_Printf("void CDialogParticleEditor::SetVectorControlUpdate( idQuat rotation )\r\n");
}


BOOL CDialogParticleEditor::OnInitDialog() {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDialogParticleEditor::OnInitDialog()\r\n");
    return retVal;
}


void CDialogParticleEditor::OnHScroll( UINT nSBCode, UINT nPos, CScrollBar* pScrollBar ) {
    Sys_Printf("void CDialogParticleEditor::OnHScroll( UINT nSBCode, UINT nPos, CScrollBar* pScrollBar )\r\n");
}



BOOL CDialogParticleEditor::PreTranslateMessage(MSG *pMsg) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDialogParticleEditor::PreTranslateMessage(MSG *pMsg)\r\n");
    return retVal;
}


void CDialogParticleEditor::EnableStageControls() {
    Sys_Printf("void CDialogParticleEditor::EnableStageControls()\r\n");
}


void CDialogParticleEditor::EnableEditControls() {
    Sys_Printf("void CDialogParticleEditor::EnableEditControls()\r\n");
}


void CDialogParticleEditor::UpdateSelectedOrigin( float x, float y, float z ) {
    Sys_Printf("void CDialogParticleEditor::UpdateSelectedOrigin( float x, float y, float z )\r\n");
}


void CDialogParticleEditor::OnBtnYup() 
{
    Sys_Printf("void CDialogParticleEditor::OnBtnYup()\r\n");
}


void CDialogParticleEditor::OnBtnYdn() 
{
    Sys_Printf("void CDialogParticleEditor::OnBtnYdn()\r\n");
}


void CDialogParticleEditor::OnBtnXdn() 
{
    Sys_Printf("void CDialogParticleEditor::OnBtnXdn()\r\n");
}


void CDialogParticleEditor::OnBtnXup() 
{
    Sys_Printf("void CDialogParticleEditor::OnBtnXup()\r\n");
}


void CDialogParticleEditor::OnBtnZup() 
{
    Sys_Printf("void CDialogParticleEditor::OnBtnZup()\r\n");
}


void CDialogParticleEditor::OnBtnZdn() 
{
    Sys_Printf("void CDialogParticleEditor::OnBtnZdn()\r\n");
}


void CDialogParticleEditor::OnBtnDrop() 
{
    Sys_Printf("void CDialogParticleEditor::OnBtnDrop()\r\n");
}


void CDialogParticleEditor::OnOK()
{
    Sys_Printf("void CDialogParticleEditor::OnOK()\r\n");
}

