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
#include "../../game/game.h"
#include "../comafx/DialogColorPicker.h"
#include "LightDlg.h"

#ifdef ID_DEBUG_MEMORY
#undef new
#undef DEBUG_NEW
#define DEBUG_NEW new
#endif


void CLightInfo::Defaults() {
    Sys_Printf("void CLightInfo::Defaults()\r\n");
}



void CLightInfo::DefaultPoint() {
    Sys_Printf("void CLightInfo::DefaultPoint()\r\n");
}


void CLightInfo::DefaultProjected() {
    Sys_Printf("void CLightInfo::DefaultProjected()\r\n");
}


void CLightInfo::FromDict( const idDict *e ) {
    Sys_Printf("void CLightInfo::FromDict( const idDict *e )\r\n");
}


void CLightInfo::ToDictFromDifferences ( idDict *e, const idDict *differences ) {
    Sys_Printf("void CLightInfo::ToDictFromDifferences ( idDict *e, const idDict *differences )\r\n");
}


//write all info to a dict, regardless of light type
void CLightInfo::ToDictWriteAllInfo( idDict *e ) {
    Sys_Printf("void CLightInfo::ToDictWriteAllInfo( idDict *e )\r\n");
}


void CLightInfo::ToDict( idDict *e ) {
    Sys_Printf("void CLightInfo::ToDict( idDict *e )\r\n");
}


CLightInfo::CLightInfo() {
	Defaults();
}



/////////////////////////////////////////////////////////////////////////////
// CLightDlg dialog

CLightDlg *g_LightDialog = NULL;


CLightDlg::CLightDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CLightDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CLightDlg)
	m_bEqualRadius = FALSE;
	m_bExplicitFalloff = FALSE;
	m_bPointLight = FALSE;
	m_bCheckProjected = FALSE;
	m_fFallloff = 0.0f;
	m_nFalloff = -1;
	m_bRotate = FALSE;
	m_bShadows = FALSE;
	m_bSpecular = FALSE;
	m_bDiffuse = FALSE;
	m_fEndX = 0.0f;
	m_fEndY = 0.0f;
	m_fEndZ = 0.0f;
	m_fRadiusX = 0.0f;
	m_fRadiusY = 0.0f;
	m_fRadiusZ = 0.0f;
	m_fRightX = 0.0f;
	m_fRightY = 0.0f;
	m_fRightZ = 0.0f;
	m_fRotate = 0.0f;
	m_fStartX = 0.0f;
	m_fStartY = 0.0f;
	m_fStartZ = 0.0f;
	m_fTargetX = 0.0f;
	m_fTargetY = 0.0f;
	m_fTargetZ = 0.0f;
	m_fUpX = 0.0f;
	m_fUpY = 0.0f;
	m_fUpZ = 0.0f;
	m_hasCenter = FALSE;
	m_centerX = 0.0f;
	m_centerY = 0.0f;
	m_centerZ = 0.0f;
    m_bIsParallel = FALSE;
	//}}AFX_DATA_INIT
	m_drawMaterial = new idGLDrawableMaterial();
}

CLightDlg::~CLightDlg() {
	delete m_drawMaterial;
}

void CLightDlg::DoDataExchange(CDataExchange* pDX)
{
    Sys_Printf("void CLightDlg::DoDataExchange(CDataExchange* pDX)\r\n");
}



BEGIN_MESSAGE_MAP(CLightDlg, CDialog)
	//{{AFX_MSG_MAP(CLightDlg)
	ON_BN_CLICKED(IDC_BTN_TEXTURE, OnBtnTexture)
	ON_BN_CLICKED(IDC_CHECK_EQUALRADIUS, OnCheckEqualradius)
	ON_BN_CLICKED(IDC_CHECK_EXPLICITFALLOFF, OnCheckExplicitfalloff)
	ON_BN_CLICKED(IDC_CHECK_POINT, OnCheckPoint)
	ON_BN_CLICKED(IDC_CHECK_PROJECTED, OnCheckProjected)
	ON_BN_CLICKED(IDC_RADIO_FALLOFF, OnRadioFalloff)
	ON_BN_CLICKED(IDC_APPLY, OnApply)
    ON_BN_CLICKED(IDC_APPLY_DIFFERENT, OnApplyDifferences)
	ON_BN_CLICKED(IDC_BTN_COLOR, OnBtnColor)
	ON_WM_CTLCOLOR()
	ON_CBN_SELCHANGE(IDC_COMBO_TEXTURE, OnSelchangeComboTexture)
	ON_BN_CLICKED(IDC_CHECK_CENTER, OnCheckCenter)
	ON_BN_CLICKED(IDC_CHECK_PARALLEL, OnCheckParallel)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CLightDlg message handlers

void CLightDlg::SetSpecifics() {
    Sys_Printf("void CLightDlg::SetSpecifics()\r\n");
}


void CLightDlg::EnableControls() {
    Sys_Printf("void CLightDlg::EnableControls()\r\n");
}


void CLightDlg::UpdateDialogFromLightInfo( void ) {
    Sys_Printf("void CLightDlg::UpdateDialogFromLightInfo( void )\r\n");
}


void CLightDlg::UpdateLightInfoFromDialog( void ) {
    Sys_Printf("void CLightDlg::UpdateLightInfoFromDialog( void )\r\n");
}


void CLightDlg::SaveLightInfo( const idDict *differences ) {
    Sys_Printf("void CLightDlg::SaveLightInfo( const idDict *differences )\r\n");
}


void CLightDlg::ColorButtons() {
    Sys_Printf("void CLightDlg::ColorButtons()\r\n");
}



void CLightDlg::LoadLightTextures() {
    Sys_Printf("void CLightDlg::LoadLightTextures()\r\n");
}


BOOL CLightDlg::OnInitDialog() 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CLightDlg::OnInitDialog()\r\n");
    return retVal;
}


void CLightDlg::OnDestroy() {
    Sys_Printf("void CLightDlg::OnDestroy()\r\n");
}


void CLightDlg::OnBtnTexture() 
{
    Sys_Printf("void CLightDlg::OnBtnTexture()\r\n");
}


void CLightDlg::OnCheckEqualradius() 
{
    Sys_Printf("void CLightDlg::OnCheckEqualradius()\r\n");
}


void CLightDlg::OnCheckExplicitfalloff() 
{
    Sys_Printf("void CLightDlg::OnCheckExplicitfalloff()\r\n");
}


void CLightDlg::OnCheckPoint() 
{
    Sys_Printf("void CLightDlg::OnCheckPoint()\r\n");
}


void CLightDlg::OnCheckProjected() 
{
    Sys_Printf("void CLightDlg::OnCheckProjected()\r\n");
}


void CLightDlg::OnRadioFalloff() 
{
    Sys_Printf("void CLightDlg::OnRadioFalloff()\r\n");
}


void CLightDlg::OnOK() {
    Sys_Printf("void CLightDlg::OnOK()\r\n");
}


entity_t *SingleLightSelected() {
    Sys_Printf("entity_t *SingleLightSelected()\r\n");
    return NULL;
}


void CLightDlg::UpdateDialog( bool updateChecks )
{
    Sys_Printf("void CLightDlg::UpdateDialog( bool updateChecks )\r\n");
}


void LightEditorInit( const idDict *spawnArgs ) {
    Sys_Printf("void LightEditorInit( const idDict *spawnArgs )\r\n");
}


void LightEditorRun( void ) {
    Sys_Printf("void LightEditorRun( void )\r\n");
}


void LightEditorShutdown( void ) {
    Sys_Printf("void LightEditorShutdown( void )\r\n");
}


void UpdateLightInspector() {
    Sys_Printf("void UpdateLightInspector()\r\n");
}


void CLightDlg::OnApply() {
    Sys_Printf("void CLightDlg::OnApply()\r\n");
}


void UpdateLightDialog( float r, float g, float b, float a ) {
    Sys_Printf("void UpdateLightDialog( float r, float g, float b, float a )\r\n");
}


void CLightDlg::UpdateColor( float r, float g, float b, float a ) {
    Sys_Printf("void CLightDlg::UpdateColor( float r, float g, float b, float a )\r\n");
}


void CLightDlg::OnBtnColor() {
    Sys_Printf("void CLightDlg::OnBtnColor()\r\n");
}


void CLightDlg::OnCancel() {
    Sys_Printf("void CLightDlg::OnCancel()\r\n");
}


HBRUSH CLightDlg::OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor) 
{
    HBRUSH retVal;
    memset(&retVal, 0, sizeof(HBRUSH));
    Sys_Printf("HBRUSH CLightDlg::OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor)\r\n");
    return retVal;
}


BOOL CLightDlg::DestroyWindow() 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CLightDlg::DestroyWindow()\r\n");
    return retVal;
}


void CLightDlg::OnSelchangeComboTexture() 
{
    Sys_Printf("void CLightDlg::OnSelchangeComboTexture()\r\n");
}


void CLightDlg::OnCheckCenter() 
{
    Sys_Printf("void CLightDlg::OnCheckCenter()\r\n");
}


void CLightDlg::OnCheckParallel() {
    Sys_Printf("void CLightDlg::OnCheckParallel()\r\n");
}


//jhefty - only apply settings that are different
void CLightDlg::OnApplyDifferences () {
    Sys_Printf("void CLightDlg::OnApplyDifferences ()\r\n");
}

