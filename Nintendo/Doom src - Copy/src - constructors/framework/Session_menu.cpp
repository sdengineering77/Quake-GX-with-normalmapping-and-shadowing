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

#include "../idlib/precompiled.h"
#pragma hdrstop

#include "Session_local.h"

idCVar	idSessionLocal::gui_configServerRate( "gui_configServerRate", "0", CVAR_GUI | CVAR_ARCHIVE | CVAR_ROM | CVAR_INTEGER, "" );

// implements the setup for, and commands from, the main menu

/*
==============
idSessionLocal::GetActiveMenu
==============
*/
idUserInterface *idSessionLocal::GetActiveMenu( void ) {
    Sys_Printf("idUserInterface *idSessionLocal::GetActiveMenu( void )\r\n");
    return NULL;
}


/*
==============
idSessionLocal::StartMainMenu
==============
*/
void idSessionLocal::StartMenu( bool playIntro ) {
    Sys_Printf("void idSessionLocal::StartMenu( bool playIntro )\r\n");
}


/*
=================
idSessionLocal::SetGUI
=================
*/
void idSessionLocal::SetGUI( idUserInterface *gui, HandleGuiCommand_t handle ) {
    Sys_Printf("void idSessionLocal::SetGUI( idUserInterface *gui, HandleGuiCommand_t handle )\r\n");
}


/*
===============
idSessionLocal::ExitMenu
===============
*/
void idSessionLocal::ExitMenu( void ) {
    Sys_Printf("void idSessionLocal::ExitMenu( void )\r\n");
}


/*
===============
idListSaveGameCompare
===============
*/
ID_INLINE int idListSaveGameCompare( const fileTIME_T *a, const fileTIME_T *b ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idListSaveGameCompare( const fileTIME_T *a, const fileTIME_T *b )\r\n");
    return retVal;
}


/*
===============
idSessionLocal::GetSaveGameList
===============
*/
void idSessionLocal::GetSaveGameList( idStrList &fileList, idList<fileTIME_T> &fileTimes ) {
    Sys_Printf("void idSessionLocal::GetSaveGameList( idStrList &fileList, idList<fileTIME_T> &fileTimes )\r\n");
}


/*
===============
idSessionLocal::SetSaveGameGuiVars
===============
*/
void idSessionLocal::SetSaveGameGuiVars( void ) {
    Sys_Printf("void idSessionLocal::SetSaveGameGuiVars( void )\r\n");
}


/*
===============
idSessionLocal::SetModsMenuGuiVars
===============
*/
void idSessionLocal::SetModsMenuGuiVars( void ) {
    Sys_Printf("void idSessionLocal::SetModsMenuGuiVars( void )\r\n");
}



/*
===============
idSessionLocal::SetMainMenuSkin
===============
*/
void idSessionLocal::SetMainMenuSkin( void ) {
    Sys_Printf("void idSessionLocal::SetMainMenuSkin( void )\r\n");
}


/*
===============
idSessionLocal::SetPbMenuGuiVars
===============
*/
void idSessionLocal::SetPbMenuGuiVars( void ) {
    Sys_Printf("void idSessionLocal::SetPbMenuGuiVars( void )\r\n");
}


/*
===============
idSessionLocal::SetMainMenuGuiVars
===============
*/
void idSessionLocal::SetMainMenuGuiVars( void ) {
    Sys_Printf("void idSessionLocal::SetMainMenuGuiVars( void )\r\n");
}


/*
==============
idSessionLocal::HandleSaveGameMenuCommands
==============
*/
bool idSessionLocal::HandleSaveGameMenuCommand( idCmdArgs &args, int &icmd ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSessionLocal::HandleSaveGameMenuCommand( idCmdArgs &args, int &icmd )\r\n");
    return retVal;
}


/*
==============
idSessionLocal::HandleRestartMenuCommands

Executes any commands returned by the gui
==============
*/
void idSessionLocal::HandleRestartMenuCommands( const char *menuCommand ) {
    Sys_Printf("void idSessionLocal::HandleRestartMenuCommands( const char *menuCommand )\r\n");
}


/*
==============
idSessionLocal::HandleIntroMenuCommands

Executes any commands returned by the gui
==============
*/
void idSessionLocal::HandleIntroMenuCommands( const char *menuCommand ) {
    Sys_Printf("void idSessionLocal::HandleIntroMenuCommands( const char *menuCommand )\r\n");
}


/*
==============
idSessionLocal::UpdateMPLevelShot
==============
*/
void idSessionLocal::UpdateMPLevelShot( void ) {
    Sys_Printf("void idSessionLocal::UpdateMPLevelShot( void )\r\n");
}


/*
==============
idSessionLocal::HandleMainMenuCommands

Executes any commands returned by the gui
==============
*/
void idSessionLocal::HandleMainMenuCommands( const char *menuCommand ) {
    Sys_Printf("void idSessionLocal::HandleMainMenuCommands( const char *menuCommand )\r\n");
}


/*
==============
idSessionLocal::HandleChatMenuCommands

Executes any commands returned by the gui
==============
*/
void idSessionLocal::HandleChatMenuCommands( const char *menuCommand ) {
    Sys_Printf("void idSessionLocal::HandleChatMenuCommands( const char *menuCommand )\r\n");
}


/*
==============
idSessionLocal::HandleInGameCommands

Executes any commands returned by the gui
==============
*/
void idSessionLocal::HandleInGameCommands( const char *menuCommand ) {
    Sys_Printf("void idSessionLocal::HandleInGameCommands( const char *menuCommand )\r\n");
}


/*
==============
idSessionLocal::DispatchCommand
==============
*/
void idSessionLocal::DispatchCommand( idUserInterface *gui, const char *menuCommand, bool doIngame ) {
    Sys_Printf("void idSessionLocal::DispatchCommand( idUserInterface *gui, const char *menuCommand, bool doIngame )\r\n");
}



/*
==============
idSessionLocal::MenuEvent

Executes any commands returned by the gui
==============
*/
void idSessionLocal::MenuEvent( const sysEvent_t *event ) {
    Sys_Printf("void idSessionLocal::MenuEvent( const sysEvent_t *event )\r\n");
}


/*
=================
idSessionLocal::GuiFrameEvents
=================
*/
void idSessionLocal::GuiFrameEvents() {
    Sys_Printf("void idSessionLocal::GuiFrameEvents()\r\n");
}


/*
=================
idSessionLocal::BoxDialogSanityCheck
=================
*/
bool idSessionLocal::BoxDialogSanityCheck( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSessionLocal::BoxDialogSanityCheck( void )\r\n");
    return retVal;
}


/*
=================
idSessionLocal::MessageBox
=================
*/
const char* idSessionLocal::MessageBox( msgBoxType_t type, const char *message, const char *title, bool wait, const char *fire_yes, const char *fire_no, bool network ) {
    Sys_Printf("char* idSessionLocal::MessageBox( msgBoxType_t type, const char *message, const char *title, bool wait, const char *fire_yes, const char *fire_no, bool network )\r\n");
    return NULL;
}


/*
=================
idSessionLocal::DownloadProgressBox
=================
*/
void idSessionLocal::DownloadProgressBox( backgroundDownload_t *bgl, const char *title, int progress_start, int progress_end ) {
    Sys_Printf("void idSessionLocal::DownloadProgressBox( backgroundDownload_t *bgl, const char *title, int progress_start, int progress_end )\r\n");
}


/*
=================
idSessionLocal::StopBox
=================
*/
void idSessionLocal::StopBox() {
    Sys_Printf("void idSessionLocal::StopBox()\r\n");
}


/*
=================
idSessionLocal::HandleMsgCommands
=================
*/
void idSessionLocal::HandleMsgCommands( const char *menuCommand ) {
    Sys_Printf("void idSessionLocal::HandleMsgCommands( const char *menuCommand )\r\n");
}


/*
=================
idSessionLocal::HandleNoteCommands
=================
*/
#define NOTEDATFILE "C:/notenumber.dat"

void idSessionLocal::HandleNoteCommands( const char *menuCommand ) {
    Sys_Printf("void idSessionLocal::HandleNoteCommands( const char *menuCommand )\r\n");
}


/*
===============
idSessionLocal::SetCDKeyGuiVars
===============
*/
void idSessionLocal::SetCDKeyGuiVars( void ) {
    Sys_Printf("void idSessionLocal::SetCDKeyGuiVars( void )\r\n");
}

