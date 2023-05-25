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

#if defined( MACOS_X )
#include <signal.h>
#include <sys/types.h>
#include <unistd.h>
#endif

/*
===============================================================================

	idLib

===============================================================================
*/

idSys *			idLib::sys			= NULL;
idCommon *		idLib::common		= NULL;
idCVarSystem *	idLib::cvarSystem	= NULL;
idFileSystem *	idLib::fileSystem	= NULL;
int				idLib::frameNumber	= 0;

/*
================
idLib::Init
================
*/
void idLib::Init( void ) {
    Sys_Printf("void idLib::Init( void )\r\n");
}


/*
================
idLib::ShutDown
================
*/
void idLib::ShutDown( void ) {
    Sys_Printf("void idLib::ShutDown( void )\r\n");
}



/*
===============================================================================

	Colors

===============================================================================
*/

idVec4	colorBlack	= idVec4( 0.00f, 0.00f, 0.00f, 1.00f );
idVec4	colorWhite	= idVec4( 1.00f, 1.00f, 1.00f, 1.00f );
idVec4	colorRed	= idVec4( 1.00f, 0.00f, 0.00f, 1.00f );
idVec4	colorGreen	= idVec4( 0.00f, 1.00f, 0.00f, 1.00f );
idVec4	colorBlue	= idVec4( 0.00f, 0.00f, 1.00f, 1.00f );
idVec4	colorYellow	= idVec4( 1.00f, 1.00f, 0.00f, 1.00f );
idVec4	colorMagenta= idVec4( 1.00f, 0.00f, 1.00f, 1.00f );
idVec4	colorCyan	= idVec4( 0.00f, 1.00f, 1.00f, 1.00f );
idVec4	colorOrange	= idVec4( 1.00f, 0.50f, 0.00f, 1.00f );
idVec4	colorPurple	= idVec4( 0.60f, 0.00f, 0.60f, 1.00f );
idVec4	colorPink	= idVec4( 0.73f, 0.40f, 0.48f, 1.00f );
idVec4	colorBrown	= idVec4( 0.40f, 0.35f, 0.08f, 1.00f );
idVec4	colorLtGrey	= idVec4( 0.75f, 0.75f, 0.75f, 1.00f );
idVec4	colorMdGrey	= idVec4( 0.50f, 0.50f, 0.50f, 1.00f );
idVec4	colorDkGrey	= idVec4( 0.25f, 0.25f, 0.25f, 1.00f );

static dword colorMask[2] = { 255, 0 };

/*
================
ColorFloatToByte
================
*/
ID_INLINE static byte ColorFloatToByte( float c ) {
    byte retVal;
    memset(&retVal, 0, sizeof(byte));
    Sys_Printf("byte ColorFloatToByte( float c )\r\n");
    return retVal;
}


/*
================
PackColor
================
*/
dword PackColor( const idVec4 &color ) {
    dword retVal;
    memset(&retVal, 0, sizeof(dword));
    Sys_Printf("dword PackColor( const idVec4 &color )\r\n");
    return retVal;
}


/*
================
UnpackColor
================
*/
void UnpackColor( const dword color, idVec4 &unpackedColor ) {
    Sys_Printf("void UnpackColor( const dword color, idVec4 &unpackedColor )\r\n");
}


/*
================
PackColor
================
*/
dword PackColor( const idVec3 &color ) {
    dword retVal;
    memset(&retVal, 0, sizeof(dword));
    Sys_Printf("dword PackColor( const idVec3 &color )\r\n");
    return retVal;
}


/*
================
UnpackColor
================
*/
void UnpackColor( const dword color, idVec3 &unpackedColor ) {
    Sys_Printf("void UnpackColor( const dword color, idVec3 &unpackedColor )\r\n");
}


/*
===============
idLib::Error
===============
*/
void idLib::Error( const char *fmt, ... ) {
    Sys_Printf("void idLib::Error( const char *fmt, ... )\r\n");
}


/*
===============
idLib::Warning
===============
*/
void idLib::Warning( const char *fmt, ... ) {
    Sys_Printf("void idLib::Warning( const char *fmt, ... )\r\n");
}


/*
===============================================================================

	Byte order functions

===============================================================================
*/

// can't just use function pointers, or dll linkage can mess up
static short	(*_BigShort)( short l );
static short	(*_LittleShort)( short l );
static int		(*_BigLong)( int l );
static int		(*_LittleLong)( int l );
static float	(*_BigFloat)( float l );
static float	(*_LittleFloat)( float l );
static void		(*_BigRevBytes)( void *bp, int elsize, int elcount );
static void		(*_LittleRevBytes)( void *bp, int elsize, int elcount );
static void     (*_LittleBitField)( void *bp, int elsize );
static void		(*_SixtetsForInt)( byte *out, int src );
static int		(*_IntForSixtets)( byte *in );

short	BigShort( short l ) {
    short retVal;
    memset(&retVal, 0, sizeof(short));
    Sys_Printf("shortBigShort( short l )\r\n");
    return retVal;
}

short	LittleShort( short l ) {
    short retVal;
    memset(&retVal, 0, sizeof(short));
    Sys_Printf("shortLittleShort( short l )\r\n");
    return retVal;
}

int		BigLong( int l ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intBigLong( int l )\r\n");
    return retVal;
}

int		LittleLong( int l ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intLittleLong( int l )\r\n");
    return retVal;
}

float	BigFloat( float l ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("floatBigFloat( float l )\r\n");
    return retVal;
}

float	LittleFloat( float l ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("floatLittleFloat( float l )\r\n");
    return retVal;
}

void	BigRevBytes( void *bp, int elsize, int elcount ) {
    Sys_Printf("voidBigRevBytes( void *bp, int elsize, int elcount )\r\n");
}

void	LittleRevBytes( void *bp, int elsize, int elcount ){ _LittleRevBytes( bp, elsize, elcount ); }
void	LittleBitField( void *bp, int elsize ){ _LittleBitField( bp, elsize ); }

void	SixtetsForInt( byte *out, int src) {
    Sys_Printf("voidSixtetsForInt( byte *out, int src)\r\n");
}

int		IntForSixtets( byte *in ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intIntForSixtets( byte *in )\r\n");
    return retVal;
}


/*
================
ShortSwap
================
*/
short ShortSwap( short l ) {
    short retVal;
    memset(&retVal, 0, sizeof(short));
    Sys_Printf("short ShortSwap( short l )\r\n");
    return retVal;
}


/*
================
ShortNoSwap
================
*/
short ShortNoSwap( short l ) {
    short retVal;
    memset(&retVal, 0, sizeof(short));
    Sys_Printf("short ShortNoSwap( short l )\r\n");
    return retVal;
}


/*
================
LongSwap
================
*/
int LongSwap ( int l ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int LongSwap ( int l )\r\n");
    return retVal;
}


/*
================
LongNoSwap
================
*/
int	LongNoSwap( int l ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intLongNoSwap( int l )\r\n");
    return retVal;
}


/*
================
FloatSwap
================
*/
float FloatSwap( float f ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float FloatSwap( float f )\r\n");
    return retVal;
}


/*
================
FloatNoSwap
================
*/
float FloatNoSwap( float f ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float FloatNoSwap( float f )\r\n");
    return retVal;
}


/*
=====================================================================
RevBytesSwap

Reverses byte order in place.

INPUTS
   bp       bytes to reverse
   elsize   size of the underlying data type
   elcount  number of elements to swap

RESULTS
   Reverses the byte order in each of elcount elements.
===================================================================== */
void RevBytesSwap( void *bp, int elsize, int elcount ) {
    Sys_Printf("void RevBytesSwap( void *bp, int elsize, int elcount )\r\n");
}


/*
 =====================================================================
 RevBytesSwap
 
 Reverses byte order in place, then reverses bits in those bytes
 
 INPUTS
 bp       bitfield structure to reverse
 elsize   size of the underlying data type
 
 RESULTS
 Reverses the bitfield of size elsize.
 ===================================================================== */
void RevBitFieldSwap( void *bp, int elsize) {
    Sys_Printf("void RevBitFieldSwap( void *bp, int elsize)\r\n");
}


/*
================
RevBytesNoSwap
================
*/
void RevBytesNoSwap( void *bp, int elsize, int elcount ) {
    Sys_Printf("void RevBytesNoSwap( void *bp, int elsize, int elcount )\r\n");
}


/*
 ================
 RevBytesNoSwap
 ================
 */
void RevBitFieldNoSwap( void *bp, int elsize ) {
    Sys_Printf("void RevBitFieldNoSwap( void *bp, int elsize )\r\n");
}


/*
================
SixtetsForIntLittle
================
*/
void SixtetsForIntLittle( byte *out, int src) {
    Sys_Printf("void SixtetsForIntLittle( byte *out, int src)\r\n");
}


/*
================
SixtetsForIntBig
TTimo: untested - that's the version from initial base64 encode
================
*/
void SixtetsForIntBig( byte *out, int src) {
    Sys_Printf("void SixtetsForIntBig( byte *out, int src)\r\n");
}


/*
================
IntForSixtetsLittle
================
*/
int IntForSixtetsLittle( byte *in ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int IntForSixtetsLittle( byte *in )\r\n");
    return retVal;
}


/*
================
IntForSixtetsBig
TTimo: untested - that's the version from initial base64 decode
================
*/
int IntForSixtetsBig( byte *in ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int IntForSixtetsBig( byte *in )\r\n");
    return retVal;
}


/*
================
Swap_Init
================
*/
void Swap_Init( void ) {
    Sys_Printf("void Swap_Init( void )\r\n");
}


/*
==========
Swap_IsBigEndian
==========
*/
bool Swap_IsBigEndian( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Swap_IsBigEndian( void )\r\n");
    return retVal;
}


/*
===============================================================================

	Assertion

===============================================================================
*/

void AssertFailed( const char *file, int line, const char *expression ) {
    Sys_Printf("void AssertFailed( const char *file, int line, const char *expression )\r\n");
}

