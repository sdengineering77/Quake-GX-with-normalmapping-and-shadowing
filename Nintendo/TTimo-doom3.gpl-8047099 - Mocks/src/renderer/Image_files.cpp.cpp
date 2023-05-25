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

#include "tr_local.h"

/*

This file only has a single entry point:

void R_LoadImage( const char *name, byte **pic, int *width, int *height, bool makePowerOf2 );

*/

/*
 * Include file for users of JPEG library.
 * You will need to have included system headers that define at least
 * the typedefs FILE and size_t before you can include jpeglib.h.
 * (stdio.h is sufficient on ANSI-conforming systems.)
 * You may also wish to include "jerror.h".
 */

extern "C" {
#include "jpeg-6/jpeglib.h"

	// hooks from jpeg lib to our system

	void jpg_Error( const char *fmt, ... ) {
    Sys_Printf("void jpg_Error( const char *fmt, ... )\r\n");
}


	void jpg_Printf( const char *fmt, ... ) {
    Sys_Printf("void jpg_Printf( const char *fmt, ... )\r\n");
}


}


/*
================
R_WriteTGA
================
*/
void R_WriteTGA( const char *filename, const byte *data, int width, int height, bool flipVertical ) {
    Sys_Printf("void R_WriteTGA( const char *filename, const byte *data, int width, int height, bool flipVertical )\r\n");
}



/*
================
R_WritePalTGA
================
*/
void R_WritePalTGA( const char *filename, const byte *data, const byte *palette, int width, int height, bool flipVertical ) {
    Sys_Printf("void R_WritePalTGA( const char *filename, const byte *data, const byte *palette, int width, int height, bool flipVertical )\r\n");
}



static void LoadBMP( const char *name, byte **pic, int *width, int *height, ID_TIME_T *timestamp );
static void LoadTGA( const char *name, byte **pic, int *width, int *height, ID_TIME_T *timestamp );
static void LoadJPG( const char *name, byte **pic, int *width, int *height, ID_TIME_T *timestamp );


/*
========================================================================

PCX files are used for 8 bit images

========================================================================
*/

typedef struct {
    char	manufacturer;
    char	version;
    char	encoding;
    char	bits_per_pixel;
    unsigned short	xmin,ymin,xmax,ymax;
    unsigned short	hres,vres;
    unsigned char	palette[48];
    char	reserved;
    char	color_planes;
    unsigned short	bytes_per_line;
    unsigned short	palette_type;
    char	filler[58];
    unsigned char	data;			// unbounded
} pcx_t;


/*
========================================================================

TGA files are used for 24/32 bit images

========================================================================
*/

typedef struct _TargaHeader {
	unsigned char 	id_length, colormap_type, image_type;
	unsigned short	colormap_index, colormap_length;
	unsigned char	colormap_size;
	unsigned short	x_origin, y_origin, width, height;
	unsigned char	pixel_size, attributes;
} TargaHeader;



/*
=========================================================

BMP LOADING

=========================================================
*/
typedef struct
{
	char id[2];
	unsigned long fileSize;
	unsigned long reserved0;
	unsigned long bitmapDataOffset;
	unsigned long bitmapHeaderSize;
	unsigned long width;
	unsigned long height;
	unsigned short planes;
	unsigned short bitsPerPixel;
	unsigned long compression;
	unsigned long bitmapDataSize;
	unsigned long hRes;
	unsigned long vRes;
	unsigned long colors;
	unsigned long importantColors;
	unsigned char palette[256][4];
} BMPHeader_t;

/*
==============
LoadBMP
==============
*/
static void LoadBMP( const char *name, byte **pic, int *width, int *height, ID_TIME_T *timestamp )
{
    Sys_Printf("void LoadBMP( const char *name, byte **pic, int *width, int *height, ID_TIME_T *timestamp )\r\n");
}



/*
=================================================================

PCX LOADING

=================================================================
*/


/*
==============
LoadPCX
==============
*/
static void LoadPCX ( const char *filename, byte **pic, byte **palette, int *width, int *height, 
					 ID_TIME_T *timestamp ) {
    Sys_Printf("void LoadPCX ( const char *filename, byte **pic, byte **palette, int *width, int *height, ID_TIME_T *timestamp )\r\n");
}



/*
==============
LoadPCX32
==============
*/
static void LoadPCX32 ( const char *filename, byte **pic, int *width, int *height, ID_TIME_T *timestamp) {
    Sys_Printf("void LoadPCX32 ( const char *filename, byte **pic, int *width, int *height, ID_TIME_T *timestamp)\r\n");
}


/*
=========================================================

TARGA LOADING

=========================================================
*/

/*
=============
LoadTGA
=============
*/
static void LoadTGA( const char *name, byte **pic, int *width, int *height, ID_TIME_T *timestamp ) {
    Sys_Printf("void LoadTGA( const char *name, byte **pic, int *width, int *height, ID_TIME_T *timestamp )\r\n");
}


/*
=========================================================

JPG LOADING

Interfaces with the huge libjpeg
=========================================================
*/

/*
=============
LoadJPG
=============
*/
static void LoadJPG( const char *filename, unsigned char **pic, int *width, int *height, ID_TIME_T *timestamp ) {
    Sys_Printf("void LoadJPG( const char *filename, unsigned char **pic, int *width, int *height, ID_TIME_T *timestamp )\r\n");
}


//===================================================================

/*
=================
R_LoadImage

Loads any of the supported image types into a cannonical
32 bit format.

Automatically attempts to load .jpg files if .tga files fail to load.

*pic will be NULL if the load failed.

Anything that is going to make this into a texture would use
makePowerOf2 = true, but something loading an image as a lookup
table of some sort would leave it in identity form.

It is important to do this at image load time instead of texture load
time for bump maps.

Timestamp may be NULL if the value is going to be ignored

If pic is NULL, the image won't actually be loaded, it will just find the
timestamp.
=================
*/
void R_LoadImage( const char *cname, byte **pic, int *width, int *height, ID_TIME_T *timestamp, bool makePowerOf2 ) {
    Sys_Printf("void R_LoadImage( const char *cname, byte **pic, int *width, int *height, ID_TIME_T *timestamp, bool makePowerOf2 )\r\n");
}



/*
=======================
R_LoadCubeImages

Loads six files with proper extensions
=======================
*/
bool R_LoadCubeImages( const char *imgName, cubeFiles_t extensions, byte *pics[6], int *outSize, ID_TIME_T *timestamp ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool R_LoadCubeImages( const char *imgName, cubeFiles_t extensions, byte *pics[6], int *outSize, ID_TIME_T *timestamp )\r\n");
    return retVal;
}

