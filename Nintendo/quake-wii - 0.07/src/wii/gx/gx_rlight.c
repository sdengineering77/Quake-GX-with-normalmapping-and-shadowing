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
// r_light.c

#include "../../generic/quakedef.h"

#define MAX_LIGHTS_FRAME	128

int			r_dlightframecount;
int			r_litframecount;
dlight_t	*r_contributinglights[MAX_LIGHTS_FRAME];
int			r_contributinglightscount;

/*
==================
R_ClearContributingLights
==================
*/
void R_ClearContributingLights(void) {
	r_contributinglightscount = 0;
}

/*
==================
R_MarkContributingSurfaces
Call with clworldmodel->nodes
Assumes that visible leafs are marked for this frame (already been box culled)
Marks surfaces that are being lit by given light
==================
*/
void R_MarkContributingSurfaces(dlight_t *light, mnode_t *node) {
	int			c, side;
	mplane_t	*plane;
	msurface_t	**mark;
	mleaf_t		*pleaf;
	double		dot;

	if (node->visframe != r_visframecount)
		return;
	
	// if a leaf node check if light is registered
	if (node->contents < 0) {
		pleaf = (mleaf_t *)node;

		mlightdata_t *lightdata = pleaf->lightdata;
		while(lightdata) {
			if (light == lightdata->light) {
				mark = pleaf->firstmarksurface;
				c = pleaf->nummarksurfaces;

				if (c) {
					do {
						(*mark)->litframe = r_litframecount;
						mark++;
					} while (--c);
				}

				// TODO: if we draw per light anyway, efrags should still be stored
				//if (pleaf->efrags)
				//	R_StoreEfrags (&pleaf->efrags);
			}
			// next lightdata
			lightdata = lightdata->nextlight;
		}


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
	R_MarkContributingSurfaces(light, node->children[side]);


	// recurse down the back side
	R_MarkContributingSurfaces(light, node->children[!side]);
}


/*
==================
R_PrepareContributingLights
Adds lights in leaf to light list
Marks the shadowvolumes associated with given leaf
TODO: Associates surfaces with lights in list 
Preferably, call this with leafs in front to back order
==================
*/
void R_PrepareContributingLights(mleaf_t *pleaf) {
	int i;
	vec3_t mins, maxs;
	mlightdata_t *lightdata = pleaf->lightdata;
	while(lightdata) {
		dlight_t *light = lightdata->light;
		// is it processed already?
		if (light->visframe != r_framecount) {
			light->visframe = r_framecount; // mark as being processed
			// add it if it is not culled
			for(i=0; i<3; i++) {
				mins[i] = light->origin[i] - light->radius;
				maxs[i] = light->origin[i] + light->radius;
			}
			if (R_CullRadius(light->origin, light->radius)) {
				//Con_DPrintf("Light was culled"); 
				continue;
			}
			//	reset light's dynamic shadows
			light->nextdynamicshadowvolume = NULL;
			r_contributinglights[r_contributinglightscount ] = light;
			r_contributinglightscount++;
		}
		
		// mark the shadow data // doesnt help shit
/*		mshadowdata_t *shadowdata = lightdata->shadowdata;
		while(shadowdata) {
			shadowdata->volume->visframe = r_framecount;
			shadowdata = shadowdata->nextshadow;
		}
*/		
		// touch the surfaces
/*		mark = pleaf->firstmarksurface;
		c = pleaf->nummarksurfaces;

		if (c) {
			do {
				(*mark)->litframe = r_litframecount;
				mark++;
			} while (--c);
		}
*/		
		
		
		// next lightdata
		lightdata = lightdata->nextlight;
	}

}

/*
==================
R_NormalizeLightStyles
==================
*/
void R_NormalizeLightStyle(int j)
{
	int			i, max;
	float 		scale;
	if (!cl_lightstyle[j].length) {
		return;
	}
	max = 0;
	for(i=0; i<cl_lightstyle[j].length; i++) {
		if (cl_lightstyle[j].map[i] > max) {
			max = (cl_lightstyle[j].map[i] - 'a') * 22;
		}
	}
	if (max > 0) {
		scale = 512.0f / ((float) max);
		for(i=0; i<cl_lightstyle[j].length; i++) {
			float value = ((float) (cl_lightstyle[j].map[i] - 'a')) * scale;
			cl_lightstyle[j].map[i] = ceilf(value) + 'a' ;
		}
	}
}

/*
==================
R_NormalizeLightStyles
==================
*/
void R_NormalizeLightStyles(void)
{
	int			j;
	for (j=0 ; j<MAX_LIGHTSTYLES ; j++) {
		R_NormalizeLightStyle(j);
	}
}




/*
==================
R_AnimateLight
==================
*/
void R_AnimateLight (void)
{
	int			i,j,k;
	
//
// light animations
// 'm' is normal light, 'a' is no light, 'z' is double bright
	i = (int)(cl.time*10);
	for (j=0 ; j<MAX_LIGHTSTYLES ; j++)
	{
		if (!cl_lightstyle[j].length)
		{
			d_lightstylevalue[j] = 512;
			continue;
		}
		k = i % cl_lightstyle[j].length;
		k = cl_lightstyle[j].map[k] - 'a';
		k = k*22;
		d_lightstylevalue[j] = k;
	}	
}


/*
=============================================================================

DYNAMIC LIGHTS

=============================================================================
*/

/*
=============
R_MarkLights
=============
*/
/*void R_MarkLights (dlight_t *light, int bit, mnode_t *node)
{
	mplane_t	*splitplane;
	float		dist;
	msurface_t	*surf;
	int			i;
	
	if (node->contents < 0)
		return;

	splitplane = node->plane;
	dist = DotProduct (light->origin, splitplane->normal) - splitplane->dist;
	
	if (dist > light->radius)
	{
		R_MarkLights (light, bit, node->children[0]);
		return;
	}
	if (dist < -light->radius)
	{
		R_MarkLights (light, bit, node->children[1]);
		return;
	}
		
// mark the polygons
	surf = cl.worldmodel->surfaces + node->firstsurface;
	for (i=0 ; i<node->numsurfaces ; i++, surf++)
	{
		if (surf->dlightframe != r_dlightframecount)
		{
			surf->dlightbits = 0;
			surf->dlightframe = r_dlightframecount;
			surf->num_dlightnums = 0; // DRS: also reset number of hw lights
		}
		surf->dlightbits |= bit;
	}
	R_MarkLights (light, bit, node->children[0]);
	R_MarkLights (light, bit, node->children[1]);
}
*/

int R_CountSurfaces(mnode_t *node)
{
	int num_count = 0;
	
	if (node->contents < 0)
		return num_count;

	num_count += node->numsurfaces;

	num_count += R_CountSurfaces(node->children[0]);
	num_count += R_CountSurfaces(node->children[1]);
	return num_count;
}


/*
=============
R_PushDlights
=============
*/
void R_PushDlights (void)
{
	int		i;
	dlight_t	*l;

	r_dlightframecount = r_framecount + 1;	// because the count hasn't
											//  advanced yet for this frame
	l = cl_dlights;

	// DRS
//	num_nodes_processed = 0;

//	i = 0;
//	R_MarkLights (l, 1<<i, cl.worldmodel->nodes );
	
//	Con_Printf("clnum: %d \n", R_CountSurfaces(cl.worldmodel->nodes));
	for (i=0 ; i<MAX_DLIGHTS ; i++, l++)
	{
		if (l->die < cl.time || !l->radius)
			continue;
//		R_MarkLights ( l, 1<<i, cl.worldmodel->nodes );
	}
}


/*
=============================================================================

LIGHT SAMPLING

=============================================================================
*/
/*
mplane_t		*lightplane;
vec3_t			lightspot;

int RecursiveLightPoint (mnode_t *node, vec3_t start, vec3_t end)
{
	int			r;
	float		front, back, frac;
	int			side;
	mplane_t	*plane;
	vec3_t		mid;
	msurface_t	*surf;
	int			s, t, ds, dt;
	int			i;
	mtexinfo_t	*tex;
	byte		*lightmap;
	unsigned	scale;
	int			maps;

	if (node->contents < 0)
		return -1;		// didn't hit anything
	
// calculate mid point

// FIXME: optimize for axial
	plane = node->plane;
	front = DotProduct (start, plane->normal) - plane->dist;
	back = DotProduct (end, plane->normal) - plane->dist;
	side = front < 0;
	
	if ( (back < 0) == side)
		return RecursiveLightPoint (node->children[side], start, end);
	
	frac = front / (front-back);
	mid[0] = start[0] + (end[0] - start[0])*frac;
	mid[1] = start[1] + (end[1] - start[1])*frac;
	mid[2] = start[2] + (end[2] - start[2])*frac;
	
// go down front side	
	r = RecursiveLightPoint (node->children[side], start, mid);
	if (r >= 0)
		return r;		// hit something
		
	if ( (back < 0) == side )
		return -1;		// didn't hit anuthing
		
// check for impact on this node
	VectorCopy (mid, lightspot);
	lightplane = plane;

	surf = cl.worldmodel->surfaces + node->firstsurface;
	for (i=0 ; i<node->numsurfaces ; i++, surf++)
	{
		if (surf->flags & SURF_DRAWTILED)
			continue;	// no lightmaps

		tex = surf->texinfo;
		
		s = DotProduct (mid, tex->vecs[0]) + tex->vecs[0][3];
		t = DotProduct (mid, tex->vecs[1]) + tex->vecs[1][3];;

		if (s < surf->texturemins[0] ||
		t < surf->texturemins[1])
			continue;
		
		ds = s - surf->texturemins[0];
		dt = t - surf->texturemins[1];
		
		if ( ds > surf->extents[0] || dt > surf->extents[1] )
			continue;

		if (!surf->samples)
			return 0;

		ds >>= 4;
		dt >>= 4;

		lightmap = surf->samples;
		r = 0;
		if (lightmap)
		{

			lightmap += dt * ((surf->extents[0]>>4)+1) + ds;

			for (maps = 0 ; maps < MAXLIGHTMAPS && surf->styles[maps] != 255 ;
					maps++)
			{
				scale = d_lightstylevalue[surf->styles[maps]];
				r += *lightmap * scale;
				lightmap += ((surf->extents[0]>>4)+1) *
						((surf->extents[1]>>4)+1);
			}
			
			r >>= 8;
		}
		
		return r;
	}

// go down back side
	return RecursiveLightPoint (node->children[!side], mid, end);
}
*/
// TODO: remove
int R_LightPoint (vec3_t p)
{
	return 255;
/*	vec3_t		end;
	int			r;
	
	if (!cl.worldmodel->lightdata)
		return 255;
	
	end[0] = p[0];
	end[1] = p[1];
	end[2] = p[2] - 2048;
	
	r = RecursiveLightPoint (cl.worldmodel->nodes, p, end);
	
	if (r == -1)
		r = 0;

	return r;*/
}

