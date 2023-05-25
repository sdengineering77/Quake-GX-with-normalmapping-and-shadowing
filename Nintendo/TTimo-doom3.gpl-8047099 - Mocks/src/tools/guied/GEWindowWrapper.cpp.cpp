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
#include "../../ui/EditWindow.h"
#include "../../ui/ListWindow.h"
#include "../../ui/BindWindow.h"
#include "../../ui/RenderWindow.h"
#include "../../ui/ChoiceWindow.h"

#include "GEApp.h"

rvGEWindowWrapper::rvGEWindowWrapper( idWindow *window,EWindowType type ) {
	assert(window);

	mWindow = window;
	mFlippedHorz = false;
	mFlippedVert = false;
	mHidden = false;
	mDeleted = false;
	mSelected = false;
	mType = type;
	mExpanded = false;
	mOldVisible = false;
	mMoveable = true;

	if ( dynamic_cast< idEditWindow*>(window) ) {
		mType = WT_EDIT;
	} else if ( dynamic_cast< idListWindow*>(window) ) {
		mType = WT_LIST;
	} else if ( dynamic_cast< idBindWindow*>(window) ) {
		mType = WT_BIND;
	} else if ( dynamic_cast< idRenderWindow*>(window) ) {
		mType = WT_RENDER;
	} else if ( dynamic_cast< idChoiceWindow*>(window) ) {
		mType = WT_CHOICE;
	} else {
		mType = WT_NORMAL;
	}

	// Attach the wrapper to the window by adding a defined variable
	// with the wrappers pointer stuffed into an integer
	idWinInt *var = new idWinInt();
	int x = (int)this;
	*var = x;
	var->SetEval(false);
	var->SetName("guied_wrapper");
	mWindow->AddDefinedVar(var);

	SetStateKey("name", mWindow->GetName(), false);
}

/*
================
rvGEWindowWrapper::GetWrapper

Static method that returns the window wrapper for the given window class
================
*/
rvGEWindowWrapper * rvGEWindowWrapper::GetWrapper( idWindow *window ) {
    Sys_Printf("rvGEWindowWrapper * rvGEWindowWrapper::GetWrapper( idWindow *window )\r\n");
    return NULL;
}


/*
================
rvGEWindowWrapper::UpdateRect

Updates the gui editor's representation of the window rectangle from the 
windows rectangle
================
*/
void rvGEWindowWrapper::UpdateRect( void ) {
    Sys_Printf("void rvGEWindowWrapper::UpdateRect( void )\r\n");
}


/*
================
rvGEWindowWrapper::CalcScreenRect

Calculates the screen rectangle from the client rectangle by running through
the parent windows and adding their offsets
================
*/
void rvGEWindowWrapper::CalcScreenRect( void ) {
    Sys_Printf("void rvGEWindowWrapper::CalcScreenRect( void )\r\n");
}


/*
================
rvGEWindowWrapper::SetRect

Sets the wrapper's rectangle and the attached windows rectangle as well
================
*/
void rvGEWindowWrapper::SetRect( idRectangle &rect ) {
    Sys_Printf("void rvGEWindowWrapper::SetRect( idRectangle &rect )\r\n");
}


/*
================
rvGEWindowWrapper::SetHidden

Sets the wrappers hidden state 
================
*/
void rvGEWindowWrapper::SetHidden( bool h ) {
    Sys_Printf("void rvGEWindowWrapper::SetHidden( bool h )\r\n");
}


/*
================
rvGEWindowWrapper::SetDeleted

Sets the deleted state of the wrapper which in turns sets whether or
not the window is visible
================
*/
void rvGEWindowWrapper::SetDeleted( bool del ) {
    Sys_Printf("void rvGEWindowWrapper::SetDeleted( bool del )\r\n");
}


/*
================
rvGEWindowWrapper::SetState

Sets the window state from the given dictionary
================
*/
void rvGEWindowWrapper::SetState( const idDict &dict ) {
    Sys_Printf("void rvGEWindowWrapper::SetState( const idDict &dict )\r\n");
}


/*
================
rvGEWindowWrapper::SetStateKey

Sets the given state key and updates the 
================
*/
void rvGEWindowWrapper::SetStateKey( const char *key,const char *value,bool update ) {
    Sys_Printf("void rvGEWindowWrapper::SetStateKey( const char *key,const char *value,bool update )\r\n");
}


/*
================
rvGEWindowWrapper::DeleteStateKey

Sets the given state key and updates the 
================
*/
void rvGEWindowWrapper::DeleteStateKey( const char *key ) {
    Sys_Printf("void rvGEWindowWrapper::DeleteStateKey( const char *key )\r\n");
}


/*
================
rvGEWindowWrapper::UpdateWindowState

Updates the windows real state with wrappers internal state.  Visibility is 
handled specially
================
*/
void rvGEWindowWrapper::UpdateWindowState( void ) {
    Sys_Printf("void rvGEWindowWrapper::UpdateWindowState( void )\r\n");
}


/*
================
rvGEWindowWrapper::WindowFromPoint

Returns the topmost window under the given point
================
*/
idWindow * rvGEWindowWrapper::WindowFromPoint( float x,float y,bool visibleOnly ) {
    Sys_Printf("idWindow * rvGEWindowWrapper::WindowFromPoint( float x,float y,bool visibleOnly )\r\n");
    return NULL;
}


/*
================
rvGEWindowWrapper::StringToWindowType

Converts the given string to a window type
================
*/
rvGEWindowWrapper::EWindowType rvGEWindowWrapper::StringToWindowType( const char *string ) {
    EWindowType retVal;
    memset(&retVal, 0, sizeof(EWindowType));
    Sys_Printf("EWindowType rvGEWindowWrapper::StringToWindowType( const char *string )\r\n");
    return retVal;
}


/*
================
rvGEWindowWrapper::WindowTypeToString

Converts the given window type to a string
================
*/
const char * rvGEWindowWrapper::WindowTypeToString( EWindowType type ) {
    Sys_Printf("char * rvGEWindowWrapper::WindowTypeToString( EWindowType type )\r\n");
    return NULL;
}


/*
================
rvGEWindowWrapper::GetChildCount

Returns the number of children the window being wrapped has
================
*/
int rvGEWindowWrapper::GetChildCount( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvGEWindowWrapper::GetChildCount( void )\r\n");
    return retVal;
}


/*
================
rvGEWindowWrapper::EnumChildren

Enumerates over the child windows while properly ignoring any that
are not wrapped.
================
*/
bool rvGEWindowWrapper::EnumChildren( PFNENUMCHILDRENPROC proc,void *data ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEWindowWrapper::EnumChildren( PFNENUMCHILDRENPROC proc,void *data )\r\n");
    return retVal;
}


/*
================
rvGEWindowWrapper::CanHaveChildren

Returns true if the window is allowed to have child windows
================
*/
bool rvGEWindowWrapper::CanHaveChildren( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEWindowWrapper::CanHaveChildren( void )\r\n");
    return retVal;
}


/*
================
rvGEWindowWrapper::GetDepth

Returns the depth of the wrapped window
================
*/
int rvGEWindowWrapper::GetDepth( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvGEWindowWrapper::GetDepth( void )\r\n");
    return retVal;
}


/*
================
rvGEWindowWrapper::Expand

Expand the window in the navigator and all of its parents too
================
*/
bool rvGEWindowWrapper::Expand( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEWindowWrapper::Expand( void )\r\n");
    return retVal;
}


/*
================
rvGEWindowWrapper::Collapse

Returns the depth of the wrapped window
================
*/
bool rvGEWindowWrapper::Collapse( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEWindowWrapper::Collapse( void )\r\n");
    return retVal;
}


/*
================
rvGEWindowWrapper::Finish

After a the windwo wrapper is attached to a window and the window is parsed
the finish method is called to finish up any last details
================
*/
void rvGEWindowWrapper::Finish( void ) {
    Sys_Printf("void rvGEWindowWrapper::Finish( void )\r\n");
}


/*
================
rvGEWindowWrapper::Finish

After a the windwo wrapper is attached to a window and the window is parsed
the finish method is called to finish up any last details
================
*/
bool rvGEWindowWrapper::VerfiyStateKey( const char *name,const char *value,idStr *result ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEWindowWrapper::VerfiyStateKey( const char *name,const char *value,idStr *result )\r\n");
    return retVal;
}


