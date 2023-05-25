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

void	RadiantInit( void ) {
    Sys_Printf("voidRadiantInit( void )\r\n");
}

void	RadiantShutdown( void ) {
    Sys_Printf("voidRadiantShutdown( void )\r\n");
}

void	RadiantRun( void ) {
    Sys_Printf("voidRadiantRun( void )\r\n");
}

void	RadiantPrint( const char *text ) {
    Sys_Printf("voidRadiantPrint( const char *text )\r\n");
}

void	RadiantSync( const char *mapName, const idVec3 &viewOrg, const idAngles &viewAngles ) {
    Sys_Printf("voidRadiantSync( const char *mapName, const idVec3 &viewOrg, const idAngles &viewAngles )\r\n");
}


void	LightEditorInit( const idDict *spawnArgs ) {
    Sys_Printf("voidLightEditorInit( const idDict *spawnArgs )\r\n");
}

void	LightEditorShutdown( void ) {
    Sys_Printf("voidLightEditorShutdown( void )\r\n");
}

void	LightEditorRun( void ) {
    Sys_Printf("voidLightEditorRun( void )\r\n");
}


void	SoundEditorInit( const idDict *spawnArgs ) {
    Sys_Printf("voidSoundEditorInit( const idDict *spawnArgs )\r\n");
}

void	SoundEditorShutdown( void ) {
    Sys_Printf("voidSoundEditorShutdown( void )\r\n");
}

void	SoundEditorRun( void ) {
    Sys_Printf("voidSoundEditorRun( void )\r\n");
}


void	AFEditorInit( const idDict *spawnArgs ) {
    Sys_Printf("voidAFEditorInit( const idDict *spawnArgs )\r\n");
}

void	AFEditorShutdown( void ) {
    Sys_Printf("voidAFEditorShutdown( void )\r\n");
}

void	AFEditorRun( void ) {
    Sys_Printf("voidAFEditorRun( void )\r\n");
}


void	ParticleEditorInit( const idDict *spawnArgs ) {
    Sys_Printf("voidParticleEditorInit( const idDict *spawnArgs )\r\n");
}

void	ParticleEditorShutdown( void ) {
    Sys_Printf("voidParticleEditorShutdown( void )\r\n");
}

void	ParticleEditorRun( void ) {
    Sys_Printf("voidParticleEditorRun( void )\r\n");
}


void	ScriptEditorInit( const idDict *spawnArgs ) {
    Sys_Printf("voidScriptEditorInit( const idDict *spawnArgs )\r\n");
}

void	ScriptEditorShutdown( void ) {
    Sys_Printf("voidScriptEditorShutdown( void )\r\n");
}

void	ScriptEditorRun( void ) {
    Sys_Printf("voidScriptEditorRun( void )\r\n");
}


void	DeclBrowserInit( const idDict *spawnArgs ) {
    Sys_Printf("voidDeclBrowserInit( const idDict *spawnArgs )\r\n");
}

void	DeclBrowserShutdown( void ) {
    Sys_Printf("voidDeclBrowserShutdown( void )\r\n");
}

void	DeclBrowserRun( void ) {
    Sys_Printf("voidDeclBrowserRun( void )\r\n");
}

void	DeclBrowserReloadDeclarations( void ) {
    Sys_Printf("voidDeclBrowserReloadDeclarations( void )\r\n");
}


void	GUIEditorInit( void ) {
    Sys_Printf("voidGUIEditorInit( void )\r\n");
}

void	GUIEditorShutdown( void ) {
    Sys_Printf("voidGUIEditorShutdown( void )\r\n");
}

void	GUIEditorRun( void ) {
    Sys_Printf("voidGUIEditorRun( void )\r\n");
}

bool	GUIEditorHandleMessage( void *msg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolGUIEditorHandleMessage( void *msg )\r\n");
    return retVal;
}


void	DebuggerClientLaunch( void ) {
    Sys_Printf("voidDebuggerClientLaunch( void )\r\n");
}

void	DebuggerClientInit( const char *cmdline ) {
    Sys_Printf("voidDebuggerClientInit( const char *cmdline )\r\n");
}

bool	DebuggerServerInit( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolDebuggerServerInit( void )\r\n");
    return retVal;
}

void	DebuggerServerShutdown( void ) {
    Sys_Printf("voidDebuggerServerShutdown( void )\r\n");
}

void	DebuggerServerPrint( const char *text ) {
    Sys_Printf("voidDebuggerServerPrint( const char *text )\r\n");
}

void	DebuggerServerCheckBreakpoint( idInterpreter *interpreter, idProgram *program, int instructionPointer ) {
    Sys_Printf("voidDebuggerServerCheckBreakpoint( idInterpreter *interpreter, idProgram *program, int instructionPointer )\r\n");
}


void	PDAEditorInit( const idDict *spawnArgs ) {
    Sys_Printf("voidPDAEditorInit( const idDict *spawnArgs )\r\n");
}


void	MaterialEditorInit() {
    Sys_Printf("voidMaterialEditorInit()\r\n");
}

void	MaterialEditorPrintConsole( const char *text ) {
    Sys_Printf("voidMaterialEditorPrintConsole( const char *text )\r\n");
}

