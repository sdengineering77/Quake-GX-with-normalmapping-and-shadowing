/*
Copyright (C) 1996-1997 Id Software, Inc.
Copyright (C) 2008 Eluan Miranda

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
// r_surf.c: surface-related refresh code

#include "../../generic/quakedef.h"
#include <gx.h>

int			skytexturenum;


int		lightmap_bytes;		// 1, 2, or 4

int		lightmap_textures;

unsigned		blocklights[18*18];

#define	BLOCK_WIDTH				128
#define	BLOCK_HEIGHT				128

#define 	MAX_SURFACES_FRAME			128*1024
#define 	STATIC_LIGHTNUM_OFFSET  	128
#define	MAX_LIGHTMAPS						64
int			active_lightmaps;

typedef struct glRect_s {
	unsigned char l,t,w,h;
} glRect_t;

glpoly_t	*lightmap_polys[MAX_LIGHTMAPS];
qboolean	lightmap_modified[MAX_LIGHTMAPS];
glRect_t	lightmap_rectchange[MAX_LIGHTMAPS];

// ============= HARDWARE SPECIFIC LIGHTING STUFF ==========
// DRS: used for distance attenuation (shadowing TODO)
GXColor cl_hw_lightcolors[] = {
        { 0xFF, 0xFF, 0xFF, 0xFF }, // Light color 1
        { 0x00, 0x00, 0x00, 0x00 }, // Ambient 1
        { 0xFF, 0xFF, 0xFF, 0xFF }  // Material 1
};


// DRS: array of projected lights
GXLightObj	cl_hwlight_obj[MAX_HWLIGHTS];

int			allocated[MAX_LIGHTMAPS][BLOCK_WIDTH];

// the lightmap texture data needs to be kept in
// main memory so texsubimage can update properly
byte		*lightmaps;//[4*MAX_LIGHTMAPS*BLOCK_WIDTH*BLOCK_HEIGHT];
//byte		lightmaps[4*MAX_LIGHTMAPS*BLOCK_WIDTH*BLOCK_HEIGHT];

// For gl_texsort 0
msurface_t  *skychain = NULL;
msurface_t  *waterchain = NULL;

// DRS: surfaces to draw this frame
int				r_numsurfacesinlist;	
msurface_t  *r_surfacelist[MAX_SURFACES_FRAME];

extern gltexture_t 	r_stencilTextures[]; // DRS TODO: move


void R_RenderDynamicLightmaps (msurface_t *fa);

/*
===============
R_AddDynamicLights
===============
*/
void R_AddDynamicLights (msurface_t *surf)
{
	float		attn_sel[MAX_HWLIGHTS];
	int			current_sel, num_sel;
	int			lnum;
//	int			sd, td; // DRS: not required
	float		dist, rad, minlight;
//	vec3_t		impact, local;
//	int			s, t; // DRS: not required
	int			i;
//	int			smax, tmax; // DRS: not required
//	mtexinfo_t	*tex; // DRS: not required

//	smax = (surf->extents[0]>>4)+1; // DRS: not required
//	tmax = (surf->extents[1]>>4)+1; // DRS: not required
//	tex = surf->texinfo; // DRS: not required
	// DRS: set all distances for selected lights array to infinite
	for(i=0; i<MAX_HWLIGHTS; i++) {
		if(i<surf->num_slightnums) {
			attn_sel[i] = surf->slightattn[i]; 
		} else {
			attn_sel[i] = 0.0f; 
		}
		
	}


	// we start out using 0 hw lights on this surface
	num_sel = surf->num_slightnums;
	for (lnum=0 ; lnum<MAX_DLIGHTS ; lnum++)
	{
		if ( !(surf->dlightbits & (1<<lnum) ) && !cl_dlights[lnum].radius)
			continue;		// not lit by this light

		rad = cl_dlights[lnum].radius;
		dist = DotProduct (cl_dlights[lnum].origin, surf->plane->normal) -
				surf->plane->dist;
		
//		if (dist <-16)
//			continue;
		rad -= fabs(dist);
		minlight = cl_dlights[lnum].minlight;
		if (rad < minlight)
			continue;


		// DRS: We can add up to 4 dynamic lights; in this algorithm we pick the 
		// ones with smallest distance
		minlight = rad - minlight;
		float attn = rad/cl_dlights[lnum].radius;
		
		// DRS need to do better than this
		if(attn<0) attn=0;
		
/*		for (i=0 ; i<3 ; i++)
		{
			impact[i] = cl_dlights[lnum].origin[i] -
					surf->plane->normal[i]*dist;
		}

		local[0] = DotProduct (impact, tex->vecs[0]) + tex->vecs[0][3];
		local[1] = DotProduct (impact, tex->vecs[1]) + tex->vecs[1][3];

		if (local[1] < 0)
			local[1] = local[1];
		if (local[0] < 0)
			local[0] = -local[0];
		if (local[0] > local[1])
			dist = local[0] + (local[1] * 0.5);
		else
			dist = local[1] + (local[0] * 0.5);
*/		
		current_sel = 0;
		for(i=0; i<MAX_HWLIGHTS; i++) {
			if (attn_sel[i] < attn_sel[current_sel]) {
				current_sel = i; // selects the most distant/lowest attn light in current selection
			}
		}
		if (attn > attn_sel[current_sel] && attn > 0) { // is current light more nearby?
			// yes, replace entry
			attn_sel[current_sel] = attn;
			surf->dlightnums[current_sel] = lnum;
//			if (impact > 1.0f) impact = 1.0f;
			surf->dlightattn[current_sel] = attn; // attenuation as calculated originally
			
			// this also means we added an light to the selection
			num_sel++;
			if (num_sel>MAX_HWLIGHTS) {
				num_sel = MAX_HWLIGHTS; // but clamp to maximum
			}
		}
/*		if (dist < dist_sel[current_sel]) { // is current light more nearby?
			// yes, replace entry
			dist_sel[current_sel] = dist;
			surf->dlightnums[current_sel] = lnum;
			minlight = rad - minlight;
			if (dist < minlight) {
				float impact = rad - dist;
				if (impact > 1.0f) impact = 1.0f;
				surf->dlightattn[current_sel] = impact; // attenuation as calculated originally
			} else {
				surf->dlightattn[current_sel] = 0; // now, this would be silly...
			}
			
			// this also means we added an light to the selection
			num_sel++;
			if (num_sel>MAX_HWLIGHTS) {
				num_sel = MAX_HWLIGHTS; // but clamp to maximum
			}
		}
*/


		// DRS: This used to create the light intensitiy map for a dynamic light
		// This is done differently now... Above we marked the dlights that
		// are passed to the hardware for this surface. When the surface is actually 
		// drawn the lights are setup in hardware

/*		minlight = rad - minlight;

		for (i=0 ; i<3 ; i++)
		{
			impact[i] = cl_dlights[lnum].origin[i] -
					surf->plane->normal[i]*dist;
		}

		local[0] = DotProduct (impact, tex->vecs[0]) + tex->vecs[0][3];
		local[1] = DotProduct (impact, tex->vecs[1]) + tex->vecs[1][3];

		local[0] -= surf->texturemins[0];
		local[1] -= surf->texturemins[1];
		
		for (t = 0 ; t<tmax ; t++)
		{
			td = local[1] - t*16;
			if (td < 0)
				td = -td;
			for (s=0 ; s<smax ; s++)
			{
				sd = local[0] - s*16;
				if (sd < 0)
					sd = -sd;
				if (sd > td)
					dist = sd + (td>>1);
				else
					dist = td + (sd>>1);
				if (dist < minlight)
					blocklights[t*smax + s] += (rad - dist)*256;
			}
		}
*/
	}
	
	// DRS: set the number of selected lights
	surf->num_dlightnums = num_sel;
}


/*
===============
R_BuildLightMap

Combine and scale multiple lightmaps into the 8.8 format in blocklights
===============
*/
void R_BuildLightMap (msurface_t *surf, byte *dest, int stride)
{
	int			smax, tmax;
	int			t;
	int			i, j, size;
	byte		*lightmap;
	unsigned	scale;
	int			maps;
	unsigned	*bl;

	surf->cached_dlight = (surf->dlightframe == r_framecount);

	smax = (surf->extents[0]>>4)+1;
	tmax = (surf->extents[1]>>4)+1;
	size = smax*tmax;
	lightmap = surf->samples;

// set to full bright if no light data
	if (r_fullbright.value || !cl.worldmodel->lightdata)
	{
		for (i=0 ; i<size ; i++)
			blocklights[i] = 255*256;
		goto store;
	}

// clear to no light
	for (i=0 ; i<size ; i++)
		blocklights[i] = 0;

// add all the lightmaps
	if (lightmap)
		for (maps = 0 ; maps < MAXLIGHTMAPS && surf->styles[maps] != 255 ;
			 maps++)
		{
			scale = d_lightstylevalue[surf->styles[maps]];
			surf->cached_light[maps] = scale;	// 8.8 fraction
			for (i=0 ; i<size ; i++)
				blocklights[i] += lightmap[i] * scale;
			lightmap += size;	// skip to next lightmap
		}


// add all the dynamic lights
	if (surf->dlightframe == r_framecount)
		R_AddDynamicLights (surf);

// bound, invert, and shift
store:
	stride -= (smax<<2);
	bl = blocklights;
	for (i=0 ; i<tmax ; i++, dest += stride)
	{
		for (j=0 ; j<smax ; j++)
		{
			t = *bl++;
			t >>= 7;
			if (t > 255)
				t = 255;
			dest[3] = t;
			dest[2] = t;
			dest[1] = t;
			dest[0] = 0;
			dest += 4;
		}
	}
}


/*
===============
R_TextureAnimation

Returns the proper texture for a given time and base texture
===============
*/
texture_t *R_TextureAnimation (texture_t *base)
{
	int		reletive;
	int		count;

	if (currententity->frame)
	{
		if (base->alternate_anims)
			base = base->alternate_anims;
	}
	
	if (!base->anim_total)
		return base;

	reletive = (int)(cl.time*10) % base->anim_total;

	count = 0;	
	while (base->anim_min > reletive || base->anim_max <= reletive)
	{
		base = base->anim_next;
		if (!base)
			Sys_Error ("R_TextureAnimation: broken cycle");
		if (++count > 100)
			Sys_Error ("R_TextureAnimation: infinite cycle");
	}

	return base;
}

// DRS: TODO should be done through quake's texture system
// perhaps right place for shading in general
extern GXTexObj normalmap;
extern GXTexObj lightmap;
extern GXTexObj specularmap;

/**
=============================================================

	DRS: SHADERS

	GX_VTXFMT2 must be selected
=============================================================
*/


void R_SetupSurfaceShader(msurface_t *s, qboolean hasLight) {
	int num_texgens = 2;
	int tevstage = GX_TEVSTAGE0;

	GX_SetZCompLoc(GX_TRUE);
// default settings:
//	GX_SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
//	GX_SetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD1, GX_TEXMAP1, GX_COLOR0A0);
//	GX_SetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
//	GX_SetTexCoordGen(GX_TEXCOORD1, GX_TG_MTX2x4, GX_TG_TEX1, GX_IDENTITY);
	// DRS vertex format for surface shader
	GX_ClearVtxDesc();
	GX_SetVtxDesc(GX_VA_POS, GX_DIRECT);
	GX_SetVtxDesc(GX_VA_NBT, GX_DIRECT);
	GX_SetVtxDesc(GX_VA_TEX0, GX_DIRECT);
	GX_SetVtxAttrFmt(GX_VTXFMT2, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
	GX_SetVtxAttrFmt(GX_VTXFMT2, GX_VA_NBT, GX_NRM_NBT3, GX_F32, 0);
	GX_SetVtxAttrFmt(GX_VTXFMT2, GX_VA_TEX0, GX_TEX_ST, GX_F32, 0);


	// GX_TEXMAP2 normal map
	// GX_TEXMAP3 light map
	// GX_TEXMAP4 specular map
	GX_LoadTexObj(&lightmap, GX_TEXMAP3); // light map
	GX_LoadTexObj(&specularmap, GX_TEXMAP4); // specular map


	Mtx nullMtx = 
		{{ 0.0f,  0.0f,  0.0f,  0.0f},
		 { 0.0f,  0.0f,  0.0f,  0.0f},
		 { 0.0f,  0.0f,  0.0f,  0.0f}};
	GX_LoadTexMtxImm(nullMtx, GX_TEXMTX0, GX_MTX3x4);

	// TODO: this can be done less times
	GXLightObj camlightobj;
	GX_InitLightPos(&camlightobj, 0.0f, 0.0f, 0.0f);
	GX_InitLightColor(&camlightobj, cl_hw_lightcolors[1]);
	GX_LoadLightObj(&camlightobj, GX_LIGHT7); // for reflections
	
	// texcoord2 -> 0, 0 coordinate
	GX_SetTexCoordGen(GX_TEXCOORD2, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY); 
	// texcoord3 -> 0, 0 coordinate
	GX_SetTexCoordGen(GX_TEXCOORD3, GX_TG_MTX2x4, GX_TG_TEX0, GX_TEXMTX0); 
	// text coord 4 renders the bump offset related to camera position
	GX_SetTexCoordGen(GX_TEXCOORD4, GX_TG_BUMP7, GX_TG_TEXCOORD3, GX_IDENTITY);
	num_texgens += 3;
	
	// ind stage 0 is set up to read normal map from texmap 0 
	GX_SetIndTexOrder(GX_INDTEXSTAGE0, GX_TEXCOORD2, GX_TEXMAP2);
	GX_SetIndTexCoordScale(GX_INDTEXSTAGE0, GX_ITS_1, GX_ITS_1); // normal map texture scale 1:1

	// setup indirect unit for tev stage 0 (for some reason I get a ABGR triplet, so transforms are done on normal map's B and G components)
	f32 offset_mtx[2][3] = {
		{  0.0f, -0.125f,    0.0f}, // B -> horizontal coordinate (s)
		{  0.0f,    0.0f, -0.125f}  // G -> vertical coordinate (t)
	};
	

	GX_SetNumIndStages(1);
	GX_SetIndTexMatrix(GX_ITM_0,offset_mtx, 0);

	if (hasLight) {
		// setup stages for given lights
		// textcoord4-7 contain bump coordinates for bump0-3
		GX_SetTexCoordGen(GX_TEXCOORD5, GX_TG_BUMP0, GX_TG_TEXCOORD3, GX_IDENTITY);
		num_texgens++;
		
		// bind indirect stage info
		GX_SetTevIndirect(
			tevstage, // tevstage 0 is used to combine normal map and lightmap
			GX_INDTEXSTAGE0, // ind stage is used to read normal map
			GX_ITF_8, // texture format 8 bits per channel
			GX_ITB_STU, // use bias on s and t channels (red and green and blue)
			GX_ITM_0, // use 3x2 matrix 0
			GX_ITW_OFF, // do not use texture wrapping
			GX_ITW_OFF, // do not use texture wrapping
			GX_FALSE, // don't add in previous coordinates
			GX_FALSE, // don't use mipmap stuff
			GX_ITBA_OFF // don't use bump alpha
			); 


		// setup tev stage to lookup the lightmap
		// the texture coordinates used should be the sum of the bump offset coordinates and
		// the indirect lookup associated with it using SetTevIndirect() above.
		GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_RASC, GX_CC_ZERO); // !!!! check nog ff tevprev 
		GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
		GX_SetTevOrder(tevstage, GX_TEXCOORD5, GX_TEXMAP3, GX_COLOR0A0);
		tevstage++;


		// setup tev stage 1 to add reflection. Same theory as above, but light is where the cam is
		GX_SetTevIndirect(
			tevstage, // tevstage 0 is used to combine normal map and lightmap
			GX_INDTEXSTAGE0, // ind stage is used to read normal map
			GX_ITF_8, // texture format 8 bits per channel
			GX_ITB_STU, // use bias on s and t channels (red and green and blue)
			GX_ITM_0, // use 3x2 matrix 0
			GX_ITW_OFF, // do not use texture wrapping
			GX_ITW_OFF, // do not use texture wrapping
			GX_TRUE, // add in previous coordinates
			GX_FALSE, // don't use mipmap stuff
			GX_ITBA_OFF // don't use bump alpha
			); 
		GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_ONE, GX_CC_CPREV);
		GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
		GX_SetTevOrder(tevstage, GX_TEXCOORD4, GX_TEXMAP4, GX_COLORNULL);
		tevstage++;
		
		// lights? then modulate it with texture 0
		GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_CPREV, GX_CC_ZERO);
	} else {
		// no light, next stage requires to be dark
		GX_SetTevKColorSel(tevstage, GX_TEV_KCSEL_1_8);
		GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_ZERO); 
		GX_SetChanCtrl(GX_COLOR0A0, GX_DISABLE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHTNULL, GX_DF_NONE, GX_AF_NONE);
	}
	
	// setup the next stage for modulating light intensity with quake texmap
	GX_SetTevDirect(tevstage);
	GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_2, GX_TRUE, GX_TEVPREV); // scale *2 for bright colours
	GX_SetTevOrder(tevstage, GX_TEXCOORD0, GX_TEXMAP0, GX_COLORNULL);
	tevstage++;
	
	//set number of textures to generate
	GX_SetNumTexGens(num_texgens);
	GX_SetNumTevStages(tevstage);
}


//Mtx normals =
//		{{ 0.0f,  0.0f,  0.0f,  0.0f},
//		 { 0.0f,  0.0f,  0.0f,  0.0f},
//		 { 0.0f,  0.0f,  0.0f,  0.0f}};

//Mtx dttOffsets = 
//			{{ 0.3f,  0.0f,  2.0f * 0.244f,  0.0f},
//			 { 0.0f,  0.3f,  2.0f * 0.262f,  0.0f},
//			 { 0.0f,  0.0f,  1.0f,  0.0f}};
			 
//Mtx lightMtx = 
//			{{ 1.0f,  0.0f,  0.0f,  0.0},
//			 { 0.0f,  1.0f,  0.0f,  0.0},
//			 { 0.0f,  0.0f,  1.0f,  0.0}};


extern int r_numstencilTextures; // DRS remove

void R_SetupSceneryShader(msurface_t *s, Mtx modelview, vec3_t cam, int lnum) {
	Mtx dttMtx;
	int num_texgens = 2;
	int tevstage = GX_TEVSTAGE0;

	GX_SetZCompLoc(GX_TRUE);
// default settings:
	// DRS vertex format for surface shader
	GX_ClearVtxDesc();
	GX_SetVtxDesc(GX_VA_POS, GX_DIRECT);
	GX_SetVtxDesc(GX_VA_TEX0, GX_DIRECT);
	GX_SetVtxAttrFmt(GX_VTXFMT2, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
	GX_SetVtxAttrFmt(GX_VTXFMT2, GX_VA_TEX0, GX_TEX_ST, GX_F32, 0);


	// GX_TEXMAP2 normal map
	// GX_TEXMAP3 light map
	// GX_TEXMAP4 specular map
	// GX_TEXMAP5 lightdirmap
	GX_LoadTexObj(&lightmap, GX_TEXMAP3); // light map
	GX_LoadTexObj(&specularmap, GX_TEXMAP4); // specular map
	GX_LoadTexObj(&normalmap, GX_TEXMAP5); // lightdir map



	Mtx nullMtx = 
		{{ 0.0f,  0.0f,  0.0f,  0.0f},
		 { 0.0f,  0.0f,  0.0f,  0.0f},
		 { 0.0f,  0.0f,  0.0f,  0.0f}};
	GX_LoadTexMtxImm(nullMtx, GX_TEXMTX0, GX_MTX3x4);

	// TODO: CAN BE REMOVED FROM HERE this can be done less times
	GXLightObj camlightobj;
	GX_InitLightPos(&camlightobj, 0.0f, 0.0f, 0.0f);
	GX_InitLightColor(&camlightobj, cl_hw_lightcolors[1]);
	GX_LoadLightObj(&camlightobj, GX_LIGHT7); // for reflections
	
	// texcoord2 -> 0, 0 coordinate
	GX_SetTexCoordGen(GX_TEXCOORD2, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY); 
	// texcoord3 -> 0, 0 coordinate
	GX_SetTexCoordGen(GX_TEXCOORD3, GX_TG_MTX2x4, GX_TG_TEX0, GX_TEXMTX0); 
	// text coord 4 renders the bump offset related to camera position
//	GX_SetTexCoordGen(GX_TEXCOORD4, GX_TG_BUMP7, GX_TG_TEXCOORD3, GX_IDENTITY);
	num_texgens += 2;
	

	if (lnum >= 0) {
		int i;
		Mtx modelViewInv;
//		Mtx modelViewInv, modelViewTrans;
//		Mtx dttMtx;
		dlight_t*	currLight;

		if (lnum >= STATIC_LIGHTNUM_OFFSET) {
			currLight = &cl_staticlights[lnum - STATIC_LIGHTNUM_OFFSET];
		} else {
			currLight = &cl_dlights[lnum];
		}

		// ============== light setup ==================
		Mtx camMtx = 
				{{ 1.0f,  0.0f,  0.0f,  -cam[0]},
				 { 0.0f,  1.0f,  0.0f,  -cam[1]},
				 { 0.0f,  0.0f,  1.0f,  -cam[2]}};

		Mtx normals =
			{{ 0.0f,  0.0f,  0.0f,  0.0f},
			 { 0.0f,  0.0f,  0.0f,  0.0f},
			 { 0.0f,  0.0f,  0.0f,  0.0f}};

		Mtx lightMtx = 
				{{ 1.0f,  0.0f,  0.0f,  0.0f},
				 { 0.0f,  1.0f,  0.0f,  0.0f},
				 { 0.0f,  0.0f,  1.0f,  0.0f}};
	
		for(i=0; i<3; i++) {
			if ( s->flags & SURF_PLANEBACK ) {
				normals[2][i] = -s->plane->normal[i]; // n
//				Con_DPrintf("dot %5.3f - ", DotProduct (currLight->origin, s->plane->normal) - s->plane->dist);
//				Con_DPrintf("planeback\r\n");
			} else {
//				Con_DPrintf("dot %5.3f ; ", DotProduct (currLight->origin, s->plane->normal) - s->plane->dist);
				normals[2][i] = s->plane->normal[i]; // n
			}
			normals[0][i]   = 0.125f*s->texinfo->vecs[0][i]; // t
			normals[1][i] = 0.125f*s->texinfo->vecs[1][i]; // b

			lightMtx[i][3] = -currLight->origin[i];
 
		}
		
		Mtx dttOffsets = 
			{{ 1.0f,		0.0f,		0.5f * 4.0f,	0.0f},
			 { 0.0f,		1.0f,		0.5f * 4.0f,	0.0f},
			 { 0.0f,		0.0f,		4.0f,				0.0f}};
//			{{ 0.3f,  0.0f,  2.0f * 0.244f/1.0f,  0.0f},
//			 { 0.0f,  0.3f,  2.0f * 0.262f/1.0f,  0.0f},
//			 { 0.0f,  0.0f,  1.0f/1.0f,  0.0f}};
			 
		guMtxConcat(dttOffsets, normals, dttMtx);
			 
		GX_LoadTexMtxImm(lightMtx, GX_TEXMTX2, GX_MTX3x4);
		GX_LoadTexMtxImm(camMtx, GX_TEXMTX3, GX_MTX3x4);
		GX_LoadTexMtxImm(dttMtx, GX_DTTMTX0, GX_MTX3x4);

		// ============== shadow setup ==================
		if (currLight->stenciltexnum>-1) {
			Mtx dttStencilScale = 
				{{-4.0f/11.0f,	0.0f,			0.5f,		0.0f},
				 { 0.0f,				2.0f/3.0f,	0.5f,		0.0f},
				 { 0.0f,				0.0f,	    	1.0f,		0.0f}};
			GX_LoadTexMtxImm(dttStencilScale, GX_DTTMTX1, GX_MTX3x4);
//		guMtxInverse(modelview, modelViewInv);
//		GX_LoadTexMtxImm(modelViewInv, GX_TEXMTX4, GX_MTX3x4);
			GX_LoadTexMtxImm(modelview, GX_TEXMTX4, GX_MTX3x4);
			// GX_TEXMAP6 stencil tex
			GX_LoadTexObj(&r_stencilTextures[currLight->stenciltexnum].gx_tex, GX_TEXMAP6);		
		}


		// ============== Further GPU setup ==================
		GX_SetTexCoordGen2(GX_TEXCOORD4, GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX2, GX_FALSE, GX_DTTMTX0);
		GX_SetTexCoordGen2(GX_TEXCOORD5, GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX3, GX_FALSE, GX_DTTMTX0);
		GX_SetTexCoordGen2(GX_TEXCOORD6, GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX4, GX_FALSE, GX_DTTMTX1);
		num_texgens+=3;

		// ind stage 0 is set up to read normal map from texmap 0 
		GX_SetNumIndStages(3);
		GX_SetIndTexOrder(GX_INDTEXSTAGE0, GX_TEXCOORD4, GX_TEXMAP5);
		GX_SetIndTexOrder(GX_INDTEXSTAGE1, GX_TEXCOORD2, GX_TEXMAP2);
		GX_SetIndTexOrder(GX_INDTEXSTAGE2, GX_TEXCOORD5, GX_TEXMAP5);

		GX_SetIndTexCoordScale(GX_INDTEXSTAGE0, GX_ITS_1, GX_ITS_1); // normal map texture scale 1:1
		GX_SetIndTexCoordScale(GX_INDTEXSTAGE1, GX_ITS_1, GX_ITS_1); // normal map texture scale 1:1
		GX_SetIndTexCoordScale(GX_INDTEXSTAGE2, GX_ITS_1, GX_ITS_1); // normal map texture scale 1:1

		// setup indirect unit for tev stage 0 (for some reason I get a ABGR triplet, so transforms are done on normal map's B and G components)
		f32 offset_mtx[2][3] = {
			{  0.0f, -0.125f,    0.0f}, // B -> horizontal coordinate (s)
			{  0.0f,    0.0f, -0.125f}  // G -> vertical coordinate (t)
		};
		
		GX_SetIndTexMatrix(GX_ITM_0, offset_mtx, 0);

		// diffuse
		GX_SetTevIndirect(
			tevstage, // tevstage 0 is used to combine normal map and lightmap
			GX_INDTEXSTAGE0, // ind stage is used to read diffuse light direction
			GX_ITF_8, // texture format 8 bits per channel
			GX_ITB_STU, // use bias on s and t channels (red and green and blue)
			GX_ITM_0, // use 3x2 matrix 0
			GX_ITW_OFF, // do not use texture wrapping
			GX_ITW_OFF, // do not use texture wrapping
			GX_FALSE, // don't add in previous coordinates
			GX_FALSE, // don't use mipmap stuff
			GX_ITBA_OFF // don't use bump alpha (TODO: can this be used to blend reflection and difuse?)
			); 
		GX_SetTevOrder(tevstage, GX_TEXCOORD3, GX_TEXMAP_DISABLE, GX_COLORNULL);

		tevstage++;
		
		GX_SetTevIndirect(
			tevstage, // tevstage 0 is used to combine normal map and lightmap
			GX_INDTEXSTAGE1, // ind stage is used to read normal map
			GX_ITF_8, // texture format 8 bits per channel
			GX_ITB_STU, // use bias on s and t channels (red and green and blue)
			GX_ITM_0, // use 3x2 matrix 0
			GX_ITW_OFF, // do not use texture wrapping
			GX_ITW_OFF, // do not use texture wrapping
			GX_TRUE, // add in previous coordinates
			GX_FALSE, // don't use mipmap stuff
			GX_ITBA_OFF // don't use bump alpha (TODO: can this be used to blend reflection and difuse?)
			); 
		GX_SetTevSwapMode(tevstage, GX_TEV_SWAP0, GX_TEV_SWAP0);
		GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_RASC, GX_CC_TEXC, GX_CC_ZERO);
		GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
		GX_SetTevOrder(tevstage, GX_TEXCOORD3, GX_TEXMAP3, GX_COLOR0A0);
		tevstage++;

	
		// reflection
		GX_SetTevIndirect(
			tevstage, // tevstage 0 is used to combine normal map and lightmap
			GX_INDTEXSTAGE2, // ind stage is used to specular light direction
			GX_ITF_8, // texture format 8 bits per channel
			GX_ITB_STU, // use bias on s and t channels (red and green and blue)
			GX_ITM_0, // use 3x2 matrix 0
			GX_ITW_OFF, // do not use texture wrapping
			GX_ITW_OFF, // do not use texture wrapping
			GX_TRUE, //  add in previous coordinates
			GX_FALSE, // don't use mipmap stuff
			GX_ITBA_OFF // don't use bump alpha (TODO: can this be used to blend reflection and difuse?)
			); 
		GX_SetTevSwapMode(tevstage, GX_TEV_SWAP0, GX_TEV_SWAP0);
		GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV);
		GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
		GX_SetTevOrder(tevstage, GX_TEXCOORD3, GX_TEXMAP_DISABLE, GX_COLORNULL);

		tevstage++;
		
		GX_SetTevIndirect(
			tevstage, // tevstage 0 is used to combine normal map and lightmap
			GX_INDTEXSTAGE1, // ind stage is used to read normal map
			GX_ITF_8, // texture format 8 bits per channel
			GX_ITB_STU, // use bias on s and t channels (red and green and blue)
			GX_ITM_0, // use 3x2 matrix 0
			GX_ITW_OFF, // do not use texture wrapping
			GX_ITW_OFF, // do not use texture wrapping
			GX_TRUE, // add in previous coordinates
			GX_FALSE, // don't use mipmap stuff
			GX_ITBA_OFF // don't use bump alpha (TODO: can this be used to blend reflection and difuse?)
			); 

		GX_SetTevSwapMode(tevstage, GX_TEV_SWAP0, GX_TEV_SWAP0);
		GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_C2, GX_CC_TEXC, GX_CC_CPREV);
//		GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_ONE, GX_CC_TEXC, GX_CC_CPREV);
		GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
		GX_SetTevOrder(tevstage, GX_TEXCOORD3, GX_TEXMAP4, GX_COLORNULL);
		tevstage++;

		// shadow stencil tex
		if (currLight->stenciltexnum>-1) {
	
//			GXColor background = {0x80, 0x00, 0x00, 0x00}; // DRS "globalize"=)
//			GX_SetTevKColor(GX_TEV_KCSEL_K0, background);
//			GX_SetTevColor(GX_TEVREG1, background);
//			GX_SetTevKColorSel(GX_TEVSTAGE0, GX_TEV_KCSEL_K0);	

			GX_SetTevSwapMode(tevstage, GX_TEV_SWAP0, GX_TEV_SWAP0);
//			GX_SetTevColorIn(tevstage, GX_CC_TEXC, GX_CC_HALF, GX_CC_CPREV, GX_CC_ZERO);
			GX_SetTevColorIn(tevstage, GX_CC_TEXC, GX_CC_ZERO, GX_CC_CPREV, GX_CC_ZERO);
			GX_SetTevColorOp(tevstage, GX_TEV_COMP_RGB8_EQ, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);

//			GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_ONE, GX_CC_TEXC, GX_CC_ZERO);
//			GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
			GX_SetTevOrder(tevstage, GX_TEXCOORD6, GX_TEXMAP6, GX_COLORNULL);
			tevstage++;
		}

		
		// lights? then modulate it with texture 0
		GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_CPREV, GX_CC_ZERO);
	} else {
		// no light, next stage requires to be dark
		GX_SetTevKColorSel(tevstage, GX_TEV_KCSEL_1_8);
		GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_ZERO); 
		GX_SetChanCtrl(GX_COLOR0A0, GX_DISABLE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHTNULL, GX_DF_NONE, GX_AF_NONE);
	}



	
	// setup the next stage for modulating light intensity with quake texmap
	GX_SetTevDirect(tevstage);
	GX_SetTevSwapMode(tevstage, GX_TEV_SWAP0, GX_TEV_SWAP0);
	GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_2, GX_TRUE, GX_TEVPREV); // scale *2 for bright colours
	GX_SetTevOrder(tevstage, GX_TEXCOORD0, GX_TEXMAP0, GX_COLORNULL);

//GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_ONE, GX_CC_ZERO);
//GX_SetTevOrder(tevstage, GX_TEXCOORD6, GX_TEXMAP6, GX_COLORNULL);
	tevstage++;
	
	//set number of textures to generate
	GX_SetNumTexGens(num_texgens);
	GX_SetNumTevStages(tevstage);
	
}


void R_SetupHWLight(msurface_t *surf, int lnum) {
	Vector 		lpos;
	dlight_t*	currLight;

	if (lnum >= STATIC_LIGHTNUM_OFFSET) {
		currLight = &cl_staticlights[lnum - STATIC_LIGHTNUM_OFFSET];
	} else {
		currLight = &cl_dlights[lnum];
	}
	
	lpos.x = currLight->origin[0];
	lpos.y = currLight->origin[1];
	lpos.z = currLight->origin[2];
	// rotate light to view
	guVecMultiply(view, &lpos, &lpos);


	GX_InitLightPos(&cl_hwlight_obj[0], lpos.x, lpos.y, lpos.z);
	GX_InitLightColor(&cl_hwlight_obj[0], cl_hw_lightcolors[0]);
	GX_InitLightDir(&cl_hwlight_obj[0], 0.0f, 0.0f, 1.0f); // doesn't really matter what direction
//	GX_InitLightAttnK(&cl_hwlight_obj[0], 1.0f, 0.5f/(1.0f+currLight->radius), 100.0f/(1.0f+currLight->radius*currLight->radius));
//	GX_InitLightDistAttn(&cl_hwlight_obj[0], currLight->radius * 0.05f, 0.9f, GX_DA_STEEP);	
//	GX_InitLightAttnA(&cl_hwlight_obj[0], 1.0f, 0.0f, 0.0f);
//	GX_InitLightAttnK(&cl_hwlight_obj[0], 1.0f, 0.0f, (float) 1.0f/1024.0f);
//	GX_InitLightAttnA(&cl_hwlight_obj[0], 0.05f * currLight->radius, 0.0f, 0.0f);

	float dist = DotProduct (currLight->origin, surf->plane->normal) - surf->plane->dist;

	GX_InitLightAttnK(&cl_hwlight_obj[0], 1.0f + (dist * dist/1024.0f), 0.0f, 0.0f);
	GX_InitLightAttnA(&cl_hwlight_obj[0], 0.015f * currLight->radius, 0.0f, 0.0f);

	GX_LoadLightObj(&cl_hwlight_obj[0], GX_LIGHT0);
	// set number of rasterized color channels
	GX_SetNumChans(1);
	GX_SetChanCtrl(GX_COLOR0A0, GX_ENABLE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT0, GX_DF_NONE, GX_AF_SPOT);
//	GX_SetChanCtrl(GX_COLOR1A1, GX_ENABLE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT0, GX_DF_NONE, GX_AF_NONE);
	GX_SetChanAmbColor(GX_COLOR0A0, cl_hw_lightcolors[1]);
	GX_SetChanMatColor(GX_COLOR0A0, cl_hw_lightcolors[2]);

	float d2 = lpos.x*lpos.x + lpos.y * lpos.y + lpos.z * lpos.z;
	int reflattn = (int) ((float)255.0f * currLight->radius/(1.0f + d2/(64000.0f)));
	if (reflattn > 255) reflattn = 255;
	GXColor reflcolor = {reflattn, reflattn, reflattn, reflattn};
//	GX_SetChanAmbColor(GX_COLOR1A1, reflcolor);
//	GX_SetChanMatColor(GX_COLOR1A1, cl_hw_lightcolors[2]);
	GX_SetTevColor(GX_TEVREG2, reflcolor);
		
}


void R_DrawSurfacePolyBumpShadow(msurface_t *surf) {
	glpoly_t	*p;
	float		*v;
	int			i;
	vec3_t 		normal;
	vec3_t 		tangent;
	vec3_t 		bitangent;
	Vector 		_normal;
	Vector 		_tangent;
	Vector 		_bitangent;
	int 		num_hwlights;
	
	p = surf->polys;

	
	for(i=0; i<3; i++) {
		if ( surf->flags & SURF_PLANEBACK ) {
			normal[i]	 = -surf->plane->normal[i];
		} else {
			normal[i]	 = surf->plane->normal[i];
		}
		tangent[i]   = 0.125f*surf->texinfo->vecs[0][i];
		bitangent[i] = 0.125f*surf->texinfo->vecs[1][i];
		
	}

/*	_normal.x = normal[0];
	_normal.y = normal[1];
	_normal.z = normal[2];
	_tangent.x = tangent[0];
	_tangent.y = tangent[1];
	_tangent.z = tangent[2];
	_bitangent.x = bitangent[0];
	_bitangent.y = bitangent[1];
	_bitangent.z = bitangent[2];

	float dist_n, dist_t, dist_b;
	dist_n = sqrt(_normal.x*_normal.x+_normal.y*_normal.y+_normal.z*_normal.z);
	dist_b = sqrt(_bitangent.x*_bitangent.x+_bitangent.y*_bitangent.y+_bitangent.z*_bitangent.z);
	dist_t = sqrt(_tangent.x*_tangent.x+_tangent.y*_tangent.y+_tangent.z*_tangent.z);

	if (dist_b > 0.125 || dist_t > 0.125 || 
		dist_b < 0.125 || dist_t < 0.125
	) {
		Con_DPrintf("distance!! %3.2f %3.2f %3.2f\r\n", dist_n, dist_b, dist_t);
	}
*/
	num_hwlights = surf->num_dlightnums;
	// setup lights
//	GX_SetCompZLoc(); // TODO
	if (num_hwlights > 0) {
		// surface shader
		R_SetupSurfaceShader(surf, true);
		// DRS move to shader setup
		GX_SetBlendMode(GX_BM_NONE, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	
		GX_SetZMode(GX_ENABLE, GX_LEQUAL, GX_TRUE);
		// Damn nintendo for this... either reusable or simply more texcoords would be nice
//Con_DPrintf("num lt: %i\r\n", num_hwlights);
		for(i=0; i<num_hwlights; i++) {
			int verts;
			R_SetupHWLight(surf, surf->dlightnums[i]);

			// setup current l
			GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT2, p->numverts);
			v = p->verts[0];
			for (verts=0 ; verts<p->numverts ; verts++, v+= VERTEXSIZE) {
				GX_Position3f32(        v[0],         v[1],         v[2]);
				GX_Normal3f32  (   normal[0],    normal[1],    normal[2]);
				GX_Normal3f32  (bitangent[0], bitangent[1], bitangent[2]);
				GX_Normal3f32  (  tangent[0],   tangent[1],   tangent[2]);
				GX_TexCoord2f32(        v[3],         v[4]);
			}
			GX_End();
//			GX_Flush(); // DRS move outside loop possible?
//			GX_SetZMode(GX_ENABLE, GX_ALWAYS, GX_TRUE); // make sure no z fighting occurs
			if (!i)
				GX_SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ONE, GX_LO_COPY);	

		}
		
	
	} else {
		R_SetupSurfaceShader(surf, false);
		int verts;

		// setup current l
		GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT2, p->numverts);
		v = p->verts[0];
		for (verts=0 ; verts<p->numverts ; verts++, v+= VERTEXSIZE) {
			GX_Position3f32(        v[0],         v[1],         v[2]);
			GX_Normal3f32  (   normal[0],    normal[1],    normal[2]);
			GX_Normal3f32  (bitangent[0], bitangent[1], bitangent[2]);
			GX_Normal3f32  (  tangent[0],   tangent[1],   tangent[2]);
			GX_TexCoord2f32(        v[3],         v[4]);
		}
		GX_End();
	}

	GX_SetBlendMode(GX_BM_NONE, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	
	GX_SetZMode(GX_ENABLE, GX_LEQUAL, GX_TRUE);
	GX_SetTevOp(GX_TEVSTAGE0, GX_REPLACE); // DRS: TODO this has to be more streamlined..
	GX_SetTevOp(GX_TEVSTAGE1, GX_MODULATE);		

// TODO: DRS create better shader model i.e. one that doesn't switch between vertex formats so often
	GL_DisableMultitexture();
	GX_SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
	GX_SetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD1, GX_TEXMAP1, GX_COLOR0A0);
	GX_SetTevDirect(GX_TEVSTAGE0);
	GX_SetTevDirect(GX_TEVSTAGE1);
	GX_SetChanCtrl(GX_COLOR0A0, GX_DISABLE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHTNULL, GX_DF_NONE, GX_AF_NONE);

	
}

void R_DrawSurfacePolyProjBumpShadow(msurface_t *surf) {
	glpoly_t	*p;
	float			*v;
	int			i;
	int 			num_hwlights;
	
	p = surf->polys;

/*	if (surf == 0x902bb500) {
		num_hwlights = surf->num_dlightnums;
		if (num_hwlights > 0) {
			for(i=0; i<num_hwlights; i++) {
				int lnum = surf->dlightnums[i];
				dlight_t*	currLight;

				if (lnum >= STATIC_LIGHTNUM_OFFSET) {
					currLight = &cl_staticlights[lnum - STATIC_LIGHTNUM_OFFSET];
				} else {
					currLight = &cl_dlights[lnum];
				}
				
				Con_DPrintf("lnum %i %5.1f %5.1f %5.1f\r\n", (lnum - STATIC_LIGHTNUM_OFFSET), currLight->origin[0], currLight->origin[1], currLight->origin[2]);
			}
		}
		return;
	}
*/
	num_hwlights = surf->num_dlightnums;
	// setup lights
//	GX_SetCompZLoc(); // TODO
	if (num_hwlights > 0) {
		// DRS move to shader setup
		GX_SetBlendMode(GX_BM_NONE, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	
		GX_SetZMode(GX_ENABLE, GX_LEQUAL, GX_TRUE);
		// Damn nintendo for this... either reusable or simply more texcoords would be nice
//Con_DPrintf("num lt: %i\r\n", num_hwlights);
		for(i=0; i<num_hwlights; i++) {
			int verts;
			R_SetupHWLight(surf, surf->dlightnums[i]);
			// surface shader
			R_SetupSceneryShader(surf, view, r_refdef.vieworg, surf->dlightnums[i]);

			// setup current l
			GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT2, p->numverts);
			v = p->verts[0];
			for (verts=0 ; verts<p->numverts ; verts++, v+= VERTEXSIZE) {
				GX_Position3f32(        v[0],         v[1],         v[2]);
				GX_TexCoord2f32(        v[3],         v[4]);
			}
			GX_End();
			GX_Flush(); // DRS move outside loop possible?
//			GX_SetZMode(GX_ENABLE, GX_ALWAYS, GX_TRUE); // make sure no z fighting occurs
			if (!i)
				GX_SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ONE, GX_LO_COPY);	

		}
		
	
	} else {
		R_SetupSceneryShader(surf, view, r_refdef.vieworg, -1);
		int verts;

		// setup current l
		GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT2, p->numverts);
		v = p->verts[0];
		for (verts=0 ; verts<p->numverts ; verts++, v+= VERTEXSIZE) {
			GX_Position3f32(        v[0],         v[1],         v[2]);
			GX_TexCoord2f32(        v[3],         v[4]);
		}
		GX_End();
	}
	
	// obvious for now
	R_SetDefaultQuakeShader();
	
}
 
/*
=============================================================

	BRUSH MODELS

=============================================================
*/


extern	int		solidskytexture;
extern	int		alphaskytexture;
extern	float	speedscale;		// for top sky and bottom sky

/*
================
R_RegisterSequentialPoly
Add poly to drawlist
€================
*/
void R_RegisterSequentialPoly(msurface_t *s) {
	if (r_numsurfacesinlist <MAX_SURFACES_FRAME) {
		r_surfacelist[r_numsurfacesinlist++] = s;
	} else {
		Con_Printf("R_RegisterSequentialPoly: Too many surfaces for this frame\r\n");
	}
}

/*
================
R_DrawSequentialPoly

Systems that have fast state and texture changes can
just do everything as it passes with no need to sort
================
*/
void R_DrawSequentialPoly (msurface_t *s)
{
	glpoly_t	*p;
	float		*v;
	int			i;
	texture_t	*t;
	vec3_t		nv;
	glRect_t	*theRect;

	//
	// normal bumped poly
	//

	if (! (s->flags & (SURF_DRAWSKY|SURF_DRAWTURB|SURF_UNDERWATER) ) ) {
		// select dynamic lights
//		R_RenderDynamicLightmaps (s);
		// anim
		t = R_TextureAnimation (s->texinfo->texture);
		// Bind textures
		GL_Bind0 (t->gl_texturenum);
		GL_Bind1 (lightmap_textures + s->lightmaptexturenum);
		GL_Bind2 (t->gl_normalmapnum); // normal map... 
//		GL_Bind2 (r_lightdirtexnum); // normal map... 
//		GX_LoadTexObj(&normalmap, GX_TEXMAP2); 

//	Con_DPrintf("texnum lightdir: %i \r\n", r_lightdirtexnum );
//		R_DrawSurfacePolyBumpShadow(s);
		R_DrawSurfacePolyProjBumpShadow(s);
		return;
	}

	//
	// subdivided water surface warp
	//

	if (s->flags & SURF_DRAWTURB)
	{
		GL_DisableMultitexture();
		GL_Bind0 (s->texinfo->texture->gl_texturenum);
		EmitWaterPolys (s);
		return;
	}

	//
	// underwater warped with lightmap
	//
//	R_RenderDynamicLightmaps (s);

	p = s->polys;

	t = R_TextureAnimation (s->texinfo->texture);
	GL_Bind0 (t->gl_texturenum);

	GX_SetTevOp(GX_TEVSTAGE0, GX_REPLACE);
	GL_EnableMultitexture();

	GL_Bind1 (lightmap_textures + s->lightmaptexturenum);
	i = s->lightmaptexturenum;
	if (lightmap_modified[i])
	{
		lightmap_modified[i] = false;
		theRect = &lightmap_rectchange[i];
		GL_UpdateLightmapTextureRegion (lightmap_textures + s->lightmaptexturenum, BLOCK_WIDTH, theRect->h, 0, theRect->t, lightmaps+i*BLOCK_WIDTH*BLOCK_HEIGHT*lightmap_bytes);
		theRect->l = BLOCK_WIDTH;
		theRect->t = BLOCK_HEIGHT;
		theRect->h = 0;
		theRect->w = 0;
	}

	v = p->verts[0];
	GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT1, p->numverts);
	for (i=0 ; i<p->numverts ; i++, v+= VERTEXSIZE)
	{
		// ELUTODO: may warp too far and get culled when should be visible
		nv[0] = v[0] + 8*sin(v[1]*0.05+realtime)*sin(v[2]*0.05+realtime);
		nv[1] = v[1] + 8*sin(v[0]*0.05+realtime)*sin(v[2]*0.05+realtime);
		nv[2] = v[2];

		GX_Position3f32(nv[0], nv[1], nv[2]);
		GX_Color4u8(0xff, 0xff, 0xff, 0xff);
		GX_TexCoord2f32(v[3], v[4]);
		GX_TexCoord2f32(v[5], v[6]);
	}
	GX_End();
}


/*
================
R_RenderDynamicLightmaps
Multitexture
================
*/
void R_RenderDynamicLightmaps (msurface_t *fa)
{
	byte		*base;
	int			maps;
	glRect_t    *theRect;
	int smax, tmax;

// DRS setup hw lights with static light
	// setup default lights
	int i;
	fa->num_dlightnums = fa->num_slightnums;
	for(i=0; i<fa->num_slightnums; i++) {
		fa->dlightnums[i] = fa->slightnums[i] + STATIC_LIGHTNUM_OFFSET;
		fa->dlightattn[i] = fa->slightattn[i]; // attenuation as calculated originally
	}


	c_brush_polys++;

	if (fa->flags & ( SURF_DRAWSKY | SURF_DRAWTURB) )
		return;
		
	fa->polys->chain = lightmap_polys[fa->lightmaptexturenum];
	lightmap_polys[fa->lightmaptexturenum] = fa->polys;

	// check for lightmap modification
	for (maps = 0 ; maps < MAXLIGHTMAPS && fa->styles[maps] != 255 ;
		 maps++)
		if (d_lightstylevalue[fa->styles[maps]] != fa->cached_light[maps])
			goto dynamic;

	if (fa->dlightframe == r_framecount	// dynamic this frame
		|| fa->cached_dlight)			// dynamic previously
	{
dynamic:
		if (r_dynamic.value)
		{
			lightmap_modified[fa->lightmaptexturenum] = true;
			theRect = &lightmap_rectchange[fa->lightmaptexturenum];
			if (fa->light_t < theRect->t) {
				if (theRect->h)
					theRect->h += theRect->t - fa->light_t;
				theRect->t = fa->light_t;
			}
			if (fa->light_s < theRect->l) {
				if (theRect->w)
					theRect->w += theRect->l - fa->light_s;
				theRect->l = fa->light_s;
			}
			smax = (fa->extents[0]>>4)+1;
			tmax = (fa->extents[1]>>4)+1;
			if ((theRect->w + theRect->l) < (fa->light_s + smax))
				theRect->w = (fa->light_s-theRect->l)+smax;
			if ((theRect->h + theRect->t) < (fa->light_t + tmax))
				theRect->h = (fa->light_t-theRect->t)+tmax;
			base = lightmaps + fa->lightmaptexturenum*lightmap_bytes*BLOCK_WIDTH*BLOCK_HEIGHT;
			base += fa->light_t * BLOCK_WIDTH * lightmap_bytes + fa->light_s * lightmap_bytes;
			R_BuildLightMap (fa, base, BLOCK_WIDTH*lightmap_bytes);
		}
	}
}

/*
================
R_MirrorChain
================
*/
void R_MirrorChain (msurface_t *s)
{
	if (mirror)
		return;
	mirror = true;
	mirror_plane = s->plane;
}


/*
================
R_DrawWaterSurfaces
================
*/
void R_DrawWaterSurfaces (void)
{
	msurface_t	*s;

	if (!waterchain)
		return;

	//
	// go back to the world matrix
	//

/* ELUTODO - check when implementing mirrors
    glLoadMatrixf (r_world_matrix);*/

	if (r_wateralpha.value < 1.0) {
		QGX_Blend (true);
		GX_SetTevOp(GX_TEVSTAGE0, GX_MODULATE);
	}

	for ( s = waterchain ; s ; s=s->texturechain) {
		GL_Bind0 (s->texinfo->texture->gl_texturenum);
		EmitWaterPolys (s);
	}
		
	waterchain = NULL;

	if (r_wateralpha.value < 1.0) {
		GX_SetTevOp(GX_TEVSTAGE0, GX_REPLACE);
		QGX_Blend (false);
	}
}

/*
================
DrawTextureChains
================
*/
void DrawTextureChains (void)
{
	GL_DisableMultitexture();

	if (skychain) {
		R_DrawSkyChain(skychain);
		skychain = NULL;
	}

	return;

}

/*
=================
R_DrawBrushModel
=================
*/
void R_DrawBrushModel (entity_t *e)
{
	int			k;
	vec3_t		mins, maxs;
	int			i;
	msurface_t	*psurf;
	float		dot;
	mplane_t	*pplane;
	model_t		*clmodel;
	qboolean	rotated;

	currententity = e;
	currenttexture0 = -1;
	currenttexture1 = -1;

	clmodel = e->model;

	if (e->angles[0] || e->angles[1] || e->angles[2])
	{
		rotated = true;
		for (i=0 ; i<3 ; i++)
		{
			mins[i] = e->origin[i] - clmodel->radius;
			maxs[i] = e->origin[i] + clmodel->radius;
		}
	}
	else
	{
		rotated = false;
		VectorAdd (e->origin, clmodel->mins, mins);
		VectorAdd (e->origin, clmodel->maxs, maxs);
	}

	if (R_CullBox (mins, maxs))
		return;

	memset (lightmap_polys, 0, sizeof(lightmap_polys));

	VectorSubtract (r_refdef.vieworg, e->origin, modelorg);
	if (rotated)
	{
		vec3_t	temp;
		vec3_t	forward, right, up;

		VectorCopy (modelorg, temp);
		AngleVectors (e->angles, forward, right, up);
		modelorg[0] = DotProduct (temp, forward);
		modelorg[1] = -DotProduct (temp, right);
		modelorg[2] = DotProduct (temp, up);
	}

	psurf = &clmodel->surfaces[clmodel->firstmodelsurface];

// calculate dynamic lighting for bmodel if it's not an
// instanced model
	if (clmodel->firstmodelsurface != 0)
	{
		for (k=0 ; k<MAX_DLIGHTS ; k++)
		{
			if ((cl_dlights[k].die < cl.time) ||
				(!cl_dlights[k].radius))
				continue;

			R_MarkLights (&cl_dlights[k], 1<<k,
				clmodel->nodes + clmodel->hulls[0].firstclipnode);
		}
	}

	c_guMtxIdentity(model);
e->angles[0] = -e->angles[0];	// stupid quake bug
	R_RotateForEntity (e);
e->angles[0] = -e->angles[0];	// stupid quake bug

	c_guMtxConcat(view,model,modelview);
	GX_LoadPosMtxImm(modelview, GX_PNMTX0);

	//
	// draw texture
	//
	for (i=0 ; i<clmodel->nummodelsurfaces ; i++, psurf++)
	{
	// find which side of the node we are on
		pplane = psurf->plane;

		dot = DotProduct (modelorg, pplane->normal) - pplane->dist;

	// draw the polygon
		if (((psurf->flags & SURF_PLANEBACK) && (dot < -BACKFACE_EPSILON)) ||
			(!(psurf->flags & SURF_PLANEBACK) && (dot > BACKFACE_EPSILON)))
		{
			R_DrawSequentialPoly (psurf); // DRS: TODO are these boxes and such? When called? Use register function instead
		}
	}
}

/*
=============================================================

	WORLD MODEL

=============================================================
*/

/*
================
R_RecursiveWorldNode
================
*/
void R_RecursiveWorldNode (mnode_t *node)
{
	int			c, side;
	mplane_t	*plane;
	msurface_t	*surf, **mark;
	mleaf_t		*pleaf;
	double		dot;

	if (node->contents == CONTENTS_SOLID)
		return;		// solid

	if (node->visframe != r_visframecount)
		return;
	if (R_CullBox (node->minmaxs, node->minmaxs+3))
		return;
	
// if a leaf node, draw stuff
	if (node->contents < 0)
	{
		pleaf = (mleaf_t *)node;

		mark = pleaf->firstmarksurface;
		c = pleaf->nummarksurfaces;

		if (c)
		{
			do
			{
				(*mark)->visframe = r_framecount;
				mark++;
			} while (--c);
		}

	// deal with model fragments in this leaf
		if (pleaf->efrags)
			R_StoreEfrags (&pleaf->efrags);

		return;
	}

// node is just a decision point, so go down the apropriate sides

// find which side of the node we are on
	plane = node->plane;

	switch (plane->type)
	{
	case PLANE_X:
		dot = modelorg[0] - plane->dist;
		break;
	case PLANE_Y:
		dot = modelorg[1] - plane->dist;
		break;
	case PLANE_Z:
		dot = modelorg[2] - plane->dist;
		break;
	default:
		dot = DotProduct (modelorg, plane->normal) - plane->dist;
		break;
	}

	if (dot >= 0)
		side = 0;
	else
		side = 1;

// recurse down the children, front side first
	R_RecursiveWorldNode (node->children[side]);

// draw stuff
	c = node->numsurfaces;

	if (c)
	{
		surf = cl.worldmodel->surfaces + node->firstsurface;

		if (dot < 0 -BACKFACE_EPSILON)
			side = SURF_PLANEBACK;
		else if (dot > BACKFACE_EPSILON)
			side = 0;
		{
			for ( ; c ; c--, surf++)
			{
				if (surf->visframe != r_framecount)
					continue;

				// don't backface underwater surfaces, because they warp
				if ( !(surf->flags & SURF_UNDERWATER) && ( (dot < 0) ^ !!(surf->flags & SURF_PLANEBACK)) )
					continue;		// wrong side

				if (surf->flags & SURF_DRAWSKY) {
					surf->texturechain = skychain;
					skychain = surf;
				} else if (surf->flags & SURF_DRAWTURB) {
					surf->texturechain = waterchain;
					waterchain = surf;
				} else
					R_RegisterSequentialPoly(surf);// DRS: register instead of draw
//					R_DrawSequentialPoly (surf);
			}
		}

	}

// recurse down the back side
	R_RecursiveWorldNode (node->children[!side]);
}



/*
=============
R_MarkVisibleLights
DRS
=============
*/
void R_MarkVisibleLightsFromSurface(msurface_t *surf) {
	int i, lnum;
	int num_hwlights = surf->num_dlightnums;
	for(i=0; i<num_hwlights; i++) {
		lnum = surf->dlightnums[i];
		if (lnum >= STATIC_LIGHTNUM_OFFSET) {
			cl_staticlights[lnum - STATIC_LIGHTNUM_OFFSET].visframe = r_framecount;
			cl_staticlights[lnum - STATIC_LIGHTNUM_OFFSET].stenciltexnum = -1;
		} else {
			// TODO cl_dlights[lnum].visframe; // TODO
		}
	}

}

/*
=============
R_RenderMode_Fullscreen
DRS: Init render mode for detailed drawing
TODO: move all screen setup (i.e. vertex setup and default tev) to this place
=============
*/
extern float viewport_size[]; // DRS TODO: move to .h
void R_RenderMode_Fullscreen(void) {
	GX_SetColorUpdate(GX_TRUE);
	GX_SetAlphaUpdate(GX_TRUE);
	GX_SetViewport(viewport_size[0], viewport_size[1], viewport_size[2], viewport_size[3], 0.0f, 1.0f);
	GX_SetScissor(glx,gly,glwidth,glheight);

	GX_SetPixelFmt(GX_PF_RGB8_Z24, GX_ZC_LINEAR);

//  TODO: basic vertex stuff
//	GX_SetBlendMode(GX_BM_NONE, GX_BL_ONE, GX_BL_ONE, GX_LO_COPY);
//	GX_SetZMode(GX_ENABLE, GX_LEQUAL, GX_TRUE);

//	GX_SetCullMode(GX_CULL_BACK);
}



/*
=============
R_RenderMode_ZOnly
DRS: Init render mode for flat polys
=============
*/
void R_RenderMode_HalfscreenZOnly(void) {
	GX_SetColorUpdate(GX_TRUE); // TODO
	GX_SetAlphaUpdate(GX_TRUE); // TODO

	GX_SetViewport(0, 0, 320, 240, 0.0f, 1.0f);
	GX_SetScissor(0, 0, 320, 240);

	GX_SetPixelFmt(GX_PF_RGB8_Z24, GX_ZC_LINEAR);

}


/*
===============
R_SetupFlatShader
===============
*/
void R_SetupFlatShader(void) {
	GX_SetZCompLoc(GX_TRUE);
	GX_ClearVtxDesc();
	GX_SetVtxDesc(GX_VA_POS, GX_DIRECT);
	GX_SetVtxAttrFmt(GX_VTXFMT3, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
	
	GX_SetNumIndStages(0);
	GX_SetNumTexGens(0);
	GX_SetNumTevStages(1);

	GX_SetTevDirect(GX_TEVSTAGE0);
	GX_SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO);
	GX_SetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
	GX_SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORDNULL, GX_TEXMAP_DISABLE, GX_COLORNULL);

	GX_SetBlendMode(GX_BM_NONE, GX_BL_ONE, GX_BL_ONE, GX_LO_COPY);
	GX_SetZMode(GX_ENABLE, GX_LESS, GX_TRUE);

	GX_SetCullMode(GX_CULL_BACK);
}


/*
=============
R_DrawPolyFlat
DRS: basically used for zbuffer prerendering
=============
*/
void R_DrawPolyFlat(msurface_t *surf) {
	float			*v;
	int			verts;
	
	glpoly_t *p = surf->polys;

	// setup current l
	GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT3, p->numverts);
	v = p->verts[0];
	for (verts=0 ; verts<p->numverts ; verts++, v+= VERTEXSIZE) {
		GX_Position3f32(v[0], v[1], v[2]);
	}
	GX_End();
}


/*
=============
R_DrawWorld
=============
*/
void R_DrawWorld (void)
{
	entity_t	ent;

	// ELUTODO: z-fighting

	memset (&ent, 0, sizeof(ent));
	ent.model = cl.worldmodel;

	VectorCopy (r_refdef.vieworg, modelorg);

	currententity = &ent;
	currenttexture0 = -1;
	currenttexture1 = -1;

	memset (lightmap_polys, 0, sizeof(lightmap_polys));
#ifdef QUAKE2
	R_ClearSkyBox ();
#endif
	// DRS reset surfaces // TODO speed comparison with going through the bsp again
	r_numsurfacesinlist = 0;
	
	R_RecursiveWorldNode (cl.worldmodel->nodes);

	// DRS: z prerender pass and light gathering
	R_RenderMode_HalfscreenZOnly();
	R_SetupFlatShader	();
	int i;
	for (i=0; i<r_numsurfacesinlist; i++) {
		// draw it
//		R_DrawSequentialPoly(r_surfacelist[i]);
		msurface_t *surf = r_surfacelist[i];
		R_DrawPolyFlat(surf);
		// mark it
		R_RenderDynamicLightmaps (surf); // DRS LET OP HIER!!!!!
		R_MarkVisibleLightsFromSurface(surf); // mark lights
	}
	GX_DrawDone(); // HELPT NIET??? 
//	DrawTextureChains (); // MOET JUISTE SHADER
 


	// TODO: appearantly this needs te be moved a level up... doors etc are drawn there...
	// DRS shadow volumes
	R_DrawShadowVolumes();
	R_SetDefaultQuakeShader();
	R_RenderMode_Fullscreen();
	
	for (i=0; i<r_numsurfacesinlist; i++) {
		// draw it
		R_DrawSequentialPoly(r_surfacelist[i]);
	}
	DrawTextureChains ();

#ifdef QUAKE2
	R_DrawSkyBox ();
#endif

//	testVolumeMap();
}


/*
===============
R_MarkLeaves
===============
*/
void R_MarkLeaves (void)
{
	byte	*vis;
	mnode_t	*node;
	int		i;
	byte	solid[4096];

	if (r_oldviewleaf == r_viewleaf && !r_novis.value)
		return;
	
	if (mirror)
		return;

	r_visframecount++;
	r_oldviewleaf = r_viewleaf;

	if (r_novis.value)
	{
		vis = solid;
		memset (solid, 0xff, (cl.worldmodel->numleafs+7)>>3);
	}
	else
		vis = Mod_LeafPVS (r_viewleaf, cl.worldmodel);
		
	for (i=0 ; i<cl.worldmodel->numleafs ; i++)
	{
		if (vis[i>>3] & (1<<(i&7)))
		{
			node = (mnode_t *)&cl.worldmodel->leafs[i+1];
			do
			{
				if (node->visframe == r_visframecount)
					break;
				node->visframe = r_visframecount;
				node = node->parent;
			} while (node);
		}
	}
}



/*
=============================================================================

  LIGHTMAP ALLOCATION

=============================================================================
*/

// returns a texture number and the position inside it
int AllocBlock (int w, int h, int *x, int *y)
{
	int		i, j;
	int		best, best2;
	int		texnum;

	for (texnum=0 ; texnum<MAX_LIGHTMAPS ; texnum++)
	{
		best = BLOCK_HEIGHT;

		for (i=0 ; i<BLOCK_WIDTH-w ; i++)
		{
			best2 = 0;

			for (j=0 ; j<w ; j++)
			{
				if (allocated[texnum][i+j] >= best)
					break;
				if (allocated[texnum][i+j] > best2)
					best2 = allocated[texnum][i+j];
			}
			if (j == w)
			{	// this is a valid spot
				*x = i;
				*y = best = best2;
			}
		}

		if (best + h > BLOCK_HEIGHT)
			continue;

		for (i=0 ; i<w ; i++)
			allocated[texnum][*x + i] = best + h;

		return texnum;
	}

	Sys_Error ("AllocBlock: full");

	return 0; // stop compiler from complaining
}


mvertex_t	*r_pcurrentvertbase;
model_t		*currentmodel;

int	nColinElim;

/*
================
BuildSurfaceDisplayList
================
*/
void BuildSurfaceDisplayList (msurface_t *fa)
{
	int			i, lindex, lnumverts;
	medge_t		*pedges, *r_pedge;
	int			vertpage;
	float		*vec;
	float		s, t;
	glpoly_t	*poly;

// reconstruct the polygon
	pedges = currentmodel->edges;
	lnumverts = fa->numedges;
	vertpage = 0;

	//
	// draw texture
	//
	poly = Hunk_Alloc (sizeof(glpoly_t) + (lnumverts-4) * VERTEXSIZE*sizeof(float));
	poly->next = fa->polys;
	poly->flags = fa->flags;
	fa->polys = poly;
	poly->numverts = lnumverts;

	for (i=0 ; i<lnumverts ; i++)
	{
		lindex = currentmodel->surfedges[fa->firstedge + i];

		if (lindex > 0)
		{
			r_pedge = &pedges[lindex];
			vec = r_pcurrentvertbase[r_pedge->v[0]].position;
		}
		else
		{
			r_pedge = &pedges[-lindex];
			vec = r_pcurrentvertbase[r_pedge->v[1]].position;
		}
		s = DotProduct (vec, fa->texinfo->vecs[0]) + fa->texinfo->vecs[0][3];
		s /= fa->texinfo->texture->width;

		t = DotProduct (vec, fa->texinfo->vecs[1]) + fa->texinfo->vecs[1][3];
		t /= fa->texinfo->texture->height;

		VectorCopy (vec, poly->verts[i]);
		poly->verts[i][3] = s;
		poly->verts[i][4] = t;

		//
		// lightmap texture coordinates
		//
		s = DotProduct (vec, fa->texinfo->vecs[0]) + fa->texinfo->vecs[0][3];
		s -= fa->texturemins[0];
		s += fa->light_s*16;
		s += 8;
		s /= BLOCK_WIDTH*16; //fa->texinfo->texture->width;

		t = DotProduct (vec, fa->texinfo->vecs[1]) + fa->texinfo->vecs[1][3];
		t -= fa->texturemins[1];
		t += fa->light_t*16;
		t += 8;
		t /= BLOCK_HEIGHT*16; //fa->texinfo->texture->height;

		poly->verts[i][5] = s;
		poly->verts[i][6] = t;
	}

	//
	// remove co-linear points - Ed
	//
	if (!gl_keeptjunctions.value && !(fa->flags & SURF_UNDERWATER) )
	{
		for (i = 0 ; i < lnumverts ; ++i)
		{
			vec3_t v1, v2;
			float *prev, *this, *next;

			prev = poly->verts[(i + lnumverts - 1) % lnumverts];
			this = poly->verts[i];
			next = poly->verts[(i + 1) % lnumverts];

			VectorSubtract( this, prev, v1 );
			VectorNormalize( v1 );
			VectorSubtract( next, prev, v2 );
			VectorNormalize( v2 );

			// skip co-linear points
			#define COLINEAR_EPSILON 0.001
			if ((fabs( v1[0] - v2[0] ) <= COLINEAR_EPSILON) &&
				(fabs( v1[1] - v2[1] ) <= COLINEAR_EPSILON) && 
				(fabs( v1[2] - v2[2] ) <= COLINEAR_EPSILON))
			{
				int j;
				for (j = i + 1; j < lnumverts; ++j)
				{
					int k;
					for (k = 0; k < VERTEXSIZE; ++k)
						poly->verts[j - 1][k] = poly->verts[j][k];
				}
				--lnumverts;
				++nColinElim;
				// retry next vertex next time, which is now current vertex
				--i;
			}
		}
	}
	poly->numverts = lnumverts;

}

/*
========================
GL_CreateSurfaceLightmap
========================
*/
void GL_CreateSurfaceLightmap (msurface_t *surf)
{
	int		smax, tmax;
	byte	*base;

	if (surf->flags & (SURF_DRAWSKY|SURF_DRAWTURB))
		return;

	smax = (surf->extents[0]>>4)+1;
	tmax = (surf->extents[1]>>4)+1;

	surf->lightmaptexturenum = AllocBlock (smax, tmax, &surf->light_s, &surf->light_t);
	base = lightmaps + surf->lightmaptexturenum*lightmap_bytes*BLOCK_WIDTH*BLOCK_HEIGHT;
	base += (surf->light_t * BLOCK_WIDTH + surf->light_s) * lightmap_bytes;
	R_BuildLightMap (surf, base, BLOCK_WIDTH*lightmap_bytes);
}


/*
==================
GL_BuildLightmaps

Builds the lightmap texture
with all the surfaces from all brush models
==================
*/
void GL_BuildLightmaps (void)
{
	int		i, j;
	model_t	*m;

	memset (allocated, 0, sizeof(allocated));

	r_framecount = 1;		// no dlightcache

	lightmap_textures = numgltextures;

	lightmap_bytes = 4;

	for (j=1 ; j<MAX_MODELS ; j++)
	{
		m = cl.model_precache[j];
		if (!m)
			break;
		if (m->name[0] == '*')
			continue;
		r_pcurrentvertbase = m->vertexes;
		currentmodel = m;
		for (i=0 ; i<m->numsurfaces ; i++)
		{
			GL_CreateSurfaceLightmap (m->surfaces + i);
			if ( m->surfaces[i].flags & SURF_DRAWTURB )
				continue;
#ifndef QUAKE2
			if ( m->surfaces[i].flags & SURF_DRAWSKY )
				continue;
#endif
			BuildSurfaceDisplayList (m->surfaces + i);
		}
	}

	//
	// upload all lightmaps that were filled
	//
	for (i=0 ; i<MAX_LIGHTMAPS ; i++)
	{
		if (!allocated[i][0])
			break;		// no more used
		lightmap_modified[i] = false;
		lightmap_rectchange[i].l = BLOCK_WIDTH;
		lightmap_rectchange[i].t = BLOCK_HEIGHT;
		lightmap_rectchange[i].w = 0;
		lightmap_rectchange[i].h = 0;
		GL_LoadLightmapTexture ("", BLOCK_WIDTH, BLOCK_HEIGHT, lightmaps+i*BLOCK_WIDTH*BLOCK_HEIGHT*lightmap_bytes);
	}
}

