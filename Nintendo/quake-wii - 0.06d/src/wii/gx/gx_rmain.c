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
// r_main.c

#include "../../generic/quakedef.h"

entity_t	r_worldentity;

qboolean	r_cache_thrash;		// compatability

vec3_t		modelorg, r_entorigin;
entity_t	*currententity;

int			r_visframecount;	// bumped when going to a new PVS
int			r_framecount;		// used for dlight push checking

mplane_t	frustum[4];

int			c_brush_polys, c_alias_polys;

qboolean	envmap;				// true during envmap command capture 

int			currenttexture0 = -1;		// to avoid unnecessary texture sets
int			currenttexture1 = -1;		// to avoid unnecessary texture sets

int			cnttextures[2] = {-1, -1};     // cached

int			particletexture;	// little dot for particles
int			playertextures[MAX_SCOREBOARD];		// up to 16 color translated skins

int			mirrortexturenum;	// quake texturenum, not gltexturenum
qboolean	mirror;
mplane_t	*mirror_plane;

//
// view origin
//
vec3_t	vup;
vec3_t	vpn;
vec3_t	vright;
vec3_t	r_origin;

float	r_world_matrix[16];
float	r_base_world_matrix[16];

//
// screen size info
//
refdef_t	r_refdef;

mleaf_t		*r_viewleaf, *r_oldviewleaf;

texture_t	*r_notexture_mip;

int		d_lightstylevalue[256];	// 8.8 fraction of base light value


void R_MarkLeaves (void);

cvar_t	r_norefresh = {"r_norefresh","0"};
cvar_t	r_drawentities = {"r_drawentities","1"};
cvar_t	r_drawviewmodel = {"r_drawviewmodel","1"};
cvar_t	r_speeds = {"r_speeds","0"};
cvar_t	r_fullbright = {"r_fullbright","0"};
cvar_t	r_lightmap = {"r_lightmap","0"};
cvar_t	r_shadows = {"r_shadows","0"};
cvar_t	r_mirroralpha = {"r_mirroralpha","1"};
cvar_t	r_wateralpha = {"r_wateralpha","0.5"};
cvar_t	r_dynamic = {"r_dynamic","1"};
cvar_t	r_novis = {"r_novis","0"};

cvar_t	gl_finish = {"gl_finish","0"};
cvar_t	gl_clear = {"gl_clear","0"};
cvar_t	gl_cull = {"gl_cull","1"};
cvar_t	gl_smoothmodels = {"gl_smoothmodels","1"};
cvar_t	gl_affinemodels = {"gl_affinemodels","0"};
cvar_t	gl_polyblend = {"gl_polyblend","1"};
cvar_t	gl_playermip = {"gl_playermip","0"};
cvar_t	gl_nocolors = {"gl_nocolors","0"};
cvar_t	gl_keeptjunctions = {"gl_keeptjunctions","0"};
cvar_t	gl_reporttjunctions = {"gl_reporttjunctions","0"};
cvar_t	gl_doubleeyes = {"gl_doubleeys", "1"};

extern	cvar_t	gl_ztrick;
extern dlight_t			*r_contributinglights[]; // TODO: move
extern int					r_contributinglightscount;

float viewport_size[4];


/*
=================
R_CullSurface

Returns true if the box is completely outside the frustom
=================
*/
qboolean R_CullSurface(msurface_t *surf) {
	int i, verts;
	glpoly_t	*p;
	float			*v, dist;
	Vector		*normal;
	
	for (i=0 ; i<4 ; i++) {
		p = surf->polys;
		normal = (Vector *) &frustum[i].normal;
		dist = frustum[i].dist;
		while(p) {
			v = p->verts[0];
			for (verts=0 ; verts<p->numverts ; verts++, v+= VERTEXSIZE) {
				if (guVecDotProduct((Vector *) v, normal) - dist >= 0) {
					// inside
					return false;
				}
			}
			p = p->next;
		}
	}
	return true;
}



/*
=================
R_CullBox

Returns true if the box is completely outside the frustom
=================
*/
qboolean R_CullBox (vec3_t mins, vec3_t maxs)
{
	int		i;

	// ELUTODO: check for failure cases (rendering to an aspect different of that of the quake-calculated frustum, etc
	for (i=0 ; i<4 ; i++)
		if (BoxOnPlaneSide (mins, maxs, &frustum[i]) == 2)
			return true;
	return false;
}

Vector axis2 = {0,0,1};
Vector axis1 = {0,1,0};
Vector axis0 = {1,0,0};

/*
===============
R_RotateForEntity 
Setup model matrix for entity origin and angles
===============
*/
void R_RotateForEntity (entity_t *e)
{
	Mtx temp;

	guMtxTrans(temp, e->origin[0],  e->origin[1],  e->origin[2]);
	guMtxConcat(model, temp, model);

	guMtxRotAxisRad(temp, &axis2, DegToRad(e->angles[1]));
	guMtxConcat(model, temp, model);
	guMtxRotAxisRad(temp, &axis1, DegToRad(-e->angles[0]));
	guMtxConcat(model, temp, model);
	guMtxRotAxisRad(temp, &axis0, DegToRad(e->angles[2]));
	guMtxConcat(model, temp, model);
}


/*
===============
R_RotateForNormals 
Setup model matrix for entity origin and angles
===============
*/
void R_RotateForNormals(entity_t *e)
{
	Mtx temp;

	guMtxRotAxisRad(temp, &axis2, DegToRad(e->angles[1]));
	guMtxConcat(model, temp, model);
	guMtxRotAxisRad(temp, &axis1, DegToRad(-e->angles[0]));
	guMtxConcat(model, temp, model);
	guMtxRotAxisRad(temp, &axis0, DegToRad(e->angles[2]));
	guMtxConcat(model, temp, model);
}


/*
=============================================================

  SPRITE MODELS

=============================================================
*/

/*
================
R_GetSpriteFrame
================
*/
mspriteframe_t *R_GetSpriteFrame (entity_t *currententity)
{
	msprite_t		*psprite;
	mspritegroup_t	*pspritegroup;
	mspriteframe_t	*pspriteframe;
	int				i, numframes, frame;
	float			*pintervals, fullinterval, targettime, time;

	psprite = currententity->model->cache.data;
	frame = currententity->frame;

	if ((frame >= psprite->numframes) || (frame < 0))
	{
		Con_Printf ("R_DrawSprite: no such frame %d\n", frame);
		frame = 0;
	}

	if (psprite->frames[frame].type == SPR_SINGLE)
	{
		pspriteframe = psprite->frames[frame].frameptr;
	}
	else
	{
		pspritegroup = (mspritegroup_t *)psprite->frames[frame].frameptr;
		pintervals = pspritegroup->intervals;
		numframes = pspritegroup->numframes;
		fullinterval = pintervals[numframes-1];

		time = cl.time + currententity->syncbase;

	// when loading in Mod_LoadSpriteGroup, we guaranteed all interval values
	// are positive, so we don't have to worry about division by 0
		targettime = time - ((int)(time / fullinterval)) * fullinterval;

		for (i=0 ; i<(numframes-1) ; i++)
		{
			if (pintervals[i] > targettime)
				break;
		}

		pspriteframe = pspritegroup->frames[i];
	}

	return pspriteframe;
}


/*
=================
R_DrawSpriteModel

=================
*/
void R_DrawSpriteModel (entity_t *e)
{
	vec3_t	point;
	mspriteframe_t	*frame;
	float		*up, *right;
	vec3_t		v_forward, v_right, v_up;
	msprite_t		*psprite;

	// don't even bother culling, because it's just a single
	// polygon without a surface cache
	frame = R_GetSpriteFrame (e);
	psprite = currententity->model->cache.data;

	if (psprite->type == SPR_ORIENTED)
	{	// bullet marks on walls
		AngleVectors (currententity->angles, v_forward, v_right, v_up);
		up = v_up;
		right = v_right;
	}
	else
	{	// normal sprite
		up = vup;
		right = vright;
	}

	GL_DisableMultitexture();

    GL_Bind0(frame->gl_texturenum);

	QGX_Alpha(true);
	GX_Begin(GX_QUADS, GX_VTXFMT0, 4);

	VectorMA (e->origin, frame->down, up, point);
	VectorMA (point, frame->left, right, point);
	GX_Position3f32(point[0], point[1], point[2]);
	GX_Color4u8(0xff, 0xff, 0xff, 0xff);
	GX_TexCoord2f32(0, 1);

	VectorMA (e->origin, frame->up, up, point);
	VectorMA (point, frame->left, right, point);
	GX_Position3f32(point[0], point[1], point[2]);
	GX_Color4u8(0xff, 0xff, 0xff, 0xff);
	GX_TexCoord2f32(0, 0);

	VectorMA (e->origin, frame->up, up, point);
	VectorMA (point, frame->right, right, point);
	GX_Position3f32(point[0], point[1], point[2]);
	GX_Color4u8(0xff, 0xff, 0xff, 0xff);
	GX_TexCoord2f32(1, 0);

	VectorMA (e->origin, frame->down, up, point);
	VectorMA (point, frame->right, right, point);
	GX_Position3f32(point[0], point[1], point[2]);
	GX_Color4u8(0xff, 0xff, 0xff, 0xff);
	GX_TexCoord2f32(1, 1);

	GX_End();
	QGX_Alpha(false);
}

/*
=============================================================

  ALIAS MODELS

=============================================================
*/


#define NUMVERTEXNORMALS	162

float	r_avertexnormals[NUMVERTEXNORMALS][3] = {
#include "../../generic/anorms.h"
};

vec3_t	shadevector;
float	shadelight, ambientlight;

// precalculated dot products for quantized angles
#define SHADEDOT_QUANT 16
float	r_avertexnormal_dots[SHADEDOT_QUANT][256] =
#include "anorm_dots.h"
;

float	*shadedots = r_avertexnormal_dots[0];

int	lastposenum;

/*
=============
GL_DrawAliasFrame
=============
*/
void GL_DrawAliasFrame (aliashdr_t *paliashdr, int posenum)
{
	trivertx_t	*verts;
	int		*order;
	int		count;

lastposenum = posenum;

	verts = (trivertx_t *)((byte *)paliashdr + paliashdr->posedata);
	verts += posenum * paliashdr->poseverts;
	order = (int *)((byte *)paliashdr + paliashdr->commands);

	while (1)
	{
		// get the vertex count and primitive type
		count = *order++;
		if (!count)
			break;		// done
		if (count < 0)
		{
			count = -count;
			GX_Begin (GX_TRIANGLEFAN, GX_VTXFMT0, count);
		}
		else
			GX_Begin (GX_TRIANGLESTRIP, GX_VTXFMT0, count);

		do
		{
			// normals and vertexes come from the frame list
			GX_Position3f32(verts->v[0], verts->v[1], verts->v[2]);
			GX_Color4u8(0xff, 0xff, 0xff, 0xff);

			// texture coordinates come from the draw list
			GX_TexCoord2f32(((float *)order)[0], ((float *)order)[1]);

			order += 2;
			verts++;
		} while (--count);

		GX_End ();
	}
}


/*
=================
R_SetupAliasFrame

=================
*/
void R_SetupAliasFrame (entity_t *e, aliashdr_t *paliashdr)
{
	int			frame, pose, numposes;
	float			interval;

	frame = e->frame;
	if ((frame >= paliashdr->numframes) || (frame < 0))
	{
		Con_DPrintf ("R_AliasSetupFrame: no such frame %d\n", frame);
		frame = 0;
	}

	pose = paliashdr->frames[frame].firstpose;
	numposes = paliashdr->frames[frame].numposes;

	if (numposes > 1)
	{
		interval = paliashdr->frames[frame].interval;
		pose += (int)(cl.time / interval) % numposes;
	}

	if (e->model->flags & EF_FULLBRIGHT) {
		// TODO: fullbright shader
		GL_DisableMultitexture();
		GX_SetTevOp(GX_TEVSTAGE0, GX_REPLACE);
		GL_DrawAliasFrame (paliashdr, pose);
	} else {
		R_DrawAliasFrameBumpShadow(e, paliashdr, pose);
	}
}



/*
=================
R_DrawAliasModel

=================
*/
void R_DrawAliasModel (entity_t *e)
{
	int			i;
	model_t		*clmodel;
	vec3_t		mins, maxs;
	aliashdr_t	*paliashdr;
	int			anim;
	Mtx			temp, nmodelview;

	clmodel = currententity->model;

	VectorAdd (currententity->origin, clmodel->mins, mins);
	VectorAdd (currententity->origin, clmodel->maxs, maxs);

	if (R_CullBox (mins, maxs))
		return;


	VectorCopy (currententity->origin, r_entorigin);
	VectorSubtract (r_origin, r_entorigin, modelorg);

	// create normal transformation matrix early so model can be reused
	guMtxIdentity(model);
	R_RotateForNormals (e);
	guMtxConcat(view, model, nmodelview);
	GX_LoadNrmMtxImm(nmodelview, GX_PNMTX0); // DRS

	//
	// locate the proper data
	//
	paliashdr = (aliashdr_t *)Mod_Extradata (currententity->model);

	c_alias_polys += paliashdr->numtris;

	//
	// draw all the triangles
	//
	
	guMtxIdentity(model);
	R_RotateForEntity (e);
	
	if (!strcmp (clmodel->name, "progs/eyes.mdl") && gl_doubleeyes.value) {
		guMtxTrans (temp, paliashdr->scale_origin[0], paliashdr->scale_origin[1], paliashdr->scale_origin[2] - (22 + 8));
		guMtxConcat(model, temp, model);
// double size of eyes, since they are really hard to see in gl
		guMtxScale (temp, paliashdr->scale[0]*2, paliashdr->scale[1]*2, paliashdr->scale[2]*2);
		guMtxConcat(model, temp, model);
	} else {
		guMtxTrans (temp, paliashdr->scale_origin[0], paliashdr->scale_origin[1], paliashdr->scale_origin[2]);
		guMtxConcat(model, temp, model);
		guMtxScale (temp, paliashdr->scale[0], paliashdr->scale[1], paliashdr->scale[2]);
		guMtxConcat(model, temp, model);
	}
	guMtxConcat(view, model, modelview);
	GX_LoadPosMtxImm(modelview, GX_PNMTX0);
//	guMtxInverse(modelview, temp);
//	guMtxTranspose(temp, temp);
//	guMtxInverse(temp, nmodelview);
//	GX_LoadNrmMtxImm(nmodelview, GX_PNMTX0); // DRS
//	GX_LoadNrmMtxImm(modelview, GX_PNMTX0); // DRS


	anim = (int)(cl.time*10) & 3;
    GL_Bind0(paliashdr->gl_texturenum[currententity->skinnum][anim]);
    GL_Bind1(paliashdr->gl_normalmapnum[currententity->skinnum][anim]);

	// we can't dynamically colormap textures, so they are cached
	// seperately for the players.  Heads are just uncolored.
	if (currententity->colormap != vid.colormap && !gl_nocolors.value)
	{
		i = currententity - cl_entities;
		if (i >= 1 && i<=cl.maxclients)
		    GL_Bind0(playertextures[i - 1]);
	}

	R_SetupAliasFrame (currententity, paliashdr);
}


/*
=============
GL_VecU8ToF32
=============
*/
void GL_TrivertxToF32(trivertx_t *vert, Vector *out) {
	out->x = vert->v[0];
	out->y = vert->v[1];
	out->z = vert->v[2];
}

/*
=============
GL_VecS8ToF32
=============
*/
float gl_scales8tof32 = 1.0f/127.0f;
void GL_VecS8ToF32(vecs8_t *in, Vector *out) {
	signed char *pin = (signed char *) in;
	out->x = ((float) pin[0]) * gl_scales8tof32;
	out->y = ((float) pin[1]) * gl_scales8tof32;
	out->z = ((float) pin[2]) * gl_scales8tof32;
}


/*
=============
GL_CreateStripVolumes
=============
*/
void GL_CreateStripVolumes(dlight_t *light, Vector *mlightpos, int count, trivertx_t *verts, mplanenbt_t *nbts) {
	int i, j;
	float dp;
	Vector fverts[3];
	Vector normal;

	count -= 2;
	for(i=0; i<count; i++, verts++, nbts++) {
		// check if triangle faces the model lightpos
		GL_VecS8ToF32(&nbts->normal[0], &normal);
		dp = guVecDotProduct(&normal, mlightpos) - nbts->dist;
		
		if (dp >= BACKFACE_EPSILON) {
			// yes, create and add the volume
			// bit 0 = 0 -> clockwise
			// bit 0 = 1 -> counterclockwise
			if (i & 0x01) {
				// ccw
				for(j=0; j<3; j++) {
					GL_TrivertxToF32(&verts[j], &fverts[2-j]);
				}
			}  else {
				// cw
				for(j=0; j<3; j++) {
					GL_TrivertxToF32(&verts[j], &fverts[j]);
				}
			}
			// add it
			UT_CreateVolumeFromVerticesTranslate(light, fverts, 3, model);			
		}
	}
	
}


/*
=============
GL_CreateFanVolumes
=============
*/
void GL_CreateFanVolumes(dlight_t *light, Vector *mlightpos, int count, trivertx_t *verts, mplanenbt_t *nbts) {
	int i;
	float dp;
	Vector fverts[3];
	Vector normal;


	trivertx_t *v0 = verts;
	count -= 2;
	verts++;

	for(i=0; i<count; i++, verts++, nbts++) {
		// check if triangle faces the model lightpos
		GL_VecS8ToF32(&nbts->normal[0], &normal);
		dp = guVecDotProduct(&normal, mlightpos) - nbts->dist;
		
		if (dp >= BACKFACE_EPSILON) {
			// yes, create and add the volume
			GL_TrivertxToF32(v0, &fverts[0]);
			GL_TrivertxToF32(&verts[0], &fverts[1]);
			GL_TrivertxToF32(&verts[1], &fverts[2]);
			// add it
			UT_CreateVolumeFromVerticesTranslate(light, fverts, 3, model);			
		}
	}
}

/*
=============
GL_AliasFrameVolume
=============
*/
void GL_AliasFrameVolume (dlight_t *light, aliashdr_t *paliashdr, int posenum)
{
	mplanenbt_t 	*nbts;
	trivertx_t			*verts;
	int					*order;
	int					count;

	nbts 	= (mplanenbt_t 	*) ((byte *)paliashdr + paliashdr->nbtdata);
	nbts	  += posenum * paliashdr->numtris;
	verts = (trivertx_t *)((byte *)paliashdr + paliashdr->posedata);
	verts += posenum * paliashdr->poseverts;
	order = (int *)((byte *)paliashdr + paliashdr->commands);

	// transform light to modelspace
	Mtx 		modelinv;
	Vector	mlightpos;
	if (!guMtxInverse(model, modelinv)) {
		Con_DPrintf("No inverse possible!!! Everything fails....");
		return;
	}
	guVecMultiply(modelinv, (Vector *) &light->origin[0], &mlightpos);
	
	while (1) {
		// get the vertex count and primitive type
		count = *order++;
		if (!count)
			break;		// done
		if (count < 0) {
			count = -count;
			GL_CreateFanVolumes(light, &mlightpos, count, verts, nbts);
		}	else {
			GL_CreateStripVolumes(light, &mlightpos, count, verts, nbts);
		}
		verts += count;
		order += 2 * count;
		nbts += count - 2;
	}

}


/*
=================
R_PreprocessAliasModel
=================
*/
void R_PreprocessAliasModel(entity_t *e) {
	model_t		*clmodel;
	vec3_t			mins, maxs;
	aliashdr_t	*paliashdr;
	Mtx				temp;

	clmodel = currententity->model;

	VectorAdd (e->origin, clmodel->mins, mins);
	VectorAdd (e->origin, clmodel->maxs, maxs);
	// TODO culling has to be done after lightcalc
	if (R_CullBox (mins, maxs))
		return;

	// locate the proper data
	paliashdr = (aliashdr_t *)Mod_Extradata (currententity->model);
	c_alias_polys += paliashdr->numtris;

	// model to worldspace
	guMtxIdentity(model);
	R_RotateForEntity (e);

	if (!strcmp (clmodel->name, "progs/eyes.mdl") && gl_doubleeyes.value) {
		guMtxTrans (temp, paliashdr->scale_origin[0], paliashdr->scale_origin[1], paliashdr->scale_origin[2] - (22 + 8));
		guMtxConcat(model, temp, model);
		// double size of eyes, since they are really hard to see in gl
		guMtxScale (temp, paliashdr->scale[0]*2, paliashdr->scale[1]*2, paliashdr->scale[2]*2);
		guMtxConcat(model, temp, model);
	} else {
		guMtxTrans (temp, paliashdr->scale_origin[0], paliashdr->scale_origin[1], paliashdr->scale_origin[2]);
		guMtxConcat(model, temp, model);
		guMtxScale (temp, paliashdr->scale[0], paliashdr->scale[1], paliashdr->scale[2]);
		guMtxConcat(model, temp, model);
	}

	// frame animation
	int 			frame = currententity->frame;
	int			pose, numposes;
	float			interval;

	if ((frame >= paliashdr->numframes) || (frame < 0)) {
		Con_DPrintf ("R_AliasSetupFrame: no such frame %d\n", frame);
		frame = 0;
	}

	pose = paliashdr->frames[frame].firstpose;
	numposes = paliashdr->frames[frame].numposes;

	if (numposes > 1) {
		interval = paliashdr->frames[frame].interval;
		pose += (int)(cl.time / interval) % numposes;
	}
	
	// draw triangles flat 
	if (currententity != &cl_entities[cl.viewentity] || chase_active.value || !r_drawviewmodel.value) {
		guMtxConcat(view,model,modelview);
		GX_LoadPosMtxImm(modelview, GX_PNMTX0);
		GL_DrawAliasFrameFlat(paliashdr, pose);
	}
	
	// only draw shadow  when flag not set
	if (clmodel->flags & EF_NOSHADOW) 
		return;

	// contributions from lights
	int l;
	e->numlights = 0;
	for (l=0; l<r_contributinglightscount ; l++) {
		dlight_t *light = r_contributinglights[l];
	
		// box check point
		if (S_BoxInRange((Vector *) &mins[0], (Vector *) &maxs[0], light->origin, light->radius)) {
			// add light, then create volumes for lights kept (to current entity)
			S_EntityLightData(e, light);
		}
	}
	// create volumes for each lights that were registered
	for (l=0; l<e->numlights; l++) {
		dlight_t *light = (dlight_t *) e->lightdata[l].light; // TODO FIXME
		GL_AliasFrameVolume(light, paliashdr, pose);
	}
	
}


//==================================================================================
/*
=============
R_PreprocessEntitiesOnList
=============
*/
void R_PreprocessEntitiesOnList(void)
{
	int		i;

	if (!r_drawentities.value)
		return;
	entity_t *viewentity = &cl_entities[cl.viewentity];

	for (i=0 ; i<cl_numvisedicts ; i++)
	{
		currententity = cl_visedicts[i];

		switch (currententity->model->type)
		{
		case mod_alias:
			if (currententity == viewentity) {
				float angle = currententity->angles[0];
				currententity->angles[0] = 0;
				R_PreprocessAliasModel (currententity);
				currententity->angles[0] = 	angle;
			} else {
				R_PreprocessAliasModel (currententity);
			}
			break;

		case mod_brush:
			R_PreprocessBrushModel (currententity);
			break;

		default:
			break;
		}
	}
}




/*
=============
R_DrawEntitiesOnList
=============
*/
void R_DrawEntitiesOnList (void)
{
	int		i;

	if (!r_drawentities.value)
		return;

	entity_t *viewentity = &cl_entities[cl.viewentity];
	
	// draw sprites seperately, because of alpha blending
	for (i=0 ; i<cl_numvisedicts ; i++)
	{
		currententity = cl_visedicts[i];
		// keep self from being drawn when not in chase mode... 
		// TODO might be required to enable when mirror...
		if (currententity == viewentity && !chase_active.value && r_drawviewmodel.value) {
			continue;
		}
		switch (currententity->model->type)
		{
		case mod_alias:
			if (currententity == viewentity) {
				float angle = currententity->angles[0];
				currententity->angles[0] = 0;
				R_DrawAliasModel (currententity);
				currententity->angles[0] = 	angle;
			} else {
				R_DrawAliasModel (currententity);
			}
			break;

		case mod_brush:
			R_DrawBrushModel (currententity);
			break;

		default:
			break;
		}
	}

	GX_LoadPosMtxImm(view, GX_PNMTX0);
	for (i=0 ; i<cl_numvisedicts ; i++)
	{
		currententity = cl_visedicts[i];

		switch (currententity->model->type)
		{
			case mod_sprite:
				R_DrawSpriteModel (currententity);
				break;

			default:
				break;
		}
	}
}

/*
=============
R_PreprocessViewModel
=============
*/
void R_PreprocessViewModel(void) {
	model_t	*clmodel;

	if (!r_drawviewmodel.value)
		return;

	if (chase_active.value)
		return;

	if (envmap)
		return;

	if (!r_drawentities.value)
		return;

	if (cl.items & IT_INVISIBILITY)
		return;

	if (cl.stats[STAT_HEALTH] <= 0)
		return;

	currententity = &cl.viewent;
	if (!currententity->model)
		return;

	clmodel = currententity->model;

	// force no shadows 
	clmodel->flags |= EF_NOSHADOW;

	R_PreprocessAliasModel (currententity);
}


/*
=============
R_DrawViewModel
=============
*/
void R_DrawViewModel (void)
{
	int			l;
	vec3_t		mins, maxs;
	model_t	*clmodel;

	if (!r_drawviewmodel.value)
		return;

	if (chase_active.value)
		return;

	if (envmap)
		return;

	if (!r_drawentities.value)
		return;

	if (cl.items & IT_INVISIBILITY)
		return;

	if (cl.stats[STAT_HEALTH] <= 0)
		return;

	currententity = &cl.viewent;
	if (!currententity->model)
		return;

	clmodel = currententity->model;
	VectorAdd (currententity->origin, clmodel->mins, mins);
	VectorAdd (currententity->origin, clmodel->maxs, maxs);

	// contributions from lights
	currententity->numlights = 0;
	for (l=0; l<r_contributinglightscount ; l++) {
		dlight_t *light = r_contributinglights[l];
	
		// box check point
		if (S_BoxInRange((Vector *) &mins[0], (Vector *) &maxs[0], light->origin, light->radius)) {
			// add light, then create volumes for lights kept (to current entity)
			S_EntityLightData(currententity, light);
		}
	}

	// hack the depth range to prevent view model from poking into walls
	GX_SetViewport(viewport_size[0], viewport_size[1], viewport_size[2], viewport_size[3], 0.0f, 0.3f);
	R_DrawAliasModel (currententity);
	GX_SetViewport(viewport_size[0], viewport_size[1], viewport_size[2], viewport_size[3], 0.0f, 1.0f);
}


/*
============
R_PolyBlend
============
*/
void R_PolyBlend (void)
{
	Mtx temp;

	if (!gl_polyblend.value)
		return;
	if (!v_blend[3] && v_gamma.value == 1.0f)
		return;

	QGX_Alpha(false);
	QGX_Blend(true);
	QGX_ZMode(false);
	GL_Bind0(white_texturenum); // ELUTODO: do not use a texture
	GX_SetTevOp(GX_TEVSTAGE0, GX_MODULATE);

	c_guMtxIdentity(view);
	c_guMtxRotAxisRad(temp, &axis0, DegToRad(-90.0f));		// put Z going up
	c_guMtxConcat(view, temp, view);
	c_guMtxRotAxisRad(temp, &axis2, DegToRad(90.0f));		// put Z going up
	c_guMtxConcat(view, temp, view);
	GX_LoadPosMtxImm(view, GX_PNMTX0);

	// ELUTODO: check if v_blend gets bigger than 1.0f
	if (v_blend[3])
	{
		GX_Begin(GX_QUADS, GX_VTXFMT0, 4);

		GX_Position3f32(10.0f, 100.0f, 100.0f);
		GX_Color4u8(v_blend[0] * 255, v_blend[1] * 255, v_blend[2] * 255, v_blend[3] * 255);
		GX_TexCoord2f32(1.0f, 1.0f);

		GX_Position3f32(10.0f, -100.0f, 100.0f);
		GX_Color4u8(v_blend[0] * 255, v_blend[1] * 255, v_blend[2] * 255, v_blend[3] * 255);
		GX_TexCoord2f32(0.0f, 1.0f);

		GX_Position3f32(10.0f, -100.0f, -100.0f);
		GX_Color4u8(v_blend[0] * 255, v_blend[1] * 255, v_blend[2] * 255, v_blend[3] * 255);
		GX_TexCoord2f32(0.0f, 0.0f);

		GX_Position3f32(10.0f, 100.0f, -100.0f);
		GX_Color4u8(v_blend[0] * 255, v_blend[1] * 255, v_blend[2] * 255, v_blend[3] * 255);
		GX_TexCoord2f32(1.0f, 0.0f);

		GX_End();
	}

	// ELUTODO quick hack
	if (v_gamma.value != 1.0f)
	{
		GX_Begin(GX_QUADS, GX_VTXFMT0, 4);

		GX_Position3f32(10.0f, 100.0f, 100.0f);
		GX_Color4u8(0xff, 0xff, 0xff, (v_gamma.value * -1.0f + 1.0f) * 0xff);
		GX_TexCoord2f32(1.0f, 1.0f);

		GX_Position3f32(10.0f, -100.0f, 100.0f);
		GX_Color4u8(0xff, 0xff, 0xff, (v_gamma.value * -1.0f + 1.0f) * 0xff);
		GX_TexCoord2f32(0.0f, 1.0f);

		GX_Position3f32(10.0f, -100.0f, -100.0f);
		GX_Color4u8(0xff, 0xff, 0xff, (v_gamma.value * -1.0f + 1.0f) * 0xff);
		GX_TexCoord2f32(0.0f, 0.0f);

		GX_Position3f32(10.0f, 100.0f, -100.0f);
		GX_Color4u8(0xff, 0xff, 0xff, (v_gamma.value * -1.0f + 1.0f) * 0xff);
		GX_TexCoord2f32(1.0f, 0.0f);

		GX_End();
	}

	QGX_Blend(false);
	QGX_Alpha(true);
	GX_SetTevOp(GX_TEVSTAGE0, GX_REPLACE);
}


int SignbitsForPlane (mplane_t *out)
{
	int	bits, j;

	// for fast box on planeside test

	bits = 0;
	for (j=0 ; j<3 ; j++)
	{
		if (out->normal[j] < 0)
			bits |= 1<<j;
	}
	return bits;
}


void R_SetFrustum (void)
{
	int		i;

	if (r_refdef.fov_x == 90) 
	{
		// front side is visible

		VectorAdd (vpn, vright, frustum[0].normal);
		VectorSubtract (vpn, vright, frustum[1].normal);

		VectorAdd (vpn, vup, frustum[2].normal);
		VectorSubtract (vpn, vup, frustum[3].normal);
	}
	else
	{
		// rotate VPN right by FOV_X/2 degrees
		RotatePointAroundVector( frustum[0].normal, vup, vpn, -(90-r_refdef.fov_x / 2 ) );
		// rotate VPN left by FOV_X/2 degrees
		RotatePointAroundVector( frustum[1].normal, vup, vpn, 90-r_refdef.fov_x / 2 );
		// rotate VPN up by FOV_X/2 degrees
		RotatePointAroundVector( frustum[2].normal, vright, vpn, 90-r_refdef.fov_y / 2 );
		// rotate VPN down by FOV_X/2 degrees
		RotatePointAroundVector( frustum[3].normal, vright, vpn, -( 90 - r_refdef.fov_y / 2 ) );
	}

	for (i=0 ; i<4 ; i++)
	{
		frustum[i].type = PLANE_ANYZ;
		frustum[i].dist = DotProduct (r_origin, frustum[i].normal);
		frustum[i].signbits = SignbitsForPlane (&frustum[i]);
	}
}



/*
===============
R_SetupFrame
===============
*/
void R_SetupFrame (void)
{
// don't allow cheats in multiplayer
	if (cl.maxclients > 1)
		Cvar_Set ("r_fullbright", "0");

	R_AnimateLight ();

	r_framecount++;

// build the transformation matrix for the given view angles
	VectorCopy (r_refdef.vieworg, r_origin);

	AngleVectors (r_refdef.viewangles, vpn, vright, vup);

// current viewleaf
	r_oldviewleaf = r_viewleaf;
	r_viewleaf = Mod_PointInLeaf (r_origin, cl.worldmodel);

	V_SetContentsColor (r_viewleaf->contents);
	V_CalcBlend ();

	r_cache_thrash = false;

	c_brush_polys = 0;
	c_alias_polys = 0;

}

/*
=============
R_SetupGL
=============
*/
void R_SetupGL (void)
{
	float	screenaspect;
	extern	int glwidth, glheight;
	int		x, x2, y2, y, w, h;
	Mtx		temp;

	//
	// set up viewpoint
	//
	x = r_refdef.vrect.x * glwidth/vid.width;
	x2 = (r_refdef.vrect.x + r_refdef.vrect.width) * glwidth/vid.width;
	y = r_refdef.vrect.y * glheight/vid.height;
	y2 = (r_refdef.vrect.y + r_refdef.vrect.height) * glheight/vid.height;

	// fudge around because of frac screen scale
	if (x > 0)
		x--;
	if (x2 < glwidth)
		x2++;
	if (y > 0)
		y--;
	if (y2 < glheight)
		y2++;

	w = x2 - x;
	h = y2 - y;

	if (envmap)
	{
		x = y2 = 0;
		w = h = 256;
	}

	viewport_size[0] = glx + x;
	viewport_size[1] = gly + y;
	viewport_size[2] = w;
	viewport_size[3] = h;
	GX_SetViewport(viewport_size[0], viewport_size[1], viewport_size[2], viewport_size[3], 0.0f, 1.0f);
    screenaspect = 1.77f;// DRS 16:9 (float)r_refdef.vrect.width/r_refdef.vrect.height;
//    screenaspect = (float) r_refdef.vrect.width/r_refdef.vrect.height;
	guPerspective (perspective, r_refdef.fov_y, screenaspect, ZMIN3D, ZMAX3D);

	// ELUTODO: perspective is 4x4, these ops are 4x3
	if (mirror)
	{
		if (mirror_plane->normal[2])
		{
			c_guMtxScale (temp, 1, -1, 1);
			c_guMtxConcat(perspective, temp, perspective);
		}
		else
			c_guMtxScale (temp, -1, 1, 1);
			c_guMtxConcat(perspective, temp, perspective);
		GX_SetCullMode(GX_CULL_FRONT);
	}
	else
		GX_SetCullMode(GX_CULL_BACK);

	GX_LoadProjectionMtx(perspective, GX_PERSPECTIVE);

	c_guMtxIdentity(view);

	c_guMtxRotAxisRad(temp, &axis0, DegToRad(-90.0f));		// put Z going up
	c_guMtxConcat(view, temp, view);
	c_guMtxRotAxisRad(temp, &axis2, DegToRad(90.0f));		// put Z going up
	c_guMtxConcat(view, temp, view);

	c_guMtxRotAxisRad(temp, &axis0, DegToRad(-r_refdef.viewangles[2]));
	c_guMtxConcat(view, temp, view);
	c_guMtxRotAxisRad(temp, &axis1, DegToRad(-r_refdef.viewangles[0]));
	c_guMtxConcat(view, temp, view);
	c_guMtxRotAxisRad(temp, &axis2, DegToRad(-r_refdef.viewangles[1]));
	c_guMtxConcat(view, temp, view);


	c_guMtxTrans(temp, -r_refdef.vieworg[0],  -r_refdef.vieworg[1],  -r_refdef.vieworg[2]);
	c_guMtxConcat(view, temp, view);

	// ELUTODOglGetFloatv (GL_MODELVIEW_MATRIX, r_world_matrix);

	//
	// set drawing parms
	//
//	if (!gl_cull.value) DRS: We never want this....
//		GX_SetCullMode(GX_CULL_NONE);

	QGX_Blend(false);
	QGX_Alpha(false);
	QGX_ZMode(true);
}




extern dlight_t *r_contributinglights[];

void R_PreprocessVolumes() {
	int i;
	for(i=0; i<r_contributinglightscount; i++) {
		R_FilterDuplicateVolumeFrags(r_contributinglights[i]);
	}

}


/*
================
R_PreprocessWorld
================
*/
void R_PreprocessWorld(void) {
	R_ClearContributingLights();
	UT_ClearDynamicVolumes	();
	
	// TODO: setup prerender screenmode
	R_RenderMode_Halfscreen();
	R_SetupFlatShader	();
	
	
	// preprocess and draw flat surfaces
	R_PreprocessWorldNodes(cl.worldmodel->nodes);
	// viewmodel
	R_PreprocessViewModel();
	// draw flat
	R_PreprocessEntitiesOnList();
	
	GX_DrawDone();
	
	// draw shadow volumes
	GX_LoadPosMtxImm(view, GX_PNMTX0);
	GX_SetPixelFmt(GX_PF_RGB8_Z24, GX_ZC_FAR);
	R_DrawShadowVolumes();
	R_SetDefaultQuakeShader();
	R_RenderMode_Fullscreen();
	
}

/*
================
R_RenderScene

r_refdef must be set before the first call
================
*/
void R_RenderScene (void)
{
	GX_SetTevOp(GX_TEVSTAGE0, GX_REPLACE);

	R_SetupFrame ();

	R_SetFrustum ();

	R_SetupGL ();
	
	R_SetupWorld ();
	
	R_MarkLeaves ();	// done here so we know if we're in water

	// lights, shadows etc 
	R_PreprocessWorld(); // adds static entities to the list


	R_SetupWorld ();
	
	R_DrawWorld ();		
	S_ExtraUpdate ();	// don't let sound get messed up if going slow

//	testVolumeMap();


	// for the entities, we load the matrices separately
	R_DrawEntitiesOnList ();

	GL_DisableMultitexture();

	GX_LoadPosMtxImm(view, GX_PNMTX0);
	R_DrawParticles ();
}


/*
=============
R_Clear
=============
*/
void R_Clear (void)
{
	// Not needed, GX clears the efb while copying to the xfb
}

/*
=============
R_Mirror
=============
*/
void R_Mirror (void)
{
	float		d;
	msurface_t	*s;
	entity_t	*ent;

	if (!mirror)
		return;

	memcpy (r_base_world_matrix, r_world_matrix, sizeof(r_base_world_matrix));

	d = DotProduct (r_refdef.vieworg, mirror_plane->normal) - mirror_plane->dist;
	VectorMA (r_refdef.vieworg, -2*d, mirror_plane->normal, r_refdef.vieworg);

	d = DotProduct (vpn, mirror_plane->normal);
	VectorMA (vpn, -2*d, mirror_plane->normal, vpn);

	r_refdef.viewangles[0] = -asin (vpn[2])/M_PI*180;
	r_refdef.viewangles[1] = atan2 (vpn[1], vpn[0])/M_PI*180;
	r_refdef.viewangles[2] = -r_refdef.viewangles[2];

	ent = &cl_entities[cl.viewentity];
	if (cl_numvisedicts < MAX_VISEDICTS)
	{
		cl_visedicts[cl_numvisedicts] = ent;
		cl_numvisedicts++;
	}
/* ELUTODO
	gldepthmin = 0.5;
	gldepthmax = 1;
	glDepthRange (gldepthmin, gldepthmax);
	glDepthFunc (GL_LEQUAL);

	R_RenderScene ();
	R_DrawWaterSurfaces ();

	gldepthmin = 0;
	gldepthmax = 0.5;
	glDepthRange (gldepthmin, gldepthmax);
	glDepthFunc (GL_LEQUAL);

	// blend on top
	glEnable (GL_BLEND);
	glMatrixMode(GL_PROJECTION);
	if (mirror_plane->normal[2])
		glScalef (1,-1,1);
	else
		glScalef (-1,1,1);
	glCullFace(GL_FRONT);
	glMatrixMode(GL_MODELVIEW);

	glLoadMatrixf (r_base_world_matrix);

	glColor4f (1,1,1,r_mirroralpha.value);
	s = cl.worldmodel->textures[mirrortexturenum]->texturechain;
	for ( ; s ; s=s->texturechain)
		R_RenderBrushPoly (s);
	cl.worldmodel->textures[mirrortexturenum]->texturechain = NULL;
	glDisable (GL_BLEND);
	glColor4f (1,1,1,1);
*/
}

/*
================
R_RenderView

r_refdef must be set before the first call
================
*/
void R_RenderView (void)
{
	double	time1, time2;
	// ELUTODO GLfloat colors[4] = {(GLfloat) 0.0, (GLfloat) 0.0, (GLfloat) 1, (GLfloat) 0.20};

	if (r_norefresh.value)
		return;

	if (!r_worldentity.model || !cl.worldmodel)
		Sys_Error ("R_RenderView: NULL worldmodel");

	if (r_speeds.value)
	{
		// ELUTODO glFinish ();
		time1 = Sys_FloatTime ();
		c_brush_polys = 0;
		c_alias_polys = 0;
	}

	mirror = false;

/* ELUTODO
	if (gl_finish.value)
		glFinish ();
*/

	R_Clear ();

	// render normal view

/***** Experimental silly looking fog ******
****** Use r_fullbright if you enable ******
	glFogi(GL_FOG_MODE, GL_LINEAR);
	glFogfv(GL_FOG_COLOR, colors);
	glFogf(GL_FOG_END, 512.0);
	glEnable(GL_FOG);
********************************************/

	R_RenderScene ();
	R_DrawViewModel ();
	GX_LoadPosMtxImm(view, GX_PNMTX0);
	R_DrawWaterSurfaces ();

//  More fog right here :)
//	glDisable(GL_FOG);
//  End of all fog code...

	// render mirror view
	R_Mirror ();

	R_PolyBlend ();

	if (r_speeds.value)
	{
//		glFinish ();
		time2 = Sys_FloatTime ();
		Con_Printf ("%3i ms  %4i wpoly %4i epoly\n", (int)((time2-time1)*1000), c_brush_polys, c_alias_polys); 
	}
}
