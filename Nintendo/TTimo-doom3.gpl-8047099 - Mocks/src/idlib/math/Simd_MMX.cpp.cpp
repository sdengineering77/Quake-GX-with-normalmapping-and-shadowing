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

#include "../precompiled.h"
#pragma hdrstop

#include "Simd_Generic.h"
#include "Simd_MMX.h"


//===============================================================
//
//	MMX implementation of idSIMDProcessor
//
//===============================================================

#if defined(MACOS_X) && defined(__i386__)
/*
============
idSIMD_MMX::GetName
============
*/
const char * idSIMD_MMX::GetName( void ) const {
    Sys_Printf("char * idSIMD_MMX::GetName( void )\r\n");
    return NULL;
}


#elif defined(_WIN32)

#define EMMS_INSTRUCTION		__asm emms

/*
============
idSIMD_MMX::GetName
============
*/
const char * idSIMD_MMX::GetName( void ) const {
    Sys_Printf("char * idSIMD_MMX::GetName( void )\r\n");
    return NULL;
}


/*
================
MMX_Memcpy8B
================
*/
void MMX_Memcpy8B( void *dest, const void *src, const int count ) {
    Sys_Printf("void MMX_Memcpy8B( void *dest, const void *src, const int count )\r\n");
}


/*
================
MMX_Memcpy64B

  165MB/sec
================
*/
void MMX_Memcpy64B( void *dest, const void *src, const int count ) {
    Sys_Printf("void MMX_Memcpy64B( void *dest, const void *src, const int count )\r\n");
}


/*
================
MMX_Memcpy2kB

  240MB/sec
================
*/
void MMX_Memcpy2kB( void *dest, const void *src, const int count ) {
    Sys_Printf("void MMX_Memcpy2kB( void *dest, const void *src, const int count )\r\n");
}



/*
================
idSIMD_MMX::Memcpy

  optimized memory copy routine that handles all alignment cases and block sizes efficiently
================
*/
void VPCALL idSIMD_MMX::Memcpy( void *dest0, const void *src0, const int count0 ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_MMX::Memcpy( void *dest0, const void *src0, const int count0 )\r\n");
    return retVal;
}


/*
================
idSIMD_MMX::Memset
================
*/
void VPCALL idSIMD_MMX::Memset( void* dest0, const int val, const int count0 ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_MMX::Memset( void* dest0, const int val, const int count0 )\r\n");
    return retVal;
}


#endif /* _WIN32 */
