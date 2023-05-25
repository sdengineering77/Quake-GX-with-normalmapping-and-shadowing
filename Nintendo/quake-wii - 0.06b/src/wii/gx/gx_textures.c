/*
Copyright (C) 2008 Eluan Costa Miranda

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  

See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/

// Silly, dirty code. But at least I still remembered how it worked 1 year later without any effort. YAY!
// Player textures stuff goes in gx_rmisc.c

#include <ogc/cache.h>
#include <ogc/system.h>
#include <ogc/lwp_heap.h>
#include <ogc/lwp_mutex.h>
#include <gx.h>

#include "../../generic/quakedef.h"
// DRS temporary light texture storage
#include "light_tpl.h"
#include "light.h"


// ELUTODO: GL_Upload32 and GL_Update32 could use some optimizations
// ELUTODO: mipmap and texture filters
// ELUTODO: RGB565 when we are sure we don't need alpha to get 1 extra green bit?

#define TEXTURE_SIZE	2
#define TEXTURE_FORMAT	GX_TF_RGB5A3

cvar_t		gl_max_size = {"gl_max_size", "1024"};

gltexture_t	gltextures[MAX_GLTEXTURES];
int			numgltextures;

heap_cntrl texture_heap;
void *texture_heap_ptr;
u32 texture_heap_size;

GXTexObj normalmap;
GXTexObj lightmap;
GXTexObj specularmap;
GXTexObj attenuatedshadesmap;
GXTexObj lightattnmap;
TPLFile  lightTPL;
int r_lightdirtexnum;


void R_InitTextureHeap (void)
{
	u32 level, size;

	_CPU_ISR_Disable(level);
	texture_heap_ptr = SYS_GetArena2Lo();
	texture_heap_size = 16 * 1024 * 1024;
	if ((u32)texture_heap_ptr + texture_heap_size > (u32)SYS_GetArena2Hi())
	{
		_CPU_ISR_Restore(level);
		Sys_Error("texture_heap + texture_heap_size > (u32)SYS_GetArena2Hi()");
	}	
	else
	{
		SYS_SetArena2Lo(texture_heap_ptr + texture_heap_size);
		_CPU_ISR_Restore(level);
	}

	memset(texture_heap_ptr, 0, texture_heap_size);

	size = __lwp_heap_init(&texture_heap, texture_heap_ptr, texture_heap_size, PPC_CACHE_ALIGNMENT);

	Con_Printf("Allocated %dM texture heap.\n", size / (1024 * 1024));
}

// DRS HACK  move
//extern byte		*lightmaps;
extern void		*scr_screenshotbuf;

/*
============
GL_CreateLightDirTex
DRS Creates a texture containing light directions where point (0.5 * width, 0.5 * height) acts as
the light's origin. Lazy code...
============
*/
void GL_CreateLightDirTexRGB565(GXTexObj *texObj) {
	u16 texbuf[128*128];
	s16 x, y;
	float height = 2;
	memset(&texbuf[0], 0x00, 128*128*2);
	for (y=-64; y<64; y++) {
		for (x=-64; x<64; x++) {
			float vect_x = -x;
			float vect_y = -y;
			float lengthInv = 1.0f/sqrtf(vect_x*vect_x+vect_y*vect_y + height*height);
			vect_x = vect_x*lengthInv;
			vect_y = vect_y*lengthInv;
		
			u8 g = ((u8) (128 + (127.0f * vect_x)))>>2; // ver
			u8 b = ((u8) (128 + (127.0f * vect_y)))>>3; // hor
			texbuf[(x+64) + (y+64)*128] = (g<<5|b);
		}
	}


	u16 *buf = (u16 *) memalign(32, 128*128*2);
	u16 *bufptr = buf; 
	if (!bufptr)
		Sys_Error("createLightDirTexRGB565: Out of memory.");

	for(y=0; y<128; y+=4) {
		for(x=0; x<128; x+=4) {
			int xx, yy;
			for (yy=0; yy<4; yy++) {
				for (xx=0; xx<4; xx++) {
					bufptr[xx + yy * 4]  = texbuf[x + xx + (y + yy)*128];
				}
			}
			bufptr += 16; 
		}
	}

	GX_InitTexObj(texObj, buf, 128, 128, GX_TF_RGB565, GX_CLAMP, GX_CLAMP, GX_TRUE);
	GX_InitTexObjLOD(texObj,GX_LINEAR,GX_LINEAR, 1, 1, 0.0f, GX_TC_GE, GX_TRUE, GX_ANISO_1);
	DCFlushRange(buf, 128*128*2);
} 


void GL_CreateLightBulbTexI8(GXTexObj *texLightDir) {
	u8 texbuf[128*128];
	s16 x, y;
//	float height = 2;
	u8 *buf = (u8 *) memalign(32, 128*128);
	memset(&texbuf[0], 0x00, 128*128);
//	for (y=-32; y<32; y++) {
//		for (x=-32; x<32; x++) {
	s16 fact = 16;
	for (y=0; y<fact; y++) {
		for (x=0; x<fact; x++) {
			float vect_x = -x;
			float vect_y = -y;
			// bulb
			float lengthf = sqrtf(vect_x*vect_x+vect_y*vect_y);
			if (lengthf > fact) lengthf = fact;
			float sin = lengthf / fact;
			float cos = sqrtf(1 - sin*sin);
//			float angle = 0.5f * M_PI * lengthf / fact;
//			float cos = cosf(angle);
			float intensity = 255.0f * cos;
			if (intensity > 255) intensity = 255;

			texbuf[x + y*128] = intensity;
		}
	}
	memset(&buf[0], 0, 128*128);
	u8 *bufptr = (u8 *) buf;
	for(y=0; y<128; y+=4) {
		for(x=0; x<128; x+=8) {
			int xx, yy;
			for (yy=0; yy<4; yy++) {
				for (xx=0; xx<8; xx++) {
					bufptr[xx + yy * 8]  = texbuf[x + xx + (y + yy)*128];
				}
			}
			bufptr += 32; 
		}
	}

	bufptr = (u8 *) buf;

	GX_InitTexObj(texLightDir, (void *) &bufptr[0], 128, 128, GX_TF_I8, GX_MIRROR, GX_MIRROR, GX_TRUE);
	GX_InitTexObjLOD(texLightDir,GX_LINEAR,GX_LINEAR, 1, 10, 0.0f, GX_TC_GE, GX_TRUE, GX_ANISO_1);
	DCFlushRange((void *) bufptr, 128*128);
} 


void GL_CreateLightAttnTexI8(GXTexObj *texLightDir) {
	u8 texbuf[128*128];
	u8 *attntex;
	s16 x, y;
	float height = 4;
	attntex = (u8 *) memalign(32, 128*128);
	memset(&texbuf[0], 0x00, 128*128);
	for (y=-64; y<64; y++) {
		for (x=-64; x<64; x++) {
			float vect_x = -x;
			float vect_y = -y;
			// bulb
			float lengthf = sqrtf(vect_x*vect_x+vect_y*vect_y + height * height);
			
			float intensity = 255.0f * height / lengthf;
			if (intensity > 255) intensity = 255;

			texbuf[(x+64) + (y+64)*128] = intensity;
		}
	}
	memset(&attntex[0], 0x00, 128*128);
	u8 *bufptr = (u8 *) ((u8 *)&attntex[0]);
	

	for(y=0; y<128; y+=4) {
		for(x=0; x<128; x+=8) {
			int xx, yy;
			for (yy=0; yy<4; yy++) {
				for (xx=0; xx<8; xx++) {
					bufptr[xx + yy * 8]  = texbuf[x + xx + (y + yy)*128];
				}
			}
			bufptr += 32; 
		}
	}

	bufptr = (u8 *) &attntex[0];

	GX_InitTexObj(texLightDir, (void *) &attntex[0], 128, 128, GX_TF_I8, GX_CLAMP, GX_CLAMP, GX_TRUE);
	GX_InitTexObjLOD(texLightDir,GX_LINEAR,GX_LINEAR, 1, 10, 0.0f, GX_TC_GE, GX_TRUE, GX_ANISO_1);
	DCFlushRange((void *) bufptr, 128*128);
} 


void GL_CreateLightRampTexI8(GXTexObj *texLightDir) {
	u8 texbuf[128*128];
	u8 *attntex;
	s16 x, y;
	attntex = (u8 *) memalign(32, 128*128);
	memset(&texbuf[0], 0x00, 128*128);
	for (y=-64; y<64; y++) {
		for (x=-64; x<64; x++) {
			float vect_x = ((float) x)/64.0f;
			float vect_y = ((float) y)/64.0f;
			// bulb
			float lengthf = vect_x*vect_x+vect_y*vect_y;
			
			float intensity = 255.0f * lengthf;
			if (intensity > 255) intensity = 255;

			texbuf[x+64 + (y+64) * 128] = intensity;
		}
	}
	memset(&attntex[0], 0x00, 128*128);
	u8 *bufptr = (u8 *) ((u8 *)&attntex[0]);

	for(y=0; y<128; y+=4) {
		for(x=0; x<128; x+=8) {
			int xx, yy;
			for (yy=0; yy<4; yy++) {
				for (xx=0; xx<8; xx++) {
					bufptr[xx + yy * 8]  = texbuf[x + xx + (y + yy)*128];
				}
			}
			bufptr += 32; 
		}
	}

	bufptr = (u8 *) &attntex[0];

	GX_InitTexObj(texLightDir, (void *) &attntex[0], 128, 128, GX_TF_I8, GX_CLAMP, GX_CLAMP, GX_TRUE);
	GX_InitTexObjLOD(texLightDir,GX_LINEAR,GX_LINEAR, 1, 10, 0.0f, GX_TC_GE, GX_TRUE, GX_ANISO_1);
	DCFlushRange((void *) bufptr, 128*128);
} 



void GL_CreateLightShadesTexI8(GXTexObj *texLightDir) {
	u8 texbuf[4*1024];
	u8 *shades;
	s16 x, y, precision = 5;
	shades = (u8 *) memalign(32, 4*1024);
	memset(&texbuf[0], 0x00, 4*1024);
	
	for(y=0; y<4; y++) {
		for(x=0; x<1024; x++) {
			float intensity = powf(((float)x)/((float)(1<<precision)), 3);
			if (intensity > 1) intensity = 1;
			u8 fixed = 255 * intensity;
			texbuf[(x) + (y)*1024] = fixed;
		}
	}
	memset(&shades[0], 0, 4*1024);
	
	u8 *bufptr = ((u8 *)&shades[0]);
	for(y=0; y<4; y+=4) {
		for(x=0; x<1024; x+=8) {
			int xx, yy;
			for (yy=0; yy<4; yy++) {
				for (xx=0; xx<8; xx++) {
					bufptr[xx + yy * 8]  = texbuf[x + xx + (y + yy)*1024];
				}
			}
			
			bufptr += 32; 
		}
	}
	bufptr = &shades[0];

	GX_InitTexObj(texLightDir, (void *) bufptr, 1024, 4, GX_TF_I8, GX_CLAMP, GX_CLAMP, GX_TRUE);
	GX_InitTexObjLOD(texLightDir,GX_LINEAR,GX_LINEAR, 1, 10, 0.0f, GX_TC_GE, GX_TRUE, GX_ANISO_1);
	DCFlushRange((void *) bufptr, 1024*4);
} 



/*
==================
R_InitTextures
==================
*/
void	R_InitTextures (void)
{
	int		x,y, m;
	byte	*dest;

	R_InitTextureHeap();

	Cvar_RegisterVariable (&gl_max_size);

	numgltextures = 0;

// create a simple checkerboard texture for the default
	r_notexture_mip = Hunk_AllocName (sizeof(texture_t) + 16*16+8*8+4*4+2*2, "notexture");
	
	r_notexture_mip->width = r_notexture_mip->height = 16;
	r_notexture_mip->offsets[0] = sizeof(texture_t);
	r_notexture_mip->offsets[1] = r_notexture_mip->offsets[0] + 16*16;
	r_notexture_mip->offsets[2] = r_notexture_mip->offsets[1] + 8*8;
	r_notexture_mip->offsets[3] = r_notexture_mip->offsets[2] + 4*4;
	
	for (m=0 ; m<4 ; m++)
	{
		dest = (byte *)r_notexture_mip + r_notexture_mip->offsets[m];
		for (y=0 ; y< (16>>m) ; y++)
			for (x=0 ; x< (16>>m) ; x++)
			{
				if (  (y< (8>>m) ) ^ (x< (8>>m) ) )
					*dest++ = 0;
				else
					*dest++ = 0xff;
			}
	}
	
	Con_Print("Loading light textures for normal mapping...");
	// TODO: calc spec map
	TPL_OpenTPLFromMemory(&lightTPL, (void *)light_tpl, light_tpl_size);
	TPL_GetTexture(&lightTPL, specular_map, &specularmap);

	GL_CreateLightDirTexRGB565(&normalmap); // TODO: remove texnum stuff
	GL_CreateLightBulbTexI8(&lightmap);	
	GL_CreateLightRampTexI8(&lightattnmap);
	GL_CreateLightShadesTexI8(&attenuatedshadesmap);
	R_InitStencilTextures(); // DRS needed some hook, move when an applicable place has been found (main.cpp?)
//	lightmaps = Hunk_AllocName (4 * 64 * 128 * 128, "lmtex");
	scr_screenshotbuf = Hunk_AllocName(3 * 640 * 528 + 18, "scrnsh");
	
	Con_Printf("textures: %p %p %p\n", &normalmap, &lightmap, &specularmap);
	Con_Print(" Done\n");
	
}

void GL_Bind2(int texnum)
{
	if (currenttexture0 == texnum)
		return;

	if (texnum < 0 || texnum >= MAX_GLTEXTURES)
	{
		Con_Printf("Invalid texture0\n");
		return;
	}

	if (!gltextures[texnum].used)
		Sys_Error("Tried to bind a inactive texture0.");

	GX_LoadTexObj(&(gltextures[texnum].gx_tex), GX_TEXMAP2);
}


void GL_Bind0 (int texnum)
{
	if (currenttexture0 == texnum)
		return;

	if (texnum < 0 || texnum >= MAX_GLTEXTURES)
	{
		Con_Printf("Invalid texture0\n");
		return;
	}

	if (!gltextures[texnum].used)
		Sys_Error("Tried to bind a inactive texture0.");

	currenttexture0 = texnum;
	GX_LoadTexObj(&(gltextures[texnum].gx_tex), GX_TEXMAP0);
}

void GL_Bind1 (int texnum)
{
	if (currenttexture1 == texnum)
		return;

	if (texnum < 0 || texnum >= MAX_GLTEXTURES)
	{
		Con_Printf("Invalid texture1\n");
		return;
	}

	if (!gltextures[texnum].used)
		Sys_Error("Tried to bind a inactive texture1.");

	currenttexture1 = texnum;
	GX_LoadTexObj(&(gltextures[texnum].gx_tex), GX_TEXMAP1);
}

void QGX_ZMode(qboolean state)
{
	if (state)
		GX_SetZMode(GX_TRUE, GX_LEQUAL, GX_TRUE);
	else
		GX_SetZMode(GX_FALSE, GX_LEQUAL, GX_TRUE);
}

void QGX_Alpha(qboolean state)
{
	if (state)
		GX_SetAlphaCompare(GX_GREATER,0,GX_AOP_AND,GX_ALWAYS,0);
	else
		GX_SetAlphaCompare(GX_ALWAYS,0,GX_AOP_AND,GX_ALWAYS,0);
}

void QGX_Blend(qboolean state)
{
	if (state)
		GX_SetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_CLEAR);
	else
		GX_SetBlendMode(GX_BM_NONE,GX_BL_ONE,GX_BL_ZERO,GX_LO_COPY);
}

//====================================================================

/*
================
GL_FindTexture
================
*/
int GL_FindTexture (char *identifier)
{
	int		i;
	gltexture_t	*glt;

	for (i=0, glt=gltextures ; i<numgltextures ; i++, glt++)
	{
		if (gltextures[i].used)
			if (!strcmp (identifier, glt->identifier))
				return gltextures[i].texnum;
	}

	return -1;
}

/*
================
GL_ResampleTexture
================
*/
void GL_ResampleTexture (unsigned *in, int inwidth, int inheight, unsigned *out,  int outwidth, int outheight)
{
	int		i, j;
	unsigned	*inrow;
	unsigned	frac, fracstep;

	fracstep = inwidth*0x10000/outwidth;
	for (i=0 ; i<outheight ; i++, out += outwidth)
	{
		inrow = in + inwidth*(i*inheight/outheight);
		frac = fracstep >> 1;
		for (j=0 ; j<outwidth ; j+=4)
		{
			out[j] = inrow[frac>>16];
			frac += fracstep;
			out[j+1] = inrow[frac>>16];
			frac += fracstep;
			out[j+2] = inrow[frac>>16];
			frac += fracstep;
			out[j+3] = inrow[frac>>16];
			frac += fracstep;
		}
	}
}

// FIXME, temporary
static	u32	scaled[640*480];
static	u32	trans[640*480];

/*
===============
GL_Upload32
===============
*/
/*
void GL_Upload32 (gltexture_t *destination, unsigned *data, int width, int height,  qboolean mipmap, qboolean alpha)
{
	int			i, x, y, s;
	u8			*pos;
	int			scaled_width, scaled_height;

	for (scaled_width = 1 << 5 ; scaled_width < width ; scaled_width<<=1)
		;
	for (scaled_height = 1 << 5 ; scaled_height < height ; scaled_height<<=1)
		;

	if (scaled_width > gl_max_size.value)
		scaled_width = gl_max_size.value;
	if (scaled_height > gl_max_size.value)
		scaled_height = gl_max_size.value;

	// ELUTODO: gl_max_size should be multiple of 32?
	// ELUTODO: mipmaps

	if (scaled_width * scaled_height > sizeof(scaled)/4)
		Sys_Error ("GL_Upload32: too big");

	if (scaled_width != width || scaled_height != height)
	{
		GL_ResampleTexture (data, width, height, scaled, scaled_width, scaled_height);
	}
	else
	{
		memcpy(scaled, data, scaled_width * scaled_height * sizeof(unsigned));
	}

	destination->data = __lwp_heap_allocate(&texture_heap, scaled_width * scaled_height * sizeof(unsigned));
	if (!destination->data)
		Sys_Error("GL_Upload32: Out of memory.");

	destination->scaled_width = scaled_width;
	destination->scaled_height = scaled_height;

	s = scaled_width * scaled_height;
	if (s & 31)
		Sys_Error ("GL_Upload32: s&31");

	if ((int)destination->data & 31)
		Sys_Error ("GL_Upload32: destination->data&31");

	pos = (u8 *)destination->data;
	for (y = 0; y < scaled_height; y += 4)
	{
		u8* row1 = (u8 *)&(scaled[scaled_width * (y + 0)]);
		u8* row2 = (u8 *)&(scaled[scaled_width * (y + 1)]);
		u8* row3 = (u8 *)&(scaled[scaled_width * (y + 2)]);
		u8* row4 = (u8 *)&(scaled[scaled_width * (y + 3)]);

		for (x = 0; x < scaled_width; x += 4)
		{
			u8 AR[32];
			u8 GB[32];

			for (i = 0; i < 4; i++)
			{
				u8* ptr1 = &(row1[(x + i) * 4]);
				u8* ptr2 = &(row2[(x + i) * 4]);
				u8* ptr3 = &(row3[(x + i) * 4]);
				u8* ptr4 = &(row4[(x + i) * 4]);

				AR[(i * 2) +  0] = ptr1[0];
				AR[(i * 2) +  1] = ptr1[3];
				AR[(i * 2) +  8] = ptr2[0];
				AR[(i * 2) +  9] = ptr2[3];
				AR[(i * 2) + 16] = ptr3[0];
				AR[(i * 2) + 17] = ptr3[3];
				AR[(i * 2) + 24] = ptr4[0];
				AR[(i * 2) + 25] = ptr4[3];

				GB[(i * 2) +  0] = ptr1[2];
				GB[(i * 2) +  1] = ptr1[1];
				GB[(i * 2) +  8] = ptr2[2];
				GB[(i * 2) +  9] = ptr2[1];
				GB[(i * 2) + 16] = ptr3[2];
				GB[(i * 2) + 17] = ptr3[1];
				GB[(i * 2) + 24] = ptr4[2];
				GB[(i * 2) + 25] = ptr4[1];
			}

			memcpy(pos, AR, sizeof(AR));
			pos += sizeof(AR);
			memcpy(pos, GB, sizeof(GB));
			pos += sizeof(GB);
		}
	}

	GX_InitTexObj(&destination->gx_tex, destination->data, scaled_width, scaled_height, GX_TF_RGBA8, GX_REPEAT, GX_REPEAT, *//*mipmap ? GX_TRUE :*//* GX_FALSE);

	DCFlushRange(destination->data, scaled_width * scaled_height * sizeof(unsigned));
}*/

int GX_RGBA_To_RGB5A3(u32 srccolor)
{
	u16 color;

	u32 r, g, b, a;
	r = srccolor & 0xFF;
	srccolor >>= 8;
	g = srccolor & 0xFF;
	srccolor >>= 8;
	b = srccolor & 0xFF;
	srccolor >>= 8;
	a = srccolor & 0xFF;

	if (a > 0xe0)
	{
		r = r >> 3;
		g = g >> 3;
		b = b >> 3;

		color = (r << 10) | (g << 5) | b;
		color |= 0x8000;
	}
	else
	{
		r = r >> 4;
		g = g >> 4;
		b = b >> 4;
		a = a >> 5;

		color = (a << 12) | (r << 8) | (g << 4) | b;
	}

	return color;
}

int GX_LinearToTiled(int x, int y, int width)
{
	int x0, x1, y0, y1;
	int offset;

	x0 = x & 3;
	x1 = x >> 2;
	y0 = y & 3;
	y1 = y >> 2;
	offset = x0 + 4 * y0 + 16 * x1 + 4 * width * y1;

	return offset;
}


/*
===============
GL_CopyRGB5A3

Converts from linear to tiled during copy
===============
*/
void GX_CopyRGB5A3(u16 *dest, u16 *src, int x1, int y1, int x2, int y2, int src_width)
{
	int i, j;

	for (i = y1; i < y2; i++)
		for (j = x1; j < x2; j++)
			dest[GX_LinearToTiled(j, i, src_width)] = src[j + i * src_width];
}

/*
===============
GL_CopyRGB5A3

Converts from linear RGBA8 to tiled RGB5A3 during copy
===============
*/
void GX_CopyRGBA8_To_RGB5A3(u16 *dest, u32 *src, int x1, int y1, int x2, int y2, int src_width)
{
	int i, j;

	for (i = y1; i < y2; i++)
		for (j = x1; j < x2; j++)
			dest[GX_LinearToTiled(j, i, src_width)] = GX_RGBA_To_RGB5A3(src[j + i * src_width]);
}

/*
===============
GL_Upload32
===============
*/
void GL_Upload32 (gltexture_t *destination, unsigned *data, int width, int height,  qboolean mipmap, qboolean alpha)
{
	int			s;
	int			scaled_width, scaled_height;

	for (scaled_width = 1 << 5 ; scaled_width < width ; scaled_width<<=1)
		;
	for (scaled_height = 1 << 5 ; scaled_height < height ; scaled_height<<=1)
		;

	if (scaled_width > gl_max_size.value)
		scaled_width = gl_max_size.value;
	if (scaled_height > gl_max_size.value)
		scaled_height = gl_max_size.value;

	// ELUTODO: gl_max_size should be multiple of 32?
	// ELUTODO: mipmaps

	if (scaled_width * scaled_height > sizeof(scaled)/4)
		Sys_Error ("GL_Upload32: too big");

	if (scaled_width != width || scaled_height != height)
	{
		GL_ResampleTexture (data, width, height, scaled, scaled_width, scaled_height);
	}
	else
	{
		memcpy(scaled, data, scaled_width * scaled_height * 4);
	}

	destination->data = __lwp_heap_allocate(&texture_heap, scaled_width * scaled_height * TEXTURE_SIZE);
	if (!destination->data)
		Sys_Error("GL_Upload32: Out of memory.");

	destination->scaled_width = scaled_width;
	destination->scaled_height = scaled_height;

	s = scaled_width * scaled_height;
	if (s & 31)
		Sys_Error ("GL_Upload32: s&31");

	if ((int)destination->data & 31)
		Sys_Error ("GL_Upload32: destination->data&31");

	GX_CopyRGBA8_To_RGB5A3((u16 *)destination->data, scaled, 0, 0, scaled_width, scaled_height, scaled_width);

	GX_InitTexObj(&destination->gx_tex, destination->data, scaled_width, scaled_height, TEXTURE_FORMAT, GX_REPEAT, GX_REPEAT, /*mipmap ? GX_TRUE :*/ GX_FALSE);

	DCFlushRange(destination->data, scaled_width * scaled_height * TEXTURE_SIZE);
}



/*
===============
GL_Upload32
===============
*/
unsigned int * tgenNormalMap(byte *pixels, int w, int h, float scale)
{
  int i, j, wr, hr;
  static unsigned nmap[512*512];
  unsigned char r, g, b;
  float sqlen, reciplen, nx, ny, nz;

  const float oneOver255 = 1.0f/255.0f;

  float cx1, cy1, cx2, cy2, dcx, dcy;

  wr = w;
  hr = h;

  for (i=0; i<h; i++) {
    for (j=0; j<w; j++) {
      /* Expand [0,255] texel values to the [0,1] range. */
      cx1  = pixels[i*wr + j] * oneOver255 * 0.5;
      cx1 += pixels[i*wr + (j-1)%wr] * oneOver255 * 0.5;
      cy1  = pixels[i*wr + j] * oneOver255 * 0.5;
      cy1 += pixels[((i-1)%hr)*wr + j] * oneOver255 * 0.5;
      /* Expand the texel to its right. */
      cx2  = pixels[i*wr + (j+1)%wr] * oneOver255 * 0.5;
      cx2 += pixels[i*wr + (j+2)%wr] * oneOver255 * 0.5;
      /* Expand the texel one up. */
      cy2  = pixels[((i+1)%hr)*wr + j] * oneOver255 * 0.5;
      cy2 += pixels[((i+2)%hr)*wr + j] * oneOver255 * 0.5;
      dcx = scale * (cx1 - cx2);
      dcy = scale * (cy1 - cy2);

      /* Normalize the vector. */
      sqlen = dcx*dcx + dcy*dcy + 1;
      reciplen = 1.0f/(float)sqrt(sqlen);
      nx = dcx*reciplen;
      ny = dcy*reciplen;
      nz = reciplen;

      /* Repack the normalized vector into an RGB unsigned byte
         vector in the normal map image. */
      g = (byte) (128 + 127*nx);
      b = (byte) (128 + 127*ny);
	  r = 0;
//      b = (byte) (128 + 127*nz);

      /* The highest resolution mipmap level always has a
         unit length magnitude. */
      nmap[i*w+j] = (255 << 24)|(b << 16)|(g << 8)|(r);
    }
  }

  return &nmap[0];
}

void createTestMapHor(byte *bumpmap, int width, int height) {
	int u, v, i;
	i= 0;
	for(v=0; v<height/2; v++) {
	
		for(u=0; u<width; u++) {
			if (((float) u)/((float)width) < 0.5f)
				bumpmap[i++] = 255 * fabs(sinf((M_PI * 4 * u)/width));
			else
				bumpmap[i++] = 255 * fabs(sinf((M_PI * 8 * u)/width));
		}
	}
	for(v=0; v<(height - height/2); v++) {
	
		for(u=0; u<width; u++) {
			bumpmap[i++] = 255 * fabs(sinf((M_PI * 8 * u)/width));
		}
	}

}

void createTestMapVer(byte *bumpmap, int width, int height) {
	int u, v, i;
	i= 0;
	for(v=0; v<height/2; v++) {
	
		for(u=0; u<width; u++) {
			if (((float) u)/((float)width) < 0.5f)
				bumpmap[i++] = 255 * fabs(sinf((M_PI * 4 * v)/height));
			else
				bumpmap[i++] = 255 * fabs(sinf((M_PI * 8 * v)/height));
		}
	}
	for(v=height/2; v<height; v++) {
	
		for(u=0; u<width; u++) {
			bumpmap[i++] = 255 * fabs(sinf((M_PI * 8 * v)/height));
		}
	}

}


/*
===============
GL_Upload8
===============
*/
void GL_Upload8 (gltexture_t *destination, byte *data, int width, int height,  qboolean mipmap, qboolean alpha)
{
	int			i, s;

	s = width*height;

	if (s&3)
		Sys_Error ("GL_Upload8: s&3");

	for (i = 0; i < s; i += 4)
	{
		trans[i] = d_8to24table[data[i]];
		trans[i + 1] = d_8to24table[data[i + 1]];
		trans[i + 2] = d_8to24table[data[i + 2]];
		trans[i + 3] = d_8to24table[data[i + 3]];
	}
	
/*	u32 srccolor;
	int r, g, b;
	static byte	bumpmap[512*512];
	for (i = 0; i < s; i ++) {
		srccolor = d_8to24table[data[i]];
		r = srccolor & 0xFF;
		srccolor >>= 8;
		g = srccolor & 0xFF;
		srccolor >>= 8;
		b = srccolor & 0xFF;
		int bw = (r+g+b)/3;
		trans[i] = bw | bw << 8 | bw << 16 | 255 << 24;
		bumpmap[i] = bw;
	}
	unsigned *normalmap;
	normalmap = tgenNormalMap((byte *) &bumpmap[0], width, height, 1);
*/
/*	static byte	bumpmap[512*512];
//	createTestMapHor((byte *) &bumpmap[0], width, height);
	createTestMapVer((byte *) &bumpmap[0], width, height);

//	for (i = 0; i < s; i ++)
//	{
//		trans[i] = 255<<24|bumpmap[i]<<16|bumpmap[i]<<8|bumpmap[i] ;
//	}
	unsigned *normalmap;
	normalmap = tgenNormalMap((byte *) &bumpmap[0], width, height, 1);
	GL_Upload32 (destination, normalmap, width, height, mipmap, alpha);
*/	
	
	GL_Upload32 (destination, trans, width, height, mipmap, alpha);
}

void GX_CopyRGBA8_LinearToTiled(u16 *dest, u32 *src, int x1, int y1, int x2, int y2, int src_width)
{
	int i, j;

	int it, it2;
	it = it2 = 0;
//	u32 *dest32 = (u32 *) dest;
	for (i = y1; i < y2; i++) {
		for (j = x1; j < x2; j++) {
			u32 srccolor = src[j + i * src_width];
			u8 r, g, b, a;
			r = (srccolor & 0xFF)>>3;
			srccolor >>= 8;
			g = (srccolor & 0xFF)>>2;
			srccolor >>= 8;
			b = (srccolor & 0xFF)>>3;
			srccolor >>= 8;
			a = srccolor & 0xFF;
/*
			r = g = b = 0;
			
			if (it == 0) r = 0xFF; 
			if (it == 1) g = 0xFF; 
			if (it == 2) b = 0xFF; 
			if (it == 3) { r = 0xFF; g=0xFF; b = 0xFF;  }
			if (it == 3) it = 0; 
			
			dest[1+j+i*src_width*2] = (b<<8) | 0xFF;
			dest[j + i*src_width*2] = (r<<24) | (g<<16);
//			dest32[j+i*src_width] = (r<<24) | (g<<16) | (b<<8) | 0xFF;
*/			
//			dest32[GX_LinearToTiled(j, i, src_width)] = (r<<24) | (g<<16) | (b<<8) | a;
			dest[GX_LinearToTiled(j, i, src_width)] = (r<<11) | (g<<5) | (b);
		}
	}
}


/*
===============
GL_UploadRGBA8
===============
*/
void GL_UploadRGBA8(gltexture_t *destination, unsigned *data, int width, int height)
{
	int			s;
	int			scaled_width, scaled_height;

	for (scaled_width = 1 << 5 ; scaled_width < width ; scaled_width<<=1)
		;
	for (scaled_height = 1 << 5 ; scaled_height < height ; scaled_height<<=1)
		;

	if (scaled_width > gl_max_size.value)
		scaled_width = gl_max_size.value;
	if (scaled_height > gl_max_size.value)
		scaled_height = gl_max_size.value;

	// ELUTODO: gl_max_size should be multiple of 32?
	// ELUTODO: mipmaps

	if (scaled_width * scaled_height > sizeof(scaled)/4)
		Sys_Error ("GL_Upload32: too big");

	if (scaled_width != width || scaled_height != height)
	{
		GL_ResampleTexture (data, width, height, scaled, scaled_width, scaled_height);
	}
	else
	{
		memcpy(scaled, data, scaled_width * scaled_height * 4);
	}

	destination->data = __lwp_heap_allocate(&texture_heap, scaled_width * scaled_height * TEXTURE_SIZE);
	if (!destination->data)
		Sys_Error("GL_Upload32: Out of memory.");

	destination->scaled_width = scaled_width;
	destination->scaled_height = scaled_height;

	s = scaled_width * scaled_height;
	if (s & 31)
		Sys_Error ("GL_Upload32: s&31");

	if ((int)destination->data & 31)
		Sys_Error ("GL_Upload32: destination->data&31");

	// DRS TODO: check dest->data type (u16 oru32???)
	GX_CopyRGBA8_LinearToTiled((u16 *)destination->data, scaled, 0, 0, scaled_width, scaled_height, scaled_width);
//	GX_InitTexObj(&destination->gx_tex, destination->data, scaled_width, scaled_height, GX_TF_RGBA8, GX_REPEAT, GX_REPEAT, GX_FALSE);
	GX_InitTexObj(&destination->gx_tex, destination->data, scaled_width, scaled_height, GX_TF_RGB565, GX_REPEAT, GX_REPEAT, GX_FALSE);
//Con_Printf("format loaded: %X format normalmap: %X\n", GX_GetTexObjFmt(&destination->gx_tex), GX_GetTexObjFmt(&normalmap));
	DCFlushRange(destination->data, scaled_width * scaled_height * TEXTURE_SIZE);
}


// DRS normal map storage
// DRS: copied from PENTA, tenebrae version. Changed it a little though
unsigned int * genNormalMap(byte *pixels, int w, int h, float scale)
{
  int i, j, wr, hr;
  static unsigned nmap[512*512];
  unsigned char r, g, b;
  float sqlen, reciplen, nx, ny, nz;

  const float oneOver255 = 1.0f/255.0f;

  float c, cx, cy, dcx, dcy;

  wr = w;
  hr = h;

  for (i=0; i<h; i++) {
    for (j=0; j<w; j++) {
      /* Expand [0,255] texel values to the [0,1] range. */
      c = pixels[i*wr + j] * oneOver255;
      /* Expand the texel to its right. */
      cx = pixels[i*wr + (j+1)%wr] * oneOver255;
      /* Expand the texel one up. */
      cy = pixels[((i+1)%hr)*wr + j] * oneOver255;
      dcx = scale * (cx - c);
      dcy = scale * (c - cy);

      /* Normalize the vector. */
      sqlen = dcx*dcx + dcy*dcy + 1;
      reciplen = 1.0f/(float)sqrt(sqlen);
      nx = dcx*reciplen;
      ny = dcy*reciplen;
      nz = reciplen;

      /* Repack the normalized vector into an RGB unsigned byte
         vector in the normal map image. */
//      r = (byte) (128 + 127*nx);
//     g = (byte) (128 + 127*ny);
//      b = (byte) (128 + 127*nz);
      g = (byte) (128 + 127*nx);
      b = (byte) (128 + 127*ny);
	  r = 128;
//      b = (byte) (128 + 127*nz);

      /* The highest resolution mipmap level always has a
         unit length magnitude. */
//      nmap[i*w+j] = LittleLong ((0 << 24)|(b << 16)|(g << 8)|(r));	// <AWE> Added support for big endian.
//     nmap[i*w+j] = (128 << 24)|(128 << 16)|(128 << 8)|(128);	// ^ Removed that again...
      nmap[i*w+j] = (128 << 24)|(b << 16)|(g << 8)|(r);	// ^ Removed that again...
    }
  }

  return &nmap[0];
}



// DRS: added these
/*
===============
GL_Upload8
===============
*/
void GL_RenderNormalMap (gltexture_t *destination, byte *data, int width, int height,  qboolean mipmap)
{
	static byte	bumpmap[512*512];

	int			i, s, r, g, b;
	unsigned	*normalmap;
	u32			srccolor;
	s = width*height;

	if (s&3)
		Sys_Error ("GL_Upload8: s&3");

	for (i = 0; i < s; i ++) {
		srccolor = d_8to24table[data[i]];
		r = srccolor & 0xFF;
		srccolor >>= 8;
		g = srccolor & 0xFF;
		srccolor >>= 8;
		b = srccolor & 0xFF;
//		srccolor >>= 8;
//		a = srccolor & 0xFF;
		int bw = (r+g+b)/3;
		bumpmap[i] = bw;
	}

//	createTestMapHor((byte *) &bumpmap, width, height);
//	createTestMapVer((byte *) &bumpmap, width, height);
	normalmap = tgenNormalMap((byte *) &bumpmap[0], width, height, 2);

	GL_UploadRGBA8 (destination, normalmap, width, height);
}


/*
===============
GL_UploadLightmapRGB5A3

Assumes scale is alright
===============
*/
void GL_UploadLightmapRGB5A3 (gltexture_t *destination, u16 *data, int width, int height,  qboolean mipmap, qboolean alpha)
{
	int			s;
	int			scaled_width, scaled_height;

	for (scaled_width = 1 << 5 ; scaled_width < width ; scaled_width<<=1)
		;
	for (scaled_height = 1 << 5 ; scaled_height < height ; scaled_height<<=1)
		;

	if (scaled_width > gl_max_size.value)
		scaled_width = gl_max_size.value;
	if (scaled_height > gl_max_size.value)
		scaled_height = gl_max_size.value;

	// ELUTODO: gl_max_size should be multiple of 32?
	// ELUTODO: mipmaps

	if (scaled_width * scaled_height > sizeof(scaled)/TEXTURE_SIZE)
		Sys_Error ("GL_UploadLightmapRGB5A3: too big");

	if (scaled_width != width || scaled_height != height)
	{
		Sys_Error ("GL_UploadLightmapRGB5A3: scaled_width != width || scaled_height != height");
	}

	destination->data = __lwp_heap_allocate(&texture_heap, scaled_width * scaled_height * TEXTURE_SIZE);
	if (!destination->data)
		Sys_Error("GL_UploadLightmapRGB5A3: Out of memory.");

	destination->scaled_width = scaled_width;
	destination->scaled_height = scaled_height;

	s = scaled_width * scaled_height;
	if (s & 31)
		Sys_Error ("GL_UploadLightmapRGB5A3: s&31");

	if ((int)destination->data & 31)
		Sys_Error ("GL_UploadLightmapRGB5A3: destination->data&31");

	GX_CopyRGB5A3((u16 *)destination->data, data, 0, 0, scaled_width, scaled_height, scaled_width);

	GX_InitTexObj(&destination->gx_tex, destination->data, scaled_width, scaled_height, TEXTURE_FORMAT, GX_REPEAT, GX_REPEAT, /*mipmap ? GX_TRUE :*/ GX_FALSE);

	DCFlushRange(destination->data, scaled_width * scaled_height * TEXTURE_SIZE);
}

/*
===============
GL_UploadLightmap32
===============
*/
void GL_UploadLightmap32 (gltexture_t *destination, unsigned *data, int width, int height,  qboolean mipmap, qboolean alpha)
{
	int			i, s;

	s = width*height;

	if (s&3)
		Sys_Error ("GL_UploadLightmap32: s&3");

	for (i = 0; i < s; i += 4)
	{
		((u16 *)trans)[i] = GX_RGBA_To_RGB5A3(data[i]);
		((u16 *)trans)[i + 1] = GX_RGBA_To_RGB5A3(data[i + 1]);
		((u16 *)trans)[i + 2] = GX_RGBA_To_RGB5A3(data[i + 2]);
		((u16 *)trans)[i + 3] = GX_RGBA_To_RGB5A3(data[i + 3]);
	}

	GL_UploadLightmapRGB5A3 (destination, (u16 *)trans, width, height, mipmap, alpha);
}


/*
================
GL_LoadNormalMap

DRS Generates a normalmap TODO, look for overriden maps, nicer interface regarding *data
================
*/
int GL_LoadNormalMap (char *baseTextureIdentifier, byte *data)
{
	int			i;
	gltexture_t	*glt;
	gltexture_t *base = 0;
	char identifier[255];
	
	if (baseTextureIdentifier[0]) {
		for (i=0, glt=gltextures; i<numgltextures; i++, glt++) {
			if (glt->used) 	{
				if (!strcmp (baseTextureIdentifier, glt->identifier)) { // we found a base
					base = glt;
				}
			}
		}
	}
	
	if (!base)  {
		Sys_Error("GL_LoadNormalMap: No base map.");
	}
	sprintf(identifier, "%s_bump", baseTextureIdentifier);
	// see if the texture is allready present
	for (i=0, glt=gltextures ; i<numgltextures ; i++, glt++)
	{
		if (glt->used)
		{
			if (!strcmp (identifier, glt->identifier))
			{
				if (base->width != glt->width || base->height != glt->height)
				{
					//Con_DPrintf ("GL_LoadTexture: cache mismatch, reloading");
					if (!__lwp_heap_free(&texture_heap, glt->data))
						Sys_Error("GL_LoadNormalMap: Error freeing data.");
					goto reload; // best way to do it
				}
				return glt->texnum;
			}
		}
	}

	for (i = 0, glt = gltextures; i < numgltextures; i++, glt++)
	{
		if (!glt->used)
			break;
	}

	if (i >= MAX_GLTEXTURES)
		Sys_Error ("GL_LoadTexture: numgltextures == MAX_GLTEXTURES\n");

reload:
	strcpy (glt->identifier, identifier);
	glt->texnum = i;
	glt->width = base->width;
	glt->height = base->height;
	glt->mipmap = base->mipmap; // DRS TODO: do something with this 
	glt->type = 2;
	glt->keep = base->keep;
	glt->used = true;
	GL_RenderNormalMap (glt, data, base->width, base->height, base->mipmap);

	if (glt->texnum == numgltextures)
		numgltextures++;
	return glt->texnum;
}


/*
================
GL_LoadTexture
================
*/
int GL_LoadTexture (char *identifier, int width, int height, byte *data, qboolean mipmap, qboolean alpha, qboolean keep)
{
	int			i;
	gltexture_t	*glt;

	// see if the texture is allready present
	if (identifier[0])
	{
		for (i=0, glt=gltextures ; i<numgltextures ; i++, glt++)
		{
			if (glt->used)
			{
				// ELUTODO: causes problems if we compare to a texture with NO name?
				if (!strcmp (identifier, glt->identifier))
				{
					if (width != glt->width || height != glt->height)
					{
						//Con_DPrintf ("GL_LoadTexture: cache mismatch, reloading");
						if (!__lwp_heap_free(&texture_heap, glt->data))
							Sys_Error("GL_LoadTexture: Error freeing data.");
						goto reload; // best way to do it
					}
					return glt->texnum;
				}
			}
		}
	}

	for (i = 0, glt = gltextures; i < numgltextures; i++, glt++)
	{
		if (!glt->used)
			break;
	}

//	if (i >= MAX_GLTEXTURES - 1) // DRS >= max-1
//		Sys_Error ("GL_LoadTexture: numgltextures == MAX_GLTEXTURES\n");
	if (i >= MAX_GLTEXTURES)
		Sys_Error ("GL_LoadTexture: numgltextures == MAX_GLTEXTURES\n");

reload:
	strcpy (glt->identifier, identifier);
	glt->texnum = i;
	glt->width = width;
	glt->height = height;
	glt->mipmap = mipmap;
	glt->type = 0;
	glt->keep = keep;
	glt->used = true;

	GL_Upload8 (glt, data, width, height, mipmap, alpha);
	
	// DRS hack to create bumpmaps
/*	glt++;
	glt->texnum = i+1;
	glt->width = width;
	glt->height = height;
	glt->mipmap = mipmap; // DRS TODO: do something with this 
	glt->type = 2;
	glt->keep = keep;
	glt->used = true;
	GL_RenderNormalMap (glt, data, width, height, mipmap, alpha);

	glt--; // DRS beware
	
	if (glt->texnum == numgltextures)
		numgltextures += 2; // DRS
*/		
	if (glt->texnum == numgltextures)
		numgltextures++;

	return glt->texnum;
}

/*
======================
GL_LoadLightmapTexture
======================
*/
int GL_LoadLightmapTexture (char *identifier, int width, int height, byte *data)
{
	gltexture_t	*glt;

	// They need to be allocated sequentially
	if (numgltextures == MAX_GLTEXTURES)
		Sys_Error ("GL_LoadLightmapTexture: numgltextures == MAX_GLTEXTURES\n");

	glt = &gltextures[numgltextures];
	strcpy (glt->identifier, identifier);
	glt->texnum = numgltextures;
	glt->width = width;
	glt->height = height;
	glt->mipmap = true; // ELUTODO
	glt->type = 1;
	glt->keep = false;
	glt->used = true;

	GL_UploadLightmap32 (glt, (u32 *)data, width, height, true, true);

	if (width != glt->scaled_width || height != glt->scaled_height)
		Sys_Error("GL_LoadLightmapTexture: Tried to scale lightmap\n");

	numgltextures++;

	return glt->texnum;
}

/*
===============
GL_Update32
===============
*/
/*
void GL_Update32 (gltexture_t *destination, unsigned *data, int width, int height,  qboolean mipmap, qboolean alpha)
{
	int			i, x, y, s;
	u8			*pos;
	int			scaled_width, scaled_height;

	for (scaled_width = 1 << 5 ; scaled_width < width ; scaled_width<<=1)
		;
	for (scaled_height = 1 << 5 ; scaled_height < height ; scaled_height<<=1)
		;

	if (scaled_width > gl_max_size.value)
		scaled_width = gl_max_size.value;
	if (scaled_height > gl_max_size.value)
		scaled_height = gl_max_size.value;

	// ELUTODO: gl_max_size should be multiple of 32?
	// ELUTODO: mipmaps

	if (scaled_width * scaled_height > sizeof(scaled)/4)
		Sys_Error ("GL_Update32: too big");

	if (scaled_width != width || scaled_height != height)
	{
		GL_ResampleTexture (data, width, height, scaled, scaled_width, scaled_height);
	}
	else
	{
		memcpy(scaled, data, scaled_width * scaled_height * sizeof(unsigned));
	}

	s = scaled_width * scaled_height;
	if (s & 31)
		Sys_Error ("GL_Update32: s&31");

	if ((int)destination->data & 31)
		Sys_Error ("GL_Update32: destination->data&31");

	pos = (u8 *)destination->data;
	for (y = 0; y < scaled_height; y += 4)
	{
		u8* row1 = (u8 *)&(scaled[scaled_width * (y + 0)]);
		u8* row2 = (u8 *)&(scaled[scaled_width * (y + 1)]);
		u8* row3 = (u8 *)&(scaled[scaled_width * (y + 2)]);
		u8* row4 = (u8 *)&(scaled[scaled_width * (y + 3)]);

		for (x = 0; x < scaled_width; x += 4)
		{
			u8 AR[32];
			u8 GB[32];

			for (i = 0; i < 4; i++)
			{
				u8* ptr1 = &(row1[(x + i) * 4]);
				u8* ptr2 = &(row2[(x + i) * 4]);
				u8* ptr3 = &(row3[(x + i) * 4]);
				u8* ptr4 = &(row4[(x + i) * 4]);

				AR[(i * 2) +  0] = ptr1[0];
				AR[(i * 2) +  1] = ptr1[3];
				AR[(i * 2) +  8] = ptr2[0];
				AR[(i * 2) +  9] = ptr2[3];
				AR[(i * 2) + 16] = ptr3[0];
				AR[(i * 2) + 17] = ptr3[3];
				AR[(i * 2) + 24] = ptr4[0];
				AR[(i * 2) + 25] = ptr4[3];

				GB[(i * 2) +  0] = ptr1[2];
				GB[(i * 2) +  1] = ptr1[1];
				GB[(i * 2) +  8] = ptr2[2];
				GB[(i * 2) +  9] = ptr2[1];
				GB[(i * 2) + 16] = ptr3[2];
				GB[(i * 2) + 17] = ptr3[1];
				GB[(i * 2) + 24] = ptr4[2];
				GB[(i * 2) + 25] = ptr4[1];
			}

			memcpy(pos, AR, sizeof(AR));
			pos += sizeof(AR);
			memcpy(pos, GB, sizeof(GB));
			pos += sizeof(GB);
		}
	}

	DCFlushRange(destination->data, scaled_width * scaled_height * sizeof(unsigned));
	GX_InvalidateTexAll();
}*/

/*
===============
GL_Update32
===============
*/
void GL_Update32 (gltexture_t *destination, u32 *data, int width, int height,  qboolean mipmap, qboolean alpha)
{
	int			s;
	int			scaled_width, scaled_height;

	for (scaled_width = 1 << 5 ; scaled_width < width ; scaled_width<<=1)
		;
	for (scaled_height = 1 << 5 ; scaled_height < height ; scaled_height<<=1)
		;

	if (scaled_width > gl_max_size.value)
		scaled_width = gl_max_size.value;
	if (scaled_height > gl_max_size.value)
		scaled_height = gl_max_size.value;

	// ELUTODO: gl_max_size should be multiple of 32?
	// ELUTODO: mipmaps

	if (scaled_width * scaled_height > sizeof(scaled)/4)
		Sys_Error ("GL_Update32: too big");

	if (scaled_width != width || scaled_height != height)
	{
		GL_ResampleTexture (data, width, height, scaled, scaled_width, scaled_height);
	}
	else
	{
		memcpy(scaled, data, scaled_width * scaled_height * 4);
	}

	s = scaled_width * scaled_height;
	if (s & 31)
		Sys_Error ("GL_Update32: s&31");

	if ((int)destination->data & 31)
		Sys_Error ("GL_Update32: destination->data&31");

	GX_CopyRGBA8_To_RGB5A3((u16 *)destination->data, scaled, 0, 0, scaled_width, scaled_height, scaled_width);

	DCFlushRange(destination->data, scaled_width * scaled_height * TEXTURE_SIZE);
	GX_InvalidateTexAll();
}

/*
===============
GL_Update8
===============
*/
void GL_Update8 (gltexture_t *destination, byte *data, int width, int height,  qboolean mipmap, qboolean alpha)
{
	int			i, s;

	s = width*height;

	if (s&3)
		Sys_Error ("GL_Update8: s&3");

	for (i = 0; i < s; i += 4)
	{
		trans[i] = d_8to24table[data[i]];
		trans[i + 1] = d_8to24table[data[i + 1]];
		trans[i + 2] = d_8to24table[data[i + 2]];
		trans[i + 3] = d_8to24table[data[i + 3]];
	}

	GL_Update32 (destination, trans, width, height, mipmap, alpha);
}

/*
================
GL_UpdateTexture
================
*/
void GL_UpdateTexture (int pic_id, char *identifier, int width, int height, byte *data, qboolean mipmap, qboolean alpha)
{
	gltexture_t	*glt;

	// see if the texture is allready present
	glt = &gltextures[pic_id];

	if (strcmp (identifier, glt->identifier) || width != glt->width || height != glt->height || mipmap != glt->mipmap || glt->type != 0 || !glt->used)
			Sys_Error ("GL_UpdateTexture: cache mismatch");

	GL_Update8 (glt, data, width, height, mipmap, alpha);
}

/*
================================
GL_UpdateLightmapTextureRegion32
================================
*/
void GL_UpdateLightmapTextureRegion32 (gltexture_t *destination, unsigned *data, int width, int height, int xoffset, int yoffset, qboolean mipmap, qboolean alpha)
{
	int			x, y;
	int			realwidth = width + xoffset;
	int			realheight = height + yoffset;
	u16			*dest = (u16 *)destination->data;

	// ELUTODO: mipmaps

	if ((int)destination->data & 31)
		Sys_Error ("GL_UpdateLightmapTextureRegion32: destination->data&31");

	for (y = yoffset; y < realheight; y++)
		for (x = xoffset; x < realwidth; x++)
			dest[GX_LinearToTiled(x, y, width)] = GX_RGBA_To_RGB5A3(data[x + y * realwidth]);


	// ELUTODO: flush region only
	DCFlushRange(destination->data, destination->scaled_width * destination->scaled_height * TEXTURE_SIZE);
	GX_InvalidateTexAll();
}

/*
==============================
GL_UpdateLightmapTextureRegion
==============================
*/
// ELUTODO: doesn't work if the texture doesn't follow the default quake format. Needs improvements.
void GL_UpdateLightmapTextureRegion (int pic_id, int width, int height, int xoffset, int yoffset, byte *data)
{
	gltexture_t	*destination;

	// see if the texture is allready present
	destination = &gltextures[pic_id];

	GL_UpdateLightmapTextureRegion32 (destination, (unsigned *)data, width, height, xoffset, yoffset, true, true);
}

/*
================
GL_LoadPicTexture
================
*/
int GL_LoadPicTexture (qpic_t *pic)
{
	// ELUTODO: loading too much with "" fills the memory with repeated data? Hope not... Check later.
	return GL_LoadTexture ("", pic->width, pic->height, pic->data, false, true, true);
}

// ELUTODO: clean the disable/enable multitexture calls around the engine

void GL_DisableMultitexture(void)
{
	// ELUTODO: we shouldn't need the color atributes for the vertices...

	// setup the vertex descriptor
	// tells the flipper to expect direct data
	GX_ClearVtxDesc();
	GX_SetVtxDesc(GX_VA_POS, GX_DIRECT);
	GX_SetVtxDesc(GX_VA_CLR0, GX_DIRECT);
	GX_SetVtxDesc(GX_VA_TEX0, GX_DIRECT);

	GX_SetNumTexGens(1);
	GX_SetNumTevStages(1);
}


void GL_EnableMultitexture(void)
{
	// ELUTODO: we shouldn't need the color atributes for the vertices...

	// setup the vertex descriptor
	// tells the flipper to expect direct data
	GX_ClearVtxDesc();
	GX_SetVtxDesc(GX_VA_POS, GX_DIRECT);
	GX_SetVtxDesc(GX_VA_CLR0, GX_DIRECT);
	GX_SetVtxDesc(GX_VA_TEX0, GX_DIRECT);
	GX_SetVtxDesc(GX_VA_TEX1, GX_DIRECT);

	GX_SetNumTexGens(2);
	GX_SetNumTevStages(2);
}

void GL_ClearTextureCache(void)
{
	int i;
	int oldnumgltextures = numgltextures;
	void *newdata;

	numgltextures = 0;

Con_DPrintf ("Clear Mod\n");
	for (i = 0; i < oldnumgltextures; i++)
	{
//Con_DPrintf ("Processing texture %i - %d", i, gltextures[i].type);
		if (gltextures[i].used)
		{
			if (gltextures[i].keep)
			{
//Con_DPrintf ("Keep it...\n");
				numgltextures = i + 1;

				newdata = __lwp_heap_allocate(&texture_heap, gltextures[i].scaled_width * gltextures[i].scaled_height * TEXTURE_SIZE);
				if (!newdata)
					Sys_Error("GL_ClearTextureCache keep: Out of memory.");

				// ELUTODO Pseudo-defragmentation that helps a bit :)
				memcpy(newdata, gltextures[i].data, gltextures[i].scaled_width * gltextures[i].scaled_height * TEXTURE_SIZE);

				if (!__lwp_heap_free(&texture_heap, gltextures[i].data)) {
Con_DPrintf ("GL_ClearTextureCache keep: Error freeing data... %p...\n", gltextures[i].data);
				
					Sys_Error("GL_ClearTextureCache keep: Error freeing data.");
				}
				gltextures[i].data = newdata;
				
				// DRS reinitiate based on type TODO: enum these
				if (gltextures[i].type == 2) {
					GX_InitTexObj(&gltextures[i].gx_tex, gltextures[i].data, gltextures[i].scaled_width, gltextures[i].scaled_height, GX_TF_RGB565, GX_REPEAT, GX_REPEAT, /*mipmap ? GX_TRUE :*/ GX_FALSE);
				}  else {
					GX_InitTexObj(&gltextures[i].gx_tex, gltextures[i].data, gltextures[i].scaled_width, gltextures[i].scaled_height, TEXTURE_FORMAT, GX_REPEAT, GX_REPEAT, /*mipmap ? GX_TRUE :*/ GX_FALSE);
				}

				DCFlushRange(gltextures[i].data, gltextures[i].scaled_width * gltextures[i].scaled_height * TEXTURE_SIZE);
			}
			else
			{
//Con_DPrintf ("Dispose of it...\n");
				gltextures[i].used = false;
				if (!__lwp_heap_free(&texture_heap, gltextures[i].data))
					Sys_Error("GL_ClearTextureCache keep: Error freeing data.");
			}
		}
	}

	GX_InvalidateTexAll();
}



void gxCopyToTextureRGB8(int x, int y, int width, int height, int destw, int desth, u8* out) {
	int pix;
//	void *xfb = __lwp_heap_allocate(&texture_heap, destw * desth * 2);
//	void *xfb = memalign(32, destw * desth * 2);
	void *xfb = memalign(32, 256);
	if (!xfb) Sys_Error("!xfb");
//	xfb = MEM_K0_TO_K1(xfb);
	GX_Flush();
	GX_PixModeSync();

//Con_DPrintf("GX_SetTexCopySrc...\r\n");
//	GX_SetTexCopySrc(x, y, width, height);
//Con_DPrintf("GX_SetTexCopyDst...\r\n");
//	GX_SetTexCopyDst(destw, desth, GX_TF_RGB565, GX_FALSE);
//	GX_SetTexCopyDst(destw, desth, GX_TF_RGBA8, GX_FALSE);
//Con_DPrintf("GX_CopyTex...\r\n");
//	GX_CopyTex(xfb, GX_FALSE);
//	GX_PixModeSync();


//	DCFlushRange(xfb, destw * desth * 2);

//	for(pix=0; pix<16; pix++) {
//		Con_DPrintf("idx %4X %8X\r\n", pix, *(((int *)xfb)+pix));
	
//	}
Con_DPrintf("Convert...\r\n");
//	void *xfbptr = xfb;
	for(y=0; y<desth; y+= 4) {
		for (x=0; x<destw; x+=4) {
//Con_DPrintf("GX_SetTexCopySrc...\r\n");
			GX_SetTexCopySrc(x, y, 4, 4);
//Con_DPrintf("GX_SetTexCopyDst...\r\n");
			GX_SetTexCopyDst(4, 4, GX_TF_RGB565, GX_FALSE);
//Con_DPrintf("GX_CopyTex...\r\n");
			GX_CopyTex(xfb, GX_FALSE);
//Con_DPrintf("GX_PixModeSync...\r\n");
			GX_PixModeSync();
//			DCInvalidateRange(xfb, 256);
			DCFlushRange(xfb, 256);

			for (pix=0; pix<16; pix++) {
//Con_DPrintf("idx %4X %8X\r\n", pix, *(((int *)xfb)+pix));
				u16 col = ((u16 *) xfb)[(pix)];
				int idx = (x + pix%4 + (pix/4 + y) * destw) * 3;
				out[idx + 0] = (col & 0xF800) >> 8;
				out[idx + 1] = (col & 0x07E0) >> 3;
				out[idx + 2] = (col & 0x001F) << 3;
//				if (y<8) {
//					Con_DPrintf("idx %4i %4X %2X %2X  %2X %2X %2X - ", idx, col, col1, col2, out[idx + 0], out[idx + 1], out[idx + 2]);
//				}
			}
		}
	}
	free(xfb);
//	if (!__lwp_heap_free(&texture_heap, xfb)) {
//			Sys_Error("gxReadPixels: Error freeing data.");
//	}
Con_DPrintf("Texture created...\r\n");
}

