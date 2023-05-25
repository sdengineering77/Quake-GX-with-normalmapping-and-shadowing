/*
Copyright (C) 2009 DRS

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

#include "../../generic/quakedef.h"
#include <gx.h>

// ============= HARDWARE SPECIFIC LIGHTING STUFF ==========
// DRS: used for distance attenuation (shadowing TODO)
GXColor cl_hw_lightcolors[] = {
        { 0xFF, 0xFF, 0xFF, 0xFF }, // Light color 1
        { 0x00, 0x00, 0x00, 0x00 }, // Ambient 1
        { 0xFF, 0xFF, 0xFF, 0xFF }  // Material 1
};

// DRS: see if surface shader requires colors... used for distance attenuation (shadowing TODO)
GXColor cl_hw_aliaslightcolors[] = {
        { 0x7F, 0x00, 0x00, 0x7F }, // Light color 1
        { 0x80, 0x00, 0x00, 0x80 }, // Ambient 1
        { 0xFF, 0xFF, 0xFF, 0xFF }  // Material 1
};


// DRS: array of projected lights
GXLightObj	cl_hwlight_obj[MAX_HWLIGHTS];


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


// DRS: TODO should be done through quake's texture system
// perhaps right place for shading in general
extern gltexture_t 	r_stencilTextures[]; // DRS TODO: move
extern dlight_t			*r_contributinglights[];
extern int					r_contributinglightscount;

extern GXTexObj 	normalmap;
extern GXTexObj 	lightmap;
extern GXTexObj 	specularmap;
extern GXTexObj 	attenuatedshadesmap;
extern GXTexObj 	lightattnmap;
extern GXTexObj 	watermap;
extern GXTexObj 	divmap;
extern int 				r_numstencilTextures; // DRS remove
extern u16 				*glwatermap;

// speed up sin calculations - Ed
extern float	turbsin[];
#define TURBSCALE (256.0 / (2 * M_PI))


/**
=============================================================

	DRS: SHADERS

	GX_VTXFMT2 must be selected
=============================================================
*/


int stage_none, tex_none;
int stage_enablelight, tex_enablelight;
int stage_enablediffuse, tex_enablediffuse;
int stage_enablespecular, tex_enablespecular;
int stage_enablestencil, tex_enablestencil;

/*
============
MatrixAffineInverse
============
*/
void MatrixAffineInverse(Mtx m, Mtx result) {
	float Tx, Ty, Tz;

	// The rotational part of the matrix is simply the transpose of the
	// original matrix.
	result[0][0] = m[0][0];
	result[0][1] = m[1][0];
	result[0][2] = m[2][0];

	result[1][0] = m[0][1];
	result[1][1] = m[1][1];
	result[1][2] = m[2][1];

	result[2][0] = m[0][2];
	result[2][1] = m[1][2];
	result[2][2] = m[2][2];

	// The right column vector of the matrix should always be [ 0 0 0 1 ]
	// In most cases. . . you don't need this column at all because it'll 
	// never be used in the program, but since this code is used with GL
	// and it does consider this column, it is here.
	result[3][0] = result[3][1] = result[3][2] = 0;
	result[3][3] = 1;

	// The translation components of the original matrix.
	Tx = m[0][3];
	Ty = m[1][3];
	Tz = m[2][3];

	// Rresult = -(Tm * Rm) to get the translation part of the inverse
	result[0][3] = -( m[0][0] * Tx + m[1][0] * Ty + m[2][0] * Tz );
	result[1][3] = -( m[0][1] * Tx + m[1][1] * Ty + m[2][1] * Tz );
	result[2][3] = -( m[0][2] * Tx + m[1][2] * Ty + m[2][2] * Tz );
}


/*
=============================
R_SetupBrushModelLightShader
Shader for surfaces
=============================
*/
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
	// text  coord 2 and 3 render light attenuation
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
	//	{{-2.0f/STENCIL_WIDTH,		0.0f,									0.5f,	    0.0f},
	//	 { 0.0f,									2.0f/STENCIL_HEIGHT,	0.5f,		0.0f},
	//	 { 0.0f,									0.0f,	    							1.0f,		0.0f}};
		{{-0.37665,		0.0f,			0.5f,	    0.0f},
		 { 0.0f,				2.0f/3.0f,	0.5f,		0.0f},
		 { 0.0f,				0.0f,	    	1.0f,		0.0f}};
	// 0.35010376910485488972926135972242 // 	-0.37665
	
	GX_LoadTexMtxImm(dttStencilScale, GX_DTTMTX2, GX_MTX3x4);
	//Mtx mvperspective;
	//guMtxTransApply(modelview, mvperspective, 0, 0, -4.0f);
	//guMtxConcat(modelview, perspective, mvperspective);
	
	GX_LoadTexMtxImm(modelview, GX_TEXMTX2, GX_MTX3x4);
	//GX_LoadTexMtxImm(mvperspective, GX_TEXMTX2, GX_MTX3x4);

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
	GX_SetTevDirect(tevstage);
	GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_ONE, GX_CC_TEXC, GX_CC_C1);
	GX_SetTevColorOp(tevstage, GX_TEV_SUB, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
	GX_SetTevOrder(tevstage, GX_TEXCOORD2, GX_TEXMAP2, GX_COLORNULL);
	tevstage++;
	// 2) attenuation Z (result of XYZ is stored in REG0)
	GX_SetTevDirect(tevstage);
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
	GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO); 
	GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
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
	GX_SetTevDirect(tevstage);
	GX_SetTevColorIn(tevstage, GX_CC_TEXC, GX_CC_ZERO, GX_CC_CPREV, GX_CC_ZERO);
	GX_SetTevColorOp(tevstage, GX_TEV_COMP_RGB8_EQ, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
	GX_SetTevOrder(tevstage, GX_TEXCOORD4, GX_TEXMAP6, GX_COLORNULL);
	tevstage++;
	stage_enablestencil = tevstage;

	
}


/*
=============================
R_SetBrushModelLightShaderData
Note shader doesn't support any scaling in model matrix since
lightpos is inverse transformed to surface tangent space which is
assumed to be faster than performing model concatenation on both  
the light mtx and normals mtx
=============================
*/
void R_SetBrushModelLightShaderData(Mtx normals, dlight_t *currLight) {
	int tevstage = stage_none; 
	int num_texgen = tex_none;
	if (currLight) {
		Mtx modelinv;
		float fullRad = currLight->radius;
		float halfRad = 0.5f * fullRad;
		
		
		// quake lightstyle
		float fstyle = ((float)d_lightstylevalue[currLight->style]) / 512.0f;
		if (fstyle > 1.0f) {
			fstyle = 1.0f;
		}

		byte intensity = fstyle * 255;
		GXColor col = {intensity, intensity, intensity, intensity};
		GX_SetTevColor(GX_TEVREG1, col);

		tevstage = stage_enablespecular; 
		num_texgen = tex_enablespecular;

		// attenuation lightpos vertex texmtx0
		Vector lpos;
		// lpos is supposed to be in surface tangent space
		guMtxInverse(model, modelinv);
		//MatrixAffineInverse(model, modelinv);
		guVecMultiply(modelinv, (Vector *) &currLight->origin[0], &lpos);
		Mtx lightMtx = 
				{{ 1.0f,  0.0f,  0.0f,  -lpos.x},
				 { 0.0f,  1.0f,  0.0f,  -lpos.y},
				 { 0.0f,  0.0f,  1.0f,  -lpos.z}};
//				{{ model[0][0],  model[0][1],  model[0][2],  model[0][3] - lpos.x},
//				 { model[1][0],  model[1][1],  model[1][2],  model[1][3] - lpos.y},
//				 { model[2][0],  model[2][1],  model[2][2],  model[2][3] - lpos.z}};
//		guMtxConcat(lightMtx, model, lightMtx); 
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
		// per pixel diffuse bumpmapping
		Mtx dttMtx;
		Mtx dttOffsets = 
			{{	    1.0f,		0.0f,		0.5f * 64.0f,		0.0f},
			 { 		0.0f,	    1.0f,		0.5f * 64.0f,		0.0f},
			 { 		0.0f,		0.0f,		64.0f,		0.0f}};
		// transform normals to worldspace	 
//		guMtxConcat(model, normals, tmp);
//		guMtxConcat(dttOffsets, tmp, dttMtx);
		// normals keep untransformed
		guMtxConcat(dttOffsets, normals, dttMtx);
			 
		GX_LoadTexMtxImm(dttMtx, GX_DTTMTX3, GX_MTX3x4);


		// stencil 
		if (currLight->stenciltexnum>-1) {
			// GX_TEXMAP5 stencil tex
			GX_LoadTexObj(&r_stencilTextures[currLight->stenciltexnum].gx_tex, GX_TEXMAP6);		

			// 5) stencil operation
			GX_SetTevDirect(tevstage);
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
		GXColor col = {0x00, 0x00, 0x00, 0x00};
		GX_SetTevColor(GX_TEVREG1, col);
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


/*
=============================
R_DrawSurfacePolyBumpShadow
Draws a surface
Note: Shader doesn't support scaling in model matrix!
=============================
*/
GXColor fc_water = {6, 24, 12, 32};
GXColor fc_slime = {0, 25, 5, 32};
GXColor fc_lava = {64, 16, 0, 255};
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

	// fog
	if (surf->flags & SURF_UNDERWATER) {
		GXColor *col;
		if (surf->flags & SURF_UNDERSLIME) {
			col = &fc_slime;
 		} else
		if (surf->flags & SURF_UNDERLAVA) {
			col = &fc_lava;
		} else  {
			col = &fc_water;
		}
		
		GX_SetFog(GX_FOG_PERSP_EXP, 32, 1024, ZMIN3D, ZMAX3D, *col);	
	}

	// setup lights
	R_SetupBrushModelLightShader(modelview);

//GX_SetGPMetric(GX_PERF0_AVG_QUAD_CNT, GX_PERF1_TEXELS);
//GX_ClearGPMetric();
	GX_SetBlendMode(GX_BM_NONE, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	
	GX_SetZMode(GX_ENABLE, GX_LEQUAL, GX_TRUE);
	
	if (surf->numstaticlights) {
		// surface shader
		// DRS move to shader setup
		i = 0;
		msurfacelight_t *lightdata = &surf->lightdata[0];
		for(i=0; i<surf->numstaticlights; i++) {
			int verts;
			float s, t;
			dlight_t*	currLight = lightdata[i].light;

			R_SetBrushModelLightShaderData(normals, currLight);
			// setup current l
			GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT2, p->numverts);
			v = p->verts[0];
			
			for (verts=0 ; verts<p->numverts ; verts++, v+= VERTEXSIZE) {
				if (surf->flags & SURF_UNDERWATER) {
					s = v[3] + 0.0008f*turbsin[(int)((v[1]*0.05f+realtime) * TURBSCALE) & 255]*turbsin[(int)((v[2]*0.05f+realtime) * TURBSCALE) & 255];
					t = v[4] + 0.0008f*turbsin[(int)((v[0]*0.05f+realtime) * TURBSCALE) & 255]*turbsin[(int)((v[2]*0.05f+realtime) * TURBSCALE) & 255];
					//s = v[3] + 0.025*sin(v[3]*0.05+realtime)*sin(v[2]*0.05+realtime);
					//t = v[4] + 0.025*sin(v[4]*0.05+realtime)*sin(v[2]*0.05+realtime);
				} else {
					s = v[3];
					t = v[4];
				}
				GX_Position3f32(        v[0],         v[1],         v[2]);
				GX_Normal3f32  (   normal[0],    normal[1],    normal[2]);
				GX_Normal3f32  (bitangent[0], bitangent[1], bitangent[2]);
				GX_Normal3f32  (  tangent[0],   tangent[1],   tangent[2]);
				GX_TexCoord2f32(        s,         t);
			}
			GX_End();
			if (!i) {
				GX_SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ONE, GX_LO_COPY);	
				GX_SetFog(GX_FOG_NONE, ZMIN3D, ZMAX3D, 0.1f, 1.0f, cl_hw_lightcolors[1]);	
			}

		}
		
	
	} else {
		R_SetBrushModelLightShaderData(normals, NULL);
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
		GX_SetFog(GX_FOG_NONE, ZMIN3D, ZMAX3D, 0.1f, 1.0f, cl_hw_lightcolors[1]);	
		
	}

//int p0, p1;
//static int show;
//if ((show++)%25) {
//GX_ReadGPMetric(&p0, &p1);

//Con_DPrintf("0)%i 1)%i - ", p0, p1);	
//}
	// obvious for now
	R_SetDefaultQuakeShader();

}



/*
=============================
R_SetupFluidLightShader
Shader for fluid surfaces
=============================
*/
void R_SetupFluidLightShader(Mtx modelview) {
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
	
	GX_LoadTexObj(&watermap, GX_TEXMAP1); 
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
	// text  coord 2 and 3 render light attenuation
	GX_SetTexCoordGen2(GX_TEXCOORD2, GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX0, GX_FALSE, GX_DTTMTX0); // attenuation XY
	texgen++;
	GX_SetTexCoordGen2(GX_TEXCOORD3, GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX0, GX_FALSE, GX_DTTMTX1); // attenuation Z 
	texgen++;
	tex_enablelight =  texgen;

	// tex coord 4 renders stencil if available  (TODO: remove or use)
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

	// stencil: texmtx2 dttmtx2 (TODO: remove or use)
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
	GX_SetTevDirect(tevstage);
	GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_ONE, GX_CC_TEXC, GX_CC_C1);
	GX_SetTevColorOp(tevstage, GX_TEV_SUB, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
	GX_SetTevOrder(tevstage, GX_TEXCOORD2, GX_TEXMAP2, GX_COLORNULL);
	tevstage++;
	// 2) attenuation Z (result of XYZ is stored in REG0)
	GX_SetTevDirect(tevstage);
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
	GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO);
	GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
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

	GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_HALF, GX_CC_C0, GX_CC_ZERO); // !!!! check nog ff tevprev 
//	GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_C0, GX_CC_ZERO); // !!!! check nog ff tevprev 
//	GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
	GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_DIVIDE_2, GX_TRUE, GX_TEVPREV);
//	GX_SetTevOrder(tevstage, GX_TEXCOORD5, GX_TEXMAP4, GX_COLORNULL);
	GX_SetTevOrder(tevstage, GX_TEXCOORD5, GX_TEXMAP_DISABLE, GX_COLORNULL); // 0,0  coordinate + lightdir
	tevstage++;
	stage_enablediffuse = tevstage;

	// 5) specular bump mapping
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
	GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_2, GX_TRUE, GX_TEVPREV);
	GX_SetTevOrder(tevstage, GX_TEXCOORD7, GX_TEXMAP5, GX_COLORNULL);
	tevstage++;

	// 4) setup the next stage for modulating light intensity with quake texmap
	GX_SetTevDirect(tevstage);
	GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_CPREV, GX_CC_ZERO);
//	GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_C0, GX_CC_CPREV);
	GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_2, GX_TRUE, GX_TEVPREV); // scale *2 for bright colours
	GX_SetTevOrder(tevstage, GX_TEXCOORD0, GX_TEXMAP0, GX_COLORNULL);
	tevstage++;


	stage_enablespecular = tevstage;

	// 6) stencil operation  (TODO: remove or use)
	//GX_SetTevColorIn(tevstage, GX_CC_TEXC, GX_CC_ZERO, GX_CC_CPREV, GX_CC_ZERO);
	//GX_SetTevColorOp(tevstage, GX_TEV_COMP_RGB8_EQ, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
	//GX_SetTevOrder(tevstage, GX_TEXCOORD4, GX_TEXMAP6, GX_COLORNULL);
	//tevstage++;
	stage_enablestencil = tevstage;

}


/*
=============================
R_SetFluidLightShaderData
Note shader doesn't support any scaling in model matrix since
lightpos is inverse transformed to surface tangent space which is
assumed to be faster than performing model concatenation on both  
the light mtx and normals mtx
=============================
*/
void R_SetFluidLightShaderData(Mtx normals, dlight_t *currLight) {
	int tevstage = stage_none; 
	int num_texgen = tex_none;
	if (currLight) {
		Mtx modelinv;
		float fullRad = currLight->radius;
		float halfRad = 0.5f * fullRad;
		
		
		// quake lightstyle
		float fstyle = ((float)d_lightstylevalue[currLight->style]) / 512.0f;
		if (fstyle > 1.0f) {
			fstyle = 1.0f;
		}

		byte intensity = fstyle * 255;
		GXColor col = {intensity, intensity, intensity, intensity};
		GX_SetTevColor(GX_TEVREG1, col);

		tevstage = stage_enablespecular; 
		num_texgen = tex_enablespecular;

		// attenuation lightpos vertex texmtx0
		Vector lpos;
		lpos.x = currLight->origin[0];
		lpos.y = currLight->origin[1];
		lpos.z = currLight->origin[2];

		// lpos is supposed to be in surface tangent space
		guMtxInverse(model, modelinv);
		guVecMultiply(modelinv, &lpos, &lpos);
		Mtx lightMtx = 
				{{ 1.0f,  0.0f,  0.0f,  -lpos.x},
				 { 0.0f,  1.0f,  0.0f,  -lpos.y},
				 { 0.0f,  0.0f,  1.0f,  -lpos.z}};
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
		// per pixel diffuse bumpmapping
		Mtx dttMtx;
		Mtx dttOffsets = 
			{{	    1.0f,		0.0f,		0.5f * 64.0f,		0.0f},
			 { 		0.0f,	    1.0f,		0.5f * 64.0f,		0.0f},
			 { 		0.0f,		0.0f,		64.0f,		0.0f}};
		// normals keep untransformed
		guMtxConcat(dttOffsets, normals, dttMtx);
			 
		GX_LoadTexMtxImm(dttMtx, GX_DTTMTX3, GX_MTX3x4);


		// stencil (TODO: use or remove)
		/*if (currLight->stenciltexnum>-1) {
			// GX_TEXMAP5 stencil tex
			GX_LoadTexObj(&r_stencilTextures[currLight->stenciltexnum].gx_tex, GX_TEXMAP6);		

			// 6) stencil operation
			GX_SetTevDirect(tevstage);
			GX_SetTevColorIn(tevstage, GX_CC_TEXC, GX_CC_ZERO, GX_CC_CPREV, GX_CC_ZERO);
			GX_SetTevColorOp(tevstage, GX_TEV_COMP_RGB8_EQ, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
			GX_SetTevOrder(tevstage, GX_TEXCOORD4, GX_TEXMAP6, GX_COLORNULL);

			tevstage = stage_enablestencil;
			num_texgen = tex_enablestencil;
		}*/

	} else {
		GXColor col = {0x00, 0x00, 0x00, 0x00};
		GX_SetTevColor(GX_TEVREG1, col);
		tevstage++;
	}
	
	//set number of textures to generate
	GX_SetNumTexGens(num_texgen);
	GX_SetNumTevStages(tevstage);
		 

}



/*
=============================
R_DrawFluidPolyBumpShadow
Draws a surface
Note: Shader doesn't support scaling in model matrix!
=============================
*/
void R_DrawFluidPolyBumpShadow(msurface_t *surf) {
	glpoly_t	*p;
	float			*v;
	int			i;
	vec3_t 		normal;
	vec3_t 		tangent;
	vec3_t 		bitangent;
	
	//p = surf->polys;

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
	R_SetupFluidLightShader(modelview);
	GX_SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ONE, GX_LO_COPY);	
//		GX_SetBlendMode(GX_BM_NONE, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	
	GX_SetZMode(GX_ENABLE, GX_LEQUAL, GX_FALSE);
	
	if (surf->numstaticlights) {
		// surface shader
		// DRS move to shader setup
		i = 0;
		msurfacelight_t *lightdata = &surf->lightdata[0];
		for(i=0; i<surf->numstaticlights; i++) {
			int verts;
			dlight_t*	currLight = lightdata[i].light;

			// setup current l
			R_SetFluidLightShaderData(normals, currLight);
			for (p=surf->polys ; p ; p=p->next) {
				GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT2, p->numverts);
				v = p->verts[0];
				
				for (verts=0 ; verts<p->numverts ; verts++, v+= VERTEXSIZE) {
					float os = v[3];
					float ot = v[4];

					float s = os + turbsin[(int)((ot*0.125+realtime) * TURBSCALE) & 255];
					s *= (1.0/64);

					float t = ot + turbsin[(int)((os*0.125+realtime) * TURBSCALE) & 255];
					t *= (1.0/64);

					GX_Position3f32(        v[0],         v[1],         v[2]);
					GX_Normal3f32  (   normal[0],    normal[1],    normal[2]);
					GX_Normal3f32  (bitangent[0], bitangent[1], bitangent[2]);
					GX_Normal3f32  (  tangent[0],   tangent[1],   tangent[2]);
					GX_TexCoord2f32(        s,         t);
				}
				GX_End();
//				if (!i)
//					GX_SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ONE, GX_LO_COPY);	
			}
		}
		
	
	} else {
		R_SetFluidLightShaderData(normals, NULL);
		int verts;

		for (p=surf->polys ; p ; p=p->next) {
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
	}

	// obvious for now
	R_SetDefaultQuakeShader();

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
R_DrawSurfacePolyFlat
DRS: basically used for zbuffer prerendering
=============
*/
void R_DrawSurfacePolyFlat(msurface_t *surf) {
	float			*v;
	int			verts;
	glpoly_t *p = surf->polys;

	GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT3, p->numverts);
	v = p->verts[0];
	for (verts=0 ; verts<p->numverts ; verts++, v+= VERTEXSIZE) {
		GX_Position3f32(v[0], v[1], v[2]);
	}
	GX_End();
}


/*
=============
GL_PreprocessAliasFrame
=============
*/
void GL_DrawAliasFrameFlat (aliashdr_t *paliashdr, int posenum) {
	
	mtrivertx_t	*verts, *v;
	mvertxref_t *vertxrefs;	
	int		*order;
	int		count;

	// get vertex index pointer list
	vertxrefs	=	(mvertxref_t *) ((byte *)paliashdr + paliashdr->vertxrefdata);
	// get raw vertices
	verts 		=	(mtrivertx_t *)((byte *)paliashdr + paliashdr->vertxdata);
	verts 		+= posenum * paliashdr->numverts;
	order 		=	(int *)((byte *)paliashdr + paliashdr->commands);

	while (1) {
		// get the vertex count and primitive type
		count = *order++;
		if (!count)
			break;		// done
		if (count < 0) {
			count = -count;
			GX_Begin (GX_TRIANGLEFAN, GX_VTXFMT3, count);
		} else {
			GX_Begin (GX_TRIANGLESTRIP, GX_VTXFMT3, count);
		}
		do {
			v = &verts[vertxrefs->vertindex];
			GX_Position3f32(v->xyz[0], v->xyz[1], v->xyz[2]);
			
			order += 2;
			vertxrefs++;//verts++;
		} while (--count);

		GX_End ();
	}
}


/*
==========================
R_SetupAliasModelLightShader
Setup shader for alias drawing
==========================
*/
void R_SetupAliasModelLightShader() {
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
	GX_LoadTexObj(&divmap, GX_TEXMAP7); // div map

	// ===== TEXTURE COORDINATE SHADER ======

	// Cam at 0, 0, 0 eye space
	GXLightObj camlightobj;
	GX_InitLightPos(&camlightobj, 0.0f, 0.0f, 0.0f);
	GX_InitLightColor(&camlightobj, cl_hw_lightcolors[1]);
	GX_LoadLightObj(&camlightobj, GX_LIGHT7); // for reflections
	
	stage_none = tevstage; 
	tex_none	= texgen;
	
	// texcoord1 normal map
	//GX_SetTexCoordGen(GX_TEXCOORD1, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY); 
	//texgen++;
	// text  coord 1 and 2 render light attenuation
	GX_SetTexCoordGen2(GX_TEXCOORD1, GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX0, GX_FALSE, GX_DTTMTX0); // attenuation XY
	texgen++;
	GX_SetTexCoordGen2(GX_TEXCOORD2, GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX0, GX_FALSE, GX_DTTMTX1); // attenuation Z 
	texgen++;
	tex_enablelight =  texgen;

	// tex coord 3 renders stencil if available
	GX_SetTexCoordGen2(GX_TEXCOORD3, GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX2, GX_FALSE, GX_DTTMTX2); // stencil
	texgen++;
	
	// texcoord4 -> 0, 0 coordinate
	GX_SetTexCoordGen(GX_TEXCOORD4, GX_TG_MTX2x4, GX_TG_TEX0, GX_TEXMTX1); 
	texgen++;

	// tex coord 5 renders the bump offset for current hw light
	GX_SetTexCoordGen(GX_TEXCOORD5, GX_TG_BUMP0, GX_TG_TEXCOORD4, GX_IDENTITY);
//	GX_SetTexCoordGen(GX_TEXCOORD5, GX_TG_MTX2x4, GX_TG_TEX0, GX_TEXMTX1);
	texgen++;
	tex_enablediffuse = texgen;
	
	// text coord 6 renders the bump offset related to camera position for specular
	GX_SetTexCoordGen(GX_TEXCOORD6, GX_TG_BUMP7, GX_TG_TEXCOORD4, GX_IDENTITY);
	texgen++;
	// text coord 7 renders the bump offset related to camera position for specular
	GX_SetTexCoordGen(GX_TEXCOORD7, GX_TG_SRTG, GX_TG_COLOR0, GX_IDENTITY);
	texgen++;

	tex_enablespecular = texgen;
	tex_enablestencil = texgen; // TODO: is this for a reason or move to coord3?

	
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
	GX_SetIndTexOrder(GX_INDTEXSTAGE0, GX_TEXCOORD0, GX_TEXMAP1);
	GX_SetIndTexCoordScale(GX_INDTEXSTAGE0, GX_ITS_1, GX_ITS_1); // normal map texture scale 1:1
	GX_SetIndTexOrder(GX_INDTEXSTAGE1, GX_TEXCOORD5, GX_TEXMAP4);
	GX_SetIndTexCoordScale(GX_INDTEXSTAGE1, GX_ITS_1, GX_ITS_1); // normal map texture scale 1:1
	
	// setup indirect unit for tev stage 0 (for some reason I get a ABGR triplet, so transforms are done on normal map's B and G components)
	f32 offset_mtx1[2][3] = {
		{  0.0f, -0.125f,    0.0f}, // B -> horizontal coordinate (s)
		{  0.0f,    0.0f, -0.125f}  // G -> vertical coordinate (t)
//		{  0.0f,    0.0f,    0.0f}, // B -> horizontal coordinate (s)
//		{  0.0f,    0.0f,    0.0f}  // G -> vertical coordinate (t)
	};
	f32 offset_mtx2[2][3] = {
		{  0.0f,    0.0f,    0.0f}, // B -> horizontal coordinate (s)
		{  0.125f,    0.0f,    0.0f}  // G -> vertical coordinate (t)
	};
	
	GX_SetNumIndStages(2);
	GX_SetIndTexMatrix(GX_ITM_0, offset_mtx1, 0);
	GX_SetIndTexMatrix(GX_ITM_1, offset_mtx2, 0);

// 0) RASC (light dot product 1.0f when lit or 0.0f when unlit)
//GX_SetTevColorIn(tevstage, GX_CC_RASC, GX_CC_ZERO, GX_CC_C1, GX_CC_ZERO);
//GX_SetTevColorOp(tevstage, GX_TEV_COMP_RGB8_GT, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
//GX_SetTevOrder(tevstage, GX_TEXCOORDNULL, GX_TEXMAP_DISABLE, GX_COLOR0A0);
//tevstage++;
	// 1) attenuation XY + RASC (light dot product 1.0f when lit or 0.0f when unlit)
	GX_SetTevDirect(tevstage);	
	GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_ONE, GX_CC_TEXC, GX_CC_C1);
//GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_ONE, GX_CC_TEXC, GX_CC_CPREV);
	GX_SetTevColorOp(tevstage, GX_TEV_SUB, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
	GX_SetTevOrder(tevstage, GX_TEXCOORD1, GX_TEXMAP2, GX_COLOR0A0);
//GX_SetTevOrder(tevstage, GX_TEXCOORD1, GX_TEXMAP2, GX_COLORNULL);
	tevstage++;
	// 2) attenuation Z (result of XYZ is stored in REG0)
	GX_SetTevDirect(tevstage);	
	GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_ONE, GX_CC_TEXC, GX_CC_CPREV);
	GX_SetTevColorOp(tevstage, GX_TEV_SUB, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG0);
	GX_SetTevOrder(tevstage, GX_TEXCOORD2, GX_TEXMAP2, GX_COLORNULL);
	tevstage++;
	stage_enablelight = tevstage;
	
	// 3.1) advanced backface detection 
	GX_SetTevIndirect(
		tevstage, // tevstage 0 is used to combine normal map and lightmap
		GX_INDTEXSTAGE1, // ind stage is used to read normal map
		GX_ITF_8, // texture format 8 bits per channel
		GX_ITB_NONE, // no bias
		GX_ITM_1, // use 3x2 matrix 0
		GX_ITW_OFF, // do not use texture wrapping
		GX_ITW_0, // do not use texture wrapping
		GX_FALSE, // don't add in previous coordinates
		GX_FALSE, // don't use mipmap stuff
		GX_ITBA_OFF // don't use bump alpha (TODO: can this be used to blend reflection and difuse?)
		); 

	GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_C0, GX_CC_TEXC, GX_CC_ZERO); 
	GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG0);
	GX_SetTevOrder(tevstage, GX_TEXCOORD7, GX_TEXMAP7, GX_COLORNULL);
	tevstage++;
	
	// 3) diffuse bump mapping
	GX_SetTevIndirect(
		tevstage, // tevstage 0 is used to combine normal map and lightmap
		GX_INDTEXSTAGE0, // ind stage is used to read normal map
		GX_ITF_8, // texture format 8 bits per channel
		GX_ITB_STU, // use bias on s and t channels (red and green and blue)
		GX_ITM_0, // use 3x2 matrix 0
		GX_ITW_OFF, // do not use texture wrapping
		GX_ITW_OFF, // do not use texture wrapping
		GX_FALSE, // don't in previous coordinates
		GX_FALSE, // don't use mipmap stuff
		GX_ITBA_OFF // don't use bump alpha
		); 

	GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_C0, GX_CC_ZERO);
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
	GX_SetTevOrder(tevstage, GX_TEXCOORD6, GX_TEXMAP5, GX_COLORNULL);
	tevstage++;
	stage_enablespecular = tevstage;

	// 5) stencil operation
	GX_SetTevColorIn(tevstage, GX_CC_TEXC, GX_CC_ZERO, GX_CC_CPREV, GX_CC_ZERO);
	GX_SetTevColorOp(tevstage, GX_TEV_COMP_RGB8_EQ, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
	GX_SetTevOrder(tevstage, GX_TEXCOORD3, GX_TEXMAP6, GX_COLORNULL);
	tevstage++;
	stage_enablestencil = tevstage;

	
}

/*
==========================
R_SetAliasModelLightShaderData
==========================
*/
void R_SetAliasModelLightShaderData(dlight_t *currLight) {
	int tevstage = stage_none; 
	int num_texgen = tex_none;
	if (currLight) {
		float fullRad = currLight->radius;
		float halfRad = 0.5f * fullRad;
		
		
		// quake lightstyle
		float fstyle = ((float)d_lightstylevalue[currLight->style]) / 512.0f;
		if (fstyle > 1.0f) {
			fstyle = 1.0f;
		}

		byte intensity = fstyle * 255;
		GXColor col = {intensity, intensity, intensity, intensity};

// remove???
GX_SetTevColor(GX_TEVREG1, col);


		tevstage = stage_enablespecular; 
		num_texgen = tex_enablespecular;

		// attenuation lightpos vertex texmtx0
		Vector lpos;
		lpos.x = currLight->origin[0];
		lpos.y = currLight->origin[1];
		lpos.z = currLight->origin[2];
		Mtx lightMtx = 
				{{ 1.0f,  0.0f,  0.0f,  -lpos.x},
				 { 0.0f,  1.0f,  0.0f,  -lpos.y},
				 { 0.0f,  0.0f,  1.0f,  -lpos.z}};
		// modelspacePOS -> worldspacePOS -> worldspacePOS - worldspaceLightPos
		guMtxConcat(lightMtx, model, lightMtx); 
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

		// bumpmapping and cosine on-off attenuation
		// rotate light to view
		guVecMultiply(view, &lpos, &lpos);
		GX_InitLightPos(&cl_hwlight_obj[0], lpos.x, lpos.y, lpos.z);

GX_InitLightColor(&cl_hwlight_obj[0], cl_hw_aliaslightcolors[0]);
//GX_InitLightColor(&cl_hwlight_obj[0], cl_hw_lightcolors[0]);

		GX_InitLightDir(&cl_hwlight_obj[0], 0.0f, 0.0f, 1.0f); // doesn't really matter what direction		
		GX_InitLightAttnA(&cl_hwlight_obj[0], 1.0f, 0.0f, 0.0f);
		GX_InitLightAttnK(&cl_hwlight_obj[0], 1.0f, 0.0f, 0.0f);
		GX_LoadLightObj(&cl_hwlight_obj[0], GX_LIGHT0);
		GX_SetNumChans(1);
//GX_SetChanCtrl(GX_COLOR0, GX_ENABLE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT0, GX_DF_CLAMP, GX_AF_SPOT);
//GX_SetChanCtrl(GX_ALPHA0, GX_ENABLE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT0, GX_DF_CLAMP, GX_AF_SPOT);
GX_SetChanCtrl(GX_COLOR0, GX_ENABLE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT0, GX_DF_SIGNED, GX_AF_SPOT);
GX_SetChanCtrl(GX_ALPHA0, GX_ENABLE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT0, GX_DF_SIGNED, GX_AF_SPOT);
		GX_SetChanAmbColor(GX_COLOR0A0, cl_hw_aliaslightcolors[1]);
		GX_SetChanMatColor(GX_COLOR0A0, cl_hw_aliaslightcolors[2]);
		
		// stencil 
		if (currLight->stenciltexnum>-1) {
			// GX_TEXMAP5 stencil tex
			GX_LoadTexObj(&r_stencilTextures[currLight->stenciltexnum].gx_tex, GX_TEXMAP6);		

			// 5) stencil operation
			GX_SetTevDirect(tevstage);
			GX_SetTevColorIn(tevstage, GX_CC_TEXC, GX_CC_ZERO, GX_CC_CPREV, GX_CC_ZERO);
			GX_SetTevColorOp(tevstage, GX_TEV_COMP_RGB8_EQ, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
			GX_SetTevOrder(tevstage, GX_TEXCOORD3, GX_TEXMAP6, GX_COLORNULL);

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
		//GX_SetNumChans(1);
		//GX_SetChanCtrl(GX_COLOR0, GX_DISABLE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT0, GX_DF_CLAMP, GX_AF_NONE);
		//GX_SetChanCtrl(GX_ALPHA0, GX_DISABLE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT0, GX_DF_CLAMP, GX_AF_NONE);
		//GX_SetChanAmbColor(GX_COLOR0A0, cl_hw_lightcolors[1]);
		//GX_SetChanMatColor(GX_COLOR0A0, cl_hw_lightcolors[1]);
		GXColor col = {0x00, 0x00, 0x00, 0x00};
		GX_SetTevColor(GX_TEVREG1, col);
		tevstage++;
	}
	
	//set number of textures to generate
	GX_SetNumTexGens(num_texgen);
	GX_SetNumTevStages(tevstage);
		 

}



/*
=============
GL_DrawStripCommand
=============
*/
/*void GL_DrawStripCommand(int count, mtrivertx_t *verts, int *order, mplanenbt_t *nbts) {
	int 			i, j;
	Vector 		fverts[3];
	Vector 		n, b, t;
	float			texst[3][2];

	count -= 2;
	for(i=0; i<count; i++, verts++, nbts++, order += 2) {
		// check if triangle faces the model lightpos
		// yes, create and add the volume
		// bit 0 = 0 -> clockwise
		// bit 0 = 1 -> counterclockwise
		if (i & 0x01) {
			// ccw
			for(j=0; j<3; j++) {
				GL_TrivertxToF32(&verts[j], &fverts[2-j]);
				texst[2-j][0] = ((float *)order)[0 + 2 * j];
				texst[2-j][1] = ((float *)order)[1 + 2 * j];
			}
		}  else {
			// cw
			for(j=0; j<3; j++) {
				GL_TrivertxToF32(&verts[j], &fverts[j]);
				texst[j][0] = ((float *)order)[0 + 2 * j];
				texst[j][1] = ((float *)order)[1 + 2 * j];
			}
		}
		
		// normals from nbt list
		GL_VecS8ToF32(&nbts->normal[0], &n);
		GL_VecS8ToF32(&nbts->bitangent[0], &b);
		GL_VecS8ToF32(&nbts->tangent[0], &t);
		guVecScale(&b, &b, 0.125f);
		guVecScale(&t, &t, 0.125f);
		GX_Begin (GX_TRIANGLES, GX_VTXFMT2, 3);
		for(j=0; j<3; j++) {
			GX_Position3f32(fverts[j].x, fverts[j].y, fverts[j].z);
			GX_Normal3f32  (n.x,	n.y,	n.z);
			GX_Normal3f32  (b.x,	b.y,	b.z);
			GX_Normal3f32  (t.x,	t.y,	t.z);
			// texture coordinates come from the draw list
			GX_TexCoord2f32(texst[j][0], texst[j][1]);
		}
		GX_End();
	}
}*/


/*
=============
GL_DrawFanCommand
=============
*/
/*void GL_DrawFanCommand(int count, mtrivertx_t *verts, int *order, mplanenbt_t *nbts) {
	int 			i, j;
	Vector 		fverts[3];
	Vector 		n, b, t;
	float			texst[3][2];
		
	mtrivertx_t *v0 = verts;
	count -= 2;
	verts++;
	texst[0][0] = ((float *)order)[0];
	texst[0][1] = ((float *)order)[1];
	order += 2;
	
	for(i=0; i<count; i++, verts++, nbts++, order+=2) {
		GL_TrivertxToF32(v0, &fverts[0]);
		GL_TrivertxToF32(&verts[0], &fverts[1]);
		GL_TrivertxToF32(&verts[1], &fverts[2]);
		texst[1][0] = ((float *)order)[0];
		texst[1][1] = ((float *)order)[1];
		texst[2][0] = ((float *)order)[2];
		texst[2][1] = ((float *)order)[3];
		
		// normals from nbt list
		GL_VecS8ToF32(&nbts->normal[0], &n);
		GL_VecS8ToF32(&nbts->bitangent[0], &b);
		GL_VecS8ToF32(&nbts->tangent[0], &t);
//		GL_VecS8ToF32(&nbts->normal[0], &n);
//		GL_VecS8ToF32(&nbts->bitangent[0], &b);
//		GL_VecS8ToF32(&nbts->tangent[0], &t);
		guVecScale(&b, &b, 0.125f);
		guVecScale(&t, &t, 0.125f);
		GX_Begin (GX_TRIANGLES, GX_VTXFMT2, 3);
		for(j=0; j<3; j++) {
			GX_Position3f32(fverts[j].x, fverts[j].y, fverts[j].z);
			GX_Normal3f32  (n.x,	n.y,	n.z);
			GX_Normal3f32  (b.x,	b.y,	b.z);
			GX_Normal3f32  (t.x,	t.y,	t.z);
			// texture coordinates come from the draw list
			GX_TexCoord2f32(texst[j][0], texst[j][1]);
		}
		GX_End();
	}
}
*/


void R_DrawAliasTangents(entity_t *e, aliashdr_t *paliashdr, int posenum);


/*
=============
GL_DrawAliasFrame
=============
*/
void R_DrawAliasFrameBumpShadow(entity_t *e, aliashdr_t *paliashdr, int posenum) {
	Vector 				n, b, t;
	dlight_t			*light;
	int					*order;
	int					count, i, num;
	mtrivertx_t		*verts, *v;
	mvertxref_t 	*vertxrefs;	

	// shader setup
	R_SetupAliasModelLightShader();

	// for each light
	if (e->numlights) {
		num = e->numlights;
	} else {
		num = 1;
	}
	// overwrite first light...
	GX_SetBlendMode(GX_BM_NONE, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	
	GX_SetZMode(GX_ENABLE, GX_LEQUAL, GX_TRUE);
	for(i=0; i<num; i++) {
		if (e->numlights) {
			light = (dlight_t *) e->lightdata[i].light;
		} else {
			light = NULL;
		}
		// setup light
		R_SetAliasModelLightShaderData(light);
	
		// get vertex index pointer list
		vertxrefs	=	(mvertxref_t *) ((byte *)paliashdr + paliashdr->vertxrefdata);
		// get raw vertices
		verts 		=	(mtrivertx_t *)((byte *)paliashdr + paliashdr->vertxdata);
		verts 		+= posenum * paliashdr->numverts;
		order 		=	(int *)((byte *)paliashdr + paliashdr->commands);



		while (1) 	{
			// get the vertex count and primitive type
			count = *order++;
			if (!count)
				break;		// done
			if (count < 0) {
				count = -count;
				GX_Begin (GX_TRIANGLEFAN, GX_VTXFMT2, count);
			}
			else
				GX_Begin (GX_TRIANGLESTRIP, GX_VTXFMT2, count);

			do {
				// vertices come from the frame list
				v = &verts[vertxrefs->vertindex];
				GX_Position3f32(v->xyz[0], v->xyz[1], v->xyz[2]);

				// normals from nbt list
				GL_VecS8ToF32(&v->normal[0], &n);
				GL_VecS8ToF32(&vertxrefs->bitangent[0], &b);
				GL_VecS8ToF32(&vertxrefs->tangent[0], &t);
//				GL_VecS8ToF32(&v->bitangent[0], &b);
//				GL_VecS8ToF32(&v->tangent[0], &t);
				guVecScale(&b, &b, 0.125f);
				guVecScale(&t, &t, 0.125f);
				GX_Normal3f32  (n.x,	n.y,	n.z);
				GX_Normal3f32  (t.x,	t.y,	t.z);
				GX_Normal3f32  (b.x, b.y,  b.z);
				// texture coordinates come from the draw list
				GX_TexCoord2f32(((float *)order)[0], ((float *)order)[1]);
			
				order += 2;
				vertxrefs++;//verts++;
			} while (--count);

			GX_End ();
		}
		
		// ... and blend in the remaining lights
		if (!i)
			GX_SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ONE, GX_LO_COPY);				
	}
	
R_DrawAliasTangents(e, paliashdr, posenum);	
	
	// obvious for now
	R_SetDefaultQuakeShader();
	
}


int focusVert = 0;
extern qboolean scr_takeScreenshot;

void R_DrawAliasTangents(entity_t *e, aliashdr_t *paliashdr, int posenum) {
	Vector 				n, b, t;
	int					*order;
	int					count;
	mtrivertx_t		*verts, *v;
	mvertxref_t 	*vertxrefs;	

	// shader setup
	R_SetupForStencilTexture();
	GXColor coln = {0xFF, 0x00, 0x00, 0xFF};
	GXColor colb = {0x00, 0xFF, 0x00, 0xFF};
	GXColor colt = {0x00, 0x00, 0xFF, 0xFF};
	GX_SetZMode(GX_ENABLE, GX_ALWAYS, GX_FALSE); 

	// get vertex index pointer list
	vertxrefs	=	(mvertxref_t *) ((byte *)paliashdr + paliashdr->vertxrefdata);
	// get raw vertices
	verts 		=	(mtrivertx_t *)((byte *)paliashdr + paliashdr->vertxdata);
	verts 		+= posenum * paliashdr->numverts;
	order 		=	(int *)((byte *)paliashdr + paliashdr->commands);

int maxvert = 0;
	while (1) 	{
		// get the vertex count and primitive type
		count = *order++;
		if (!count)
			break;		// done
		if (count < 0) {
			count = -count;
		}

		do {
			// vertexes come from the frame list
			v = &verts[vertxrefs->vertindex];
if (e->model && strcmp(e->model->name, "progs/v_shot.mdl") == 0) {
//Con_DPrintf("maxvert %d vertxrefs->vertindex %d ", maxvert, vertxrefs->vertindex);

	if (vertxrefs->vertindex > maxvert) {
		maxvert = vertxrefs->vertindex;
	}
	if (scr_takeScreenshot) {
		focusVert++;
		Con_DPrintf("focusvert %d ", focusVert);
		scr_takeScreenshot = false;
	}

//	Con_DPrintf("v_shot %d \n", vertxrefs->vertindex);
} 

//	if (vertxrefs->vertindex == 106 || vertxrefs->vertindex == 110) {
if (vertxrefs->vertindex == focusVert) {
			// normals from nbt list
			GL_VecS8ToF32(&v->normal[0], &n);
			//GL_VecS8ToF32(&v->bitangent[0], &b);
			//GL_VecS8ToF32(&v->tangent[0], &t);
			GL_VecS8ToF32(&vertxrefs->bitangent[0], &b);
			GL_VecS8ToF32(&vertxrefs->tangent[0], &t);
			
			guVecScale(&n, &n, 4.0f);
			guVecScale(&b, &b, 4.0f);
			guVecScale(&t, &t, 4.0f);
			
			GX_SetTevColor(GX_TEVREG1, coln);
			GX_Begin(GX_LINESTRIP, GX_VTXFMT3, 2);
			GX_Position3f32(v->xyz[0], v->xyz[1], v->xyz[2]);
			GX_Position3f32(v->xyz[0] + n.x , v->xyz[1] + n.y, v->xyz[2] + n.z);
			GX_End();

			GX_SetTevColor(GX_TEVREG1, colb);
			GX_Begin(GX_LINESTRIP, GX_VTXFMT3, 2);
			GX_Position3f32(v->xyz[0], v->xyz[1], v->xyz[2]);
			GX_Position3f32(v->xyz[0] + b.x , v->xyz[1] + b.y, v->xyz[2] + b.z);
			GX_End();

			GX_SetTevColor(GX_TEVREG1, colt);
			GX_Begin(GX_LINESTRIP, GX_VTXFMT3, 2);
			GX_Position3f32(v->xyz[0], v->xyz[1], v->xyz[2]);
			GX_Position3f32(v->xyz[0] + t.x , v->xyz[1] + t.y, v->xyz[2] + t.z);
			GX_End();
}
			order += 2;
			vertxrefs++;//verts++;
		} while (--count);

	}
if (e->model && strcmp(e->model->name, "progs/v_shot.mdl") == 0 && focusVert > maxvert) {
Con_DPrintf("focusvert %d maxvert %d ", focusVert, maxvert);
focusVert = 0;
}
			
	// obvious for now
	R_SetDefaultQuakeShader();
}

// WATER MAPS
/*
=============
GL_AnimateWaterTex
=============
*/
//float anim = 0;
void GL_AnimateWaterTex() {
	s16 x, y;
	u16 *bufptr = glwatermap; 

	for(y=0; y<32; y+=4) {
		for(x=0; x<32; x+=4) {
			int xx, yy;
			for (yy=0; yy<4; yy++) {
				for (xx=0; xx<4; xx++) {
					u16 result;
					float vect_x = 2 * M_PI * (x + xx)/32;
					float vect_y = 2 * M_PI * (y + yy)/32;
//					float dx = turbsin[(int)((vect_x+realtime) * TURBSCALE) & 255]; // TODO use this
//					float dy = turbsin[(int)((vect_y+realtime) * TURBSCALE) & 255];
					float dx = 0.25f * (sinf(4*vect_y)*sinf(vect_y-4*realtime) + sinf(2*vect_x)*sinf(vect_x+7*realtime));
					float dy = 0.25f * (sinf(4*vect_x)*sinf(vect_x-4*realtime) + sinf(2*vect_y)*sinf(vect_y+7*realtime));
					u8 g = ((u8) (128 + (127.0f * dx)))>>2; // ver
					u8 b = ((u8) (128 + (127.0f * dy)))>>3; // hor
					result = (g<<5|b);
					bufptr[xx + yy * 4]  = result;
				}
			}
			bufptr += 16; 
		}
	}

	DCFlushRange(glwatermap, 32*32*2);
}
