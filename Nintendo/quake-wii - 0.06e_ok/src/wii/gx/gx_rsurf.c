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

typedef struct glRect_s {
	unsigned char l,t,w,h;
} glRect_t;

// For gl_texsort 0
msurface_t  *skychain = NULL;
msurface_t  *waterchain = NULL;

extern dlight_t			*r_contributinglights[];
extern int					r_contributinglightscount;



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

	VectorSubtract (r_refdef.vieworg, e->origin, modelorg);
	if (rotated)
	{
		vec3_t	temp;
		vec3_t	forward, right, up;

		VectorCopy (modelorg, temp);
		AngleVectors (e->angles, forward, right, up);
		modelorg[0] = guVecDotProduct ((Vector *) temp, (Vector *) forward);
		modelorg[1] = -guVecDotProduct ((Vector *) temp, (Vector *) right);
		modelorg[2] = guVecDotProduct ((Vector *) temp, (Vector *) up);
	}

	psurf = &clmodel->surfaces[clmodel->firstmodelsurface];

	Mtx nmodelview;
	guMtxIdentity(model);
	e->angles[0] = -e->angles[0];	// stupid quake bug
	R_RotateForNormals (e);
	e->angles[0] = -e->angles[0];	// stupid quake bug
	guMtxConcat(view, model, nmodelview);
	GX_LoadNrmMtxImm(nmodelview, GX_PNMTX0); // DRS


	guMtxIdentity(model);
	e->angles[0] = -e->angles[0];	// stupid quake bug
	R_RotateForEntity (e);
	e->angles[0] = -e->angles[0];	// stupid quake bug

	c_guMtxConcat(view, model, modelview);
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
			R_DrawSequentialPoly (psurf); 
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

	GX_SetViewport(0, 0, STENCIL_WIDTH, STENCIL_HEIGHT, 0.0f, 1.0f);
	GX_SetScissor(0, 0, STENCIL_WIDTH, STENCIL_HEIGHT);

	GX_SetPixelFmt(GX_PF_Z24, GX_ZC_NEAR);

}


/*
=============
R_RenderMode_Halfscreen
DRS: Init render mode for flat polys
=============
*/
void R_RenderMode_Halfscreen(void) {
	GX_SetColorUpdate(GX_TRUE); // TODO
	GX_SetAlphaUpdate(GX_FALSE); // TODO

	GX_SetViewport(0, 0, STENCIL_WIDTH, STENCIL_HEIGHT, 0.0f, 1.0f);
	GX_SetScissor(0, 0, STENCIL_WIDTH, STENCIL_HEIGHT);

	GX_SetPixelFmt(GX_PF_RGB8_Z24, GX_ZC_NEAR);

}


/*
=============
R_SetupWorld 
=============
*/
void R_SetupWorld (void) {
	entity_t	ent;

	memset (&ent, 0, sizeof(ent));
	ent.model = cl.worldmodel;

	VectorCopy (r_refdef.vieworg, modelorg);

	currententity = &ent;
	currenttexture0 = -1;
	currenttexture1 = -1;

	guMtxIdentity(model);
	guMtxConcat(view, model, modelview);
	GX_LoadPosMtxImm(modelview, GX_PNMTX0);
	GX_LoadNrmMtxImm(modelview, GX_PNMTX0);

}

/*
=============
R_DrawWorld
=============
*/
void R_DrawWorld (void)
{

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
=================
R_PreprocessBrushModel
=================
*/
void R_PreprocessBrushModel (entity_t *e)
{
//	int			k;
	vec3_t		mins, maxs;
	int			i, l;
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

	// setup model
	c_guMtxIdentity(model);
	e->angles[0] = -e->angles[0];	// stupid quake bug
	R_RotateForEntity (e);
	e->angles[0] = -e->angles[0];	// stupid quake bug

	psurf = &clmodel->surfaces[clmodel->firstmodelsurface];

// calculate dynamic lighting for bmodel if it's not an
// instanced model
	Vector delta;
	// all lighting
	for (i=0 ; i<clmodel->nummodelsurfaces ; i++, psurf++) {
		psurf->numstaticlights = 0;
		for (l=0; l<r_contributinglightscount ; l++) {
			dlight_t *light = r_contributinglights[l];
			if(S_BoxCullSurfaceTranslate(light, psurf, model)) {
				continue;
			} 
			// find which side of the node we are on
			pplane = psurf->plane;
			guVecSub((Vector *) &light->origin[0], (Vector *) &e->origin[0], &delta);
			if (rotated) {
				Vector temp;
				vec3_t	forward, right, up;
				temp.x = delta.x;
				temp.y = delta.y;
				temp.z = delta.z;
				AngleVectors (e->angles, forward, right, up);
				delta.x = guVecDotProduct (&temp, (Vector *) &forward[0]);
				delta.y = -guVecDotProduct (&temp, (Vector *) &right[0]);
				delta.z = guVecDotProduct (&temp, (Vector *) &up[0]);
			}
			dot = guVecDotProduct (&delta, (Vector *) &pplane->normal) - pplane->dist;
			if (((psurf->flags & SURF_PLANEBACK) && (dot < -BACKFACE_EPSILON)) ||
				(!(psurf->flags & SURF_PLANEBACK) && (dot > BACKFACE_EPSILON))) {
				float attenuation = 1 - powf(dot, 2)/powf(light->radius, 2);
				S_SurfaceLightData(psurf, light, attenuation)	;

				// add dynamic shadow volume
				UT_AddShadowVolumeTranslate(light, psurf, model);
			}
		}
	}
	
	psurf = &clmodel->surfaces[clmodel->firstmodelsurface];
	
	// setup modelview
	guMtxConcat(view,model,modelview);
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
			R_DrawSurfacePolyFlat(psurf); 
		}
	}
}


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

	c = node->numsurfaces;

	if (c) {
		msurface_t *surf = cl.worldmodel->surfaces + node->firstsurface;

		if (dot < 0 -BACKFACE_EPSILON)
			side = SURF_PLANEBACK;
		else if (dot > BACKFACE_EPSILON)
			side = 0;
		{
			for ( ; c ; c--, surf++) {
				if (surf->visframe != r_framecount)
					continue;

				// don't backface underwater surfaces, because they warp
				if ( !(surf->flags & SURF_UNDERWATER) && ( (dot < 0) ^ !!(surf->flags & SURF_PLANEBACK)) )
					continue;		// wrong side

				// TODO cleanup
				if (surf->flags & SURF_DRAWSKY) {
				} else if (surf->flags & SURF_DRAWTURB) {
				} else {
					R_DrawSurfacePolyFlat(surf);
				}
			}
		}

	}


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

