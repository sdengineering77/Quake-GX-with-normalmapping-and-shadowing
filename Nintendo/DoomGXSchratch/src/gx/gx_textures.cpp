/*
 * gx_textures.cpp
 *
 *  Created on: 20 aug. 2012
 *      Author: Danny
 */

#include <ogc/gx.h>
#include <ogc/cache.h>
#include <GL/gl.h>
#include <malloc.h>
#include <string.h>
#include "gx_qgx.h"

#define MAX_GXTEXTURES		512

typedef struct gxtexconvparms_s {
	int blockx;
	int blocky;
	int stepx;
	int bpp;
} gxtexconvparms_t;

typedef struct gxtexdesc_s {
	GXTexObj 	gxTexObj;
	byte *		data;
	bool		used;

	u16 		width;
	u16			height;

	u8			gxFormat;
	u8			gxWrapS;
	u8			gxWrapT;
	u8			gxFilterMin;

	u8			gxFilterMax;
	u8			gxMipMap;
	s8			mipLevel;
	u8			pad[1];

} gxtexdesc_t;

static int gxtexmaps[8];
static int gxcurrtexmap;
static gxtexdesc_t *gxtexdescs = NULL;
static int gxtexsrchfree;
static int gxcurrtexdesc;
// shutup compiler warning about possibly not
// initialized when defining it in the method itself
static GXColor color[2];

void qgx_InitTextures(void) {
	if (gxtexdescs) return;

Sys_Printf(">>> qgx_InitTextures()\r\n");
	gxtexdescs = (gxtexdesc_t *) memalign(32, MAX_GXTEXTURES * sizeof(gxtexdesc_t));
	memset(gxtexdescs, 0x00, MAX_GXTEXTURES * sizeof(gxtexdesc_t));
Sys_Printf(">>> gxtexdescs %p size %d element size %d\r\n", gxtexdescs, MAX_GXTEXTURES * sizeof(gxtexdesc_t), sizeof(gxtexdesc_t));
	gxtexsrchfree = 1; // gl tex 0 is reserved, so we start on 1 and waste 1 entry
	gxcurrtexdesc = 0;
	gxcurrtexmap = 0;

//	if (GX_GetTexBufferSize(16, 16, GX_TF_IA4, GX_FALSE, 0) == 256) {
//		Sys_Error("GX_GetTexBufferSize() is fixed in this ogc build, remove 2 * GX_GetTexBufferSize line\r\n");
//	}
}

static int qgx_AllocTexDescIndex(void) {
	int  index = 0;

	if (!gxtexdescs) {
		Sys_Error("Allocated texture desc before initialization\r\n");
	}
	if (gxtexsrchfree < MAX_GXTEXTURES) {
		for (index=gxtexsrchfree; index<MAX_GXTEXTURES; index++) {
			if (!gxtexdescs[index].used) {
				break;
			}
		}
	} else {
		Sys_Error("Out of gx_texture descriptors: > %d\r\n", MAX_GXTEXTURES);
	}
	gxtexsrchfree = index + 1;
	memset(&gxtexdescs[index], 0x00, sizeof(gxtexdesc_t));
	gxtexdescs[index].used = true;
	gxtexdescs[index].mipLevel = -1;

	return index;
}

static void qgx_FreeTexDesc(int index) {
	gxtexdescs[index].used = false;

	if (index < gxtexsrchfree) {
		gxtexsrchfree = index;
	}
}

static int qgx_GLFilterToGX(int glFilter) {
	switch(glFilter) {
	case GL_LINEAR:
		return GX_LINEAR;
	case GL_NEAREST:
		return GX_NEAR;
	case GL_LINEAR_MIPMAP_LINEAR:
		return GX_LIN_MIP_LIN;
	case GL_NEAREST_MIPMAP_NEAREST:
		Sys_Error("Unsupported GL Filter Min mode GL_NEAREST_MIPMAP_NEAREST\r\n");
	case GL_NEAREST_MIPMAP_LINEAR:
		Sys_Error("Unsupported GL Filter Min mode GL_NEAREST_MIPMAP_LINEAR\r\n");
	case GL_LINEAR_MIPMAP_NEAREST:
		Sys_Error("Unsupported GL Filter Min mode GL_LINEAR_MIPMAP_NEAREST\r\n");
	default:
		Sys_Error("Unsupported GL Filter Min mode %04X\r\n", glFilter);
	}
	return 0;
}

static int qgx_GLWrapModeToGX(int glWrapMode) {
	switch(glWrapMode) {
	case GL_REPEAT:
		return GX_REPEAT;
	case GL_CLAMP_TO_BORDER:
		return GX_CLAMP;
	case GL_CLAMP_TO_EDGE:
		return GX_CLAMP;
	default:
		Sys_Error("Unsupported GL Wrap S mode %04X\r\n", glWrapMode);
	}
	return 0;
}

static u32 qgx_GLFmtToGX(int glFmt) {
	switch(glFmt) {
	case GL_INTENSITY8: // single byte for all channels
	case GL_ALPHA8: // single byte, only alpha
		return GX_TF_I4;
	case GL_LUMINANCE8_ALPHA8: // two bytes, max quality
		return GX_TF_IA4;
	case GL_COMPRESSED_RGB_S3TC_DXT1_EXT:
	case GL_COMPRESSED_RGBA_S3TC_DXT3_EXT:
	case GL_COMPRESSED_RGBA_S3TC_DXT5_EXT:
		return GX_TF_CMPR;
	case GL_RGB5:
	case GL_RGB8: // four bytes
		return GX_TF_RGB565;
	case GL_RGBA4:
	case GL_RGBA8:
		return GX_TF_RGB5A3;
	// image_useNormalCompression should only be set to 1 on nv_10 and nv_20 paths
	case GL_COLOR_INDEX8_EXT:
		Sys_Error("Unsupported GL FMT: GL_COLOR_INDEX8_EXT\r\n");
	}
	Sys_Error("Unsupported GL FMT: %d\r\n", glFmt);
	return 0;
}

static void qgx_ReadColor(GXColor *color, int x, int y, int w, int inputFormat, byte *data) {
	int datasize;
	byte *address;

	if (inputFormat == GL_RGBA) {
		datasize = 4;
	} else {
		// assume A8
		datasize = 1;
	}

	address = data + datasize * (x + y * w);

	if (inputFormat == GL_RGBA) {
		color->r = address[0];
		color->g = address[1];
		color->b = address[2];
		color->a = address[3];
	} else {
/*		color->r = *address;
		color->g = *address;
		color->b = *address;
		color->a = *address;
*/
Sys_Error("New GL input texformat needed %4X\r\n", inputFormat);
	}
}

/**
 * Write to RGB5A3 or RGB565 word
 */
static __inline__ void qgx_WriteColorTexel(GXColor *color, byte *dest, bool toRGBA) {
	u16 texel;
	u16 *p = (u16 *)dest;

	if (toRGBA) {
		texel = 0x7FFF & (((color->a & 0xE0)<<7) | ((color->r & 0xF0)<<4) | (color->g&0xF0) | ((color->b&0xF0)>>4));
	} else {
		texel = ((color->r & 0xF8)<<8) | ((color->g&0xFC)<<3) | ((color->b&0xF8)>>3);
	}
	*p = texel;
}

static gxtexconvparms_t qgx_GetTexConvParms(const int fmt) {
	gxtexconvparms_t parms;

	switch(fmt) {
	case GX_TF_I4:
		parms.blockx = 8;
		parms.blocky = 8;
		parms.stepx = 2;
		parms.bpp = 1;
		break;
	case GX_TF_IA4:
		parms.blockx = 8;
		parms.blocky = 4;
		parms.stepx = 1;
		parms.bpp = 1;
		break;
	case GX_TF_RGB565:
		parms.blockx = 4;
		parms.blocky = 4;
		parms.stepx = 1;
		parms.bpp = 2;
		break;
	case GX_TF_RGB5A3:
		parms.blockx = 4;
		parms.blocky = 4;
		parms.stepx = 1;
		parms.bpp = 2;
		break;
	case GX_TF_CMPR:
		parms.blockx = 8;
		parms.blocky = 8;
		parms.stepx = 0;
		parms.bpp = 0;
		break;
	default:
		Sys_Error("qgx_getTexConvParms Tex format not supported yet!");
	}

	return parms;
}

static int qgx_GetTexBufferSize(int width, int height, int gxfmt, int mipmap, int nummip) {
	switch(gxfmt) {
	case GX_TF_IA4:
		return GX_GetTexBufferSize(width, height, gxfmt, GX_FALSE, 0); // broken in old libogc?
	default:
		return GX_GetTexBufferSize(width, height, gxfmt, GX_FALSE, 0);
	}
}
#include "stb_dxt.h"

static void qgx_TexConvToCMPRBlock(int glfmt, int width, int x, int y, byte *source, byte *dest) {

	for (int by=0; by<8; by+=4) {
		for (int bx=0; bx<8; bx+=4) {
			GXColor color[16];
			int i = 0;
			for (int py=0; py<4; py++) {
				for (int px=0; px<4; px++) {
					qgx_ReadColor(&color[i], bx+px+x, by+py+y, width, glfmt, source);
					++i;
				}
			}

			stb_compress_dxt_block(dest, (byte *) &color[0], false, 0);
			dest+= 8;
		}
	}
}

/*
 * blockx = num horizontal pixels per block
 * blocky = num vertical pixels per block
 * stepx = num hor pixels per sample (I4 = 2 hor pixels per sample)
 * bpp = num output bytes per sample (2 for 16 bits, 1 for 8 bits)
 * x = current horizontal block
 * y = current vertical block
 */
static void qgx_TexConvToPixelBlock(int gxfmt, int glfmt, int blockx, int blocky, int stepx, int bpp, int width, int x, int y, byte *source, byte *dest) {
	for (int py=0; py<blocky; py++) {
		for (int px=0; px<blockx; px+=stepx) {
			// target address in block
			byte *target = &dest[bpp * (px + py * blockx)/stepx];

			qgx_ReadColor(&color[0], px+x, py+y, width, glfmt, source);

			switch(gxfmt) {

			case GX_TF_I4:
				// read second pixel and write 2x4
				qgx_ReadColor(&color[1], 1+px+x, py+y, width, glfmt, source);
				*target = (color[0].a&0xF0);
				*target |= ((color[1].a>>4)&0x0F);
				break;
			case GX_TF_IA4:
				// map r to i and a to a
				*target = (color[0].a&0xF0);
				*target |= ((color[0].r>>4)&0x0F);
				break;
			case GX_TF_RGB565:
			case GX_TF_RGB5A3:
				// write to 565 or 5A3
				qgx_WriteColorTexel(&color[0], target, gxfmt == GX_TF_RGB5A3);
				break;
			default:
				Sys_Error("qgx_TexConvHandlePixel: Unsupported texture format %d\r\n", gxfmt);
			}
		}
	}

}


// -------------------------------------------------------

void qgxInitTextures(void) {
	qgx_InitTextures();
}

void qgxLoadCurrentTexMap() {
	gxtexdesc_t *texdesc;
	texdesc = &gxtexdescs[gxtexmaps[gxcurrtexmap]];

	if (texdesc->used && texdesc->data) {
		//Sys_Printf(">>> Binding to: map %d texnum %d texdesc %p\r\n", gxcurrtexmap, gxtexmaps[gxcurrtexmap], texdesc);
		GX_LoadTexObj(&texdesc->gxTexObj, gxcurrtexmap);
	} else {
		//Sys_Printf(">>> Not Binding to: map %d texnum %d texdesc %p\r\n", gxcurrtexmap, gxtexmaps[gxcurrtexmap], texdesc);
	}
}

void qgxTexImage2D(int miplevel, int internalFormat, int width, int height, int inputFormat, byte * data) {
	byte *buf, *blockptr;
	u32 gxfmt, gxsize;
	int x, y;
	gxtexconvparms_t tcparms;
	gxtexdesc_t *texdesc;

	texdesc = &gxtexdescs[gxcurrtexdesc];

	if (!texdesc->used) {
		Sys_Error("Texture not bound: %d\r\n", gxcurrtexdesc);
	}

	// DRS TODO: allow mipMaps?
	if (texdesc->mipLevel > -1 && texdesc->mipLevel != miplevel) {
		//Sys_Printf(">>> qgxTexImage2D return mip already set %d mip tried %d\r\n", texdesc->mipLevel, miplevel);
		return;
	}

	gxfmt = qgx_GLFmtToGX(internalFormat);
	gxsize = qgx_GetTexBufferSize(width, height, gxfmt, GX_FALSE, 0);

	Sys_Printf(">>> void qgxTexImage2D(%d, %04X, %d, %d, %04X, %p) size %d using texdesc %p %d gxfmt %d\r\n", miplevel, internalFormat, width, height, inputFormat, data, gxsize, texdesc, gxcurrtexdesc, gxfmt);

	// resize if necessary (we have a buffer, so it was allocated before and must be updated, but width or height differs than previous value)
	if (texdesc->data && (texdesc->width != width || texdesc->height != height)) {
		free(texdesc->data);
		texdesc->data = NULL;
	}

	// create data if necessary
	if (!texdesc->data) {
		buf = (byte *) memalign(32, gxsize);
	} else {
		buf = texdesc->data;
	}

	tcparms = qgx_GetTexConvParms(gxfmt);

	blockptr = buf;
	for(y=0; y<height; y+=tcparms.blocky) {
		for(x=0; x<width; x+=tcparms.blockx) {
			if (gxfmt != GX_TF_CMPR) {
				qgx_TexConvToPixelBlock(gxfmt, inputFormat, tcparms.blockx,
						tcparms.blocky, tcparms.stepx, tcparms.bpp, width, x, y, data, blockptr);
			} else {
				// must take care: DXT3/5 must be converted to quarter size RGBA or perhaps INDEXED RGBA2?
				// so correct buffersize must be included in gxGetTexSize...
				qgx_TexConvToCMPRBlock(inputFormat, width, x, y, data, blockptr);
			}
			blockptr += 32;
		}
	}

	texdesc->data = buf;
	texdesc->width = width;
	texdesc->height = height;
	texdesc->gxFormat = gxfmt;
	texdesc->gxWrapS = GX_REPEAT;
	texdesc->gxWrapT = GX_REPEAT;
	texdesc->gxMipMap = GX_FALSE;
	texdesc->mipLevel = miplevel;

//Sys_Printf(">>> loading to GX\r\n");

	// load into gx
	DCFlushRange(texdesc->data, gxsize);
	GX_InitTexObj(&texdesc->gxTexObj, texdesc->data, texdesc->width, texdesc->height, texdesc->gxFormat, texdesc->gxWrapS, texdesc->gxWrapT, texdesc->gxMipMap);
	//GX_InitTexObjLOD(&texdesc->gxTexObj, GX_LINEAR, GX_LINEAR, 0, 0, 0.0f, 0, GX_FALSE, 0);

	// rebind
	qgxLoadCurrentTexMap();
}

/**
 * Update texture settings of texture that is currently bound
 * Set any value to -1 to NOT update it
 */
void qgxSetGLTexParam(int glWrapS, int glWrapT, int glFilterMin, int glFilterMax, int glAniso) {
	u8 gxWrapS, gxWrapT, gxFilterMin, gxFilterMax, gxAniso;
	gxtexdesc_t *texdesc;

Sys_Printf(">>> qgxSetGLTexParam() %02X %02X %02X %02X %02X\r\n", glWrapS, glWrapT, glFilterMin, glFilterMax, glAniso);

	texdesc = &gxtexdescs[gxcurrtexdesc];

	if (!texdesc->used) {
		Sys_Error("Texture not bound: %d\r\n", gxcurrtexdesc);
	}

	if (glWrapS != -1) {
		gxWrapS = qgx_GLWrapModeToGX(glWrapS);
		texdesc->gxWrapS = gxWrapS;
	}
	if (glWrapT != -1) {
		gxWrapT = qgx_GLWrapModeToGX(glWrapT);
		texdesc->gxWrapT = gxWrapT;
	}
	if (glFilterMin != -1) {
		gxFilterMin = qgx_GLFilterToGX(glFilterMin);
		texdesc->gxFilterMin = gxFilterMin;
	}
	if (glFilterMax != -1) {
		gxFilterMax = qgx_GLFilterToGX(glFilterMax);
		texdesc->gxFilterMax = gxFilterMax;
	}

	// DRS TODO: aniso (dont forget to set it on texdesc)

	texdesc->gxMipMap = GX_FALSE;

	// load into gx
	GX_InitTexObj(&texdesc->gxTexObj, texdesc->data, texdesc->width, texdesc->height, texdesc->gxFormat, texdesc->gxWrapS, texdesc->gxWrapT, texdesc->gxMipMap);
	//GX_InitTexObjLOD(&texdesc->gxTexObj, gxFilterMin, gxFilterMax, 0, 0, 0.0f, 0, GX_FALSE, GX_ANISO_1);

}

void qgxGenTextures(int num, unsigned int *list) {
	for (int i=0; i<num; i++) {
		//Sys_Printf(">>> qgxGenTextures() %d\r\n", i);
		list[i] = (unsigned int) qgx_AllocTexDescIndex();
	}
}


void qgxDeleteTextures(int num, unsigned int *list) {
	for (int i=0; i<num; i++) {
Sys_Printf(">>> qgxDeleteTexture() %d %d\r\n", i, list[i]);
		if (gxtexdescs[list[i]].data) {
			free(gxtexdescs[list[i]].data);
		}
		qgx_FreeTexDesc((int) list[i]);
	}
}


void qgxBindTexture(unsigned int texnum) {
//Sys_Printf(">>> qgxBindTexture() %d\r\n", texnum);

	gxcurrtexdesc = texnum;
	gxtexmaps[gxcurrtexmap] = texnum;
	qgxLoadCurrentTexMap();

}

/**
 * Select texture number 0-7
 */
void qgxActiveTexMap(unsigned int texmap) {
Sys_Printf(">>> void qgxActiveTexMap %d\r\n", texmap);
	if (texmap > 7) {
		Sys_Error("Texmap cannot be bigger than 7\r\n");
	}
	gxcurrtexmap = texmap;
}
