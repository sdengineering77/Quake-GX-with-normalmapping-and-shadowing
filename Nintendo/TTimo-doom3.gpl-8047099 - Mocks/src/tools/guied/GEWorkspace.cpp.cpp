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

#include "../../sys/win32/rc/guied_resource.h"
#include "../../renderer/tr_local.h"
#include "../../sys/win32/win_local.h"
#include "../../ui/DeviceContext.h"
#include "../../ui/EditWindow.h"
#include "../../ui/ListWindow.h"
#include "../../ui/BindWindow.h"
#include "../../ui/RenderWindow.h"
#include "../../ui/ChoiceWindow.h"

#include "GEApp.h"
#include "GEItemPropsDlg.h"
#include "GEItemScriptsDlg.h"

// Modifiers
#include "GEModifierGroup.h"
#include "GEMoveModifier.h"
#include "GESizeModifier.h"
#include "GEStateModifier.h"
#include "GEZOrderModifier.h"
#include "GEInsertModifier.h"
#include "GEHideModifier.h"
#include "GEDeleteModifier.h"

static float g_ZoomScales[rvGEWorkspace::ZOOM_MAX] = { 0, 0.25f, 0.33f, 0.50f, 0.66f, 1.0f, 1.5f, 2.0f, 3.0f };

static const int ID_GUIED_SELECT_FIRST = 9800;
static const int ID_GUIED_SELECT_LAST  = 9900;

idList<rvGEClipboardItem*> rvGEWorkspace::mClipboard;

rvGEWorkspace::rvGEWorkspace ( rvGEApp* app ) : mApplication ( app )
{
	mWnd	    		= 0;
	mInterface  		= 0;
	mZoom	    		= ZOOM_100;
	mScrollHorz 		= false;
	mScrollVert 		= false;
	mModified   		= false;
	mNew				= false;
	mDragScroll 		= false;
	mSourceControlState = SCS_CHECKEDOUT;
	mFilename   		= "guis/Untitled.gui";
	mDragType			= rvGESelectionMgr::HT_NONE;
	mHandCursor 		= LoadCursor ( app->GetInstance(), MAKEINTRESOURCE(IDC_GUIED_HAND) );
	mDontAdd			= false;
	
	mSelections.SetWorkspace ( this );
}

rvGEWorkspace::~rvGEWorkspace ( )
{
	// Make sure all the wrappers get cleaned up
	rvGEWindowWrapper::GetWrapper ( mInterface->GetDesktop ( ) )->EnumChildren ( CleanupEnumProc, NULL );

	DestroyCursor ( mHandCursor );

	delete mInterface;	
}

/*
================
rvGEWorkspace::CleanupEnumProc

Window enumeration procedure that deletes all the wrapper classes
================
*/
bool rvGEWorkspace::CleanupEnumProc ( rvGEWindowWrapper* wrapper, void* data )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEWorkspace::CleanupEnumProc ( rvGEWindowWrapper* wrapper, void* data )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::GetZoomScale

Returns the scale of the current zoom level
================
*/
float rvGEWorkspace::GetZoomScale ( void )
{
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float rvGEWorkspace::GetZoomScale ( void )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::Attach

Attaches the workspace to the given window.  This is usually done after the
window is created and the file has been loaded.
================
*/
bool rvGEWorkspace::Attach ( HWND wnd )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEWorkspace::Attach ( HWND wnd )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::Detach

Detaches the workspace from the window it is currently attached to
================
*/
void rvGEWorkspace::Detach ( void )
{
    Sys_Printf("void rvGEWorkspace::Detach ( void )\r\n");
}


/*
================
rvGEWorkspace::SetupPixelFormat

Setup the pixel format for the opengl context
================
*/
bool rvGEWorkspace::SetupPixelFormat ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEWorkspace::SetupPixelFormat ( void )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::RenderGrid

Renders the grid on top of the user interface
================
*/
void rvGEWorkspace::RenderGrid ( void )
{
    Sys_Printf("void rvGEWorkspace::RenderGrid ( void )\r\n");
}


/*
================
rvGEWorkspace::Render

Renders the workspace to the given DC
================
*/
void rvGEWorkspace::Render ( HDC hdc )
{
    Sys_Printf("void rvGEWorkspace::Render ( HDC hdc )\r\n");
}


/*
================
rvGEWorkspace::UpdateTitle

Updates the window title with the name of the file and the zoom level and weither its open or not
================
*/
void rvGEWorkspace::UpdateTitle ( void )
{
    Sys_Printf("void rvGEWorkspace::UpdateTitle ( void )\r\n");
}


/*
================
rvGEWorkspace::UpdateRectangle

Updates the rectangle (not counting scrolling)
================
*/
void rvGEWorkspace::UpdateRectangle ( bool useScroll )
{
    Sys_Printf("void rvGEWorkspace::UpdateRectangle ( bool useScroll )\r\n");
}


/*
================
rvGEWorkspace::Scroll

Adjusts the given scrollbar by the given offset
================
*/
void rvGEWorkspace::Scroll ( int scrollbar, int offset )
{
    Sys_Printf("void rvGEWorkspace::Scroll ( int scrollbar, int offset )\r\n");
}


int rvGEWorkspace::HandleScroll ( int scrollbar, WPARAM wParam, LPARAM lParam ) 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvGEWorkspace::HandleScroll ( int scrollbar, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::UpdateScrollbars

Updates the states and the ranges of the scrollbars as well as the rectangle
================
*/
void rvGEWorkspace::UpdateScrollbars ( void )
{
    Sys_Printf("void rvGEWorkspace::UpdateScrollbars ( void )\r\n");
}


/*
================
rvGEWorkspace::UpdateCursor

Called to update the cursor when the mouse is within the workspace window
================
*/
void rvGEWorkspace::UpdateCursor ( rvGESelectionMgr::EHitTest type )
{
	switch ( type )
	{
		case rvGESelectionMgr::HT_SELECT:
			SetCursor ( LoadCursor ( NULL, MAKEINTRESOURCE(IDC_ARROW) ) );
			break;
			
		case rvGESelectionMgr::HT_MOVE:
			SetCursor ( LoadCursor ( NULL, MAKEINTRESOURCE(IDC_SIZEALL) ) );
			break;

		case rvGESelectionMgr::HT_SIZE_LEFT:
		case rvGESelectionMgr::HT_SIZE_RIGHT:
			SetCursor ( LoadCursor ( NULL, MAKEINTRESOURCE(IDC_SIZEWE ) ) );
			break;

		case rvGESelectionMgr::HT_SIZE_TOP:
		case rvGESelectionMgr::HT_SIZE_BOTTOM:
			SetCursor ( LoadCursor ( NULL, MAKEINTRESOURCE(IDC_SIZENS ) ) );
			break;

		case rvGESelectionMgr::HT_SIZE_TOPRIGHT:
		case rvGESelectionMgr::HT_SIZE_BOTTOMLEFT:
			SetCursor ( LoadCursor ( NULL, MAKEINTRESOURCE(IDC_SIZENESW ) ) );
			break;

		case rvGESelectionMgr::HT_SIZE_BOTTOMRIGHT:
		case rvGESelectionMgr::HT_SIZE_TOPLEFT:
			SetCursor ( LoadCursor ( NULL, MAKEINTRESOURCE(IDC_SIZENWSE ) ) );
			break;
	}
}	

void rvGEWorkspace::UpdateCursor ( float x, float y )
{
    Sys_Printf("void rvGEWorkspace::UpdateCursor ( float x, float y )\r\n");
}


void rvGEWorkspace::UpdateCursor ( void )
{
    Sys_Printf("void rvGEWorkspace::UpdateCursor ( void )\r\n");
}


/*
================
rvGEWorkspace::HandleMessage

Handles window messages to the workspace
================
*/
void rvGEWorkspace::HandleMessage ( UINT msg, WPARAM wParam, LPARAM lParam )
{
    Sys_Printf("void rvGEWorkspace::HandleMessage ( UINT msg, WPARAM wParam, LPARAM lParam )\r\n");
}

/*
================
rvGEWorkspace::HandleCommand

Handles command messages destined for the workspace window.  This is for
special workspace commands, any unhandled commands are forwarded to the main window
================
*/
int	rvGEWorkspace::HandleCommand ( WPARAM wParam, LPARAM lParam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intrvGEWorkspace::HandleCommand ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::HandleMButtonDown

Handles the middle mouse down message in the workspace
================
*/
int	rvGEWorkspace::HandleMButtonDown ( WPARAM wParam, LPARAM lParam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intrvGEWorkspace::HandleMButtonDown ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::HandleMButtonUp

Handles the middle mouse up message in the workspace
================
*/
int	rvGEWorkspace::HandleMButtonUp ( WPARAM wParam, LPARAM lParam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intrvGEWorkspace::HandleMButtonUp ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::HandleRButtonDown

Handles the left mouse down message in the workspace
================
*/
int	rvGEWorkspace::HandleRButtonDown ( WPARAM wParam, LPARAM lParam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intrvGEWorkspace::HandleRButtonDown ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::HandleLButtonDown

Handles the left mouse down message in the workspace
================
*/
int	rvGEWorkspace::HandleLButtonDown ( WPARAM wParam, LPARAM lParam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intrvGEWorkspace::HandleLButtonDown ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::HandleLButtonUp

Handles the left mouse up message in the workspace
================
*/
int	rvGEWorkspace::HandleLButtonUp ( WPARAM wParam, LPARAM lParam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intrvGEWorkspace::HandleLButtonUp ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::HandleLButtonDblClk

Handle a double click by opening properties
================
*/
int	rvGEWorkspace::HandleLButtonDblClk ( WPARAM wParam, LPARAM lParam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intrvGEWorkspace::HandleLButtonDblClk ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::HandleMouseMove

Handles the moving of the mouse for dragging and cursor updating
================
*/
int	rvGEWorkspace::HandleMouseMove ( WPARAM wParam, LPARAM lParam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intrvGEWorkspace::HandleMouseMove ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::HandleKeyDown

Handles the the pressing of a key
================
*/
int	rvGEWorkspace::HandleKeyDown ( WPARAM wParam, LPARAM lParam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intrvGEWorkspace::HandleKeyDown ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::WindowToWorkspace

Converts the given coordinates in windows space to the workspace's coordinates.
================
*/
idVec2& rvGEWorkspace::WindowToWorkspace ( idVec2& point )
{
	point.x = (point.x - mRect.x) / mRect.w * SCREEN_WIDTH;
	point.y = (point.y - mRect.y) / mRect.h * SCREEN_HEIGHT;

	return point;
}

idRectangle& rvGEWorkspace::WindowToWorkspace ( idRectangle& rect )
{
	rect.x = (rect.x - mRect.x) / mRect.w * SCREEN_WIDTH;
	rect.y = (rect.y - mRect.y) / mRect.h * SCREEN_HEIGHT;
	rect.w = rect.w / mRect.w * SCREEN_WIDTH;
	rect.h = rect.h / mRect.h * SCREEN_HEIGHT;

	return rect;
}

/*
================
rvGEWorkspace::WindowToWorkspace

Converts the given workspace coordinates to the windows coordinates.
================
*/
idVec2& rvGEWorkspace::WorkspaceToWindow ( idVec2& point )
{
	point.x = mRect.x + (point.x / SCREEN_WIDTH * mRect.w);
	point.y = mRect.y + (point.y / SCREEN_HEIGHT * mRect.h);

	return point;
}

idRectangle& rvGEWorkspace::WorkspaceToWindow ( idRectangle& rect )
{
	rect.x = mRect.x + (rect.x / SCREEN_WIDTH * mRect.w);
	rect.y = mRect.y + (rect.y / SCREEN_HEIGHT * mRect.h);
	rect.w = rect.w / SCREEN_WIDTH * mRect.w;
	rect.h = rect.h / SCREEN_HEIGHT * mRect.h;

	return rect;
}

/*
================
rvGEWorkspace::ZoomIn

Zooms the workspace in by one zoom level
================
*/
rvGEWorkspace::EZoomLevel rvGEWorkspace::ZoomIn ( void )
{
    EZoomLevel retVal;
    memset(&retVal, 0, sizeof(EZoomLevel));
    Sys_Printf("EZoomLevel rvGEWorkspace::ZoomIn ( void )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::ZoomOut

Zooms the workspace out by one level
================
*/
rvGEWorkspace::EZoomLevel rvGEWorkspace::ZoomOut ( void )
{
    EZoomLevel retVal;
    memset(&retVal, 0, sizeof(EZoomLevel));
    Sys_Printf("EZoomLevel rvGEWorkspace::ZoomOut ( void )\r\n");
    return retVal;
}


/*
================
rvGEWorkspace::CreateModifier

Creates a new modifier of the given type for the given window.  This function is called 
specifically from the add modifiers function with the variable args list forwarded.
================
*/
rvGEModifier* rvGEWorkspace::CreateModifier ( EModifierType type, idWindow* window, va_list args )
{
    Sys_Printf("rvGEModifier* rvGEWorkspace::CreateModifier ( EModifierType type, idWindow* window, va_list args )\r\n");
    return NULL;
}


/*
================
rvGEWorkspace::AddModifiers

Add the specific modifier for the given window
================
*/
void rvGEWorkspace::AddModifiers ( idWindow* window, EModifierType type, ... )
{
    Sys_Printf("void rvGEWorkspace::AddModifiers ( idWindow* window, EModifierType type, ... )\r\n");
}


void rvGEWorkspace::AddModifiers ( EModifierType type, ... )
{
    Sys_Printf("void rvGEWorkspace::AddModifiers ( EModifierType type, ... )\r\n");
}


bool rvGEWorkspace::BuildSelectMenuEnumProc ( rvGEWindowWrapper* wrapper, void* data )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEWorkspace::BuildSelectMenuEnumProc ( rvGEWindowWrapper* wrapper, void* data )\r\n");
    return retVal;
}


bool rvGEWorkspace::ShowAllEnumProc ( rvGEWindowWrapper* wrapper, void* data )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEWorkspace::ShowAllEnumProc ( rvGEWindowWrapper* wrapper, void* data )\r\n");
    return retVal;
}


void rvGEWorkspace::AddModifierShowAll ( void )
{
    Sys_Printf("void rvGEWorkspace::AddModifierShowAll ( void )\r\n");
}


void rvGEWorkspace::DeleteSelected ( void )
{
    Sys_Printf("void rvGEWorkspace::DeleteSelected ( void )\r\n");
}


/*
================
rvGEWorkspace::NewWindow

Create a new window 
================
*/
idWindow* rvGEWorkspace::NewWindow ( idDict* state, rvGEWindowWrapper::EWindowType type )
{
	idWindow*			window = new idWindow ( mInterface->GetDesktop()->GetDC(), mInterface );
	rvGEWindowWrapper*	wrapper;
	int					count;
	idStr				baseName;

	switch ( type )
	{
		case rvGEWindowWrapper::WT_NORMAL:
			window = new idWindow ( mInterface->GetDesktop()->GetDC(), mInterface );
			break;
			
		case rvGEWindowWrapper::WT_BIND:
			window = new idBindWindow ( mInterface->GetDesktop()->GetDC(), mInterface );
			break;

		case rvGEWindowWrapper::WT_RENDER:
			window = new idRenderWindow ( mInterface->GetDesktop()->GetDC(), mInterface );
			break;
			
		case rvGEWindowWrapper::WT_CHOICE:
			window = new idChoiceWindow ( mInterface->GetDesktop()->GetDC(), mInterface );
			break;

		case rvGEWindowWrapper::WT_EDIT:
			window = new idEditWindow ( mInterface->GetDesktop()->GetDC(), mInterface );
			break;
			
		default:
			assert ( false );
			return NULL;
	}

	baseName = state ? state->GetString("name","unnamed") : "unnamed";
	baseName.StripQuotes ( );

	count = 0;
	if ( mInterface->GetDesktop()->FindChildByName ( baseName ) ) 
	{
		count = 1;
		while ( 1 )
		{
			drawWin_t* dw = mInterface->GetDesktop()->FindChildByName ( va("%s%d",baseName.c_str(),count) );
			if ( !dw )
			{
				break;
			}
			assert ( dw->win );
			wrapper = rvGEWindowWrapper::GetWrapper ( dw->win );
			if ( wrapper && wrapper->IsDeleted ( ) )
			{
				break;
			}
			count++;
		}
	}

	idStr winName;
	idStr winTemplate;
	
	if ( count )
	{
		winName = va("%s%d", baseName.c_str(), count );
	}
	else
	{
		winName = baseName;
	}
	winTemplate = winName + " { }";
	
	idParser src( winTemplate, winTemplate.Length(), "", LEXFL_ALLOWMULTICHARLITERALS | LEXFL_NOSTRINGCONCAT | LEXFL_ALLOWBACKSLASHSTRINGCONCAT );
	window->Parse ( &src );

	wrapper = rvGEWindowWrapper::GetWrapper ( window );
	
	if ( state )
	{
		wrapper->SetState ( *state );
	}
	
	wrapper->SetStateKey ( "name", winName );
	wrapper->Finish ( );

	SetModified ( true );
	
	
	return window;
}

idWindow* rvGEWorkspace::AddWindow ( rvGEWindowWrapper::EWindowType type )
{
	idWindow*	window;	
	idDict		state;
	
	state.Set ( "rect", "0,0,100,100" );
	state.Set ( "visible", "1" );
	
	window = NewWindow ( &state, type );
	assert ( window );

	mModifiers.Append ( new rvGEInsertModifier ( "New", window, mInterface->GetDesktop(), NULL ) );
	
	mSelections.Set ( window );
	mApplication->GetNavigator().Update ( );
	mApplication->GetTransformer().Update ( );
	mApplication->GetProperties().Update ( );

	return window;
}

bool rvGEWorkspace::EditSelectedProperties ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEWorkspace::EditSelectedProperties ( void )\r\n");
    return retVal;
}


bool rvGEWorkspace::EditSelectedScripts ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEWorkspace::EditSelectedScripts ( void )\r\n");
    return retVal;
}
	

void rvGEWorkspace::BringSelectedForward ( void )
{
    Sys_Printf("void rvGEWorkspace::BringSelectedForward ( void )\r\n");
}


void rvGEWorkspace::BringSelectedToFront ( void )
{
    Sys_Printf("void rvGEWorkspace::BringSelectedToFront ( void )\r\n");
}


void rvGEWorkspace::SendSelectedToBack ( void )
{
    Sys_Printf("void rvGEWorkspace::SendSelectedToBack ( void )\r\n");
}


void rvGEWorkspace::SendSelectedBackward ( void )
{
    Sys_Printf("void rvGEWorkspace::SendSelectedBackward ( void )\r\n");
}


/*
================
rvGEWorkspace::MakeSelectedSameSize

Align the selected items to the first one using the given align type
================
*/
void rvGEWorkspace::MakeSelectedSameSize ( bool changeWidth, bool changeHeight )
{
    Sys_Printf("void rvGEWorkspace::MakeSelectedSameSize ( bool changeWidth, bool changeHeight )\r\n");
}


/*
================
rvGEWorkspace::AlignSelected

Align the selected items to the first one using the given align type
================
*/
void rvGEWorkspace::AlignSelected ( EItemAlign align )
{
    Sys_Printf("void rvGEWorkspace::AlignSelected ( EItemAlign align )\r\n");
}


/*
================
rvGEWorkspace::AddModifierMove

Adds a move modifier with the given offsets
================
*/
void rvGEWorkspace::AddModifierMove ( const char* modName, float x, float y, bool snap )
{
    Sys_Printf("void rvGEWorkspace::AddModifierMove ( const char* modName, float x, float y, bool snap )\r\n");
}


/*
================
rvGEWorkspace::AddModifierSize

Adds a size modifier with the given offsets
================
*/
void rvGEWorkspace::AddModifierSize ( const char* modName, float l, float t, float r, float b, bool snap )
{
    Sys_Printf("void rvGEWorkspace::AddModifierSize ( const char* modName, float l, float t, float r, float b, bool snap )\r\n");
}


/*
================
rvGEWorkspace::MakeSelectedAChild

Makes the selected windows a child of the first selected window
================
*/
void rvGEWorkspace::MakeSelectedAChild ( void )
{
    Sys_Printf("void rvGEWorkspace::MakeSelectedAChild ( void )\r\n");
}


void rvGEWorkspace::Copy ( void )
{
    Sys_Printf("void rvGEWorkspace::Copy ( void )\r\n");
}


void rvGEWorkspace::Paste ( void )
{
    Sys_Printf("void rvGEWorkspace::Paste ( void )\r\n");
}


void rvGEWorkspace::HideSelected ( void )
{
    Sys_Printf("void rvGEWorkspace::HideSelected ( void )\r\n");
}


void rvGEWorkspace::UnhideSelected ( void )
{
    Sys_Printf("void rvGEWorkspace::UnhideSelected ( void )\r\n");
}


void rvGEWorkspace::HideWindow ( idWindow* window )
{
    Sys_Printf("void rvGEWorkspace::HideWindow ( idWindow* window )\r\n");
}


void rvGEWorkspace::UnhideWindow ( idWindow* window )
{
    Sys_Printf("void rvGEWorkspace::UnhideWindow ( idWindow* window )\r\n");
}


/*
================
rvGEWorkspace::SetModified

Sets the modified state of the window and if source control is enabled it
will attempt to check out the file
================
*/
void rvGEWorkspace::SetModified ( bool mod )
{
    Sys_Printf("void rvGEWorkspace::SetModified ( bool mod )\r\n");
}

