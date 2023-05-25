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
#include "ZWnd.h"
#include "CamWnd.h"
#include "MapInfo.h"
#include "MainFrm.h"
#include "RotateDlg.h"
#include "EntityListDlg.h"
#include "NewProjDlg.h"
#include "CommandsDlg.h"
#include "ScaleDialog.h"
#include "FindTextureDlg.h"
#include "SurfaceDlg.h"
#include "shlobj.h"
#include "DialogTextures.h"
#include "PatchDensityDlg.h"
#include "DialogThick.h"
#include "PatchDialog.h"
#include "Undo.h"
#include "NewTexWnd.h"
#include "splines.h"
#include "dlgcamera.h"
#include "mmsystem.h"
#include "LightDlg.h"
#include "GetString.h"
#include "EntKeyFindReplace.h"
#include "InspectorDialog.h"
#include "autocaulk.h"

#include "../../sys/win32/rc/common_resource.h"
#include "../comafx/DialogName.h"
#include "../comafx/DialogColorPicker.h"

#ifdef _DEBUG
	#define new DEBUG_NEW
	#undef THIS_FILE
static char		THIS_FILE[] = __FILE__;
#endif

// globals
CString			g_strAppPath;						// holds the full path of the executable
CMainFrame		*g_pParentWnd = NULL;				// used to precast to CMainFrame
CPrefsDlg		g_Preferences;						// global prefs instance
CPrefsDlg		&g_PrefsDlg = g_Preferences;		// reference used throughout
int				g_nUpdateBits = 0;					// window update flags
bool			g_bScreenUpdates = true;			// whether window painting is active, used in a few places

//
// to disable updates for speed reasons both of the above should be made members
// of CMainFrame
// bool g_bSnapToGrid = true; // early use, no longer in use, clamping pref will
// be used
//
CString			g_strProject;						// holds the active project filename

#define D3XP_ID_FILE_SAVE_COPY ( WM_USER + 28476 )
#define D3XP_ID_SHOW_MODELS ( WM_USER + 28477 )

//
// CMainFrame
// command mapping stuff m_strCommand is the command string m_nKey is the windows
// VK_??? equivelant m_nModifiers are key states as follows bit 0 - shift 1 - alt
// 2 - control 4 - press only
//
#define SPEED_MOVE	32.0f
#define SPEED_TURN	22.5f

#define MAX_GRID	64.0f
#define MIN_GRID	0.125f

SCommandInfo	g_Commands[] = {
	{ "Texture_AxialByHeight",   'U', 0,	ID_SELECT_AXIALTEXTURE_BYHEIGHT },
	{ "Texture_AxialArbitrary",  'U', RAD_SHIFT, ID_SELECT_AXIALTEXTURE_ARBITRARY },
	{ "Texture_AxialByWidth",    'U', RAD_CONTROL, ID_SELECT_AXIALTEXTURE_BYWIDTH },
	{ "Texture_Decrement",       VK_SUBTRACT, RAD_SHIFT, ID_SELECTION_TEXTURE_DEC },
	{ "Texture_Increment",       VK_ADD, RAD_SHIFT, ID_SELECTION_TEXTURE_INC },
	{ "Texture_Fit",             '5', RAD_SHIFT, ID_SELECTION_TEXTURE_FIT },
	{ "Texture_RotateClock",     VK_NEXT, RAD_SHIFT, ID_SELECTION_TEXTURE_ROTATECLOCK },
	{ "Texture_RotateCounter",   VK_PRIOR, RAD_SHIFT, ID_SELECTION_TEXTURE_ROTATECOUNTER },
	{ "Texture_ScaleUp",         VK_UP, RAD_CONTROL, ID_SELECTION_TEXTURE_SCALEUP },
	{ "Texture_ScaleDown",       VK_DOWN, RAD_CONTROL, ID_SELECTION_TEXTURE_SCALEDOWN },
	{ "Texture_ShiftLeft",       VK_LEFT, RAD_SHIFT, ID_SELECTION_TEXTURE_SHIFTLEFT },
	{ "Texture_ShiftRight",      VK_RIGHT, RAD_SHIFT, ID_SELECTION_TEXTURE_SHIFTRIGHT },
	{ "Texture_ShiftUp",         VK_UP, RAD_SHIFT, ID_SELECTION_TEXTURE_SHIFTUP },
	{ "Texture_ShiftDown",       VK_DOWN, RAD_SHIFT, ID_SELECTION_TEXTURE_SHIFTDOWN },
	{ "Texture_ScaleLeft",       VK_LEFT, RAD_CONTROL, ID_SELECTION_TEXTURE_SCALELEFT },
	{ "Texture_ScaleRight",      VK_RIGHT, RAD_CONTROL, ID_SELECTION_TEXTURE_SCALERIGHT },
	{ "Texture_InvertX",         'I', RAD_CONTROL|RAD_SHIFT, ID_CURVE_NEGATIVETEXTUREY },
	{ "Texture_InvertY",         'I', RAD_SHIFT, ID_CURVE_NEGATIVETEXTUREX },
	{ "Texture_ToggleLock",      'T', RAD_SHIFT, ID_TOGGLE_LOCK },

	{ "Texture_ShowAllTextures", 'A', RAD_CONTROL, ID_TEXTURES_SHOWALL },

	{ "Edit_Copy",              'C', RAD_CONTROL, ID_EDIT_COPYBRUSH },
	{ "Edit_Paste",             'V', RAD_CONTROL, ID_EDIT_PASTEBRUSH },
	{ "Edit_Undo",              'Z', RAD_CONTROL, ID_EDIT_UNDO },
	{ "Edit_Redo",              'Y', RAD_CONTROL, ID_EDIT_REDO },

	{ "Camera_Forward",          VK_UP, 0, ID_CAMERA_FORWARD },
	{ "Camera_Back",             VK_DOWN, 0, ID_CAMERA_BACK },
	{ "Camera_Left",             VK_LEFT, 0, ID_CAMERA_LEFT },
	{ "Camera_Right",            VK_RIGHT, 0, ID_CAMERA_RIGHT },
	{ "Camera_Up",               'D', 0, ID_CAMERA_UP },
	{ "Camera_Down",             'C', 0, ID_CAMERA_DOWN },
	{ "Camera_AngleUp",          'A', 0, ID_CAMERA_ANGLEUP },
	{ "Camera_AngleDown",        'Z', 0, ID_CAMERA_ANGLEDOWN },
	{ "Camera_StrafeRight",      VK_PERIOD, 0, ID_CAMERA_STRAFERIGHT },
	{ "Camera_StrafeLeft",       VK_COMMA, 0, ID_CAMERA_STRAFELEFT },
	{ "Camera_UpFloor",          VK_PRIOR, 0, ID_VIEW_UPFLOOR },
	{ "Camera_DownFloor",        VK_NEXT, 0, ID_VIEW_DOWNFLOOR },
	{ "Camera_CenterView",       VK_END, 0, ID_VIEW_CENTER },

	{ "Grid_ZoomOut",            VK_INSERT, 0, ID_VIEW_ZOOMOUT },
	{ "FileSaveCopy",            'C', RAD_CONTROL|RAD_ALT|RAD_SHIFT, D3XP_ID_FILE_SAVE_COPY },
	{ "ShowHideModels",          'M', RAD_CONTROL, D3XP_ID_SHOW_MODELS },
	{ "NextView",                VK_HOME, 0, ID_VIEW_NEXTVIEW },
	{ "Grid_ZoomIn",             VK_DELETE, 0, ID_VIEW_ZOOMIN },

	{ "Grid_SetPoint5",          '4', RAD_SHIFT, ID_GRID_POINT5 },
	{ "Grid_SetPoint25",         '3', RAD_SHIFT, ID_GRID_POINT25 },
	{ "Grid_SetPoint125",        '2', RAD_SHIFT, ID_GRID_POINT125 },
	//{ "Grid_SetPoint0625",     '1', RAD_SHIFT, ID_GRID_POINT0625 },
	{ "Grid_Set1",               '1', 0, ID_GRID_1 },
	{ "Grid_Set2",               '2', 0, ID_GRID_2 },
	{ "Grid_Set4",               '3', 0, ID_GRID_4 },
	{ "Grid_Set8",               '4', 0, ID_GRID_8 },
	{ "Grid_Set16",              '5', 0, ID_GRID_16 },
	{ "Grid_Set32",              '6', 0, ID_GRID_32 },
	{ "Grid_Set64",              '7', 0, ID_GRID_64 },
	{ "Grid_Down",               219, 0, ID_GRID_PREV },
	{ "Grid_Up",                 221, 0, ID_GRID_NEXT },

	{ "Grid_Toggle",             '0', 0, ID_GRID_TOGGLE },
	{ "Grid_ToggleSizePaint",    'Q', RAD_PRESS, ID_SELECTION_TOGGLESIZEPAINT },

	{ "Grid_PrecisionCursorMode",VK_F11, 0 , ID_PRECISION_CURSOR_CYCLE},

	{ "Grid_NextView",           VK_TAB, RAD_CONTROL, ID_VIEW_NEXTVIEW },
	{ "Grid_ToggleCrosshairs",   'X', RAD_SHIFT, ID_VIEW_CROSSHAIR },

	{ "Grid_ZZoomOut",           VK_INSERT, RAD_CONTROL, ID_VIEW_ZZOOMOUT },
	{ "Grid_ZZoomIn",            VK_DELETE, RAD_CONTROL, ID_VIEW_ZZOOMIN },

	{ "Brush_Make3Sided",        '3', RAD_CONTROL, ID_BRUSH_3SIDED },
	{ "Brush_Make4Sided",        '4', RAD_CONTROL, ID_BRUSH_4SIDED },
	{ "Brush_Make5Sided",        '5', RAD_CONTROL, ID_BRUSH_5SIDED },
	{ "Brush_Make6Sided",        '6', RAD_CONTROL, ID_BRUSH_6SIDED },
	{ "Brush_Make7Sided",        '7', RAD_CONTROL, ID_BRUSH_7SIDED },
	{ "Brush_Make8Sided",        '8', RAD_CONTROL, ID_BRUSH_8SIDED },
	{ "Brush_Make9Sided",        '9', RAD_CONTROL, ID_BRUSH_9SIDED },

	{ "Leak_NextSpot",           'K', RAD_CONTROL|RAD_SHIFT, ID_MISC_NEXTLEAKSPOT },
	{ "Leak_PrevSpot",           'L', RAD_CONTROL|RAD_SHIFT, ID_MISC_PREVIOUSLEAKSPOT },

	{ "File_Open",               'O', RAD_CONTROL, ID_FILE_OPEN },
	{ "File_Save",               'S', RAD_CONTROL, ID_FILE_SAVE },

	{ "TAB",                      VK_TAB, 0, ID_PATCH_TAB },
	{ "TAB",                      VK_TAB, RAD_SHIFT, ID_PATCH_TAB },

	{ "Patch_BendMode",           'B', 0, ID_PATCH_BEND },
	{ "Patch_FreezeVertices",     'F', 0, ID_CURVE_FREEZE },
	{ "Patch_UnFreezeVertices",   'F', RAD_CONTROL, ID_CURVE_UNFREEZE },
	{ "Patch_UnFreezeAllVertices",'F', RAD_CONTROL|RAD_SHIFT, ID_CURVE_UNFREEZEALL },
	{ "Patch_Thicken",            'T', RAD_CONTROL, ID_CURVE_THICKEN },
	{ "Patch_ClearOverlays",      'Y', RAD_SHIFT, ID_CURVE_OVERLAY_CLEAR },
	{ "Patch_MakeOverlay",        'Y', 0, ID_CURVE_OVERLAY_SET },
	{ "Patch_CycleCapTexturing",   'P', RAD_CONTROL|RAD_SHIFT, ID_CURVE_CYCLECAP },
	{ "Patch_CycleCapTexturingAlt",'P', RAD_SHIFT, ID_CURVE_CYCLECAPALT },
	{ "Patch_InvertCurve",        'I', RAD_CONTROL, ID_CURVE_NEGATIVE },
	{ "Patch_IncPatchColumn",     VK_ADD, RAD_CONTROL|RAD_SHIFT, ID_CURVE_INSERTCOLUMN },
	{ "Patch_IncPatchRow",        VK_ADD, RAD_CONTROL, ID_CURVE_INSERTROW },
	{ "Patch_DecPatchColumn",     VK_SUBTRACT, RAD_CONTROL|RAD_SHIFT, ID_CURVE_DELETECOLUMN },
	{ "Patch_DecPatchRow",        VK_SUBTRACT, RAD_CONTROL, ID_CURVE_DELETEROW },
	{ "Patch_RedisperseRows",     'E', RAD_CONTROL, ID_CURVE_REDISPERSE_ROWS },
	{ "Patch_RedisperseCols",     'E', RAD_CONTROL|RAD_SHIFT, ID_CURVE_REDISPERSE_COLS },
	{ "Patch_Naturalize",         'N', RAD_CONTROL, ID_PATCH_NATURALIZE },
	{ "Patch_SnapToGrid",         'G', RAD_CONTROL, ID_SELECT_SNAPTOGRID },
	{ "Patch_CapCurrentCurve",    'C', RAD_SHIFT, ID_CURVE_CAP },

	{ "Clipper_Toggle",          'X', 0, ID_VIEW_CLIPPER },
	{ "Clipper_ClipSelected",    VK_RETURN, 0, ID_CLIP_SELECTED },
	{ "Clipper_SplitSelected",   VK_RETURN, RAD_SHIFT, ID_SPLIT_SELECTED },
	{ "Clipper_FlipClip",        VK_RETURN, RAD_CONTROL, ID_FLIP_CLIP },

	{ "CameraClip_ZoomOut",       219, RAD_CONTROL, ID_VIEW_CUBEOUT },
	{ "CameraClip_ZoomIn",        221, RAD_CONTROL, ID_VIEW_CUBEIN },
	{ "CameraClip_Toggle",        220, RAD_CONTROL, ID_VIEW_CUBICCLIPPING },

	{ "ViewTab_EntityInfo",     'N', 0, ID_VIEW_ENTITY },
	{ "ViewTab_Console",        'O', 0, ID_VIEW_CONSOLE },
	{ "ViewTab_Textures",       'T', 0, ID_VIEW_TEXTURE },
	{ "ViewTab_MediaBrowser",   'M', 0, ID_VIEW_MEDIABROWSER },

	{ "Window_SurfaceInspector",'S', 0, ID_TEXTURES_INSPECTOR },
	{ "Window_PatchInspector",  'S', RAD_SHIFT, ID_PATCH_INSPECTOR },
	{ "Window_EntityList",      'I', 0, ID_EDIT_ENTITYINFO },
	{ "Window_Preferences",     'P', 0, ID_PREFS },
	{ "Window_ToggleCamera",    'C', RAD_CONTROL|RAD_SHIFT, ID_TOGGLECAMERA },
	{ "Window_ToggleView",      'V', RAD_CONTROL|RAD_SHIFT, ID_TOGGLEVIEW },
	{ "Window_ToggleZ",         'Z', RAD_CONTROL|RAD_SHIFT, ID_TOGGLEZ },
	{ "Window_LightEditor",     'J', 0, ID_PROJECTED_LIGHT },
	{ "Window_EntityColor",     'K', 0, ID_MISC_SELECTENTITYCOLOR },

	{ "Selection_DragEdges",     'E', 0, ID_SELECTION_DRAGEDGES },
	{ "Selection_DragVertices",  'V', 0, ID_SELECTION_DRAGVERTECIES },
	{ "Selection_Clone",         VK_SPACE, 0, ID_SELECTION_CLONE },
	{ "Selection_Delete",        VK_BACK, 0, ID_SELECTION_DELETE },
	{ "Selection_UnSelect",      VK_ESCAPE, 0, ID_SELECTION_DESELECT },
	{ "Selection_Invert",        'I' , 0 , ID_SELECTION_INVERT },
	{ "Selection_ToggleMoveOnly",'W', 0, ID_SELECTION_MOVEONLY },

	{ "Selection_MoveDown",     VK_SUBTRACT, 0, ID_SELECTION_MOVEDOWN },
	{ "Selection_MoveUp",       VK_ADD, 0, ID_SELECTION_MOVEUP },
	{ "Selection_DumpBrush",    'D', RAD_SHIFT, ID_SELECTION_PRINT },
	{ "Selection_NudgeLeft",    VK_LEFT, RAD_ALT, ID_SELECTION_SELECT_NUDGELEFT },
	{ "Selection_NudgeRight",   VK_RIGHT, RAD_ALT, ID_SELECTION_SELECT_NUDGERIGHT },
	{ "Selection_NudgeUp",      VK_UP, RAD_ALT, ID_SELECTION_SELECT_NUDGEUP },
	{ "Selection_NudgeDown",    VK_DOWN, RAD_ALT, ID_SELECTION_SELECT_NUDGEDOWN },
	{ "Selection_Combine",      'K', RAD_SHIFT, ID_SELECTION_COMBINE },
	{ "Selection_Connect",      'K', RAD_CONTROL, ID_SELECTION_CONNECT },
	{ "Selection_Ungroup",      'G', RAD_SHIFT, ID_SELECTION_UNGROUPENTITY },
	{ "Selection_CSGMerge",     'M', RAD_SHIFT, ID_SELECTION_CSGMERGE },
	
	{ "Selection_CenterOrigin",           'O', RAD_SHIFT, ID_SELECTION_CENTER_ORIGIN },
	{ "Selection_SelectCompleteEntity",   'E' , RAD_CONTROL|RAD_ALT|RAD_SHIFT , ID_SELECT_COMPLETE_ENTITY },
	{ "Selection_SelectAllOfType",        'A', RAD_SHIFT, ID_SELECT_ALL },

	{ "Show_ToggleLights",       '0' , RAD_ALT , ID_VIEW_SHOWLIGHTS },
	{ "Show_TogglePatches",      'P', RAD_CONTROL, ID_VIEW_SHOWCURVES },
	{ "Show_ToggleClip",         'L', RAD_CONTROL, ID_VIEW_SHOWCLIP },

	{ "Show_HideSelected",       'H', 0, ID_VIEW_HIDESHOW_HIDESELECTED },
	{ "Show_ShowHidden",         'H', RAD_SHIFT, ID_VIEW_HIDESHOW_SHOWHIDDEN },
	{ "Show_HideNotSelected",    'H', RAD_CONTROL|RAD_SHIFT, ID_VIEW_HIDESHOW_HIDENOTSELECTED },

	{ "Render_ToggleSound",      VK_F9, 0, ID_VIEW_RENDERSOUND },
	{ "Render_ToggleSelections", VK_F8, 0, ID_VIEW_RENDERSELECTION },
	{ "Render_RebuildData",      VK_F7, 0, ID_VIEW_REBUILDRENDERDATA },
	{ "Render_ToggleAnimation",  VK_F6, 0, ID_VIEW_MATERIALANIMATION},
	{ "Render_ToggleEntityOutlines", VK_F5, 0, ID_VIEW_RENDERENTITYOUTLINES },
	{ "Render_ToggleRealtimeBuild",  VK_F4, 0, ID_VIEW_REALTIMEREBUILD },
	{ "Render_Toggle",           VK_F3, 0, ID_VIEW_RENDERMODE },

	{ "Find_Textures",    'F', RAD_SHIFT, ID_TEXTURE_REPLACEALL },
	{ "Find_Entity",       VK_F3, RAD_CONTROL, ID_MISC_FINDORREPLACEENTITY},	
	{ "Find_NextEntity",   VK_F3,RAD_SHIFT, ID_MISC_FINDNEXTENT},

	{ "_ShowDOOM",               VK_F2, 0, ID_SHOW_DOOM },

	{ "Rotate_MouseRotate",            'R', 0, ID_SELECT_MOUSEROTATE },
	{ "Rotate_ToggleFlatRotation",     'R', RAD_CONTROL, ID_VIEW_CAMERAUPDATE },
	{ "Rotate_CycleRotationAxis",      'R', RAD_SHIFT, ID_TOGGLE_ROTATELOCK },

	{ "_AutoCaulk",	             'A', RAD_CONTROL|RAD_SHIFT, ID_AUTOCAULK },	// ctrl-shift-a, since SHIFT-A is already taken
};

int				g_nCommandCount = sizeof(g_Commands) / sizeof(SCommandInfo);

SKeyInfo		g_Keys[] = {
	{ "Space", VK_SPACE },
	{ "Backspace", VK_BACK },
	{ "Escape", VK_ESCAPE },
	{ "End", VK_END },
	{ "Insert", VK_INSERT },
	{ "Delete", VK_DELETE },
	{ "PageUp", VK_PRIOR },
	{ "PageDown", VK_NEXT },
	{ "Up", VK_UP },
	{ "Down", VK_DOWN },
	{ "Left", VK_LEFT },
	{ "Right", VK_RIGHT },
	{ "F1", VK_F1 },
	{ "F2", VK_F2 },
	{ "F3", VK_F3 },
	{ "F4", VK_F4 },
	{ "F5", VK_F5 },
	{ "F6", VK_F6 },
	{ "F7", VK_F7 },
	{ "F8", VK_F8 },
	{ "F9", VK_F9 },
	{ "F10", VK_F10 },
	{ "F11", VK_F11 },
	{ "F12", VK_F12 },
	{ "Tab", VK_TAB },
	{ "Return", VK_RETURN },
	{ "Comma", VK_COMMA },
	{ "Period", VK_PERIOD },
	{ "Plus", VK_ADD },
	{ "Multiply", VK_MULTIPLY },
	{ "Subtract", VK_SUBTRACT },
	{ "NumPad0", VK_NUMPAD0 },
	{ "NumPad1", VK_NUMPAD1 },
	{ "NumPad2", VK_NUMPAD2 },
	{ "NumPad3", VK_NUMPAD3 },
	{ "NumPad4", VK_NUMPAD4 },
	{ "NumPad5", VK_NUMPAD5 },
	{ "NumPad6", VK_NUMPAD6 },
	{ "NumPad7", VK_NUMPAD7 },
	{ "NumPad8", VK_NUMPAD8 },
	{ "NumPad9", VK_NUMPAD9 },
	{ "[", 219 },
	{ "]", 221 },
	{ "\\", 220 }
};

int				g_nKeyCount = sizeof(g_Keys) / sizeof(SKeyInfo);

const int		CMD_TEXTUREWAD_END = CMD_TEXTUREWAD + 127;
const int		CMD_BSPCOMMAND_END = CMD_BSPCOMMAND + 127;
const int		IDMRU_END = IDMRU + 9;

const int		g_msgBSPDone = RegisterWindowMessage(DMAP_DONE);
const int		g_msgBSPStatus = RegisterWindowMessage(DMAP_MSGID);

IMPLEMENT_DYNAMIC(CMainFrame, CFrameWnd)
BEGIN_MESSAGE_MAP(CMainFrame, CFrameWnd)
//{{AFX_MSG_MAP(CMainFrame)
	ON_WM_PARENTNOTIFY()
	ON_WM_CREATE()
	ON_WM_TIMER()
	ON_WM_DESTROY()
	ON_WM_CLOSE()
	ON_WM_KEYDOWN()
	ON_WM_SIZE()
	ON_COMMAND(ID_VIEW_CAMERATOGGLE, ToggleCamera)
	ON_COMMAND(ID_FILE_CLOSE, OnFileClose)
	ON_COMMAND(ID_FILE_EXIT, OnFileExit)
	ON_COMMAND(ID_FILE_LOADPROJECT, OnFileLoadproject)
	ON_COMMAND(ID_FILE_NEW, OnFileNew)
	ON_COMMAND(ID_FILE_OPEN, OnFileOpen)
	ON_COMMAND(ID_FILE_POINTFILE, OnFilePointfile)
	ON_COMMAND(ID_FILE_PRINT, OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, OnFilePrintPreview)
	ON_COMMAND(ID_FILE_SAVE, OnFileSave)
	ON_COMMAND(ID_FILE_SAVEAS, OnFileSaveas)
	ON_COMMAND(D3XP_ID_FILE_SAVE_COPY, OnFileSaveCopy)
	ON_COMMAND(D3XP_ID_SHOW_MODELS, OnViewShowModels )
	ON_COMMAND(ID_VIEW_100, OnView100)
	ON_COMMAND(ID_VIEW_CENTER, OnViewCenter)
	ON_COMMAND(ID_VIEW_CONSOLE, OnViewConsole)
	ON_COMMAND(ID_VIEW_DOWNFLOOR, OnViewDownfloor)
	ON_COMMAND(ID_VIEW_ENTITY, OnViewEntity)
	ON_COMMAND(ID_VIEW_MEDIABROWSER, OnViewMediaBrowser)
	ON_COMMAND(ID_VIEW_FRONT, OnViewFront)
	ON_COMMAND(ID_VIEW_SHOWBLOCKS, OnViewShowblocks)
	ON_COMMAND(ID_VIEW_SHOWCLIP, OnViewShowclip)
	ON_COMMAND(ID_VIEW_SHOWTRIGGERS, OnViewShowTriggers)
	ON_COMMAND(ID_VIEW_SHOWCOORDINATES, OnViewShowcoordinates)
	ON_COMMAND(ID_VIEW_SHOWENT, OnViewShowent)
	ON_COMMAND(ID_VIEW_SHOWLIGHTS, OnViewShowlights)
	ON_COMMAND(ID_VIEW_SHOWNAMES, OnViewShownames)
	ON_COMMAND(ID_VIEW_SHOWPATH, OnViewShowpath)
	ON_COMMAND(ID_VIEW_SHOWCOMBATNODES, OnViewShowCombatNodes)
	ON_COMMAND(ID_VIEW_SHOWWATER, OnViewShowwater)
	ON_COMMAND(ID_VIEW_SHOWWORLD, OnViewShowworld)
	ON_COMMAND(ID_VIEW_TEXTURE, OnViewTexture)
	ON_COMMAND(ID_VIEW_UPFLOOR, OnViewUpfloor)
	ON_COMMAND(ID_VIEW_XY, OnViewXy)
	ON_COMMAND(ID_VIEW_Z100, OnViewZ100)
	ON_COMMAND(ID_VIEW_ZOOMIN, OnViewZoomin)
	ON_COMMAND(ID_VIEW_ZOOMOUT, OnViewZoomout)
	ON_COMMAND(ID_VIEW_ZZOOMIN, OnViewZzoomin)
	ON_COMMAND(ID_VIEW_ZZOOMOUT, OnViewZzoomout)
	ON_COMMAND(ID_VIEW_SIDE, OnViewSide)
	ON_COMMAND(ID_TEXTURES_SHOWINUSE, OnTexturesShowinuse)
	ON_COMMAND(ID_TEXTURES_INSPECTOR, OnTexturesInspector)
	ON_COMMAND(ID_MISC_FINDBRUSH, OnMiscFindbrush)
	ON_COMMAND(ID_MISC_GAMMA, OnMiscGamma)
	ON_COMMAND(ID_MISC_NEXTLEAKSPOT, OnMiscNextleakspot)
	ON_COMMAND(ID_MISC_PREVIOUSLEAKSPOT, OnMiscPreviousleakspot)
	ON_COMMAND(ID_MISC_PRINTXY, OnMiscPrintxy)
	ON_COMMAND(ID_MISC_SELECTENTITYCOLOR, OnMiscSelectentitycolor)
	ON_COMMAND(ID_MISC_FINDORREPLACEENTITY, OnMiscFindOrReplaceEntity)
	ON_COMMAND(ID_MISC_FINDNEXTENT, OnMiscFindNextEntity)
	ON_COMMAND(ID_MISC_SETVIEWPOS, OnMiscSetViewPos)
	ON_COMMAND(ID_TEXTUREBK, OnTexturebk)
	ON_COMMAND(ID_COLORS_MAJOR, OnColorsMajor)
	ON_COMMAND(ID_COLORS_MINOR, OnColorsMinor)
	ON_COMMAND(ID_COLORS_XYBK, OnColorsXybk)
	ON_COMMAND(ID_BRUSH_3SIDED, OnBrush3sided)
	ON_COMMAND(ID_BRUSH_4SIDED, OnBrush4sided)
	ON_COMMAND(ID_BRUSH_5SIDED, OnBrush5sided)
	ON_COMMAND(ID_BRUSH_6SIDED, OnBrush6sided)
	ON_COMMAND(ID_BRUSH_7SIDED, OnBrush7sided)
	ON_COMMAND(ID_BRUSH_8SIDED, OnBrush8sided)
	ON_COMMAND(ID_BRUSH_9SIDED, OnBrush9sided)
	ON_COMMAND(ID_BRUSH_ARBITRARYSIDED, OnBrushArbitrarysided)
	ON_COMMAND(ID_BRUSH_FLIPX, OnBrushFlipx)
	ON_COMMAND(ID_BRUSH_FLIPY, OnBrushFlipy)
	ON_COMMAND(ID_BRUSH_FLIPZ, OnBrushFlipz)
	ON_COMMAND(ID_BRUSH_ROTATEX, OnBrushRotatex)
	ON_COMMAND(ID_BRUSH_ROTATEY, OnBrushRotatey)
	ON_COMMAND(ID_BRUSH_ROTATEZ, OnBrushRotatez)
	ON_COMMAND(ID_REGION_OFF, OnRegionOff)
	ON_COMMAND(ID_REGION_SETBRUSH, OnRegionSetbrush)
	ON_COMMAND(ID_REGION_SETSELECTION, OnRegionSetselection)
	ON_COMMAND(ID_REGION_SETTALLBRUSH, OnRegionSettallbrush)
	ON_COMMAND(ID_REGION_SETXY, OnRegionSetxy)
	ON_COMMAND(ID_SELECTION_ARBITRARYROTATION, OnSelectionArbitraryrotation)
	ON_COMMAND(ID_SELECTION_CLONE, OnSelectionClone)
	ON_COMMAND(ID_SELECTION_CONNECT, OnSelectionConnect)
	ON_COMMAND(ID_SELECTION_CSGSUBTRACT, OnSelectionCsgsubtract)
	ON_COMMAND(ID_SELECTION_CSGMERGE, OnSelectionCsgmerge)
	ON_COMMAND(ID_SELECTION_DELETE, OnSelectionDelete)
	ON_COMMAND(ID_SELECTION_DESELECT, OnSelectionDeselect)
	ON_COMMAND(ID_SELECTION_DRAGEDGES, OnSelectionDragedges)
	ON_COMMAND(ID_SELECTION_DRAGVERTECIES, OnSelectionDragvertecies)
	ON_COMMAND(ID_SELECTION_CENTER_ORIGIN, OnSelectionCenterOrigin)
	ON_COMMAND(ID_SELECTION_MAKEHOLLOW, OnSelectionMakehollow)
	ON_COMMAND(ID_SELECTION_SELECTCOMPLETETALL, OnSelectionSelectcompletetall)
	ON_COMMAND(ID_SELECTION_SELECTINSIDE, OnSelectionSelectinside)
	ON_COMMAND(ID_SELECTION_SELECTPARTIALTALL, OnSelectionSelectpartialtall)
	ON_COMMAND(ID_SELECTION_SELECTTOUCHING, OnSelectionSelecttouching)
	ON_COMMAND(ID_SELECTION_UNGROUPENTITY, OnSelectionUngroupentity)
	ON_COMMAND(ID_TEXTURES_POPUP, OnTexturesPopup)
	ON_COMMAND(ID_SPLINES_POPUP, OnSplinesPopup)
	ON_COMMAND(ID_SPLINES_EDITPOINTS, OnSplinesEditPoints)
	ON_COMMAND(ID_SPLINES_ADDPOINTS, OnSplinesAddPoints)
	ON_COMMAND(ID_SPLINES_INSERTPOINTS, OnSplinesInsertPoint)
	ON_COMMAND(ID_SPLINES_DELETEPOINTS, OnSplinesDeletePoint)
	ON_COMMAND(ID_POPUP_SELECTION, OnPopupSelection)
	ON_COMMAND(ID_VIEW_CHANGE, OnViewChange)
	ON_COMMAND(ID_VIEW_CAMERAUPDATE, OnViewCameraupdate)
	ON_WM_SIZING()
	ON_COMMAND(ID_HELP_ABOUT, OnHelpAbout)
	ON_COMMAND(ID_VIEW_CLIPPER, OnViewClipper)
	ON_COMMAND(ID_CAMERA_ANGLEDOWN, OnCameraAngledown)
	ON_COMMAND(ID_CAMERA_ANGLEUP, OnCameraAngleup)
	ON_COMMAND(ID_CAMERA_BACK, OnCameraBack)
	ON_COMMAND(ID_CAMERA_DOWN, OnCameraDown)
	ON_COMMAND(ID_CAMERA_FORWARD, OnCameraForward)
	ON_COMMAND(ID_CAMERA_LEFT, OnCameraLeft)
	ON_COMMAND(ID_CAMERA_RIGHT, OnCameraRight)
	ON_COMMAND(ID_CAMERA_STRAFELEFT, OnCameraStrafeleft)
	ON_COMMAND(ID_CAMERA_STRAFERIGHT, OnCameraStraferight)
	ON_COMMAND(ID_CAMERA_UP, OnCameraUp)
	ON_COMMAND(ID_GRID_TOGGLE, OnGridToggle)
	ON_COMMAND(ID_PREFS, OnPrefs)
	ON_COMMAND(ID_TOGGLECAMERA, OnTogglecamera)
	ON_COMMAND(ID_TOGGLEVIEW, OnToggleview)
	ON_COMMAND(ID_TOGGLEZ, OnTogglez)
	ON_COMMAND(ID_TOGGLE_LOCK, OnToggleLock)
	ON_COMMAND(ID_EDIT_MAPINFO, OnEditMapinfo)
	ON_COMMAND(ID_EDIT_ENTITYINFO, OnEditEntityinfo)
	ON_COMMAND(ID_VIEW_NEXTVIEW, OnViewNextview)
	ON_COMMAND(ID_HELP_COMMANDLIST, OnHelpCommandlist)
	ON_COMMAND(ID_FILE_NEWPROJECT, OnFileNewproject)
	ON_COMMAND(ID_FLIP_CLIP, OnFlipClip)
	ON_COMMAND(ID_CLIP_SELECTED, OnClipSelected)
	ON_COMMAND(ID_SPLIT_SELECTED, OnSplitSelected)
	ON_COMMAND(ID_TOGGLEVIEW_XZ, OnToggleviewXz)
	ON_COMMAND(ID_TOGGLEVIEW_YZ, OnToggleviewYz)
	ON_COMMAND(ID_COLORS_BRUSH, OnColorsBrush)
	ON_COMMAND(ID_COLORS_CLIPPER, OnColorsClipper)
	ON_COMMAND(ID_COLORS_GRIDTEXT, OnColorsGridtext)
	ON_COMMAND(ID_COLORS_SELECTEDBRUSH, OnColorsSelectedbrush)
	ON_COMMAND(ID_COLORS_GRIDBLOCK, OnColorsGridblock)
	ON_COMMAND(ID_COLORS_VIEWNAME, OnColorsViewname)
	ON_COMMAND(ID_COLOR_SETORIGINAL, OnColorSetoriginal)
	ON_COMMAND(ID_COLOR_SETQER, OnColorSetqer)
	ON_COMMAND(ID_COLOR_SUPERMAL, OnColorSetSuperMal)
	ON_COMMAND(ID_THEMES_MAX , OnColorSetMax )
	ON_COMMAND(ID_COLOR_SETBLACK, OnColorSetblack)
	ON_COMMAND(ID_SNAPTOGRID, OnSnaptogrid)
	ON_COMMAND(ID_SELECT_SCALE, OnSelectScale)
	ON_COMMAND(ID_SELECT_MOUSEROTATE, OnSelectMouserotate)
	ON_COMMAND(ID_EDIT_COPYBRUSH, OnEditCopybrush)
	ON_COMMAND(ID_EDIT_PASTEBRUSH, OnEditPastebrush)
	ON_COMMAND(ID_EDIT_UNDO, OnEditUndo)
	ON_COMMAND(ID_EDIT_REDO, OnEditRedo)
	ON_UPDATE_COMMAND_UI(ID_EDIT_UNDO, OnUpdateEditUndo)
	ON_UPDATE_COMMAND_UI(ID_EDIT_REDO, OnUpdateEditRedo)
	ON_COMMAND(ID_SELECTION_INVERT, OnSelectionInvert)
	ON_COMMAND(ID_SELECTION_TEXTURE_DEC, OnSelectionTextureDec)
	ON_COMMAND(ID_SELECTION_TEXTURE_FIT, OnSelectionTextureFit)
	ON_COMMAND(ID_SELECTION_TEXTURE_INC, OnSelectionTextureInc)
	ON_COMMAND(ID_SELECTION_TEXTURE_ROTATECLOCK, OnSelectionTextureRotateclock)
	ON_COMMAND(ID_SELECTION_TEXTURE_ROTATECOUNTER, OnSelectionTextureRotatecounter)
	ON_COMMAND(ID_SELECTION_TEXTURE_SCALEDOWN, OnSelectionTextureScaledown)
	ON_COMMAND(ID_SELECTION_TEXTURE_SCALEUP, OnSelectionTextureScaleup)
	ON_COMMAND(ID_SELECTION_TEXTURE_SHIFTDOWN, OnSelectionTextureShiftdown)
	ON_COMMAND(ID_SELECTION_TEXTURE_SHIFTLEFT, OnSelectionTextureShiftleft)
	ON_COMMAND(ID_SELECTION_TEXTURE_SHIFTRIGHT, OnSelectionTextureShiftright)
	ON_COMMAND(ID_SELECTION_TEXTURE_SHIFTUP, OnSelectionTextureShiftup)
	ON_COMMAND(ID_GRID_NEXT, OnGridNext)
	ON_COMMAND(ID_GRID_PREV, OnGridPrev)
	ON_COMMAND(ID_SELECTION_TEXTURE_SCALELEFT, OnSelectionTextureScaleLeft)
	ON_COMMAND(ID_SELECTION_TEXTURE_SCALERIGHT, OnSelectionTextureScaleRight)
	ON_COMMAND(ID_TEXTURE_REPLACEALL, OnTextureReplaceall)
	ON_COMMAND(ID_SCALELOCKX, OnScalelockx)
	ON_COMMAND(ID_SCALELOCKY, OnScalelocky)
	ON_COMMAND(ID_SCALELOCKZ, OnScalelockz)
	ON_COMMAND(ID_SELECT_MOUSESCALE, OnSelectMousescale)
	ON_COMMAND(ID_VIEW_CUBICCLIPPING, OnViewCubicclipping)
	ON_COMMAND(ID_FILE_IMPORT, OnFileImport)
	ON_COMMAND(ID_FILE_PROJECTSETTINGS, OnFileProjectsettings)
	ON_UPDATE_COMMAND_UI(ID_FILE_IMPORT, OnUpdateFileImport)
	ON_COMMAND(ID_VIEW_CUBEIN, OnViewCubein)
	ON_COMMAND(ID_VIEW_CUBEOUT, OnViewCubeout)
	ON_COMMAND(ID_FILE_SAVEREGION, OnFileSaveregion)
	ON_UPDATE_COMMAND_UI(ID_FILE_SAVEREGION, OnUpdateFileSaveregion)
	ON_COMMAND(ID_SELECTION_MOVEDOWN, OnSelectionMovedown)
	ON_COMMAND(ID_SELECTION_MOVEUP, OnSelectionMoveup)
	ON_COMMAND(ID_TOOLBAR_MAIN, OnToolbarMain)
	ON_COMMAND(ID_TOOLBAR_TEXTURE, OnToolbarTexture)
	ON_COMMAND(ID_SELECTION_PRINT, OnSelectionPrint)
	ON_COMMAND(ID_SELECTION_TOGGLESIZEPAINT, OnSelectionTogglesizepaint)
	ON_COMMAND(ID_BRUSH_MAKECONE, OnBrushMakecone)
	ON_COMMAND(ID_TEXTURES_LOAD, OnTexturesLoad)
	ON_COMMAND(ID_TOGGLE_ROTATELOCK, OnToggleRotatelock)
	ON_COMMAND(ID_CURVE_BEVEL, OnCurveBevel)
	ON_COMMAND(ID_CURVE_INCREASE_VERT, OnCurveIncreaseVert)
	ON_COMMAND(ID_CURVE_DECREASE_VERT, OnCurveDecreaseVert)
	ON_COMMAND(ID_CURVE_INCREASE_HORZ, OnCurveIncreaseHorz)
	ON_COMMAND(ID_CURVE_DECREASE_HORZ, OnCurveDecreaseHorz)
	ON_COMMAND(ID_CURVE_CYLINDER, OnCurveCylinder)
	ON_COMMAND(ID_CURVE_EIGHTHSPHERE, OnCurveEighthsphere)
	ON_COMMAND(ID_CURVE_ENDCAP, OnCurveEndcap)
	ON_COMMAND(ID_CURVE_HEMISPHERE, OnCurveHemisphere)
	ON_COMMAND(ID_CURVE_INVERTCURVE, OnCurveInvertcurve)
	ON_COMMAND(ID_CURVE_QUARTER, OnCurveQuarter)
	ON_COMMAND(ID_CURVE_SPHERE, OnCurveSphere)
	ON_COMMAND(ID_FILE_IMPORTMAP, OnFileImportmap)
	ON_COMMAND(ID_FILE_EXPORTMAP, OnFileExportmap)
	ON_COMMAND(ID_EDIT_LOADPREFAB, OnEditLoadprefab)
	ON_COMMAND(ID_VIEW_SHOWCURVES, OnViewShowcurves)
	ON_COMMAND(ID_SELECTION_SELECT_NUDGEDOWN, OnSelectionSelectNudgedown)
	ON_COMMAND(ID_SELECTION_SELECT_NUDGELEFT, OnSelectionSelectNudgeleft)
	ON_COMMAND(ID_SELECTION_SELECT_NUDGERIGHT, OnSelectionSelectNudgeright)
	ON_COMMAND(ID_SELECTION_SELECT_NUDGEUP, OnSelectionSelectNudgeup)
	ON_WM_SYSKEYDOWN()
	ON_COMMAND(ID_TEXTURES_LOADLIST, OnTexturesLoadlist)
	ON_COMMAND(ID_DYNAMIC_LIGHTING, OnDynamicLighting)
	ON_COMMAND(ID_CURVE_SIMPLEPATCHMESH, OnCurveSimplepatchmesh)
	ON_COMMAND(ID_PATCH_SHOWBOUNDINGBOX, OnPatchToggleBox)
	ON_COMMAND(ID_PATCH_WIREFRAME, OnPatchWireframe)
	ON_COMMAND(ID_CURVE_PATCHCONE, OnCurvePatchcone)
	ON_COMMAND(ID_CURVE_PATCHTUBE, OnCurvePatchtube)
	ON_COMMAND(ID_PATCH_WELD, OnPatchWeld)
	ON_COMMAND(ID_CURVE_PATCHBEVEL, OnCurvePatchbevel)
	ON_COMMAND(ID_CURVE_PATCHENDCAP, OnCurvePatchendcap)
	ON_COMMAND(ID_CURVE_PATCHINVERTEDBEVEL, OnCurvePatchinvertedbevel)
	ON_COMMAND(ID_CURVE_PATCHINVERTEDENDCAP, OnCurvePatchinvertedendcap)
	ON_COMMAND(ID_PATCH_DRILLDOWN, OnPatchDrilldown)
	ON_COMMAND(ID_CURVE_INSERTCOLUMN, OnCurveInsertcolumn)
	ON_COMMAND(ID_CURVE_INSERTROW, OnCurveInsertrow)
	ON_COMMAND(ID_CURVE_DELETECOLUMN, OnCurveDeletecolumn)
	ON_COMMAND(ID_CURVE_DELETEROW, OnCurveDeleterow)
	ON_COMMAND(ID_CURVE_INSERT_ADDCOLUMN, OnCurveInsertAddcolumn)
	ON_COMMAND(ID_CURVE_INSERT_ADDROW, OnCurveInsertAddrow)
	ON_COMMAND(ID_CURVE_INSERT_INSERTCOLUMN, OnCurveInsertInsertcolumn)
	ON_COMMAND(ID_CURVE_INSERT_INSERTROW, OnCurveInsertInsertrow)
	ON_COMMAND(ID_CURVE_NEGATIVE, OnCurveNegative)
	ON_COMMAND(ID_CURVE_NEGATIVETEXTUREX, OnCurveNegativeTextureX)
	ON_COMMAND(ID_CURVE_NEGATIVETEXTUREY, OnCurveNegativeTextureY)
	ON_COMMAND(ID_CURVE_DELETE_FIRSTCOLUMN, OnCurveDeleteFirstcolumn)
	ON_COMMAND(ID_CURVE_DELETE_FIRSTROW, OnCurveDeleteFirstrow)
	ON_COMMAND(ID_CURVE_DELETE_LASTCOLUMN, OnCurveDeleteLastcolumn)
	ON_COMMAND(ID_CURVE_DELETE_LASTROW, OnCurveDeleteLastrow)
	ON_COMMAND(ID_PATCH_BEND, OnPatchBend)
	ON_COMMAND(ID_PATCH_INSDEL, OnPatchInsdel)
	ON_COMMAND(ID_PATCH_ENTER, OnPatchEnter)
	ON_COMMAND(ID_PATCH_TAB, OnPatchTab)
	ON_COMMAND(ID_CURVE_PATCHDENSETUBE, OnCurvePatchdensetube)
	ON_COMMAND(ID_CURVE_PATCHVERYDENSETUBE, OnCurvePatchverydensetube)
	ON_COMMAND(ID_CURVE_CAP, OnCurveCap)
	ON_COMMAND(ID_CURVE_CAP_INVERTEDBEVEL, OnCurveCapInvertedbevel)
	ON_COMMAND(ID_CURVE_CAP_INVERTEDENDCAP, OnCurveCapInvertedendcap)
	ON_COMMAND(ID_CURVE_REDISPERSE_COLS, OnCurveRedisperseCols)
	ON_COMMAND(ID_CURVE_REDISPERSE_ROWS, OnCurveRedisperseRows)
	ON_COMMAND(ID_PATCH_NATURALIZE, OnPatchNaturalize)
	ON_COMMAND(ID_PATCH_NATURALIZEALT, OnPatchNaturalizeAlt)
	ON_COMMAND(ID_SELECT_SNAPTOGRID, OnSnapToGrid)
	ON_COMMAND(ID_CURVE_PATCHSQUARE, OnCurvePatchsquare)
	ON_COMMAND(ID_TEXTURES_TEXTUREWINDOWSCALE_10, OnTexturesTexturewindowscale10)
	ON_COMMAND(ID_TEXTURES_TEXTUREWINDOWSCALE_100, OnTexturesTexturewindowscale100)
	ON_COMMAND(ID_TEXTURES_TEXTUREWINDOWSCALE_200, OnTexturesTexturewindowscale200)
	ON_COMMAND(ID_TEXTURES_TEXTUREWINDOWSCALE_25, OnTexturesTexturewindowscale25)
	ON_COMMAND(ID_TEXTURES_TEXTUREWINDOWSCALE_50, OnTexturesTexturewindowscale50)
	ON_COMMAND(ID_TEXTURES_FLUSH, OnTexturesFlush)
	ON_COMMAND(ID_CURVE_OVERLAY_CLEAR, OnCurveOverlayClear)
	ON_COMMAND(ID_CURVE_OVERLAY_SET, OnCurveOverlaySet)
	ON_COMMAND(ID_CURVE_THICKEN, OnCurveThicken)
	ON_COMMAND(ID_CURVE_CYCLECAP, OnCurveCyclecap)
	ON_COMMAND(ID_CURVE_CYCLECAPALT, OnCurveCyclecapAlt)
	ON_COMMAND(ID_CURVE_MATRIX_TRANSPOSE, OnCurveMatrixTranspose)
	ON_COMMAND(ID_TEXTURES_RELOADSHADERS, OnTexturesReloadshaders)
	ON_COMMAND(ID_SHOW_ENTITIES, OnShowEntities)
	ON_COMMAND(ID_VIEW_ENTITIESAS_SKINNED, OnViewEntitiesasSkinned)
	ON_COMMAND(ID_VIEW_ENTITIESAS_WIREFRAME, OnViewEntitiesasWireframe)
	ON_COMMAND(ID_VIEW_SHOWHINT, OnViewShowhint)
	ON_UPDATE_COMMAND_UI(ID_TEXTURES_SHOWINUSE, OnUpdateTexturesShowinuse)
	ON_COMMAND(ID_TEXTURES_SHOWALL, OnTexturesShowall)
	ON_COMMAND(ID_TEXTURES_HIDEALL, OnTexturesHideall)
	ON_COMMAND(ID_PATCH_INSPECTOR, OnPatchInspector)
	ON_COMMAND(ID_VIEW_OPENGLLIGHTING, OnViewOpengllighting)
	ON_COMMAND(ID_SELECT_ALL, OnSelectAll)
	ON_COMMAND(ID_VIEW_SHOWCAULK, OnViewShowcaulk)
	ON_COMMAND(ID_CURVE_FREEZE, OnCurveFreeze)
	ON_COMMAND(ID_CURVE_UNFREEZE, OnCurveUnFreeze)
	ON_COMMAND(ID_CURVE_UNFREEZEALL, OnCurveUnFreezeAll)
	ON_COMMAND(ID_SELECT_RESELECT, OnSelectReselect)
	ON_COMMAND(ID_VIEW_SHOWANGLES, OnViewShowangles)
	ON_COMMAND(ID_EDIT_SAVEPREFAB, OnEditSaveprefab)
	ON_COMMAND(ID_CURVE_MOREENDCAPSBEVELS_SQUAREBEVEL, OnCurveMoreendcapsbevelsSquarebevel)
	ON_COMMAND(ID_CURVE_MOREENDCAPSBEVELS_SQUAREENDCAP, OnCurveMoreendcapsbevelsSquareendcap)
	ON_COMMAND(ID_BRUSH_PRIMITIVES_SPHERE, OnBrushPrimitivesSphere)
	ON_COMMAND(ID_VIEW_CROSSHAIR, OnViewCrosshair)
	ON_COMMAND(ID_VIEW_HIDESHOW_HIDESELECTED, OnViewHideshowHideselected)
	ON_COMMAND(ID_VIEW_HIDESHOW_HIDENOTSELECTED, OnViewHideshowHideNotselected)
	ON_COMMAND(ID_VIEW_HIDESHOW_SHOWHIDDEN, OnViewHideshowShowhidden)
	ON_COMMAND(ID_TEXTURES_SHADERS_SHOW, OnTexturesShadersShow)
	ON_COMMAND(ID_TEXTURES_FLUSH_UNUSED, OnTexturesFlushUnused)
	ON_COMMAND(ID_PROJECTED_LIGHT, OnProjectedLight)
	ON_COMMAND(ID_SHOW_LIGHTTEXTURES, OnShowLighttextures)
	ON_COMMAND(ID_SHOW_LIGHTVOLUMES, OnShowLightvolumes)
	ON_WM_ACTIVATE()
	ON_COMMAND(ID_SPLINES_MODE, OnSplinesMode)
	ON_COMMAND(ID_SPLINES_LOAD, OnSplinesLoad)
	ON_COMMAND(ID_SPLINES_SAVE, OnSplinesSave)
	//ON_COMMAND(ID_SPLINES_EDIT, OnSplinesEdit)
	ON_COMMAND(ID_SPLINE_TEST, OnSplineTest)
	ON_COMMAND(ID_POPUP_NEWCAMERA_INTERPOLATED, OnPopupNewcameraInterpolated)
	ON_COMMAND(ID_POPUP_NEWCAMERA_SPLINE, OnPopupNewcameraSpline)
	ON_COMMAND(ID_POPUP_NEWCAMERA_FIXED, OnPopupNewcameraFixed)
	ON_COMMAND(ID_SELECTION_MOVEONLY, OnSelectionMoveonly)
	ON_COMMAND(ID_SELECT_BRUSHESONLY, OnSelectBrushesOnly)
	ON_COMMAND(ID_SELECT_BYBOUNDINGBRUSH, OnSelectByBoundingBrush)
	ON_COMMAND(ID_SELECTION_COMBINE, OnSelectionCombine)
	ON_COMMAND(ID_PATCH_COMBINE, OnPatchCombine)
	ON_COMMAND(ID_SHOW_DOOM, OnShowDoom)
	ON_COMMAND(ID_VIEW_RENDERMODE, OnViewRendermode)
	ON_COMMAND(ID_VIEW_REBUILDRENDERDATA, OnViewRebuildrenderdata)
	ON_COMMAND(ID_VIEW_REALTIMEREBUILD, OnViewRealtimerebuild)
	ON_COMMAND(ID_VIEW_RENDERENTITYOUTLINES, OnViewRenderentityoutlines)
	ON_COMMAND(ID_VIEW_MATERIALANIMATION, OnViewMaterialanimation)
	ON_COMMAND(ID_SELECT_AXIALTEXTURE_BYWIDTH, OnAxialTextureByWidth)
	ON_COMMAND(ID_SELECT_AXIALTEXTURE_BYHEIGHT, OnAxialTextureByHeight)
	ON_COMMAND(ID_SELECT_AXIALTEXTURE_ARBITRARY, OnAxialTextureArbitrary)
	ON_COMMAND(ID_SELECTION_EXPORT_TOOBJ, OnSelectionExportToobj)
	ON_COMMAND(ID_SELECTION_EXPORT_TOCM, OnSelectionExportToCM)
	ON_COMMAND(ID_VIEW_RENDERSELECTION, OnViewRenderselection)
	ON_COMMAND(ID_SELECT_NOMODELS, OnSelectNomodels)
	ON_COMMAND(ID_VIEW_SHOW_SHOWVISPORTALS, OnViewShowShowvisportals)
	ON_COMMAND(ID_VIEW_SHOW_NODRAW, OnViewShowNoDraw)
	ON_COMMAND(ID_VIEW_RENDERSOUND, OnViewRendersound)
	ON_COMMAND(ID_SOUND_SHOWSOUNDVOLUMES, OnSoundShowsoundvolumes)
	ON_COMMAND(ID_SOUND_SHOWSELECTEDSOUNDVOLUMES, OnSoundShowselectedsoundvolumes)
	ON_COMMAND(ID_PATCH_NURBEDITOR, OnNurbEditor)
    ON_COMMAND(ID_SELECT_COMPLETE_ENTITY, OnSelectCompleteEntity)
	ON_COMMAND(ID_PRECISION_CURSOR_CYCLE , OnPrecisionCursorCycle)
	ON_COMMAND(ID_MATERIALS_GENERATEMATERIALSLIST,OnGenerateMaterialsList)
	ON_COMMAND(ID_SELECTION_VIEW_WIREFRAMEON, OnSelectionWireFrameOn)
	ON_COMMAND(ID_SELECTION_VIEW_WIREFRAMEOFF, OnSelectionWireFrameOff)
	ON_COMMAND(ID_SELECTION_VIEW_VISIBLEON, OnSelectionVisibleOn)
	ON_COMMAND(ID_SELECTION_VIEW_VISIBLEOFF, OnSelectionVisibleOff)
	//}}AFX_MSG_MAP
	ON_COMMAND_RANGE(CMD_TEXTUREWAD, CMD_TEXTUREWAD_END, OnTextureWad)
	ON_COMMAND_RANGE(CMD_BSPCOMMAND, CMD_BSPCOMMAND_END, OnBspCommand)
	ON_COMMAND_RANGE(IDMRU, IDMRU_END, OnMru)
	ON_COMMAND_RANGE(ID_VIEW_NEAREST, ID_TEXTURES_FLATSHADE, OnViewNearest)
	ON_COMMAND_RANGE(ID_GRID_POINT0625, ID_GRID_64, OnGrid1)
#if _MSC_VER < 1300
	ON_REGISTERED_MESSAGE(g_msgBSPDone, OnBSPDone) 
	ON_REGISTERED_MESSAGE(g_msgBSPStatus, OnBSPStatus)
	ON_MESSAGE(WM_DISPLAYCHANGE, OnDisplayChange)
#endif
	ON_COMMAND(ID_AUTOCAULK, OnAutocaulk)
	ON_UPDATE_COMMAND_UI(ID_AUTOCAULK, OnUpdateAutocaulk)
	ON_COMMAND(ID_SELECT_ALLTARGETS, OnSelectAlltargets)
	END_MESSAGE_MAP()
static UINT indicators[] = {
	ID_SEPARATOR,	// status line indicator
	ID_SEPARATOR,	// status line indicator
	ID_SEPARATOR,	// status line indicator
	ID_SEPARATOR,	// status line indicator
	ID_SEPARATOR,	// status line indicator
	ID_SEPARATOR,	// status line indicator
};

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnDisplayChange(UINT wParam, long lParam) {
    Sys_Printf("void CMainFrame::OnDisplayChange(UINT wParam, long lParam)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnBSPStatus(UINT wParam, long lParam) {
    Sys_Printf("void CMainFrame::OnBSPStatus(UINT wParam, long lParam)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnBSPDone(UINT wParam, long lParam) {
    Sys_Printf("void CMainFrame::OnBSPDone(UINT wParam, long lParam)\r\n");
}


//
// =======================================================================================================================
//    CMainFrame construction/destruction
// =======================================================================================================================
//
CMainFrame::CMainFrame() {
	m_bDoLoop = false;
	g_pParentWnd = this;
	m_pXYWnd = NULL;
	m_pCamWnd = NULL;
	m_pZWnd = NULL;
	m_pYZWnd = NULL;
	m_pXZWnd = NULL;
	m_pActiveXY = NULL;
	m_bCamPreview = true;
	nurbMode = 0;
}

/*
 =======================================================================================================================
 =======================================================================================================================
 */
CMainFrame::~CMainFrame() {
}

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void HandlePopup(CWnd *pWindow, unsigned int uId) {
    Sys_Printf("void HandlePopup(CWnd *pWindow, unsigned int uId)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnParentNotify(UINT message, LPARAM lParam) {
    Sys_Printf("void CMainFrame::OnParentNotify(UINT message, LPARAM lParam)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::SetButtonMenuStates() {
    Sys_Printf("void CMainFrame::SetButtonMenuStates()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::ShowMenuItemKeyBindings(CMenu *pMenu) {
    Sys_Printf("void CMainFrame::ShowMenuItemKeyBindings(CMenu *pMenu)\r\n");
}


/*
==============
MFCCreate
==============
*/
void MFCCreate( HINSTANCE hInstance )
{
    Sys_Printf("void MFCCreate( HINSTANCE hInstance )\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
int CMainFrame::OnCreate(LPCREATESTRUCT lpCreateStruct) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CMainFrame::OnCreate(LPCREATESTRUCT lpCreateStruct)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */

void FindReplace(CString& strContents, const char* pTag, const char* pValue) {
    Sys_Printf("void FindReplace(CString& strContents, const char* pTag, const char* pValue)\r\n");
}


void CMainFrame::LoadCommandMap() {
    Sys_Printf("void CMainFrame::LoadCommandMap()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
BOOL CMainFrame::PreCreateWindow(CREATESTRUCT &cs) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CMainFrame::PreCreateWindow(CREATESTRUCT &cs)\r\n");
    return retVal;
}


// CMainFrame diagnostics
#ifdef _DEBUG

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::AssertValid() const {
    Sys_Printf("void CMainFrame::AssertValid()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::Dump(CDumpContext &dc) const {
    Sys_Printf("void CMainFrame::Dump(CDumpContext &dc)\r\n");
}

#endif // _DEBUG

//
// =======================================================================================================================
//    CMainFrame message handlers
// =======================================================================================================================
//
void CMainFrame::CreateQEChildren() {
    Sys_Printf("void CMainFrame::CreateQEChildren()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
BOOL CMainFrame::OnCommand(WPARAM wParam, LPARAM lParam) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CMainFrame::OnCommand(WPARAM wParam, LPARAM lParam)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
LRESULT CMainFrame::DefWindowProc(UINT message, WPARAM wParam, LPARAM lParam) {
    LRESULT retVal;
    memset(&retVal, 0, sizeof(LRESULT));
    Sys_Printf("LRESULT CMainFrame::DefWindowProc(UINT message, WPARAM wParam, LPARAM lParam)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::RoutineProcessing() {
    Sys_Printf("void CMainFrame::RoutineProcessing()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
LRESULT CMainFrame::WindowProc(UINT message, WPARAM wParam, LPARAM lParam) {
    LRESULT retVal;
    memset(&retVal, 0, sizeof(LRESULT));
    Sys_Printf("LRESULT CMainFrame::WindowProc(UINT message, WPARAM wParam, LPARAM lParam)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool MouseDown() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MouseDown()\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */

void CMainFrame::OnTimer(UINT nIDEvent) {
    Sys_Printf("void CMainFrame::OnTimer(UINT nIDEvent)\r\n");
}


struct SplitInfo {
	int m_nMin;
	int m_nCur;
};

/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool LoadWindowPlacement(HWND hwnd, const char *pName) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool LoadWindowPlacement(HWND hwnd, const char *pName)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void SaveWindowPlacement(HWND hwnd, const char *pName) {
    Sys_Printf("void SaveWindowPlacement(HWND hwnd, const char *pName)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnDestroy() {
    Sys_Printf("void CMainFrame::OnDestroy()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnClose() {
    Sys_Printf("void CMainFrame::OnClose()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnKeyUp(UINT nChar, UINT nRepCnt, UINT nFlags) {
    Sys_Printf("void CMainFrame::OnKeyUp(UINT nChar, UINT nRepCnt, UINT nFlags)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool CamOK(unsigned int nKey) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CamOK(unsigned int nKey)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSysKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) {
    Sys_Printf("void CMainFrame::OnSysKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) {
    Sys_Printf("void CMainFrame::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
BOOL CMainFrame::OnCreateClient(LPCREATESTRUCT lpcs, CCreateContext *pContext) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CMainFrame::OnCreateClient(LPCREATESTRUCT lpcs, CCreateContext *pContext)\r\n");
    return retVal;
}


CRect	g_rctOld(0, 0, 0, 0);

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSize(UINT nType, int cx, int cy) {
    Sys_Printf("void CMainFrame::OnSize(UINT nType, int cx, int cy)\r\n");
}


void	OpenDialog(void);
void	SaveAsDialog(bool bRegion);
void	Select_Ungroup();

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::ToggleCamera() {
    Sys_Printf("void CMainFrame::ToggleCamera()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnFileClose() {
    Sys_Printf("void CMainFrame::OnFileClose()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnFileExit() {
    Sys_Printf("void CMainFrame::OnFileExit()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnFileLoadproject() {
    Sys_Printf("void CMainFrame::OnFileLoadproject()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnFileNew() {
    Sys_Printf("void CMainFrame::OnFileNew()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnFileOpen() {
    Sys_Printf("void CMainFrame::OnFileOpen()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnFilePointfile() {
    Sys_Printf("void CMainFrame::OnFilePointfile()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnFilePrint() {
    Sys_Printf("void CMainFrame::OnFilePrint()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnFilePrintPreview() {
    Sys_Printf("void CMainFrame::OnFilePrintPreview()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnFileSave() {
    Sys_Printf("void CMainFrame::OnFileSave()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnFileSaveas() {
    Sys_Printf("void CMainFrame::OnFileSaveas()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnFileSaveCopy() {
    Sys_Printf("void CMainFrame::OnFileSaveCopy()\r\n");
}


/*
==================================================================================================
*/
void CMainFrame::OnViewShowModels() {
    Sys_Printf("void CMainFrame::OnViewShowModels()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnView100() {
    Sys_Printf("void CMainFrame::OnView100()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewCenter() {
    Sys_Printf("void CMainFrame::OnViewCenter()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewConsole() {
    Sys_Printf("void CMainFrame::OnViewConsole()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewDownfloor() {
    Sys_Printf("void CMainFrame::OnViewDownfloor()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewEntity() {
    Sys_Printf("void CMainFrame::OnViewEntity()\r\n");
}


void CMainFrame::OnViewMediaBrowser() {
    Sys_Printf("void CMainFrame::OnViewMediaBrowser()\r\n");
}




/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewFront() {
    Sys_Printf("void CMainFrame::OnViewFront()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */

BOOL DoMru(HWND hWnd,WORD wId)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DoMru(HWND hWnd,WORD wId)\r\n");
    return retVal;
}


void CMainFrame::OnMru(unsigned int nID) {
    Sys_Printf("void CMainFrame::OnMru(unsigned int nID)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewNearest(unsigned int nID) {
    Sys_Printf("void CMainFrame::OnViewNearest(unsigned int nID)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTextureWad(unsigned int nID) {
    Sys_Printf("void CMainFrame::OnTextureWad(unsigned int nID)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */

/*
============
RunBsp

This is the new all-internal bsp
============
*/
void RunBsp (const char *command) {
    Sys_Printf("void RunBsp (const char *command)\r\n");
}


void CMainFrame::OnBspCommand(unsigned int nID) {
    Sys_Printf("void CMainFrame::OnBspCommand(unsigned int nID)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewShowblocks() {
    Sys_Printf("void CMainFrame::OnViewShowblocks()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewShowclip() {
    Sys_Printf("void CMainFrame::OnViewShowclip()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewShowTriggers() {
    Sys_Printf("void CMainFrame::OnViewShowTriggers()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewShowcoordinates() {
    Sys_Printf("void CMainFrame::OnViewShowcoordinates()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewShowent() {
    Sys_Printf("void CMainFrame::OnViewShowent()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewShowlights() {
    Sys_Printf("void CMainFrame::OnViewShowlights()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewShownames() {
    Sys_Printf("void CMainFrame::OnViewShownames()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewShowpath() {
    Sys_Printf("void CMainFrame::OnViewShowpath()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewShowCombatNodes() {
    Sys_Printf("void CMainFrame::OnViewShowCombatNodes()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewShowwater() {
    Sys_Printf("void CMainFrame::OnViewShowwater()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewShowworld() {
    Sys_Printf("void CMainFrame::OnViewShowworld()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewTexture() {
    Sys_Printf("void CMainFrame::OnViewTexture()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewUpfloor() {
    Sys_Printf("void CMainFrame::OnViewUpfloor()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewXy() {
    Sys_Printf("void CMainFrame::OnViewXy()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewZ100() {
    Sys_Printf("void CMainFrame::OnViewZ100()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewZoomin() {
    Sys_Printf("void CMainFrame::OnViewZoomin()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewZoomout() {
    Sys_Printf("void CMainFrame::OnViewZoomout()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewZzoomin() {
    Sys_Printf("void CMainFrame::OnViewZzoomin()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewZzoomout() {
    Sys_Printf("void CMainFrame::OnViewZzoomout()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewSide() {
    Sys_Printf("void CMainFrame::OnViewSide()\r\n");
}


static void UpdateGrid(void)
{
    Sys_Printf("void UpdateGrid(void)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnGrid1(unsigned int nID) {
    Sys_Printf("void CMainFrame::OnGrid1(unsigned int nID)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTexturesShowinuse() {
    Sys_Printf("void CMainFrame::OnTexturesShowinuse()\r\n");
}


// from TexWnd.cpp
extern bool texture_showinuse;

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnUpdateTexturesShowinuse(CCmdUI *pCmdUI) {
    Sys_Printf("void CMainFrame::OnUpdateTexturesShowinuse(CCmdUI *pCmdUI)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTexturesInspector() {
    Sys_Printf("void CMainFrame::OnTexturesInspector()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnMiscFindbrush() {
    Sys_Printf("void CMainFrame::OnMiscFindbrush()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnMiscGamma() {
    Sys_Printf("void CMainFrame::OnMiscGamma()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnMiscNextleakspot() {
    Sys_Printf("void CMainFrame::OnMiscNextleakspot()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnMiscPreviousleakspot() {
    Sys_Printf("void CMainFrame::OnMiscPreviousleakspot()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnMiscPrintxy() {
    Sys_Printf("void CMainFrame::OnMiscPrintxy()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */

void UpdateRadiantColor( float r, float g, float b, float a ) {
    Sys_Printf("void UpdateRadiantColor( float r, float g, float b, float a )\r\n");
}


bool DoColor( int iIndex ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool DoColor( int iIndex )\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
extern void Select_SetKeyVal(const char *key, const char *val);
void CMainFrame::OnMiscSelectentitycolor() {
    Sys_Printf("void CMainFrame::OnMiscSelectentitycolor()\r\n");
}


CString strFindKey;
CString strFindValue;
CString strReplaceKey;
CString strReplaceValue;
bool    gbWholeStringMatchOnly = true;
bool	gbSelectAllMatchingEnts= false;
brush_t* gpPrevEntBrushFound = NULL;

// all this because there's no ansi stristr(), sigh...
//
LPCSTR String_ToLower(LPCSTR psString)
{
    LPCSTR retVal;
    memset(&retVal, 0, sizeof(LPCSTR));
    Sys_Printf("LPCSTR String_ToLower(LPCSTR psString)\r\n");
    return retVal;
}



bool FindNextBrush(brush_t* pPrevFoundBrush)	// can be NULL for fresh search
{	
	bool bFoundSomething = false;
	entity_t *pLastFoundEnt;
	brush_t  *pLastFoundBrush;

	CWaitCursor waitcursor;

	Select_Deselect(true);	// bool bDeSelectToListBack

	// see whether to start search from prev_brush->next by checking if prev_brush is still in the active list...
	//
	brush_t *pStartBrush = active_brushes.next;

	if (pPrevFoundBrush && !gbSelectAllMatchingEnts)
	{
		brush_t *pPrev = NULL;
		for (brush_t* b = active_brushes.next ; b != &active_brushes ; b = b->next)
		{
			if (pPrev == pPrevFoundBrush && pPrevFoundBrush)
			{
				pStartBrush = b;
				break;
			}
			pPrev = b;
		}
	}

	// now do the search proper...
	//	
	int iBrushesScanned = 0;
	int iBrushesSelected=0;
	int iEntsScanned = 0;

	brush_t* pNextBrush;		
	for (brush_t* b = pStartBrush; b != &active_brushes ; b = pNextBrush)
	{	
		// setup the <nextbrush> ptr before going any further (because selecting a brush down below moves it to a 
		//	different link list), but we need to ensure that the next brush has a different ent-owner than the current
		//	one, or multi-brush ents will confuse the list process if they get selected (infinite loop badness)...
		//
		// pNextBrush = &active_brushes;	// default to loop-stop condition
		pNextBrush = b->next;
		while (pNextBrush->owner == b->owner && pNextBrush!=&active_brushes)
		{
			pNextBrush = pNextBrush->next;
		}

		iBrushesScanned++;

		// a simple progress bar so they don't think it's locked up on long searches...
		//
		static int iDotBodge=0;
		if (!(++iDotBodge&15))
			common->Printf(".");	// cut down on printing		

		bool bMatch = false;
		entity_t* ent = b->owner;

		if (ent && ent!= world_entity)	// needed!
		{
			iEntsScanned++;
	 		if (FilterBrush (b))
	 			continue;			

			// only check the find-key if there was one specified...
			//
			if (!strFindKey.IsEmpty())
			{
				const char *psEntFoundValue = ValueForKey(ent, strFindKey);

				if (strlen(psEntFoundValue)
						&&
						(
//							(stricmp(strFindValue, psEntFoundValue)==0)	// found this exact key/value
							(
							(gbWholeStringMatchOnly && stricmp(psEntFoundValue, strFindValue)==0)
							||
							(!gbWholeStringMatchOnly && strstr(String_ToLower(psEntFoundValue), String_ToLower(strFindValue)))
							)
							||											//  or
							(strFindValue.IsEmpty())					// any value for this key if blank value search specified
						)
					)
				{
					bMatch = true;
				}
			}
			else
			{
				// no FIND key specified, so just scan all of them...
				//
				int iNumEntKeys = GetNumKeys(ent);
				for (int i=0; i<iNumEntKeys; i++)
				{
					const char *psEntFoundValue = ValueForKey(ent, GetKeyString(ent, i));
					if (psEntFoundValue)
					{
						if (	(strlen(psEntFoundValue) &&	strFindValue.IsEmpty())	// if blank <value> search specified then any found-value is ok
								||
								(gbWholeStringMatchOnly && stricmp(psEntFoundValue, strFindValue)==0)
								||
								(!gbWholeStringMatchOnly && strstr(String_ToLower(psEntFoundValue), String_ToLower(strFindValue)))
							)
						{
							if (!gbWholeStringMatchOnly && strstr(String_ToLower(psEntFoundValue), String_ToLower(strFindValue)))
							{
//								OutputDebugString(va("Matching because: psEntFoundValue '%s' & strFindValue '%s'\n",psEntFoundValue, strFindValue));
//								Sys_Printf("Matching because: psEntFoundValue '%s' & strFindValue '%s'\n",psEntFoundValue, strFindValue);

//								if (strstr(psEntFoundValue,"killsplat"))
//								{
//									DebugBreak();
//								}
							}
							bMatch = true;
							break;
						}
					}
				}
			}

			if (bMatch)
			{
				bFoundSomething = true;
				pLastFoundEnt	= ent;
				pLastFoundBrush	= b;
				iBrushesSelected++;

				g_bScreenUpdates = false;	// !!!!!!!!!!!!!!!!!!!!!!!!!!!!
				
					Select_Brush(b);

				g_bScreenUpdates = true;	// !!!!!!!!!!!!!!!!!!!!!!!!!!!!

				if (!gbSelectAllMatchingEnts)
					break;
			}
		}
	}
	if (gbSelectAllMatchingEnts)
	{
		common->Printf("\nBrushes Selected: %d           (Brushes Scanned %d, Ents Scanned %d)\n", iBrushesSelected, iBrushesScanned, iEntsScanned);
	}

	if (bFoundSomething)
	{
		idVec3 v3Origin;

		if (pLastFoundEnt->origin[0] != 0.0f || pLastFoundEnt->origin[1] != 0.0f || pLastFoundEnt->origin[2] != 0.0f)
		{
			VectorCopy(pLastFoundEnt->origin,v3Origin);
		}
		else
		{
			// pLastFoundEnt's origin is zero, so use average point of brush mins maxs instead...
			//
			v3Origin[0] = (pLastFoundBrush->mins[0] + pLastFoundBrush->maxs[0])/2;
			v3Origin[1] = (pLastFoundBrush->mins[1] + pLastFoundBrush->maxs[1])/2;
			v3Origin[2] = (pLastFoundBrush->mins[2] + pLastFoundBrush->maxs[2])/2;
		}

		// got one, jump the camera to it...
		//
		VectorCopy(v3Origin, g_pParentWnd->GetCamera()->Camera().origin);
							 g_pParentWnd->GetCamera()->Camera().origin[1] -= 32;	// back off a touch to look at it
		g_pParentWnd->GetCamera()->Camera().angles[0] = 0;
		g_pParentWnd->GetCamera()->Camera().angles[1] = 90;
		g_pParentWnd->GetCamera()->Camera().angles[2] = 0;

		// force main screen into XY camera mode (just in case)...
		//
		g_pParentWnd->SetActiveXY(g_pParentWnd->GetXYWnd());
		g_pParentWnd->GetXYWnd()->PositionView();

		Sys_UpdateWindows (W_ALL);
		//
		// and record for next find request (F3)...
		//
		gpPrevEntBrushFound = pLastFoundBrush;
	}

	return bFoundSomething;
}


void CMainFrame::OnMiscFindOrReplaceEntity()
{
    Sys_Printf("void CMainFrame::OnMiscFindOrReplaceEntity()\r\n");
}

void CMainFrame::OnMiscFindNextEntity()
{
    Sys_Printf("void CMainFrame::OnMiscFindNextEntity()\r\n");
}


void CMainFrame::OnMiscSetViewPos()
{
    Sys_Printf("void CMainFrame::OnMiscSetViewPos()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTexturebk() {
    Sys_Printf("void CMainFrame::OnTexturebk()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnColorsMajor() {
    Sys_Printf("void CMainFrame::OnColorsMajor()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnColorsMinor() {
    Sys_Printf("void CMainFrame::OnColorsMinor()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnColorsXybk() {
    Sys_Printf("void CMainFrame::OnColorsXybk()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnBrush3sided() {
    Sys_Printf("void CMainFrame::OnBrush3sided()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnBrush4sided() {
    Sys_Printf("void CMainFrame::OnBrush4sided()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnBrush5sided() {
    Sys_Printf("void CMainFrame::OnBrush5sided()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnBrush6sided() {
    Sys_Printf("void CMainFrame::OnBrush6sided()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnBrush7sided() {
    Sys_Printf("void CMainFrame::OnBrush7sided()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnBrush8sided() {
    Sys_Printf("void CMainFrame::OnBrush8sided()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnBrush9sided() {
    Sys_Printf("void CMainFrame::OnBrush9sided()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnBrushArbitrarysided() {
    Sys_Printf("void CMainFrame::OnBrushArbitrarysided()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnBrushFlipx() {
    Sys_Printf("void CMainFrame::OnBrushFlipx()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnBrushFlipy() {
    Sys_Printf("void CMainFrame::OnBrushFlipy()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnBrushFlipz() {
    Sys_Printf("void CMainFrame::OnBrushFlipz()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnBrushRotatex() {
    Sys_Printf("void CMainFrame::OnBrushRotatex()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnBrushRotatey() {
    Sys_Printf("void CMainFrame::OnBrushRotatey()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnBrushRotatez() {
    Sys_Printf("void CMainFrame::OnBrushRotatez()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnRegionOff() {
    Sys_Printf("void CMainFrame::OnRegionOff()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnRegionSetbrush() {
    Sys_Printf("void CMainFrame::OnRegionSetbrush()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnRegionSetselection() {
    Sys_Printf("void CMainFrame::OnRegionSetselection()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnRegionSettallbrush() {
    Sys_Printf("void CMainFrame::OnRegionSettallbrush()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnRegionSetxy() {
    Sys_Printf("void CMainFrame::OnRegionSetxy()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionArbitraryrotation() {
    Sys_Printf("void CMainFrame::OnSelectionArbitraryrotation()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionClone() {
    Sys_Printf("void CMainFrame::OnSelectionClone()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionConnect() {
    Sys_Printf("void CMainFrame::OnSelectionConnect()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionMakehollow() {
    Sys_Printf("void CMainFrame::OnSelectionMakehollow()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionCsgsubtract() {
    Sys_Printf("void CMainFrame::OnSelectionCsgsubtract()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionCsgmerge() {
    Sys_Printf("void CMainFrame::OnSelectionCsgmerge()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionDelete() {
    Sys_Printf("void CMainFrame::OnSelectionDelete()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionDeselect() {
    Sys_Printf("void CMainFrame::OnSelectionDeselect()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionDragedges() {
    Sys_Printf("void CMainFrame::OnSelectionDragedges()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionDragvertecies() {
    Sys_Printf("void CMainFrame::OnSelectionDragvertecies()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionCenterOrigin() {
    Sys_Printf("void CMainFrame::OnSelectionCenterOrigin()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionSelectcompletetall() {
    Sys_Printf("void CMainFrame::OnSelectionSelectcompletetall()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionSelectinside() {
    Sys_Printf("void CMainFrame::OnSelectionSelectinside()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionSelectpartialtall() {
    Sys_Printf("void CMainFrame::OnSelectionSelectpartialtall()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionSelecttouching() {
    Sys_Printf("void CMainFrame::OnSelectionSelecttouching()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionUngroupentity() {
    Sys_Printf("void CMainFrame::OnSelectionUngroupentity()\r\n");
}


void CMainFrame::OnAutocaulk()
{
    Sys_Printf("void CMainFrame::OnAutocaulk()\r\n");
}

void CMainFrame::OnUpdateAutocaulk(CCmdUI* pCmdUI)
{
    Sys_Printf("void CMainFrame::OnUpdateAutocaulk(CCmdUI* pCmdUI)\r\n");
}



/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTexturesPopup() {
    Sys_Printf("void CMainFrame::OnTexturesPopup()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSplinesPopup() {
    Sys_Printf("void CMainFrame::OnSplinesPopup()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnPopupSelection() {
    Sys_Printf("void CMainFrame::OnPopupSelection()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewChange() {
    Sys_Printf("void CMainFrame::OnViewChange()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewCameraupdate() {
    Sys_Printf("void CMainFrame::OnViewCameraupdate()\r\n");
}



/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSizing(UINT fwSide, LPRECT pRect) {
    Sys_Printf("void CMainFrame::OnSizing(UINT fwSide, LPRECT pRect)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnHelpAbout() {
    Sys_Printf("void CMainFrame::OnHelpAbout()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewClipper() {
    Sys_Printf("void CMainFrame::OnViewClipper()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCameraAngledown() {
    Sys_Printf("void CMainFrame::OnCameraAngledown()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCameraAngleup() {
    Sys_Printf("void CMainFrame::OnCameraAngleup()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCameraBack() {
    Sys_Printf("void CMainFrame::OnCameraBack()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCameraDown() {
    Sys_Printf("void CMainFrame::OnCameraDown()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCameraForward() {
    Sys_Printf("void CMainFrame::OnCameraForward()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCameraLeft() {
    Sys_Printf("void CMainFrame::OnCameraLeft()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCameraRight() {
    Sys_Printf("void CMainFrame::OnCameraRight()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCameraStrafeleft() {
    Sys_Printf("void CMainFrame::OnCameraStrafeleft()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCameraStraferight() {
    Sys_Printf("void CMainFrame::OnCameraStraferight()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCameraUp() {
    Sys_Printf("void CMainFrame::OnCameraUp()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnGridToggle() {
    Sys_Printf("void CMainFrame::OnGridToggle()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnPrefs() {
    Sys_Printf("void CMainFrame::OnPrefs()\r\n");
}


//
// =======================================================================================================================
//    0 = radiant styel 1 = qe4 style
// =======================================================================================================================
//
void CMainFrame::SetWindowStyle(int nStyle) {
    Sys_Printf("void CMainFrame::SetWindowStyle(int nStyle)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTogglecamera() {
    Sys_Printf("void CMainFrame::OnTogglecamera()\r\n");
}



/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnToggleview() {
    Sys_Printf("void CMainFrame::OnToggleview()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTogglez() {
    Sys_Printf("void CMainFrame::OnTogglez()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnToggleLock() {
    Sys_Printf("void CMainFrame::OnToggleLock()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnEditMapinfo() {
    Sys_Printf("void CMainFrame::OnEditMapinfo()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnEditEntityinfo() {
    Sys_Printf("void CMainFrame::OnEditEntityinfo()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewNextview() {
    Sys_Printf("void CMainFrame::OnViewNextview()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnHelpCommandlist() {
    Sys_Printf("void CMainFrame::OnHelpCommandlist()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnFileNewproject()
{
    Sys_Printf("void CMainFrame::OnFileNewproject()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::UpdateStatusText() {
    Sys_Printf("void CMainFrame::UpdateStatusText()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::SetStatusText(int nPane, const char *pText) {
    Sys_Printf("void CMainFrame::SetStatusText(int nPane, const char *pText)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::UpdateWindows(int nBits) {
    Sys_Printf("void CMainFrame::UpdateWindows(int nBits)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void WINAPI Sys_UpdateWindows(int nBits) {
    WINAPI retVal;
    memset(&retVal, 0, sizeof(WINAPI));
    Sys_Printf("WINAPI Sys_UpdateWindows(int nBits)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnFlipClip() {
    Sys_Printf("void CMainFrame::OnFlipClip()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnClipSelected() {
    Sys_Printf("void CMainFrame::OnClipSelected()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSplitSelected() {
    Sys_Printf("void CMainFrame::OnSplitSelected()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
CXYWnd *CMainFrame::ActiveXY() {
    Sys_Printf("CXYWnd *CMainFrame::ActiveXY()\r\n");
    return NULL;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnToggleviewXz() {
    Sys_Printf("void CMainFrame::OnToggleviewXz()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnToggleviewYz() {
    Sys_Printf("void CMainFrame::OnToggleviewYz()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */

void CMainFrame::OnToggleToolbar()
{
    Sys_Printf("void CMainFrame::OnToggleToolbar()\r\n");
}


void CMainFrame::OnToggleTextureBar()
{
    Sys_Printf("void CMainFrame::OnToggleTextureBar()\r\n");
}



/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnColorsBrush() {
    Sys_Printf("void CMainFrame::OnColorsBrush()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnColorsClipper() {
    Sys_Printf("void CMainFrame::OnColorsClipper()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnColorsGridtext() {
    Sys_Printf("void CMainFrame::OnColorsGridtext()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnColorsSelectedbrush() {
    Sys_Printf("void CMainFrame::OnColorsSelectedbrush()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnColorsGridblock() {
    Sys_Printf("void CMainFrame::OnColorsGridblock()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnColorsViewname() {
    Sys_Printf("void CMainFrame::OnColorsViewname()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnColorSetoriginal() {
    Sys_Printf("void CMainFrame::OnColorSetoriginal()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnColorSetqer() {
    Sys_Printf("void CMainFrame::OnColorSetqer()\r\n");
}


//FIXME: these just need to be read from a def file
void CMainFrame::OnColorSetSuperMal() {
    Sys_Printf("void CMainFrame::OnColorSetSuperMal()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnColorSetblack() {
    Sys_Printf("void CMainFrame::OnColorSetblack()\r\n");
}


void CMainFrame::OnColorSetMax() {
    Sys_Printf("void CMainFrame::OnColorSetMax()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSnaptogrid() {
    Sys_Printf("void CMainFrame::OnSnaptogrid()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectScale() {
    Sys_Printf("void CMainFrame::OnSelectScale()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectMouserotate() {
    Sys_Printf("void CMainFrame::OnSelectMouserotate()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnEditCopybrush() {
    Sys_Printf("void CMainFrame::OnEditCopybrush()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnEditPastebrush() {
    Sys_Printf("void CMainFrame::OnEditPastebrush()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnEditUndo() {
    Sys_Printf("void CMainFrame::OnEditUndo()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnEditRedo() {
    Sys_Printf("void CMainFrame::OnEditRedo()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnUpdateEditUndo(CCmdUI *pCmdUI) {
    Sys_Printf("void CMainFrame::OnUpdateEditUndo(CCmdUI *pCmdUI)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnUpdateEditRedo(CCmdUI *pCmdUI) {
    Sys_Printf("void CMainFrame::OnUpdateEditRedo(CCmdUI *pCmdUI)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionTextureDec() {
    Sys_Printf("void CMainFrame::OnSelectionTextureDec()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionTextureFit() {
    Sys_Printf("void CMainFrame::OnSelectionTextureFit()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionTextureInc() {
    Sys_Printf("void CMainFrame::OnSelectionTextureInc()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionTextureRotateclock() {
    Sys_Printf("void CMainFrame::OnSelectionTextureRotateclock()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionTextureRotatecounter() {
    Sys_Printf("void CMainFrame::OnSelectionTextureRotatecounter()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionTextureScaledown() {
    Sys_Printf("void CMainFrame::OnSelectionTextureScaledown()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionTextureScaleup() {
    Sys_Printf("void CMainFrame::OnSelectionTextureScaleup()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionTextureScaleLeft() {
    Sys_Printf("void CMainFrame::OnSelectionTextureScaleLeft()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionTextureScaleRight() {
    Sys_Printf("void CMainFrame::OnSelectionTextureScaleRight()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionTextureShiftdown() {
    Sys_Printf("void CMainFrame::OnSelectionTextureShiftdown()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionTextureShiftleft() {
    Sys_Printf("void CMainFrame::OnSelectionTextureShiftleft()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionTextureShiftright() {
    Sys_Printf("void CMainFrame::OnSelectionTextureShiftright()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionTextureShiftup() {
    Sys_Printf("void CMainFrame::OnSelectionTextureShiftup()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::SetGridChecks(int id) {
    Sys_Printf("void CMainFrame::SetGridChecks(int id)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnGridNext() {
    Sys_Printf("void CMainFrame::OnGridNext()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnGridPrev() {
    Sys_Printf("void CMainFrame::OnGridPrev()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::SetGridStatus() {
    Sys_Printf("void CMainFrame::SetGridStatus()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::SetTexValStatus() {
    Sys_Printf("void CMainFrame::SetTexValStatus()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTextureReplaceall() {
    Sys_Printf("void CMainFrame::OnTextureReplaceall()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnScalelockx() {
    Sys_Printf("void CMainFrame::OnScalelockx()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnScalelocky() {
    Sys_Printf("void CMainFrame::OnScalelocky()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnScalelockz() {
    Sys_Printf("void CMainFrame::OnScalelockz()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectMousescale() {
    Sys_Printf("void CMainFrame::OnSelectMousescale()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnFileImport() {
    Sys_Printf("void CMainFrame::OnFileImport()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnFileProjectsettings() {
    Sys_Printf("void CMainFrame::OnFileProjectsettings()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnUpdateFileImport(CCmdUI *pCmdUI) {
    Sys_Printf("void CMainFrame::OnUpdateFileImport(CCmdUI *pCmdUI)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewCubein() {
    Sys_Printf("void CMainFrame::OnViewCubein()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewCubeout() {
    Sys_Printf("void CMainFrame::OnViewCubeout()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewCubicclipping() {
    Sys_Printf("void CMainFrame::OnViewCubicclipping()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnFileSaveregion() {
    Sys_Printf("void CMainFrame::OnFileSaveregion()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnUpdateFileSaveregion(CCmdUI *pCmdUI) {
    Sys_Printf("void CMainFrame::OnUpdateFileSaveregion(CCmdUI *pCmdUI)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionMovedown() {
    Sys_Printf("void CMainFrame::OnSelectionMovedown()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionMoveup() {
    Sys_Printf("void CMainFrame::OnSelectionMoveup()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnToolbarMain() {
    Sys_Printf("void CMainFrame::OnToolbarMain()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnToolbarTexture() {
    Sys_Printf("void CMainFrame::OnToolbarTexture()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionPrint() {
    Sys_Printf("void CMainFrame::OnSelectionPrint()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::UpdateTextureBar() {
    Sys_Printf("void CMainFrame::UpdateTextureBar()\r\n");
}


bool	g_bTABDown = false;
bool	g_bOriginalFlag;

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionTogglesizepaint() {
    Sys_Printf("void CMainFrame::OnSelectionTogglesizepaint()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnBrushMakecone() {
    Sys_Printf("void CMainFrame::OnBrushMakecone()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTexturesLoad() {
    Sys_Printf("void CMainFrame::OnTexturesLoad()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnToggleRotatelock() {
    Sys_Printf("void CMainFrame::OnToggleRotatelock()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveBevel() {
    Sys_Printf("void CMainFrame::OnCurveBevel()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveCylinder() {
    Sys_Printf("void CMainFrame::OnCurveCylinder()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveEighthsphere() {
    Sys_Printf("void CMainFrame::OnCurveEighthsphere()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveEndcap() {
    Sys_Printf("void CMainFrame::OnCurveEndcap()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveHemisphere() {
    Sys_Printf("void CMainFrame::OnCurveHemisphere()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveInvertcurve() {
    Sys_Printf("void CMainFrame::OnCurveInvertcurve()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveQuarter() {
    Sys_Printf("void CMainFrame::OnCurveQuarter()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveSphere() {
    Sys_Printf("void CMainFrame::OnCurveSphere()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnFileImportmap() {
    Sys_Printf("void CMainFrame::OnFileImportmap()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnFileExportmap() {
    Sys_Printf("void CMainFrame::OnFileExportmap()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewShowcurves() {
    Sys_Printf("void CMainFrame::OnViewShowcurves()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionSelectNudgedown() {
    Sys_Printf("void CMainFrame::OnSelectionSelectNudgedown()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionSelectNudgeleft() {
    Sys_Printf("void CMainFrame::OnSelectionSelectNudgeleft()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionSelectNudgeright() {
    Sys_Printf("void CMainFrame::OnSelectionSelectNudgeright()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionSelectNudgeup() {
    Sys_Printf("void CMainFrame::OnSelectionSelectNudgeup()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::NudgeSelection(int nDirection, float fAmount) {
    Sys_Printf("void CMainFrame::NudgeSelection(int nDirection, float fAmount)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
BOOL CMainFrame::PreTranslateMessage(MSG *pMsg) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CMainFrame::PreTranslateMessage(MSG *pMsg)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::Nudge(int nDim, float fNudge) {
    Sys_Printf("void CMainFrame::Nudge(int nDim, float fNudge)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTexturesLoadlist() {
    Sys_Printf("void CMainFrame::OnTexturesLoadlist()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectByBoundingBrush() {
    Sys_Printf("void CMainFrame::OnSelectByBoundingBrush()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectBrushesOnly() {
    Sys_Printf("void CMainFrame::OnSelectBrushesOnly()\r\n");
}





/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnDynamicLighting() {
    Sys_Printf("void CMainFrame::OnDynamicLighting()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveSimplepatchmesh() {
    Sys_Printf("void CMainFrame::OnCurveSimplepatchmesh()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnPatchToggleBox() {
    Sys_Printf("void CMainFrame::OnPatchToggleBox()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnPatchWireframe() {
    Sys_Printf("void CMainFrame::OnPatchWireframe()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurvePatchcone() {
    Sys_Printf("void CMainFrame::OnCurvePatchcone()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurvePatchtube() {
    Sys_Printf("void CMainFrame::OnCurvePatchtube()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnPatchWeld() {
    Sys_Printf("void CMainFrame::OnPatchWeld()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurvePatchbevel() {
    Sys_Printf("void CMainFrame::OnCurvePatchbevel()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurvePatchendcap() {
    Sys_Printf("void CMainFrame::OnCurvePatchendcap()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurvePatchinvertedbevel() {
    Sys_Printf("void CMainFrame::OnCurvePatchinvertedbevel()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurvePatchinvertedendcap() {
    Sys_Printf("void CMainFrame::OnCurvePatchinvertedendcap()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnPatchDrilldown() {
    Sys_Printf("void CMainFrame::OnPatchDrilldown()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveInsertcolumn() {
    Sys_Printf("void CMainFrame::OnCurveInsertcolumn()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveInsertrow() {
    Sys_Printf("void CMainFrame::OnCurveInsertrow()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveDeletecolumn() {
    Sys_Printf("void CMainFrame::OnCurveDeletecolumn()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveDeleterow() {
    Sys_Printf("void CMainFrame::OnCurveDeleterow()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveInsertAddcolumn() {
    Sys_Printf("void CMainFrame::OnCurveInsertAddcolumn()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveInsertAddrow() {
    Sys_Printf("void CMainFrame::OnCurveInsertAddrow()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveInsertInsertcolumn() {
    Sys_Printf("void CMainFrame::OnCurveInsertInsertcolumn()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveInsertInsertrow() {
    Sys_Printf("void CMainFrame::OnCurveInsertInsertrow()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveNegative() {
    Sys_Printf("void CMainFrame::OnCurveNegative()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveNegativeTextureX() {
    Sys_Printf("void CMainFrame::OnCurveNegativeTextureX()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveNegativeTextureY() {
    Sys_Printf("void CMainFrame::OnCurveNegativeTextureY()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveDeleteFirstcolumn() {
    Sys_Printf("void CMainFrame::OnCurveDeleteFirstcolumn()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveDeleteFirstrow() {
    Sys_Printf("void CMainFrame::OnCurveDeleteFirstrow()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveDeleteLastcolumn() {
    Sys_Printf("void CMainFrame::OnCurveDeleteLastcolumn()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveDeleteLastrow() {
    Sys_Printf("void CMainFrame::OnCurveDeleteLastrow()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnPatchBend() {
    Sys_Printf("void CMainFrame::OnPatchBend()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnPatchInsdel() {
    Sys_Printf("void CMainFrame::OnPatchInsdel()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnPatchEnter() {
    Sys_Printf("void CMainFrame::OnPatchEnter()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
extern bool Sys_KeyDown(int key);
void CMainFrame::OnPatchTab() {
    Sys_Printf("void CMainFrame::OnPatchTab()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::UpdatePatchToolbarButtons() {
    Sys_Printf("void CMainFrame::UpdatePatchToolbarButtons()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurvePatchdensetube() {
    Sys_Printf("void CMainFrame::OnCurvePatchdensetube()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurvePatchverydensetube() {
    Sys_Printf("void CMainFrame::OnCurvePatchverydensetube()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveCap() {
    Sys_Printf("void CMainFrame::OnCurveCap()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveCapInvertedbevel() {
    Sys_Printf("void CMainFrame::OnCurveCapInvertedbevel()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveCapInvertedendcap() {
    Sys_Printf("void CMainFrame::OnCurveCapInvertedendcap()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveRedisperseCols() {
    Sys_Printf("void CMainFrame::OnCurveRedisperseCols()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveRedisperseRows() {
    Sys_Printf("void CMainFrame::OnCurveRedisperseRows()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnPatchNaturalize() {
    Sys_Printf("void CMainFrame::OnPatchNaturalize()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnPatchNaturalizeAlt() {
    Sys_Printf("void CMainFrame::OnPatchNaturalizeAlt()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSnapToGrid() {
    Sys_Printf("void CMainFrame::OnSnapToGrid()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurvePatchsquare() {
    Sys_Printf("void CMainFrame::OnCurvePatchsquare()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::CheckTextureScale(int id) {
    Sys_Printf("void CMainFrame::CheckTextureScale(int id)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTexturesTexturewindowscale10() {
    Sys_Printf("void CMainFrame::OnTexturesTexturewindowscale10()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTexturesTexturewindowscale100() {
    Sys_Printf("void CMainFrame::OnTexturesTexturewindowscale100()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTexturesTexturewindowscale200() {
    Sys_Printf("void CMainFrame::OnTexturesTexturewindowscale200()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTexturesTexturewindowscale25() {
    Sys_Printf("void CMainFrame::OnTexturesTexturewindowscale25()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTexturesTexturewindowscale50() {
    Sys_Printf("void CMainFrame::OnTexturesTexturewindowscale50()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTexturesFlush() {
    Sys_Printf("void CMainFrame::OnTexturesFlush()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveOverlayClear() {
    Sys_Printf("void CMainFrame::OnCurveOverlayClear()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveOverlaySet() {
    Sys_Printf("void CMainFrame::OnCurveOverlaySet()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveThicken() {
    Sys_Printf("void CMainFrame::OnCurveThicken()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveCyclecap() {
    Sys_Printf("void CMainFrame::OnCurveCyclecap()\r\n");
}


void CMainFrame::OnCurveCyclecapAlt() {
    Sys_Printf("void CMainFrame::OnCurveCyclecapAlt()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveMatrixTranspose() {
    Sys_Printf("void CMainFrame::OnCurveMatrixTranspose()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTexturesReloadshaders() {
    Sys_Printf("void CMainFrame::OnTexturesReloadshaders()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::SetEntityCheck() {
    Sys_Printf("void CMainFrame::SetEntityCheck()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnShowEntities() {
    Sys_Printf("void CMainFrame::OnShowEntities()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewEntitiesasSkinned() {
    Sys_Printf("void CMainFrame::OnViewEntitiesasSkinned()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewEntitiesasWireframe() {
    Sys_Printf("void CMainFrame::OnViewEntitiesasWireframe()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewShowhint() {
    Sys_Printf("void CMainFrame::OnViewShowhint()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTexturesShowall() {
    Sys_Printf("void CMainFrame::OnTexturesShowall()\r\n");
}


void CMainFrame::OnTexturesHideall() {
    Sys_Printf("void CMainFrame::OnTexturesHideall()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnPatchInspector() {
    Sys_Printf("void CMainFrame::OnPatchInspector()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewOpengllighting() {
    Sys_Printf("void CMainFrame::OnViewOpengllighting()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectAll() {
    Sys_Printf("void CMainFrame::OnSelectAll()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewShowcaulk() {
    Sys_Printf("void CMainFrame::OnViewShowcaulk()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveFreeze() {
    Sys_Printf("void CMainFrame::OnCurveFreeze()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveUnFreeze() {
    Sys_Printf("void CMainFrame::OnCurveUnFreeze()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveUnFreezeAll() {
    Sys_Printf("void CMainFrame::OnCurveUnFreezeAll()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectReselect() {
    Sys_Printf("void CMainFrame::OnSelectReselect()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewShowangles() {
    Sys_Printf("void CMainFrame::OnViewShowangles()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnEditSaveprefab() {
    Sys_Printf("void CMainFrame::OnEditSaveprefab()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnEditLoadprefab() {
    Sys_Printf("void CMainFrame::OnEditLoadprefab()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveMoreendcapsbevelsSquarebevel() {
    Sys_Printf("void CMainFrame::OnCurveMoreendcapsbevelsSquarebevel()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveMoreendcapsbevelsSquareendcap() {
    Sys_Printf("void CMainFrame::OnCurveMoreendcapsbevelsSquareendcap()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnBrushPrimitivesSphere() {
    Sys_Printf("void CMainFrame::OnBrushPrimitivesSphere()\r\n");
}


extern bool g_bCrossHairs;

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewCrosshair() {
    Sys_Printf("void CMainFrame::OnViewCrosshair()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewHideshowHideselected() {
    Sys_Printf("void CMainFrame::OnViewHideshowHideselected()\r\n");
}


void CMainFrame::OnViewHideshowHideNotselected() {
    Sys_Printf("void CMainFrame::OnViewHideshowHideNotselected()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnViewHideshowShowhidden() {
    Sys_Printf("void CMainFrame::OnViewHideshowShowhidden()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTexturesShadersShow() {
    Sys_Printf("void CMainFrame::OnTexturesShadersShow()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnTexturesFlushUnused() {
    Sys_Printf("void CMainFrame::OnTexturesFlushUnused()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionInvert() {
    Sys_Printf("void CMainFrame::OnSelectionInvert()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnProjectedLight() {
    Sys_Printf("void CMainFrame::OnProjectedLight()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnShowLighttextures() {
    Sys_Printf("void CMainFrame::OnShowLighttextures()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnShowLightvolumes() {
    Sys_Printf("void CMainFrame::OnShowLightvolumes()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnActivate(UINT nState, CWnd *pWndOther, BOOL bMinimized) {
    Sys_Printf("void CMainFrame::OnActivate(UINT nState, CWnd *pWndOther, BOOL bMinimized)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSplinesMode() {
    Sys_Printf("void CMainFrame::OnSplinesMode()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSplinesLoad() {
    Sys_Printf("void CMainFrame::OnSplinesLoad()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSplinesSave() {
    Sys_Printf("void CMainFrame::OnSplinesSave()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSplinesEdit() {
    Sys_Printf("void CMainFrame::OnSplinesEdit()\r\n");
}


extern void testCamSpeed();

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSplineTest() {
    Sys_Printf("void CMainFrame::OnSplineTest()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSplinesTargetPoints() {
    Sys_Printf("void CMainFrame::OnSplinesTargetPoints()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSplinesCameraPoints() {
    Sys_Printf("void CMainFrame::OnSplinesCameraPoints()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnPopupNewcameraInterpolated() {
    Sys_Printf("void CMainFrame::OnPopupNewcameraInterpolated()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnPopupNewcameraSpline() {
    Sys_Printf("void CMainFrame::OnPopupNewcameraSpline()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnPopupNewcameraFixed() {
    Sys_Printf("void CMainFrame::OnPopupNewcameraFixed()\r\n");
}


extern void Patch_AdjustSubdivisions(float hadj, float vadj);

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveIncreaseVert() {
    Sys_Printf("void CMainFrame::OnCurveIncreaseVert()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveDecreaseVert() {
    Sys_Printf("void CMainFrame::OnCurveDecreaseVert()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveIncreaseHorz() {
    Sys_Printf("void CMainFrame::OnCurveIncreaseHorz()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnCurveDecreaseHorz() {
    Sys_Printf("void CMainFrame::OnCurveDecreaseHorz()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CMainFrame::OnSelectionMoveonly() {
    Sys_Printf("void CMainFrame::OnSelectionMoveonly()\r\n");
}


void CMainFrame::OnSelectBrushlight() 
{
    Sys_Printf("void CMainFrame::OnSelectBrushlight()\r\n");
}


void CMainFrame::OnSelectionCombine() 
{
    Sys_Printf("void CMainFrame::OnSelectionCombine()\r\n");
}


extern void Patch_Weld(patchMesh_t *p, patchMesh_t *p2);
void CMainFrame::OnPatchCombine() {
    Sys_Printf("void CMainFrame::OnPatchCombine()\r\n");
}


void CMainFrame::OnShowDoom() 
{
    Sys_Printf("void CMainFrame::OnShowDoom()\r\n");
}


void CMainFrame::OnViewRendermode() 
{
    Sys_Printf("void CMainFrame::OnViewRendermode()\r\n");
}


void CMainFrame::OnViewRebuildrenderdata() 
{
    Sys_Printf("void CMainFrame::OnViewRebuildrenderdata()\r\n");
}


void CMainFrame::OnViewRealtimerebuild() 
{
    Sys_Printf("void CMainFrame::OnViewRealtimerebuild()\r\n");
}


void CMainFrame::OnViewRenderentityoutlines() 
{
    Sys_Printf("void CMainFrame::OnViewRenderentityoutlines()\r\n");
}


void CMainFrame::OnViewMaterialanimation() 
{
    Sys_Printf("void CMainFrame::OnViewMaterialanimation()\r\n");
}


extern void Face_SetAxialScale_BrushPrimit(face_t *face, bool y);
void CMainFrame::OnAxialTextureByWidth() {
    Sys_Printf("void CMainFrame::OnAxialTextureByWidth()\r\n");
}


void CMainFrame::OnAxialTextureByHeight() {
    Sys_Printf("void CMainFrame::OnAxialTextureByHeight()\r\n");
}


void CMainFrame::OnAxialTextureArbitrary() {
    Sys_Printf("void CMainFrame::OnAxialTextureArbitrary()\r\n");
}


extern void Select_ToOBJ();
void CMainFrame::OnSelectionExportToobj() 
{
    Sys_Printf("void CMainFrame::OnSelectionExportToobj()\r\n");
}


extern void Select_ToCM();
void CMainFrame::OnSelectionExportToCM()
{
    Sys_Printf("void CMainFrame::OnSelectionExportToCM()\r\n");
}


void CMainFrame::OnSelectionWireFrameOff() {
    Sys_Printf("void CMainFrame::OnSelectionWireFrameOff()\r\n");
}


void CMainFrame::OnSelectionWireFrameOn() {
    Sys_Printf("void CMainFrame::OnSelectionWireFrameOn()\r\n");
}


void CMainFrame::OnSelectionVisibleOn() {
    Sys_Printf("void CMainFrame::OnSelectionVisibleOn()\r\n");
}


void CMainFrame::OnSelectionVisibleOff() {
    Sys_Printf("void CMainFrame::OnSelectionVisibleOff()\r\n");
}



void CMainFrame::OnViewRenderselection() 
{
    Sys_Printf("void CMainFrame::OnViewRenderselection()\r\n");
}


void CMainFrame::OnSelectNomodels() 
{
    Sys_Printf("void CMainFrame::OnSelectNomodels()\r\n");
}


void CMainFrame::OnViewShowShowvisportals() 
{
    Sys_Printf("void CMainFrame::OnViewShowShowvisportals()\r\n");
}


void CMainFrame::OnViewShowNoDraw() 
{
    Sys_Printf("void CMainFrame::OnViewShowNoDraw()\r\n");
}




void CMainFrame::OnViewRendersound() 
{
    Sys_Printf("void CMainFrame::OnViewRendersound()\r\n");
}



void CMainFrame::OnSoundShowsoundvolumes() 
{
    Sys_Printf("void CMainFrame::OnSoundShowsoundvolumes()\r\n");
}


void CMainFrame::OnNurbEditor() {
    Sys_Printf("void CMainFrame::OnNurbEditor()\r\n");
}



void CMainFrame::OnSoundShowselectedsoundvolumes() 
{
    Sys_Printf("void CMainFrame::OnSoundShowselectedsoundvolumes()\r\n");
}


void CMainFrame::OnSelectAlltargets()
{
    Sys_Printf("void CMainFrame::OnSelectAlltargets()\r\n");
}



void CMainFrame::OnSelectCompleteEntity()
{
    Sys_Printf("void CMainFrame::OnSelectCompleteEntity()\r\n");
}





//---------------------------------------------------------------------------
// OnPrecisionCursorCycle
// 
// Called when the user presses the "cycle precision cursor mode" key.
// Cycles the precision cursor among the following three modes:
//		PRECISION_CURSOR_NONE
//		PRECISION_CURSOR_SNAP
//		PRECISION_CURSOR_FREE
//---------------------------------------------------------------------------
void CMainFrame::OnPrecisionCursorCycle()
{
    Sys_Printf("void CMainFrame::OnPrecisionCursorCycle()\r\n");
}


void CMainFrame::OnGenerateMaterialsList()
{
    Sys_Printf("void CMainFrame::OnGenerateMaterialsList()\r\n");
}


/*
=======================================================================================================================
=======================================================================================================================
*/


void CMainFrame::OnSplinesAddPoints() {
    Sys_Printf("void CMainFrame::OnSplinesAddPoints()\r\n");
}


void CMainFrame::OnSplinesEditPoints() {
    Sys_Printf("void CMainFrame::OnSplinesEditPoints()\r\n");
}


void CMainFrame::OnSplinesDeletePoint() {
    Sys_Printf("void CMainFrame::OnSplinesDeletePoint()\r\n");
}


void CMainFrame::OnSplinesInsertPoint() {
    Sys_Printf("void CMainFrame::OnSplinesInsertPoint()\r\n");
}

