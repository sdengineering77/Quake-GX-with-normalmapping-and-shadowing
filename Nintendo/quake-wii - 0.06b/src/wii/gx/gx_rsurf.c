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

//unsigned		blocklights[18*18];

//#define	BLOCK_WIDTH				128
//#define	BLOCK_HEIGHT				128

#define 	MAX_SURFACES_FRAME			128*1024
#define 	STATIC_LIGHTNUM_OFFSET  	128
//#define	MAX_LIGHTMAPS						64
//int			active_lightmaps;



typedef struct glRect_s {
	unsigned char l,t,w,h;
} glRect_t;

//glpoly_t	*lightmap_polys[MAX_LIGHTMAPS];
//qboolean	lightmap_modified[MAX_LIGHTMAPS];
//glRect_t	lightmap_rectchange[MAX_LIGHTMAPS];

// ============= HARDWARE SPECIFIC LIGHTING STUFF ==========
// DRS: used for distance attenuation (shadowing TODO)
GXColor cl_hw_lightcolors[] = {
        { 0xFF, 0xFF, 0xFF, 0xFF }, // Light color 1
        { 0x00, 0x00, 0x00, 0x00 }, // Ambient 1
        { 0xFF, 0xFF, 0xFF, 0xFF }  // Material 1
};


// DRS: array of projected lights
GXLightObj	cl_hwlight_obj[MAX_HWLIGHTS];

//int			allocated[MAX_LIGHTMAPS][BLOCK_WIDTH];

// the lightmap texture data needs to be kept in
// main memory so texsubimage can update properly
//byte		*lightmaps;//[4*MAX_LIGHTMAPS*BLOCK_WIDTH*BLOCK_HEIGHT];
//byte		lightmaps[4*MAX_LIGHTMAPS*BLOCK_WIDTH*BLOCK_HEIGHT];

// For gl_texsort 0
msurface_t  *skychain = NULL;
msurface_t  *waterchain = NULL;

// DRS: surfaces to draw this frame
//int				r_numsurfacesinlist;	
//msurface_t  *r_surfacelist[MAX_SURFACES_FRAME];

extern gltexture_t 	r_stencilTextures[]; // DRS TODO: move


//void R_RenderDynamicLightmaps (msurface_t *fa);


static vu16* const _cpReg = (u16*)0xCC000000;

void GX_ReadBoundingBox(u16 *left, u16 *right, u16 *top, u16 *bottom) {
	DCFlushRange(&_cpReg[0x10/2], 8);
//	DCFlushRange(&_cpReg[0x20/2], 8);

//	*left 		= _cpReg[0x20/2];
//	*right		= _cpReg[0x22/2];
//	*top			= _cpReg[0x24/2];
//	*bottom	= _cpReg[0x26/2];
	*left 		= _cpReg[0x10/2];
	*right		= _cpReg[0x12/2];
	*top			= _cpReg[0x14/2];
	*bottom	= _cpReg[0x16/2];
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
extern GXTexObj attenuatedshadesmap;
extern GXTexObj lightattnmap;

/**
=============================================================

	DRS: SHADERS

	GX_VTXFMT2 must be selected
=============================================================
*/

extern int r_numstencilTextures; // DRS remove

int stage_none, tex_none;
int stage_enablelight, tex_enablelight;
int stage_enablediffuse, tex_enablediffuse;
int stage_enablespecular, tex_enablespecular;
int stage_enablestencil, tex_enablestencil;

void R_SetupBrushModelLightShader(Mtx modelview) {
	int tevstage = GX_TEVSTAGE0;
	int texgen = 1; // gen 0 is material tex
	
	GX_SetZCompLoc(GX_TRUE);
	// DRS vertex format for surface shader
	GX_ClearVtxDesc();
	GX_SetVtxDesc(GX_VA_POS, GX_DIRECT);
	GX_SetVtxDesc(GX_VA_NBT, GX_DIRECT);
	GX_SetVtxDesc(GX_VA_TEX0, GX_DIRECT);
	GX_SetVtxAttrFmt(GX_VTXFMT2, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
	GX_SetVtxAttrFmt(GX_VTXFMT2, GX_VA_NBT, GX_NRM_NBT3, GX_F32, 0);
	GX_SetVtxAttrFmt(GX_VTXFMT2, GX_VA_TEX0, GX_TEX_ST, GX_F32, 0);


	// GX_TEXMAP0 tex map
	// GX_TEXMAP1 normal map
	
	// GX_TEXMAP2 attenuation map
	// GX_TEXMAP3 lightdir map
	// GX_TEXMAP4 light map
	// GX_TEXMAP5 specular map
	
	// GX_TEXMAP6 stencil map
	GX_LoadTexObj(&lightattnmap, GX_TEXMAP2); // light attenuation f(x,y) = (x^2+y^2) map	
	GX_LoadTexObj(&normalmap, GX_TEXMAP3); // light direction map
	GX_LoadTexObj(&lightmap, GX_TEXMAP4); // light map
	GX_LoadTexObj(&specularmap, GX_TEXMAP5); // specular map

	// ===== TEXTURE COORDINATE SHADER ======

	// Cam at 0, 0, 0 eye space
	GXLightObj camlightobj;
	GX_InitLightPos(&camlightobj, 0.0f, 0.0f, 0.0f);
	GX_InitLightColor(&camlightobj, cl_hw_lightcolors[1]);
	GX_LoadLightObj(&camlightobj, GX_LIGHT7); // for reflections
	
	stage_none = tevstage; 
	tex_none	= texgen;
	
	// texcoord1 normal map
	GX_SetTexCoordGen(GX_TEXCOORD1, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY); 
	texgen++;
	// text  coord 3 and 4 render light attenuation
	GX_SetTexCoordGen2(GX_TEXCOORD2, GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX0, GX_FALSE, GX_DTTMTX0); // attenuation XY
	texgen++;
	GX_SetTexCoordGen2(GX_TEXCOORD3, GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX0, GX_FALSE, GX_DTTMTX1); // attenuation Z 
	texgen++;
	tex_enablelight =  texgen;

	// tex coord 4 renders stencil if available
	GX_SetTexCoordGen2(GX_TEXCOORD4, GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX2, GX_FALSE, GX_DTTMTX2); // stencil
	texgen++;
	
	// texcoord2 -> 0, 0 coordinate
	GX_SetTexCoordGen(GX_TEXCOORD5, GX_TG_MTX2x4, GX_TG_TEX0, GX_TEXMTX1); 
	texgen++;

	// tex coord 5 renders the bump offset for current hw light
//	GX_SetTexCoordGen(GX_TEXCOORD6, GX_TG_BUMP0, GX_TG_TEXCOORD5, GX_IDENTITY);
	GX_SetTexCoordGen2(GX_TEXCOORD6, GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX0, GX_FALSE, GX_DTTMTX3); // diffuse 
	texgen++;
	tex_enablediffuse = texgen;
	
	// text coord 6 renders the bump offset related to camera position for specular
	GX_SetTexCoordGen(GX_TEXCOORD7, GX_TG_BUMP7, GX_TG_TEXCOORD5, GX_IDENTITY);
	texgen++;
	tex_enablespecular = texgen;
	
	tex_enablestencil = texgen;
	
	// attenutation: texmtx 0 dttmtx0 dttmtx1 done at poly level setup

	// bump mapping: texmtx0
	Mtx nullMtx = 
		{{ 0.0f,  0.0f,  0.0f,  0.0f},
		 { 0.0f,  0.0f,  0.0f,  0.0f},
		 { 0.0f,  0.0f,  0.0f,  0.0f}};
	GX_LoadTexMtxImm(nullMtx, GX_TEXMTX1, GX_MTX3x4);

	// bump mapping: texmtx3 dttmtx3 done at poly level setup

	// stencil: texmtx2 dttmtx2 
	Mtx dttStencilScale = 
		{{-0.37665,		0.0f,			0.5f,		0.0f},
		 { 0.0f,				2.0f/3.0f,	0.5f,		0.0f},
		 { 0.0f,				0.0f,	    	1.0f,		0.0f}};
		 
	GX_LoadTexMtxImm(dttStencilScale, GX_DTTMTX2, GX_MTX3x4);
	GX_LoadTexMtxImm(modelview, GX_TEXMTX2, GX_MTX3x4);

	// ===== TEV SHADER ======
	// ind stage 0 is set up to read normal map from texmap 0 
	GX_SetIndTexOrder(GX_INDTEXSTAGE0, GX_TEXCOORD1, GX_TEXMAP1);
	GX_SetIndTexCoordScale(GX_INDTEXSTAGE0, GX_ITS_1, GX_ITS_1); // normal map texture scale 1:1
	// ind stage 1 looksup light direction vector
	GX_SetIndTexOrder(GX_INDTEXSTAGE1, GX_TEXCOORD6, GX_TEXMAP3);
	GX_SetIndTexCoordScale(GX_INDTEXSTAGE1, GX_ITS_1, GX_ITS_1); // normal map texture scale 1:1
	
	// setup indirect unit for tev stage 0 (for some reason I get a ABGR triplet, so transforms are done on normal map's B and G components)
	f32 offset_mtx[2][3] = {
		{  0.0f, -0.125f,    0.0f}, // B -> horizontal coordinate (s)
		{  0.0f,    0.0f, -0.125f}  // G -> vertical coordinate (t)
	};

	GX_SetNumIndStages(2);
	GX_SetIndTexMatrix(GX_ITM_0,offset_mtx, 0);

	// 1) attenuation XY
	GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_ONE, GX_CC_TEXC, GX_CC_ONE);
	GX_SetTevColorOp(tevstage, GX_TEV_SUB, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
	GX_SetTevOrder(tevstage, GX_TEXCOORD2, GX_TEXMAP2, GX_COLORNULL);
	tevstage++;
	// 2) attenuation Z (result of XYZ is stored in REG0)
	GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_ONE, GX_CC_TEXC, GX_CC_CPREV);
	GX_SetTevColorOp(tevstage, GX_TEV_SUB, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG0);
	GX_SetTevOrder(tevstage, GX_TEXCOORD3, GX_TEXMAP2, GX_COLORNULL);
	tevstage++;
	stage_enablelight = tevstage;
	
	// 3) diffuse bump mapping
	GX_SetTevIndirect(
		tevstage, // tevstage 0 is used to combine normal map and lightmap
		GX_INDTEXSTAGE1, // ind stage is used to read diffuse light direction
		GX_ITF_8, // texture format 8 bits per channel
		GX_ITB_STU, // use bias on s and t channels (red and green and blue)
		GX_ITM_0, // use 3x2 matrix 0
		GX_ITW_OFF, // do not use texture wrapping
		GX_ITW_OFF, // do not use texture wrapping
		GX_FALSE, // don't add in previous coordinates
		GX_FALSE, // don't use mipmap stuff
		GX_ITBA_OFF // don't use bump alpha (TODO: can this be used to blend reflection and difuse?)
		); 
	GX_SetTevOrder(tevstage, GX_TEXCOORD5, GX_TEXMAP_DISABLE, GX_COLORNULL); // 0,0  coordinate + lightdir
	tevstage++;

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

	GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_C0, GX_CC_ZERO); // !!!! check nog ff tevprev 
	GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
	GX_SetTevOrder(tevstage, GX_TEXCOORD5, GX_TEXMAP4, GX_COLORNULL);
	tevstage++;
	stage_enablediffuse = tevstage;

	// 4) specular bump mapping
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
	GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_C0, GX_CC_CPREV);
	GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
	GX_SetTevOrder(tevstage, GX_TEXCOORD7, GX_TEXMAP5, GX_COLORNULL);
	tevstage++;
	stage_enablespecular = tevstage;

	// 5) stencil operation
	GX_SetTevColorIn(tevstage, GX_CC_TEXC, GX_CC_ZERO, GX_CC_CPREV, GX_CC_ZERO);
	GX_SetTevColorOp(tevstage, GX_TEV_COMP_RGB8_EQ, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
	GX_SetTevOrder(tevstage, GX_TEXCOORD4, GX_TEXMAP6, GX_COLORNULL);
	tevstage++;
	stage_enablestencil = tevstage;

	
}


void R_SetBrushModelLightShaderData(Mtx *normals, dlight_t *currLight) {
	int tevstage = stage_none; 
	int num_texgen = tex_none;
	if (currLight) {
		float fullRad = currLight->radius;
		float halfRad = 0.5f * fullRad;

		GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_ONE, GX_CC_TEXC, GX_CC_ONE);

		tevstage = stage_enablespecular; 
		num_texgen = tex_enablespecular;

		// attenuation lightpos vertex texmtx0
		Mtx lightMtx = 
				{{ 1.0f,  0.0f,  0.0f,  -currLight->origin[0]},
				 { 0.0f,  1.0f,  0.0f,  -currLight->origin[1]},
				 { 0.0f,  0.0f,  1.0f,  -currLight->origin[2]}};
		GX_LoadTexMtxImm(lightMtx, GX_TEXMTX0, GX_MTX3x4);

		// attenuation distance vertices dttmtx0 dttmtx1
		Mtx dttLightAttnXY = 
			{{ 0.5f,		0.0f,		0.0f,		halfRad},
			 { 0.0f,		0.5f,		0.0f,		halfRad},
			 { 0.0f,	    0.0f,		0.0f,		fullRad}};
		Mtx dttLightAttnZ = 
			{{ 0.0f,		0.0f,		0.5f,		halfRad},
			 { 0.0f,		0.0f,		0.0f,		halfRad},
			 { 0.0f,	    0.0f,		0.0f,		fullRad}};
		GX_LoadTexMtxImm(dttLightAttnXY, GX_DTTMTX0, GX_MTX3x4);
		GX_LoadTexMtxImm(dttLightAttnZ, GX_DTTMTX1, GX_MTX3x4);

		// bumpmapping 
/*		Vector lpos;
		lpos.x = currLight->origin[0];
		lpos.y = currLight->origin[1];
		lpos.z = currLight->origin[2];
		// rotate light to view
		guVecMultiply(view, &lpos, &lpos);
		GX_InitLightPos(&cl_hwlight_obj[0], lpos.x, lpos.y, lpos.z);
		GX_InitLightColor(&cl_hwlight_obj[0], cl_hw_lightcolors[0]);
		GX_InitLightDir(&cl_hwlight_obj[0], 0.0f, 0.0f, 1.0f); // doesn't really matter what direction		
		GX_LoadLightObj(&cl_hwlight_obj[0], GX_LIGHT0);
*/		
		// per pixel diffuse bumpmapping
		Mtx dttMtx;
		Mtx dttOffsets = 
			{{	    1.0f,		0.0f,		0.5f * 32.0f,		0.0f},
			 { 		0.0f,	    1.0f,		0.5f * 32.0f,		0.0f},
			 { 		0.0f,		0.0f,		32.0f,		0.0f}};
			 
		guMtxConcat(dttOffsets, *normals, dttMtx);
			 
		GX_LoadTexMtxImm(dttMtx, GX_DTTMTX3, GX_MTX3x4);


		// stencil 
		if (currLight->stenciltexnum>-1) {
			// GX_TEXMAP5 stencil tex
			GX_LoadTexObj(&r_stencilTextures[currLight->stenciltexnum].gx_tex, GX_TEXMAP6);		

			// 5) stencil operation
			GX_SetTevColorIn(tevstage, GX_CC_TEXC, GX_CC_ZERO, GX_CC_CPREV, GX_CC_ZERO);
			GX_SetTevColorOp(tevstage, GX_TEV_COMP_RGB8_EQ, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
			GX_SetTevOrder(tevstage, GX_TEXCOORD4, GX_TEXMAP6, GX_COLORNULL);

			tevstage = stage_enablestencil;
			num_texgen = tex_enablestencil;
		}

		// 6) setup the next stage for modulating light intensity with quake texmap
		GX_SetTevDirect(tevstage);
		GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_CPREV, GX_CC_ZERO);
		GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_2, GX_TRUE, GX_TEVPREV); // scale *2 for bright colours
		GX_SetTevOrder(tevstage, GX_TEXCOORD0, GX_TEXMAP0, GX_COLORNULL);
		tevstage++;
		

	} else {
		GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_ONE, GX_CC_TEXC, GX_CC_ZERO);
		tevstage++;
	}
	
	//set number of textures to generate
	GX_SetNumTexGens(num_texgen);
	GX_SetNumTevStages(tevstage);
		 

}

void R_SetupBrushModelMaterialShader() {
}

void R_SetupBrushModelMaterialShaderData() {
}


void R_DrawSurfacePolyBumpShadow(msurface_t *surf) {
	glpoly_t	*p;
	float			*v;
	int			i;
	vec3_t 		normal;
	vec3_t 		tangent;
	vec3_t 		bitangent;
	
	p = surf->polys;

	Mtx normals =
		{{ 0.0f,  0.0f,  0.0f,  0.0f},
		 { 0.0f,  0.0f,  0.0f,  0.0f},
		 { 0.0f,  0.0f,  0.0f,  0.0f}};

	for(i=0; i<3; i++) {
		if ( surf->flags & SURF_PLANEBACK ) {
			normal[i]	 = -surf->plane->normal[i];
			normals[2][i] = normal[i]; // n
		} else {
			normal[i]	 = surf->plane->normal[i];
			normals[2][i] = normal[i]; // n
		}
		float t = surf->texinfo->vecs[0][i];
		float b = surf->texinfo->vecs[1][i];
		tangent[i]   = 0.125f*t;
		bitangent[i] = 0.125f*b;
		normals[0][i]   = t; // t
		normals[1][i] = b; // b
		
	}


	// setup lights
	R_SetupBrushModelLightShader(view);
	
	if (surf->lightdata) {
		mlightdata_t *lightdata = surf->lightdata;
		// surface shader
		// DRS move to shader setup
		GX_SetBlendMode(GX_BM_NONE, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	
		GX_SetZMode(GX_ENABLE, GX_LEQUAL, GX_TRUE);
		i = 0;
		while(lightdata) {
			int verts;

			dlight_t*	currLight = lightdata->light;

			R_SetBrushModelLightShaderData(&normals, currLight);
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
			if (!i++)
				GX_SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ONE, GX_LO_COPY);	

			lightdata = lightdata->nextlight;
		}
		
	
	} else {
		R_SetBrushModelLightShaderData(&normals, NULL);
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

	//
	// normal bumped poly
	//

	if (! (s->flags & (SURF_DRAWSKY|SURF_DRAWTURB|SURF_UNDERWATER) ) ) {
		// anim
		t = R_TextureAnimation (s->texinfo->texture);
		// Bind textures
		GL_Bind0 (t->gl_texturenum);
		GL_Bind1 (t->gl_normalmapnum); // normal map... 
		R_DrawSurfacePolyBumpShadow(s);
		return;
	}

	//
	// subdivided water surface warp
	//

	GL_DisableMultitexture();
	if (s->flags & SURF_DRAWTURB)
	{
		GL_Bind0 (s->texinfo->texture->gl_texturenum);
		EmitWaterPolys (s);
		return;
	}


	p = s->polys;

	t = R_TextureAnimation (s->texinfo->texture);
	GL_Bind0 (t->gl_texturenum);

	GX_SetTevOp(GX_TEVSTAGE0, GX_REPLACE);

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
	}
	GX_End();
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
//	int			k;
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

//	memset (lightmap_polys, 0, sizeof(lightmap_polys));

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
/*	if (clmodel->firstmodelsurface != 0)
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
*/
//	Con_DPrintf("e %p ", e);
//	Con_DPrintf("efrag %p ", e->efrag);
//	Con_DPrintf("leaf %p\r\n", e->efrag->leaf);
	
	// find the leaf this entity is in
	mleaf_t *leaf = NULL;
	if (e->efrag) { // these probably come from efrags in leaf
		leaf = e->efrag->leaf;
	} else {
		// no efrag, search leaf
		vec3_t origin;
		guVecAdd((Vector *) mins, (Vector *) maxs, (Vector *) &origin);
		guVecScale((Vector *) &origin, (Vector *) &origin, 0.5f);
		leaf = Mod_PointInLeaf (origin, cl.worldmodel);
	}
	if (leaf) {
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
				psurf->lightdata = leaf->lightdata; // set lightdata for surface
				R_DrawSequentialPoly (psurf); 
			}
		}
	} else {
//		Con_DPrintf("not in leaf!!!");
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

//Con_DPrintf("node: %p ", node);
	if (node->visframe != r_visframecount)
		return;
	if (R_CullBox (node->minmaxs, node->minmaxs+3))
		return;

	if (node->contents < 0)
		return;
// if a leaf node, draw stuff
/*	if (node->contents < 0)
	{
		pleaf = (mleaf_t *)node;

		mark = pleaf->firstmarksurface;
		c = pleaf->nummarksurfaces;

		if (c)
		{
			do
			{
//				if (!R_CullSurface(*mark) || (surf->flags & (SURF_DRAWSKY | SURF_DRAWTURB))) {
					(*mark)->visframe = r_framecount;
//				}
				mark++;
			} while (--c);
		}

	// deal with model fragments in this leaf
		if (pleaf->efrags)
			R_StoreEfrags (&pleaf->efrags);

		return;
	}
*/

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
					R_DrawSequentialPoly (surf);
			}
		}

	}

// recurse down the back side
	R_RecursiveWorldNode (node->children[!side]);
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
	GX_SetColorUpdate(GX_FALSE); // TODO
	GX_SetAlphaUpdate(GX_FALSE); // TODO

	GX_SetViewport(0, 0, 320, 240, 0.0f, 1.0f);
	GX_SetScissor(0, 0, 320, 240);

	GX_SetPixelFmt(GX_PF_Z24, GX_ZC_LINEAR);

}


/*
=============
R_RenderMode_Halfscreen
DRS: Init render mode for flat polys
=============
*/
void R_RenderMode_Halfscreen(void) {
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
	
	GX_SetNumChans(1); // TODO either define 1 tev stage or channel otherwise?
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
qboolean R_DrawPolyFlat(msurface_t *surf) {
	float			*v;
	int			verts;
	u16			left, right, top, bottom;
	u16			cleft, cright, ctop, cbottom;
	
	glpoly_t *p = surf->polys;

	// setup current l
//	GX_ClearBoundingBox(); // DRS TODO better location?
//	GX_ReadBoundingBox(&cleft, &cright, &ctop, &cbottom);
	
	GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT3, p->numverts);
	v = p->verts[0];
	for (verts=0 ; verts<p->numverts ; verts++, v+= VERTEXSIZE) {
		GX_Position3f32(v[0], v[1], v[2]);
	}
	GX_End();
//	GX_PixModeSync();
//	GX_DrawDone();
//	GX_ReadBoundingBox(&left, &right, &top, &bottom);
//Con_DPrintf("%d %d %d %d - ", left, right, top, bottom);
//	if (cleft != left || cright != right || ctop != top || cbottom != bottom) {
		return true;
//	}
//	return false;
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

//	memset (lightmap_polys, 0, sizeof(lightmap_polys));
#ifdef QUAKE2
	R_ClearSkyBox ();
#endif

	// draw surfaces in world and register sky chains
	R_RecursiveWorldNode (cl.worldmodel->nodes);

	// draw sky
	DrawTextureChains ();

#ifdef QUAKE2
	R_DrawSkyBox ();
#endif
}


/*void R_DrawWorld (void)
{
	entity_t	ent;

	// ELUTODO: z-fighting

	memset (&ent, 0, sizeof(ent));
	ent.model = cl.worldmodel;

	VectorCopy (r_refdef.vieworg, modelorg);

	currententity = &ent;
	currenttexture0 = -1;
	currenttexture1 = -1;

//	memset (lightmap_polys, 0, sizeof(lightmap_polys));
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
		if (R_DrawPolyFlat(surf)) {
			// mark it
//			R_RenderDynamicLightmaps (surf); // DRS LET OP HIER!!!!!
			R_MarkVisibleLightsFromSurface(surf); // mark lights
		} else {
			surf->visframe = 0;
//			R_RenderDynamicLightmaps (surf); // DRS LET OP HIER!!!!!
		}

//		R_DrawPolyFlat(surf);
		// mark it
//		R_RenderDynamicLightmaps (surf); // DRS LET OP HIER!!!!!
//		R_MarkVisibleLightsFromSurface(surf); // mark lights

	}
//	GX_DrawDone(); // HELPT NIET??? 
//	DrawTextureChains (); // MOET JUISTE SHADER
 


	// TODO: appearantly this needs te be moved a level up... doors etc are drawn there...
	// DRS shadow volumes
	R_DrawShadowVolumes();
	R_SetDefaultQuakeShader();
	R_RenderMode_Fullscreen();
	
	for (i=0; i<r_numsurfacesinlist; i++) {
		// draw it
		msurface_t *surf = r_surfacelist[i];
		
		if (surf->visframe != r_framecount)
			continue;
		
		R_DrawSequentialPoly(surf);
	}
	DrawTextureChains ();

#ifdef QUAKE2
	R_DrawSkyBox ();
#endif

//	testVolumeMap();
}*/


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


extern dlight_t *r_contributinglights[];

/*
==================
R_PreprocessWorldNodes

Call with clworldmodel->nodes
Creates a front to back sorted list of contributing lights
Marks visible shadowvolumes
Marks visible surfaces
Adds efrags to list
Prerender surfaces flat
Assumes that visible leafs are marked for this frame
==================
*/
void R_PreprocessWorldNodes(mnode_t *node) {
	int 				side, c;
	mplane_t		*plane;
	mleaf_t		*pleaf;
	msurface_t	**mark;
	double			dot;

	if (node->visframe != r_visframecount)
		return;

	if (node->contents == CONTENTS_SOLID || R_CullBox (node->minmaxs, node->minmaxs+3)) {
//		node->visframe--;
		return;		// solid or culled out
	}
	
	// leaf node?
	if (node->contents < 0) {
		pleaf = (mleaf_t *)node;
		// add light and mark shadowdata
		R_PrepareContributingLights(pleaf);
		mark = pleaf->firstmarksurface;
		c = pleaf->nummarksurfaces;

		if (c) {
			do {
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
	R_PreprocessWorldNodes(node->children[side]);

	// recurse down the back side
	R_PreprocessWorldNodes(node->children[!side]);
	
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
	lnumverts = fa->numedges + 2; // DRS +1
	vertpage = 0;

	//
	// draw texture
	//
	poly = Hunk_Alloc (sizeof(glpoly_t) + (lnumverts-4) * VERTEXSIZE*sizeof(float));
	poly->next = fa->polys;
	poly->flags = fa->flags;
	fa->polys = poly;
	poly->numverts = lnumverts;
	vec3_t avg;
	avg[0] = avg[1] = avg[2] = 0;
	for (i=0 ; i<fa->numedges; i++) {
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
		avg[0] += vec[0]; 
		avg[1] += vec[1]; 
		avg[2] += vec[2]; 
//Con_DPrintf("original vertex: %5.1f %5.1f %5.1f\r\n", vec[0], vec[1], vec[2]);			
	}
	avg[0] /= fa->numedges;
	avg[1] /= fa->numedges;
	avg[2] /= fa->numedges;

	for (i=0 ; i<lnumverts ; i++)
	{
		if (i > 0) {
			lindex = currentmodel->surfedges[fa->firstedge + (i - 1) % fa->numedges];
//			lindex = currentmodel->surfedges[fa->firstedge + i ];

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
		} else {
			vec = &avg[0]; 
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
/*		s = DotProduct (vec, fa->texinfo->vecs[0]) + fa->texinfo->vecs[0][3];
		s -= fa->texturemins[0];
		s += fa->light_s*16;
		s += 8;
		s /= BLOCK_WIDTH*16; //fa->texinfo->texture->width;

		t = DotProduct (vec, fa->texinfo->vecs[1]) + fa->texinfo->vecs[1][3];
		t -= fa->texturemins[1];
		t += fa->light_t*16;
		t += 8;
		t /= BLOCK_HEIGHT*16; //fa->texinfo->texture->height;
*/
		poly->verts[i][5] = s;
		poly->verts[i][6] = t;
	}

for (i=0 ; i<lnumverts ; i++) {
//	Con_DPrintf("new vertex: %5.1f %5.1f %5.1f\r\n", poly->verts[i][0], poly->verts[i][1], poly->verts[i][2]);			
	
}
//Con_DPrintf("=======================\r\n");			
	
	//
	// remove co-linear points - Ed
	//
/*	if (!gl_keeptjunctions.value && !(fa->flags & SURF_UNDERWATER) )
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
	}*/
	poly->numverts = lnumverts;

}


/*
==================
GL_BuildSurfaceDisplayLists
Creates gl polys for vertices
==================
*/
void GL_BuildSurfaceDisplayLists(void)
{
	int		i, j;
	model_t	*m;

	r_framecount = 1;		// no dlightcache

	for (j=1 ; j<MAX_MODELS ; j++)	{
		m = cl.model_precache[j];
		if (!m)
			break;
		if (m->name[0] == '*')
			continue;
		r_pcurrentvertbase = m->vertexes;
		currentmodel = m;
		for (i=0 ; i<m->numsurfaces ; i++) {
			if ( m->surfaces[i].flags & SURF_DRAWTURB )
				continue;
#ifndef QUAKE2
			if ( m->surfaces[i].flags & SURF_DRAWSKY )
				continue;
#endif
			BuildSurfaceDisplayList (m->surfaces + i);
		}
	}

}

