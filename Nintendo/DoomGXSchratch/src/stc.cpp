/*
 * stc.cpp
 *
 *  Created on: 27 okt. 2012
 *      Author: Danny
 */
#include <gccore.h>
#include <wiiuse/wiiuse.h>
#include <wiiuse/wpad.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fat.h>
#include <fcntl.h>
#include <dirent.h>
#include <string.h>
#include <malloc.h>

#include "gx/gx_qgx.h"

int backtrace (void **buffer, int size);

float cubedata[][5] = {
	// voor
	{-1.0f,-1.0f, 1.0f, 0.0f,0.0f},
	{-1.0f,1.0f,1.0f, 0.0f,1.0f},
	{1.0f,1.0f,1.0f, 1.0f,1.0f},
	{1.0f,-1.0f,1.0f, 1.0f,0.0f},

	// achter
	{1.0f,-1.0f,-1.0f, 0.0f,1.0f},
	{1.0f,1.0f,-1.0f, 0.0f,0.0f},
	{-1.0f,1.0f,-1.0f, 1.0f,0.0f},
	{-1.0f,-1.0f,-1.0f, 1.0f,1.0f},

	// onder
	{-1.0f,-1.0f,-1.0f, 0.0f,1.0f},
	{-1.0f,-1.0f,1.0f, 0.0f,0.0f},
	{1.0f,-1.0f,1.0f, 1.0f,0.0f},
	{1.0f,-1.0f,-1.0f, 1.0f,1.0f},

	// boven
	{1.0f,1.0f,-1.0f, 0.0f,1.0f},
	{1.0f,1.0f,1.0f, 0.0f,0.0f},
	{-1.0f,1.0f,1.0f, 1.0f,0.0f},
	{-1.0f,1.0f,-1.0f,1.0f,1.0f},

	// links
	{-1.0f,-1.0f,-1.0f, 0.0f,1.0f},
	{-1.0f,1.0f,-1.0f, 0.0f,0.0f},
	{-1.0f,1.0f,1.0f, 1.0f,0.0f},
	{-1.0f,-1.0f,1.0f, 1.0f,1.0f},

	// rechts
	{1.0f,-1.0f,1.0f, 0.0f,1.0f},
	{1.0f,1.0f,1.0f, 0.0f,0.0f},
	{1.0f,1.0f,-1.0f, 1.0f,0.0f},
	{1.0f,-1.0f,-1.0f, 1.0f,1.0f}

};

#define ID_TIME_T time_t

typedef struct _TargaHeader {
	unsigned char 	id_length, colormap_type, image_type;
	unsigned short	colormap_index, colormap_length;
	unsigned char	colormap_size;
	unsigned short	x_origin, y_origin, width, height;
	unsigned char	pixel_size, attributes;
} TargaHeader;


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

short	BigShort( short l ) { return _BigShort( l ); }
short	LittleShort( short l ) { return _LittleShort( l ); }
int		BigLong( int l ) { return _BigLong( l ); }
int		LittleLong( int l ) { return _LittleLong( l ); }
float	BigFloat( float l ) { return _BigFloat( l ); }
float	LittleFloat( float l ) { return _LittleFloat( l ); }
void	BigRevBytes( void *bp, int elsize, int elcount ) { _BigRevBytes( bp, elsize, elcount ); }
void	LittleRevBytes( void *bp, int elsize, int elcount ){ _LittleRevBytes( bp, elsize, elcount ); }
void	LittleBitField( void *bp, int elsize ){ _LittleBitField( bp, elsize ); }

void	SixtetsForInt( byte *out, int src) { _SixtetsForInt( out, src ); }
int		IntForSixtets( byte *in ) { return _IntForSixtets( in ); }

/*
================
ShortSwap
================
*/
short ShortSwap( short l ) {
	byte    b1,b2;

	b1 = l&255;
	b2 = (l>>8)&255;

	return (b1<<8) + b2;
}

/*
================
ShortNoSwap
================
*/
short ShortNoSwap( short l ) {
	return l;
}

/*
================
LongSwap
================
*/
int LongSwap ( int l ) {
	byte    b1,b2,b3,b4;

	b1 = l&255;
	b2 = (l>>8)&255;
	b3 = (l>>16)&255;
	b4 = (l>>24)&255;

	return ((int)b1<<24) + ((int)b2<<16) + ((int)b3<<8) + b4;
}

/*
================
LongNoSwap
================
*/
int	LongNoSwap( int l ) {
	return l;
}

/*
================
FloatSwap
================
*/
float FloatSwap( float f ) {
	union {
		float	f;
		byte	b[4];
	} dat1, dat2;


	dat1.f = f;
	dat2.b[0] = dat1.b[3];
	dat2.b[1] = dat1.b[2];
	dat2.b[2] = dat1.b[1];
	dat2.b[3] = dat1.b[0];
	return dat2.f;
}

/*
================
FloatNoSwap
================
*/
float FloatNoSwap( float f ) {
	return f;
}

/*
=============
LoadTGA
=============
*/
static void LoadTGA( const char *name, byte **pic, int *width, int *height, ID_TIME_T *timestamp ) {
	int		columns, rows, numPixels, fileSize, numBytes;
	byte	*pixbuf;
	int		row, column;
	byte	*buf_p, *buffer;
	TargaHeader	targa_header;
	byte		*targa_rgba;

	*pic = NULL;

	//
	// load the file
	//
	FILE * file = fopen(name, "rb");
	fseek(file, 0, SEEK_END);
	fileSize = ftell(file);
printf(">>> tga end %d\r\n", fileSize);
	buf_p = buffer = (byte *) malloc(fileSize);
	fseek(file, 0, SEEK_SET);
	fread(buffer, fileSize, 1, file);

	targa_header.id_length = *buf_p++;
	targa_header.colormap_type = *buf_p++;
	targa_header.image_type = *buf_p++;

	targa_header.colormap_index = LittleShort ( *(short *)buf_p );
	buf_p += 2;
	targa_header.colormap_length = LittleShort ( *(short *)buf_p );
	buf_p += 2;
	targa_header.colormap_size = *buf_p++;
	targa_header.x_origin = LittleShort ( *(short *)buf_p );
	buf_p += 2;
	targa_header.y_origin = LittleShort ( *(short *)buf_p );
	buf_p += 2;
	targa_header.width = LittleShort ( *(short *)buf_p );
	buf_p += 2;
	targa_header.height = LittleShort ( *(short *)buf_p );
	buf_p += 2;
	targa_header.pixel_size = *buf_p++;
	targa_header.attributes = *buf_p++;

	if ( targa_header.image_type != 2 && targa_header.image_type != 10 && targa_header.image_type != 3 ) {
		Sys_Error( "LoadTGA( %s ): Only type 2 (RGB), 3 (gray), and 10 (RGB) TGA images supported\n", name );
	}

	if ( targa_header.colormap_type != 0 ) {
		Sys_Error( "LoadTGA( %s ): colormaps not supported\n", name );
	}

	if ( ( targa_header.pixel_size != 32 && targa_header.pixel_size != 24 ) && targa_header.image_type != 3 ) {
		Sys_Error( "LoadTGA( %s ): Only 32 or 24 bit images supported (no colormaps)\n", name );
	}

	if ( targa_header.image_type == 2 || targa_header.image_type == 3 ) {
		numBytes = targa_header.width * targa_header.height * ( targa_header.pixel_size >> 3 );
		if ( numBytes > fileSize - 18 - targa_header.id_length ) {
			Sys_Error( "LoadTGA( %s ): incomplete file\n", name );
		}
	}

	columns = targa_header.width;
	rows = targa_header.height;
	numPixels = columns * rows;

	if ( width ) {
		*width = columns;
	}
	if ( height ) {
		*height = rows;
	}

	targa_rgba = (byte *)malloc(numPixels*4);
	*pic = targa_rgba;

	if ( targa_header.id_length != 0 ) {
		buf_p += targa_header.id_length;  // skip TARGA image comment
	}

	if ( targa_header.image_type == 2 || targa_header.image_type == 3 )
	{
		// Uncompressed RGB or gray scale image
		for( row = rows - 1; row >= 0; row-- )
		{
			pixbuf = targa_rgba + row*columns*4;
			for( column = 0; column < columns; column++)
			{
				unsigned char red,green,blue,alphabyte;
				switch( targa_header.pixel_size )
				{

				case 8:
					blue = *buf_p++;
					green = blue;
					red = blue;
					*pixbuf++ = red;
					*pixbuf++ = green;
					*pixbuf++ = blue;
					*pixbuf++ = 255;
					break;

				case 24:
					blue = *buf_p++;
					green = *buf_p++;
					red = *buf_p++;
					*pixbuf++ = red;
					*pixbuf++ = green;
					*pixbuf++ = blue;
					*pixbuf++ = 255;
					break;
				case 32:
					blue = *buf_p++;
					green = *buf_p++;
					red = *buf_p++;
					alphabyte = *buf_p++;
					*pixbuf++ = red;
					*pixbuf++ = green;
					*pixbuf++ = blue;
					*pixbuf++ = alphabyte;
					break;
				default:
					Sys_Error( "LoadTGA( %s ): illegal pixel_size '%d'\n", name, targa_header.pixel_size );
					break;
				}
			}
		}
	}
	else if ( targa_header.image_type == 10 ) {   // Runlength encoded RGB images
		unsigned char red,green,blue,alphabyte,packetHeader,packetSize,j;

		red = 0;
		green = 0;
		blue = 0;
		alphabyte = 0xff;

		for( row = rows - 1; row >= 0; row-- ) {
			pixbuf = targa_rgba + row*columns*4;
			for( column = 0; column < columns; ) {
				packetHeader= *buf_p++;
				packetSize = 1 + (packetHeader & 0x7f);
				if ( packetHeader & 0x80 ) {        // run-length packet
					switch( targa_header.pixel_size ) {
						case 24:
								blue = *buf_p++;
								green = *buf_p++;
								red = *buf_p++;
								alphabyte = 255;
								break;
						case 32:
								blue = *buf_p++;
								green = *buf_p++;
								red = *buf_p++;
								alphabyte = *buf_p++;
								break;
						default:
							Sys_Error( "LoadTGA( %s ): illegal pixel_size '%d'\n", name, targa_header.pixel_size );
							break;
					}

					for( j = 0; j < packetSize; j++ ) {
						*pixbuf++=red;
						*pixbuf++=green;
						*pixbuf++=blue;
						*pixbuf++=alphabyte;
						column++;
						if ( column == columns ) { // run spans across rows
							column = 0;
							if ( row > 0) {
								row--;
							}
							else {
								goto breakOut;
							}
							pixbuf = targa_rgba + row*columns*4;
						}
					}
				}
				else {                            // non run-length packet
					for( j = 0; j < packetSize; j++ ) {
						switch( targa_header.pixel_size ) {
							case 24:
									blue = *buf_p++;
									green = *buf_p++;
									red = *buf_p++;
									*pixbuf++ = red;
									*pixbuf++ = green;
									*pixbuf++ = blue;
									*pixbuf++ = 255;
									break;
							case 32:
									blue = *buf_p++;
									green = *buf_p++;
									red = *buf_p++;
									alphabyte = *buf_p++;
									*pixbuf++ = red;
									*pixbuf++ = green;
									*pixbuf++ = blue;
									*pixbuf++ = alphabyte;
									break;
							default:
								Sys_Error( "LoadTGA( %s ): illegal pixel_size '%d'\n", name, targa_header.pixel_size );
								break;
						}
						column++;
						if ( column == columns ) { // pixel packet run spans across rows
							column = 0;
							if ( row > 0 ) {
								row--;
							}
							else {
								goto breakOut;
							}
							pixbuf = targa_rgba + row*columns*4;
						}
					}
				}
			}
			breakOut: ;
		}
	}

	//if ( (targa_header.attributes & (1<<5)) ) {			// image flp bit
	//	R_VerticalFlip( *pic, *width, *height );
	//}

	free(buffer);
	fclose(file);
}

int _main(int argc, char* argv[]) {
	int buttonState = 0x00000000;
	int numverts = sizeof(cubedata)/sizeof(float[5]);

	Vid_Init();
	qgxInit();

	qgxInitDefaultShader();
	qgxSetKColor0(1, 1, 1, 1);


	_BigShort = ShortNoSwap;
	_LittleShort = ShortSwap;
	_BigLong = LongNoSwap;
	_LittleLong = LongSwap;
	_BigFloat = FloatNoSwap;
	_LittleFloat = FloatSwap;

//		_BigShort = ShortSwap;
//		_LittleShort = ShortNoSwap;
//		_BigLong = LongSwap;
//		_LittleLong = LongNoSwap;
//		_BigFloat = FloatSwap;
//		_LittleFloat = FloatNoSwap;

	Mtx view; // view and perspective matrices
	Mtx model, modelview, mvi;
	Mtx44 perspective;
	guVector cam = {0.0F, 0.0F, 0.0F},
			up = {0.0F, 1.0F, 0.0F},
		  look = {0.0F, 0.0F, -1.0F};
	guVector cubeAxis[3] = {
		{0,1,1},
		{0,1,0},
		{0,1,0}};

	WPAD_Init();

	// setup our camera at the origin
	// looking down the -z axis with y up
	guLookAt(view, &cam, &up, &look);

	guPerspective(perspective, 45, (f32)640/480, 0.1F, (float) 0x7FFFFFFF);

	struct stat statbuf;
	fatInitDefault();

	DIR *direntry;
	struct dirent *entry;

	direntry = opendir ("/");

	char pathbuf[1024];
	while ((entry = readdir (direntry))){
		strncpy(pathbuf, entry->d_name, 1024);
		printf("2) fnmatch %s (%s)\n", pathbuf, entry->d_name);
	}
	closedir(direntry);

	int width, height;
	u32 texnum;
	byte *pic = NULL;
	LoadTGA(pathbuf, &pic, &width, &height, NULL);

	printf("loaded tga %p %d %d\r\n", pic, width, height);
	qgxGenTextures(1, &texnum);
	qgxBindTexture(texnum);
	qgxActiveTexMap(0);
//	qgxTexImage2D(0, GL_RGBA8, width, height, GL_RGBA, pic);
	qgxTexImage2D(0, GL_COMPRESSED_RGB_S3TC_DXT1_EXT, width, height, GL_RGBA, pic);

	printf("initalized\r\n");

	float rquad = 0;
	while(1) {
		rquad += 0.01f;

		WPAD_ScanPads();
		if(WPAD_ButtonsDown(0) & WPAD_BUTTON_HOME) exit(0);

		u32 buttonsHeld = WPAD_ButtonsHeld(0);
		u32 buttonsInv  = buttonsHeld^0xFFFFFFFF;
		if (buttonsHeld&WPAD_BUTTON_A) buttonState |= WPAD_BUTTON_A;
		if (buttonsHeld&WPAD_BUTTON_B) buttonState |= WPAD_BUTTON_B;
		if (buttonsHeld&WPAD_BUTTON_PLUS) buttonState |= WPAD_BUTTON_PLUS;
		if (buttonsHeld&WPAD_BUTTON_MINUS) buttonState |= WPAD_BUTTON_MINUS;


		// projection
		guPerspective(perspective, 45, (f32)640/480, 0.1F, (float) 0x7FFFFFFF);
		GX_LoadProjectionMtx(perspective, GX_PERSPECTIVE);

		// light setup
		GX_SetChanCtrl(GX_COLOR0A0, GX_DISABLE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHTNULL, GX_DF_NONE, GX_AF_NONE);
		GX_SetNumChans(1);

		qgxSetVertexPointer(GX_VA_POS, &cubedata[0][0], 5 * 4);
		qgxSetVertexPointer(GX_VA_TEX0, &cubedata[0][3], 5 * 4);

		// connect textures
		qgxActiveTexMap(0);
		qgxBindTexture(texnum);

		// blend setup
		GX_SetDstAlpha(GX_TRUE, 0);
		GX_SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);

		guMtxIdentity(model);
		guMtxRotAxisDeg(model, &cubeAxis[(0)], rquad);
		guMtxTransApply(model, model, 0.0f, 0.0f, -6.0f);
		guMtxConcat(view,model,modelview);
		GX_LoadPosMtxImm(modelview, GX_PNMTX0);
		GX_LoadNrmMtxImm(modelview, GX_PNMTX0);
		GX_SetCurrentMtx(GX_PNMTX0);

		gxvtxfmt_t gxvtxfmt = qgxGetCurrentGXVtxFmt();
		GX_Begin(GX_QUADS, gxvtxfmt.gxvtxfmt, numverts);
		for (int i=0; i<numverts; i++) {
			GX_Position1x16(i);
			GX_TexCoord1x16(i);
		}
		GX_End();

		GX_SetZMode(GX_TRUE, GX_LEQUAL, GX_TRUE);
		GX_SetColorUpdate(GX_TRUE);

		Vid_SwapBuffers(true);
	}

	return 0;
}
