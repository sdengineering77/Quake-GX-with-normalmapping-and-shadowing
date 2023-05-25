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

#include "RegExp.h"
#include "DeviceContext.h"
#include "Window.h"
#include "UserInterfaceLocal.h"

int idRegister::REGCOUNT[NUMTYPES] = {4, 1, 1, 1, 0, 2, 3, 4};

/*
====================
idRegister::SetToRegs
====================
*/
void idRegister::SetToRegs( float *registers ) {
    Sys_Printf("void idRegister::SetToRegs( float *registers )\r\n");
}


/*
=================
idRegister::GetFromRegs
=================
*/
void idRegister::GetFromRegs( float *registers ) {
    Sys_Printf("void idRegister::GetFromRegs( float *registers )\r\n");
}


/*
=================
idRegister::ReadFromDemoFile
=================
*/
void idRegister::ReadFromDemoFile(idDemoFile *f) {
    Sys_Printf("void idRegister::ReadFromDemoFile(idDemoFile *f)\r\n");
}


/*
=================
idRegister::WriteToDemoFile
=================
*/
void idRegister::WriteToDemoFile( idDemoFile *f ) {
    Sys_Printf("void idRegister::WriteToDemoFile( idDemoFile *f )\r\n");
}


/*
=================
idRegister::WriteToSaveGame
=================
*/
void idRegister::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void idRegister::WriteToSaveGame( idFile *savefile )\r\n");
}


/*
================
idRegister::ReadFromSaveGame
================
*/
void idRegister::ReadFromSaveGame( idFile *savefile ) {
    Sys_Printf("void idRegister::ReadFromSaveGame( idFile *savefile )\r\n");
}


/*
====================
idRegisterList::AddReg
====================
*/
void idRegisterList::AddReg( const char *name, int type, idVec4 data, idWindow *win, idWinVar *var ) {
    Sys_Printf("void idRegisterList::AddReg( const char *name, int type, idVec4 data, idWindow *win, idWinVar *var )\r\n");
}


/*
====================
idRegisterList::AddReg
====================
*/
void idRegisterList::AddReg( const char *name, int type, idParser *src, idWindow *win, idWinVar *var ) {
    Sys_Printf("void idRegisterList::AddReg( const char *name, int type, idParser *src, idWindow *win, idWinVar *var )\r\n");
}


/*
====================
idRegisterList::GetFromRegs
====================
*/
void idRegisterList::GetFromRegs(float *registers) {
    Sys_Printf("void idRegisterList::GetFromRegs(float *registers)\r\n");
}


/*
====================
idRegisterList::SetToRegs
====================
*/

void idRegisterList::SetToRegs( float *registers ) {
    Sys_Printf("void idRegisterList::SetToRegs( float *registers )\r\n");
}


/*
====================
idRegisterList::FindReg
====================
*/
idRegister *idRegisterList::FindReg( const char *name ) {
    Sys_Printf("idRegister *idRegisterList::FindReg( const char *name )\r\n");
    return NULL;
}


/*
====================
idRegisterList::Reset
====================
*/
void idRegisterList::Reset() {
    Sys_Printf("void idRegisterList::Reset()\r\n");
}


/*
====================
idRegisterList::ReadFromSaveGame
====================
*/
void idRegisterList::ReadFromDemoFile(idDemoFile *f) {
    Sys_Printf("void idRegisterList::ReadFromDemoFile(idDemoFile *f)\r\n");
}


/*
====================
idRegisterList::ReadFromSaveGame
====================
*/
void idRegisterList::WriteToDemoFile(idDemoFile *f) {
    Sys_Printf("void idRegisterList::WriteToDemoFile(idDemoFile *f)\r\n");
}


/*
=====================
idRegisterList::WriteToSaveGame
=====================
*/
void idRegisterList::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void idRegisterList::WriteToSaveGame( idFile *savefile )\r\n");
}


/*
====================
idRegisterList::ReadFromSaveGame
====================
*/
void idRegisterList::ReadFromSaveGame( idFile *savefile ) {
    Sys_Printf("void idRegisterList::ReadFromSaveGame( idFile *savefile )\r\n");
}

