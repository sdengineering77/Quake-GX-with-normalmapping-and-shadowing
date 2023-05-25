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
#include "../common/ColorButton.h"
#include "../common/MaskEdit.h"

#include "GEApp.h"
#include "GEItemPropsDlg.h"
#include "GEPropertyPage.h"

enum
{	
	RVITEMPROPS_GENERAL = 0,
	RVITEMPROPS_IMAGE,
	RVITEMPROPS_TEXT,
	RVITEMPROPS_KEYS,
	
	RVITEMPROPS_MAX
};	

class rvGEItemPropsImagePage : public rvGEPropertyPage 
{
public:

	rvGEItemPropsImagePage ( idDict* dictValues );
	
	virtual bool	Init			( void );
	virtual bool	SetActive		( void );
	virtual bool	KillActive		( void );
	virtual int		HandleMessage	( UINT msg, WPARAM wParam, LPARAM lParam );

protected:

	void			UpdateCheckedStates		( void );

	idDict*		mDict;
};	

rvGEItemPropsImagePage::rvGEItemPropsImagePage ( idDict* dict )
{
	mDict = dict;
}

/*
================
rvGEItemPropsImagePage::Init

Subclass the custom controls on the page
================
*/
bool rvGEItemPropsImagePage::Init ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEItemPropsImagePage::Init ( void )\r\n");
    return retVal;
}


/*
================
rvGEItemPropsImagePage::UpdateCheckedStates

Updates the enabled state of all the controls that are linked to a checkbox
================
*/
void rvGEItemPropsImagePage::UpdateCheckedStates ( void )
{
    Sys_Printf("void rvGEItemPropsImagePage::UpdateCheckedStates ( void )\r\n");
}


/*
================
rvGEItemPropsImagePage::HandleMessage

Handles messages for the text item properties page
================
*/
int rvGEItemPropsImagePage::HandleMessage ( UINT msg, WPARAM wParam, LPARAM lParam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvGEItemPropsImagePage::HandleMessage ( UINT msg, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGEItemPropsImagePage::SetActive

Initializes the text properties page by copying data from the attached
window into the controls
================
*/
bool rvGEItemPropsImagePage::SetActive ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEItemPropsImagePage::SetActive ( void )\r\n");
    return retVal;
}


/*
================
rvGEItemPropsImagePage::KillActive

Applys the settings currently stored in the property page back into the attached window
================
*/
bool rvGEItemPropsImagePage::KillActive ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEItemPropsImagePage::KillActive ( void )\r\n");
    return retVal;
}


class rvGEItemPropsTextPage : public rvGEPropertyPage 
{
public:

	rvGEItemPropsTextPage ( idDict* dictValues );
	
	virtual bool	Init			( void );
	virtual bool	SetActive		( void );
	virtual bool	KillActive		( void );
	virtual int		HandleMessage	( UINT msg, WPARAM wParam, LPARAM lParam );

protected:

	void			UpdateCheckedStates		( void );
	
	idDict*		mDict;
};	

rvGEItemPropsTextPage::rvGEItemPropsTextPage ( idDict* dict )
{
	mDict = dict;
}

/*
================
rvGEItemPropsTextPage::Init

Subclass the custom controls on the page
================
*/
bool rvGEItemPropsTextPage::Init ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEItemPropsTextPage::Init ( void )\r\n");
    return retVal;
}


/*
================
rvGEItemPropsTextPage::UpdateCheckedStates

Updates the enabled state of all the controls that are linked to a checkbox
================
*/
void rvGEItemPropsTextPage::UpdateCheckedStates ( void )
{
    Sys_Printf("void rvGEItemPropsTextPage::UpdateCheckedStates ( void )\r\n");
}


/*
================
rvGEItemPropsTextPage::HandleMessage

Handles messages for the text item properties page
================
*/
int rvGEItemPropsTextPage::HandleMessage ( UINT msg, WPARAM wParam, LPARAM lParam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvGEItemPropsTextPage::HandleMessage ( UINT msg, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGEItemPropsTextPage::SetActive

Initializes the text properties page by copying data from the attached
window into the controls
================
*/
bool rvGEItemPropsTextPage::SetActive ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEItemPropsTextPage::SetActive ( void )\r\n");
    return retVal;
}


/*
================
rvGEItemPropsTextPage::KillActive

Applys the settings currently stored in the property page back into the attached window
================
*/
bool rvGEItemPropsTextPage::KillActive ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEItemPropsTextPage::KillActive ( void )\r\n");
    return retVal;
}


class rvGEItemPropsKeysPage : public rvGEPropertyPage 
{
public:

	rvGEItemPropsKeysPage ( idDict* dictValues, rvGEWindowWrapper* wrapper );
	
	virtual bool	Init			( void );
	virtual bool	SetActive		( void );
	virtual int		HandleMessage	( UINT msg, WPARAM wParam, LPARAM lParam );

protected:

	idDict*				mDict;
	rvGEWindowWrapper*	mWrapper;
};	
	
rvGEItemPropsKeysPage::rvGEItemPropsKeysPage ( idDict* dict, rvGEWindowWrapper* wrapper )
{
	mDict = dict;
	mWrapper = wrapper;
}

INT_PTR CALLBACK ModifyItemKeyDlg_WndProc ( HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam )
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK ModifyItemKeyDlg_WndProc ( HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


int rvGEItemPropsKeysPage::HandleMessage ( UINT msg, WPARAM wParam, LPARAM lParam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvGEItemPropsKeysPage::HandleMessage ( UINT msg, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGEItemPropsKeysPage::Init

Called when the advanced page is first initialized.  Setup the extended
control styles and add the key/value columns
================
*/
bool rvGEItemPropsKeysPage::Init ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEItemPropsKeysPage::Init ( void )\r\n");
    return retVal;
}


/*
================
rvGEItemPropsKeysPage::SetActive

Called when the advanced page is made active and will add an entry to
the keys list view for each key in the properties dictionary
================
*/
bool rvGEItemPropsKeysPage::SetActive ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEItemPropsKeysPage::SetActive ( void )\r\n");
    return retVal;
}

	
class rvGEItemPropsGeneralPage : public rvGEPropertyPage
{
public:

	rvGEItemPropsGeneralPage ( idDict* dict, rvGEWindowWrapper::EWindowType type );
	
	virtual bool	SetActive		( void );
	virtual	bool	KillActive		( void );
	virtual bool	Init			( void );
	virtual int		HandleMessage	( UINT msg, WPARAM wParam, LPARAM lParam );
	
protected:

	void			UpdateCheckedStates		( void );

	idDict*	mDict;
	idStr	mType;
};

rvGEItemPropsGeneralPage::rvGEItemPropsGeneralPage ( idDict* dict, rvGEWindowWrapper::EWindowType type )
{
	mDict = dict;
	mType = rvGEWindowWrapper::WindowTypeToString ( type );
}

/*
================
rvGEItemPropsGeneralPage::UpdateCheckedStates

Updates the enabled state of all the controls that are linked to a checkbox
================
*/
void rvGEItemPropsGeneralPage::UpdateCheckedStates ( void )
{
    Sys_Printf("void rvGEItemPropsGeneralPage::UpdateCheckedStates ( void )\r\n");
}


/*
================
rvGEItemPropsGeneralPage::HandleMessage

Handles messages for the general item properties page
================
*/
int rvGEItemPropsGeneralPage::HandleMessage ( UINT msg, WPARAM wParam, LPARAM lParam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvGEItemPropsGeneralPage::HandleMessage ( UINT msg, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGEItemPropsGeneralPage::Init

Subclass the custom controls on the page
================
*/
bool rvGEItemPropsGeneralPage::Init ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEItemPropsGeneralPage::Init ( void )\r\n");
    return retVal;
}


/*
================
rvGEItemPropsGeneralPage::SetActive

Initializes the general properties page by copying data from the attached
window into the controls
================
*/
bool rvGEItemPropsGeneralPage::SetActive ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEItemPropsGeneralPage::SetActive ( void )\r\n");
    return retVal;
}



/*
================
rvGEItemPropsGeneralPage::KillActive

Applys the settings currently stored in the property page back into the attached window
================
*/
bool rvGEItemPropsGeneralPage::KillActive ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEItemPropsGeneralPage::KillActive ( void )\r\n");
    return retVal;
}


/*
================
GEItemPropsDlg_DoModal

Starts the item properties dialog
================
*/
bool GEItemPropsDlg_DoModal ( HWND parent, idWindow* window, idDict& dict )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GEItemPropsDlg_DoModal ( HWND parent, idWindow* window, idDict& dict )\r\n");
    return retVal;
}

	
