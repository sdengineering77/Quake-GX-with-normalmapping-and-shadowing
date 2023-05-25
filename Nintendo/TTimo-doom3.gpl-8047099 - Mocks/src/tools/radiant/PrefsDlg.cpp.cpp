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
#include "shlobj.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#define MOUSE_KEY				"radiant_MouseButtons"
#define TLOCK_KEY				"radiant_TextureLock"
#define RLOCK_KEY				"radiant_RotateLock"
#define LOADLAST_KEY			"radiant_LoadLast"
#define LOADLASTMAP_KEY			"radiant_LoadLastMap"
#define LASTPROJ_KEY			"radiant_LastProject"
#define LASTMAP_KEY				"radiant_LastMap"
#define RUN_KEY					"radiant_RunBefore"
#define FACE_KEY				"radiant_NewFaceGrab"
#define BSP_KEY					"radiant_InternalBSP"
#define RCLICK_KEY				"radiant_NewRightClick"
#define VERTEX_KEY				"radiant_NewVertex"
#define AUTOSAVE_KEY			"radiant_Autosave"
#define AUTOSAVETIME_KEY		"radiant_AutosaveMinutes"
#define PAK_KEY					"radiant_UsePAK"
#define NEWAPPLY_KEY			"radiant_ApplyDismissesSurface"
#define HACK_KEY				"radiant_Gatewayescapehack"
#define TEXTURE_KEY				"radiant_NewTextureWindowStuff"
#define TINYBRUSH_KEY			"radiant_CleanTinyBrushes"
#define TINYSIZE_KEY			"radiant_CleanTinyBrusheSize"
#define SNAPSHOT_KEY			"radiant_Snapshots"
#define PAKFILE_KEY				"radiant_PAKFile"
#define STATUS_KEY				"radiant_StatusPointSize"
#define MOVESPEED_KEY			"radiant_MoveSpeed"
#define ANGLESPEED_KEY			"radiant_AngleSpeed"
#define SETGAME_KEY				"radiant_UseSetGame"
#define CAMXYUPDATE_KEY			"radiant_CamXYUpdate"
#define LIGHTDRAW_KEY			"radiant_NewLightStyle"
#define WHATGAME_KEY			"radiant_WhichGame"
#define CUBICCLIP_KEY			"radiant_CubicClipping"
#define CUBICSCALE_KEY			"radiant_CubicScale"
#define ALTEDGE_KEY				"radiant_ALTEdgeDrag"
#define FACECOLORS_KEY			"radiant_FaceColors"
#define QE4PAINT_KEY			"radiant_QE4Paint"
#define SNAPT_KEY				"radiant_SnapT"
#define XZVIS_KEY				"radiant_XZVIS"
#define YZVIS_KEY				"radiant_YZVIS"
#define ZVIS_KEY				"radiant_ZVIS"
#define SIZEPAINT_KEY			"radiant_SizePainting"
#define DLLENTITIES_KEY			"radiant_DLLEntities"
#define WIDETOOLBAR_KEY			"radiant_WideToolBar"
#define NOCLAMP_KEY				"radiant_NoClamp"
#define PREFAB_KEY				"radiant_PrefabPath"
#define USERINI_KEY				"radiant_UserINIPath"
#define ROTATION_KEY			"radiant_Rotation"
#define SGIOPENGL_KEY			"radiant_SGIOpenGL"
#define BUGGYICD_KEY			"radiant_BuggyICD"
#define HICOLOR_KEY				"radiant_HiColorTextures"
#define CHASEMOUSE_KEY			"radiant_ChaseMouse"
#define ENTITYSHOW_KEY			"radiant_EntityShow"
#define TEXTURESCALE_KEY		"radiant_TextureScale"
#define TEXTURESCROLLBAR_KEY	"radiant_TextureScrollbar"
#define DISPLAYLISTS_KEY		"radiant_UseDisplayLists"
#define NORMALIZECOLORS_KEY		"radiant_NormalizeColors"
#define SHADERS_KEY				"radiant_UseShaders"
#define SWITCHCLIP_KEY			"radiant_SwitchClipKey"
#define SELWHOLEENTS_KEY		"radiant_SelectWholeEntitiesKey"
#define TEXTURESUBSET_KEY		"radiant_UseTextureSubsetLoading"
#define TEXTUREQUALITY_KEY		"radiant_TextureQuality"
#define SHOWSHADERS_KEY			"radiant_ShowShaders"
#define SHADERTEST_KEY			"radiant_ShaderTest"
#define GLLIGHTING_KEY			"radiant_UseGLLighting"
#define NOSTIPPLE_KEY			"radiant_NoStipple"
#define UNDOLEVELS_KEY			"radiant_UndoLevels"
#define MAPS_KEY				"radiant_RadiantMapPath"
#define MODELS_KEY				"radiant_ModelPath"
#define NEWMAPFORMAT_KEY		"radiant_NewMapFormat"

#define WINDOW_DEF				0
#define TLOCK_DEF				1
#define LOADLAST_DEF			1
#define RUN_DEF					0

/////////////////////////////////////////////////////////////////////////////
// CPrefsDlg dialog


CPrefsDlg::CPrefsDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CPrefsDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CPrefsDlg)
	m_bLoadLast = FALSE;
	m_bFace = FALSE;
	m_bRightClick = FALSE;
	m_bVertex = FALSE;
	m_bAutoSave = TRUE;
	m_bNewApplyHandling = FALSE;
	m_strAutoSave = _T("5");
	m_bLoadLastMap = FALSE;
	m_bTextureWindow = FALSE;
	m_bSnapShots = FALSE;
	m_fTinySize = 0.5;
	m_bCleanTiny = FALSE;
	m_nStatusSize = 10;
	m_bCamXYUpdate = FALSE;
	m_bNewLightDraw = FALSE;
	m_bALTEdge = FALSE;
	m_bQE4Painting = TRUE;
	m_bSnapTToGrid = FALSE;
	m_bXZVis = FALSE;
	m_bYZVis = FALSE;
	m_bZVis = FALSE;
	m_bSizePaint = FALSE;
	m_bWideToolbar = TRUE;
	m_bNoClamp = FALSE;
	m_nRotation = 0;
	m_bHiColorTextures = TRUE;
	m_bChaseMouse = FALSE;
	m_bTextureScrollbar = TRUE;
	m_bDisplayLists = TRUE;
	m_bNoStipple = FALSE;
	m_strMaps = _T("");
	m_strModels = _T("");
	m_bNewMapFormat = TRUE;
	//}}AFX_DATA_INIT
	//LoadPrefs();
	m_selectByBoundingBrush = FALSE;
	m_selectOnlyBrushes = FALSE;
	m_selectNoModels = FALSE;
	m_nEntityShowState = 0;
	m_nTextureScale = 2;
	m_bSwitchClip = FALSE;
	m_bSelectWholeEntities = TRUE;
	m_nTextureQuality = 3;
	m_bGLLighting = FALSE;
	m_nUndoLevels = 63;
}

void CPrefsDlg::DoDataExchange(CDataExchange* pDX)
{
    Sys_Printf("void CPrefsDlg::DoDataExchange(CDataExchange* pDX)\r\n");
}



BEGIN_MESSAGE_MAP(CPrefsDlg, CDialog)
	//{{AFX_MSG_MAP(CPrefsDlg)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CPrefsDlg message handlers

BOOL CPrefsDlg::OnInitDialog() 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPrefsDlg::OnInitDialog()\r\n");
    return retVal;
}


void CPrefsDlg::OnOK() 
{
    Sys_Printf("void CPrefsDlg::OnOK()\r\n");
}


int GetCvarInt(const char *name, const int def) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int GetCvarInt(const char *name, const int def)\r\n");
    return retVal;
}


const char *GetCvarString( const char *name, const char *def ) {
    Sys_Printf("char *GetCvarString( const char *name, const char *def )\r\n");
    return NULL;
}


static const char hexDigits[] = "0123456789ABCDEF";

void SetCvarInt( const char *name, const int value ) {
    Sys_Printf("void SetCvarInt( const char *name, const int value )\r\n");
}


void SetCvarString( const char *name, const char *value ) {
    Sys_Printf("void SetCvarString( const char *name, const char *value )\r\n");
}


void SetCvarBinary(const char *name, void *pv, int size) {
    Sys_Printf("void SetCvarBinary(const char *name, void *pv, int size)\r\n");
}


bool GetCvarBinary( const char *name, void *pv, int size ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GetCvarBinary( const char *name, void *pv, int size )\r\n");
    return retVal;
}


void CPrefsDlg::LoadPrefs() {
    Sys_Printf("void CPrefsDlg::LoadPrefs()\r\n");
}


void CPrefsDlg::SavePrefs() {
    Sys_Printf("void CPrefsDlg::SavePrefs()\r\n");
}


void CPrefsDlg::SetGamePrefs() {
    Sys_Printf("void CPrefsDlg::SetGamePrefs()\r\n");
}

