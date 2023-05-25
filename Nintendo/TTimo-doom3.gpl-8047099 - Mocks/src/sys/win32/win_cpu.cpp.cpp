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

#include "win_local.h"


/*
==============================================================

	Clock ticks

==============================================================
*/

/*
================
Sys_GetClockTicks
================
*/
double Sys_GetClockTicks( void ) {
    double retVal;
    memset(&retVal, 0, sizeof(double));
    Sys_Printf("double Sys_GetClockTicks( void )\r\n");
    return retVal;
}


/*
================
Sys_ClockTicksPerSecond
================
*/
double Sys_ClockTicksPerSecond( void ) {
    double retVal;
    memset(&retVal, 0, sizeof(double));
    Sys_Printf("double Sys_ClockTicksPerSecond( void )\r\n");
    return retVal;
}



/*
==============================================================

	CPU

==============================================================
*/

/*
================
HasCPUID
================
*/
static bool HasCPUID( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool HasCPUID( void )\r\n");
    return retVal;
}


#define _REG_EAX		0
#define _REG_EBX		1
#define _REG_ECX		2
#define _REG_EDX		3

/*
================
CPUID
================
*/
static void CPUID( int func, unsigned regs[4] ) {
    Sys_Printf("void CPUID( int func, unsigned regs[4] )\r\n");
}



/*
================
IsAMD
================
*/
static bool IsAMD( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool IsAMD( void )\r\n");
    return retVal;
}


/*
================
HasCMOV
================
*/
static bool HasCMOV( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool HasCMOV( void )\r\n");
    return retVal;
}


/*
================
Has3DNow
================
*/
static bool Has3DNow( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Has3DNow( void )\r\n");
    return retVal;
}


/*
================
HasMMX
================
*/
static bool HasMMX( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool HasMMX( void )\r\n");
    return retVal;
}


/*
================
HasSSE
================
*/
static bool HasSSE( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool HasSSE( void )\r\n");
    return retVal;
}


/*
================
HasSSE2
================
*/
static bool HasSSE2( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool HasSSE2( void )\r\n");
    return retVal;
}


/*
================
HasSSE3
================
*/
static bool HasSSE3( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool HasSSE3( void )\r\n");
    return retVal;
}


/*
================
LogicalProcPerPhysicalProc
================
*/
#define NUM_LOGICAL_BITS   0x00FF0000     // EBX[23:16] Bit 16-23 in ebx contains the number of logical
                                          // processors per physical processor when execute cpuid with 
                                          // eax set to 1
static unsigned char LogicalProcPerPhysicalProc( void ) {
    char retVal;
    memset(&retVal, 0, sizeof(char));
    Sys_Printf("char LogicalProcPerPhysicalProc( void )\r\n");
    return retVal;
}


/*
================
GetAPIC_ID
================
*/
#define INITIAL_APIC_ID_BITS  0xFF000000  // EBX[31:24] Bits 24-31 (8 bits) return the 8-bit unique 
                                          // initial APIC ID for the processor this code is running on.
                                          // Default value = 0xff if HT is not supported
static unsigned char GetAPIC_ID( void ) {
    char retVal;
    memset(&retVal, 0, sizeof(char));
    Sys_Printf("char GetAPIC_ID( void )\r\n");
    return retVal;
}


/*
================
CPUCount

	logicalNum is the number of logical CPU per physical CPU
    physicalNum is the total number of physical processor
	returns one of the HT_* flags
================
*/
#define HT_NOT_CAPABLE				0
#define HT_ENABLED					1
#define HT_DISABLED					2
#define HT_SUPPORTED_NOT_ENABLED	3
#define HT_CANNOT_DETECT			4

int CPUCount( int &logicalNum, int &physicalNum ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CPUCount( int &logicalNum, int &physicalNum )\r\n");
    return retVal;
}


/*
================
HasHTT
================
*/
static bool HasHTT( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool HasHTT( void )\r\n");
    return retVal;
}


/*
================
HasHTT
================
*/
static bool HasDAZ( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool HasDAZ( void )\r\n");
    return retVal;
}


/*
================
Sys_GetCPUId
================
*/
cpuid_t Sys_GetCPUId( void ) {
    cpuid_t retVal;
    memset(&retVal, 0, sizeof(cpuid_t));
    Sys_Printf("cpuid_t Sys_GetCPUId( void )\r\n");
    return retVal;
}



/*
===============================================================================

	FPU

===============================================================================
*/

typedef struct bitFlag_s {
	char *		name;
	int			bit;
} bitFlag_t;

static byte fpuState[128], *statePtr = fpuState;
static char fpuString[2048];
static bitFlag_t controlWordFlags[] = {
	{ "Invalid operation", 0 },
	{ "Denormalized operand", 1 },
	{ "Divide-by-zero", 2 },
	{ "Numeric overflow", 3 },
	{ "Numeric underflow", 4 },
	{ "Inexact result (precision)", 5 },
	{ "Infinity control", 12 },
	{ "", 0 }
};
static char *precisionControlField[] = {
	"Single Precision (24-bits)",
	"Reserved",
	"Double Precision (53-bits)",
	"Double Extended Precision (64-bits)"
};
static char *roundingControlField[] = {
	"Round to nearest",
	"Round down",
	"Round up",
	"Round toward zero"
};
static bitFlag_t statusWordFlags[] = {
	{ "Invalid operation", 0 },
	{ "Denormalized operand", 1 },
	{ "Divide-by-zero", 2 },
	{ "Numeric overflow", 3 },
	{ "Numeric underflow", 4 },
	{ "Inexact result (precision)", 5 },
	{ "Stack fault", 6 },
	{ "Error summary status", 7 },
	{ "FPU busy", 15 },
	{ "", 0 }
};

/*
===============
Sys_FPU_PrintStateFlags
===============
*/
int Sys_FPU_PrintStateFlags( char *ptr, int ctrl, int stat, int tags, int inof, int inse, int opof, int opse ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_FPU_PrintStateFlags( char *ptr, int ctrl, int stat, int tags, int inof, int inse, int opof, int opse )\r\n");
    return retVal;
}


/*
===============
Sys_FPU_StackIsEmpty
===============
*/
bool Sys_FPU_StackIsEmpty( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Sys_FPU_StackIsEmpty( void )\r\n");
    return retVal;
}


/*
===============
Sys_FPU_ClearStack
===============
*/
void Sys_FPU_ClearStack( void ) {
    Sys_Printf("void Sys_FPU_ClearStack( void )\r\n");
}


/*
===============
Sys_FPU_GetState

  gets the FPU state without changing the state
===============
*/
const char *Sys_FPU_GetState( void ) {
    Sys_Printf("char *Sys_FPU_GetState( void )\r\n");
    return NULL;
}


/*
===============
Sys_FPU_EnableExceptions
===============
*/
void Sys_FPU_EnableExceptions( int exceptions ) {
    Sys_Printf("void Sys_FPU_EnableExceptions( int exceptions )\r\n");
}


/*
===============
Sys_FPU_SetPrecision
===============
*/
void Sys_FPU_SetPrecision( int precision ) {
    Sys_Printf("void Sys_FPU_SetPrecision( int precision )\r\n");
}


/*
================
Sys_FPU_SetRounding
================
*/
void Sys_FPU_SetRounding( int rounding ) {
    Sys_Printf("void Sys_FPU_SetRounding( int rounding )\r\n");
}


/*
================
Sys_FPU_SetDAZ
================
*/
void Sys_FPU_SetDAZ( bool enable ) {
    Sys_Printf("void Sys_FPU_SetDAZ( bool enable )\r\n");
}


/*
================
Sys_FPU_SetFTZ
================
*/
void Sys_FPU_SetFTZ( bool enable ) {
    Sys_Printf("void Sys_FPU_SetFTZ( bool enable )\r\n");
}

