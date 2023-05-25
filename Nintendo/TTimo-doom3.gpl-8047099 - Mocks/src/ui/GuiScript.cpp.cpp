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

#include "Window.h"
#include "Winvar.h"
#include "GuiScript.h"
#include "UserInterfaceLocal.h"


/*
=========================
Script_Set
=========================
*/
void Script_Set(idWindow *window, idList<idGSWinVar> *src) {
    Sys_Printf("void Script_Set(idWindow *window, idList<idGSWinVar> *src)\r\n");
}


/*
=========================
Script_SetFocus
=========================
*/
void Script_SetFocus(idWindow *window, idList<idGSWinVar> *src) {
    Sys_Printf("void Script_SetFocus(idWindow *window, idList<idGSWinVar> *src)\r\n");
}


/*
=========================
Script_ShowCursor
=========================
*/
void Script_ShowCursor(idWindow *window, idList<idGSWinVar> *src) {
    Sys_Printf("void Script_ShowCursor(idWindow *window, idList<idGSWinVar> *src)\r\n");
}


/*
=========================
Script_RunScript

 run scripts must come after any set cmd set's in the script
=========================
*/
void Script_RunScript(idWindow *window, idList<idGSWinVar> *src) {
    Sys_Printf("void Script_RunScript(idWindow *window, idList<idGSWinVar> *src)\r\n");
}


/*
=========================
Script_LocalSound
=========================
*/
void Script_LocalSound(idWindow *window, idList<idGSWinVar> *src) {
    Sys_Printf("void Script_LocalSound(idWindow *window, idList<idGSWinVar> *src)\r\n");
}


/*
=========================
Script_EvalRegs
=========================
*/
void Script_EvalRegs(idWindow *window, idList<idGSWinVar> *src) {
    Sys_Printf("void Script_EvalRegs(idWindow *window, idList<idGSWinVar> *src)\r\n");
}


/*
=========================
Script_EndGame
=========================
*/
void Script_EndGame( idWindow *window, idList<idGSWinVar> *src ) {
    Sys_Printf("void Script_EndGame( idWindow *window, idList<idGSWinVar> *src )\r\n");
}


/*
=========================
Script_ResetTime
=========================
*/
void Script_ResetTime(idWindow *window, idList<idGSWinVar> *src) {
    Sys_Printf("void Script_ResetTime(idWindow *window, idList<idGSWinVar> *src)\r\n");
}


/*
=========================
Script_ResetCinematics
=========================
*/
void Script_ResetCinematics(idWindow *window, idList<idGSWinVar> *src) {
    Sys_Printf("void Script_ResetCinematics(idWindow *window, idList<idGSWinVar> *src)\r\n");
}


/*
=========================
Script_Transition
=========================
*/
void Script_Transition(idWindow *window, idList<idGSWinVar> *src) {
    Sys_Printf("void Script_Transition(idWindow *window, idList<idGSWinVar> *src)\r\n");
}


typedef struct {
	const char *name;
	void (*handler) (idWindow *window, idList<idGSWinVar> *src);
	int mMinParms;
	int mMaxParms;
} guiCommandDef_t;

guiCommandDef_t commandList[] = {
	{ "set", Script_Set, 2, 999 },
	{ "setFocus", Script_SetFocus, 1, 1 },
	{ "endGame", Script_EndGame, 0, 0 },
	{ "resetTime", Script_ResetTime, 0, 2 },
	{ "showCursor", Script_ShowCursor, 1, 1 },
	{ "resetCinematics", Script_ResetCinematics, 0, 2 },
	{ "transition", Script_Transition, 4, 6 },
	{ "localSound", Script_LocalSound, 1, 1 },
	{ "runScript", Script_RunScript, 1, 1 },
	{ "evalRegs", Script_EvalRegs, 0, 0 }
};

int	scriptCommandCount = sizeof(commandList) / sizeof(guiCommandDef_t);


/*
=========================
idGuiScript::idGuiScript
=========================
*/
idGuiScript::idGuiScript() {
	ifList = NULL;
	elseList = NULL;
	conditionReg = -1;
	handler = NULL;
	parms.SetGranularity( 2 );
}

/*
=========================
idGuiScript::~idGuiScript
=========================
*/
idGuiScript::~idGuiScript() {
	delete ifList;
	delete elseList;
	int c = parms.Num();
	for ( int i = 0; i < c; i++ ) {
		if ( parms[i].own ) {
			delete parms[i].var;
		}
	}
}

/*
=========================
idGuiScript::WriteToSaveGame
=========================
*/
void idGuiScript::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void idGuiScript::WriteToSaveGame( idFile *savefile )\r\n");
}


/*
=========================
idGuiScript::ReadFromSaveGame
=========================
*/
void idGuiScript::ReadFromSaveGame( idFile *savefile ) {
    Sys_Printf("void idGuiScript::ReadFromSaveGame( idFile *savefile )\r\n");
}


/*
=========================
idGuiScript::Parse
=========================
*/
bool idGuiScript::Parse(idParser *src) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGuiScript::Parse(idParser *src)\r\n");
    return retVal;
}


/*
=========================
idGuiScriptList::Execute
=========================
*/
void idGuiScriptList::Execute(idWindow *win) {
    Sys_Printf("void idGuiScriptList::Execute(idWindow *win)\r\n");
}


/*
=========================
idGuiScriptList::FixupParms
=========================
*/
void idGuiScript::FixupParms(idWindow *win) {
    Sys_Printf("void idGuiScript::FixupParms(idWindow *win)\r\n");
}


/*
=========================
idGuiScriptList::FixupParms
=========================
*/
void idGuiScriptList::FixupParms(idWindow *win) {
    Sys_Printf("void idGuiScriptList::FixupParms(idWindow *win)\r\n");
}


/*
=========================
idGuiScriptList::WriteToSaveGame
=========================
*/
void idGuiScriptList::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void idGuiScriptList::WriteToSaveGame( idFile *savefile )\r\n");
}


/*
=========================
idGuiScriptList::ReadFromSaveGame
=========================
*/
void idGuiScriptList::ReadFromSaveGame( idFile *savefile ) {
    Sys_Printf("void idGuiScriptList::ReadFromSaveGame( idFile *savefile )\r\n");
}

