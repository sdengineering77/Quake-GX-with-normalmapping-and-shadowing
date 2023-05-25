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

#include "precompiled.h"
#pragma hdrstop

double idTimer::base = -1.0;


/*
=================
idTimer::InitBaseClockTicks
=================
*/
void idTimer::InitBaseClockTicks( void ) const {
    Sys_Printf("void idTimer::InitBaseClockTicks( void )\r\n");
}



/*
=================
idTimerReport::idTimerReport
=================
*/
idTimerReport::idTimerReport() {
}

/*
=================
idTimerReport::SetReportName
=================
*/
void idTimerReport::SetReportName( const char *name ) {
    Sys_Printf("void idTimerReport::SetReportName( const char *name )\r\n");
}


/*
=================
idTimerReport::~idTimerReport
=================
*/
idTimerReport::~idTimerReport() {
	Clear();
}

/*
=================
idTimerReport::AddReport
=================
*/
int idTimerReport::AddReport( const char *name ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idTimerReport::AddReport( const char *name )\r\n");
    return retVal;
}


/*
=================
idTimerReport::Clear
=================
*/
void idTimerReport::Clear() {
    Sys_Printf("void idTimerReport::Clear()\r\n");
}


/*
=================
idTimerReport::Reset
=================
*/
void idTimerReport::Reset() {
    Sys_Printf("void idTimerReport::Reset()\r\n");
}


/*
=================
idTimerReport::AddTime
=================
*/
void idTimerReport::AddTime( const char *name, idTimer *time ) {
    Sys_Printf("void idTimerReport::AddTime( const char *name, idTimer *time )\r\n");
}


/*
=================
idTimerReport::PrintReport
=================
*/
void idTimerReport::PrintReport() {
    Sys_Printf("void idTimerReport::PrintReport()\r\n");
}

