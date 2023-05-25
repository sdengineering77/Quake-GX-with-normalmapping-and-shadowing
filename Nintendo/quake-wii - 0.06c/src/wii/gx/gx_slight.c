/*
Copyright (C) 2009 Danny Sedney (DRS)

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
#include <math.h>
#include <system.h>

#define NUM_SHADOWDATA		2*65536	
#define NUM_LIGHTDATA			32768	

// shadow volumes that hit the leaf
mshadowdata_t 	s_shadowdata[NUM_SHADOWDATA];
int						s_numshadowdata;
// lights that lit the leaf
mlightdata_t		s_lightdata[NUM_LIGHTDATA];
int 						s_numlightdata;


int metric_litnode = 0;
int metric_touchnode = 0;
int metric_marksurfaces = 0;
int metric_numsurfreal = 0;
int metric_numvolumes = 0;
int metric_removedvolumes = 0;
int metric_linkedlights = 0;
int metric_unlinkedlights = 0;
int metric_linkedshadows = 0;



/*
=============
CL_LinkLeaf()
Links leaf to surfaces
Call with clworldmodel
=============
*/
/*
void CL_LinkLeaf(mleaf_t *leaf, mnode_t *node) {
	int				c, side;
	Vector 			leaforg;
	mplane_t		*plane;
	msurface_t	*surf;
	double			dot;

	if (node->contents == CONTENTS_SOLID)
		return;		// solid

	// surfaces in leaf have been marked already
	if (node->contents < 0)
		return;

// node is just a decision point, so go down the apropriate sides

// find which side of the node we are on
	plane = node->plane;

	guVecAdd((Vector *)&leaf->minmaxs[0], (Vector *)&leaf->minmaxs[3], &leaforg);
	guVecScale(&leaforg, &leaforg, 0.5f);


	switch (plane->type)
	{
	case PLANE_X:
		dot = leaforg.x - plane->dist;
		break;
	case PLANE_Y:
		dot = leaforg.y - plane->dist;
		break;
	case PLANE_Z:
		dot = leaforg.z - plane->dist;
		break;
	default:
		dot = guVecDotProduct (&leaforg, (Vector *)plane->normal) - plane->dist;
		break;
	}

	if (dot >= 0)
		side = 0;
	else
		side = 1;

// recurse down the children, front side first
	CL_LinkLeaf(leaf, node->children[side]);

// draw stuff
	c = node->numsurfaces;

	if (c)	{
		surf = cl.worldmodel->surfaces + node->firstsurface;

		if (dot < 0 -BACKFACE_EPSILON)
			side = SURF_PLANEBACK;
		else if (dot > BACKFACE_EPSILON)
			side = 0;

		for ( ; c ; c--, surf++) {
			if (surf->visframe != r_framecount)
				continue;

			// backface
			if ( ( (dot < 0) ^ !!(surf->flags & SURF_PLANEBACK)) )
				continue;		// wrong side
			// ok, the leaf must be linked
			if (surf->leaf) {
//				Con_DPrintf("Already linked!!! %p %p\r\n", surf->leaf, leaf);
			}
			surf->leaf = leaf;
		}

	}

// recurse down the back side
	CL_LinkLeaf(leaf, node->children[!side]);

}
*/
/*
=============
CL_LinkLeafs()
Links leafs to surfaces
=============
*/
/*void CL_LinkLeafs() {
	int i, c;
	msurface_t **mark;

	for (i=0 ; i<cl.worldmodel->numleafs ; i++)	{
//		r_framecount++;
		mleaf_t *pleaf = &cl.worldmodel->leafs[i+1];
		
		// mark the surfaces in this leaf
		mark = pleaf->firstmarksurface;
		c = pleaf->nummarksurfaces;
		
		if (c) {
			do {
//				(*mark)->visframe = r_framecount;
				(*mark)->leaf = pleaf;
				mark++;
			} while (--c);
		}
		
		// mark the surfaces that face the leaf's center
//		CL_LinkLeaf(pleaf, cl.worldmodel->nodes);
	}
	
}

*/
/*
void TestLinks(void) {
	int i, c;
	msurface_t **mark;

	for (i=0 ; i<cl.worldmodel->numleafs ; i++)	{
		r_framecount++;
		mleaf_t *pleaf = &cl.worldmodel->leafs[i];
		
		// mark the surfaces in this leaf
		mark = pleaf->firstmarksurface;
		c = pleaf->nummarksurfaces;
		
		if (c) {
			do {
				if (!(*mark)->leaf) {
					Con_DPrintf("MIS: Leaf %i surfnum %i\r\n", i, c);
				}
				mark++;
			} while (--c);
		}
	}	
}
*/

dlight_t *dbglt = NULL;

mlightdata_t *S_AllocLightData(dlight_t *light, float attenuation) {
	mlightdata_t	*newdata = NULL;
	// alloc lightdata
	if (s_numlightdata < NUM_LIGHTDATA) {
		newdata = &s_lightdata[s_numlightdata];
		memset(newdata, 0x00, sizeof(mlightdata_t));
		newdata->light = light;
		newdata->attenuation = attenuation;
		s_numlightdata++;
	} else {
		Con_DPrintf("S_LinkLightData: Out of lightdata entries");
	}
	return newdata;
}

/*
=============
S_SurfaceLightData()
=============
*/
void S_SurfaceLightData(msurface_t *surface, dlight_t *light, float attenuation) {
	msurfacelight_t	*lightdata = &surface->lightdata[0];
	
	if (attenuation > 0.07f) {

		int i;
		for (i=0; i<surface->numstaticlights; i++) {
			if (lightdata[i].light == light) {
				return;
			}
		}

		if (surface->numstaticlights < MAX_SURFLIGHTS) {
			lightdata[surface->numstaticlights].light = light;
			lightdata[surface->numstaticlights].attenuation= attenuation;
			surface->numstaticlights++;
		}	else {
			// find the least significant light			
			msurfacelight_t 	*replace = &lightdata[0];
			for (i=0; i<MAX_SURFLIGHTS; i++) {
				if (replace->attenuation > lightdata[i].attenuation) {
					replace = &lightdata[i];
				}
			}
			if (attenuation > replace->attenuation) {
				replace->light = light;
				replace->attenuation = attenuation;
			}
		}
	}
	
	
/*	if (!lightdata) {
		surface->lightdata = S_AllocLightData(light, attenuation);
	} else {
		// add to tail
//		while(lightdata->nextlight) {
		while(lightdata) {
// TODO make quick
			if (lightdata->light == light) 
				break; // return;
// TODO: remove and uncomment assignment below
			if (!lightdata->nextlight) {
				lightdata->nextlight = S_AllocLightData(light, attenuation);
				break;
			}
			lightdata = lightdata->nextlight;
		}
//		lightdata->nextlight = newdata;
	}*/
	
}

/*
============
S_BoxCullSurface()
Returns true if surface is culled out
============
*/
qboolean	S_BoxCullSurface(dlight_t *light, msurface_t *surf) {
	int i;
	float radius = light->radius;
	Vector *origin = (Vector *) &light->origin[0];
	glpoly_t *poly = surf->polys;
	float *v = poly->verts[0];
	int num = poly->numverts;
	for (i=0; i<num; i++, v+=VERTEXSIZE) {
		Vector delta;
		guVecSub((Vector *) &v[0], origin, &delta);
		// in range?
		if (fabs(delta.x) < radius &&
			fabs(delta.y) < radius &&
			fabs(delta.z) < radius) {
			// yes
			return false;
		}
	}
	return true;
}


/*
===============
CheckSide
takes one point and three triangle points, calculates cross and checks if point on the right.
===============
*/
qboolean CheckSide(Vector *p1, Vector *a, Vector *b, Vector *c) {
    Vector cross1, cross2, ba, p1a, ca;
	
	guVecSub(b,  a, &ba);
	guVecSub(c,  a, &ca);
	guVecSub(p1, a, &p1a);

    guVecCross(&ba, &ca,  &cross2);
	guVecCross(&ba, &cross2, &cross1);
	
	return guVecDotProduct(&cross1, &p1a) <= 0; 
}


/*
===============
CL_IsInTriangleFanBounds
===============
*/
qboolean CL_IsInTriangleFanBounds(dlight_t *light, msurface_t *surf) {
	Vector v1, v2, v3, o;
	int i;

	float *v = surf->polys->verts[0];

	o.x = light->origin[0];
	o.y = light->origin[1];
	o.z = light->origin[2];
	v1.x = v[0];
	v1.y = v[1]; 
	v1.z = v[2];
	v += VERTEXSIZE;
	for (i=1 ; i<surf->polys->numverts-1 ; i++, v+= VERTEXSIZE) {
		v2.x = v[0];
		v2.y = v[1];
		v2.z = v[2];
		v3.x = v[VERTEXSIZE + 0];
		v3.y = v[VERTEXSIZE + 1];
		v3.z = v[VERTEXSIZE + 2];
		if (!(CheckSide(&o, &v1, &v2, &v3) && 
			  CheckSide(&o, &v2, &v3, &v1) && 
			  CheckSide(&o, &v3, &v1, &v2))) {
			return false;
		}
	}
	return true;

}

/*
===============
CL_CalcAvVertDistance
Calculates an average vector based distance. Cannot be used for perpendicular distance to surface
===============
*/
float CL_CalcAvVertDistance(dlight_t *light, msurface_t *surf) {
	int i;
	float *v = surf->polys->verts[0];
	float x = 0, y = 0, z = 0, mostClose = 10000000000.0f;
	
	if (!surf->polys->numverts) {
		return mostClose; // shouldn't happen, but just make it far away
	}
	
	if (CL_IsInTriangleFanBounds(light, surf)) {
		return fabs(DotProduct (light->origin, surf->plane->normal) - surf->plane->dist);
	}
	
	for (i=0 ; i<surf->polys->numverts ; i++, v+= VERTEXSIZE) {
		x = (v[0] - light->origin[0]);
		y = (v[1] - light->origin[1]);
		z = (v[2] - light->origin[2]);
		float dist = x*x + y*y + z*z;
		if (dist < mostClose) {
			mostClose = dist; 
		}
		
	}
	
	return sqrt(mostClose); 

}


/*
============
S_TouchSurfaces()
Returns true if surface is culled out
============
*/
void S_TouchSurfaces(void) {
	int i, c;
	msurface_t **mark;

	for (i=0 ; i<cl.worldmodel->numleafs ; i++)	{
		mleaf_t *pleaf = &cl.worldmodel->leafs[i+1];
		
		mlightdata_t *ld = pleaf->lightdata;
		while(ld) {
			// mark the surfaces in this leaf
			dlight_t 	*light = ld->light;
			mark = pleaf->firstmarksurface;
			c = pleaf->nummarksurfaces;
			
			if (c) {
				do {
					msurface_t *s = (*mark);
					mark++;
					if (!S_BoxCullSurface(light, s)) {
						// is this surface backward
						mplane_t *plane = s->plane;
						float dist = guVecDotProduct ((Vector *) light->origin, (Vector *) plane->normal) - plane->dist;

						if (((dist < 0) ^ !!(s->flags & SURF_PLANEBACK))) {
							continue;		// wrong side
						}
						// DRS TODO include underwater surfaces
						if (!(s->flags & (SURF_UNDERWATER|SURF_DRAWSKY|SURF_DRAWTURB))) {
							float attenuation = 1 - powf(CL_CalcAvVertDistance(light, s), 2)/powf(light->radius, 2);
							S_SurfaceLightData(s, light, attenuation);
						}
					}
				
				} while (--c);
			}
			ld = ld->nextlight;
		}
	}	
}

/*
=============
S_ClearLightData()
=============
*/
void S_ClearLightData() {
	s_numlightdata = 0;
	s_numshadowdata = 0;
}

// light stuff

/*
=============
S_CountLightsInLeaf()
=============
*/
int S_CountLightsInLeaf(mleaf_t *leaf) {
	int count = 0;
	if (leaf->lightdata == NULL) return count;

	mlightdata_t 	*lightdata = leaf->lightdata;
	while(lightdata) {
		count++;
		lightdata = lightdata->nextlight;
	}
Con_DPrintf("num lights in leaf: %i ", count);	
	return count;
}



/*
=============
S_LinkLightData()
=============
*/
void S_LinkLightData(mleaf_t *leaf, dlight_t *light, float attenuation) {
	mlightdata_t	*newdata = NULL;
	mlightdata_t 	*lightdata = leaf->lightdata;
	
	// alloc lightdata
	if (s_numlightdata < NUM_LIGHTDATA) {
		newdata = &s_lightdata[s_numlightdata];
		memset(newdata, 0x00, sizeof(mlightdata_t));
		newdata->light = light;
		newdata->attenuation = attenuation;
		s_numlightdata++;
	} else {
		Con_DPrintf("S_LinkLightData: Out of lightdata entries");
		return;
	}

	// add to head?
	if (!lightdata) {
		leaf->lightdata = newdata;
		return;
	}
	// add to tail
	while(lightdata->nextlight) {
		lightdata = lightdata->nextlight;
	}
	lightdata->nextlight = newdata;
}


/*
=============
S_UnlinkLightData()
TODO might be usefull to apply full allocation model so deleted ones can be reused
=============
*/
void S_UnlinkLightData(mleaf_t *leaf, dlight_t *light) {
	mlightdata_t *lightdata = leaf->lightdata;
	mlightdata_t *prevdata = NULL;
	// head?
	if (light == lightdata->light) {
		leaf->lightdata = lightdata->nextlight;
		return;
	} else {
		prevdata = lightdata;
		lightdata = lightdata->nextlight;
	}
	
	// find lightdata
	while(lightdata) {
		if (light == lightdata->light) {
			prevdata->nextlight = lightdata->nextlight;
			// TODO: delete shadowchain
			return;
		}
		lightdata = lightdata->nextlight;
	}
}

/*
=============
S_LightData()
Lightdata must be available
=============
*/
mlightdata_t 	*S_LightData(mleaf_t *leaf, dlight_t *light) {
	mlightdata_t *lightdata = leaf->lightdata;
	// find lightdata
	while(lightdata) {
		if (light == lightdata->light) {
			return lightdata;
		}
		lightdata = lightdata->nextlight;
	}

	return NULL;
}

/*
=============
S_LinkShadowData()
=============
*/
void S_LinkShadowData(mleaf_t *leaf, dlight_t *light, shadowvol_t *vol) {
	mshadowdata_t	*newdata = NULL;
	// find lightdata for given light
//Con_DPrintf("shadowdata leaf %p\r\n", leaf);	
	mlightdata_t *lightdata = S_LightData(leaf, light);
	if (lightdata) {
		mshadowdata_t 	*shadowdata = lightdata->shadowdata;
		
		// alloc shadowdata
		if (s_numshadowdata < NUM_SHADOWDATA) {
			newdata = &s_shadowdata[s_numshadowdata];
			memset(newdata, 0x00, sizeof(mshadowdata_t));
			newdata->nextshadow = NULL;
			newdata->volume = vol;
			s_numshadowdata++;
		} else {
			Con_DPrintf("S_LinkShadowData: Out of shadowdata entries");
			return;
		}

		// add to head?
		if (!shadowdata) {
			lightdata->shadowdata = newdata;
			return;
		}
		// add to tail
		while(shadowdata->nextshadow) {
			shadowdata = shadowdata->nextshadow;
		}
		shadowdata->nextshadow = newdata;
	}
}



/*
=============
S_BoxInRange()
Simple box check
TODO: handle minsmaxs correctly (negative delta values must take maxs)
=============
*/
qboolean S_BoxInRange(Vector *mins, Vector *maxs, Vector *origin, float radius) {
	Vector delta1, delta2, rad;
	rad.x = rad.y =rad.z = radius;
	guVecSub(origin, mins, &delta2);

	guVecSub(maxs, mins, &delta1);
	guVecAdd(&rad, &delta1, &delta1);
	guVecSub(&delta1, &delta2, &delta1);
	
	guVecAdd(&delta2, &rad, &delta2);
	
	// delta2 >= -radius -> delta2 + radius >= 0 
	
	// delta2.x <= delta1.x + radius -> delta1 + radius - delta2 >=0 --> delta1 >= 0
	
	if ((	delta2.x >= 0 && delta1.x >= 0 && 
			delta2.y >= 0 && delta1.y >= 0 && 
			delta2.z >= 0 && delta1.z >= 0 )) {
		return true;
	}
//	if ((	delta2.x >= -radius && delta2.x <= delta1.x + radius && 
//			delta2.y >= -radius && delta2.y <= delta1.y + radius && 
//			delta2.z >= -radius && delta2.z <= delta1.z + radius )) {
//		return true;
//	}
	return false;
}

qboolean show = false;
int			radiushack = 0;
/*
============
S_SqLengthOriginToBox()
Returns a point from minsmaxs that is most close to the origin
============
*/
float S_SqLengthOriginToBox(Vector *mins, Vector *maxs, Vector *origin) {
	// minsmax box has 6 faces. The distance to each face is calculated.
	// negatives are thrown away. The at most, 3 remaining distances result
	// in squared length to origin.
	int i;
	float distsq = 0;
	Vector delta;
	Vector	point[6], normals[6];
	// left side
	point[0].x = mins->x;
	point[0].y = mins->y;
	point[0].z = mins->z;
	
	// back side
	point[1].x = mins->x;
	point[1].y = maxs->y;
	point[1].z = mins->z;

	// right side
	point[2].x = maxs->x;
	point[2].y = maxs->y;
	point[2].z = mins->z;

	// front side
	point[3].x = maxs->x;
	point[3].y = mins->y;
	point[3].z = mins->z;

	// bottom side (same as front)
	point[4].x = maxs->x;
	point[4].y = mins->y;
	point[4].z = mins->z;

	// top side (same as front, but z on maxs)
	point[5].x = maxs->x;
	point[5].y = mins->y;
	point[5].z = maxs->z;
	
	// lt, bk, rt, fr, bt, tp
	guVecSub(&point[0], &point[3], &normals[0]);
	guVecSub(&point[1], &point[0], &normals[1]);
	guVecSub(&point[3], &point[0], &normals[2]);
	guVecSub(&point[0], &point[1], &normals[3]);
	guVecSub(&point[4], &point[5], &normals[4]);
	guVecSub(&point[5], &point[4], &normals[5]);
	
char sprintfbuf[4096];	
sprintfbuf[0] = 0;	
	for(i=0; i<6; i++) {
		float dist;
		// normalize
		guVecNormalize(&normals[i]);
		// delta
		guVecSub(origin, &point[i], &delta);
		// dist
		dist = guVecDotProduct(&delta, &normals[i]);
//if (show) {
	sprintf(&sprintfbuf[strlen(sprintfbuf)], "normal %5.1f %5.1f %5.1f ", normals[i].x, normals[i].y, normals[i].z);
	sprintf(&sprintfbuf[strlen(sprintfbuf)], "point. %5.1f %5.1f %5.1f ", point[i].x, point[i].y, point[i].z);
	sprintf(&sprintfbuf[strlen(sprintfbuf)], "origin %5.1f %5.1f %5.1f\r\n", origin->x, origin->y, origin->z);
	sprintf(&sprintfbuf[strlen(sprintfbuf)], "delta. %5.1f %5.1f %5.1f ", delta.x, delta.y, delta.z);
	sprintf(&sprintfbuf[strlen(sprintfbuf)], "dist. %5.1f\r\n", dist);
//}
		if (dist > 0) {
			distsq += powf(dist, 2);
		} 
	}
	
	if (show || sqrtf(distsq) < radiushack) {
//		Con_DPrintf("%s TOTAL DIST TO VIEWLEAF %5.1f %5.1f\r\n", sprintfbuf, distsq, sqrtf(distsq));
	}
	
	return distsq;	
}


/*
============
S_TouchLeaf()
Adds light to leaf affected by light. It registers an attenuation
since the number of lights in a leaf is limited
============
*/
qboolean S_TouchLeaf(mleaf_t *leaf, dlight_t *light) {
	// if light in viewleaf attenuation is 1, otherwise attenuation is calculated
	// against the leaf's center point
	float attenuation;
	// determine attenuation
	float lengthsq;
radiushack = light->radius;
	lengthsq = S_SqLengthOriginToBox((Vector *) &leaf->minmaxs[0], (Vector *)&leaf->minmaxs[3], (Vector *) &light->origin[0]);
	attenuation = 1 - lengthsq/powf(light->radius, 2);
if (attenuation > 0.0f) {
//Con_DPrintf("attenuation %5.2f leaf %p\r\n", attenuation, leaf);	
}
	// check if it contributes
	if (attenuation > 0.07f) {
		metric_touchnode++;
		// TODO: dynamic lights must be handled differently
/*		if (S_CountLightsInLeaf(leaf) >= MAX_STATICLIGHTS) {
			// replace registered one with lowest attenuation if applicable
			mlightdata_t 	*replace = leaf->lightdata;
			mlightdata_t 	*lightdata = leaf->lightdata;
			while(lightdata) {
				if (lightdata->attenuation < replace->attenuation) {
					replace = lightdata;
				}
				lightdata = lightdata->nextlight;
			}
			// ok to replace?
			if (attenuation > replace->attenuation) {
				S_UnlinkLightData(leaf, replace->light);
				S_LinkLightData(leaf, light, attenuation);
				metric_linkedlights++;
				
//				replace->light = light;
//				replace->attenuation = attenuation;
//Con_DPrintf("replaced attenuation %5.2f leaf %p\r\n", attenuation, leaf);	
				return true;
			}
		} else */{ 
			// add one
			S_LinkLightData(leaf, light, attenuation);
			metric_linkedlights++;
//Con_DPrintf("added attenuation %5.2f leaf %p\r\n", attenuation, leaf);	
			return true;
		}
	}	
	return false;
}




/*
============
S_CreateVolumes()
Creates volumes for marked surfaces (call with cl_worldmodel as param)
============
*/
void S_CreateVolumes(dlight_t *light, mnode_t *node) {
	int			c, side;
	mplane_t	*plane;
	msurface_t	*surf;
	double		dot;
	
	// skip solid leafs
	if (node->contents == CONTENTS_SOLID)
		return;		// solid

	// visframe?
	if (node->visframe != r_visframecount)
		return;

	// skip leaf node, since all surfaces have been marked already
	if (node->contents < 0) {
		return;	
	}

	// find which side of the node we are on
	plane = node->plane;

	switch (plane->type)
	{
	case PLANE_X:
		dot = light->origin[0] - plane->dist;
		break;
	case PLANE_Y:
		dot = light->origin[1] - plane->dist;
		break;
	case PLANE_Z:
		dot = light->origin[2] - plane->dist;
		break;
	default:
		dot = DotProduct (light->origin, plane->normal) - plane->dist;
		break;
	}

	// if dot > 0 the nodes of side 0 are in front
	if (dot >= 0)
		side = 0;
	else
		side = 1;

	// recurse down the children, front side first
	S_CreateVolumes(light, node->children[side]);

	// all children in front have been processed, so this one can be add to the shadow chain now
	c = node->numsurfaces;

	if (c) {
		surf = cl.worldmodel->surfaces + node->firstsurface;

		if (dot < -BACKFACE_EPSILON)
			side = SURF_PLANEBACK;
		else if (dot > BACKFACE_EPSILON)
			side = 0;

		for ( ; c ; c--, surf++)	{
			// surface not marked or backfaced?
			if (surf->visframe != r_framecount || ((dot < 0) ^ !!(surf->flags & SURF_PLANEBACK))) {
				continue;		// wrong side
			}
			// DRS TODO include underwater surfaces
			if (!(surf->flags & (SURF_UNDERWATER|SURF_DRAWSKY | SURF_DRAWTURB))) {
//				S_SurfaceLightData(surf, light, 1);
				metric_numsurfreal++;
				// this surface is lit
				if (UT_AddShadowVolume(light, surf)) {
					metric_numvolumes++;
				}
			}
		}
	}

	// recurse down the back side
	S_CreateVolumes(light, node->children[!side]);

}


/*
============
S_MarkLitSurfaces()
============
*/
void S_MarkLitSurfaces(mleaf_t *pleaf, dlight_t *light) {
	// this marks the node. While traversing the bsp this
	// leads to more nodes being blocked and thus better
	// performance
	mnode_t *node = (mnode_t *) pleaf;
	do {
		if (node->visframe == r_visframecount)
			break;
		// now start marking the leafs
		node->visframe = r_visframecount;		
		node = node->parent;
	} while (node);

	msurface_t **mark = pleaf->firstmarksurface;
	int c = pleaf->nummarksurfaces;

	if (c) {
		do {
			msurface_t *s = (*mark);
			mark++;
			if (S_BoxCullSurface(light, s) || s->visframe == r_framecount) {
				continue;
			}
			metric_marksurfaces++;
			s->visframe = r_framecount;
			
		} while (--c);
	}

}


/*
============
S_ShadowCullLeaf()
Returns 2 when bounding box completely outside volume
Returns 1 when bounding box partly outside volume
Returns 0 when bounding box inside volume
============
*/
/*
int S_ShadowCullLeaf(shadowvol_t *vol, mleaf_t *leaf) {
	int i;
	int outsides = 0;
	// calculate frontcap normal
	Vector *verts[3], t, b;
	vec3_t capnormal;
	shadowvolfrag_t *currfrag;
	currfrag = vol->nextfrag;
	for(i=0; i<3; i++, currfrag = currfrag->nextfrag) {
		verts[i] = &currfrag->near;
if (dbglt) {
	Con_DPrintf("cull leaf volume vert %5.1f %5.1f %5.1f\r\n", verts[i]->x, verts[i]->y, verts[i]->z);
}		
	}
	guVecSub(verts[2], verts[1], &t);
	guVecSub(verts[1], verts[0], &b);	
	guVecCross(&t, &b, (Vector *) &capnormal);
	guVecNormalize((Vector *) &capnormal);
if (dbglt) {
	Con_DPrintf("normal %5.2f %5.2f %5.2f\r\n", capnormal[0], capnormal[1], capnormal[2]);
}		

	// leaf's minmaxs
	float 	*emins = (float *) &leaf->minmaxs[0];
	float 	*emaxs = (float *) &leaf->minmaxs[3];
if (dbglt) {
	Con_DPrintf("mins %5.1f %5.1f %5.1f\r\n", emins[0], emins[1], emins[2]);
	Con_DPrintf("maxs %5.1f %5.1f %5.1f\r\n", emaxs[0], emaxs[1], emaxs[2]);
}		
	
	// check leaf is located behind the surface, if not it is outside
	Vector delta;
	vec3_t corner;
if (dbglt) {
	Con_DPrintf("corner xyz ");
}
	for (i=0 ; i<3 ; i++) {
		if (capnormal[i] > 0) {
			corner[i] = emins[i];
		} else {
			corner[i] = emaxs[i];
		}
if (dbglt) {
	Con_DPrintf("%5.1f ", corner[i]);
}		
	}
if (dbglt) {
	Con_DPrintf("\r\n");
}	
	guVecSub((Vector *) &corner, verts[1], &delta);
	float tmp = guVecDotProduct(&delta, (Vector *) &capnormal);
if (dbglt) {
	Con_DPrintf("delta %5.1f %5.1f %5.1f dp %5.2f exit %i\r\n", delta.x, delta.y, delta.z, tmp, (tmp >= -1.0f));
}		
	if (tmp >= -1.0f) {
//Con_DPrintf("not in front - ");	
		return 2;
	} 
	
	// check each of the volume's planes
	currfrag = vol->nextfrag;
	while(currfrag) {
		// partly taken from boxonplaneside
		vec3_t	corners[2];
		float dist1, dist2;

		// the leaf that contains the surface that produces this volume
		// cannot contribute in this calc, since the surface is always
		// located at the leaf's boundary and the volume always faces
		// outward. Therefore, if a frontcap point is located inside the box,
		// the calc is terminated and 2 is returned
		if (S_BoxInRange((Vector *) emins, (Vector *) emaxs, &currfrag->near, 1.0f)) {
if (dbglt) {
Con_DPrintf("exit 2 due vert in box ");
}		
			return 2;
		}

if (dbglt) {
	Con_DPrintf("currfrag normal %5.2f %5.2f %5.2f near %5.1f %5.1f %5.1f\r\n", 
		currfrag->normal.x, currfrag->normal.y, currfrag->normal.z,
		currfrag->near.x, currfrag->near.y, currfrag->near.z);

Con_DPrintf("corners xyz ");
}		
		
		float 	*normal = (float *) &currfrag->normal;
		for (i=0 ; i<3 ; i++) {
			if (normal[i] < 0) {
				corners[0][i] = emins[i];
				corners[1][i] = emaxs[i];
			} else {
				corners[1][i] = emins[i];
				corners[0][i] = emaxs[i];
			}
if (dbglt) {
	Con_DPrintf("(1) %5.1f (2) %5.1f ", corners[0][i], corners[1][i]);
}		
		}
if (dbglt) {
	Con_DPrintf("\r\n");
}	
		
		guVecSub((Vector *) &corners[0], &currfrag->near, &delta); 
		dist1 = guVecDotProduct(&delta, &currfrag->normal);

if (dbglt) {
	Con_DPrintf("delta %5.1f %5.1f %5.1f dp %5.2f \r\n", delta.x, delta.y, delta.z, dist1);
}		

		guVecSub((Vector *) &corners[1], &currfrag->near, &delta); 
		dist2 = guVecDotProduct(&delta, &currfrag->normal);
if (dbglt) {
	Con_DPrintf("delta %5.1f %5.1f %5.1f dp %5.2f \r\n", delta.x, delta.y, delta.z, dist2);
}		
		
		if (dist1 >= 0.5f && dist2 >= 0.5f) {
if (dbglt) {
	Con_DPrintf("exit 2\r\n");
}		
			outsides = 2;
			break; // clean huh
		} else 
		if (dist1 >= 0.5f || dist2 >= 0.5f) {
if (dbglt) {
	Con_DPrintf("exit 1\r\n");
}		
			outsides = 1;
		}
		currfrag = currfrag->nextfrag;
	}
	return outsides;
}
*/


/*
===============
S_PointInVolume()
Returns the volume the point is found in, which is either the
volume passed, or one of its neighbours. If it is outside NULL
is returned
===============
*/
shadowvol_t * S_PointInVolume(shadowvol_t *vol, Vector *point) {
	if (vol->visframe != r_framecount) {
		vol->visframe = r_framecount;
		// check point behind frontcap
		// calculate frontcap normal
		int i;
		Vector *verts[3], capnormal, delta, t, b;
		shadowvolfrag_t *currfrag;
		currfrag = vol->nextfrag;
		for(i=0; i<3; i++, currfrag = currfrag->nextfrag) {
			verts[i] = &currfrag->near;
//			if (dbglt) {
//				Con_DPrintf("cull leaf volume vert %5.1f %5.1f %5.1f\r\n", verts[i]->x, verts[i]->y, verts[i]->z);
//				Con_DPrintf("currfrag %p currfrag->next %p\r\n", currfrag, currfrag->nextfrag);
//			}		
		}
		guVecSub(verts[2], verts[1], &t);
		guVecSub(verts[1], verts[0], &b);	
		guVecCross(&t, &b, &capnormal);
		guVecNormalize(&capnormal);
	
		guVecSub(point, verts[1], &delta);
		if (guVecDotProduct(&delta, (Vector *) &capnormal) > 1.0f) {
			return NULL;
		}
		
		// check this volume
		shadowvol_t *inside = vol;
		currfrag = vol->nextfrag;
		while(currfrag) {
			float dist;
			Vector delta;
			if (dbglt) {
				Con_DPrintf("currfrag normal %5.2f %5.2f %5.2f near %5.1f %5.1f %5.1f\r\n", 
					currfrag->normal.x, currfrag->normal.y, currfrag->normal.z,
					currfrag->near.x, currfrag->near.y, currfrag->near.z);
			}		

			guVecSub(point, &currfrag->near, &delta); 
			dist = guVecDotProduct(&delta, &currfrag->normal);

			if (dbglt) {
				Con_DPrintf("delta %5.1f %5.1f %5.1f dp %5.2f \r\n", delta.x, delta.y, delta.z, dist);
			}		

			if (dist > 0.5f) {
				inside = NULL;
				break;
			}
			currfrag = currfrag->nextfrag;
		}
		if (!inside) {
			// edge is outside the frustum, check neighbours
			if (dbglt) {
				Con_DPrintf("=========== neighbours ==============\r\n");
			}		
			volumeneighbour_t *neighbour = vol->nextneighbour;
			while(neighbour) {
				if (S_PointInVolume(neighbour->vol, point)) {
					// edge is inside the frustum, return true
					inside = neighbour->vol;
					break;
				}
				neighbour = neighbour->nextneighbour;
			}
		}
		return inside;
	}
	return NULL;
}


/*
============
S_PointsInVolume()
bit 0-7 set means edge in volume
============
*/
void S_PointsInVolume(shadowvol_t *vol, Vector *edges, byte *mask, qboolean bailonempty) {
	if (vol->visframe != r_framecount) {
		vol->visframe = r_framecount;
		int i;
		// calculate frontcap normal
		Vector *verts[3], t, b, delta;
		vec3_t capnormal;
		shadowvolfrag_t *currfrag;
		currfrag = vol->nextfrag;
		for(i=0; i<3; i++, currfrag = currfrag->nextfrag) {
			verts[i] = &currfrag->near;
			if (dbglt) {
				Con_DPrintf("volume vert %5.1f %5.1f %5.1f ", verts[i]->x, verts[i]->y, verts[i]->z);
			}		
		}
		guVecSub(verts[2], verts[1], &t);
		guVecSub(verts[1], verts[0], &b);	
		guVecCross(&t, &b, (Vector *) &capnormal);
		guVecNormalize((Vector *) &capnormal);
		if (dbglt) {
			Con_DPrintf(" normal %5.2f %5.2f %5.2f\r\n", capnormal[0], capnormal[1], capnormal[2]);
		}		


		// more than 2 edges must be in back of volumecap
		int numpts = 0;
		byte result = 0x00;
		// check edges in frustum
		for(i=0; i<8; i++) {
			guVecSub((Vector *) &edges[i], verts[1], &delta);
			float tmp = guVecDotProduct(&delta, (Vector *) &capnormal);
			if (dbglt) {
				Con_DPrintf("edge %5.1f %5.1f %5.1f delta %5.1f %5.1f %5.1f dp %5.2f include %i\r\n", edges[i].x, edges[i].y, edges[i].z, delta.x, delta.y, delta.z, tmp, (tmp < -1.0f));
			}		
			if (tmp < -1.0f) {
				numpts++;

				if (!(*mask & 1<<i)) {
					qboolean inside = true;
					// check each of the volume's planes
					currfrag = vol->nextfrag;
					while(currfrag) {
						float dist;

						if (dbglt) {
							Con_DPrintf("edge %i currfrag normal %5.2f %5.2f %5.2f near %5.1f %5.1f %5.1f ", i,
								currfrag->normal.x, currfrag->normal.y, currfrag->normal.z,
								currfrag->near.x, currfrag->near.y, currfrag->near.z);
						}		
				
						guVecSub(&edges[i], &currfrag->near, &delta); 
						dist = guVecDotProduct(&delta, &currfrag->normal);

						if (dbglt) {
							Con_DPrintf("delta %5.1f %5.1f %5.1f dp %5.2f \r\n", delta.x, delta.y, delta.z, dist);
						}		

						if (dist >= 0.5f) {
							// edge is outside the frustum, check next
							inside = false;
							break;
						}
						currfrag = currfrag->nextfrag;
					}
					if (inside) {
						result |= 1<<i;
					}
				}
			}
		}
// TODO all outside		
		if (numpts < 3) {
			if (dbglt) {
				Con_DPrintf("Didn't collect > 2 exit\r\n");
			}		
			return; // none in volume
		} else {
			*mask |= result;
		}

		// all outside
		if (*mask == 0x00 && bailonempty) {
if (dbglt) Con_DPrintf("mask: %X \r\n", *mask);
			return; // none inside
		} else 
		// all inside
		if (*mask == 0xff) {
if (dbglt) Con_DPrintf("mask: %X \r\n", *mask);
			return; // all inside
		}
		
		// some inside; check neighbours to see if more edges are inside
		volumeneighbour_t *neighbour = vol->nextneighbour;
		while(neighbour) {
			S_PointsInVolume(neighbour->vol, edges, mask, false);
			neighbour = neighbour->nextneighbour;
		}
if (dbglt) Con_DPrintf("mask: %X  \r\n", *mask);
		return;
	}
if (dbglt) Con_DPrintf("mask: %X \r\n", *mask);
	return; // none inside
}


/*
============
S_ShadowCullLeaf()
Returns 2 when bounding box completely outside volume
Returns 1 when bounding box partly outside volume
Returns 0 when bounding box inside volume
============
*/
int S_ShadowCullLeaf(shadowvol_t *vol, mleaf_t *leaf) {
	// leaf's minmaxs
	Vector 	*mins = (Vector *) &leaf->minmaxs[0];
	Vector	*maxs = (Vector *) &leaf->minmaxs[3];

	Vector	edge[8];
	// bottom left front
	edge[0].x = mins->x;
	edge[0].y = mins->y;
	edge[0].z = mins->z;
	
	// bottom left back
	edge[1].x = mins->x;
	edge[1].y = maxs->y;
	edge[1].z = mins->z;

	// bottom right back
	edge[2].x = maxs->x;
	edge[2].y = maxs->y;
	edge[2].z = mins->z;

	// bottom right front
	edge[3].x = maxs->x;
	edge[3].y = mins->y;
	edge[3].z = mins->z;
	
	// top
	int i;
	for(i=0; i<4; i++) {
		edge[4+i].x = edge[i].x;
		edge[4+i].y = edge[i].y;
		edge[4+i].z = maxs->z;
	}

	r_framecount++;
if (dbglt) Con_DPrintf("\r\n========================= %i \r\n", r_framecount);
	byte mask = 0x00;
	S_PointsInVolume(vol, &edge[0], &mask, true);
if (dbglt) Con_DPrintf("\r\n========================= RESULT %X \r\n", mask);

	if (mask == 0xFF) {
		return 0; // all inside
	} else 
	if (mask == 0x00) {
		return 2; // none inside
	}
	
	// some outside
	
	return 1;
}

/*
============
S_ReShadow()
Adds intersecting volumes to leafs
Removes leafs that are encapsulted in shadow.
Removes volumes that don't encapsulate any leafs
============
*/
void S_ReShadow(dlight_t *light, byte *vis) {
	// all the volumes attached to light are checked
	int numvolumes = 0;
	shadowvol_t *currvol = light->nextstaticshadowvolume;
	while(currvol) {
		int i;
		// true when a volume doesn't encapsulate any leafs
		qboolean volumeEmpty = true;
		// loop thru all leafs and check if leaf in volume
		for (i=0 ; i<cl.worldmodel->numleafs ; i++)	{
			if (vis[i>>3] & (1<<(i&7)))	{
				// ok, we have a visible leaf, check if it is culled out
				mleaf_t *leaf = &cl.worldmodel->leafs[i+1];
				// check if volume has any part of a leaf inside it
				int cullresult = S_ShadowCullLeaf(currvol, leaf);
				if (cullresult == 0) {
					// leaf is inside the volume
					volumeEmpty = false;
					// completely shadowed out, so reset visibility bit
					vis[i>>3] &= ~(1<<(i&7));
					// remove lightdata
					S_UnlinkLightData(leaf, light);
					metric_unlinkedlights++;
				} else 
				if (cullresult == 1) {
					// this is partly outside the volume, so add volume to leaf
					// so at rendertime we know when it is potentially visible
					volumeEmpty = false;
					S_LinkShadowData(leaf, light, currvol);
					metric_linkedshadows++;
				}
			}
		}
		// if this volume turns out to be empty delete it
		if (volumeEmpty) {
			UT_DeleteShadowVolume(light, currvol);
			metric_removedvolumes++;
		}
		// (don't alloc new volumes between here and end of loop)
		currvol = currvol->nextvol;
		numvolumes++;
	}
	Con_DPrintf("Reshadow Processed %i volumes\r\n", numvolumes);
}



/*
============
S_IsLeafLit()
Checks if leaf is touched by lightbeam
TODO: add frustum check for projections
============
*/
qboolean S_IsLeafLit(mleaf_t *node, dlight_t *light) {
	return true;
/*	if (light->flags & LIGHT_FLAG_POINTLIGHT) {
		return S_BoxInRange((Vector *) &node->minmaxs[0], (Vector *) &node->minmaxs[1], (Vector *) light->origin, light->radius);
	} else 
	if (light->flags & LIGHT_FLAG_PROJLIGHT) {
		// DRS TODO: boxrange works for point light; projections must also use a frustum check since they are directional
		return S_BoxInRange((Vector *) &node->minmaxs[0], (Vector *) &node->minmaxs[1], (Vector *) light->origin, light->radius); // && frustumCheck();
	} 
	return false;*/
}


/*
============
S_AddLight()
Adds light to leafs affected by light
============
*/
void S_AddLight(dlight_t *light) {
	// find touched leafs
	// box cull leafes out of radius
	// assign light to affected leafes
	byte	*vis;
	int		i;
	mleaf_t	*viewleaf;

	// metrics
	metric_litnode = 0;
	metric_touchnode = 0;
	metric_marksurfaces = 0;
	metric_numvolumes = 0;
	metric_numsurfreal = 0;
	metric_removedvolumes = 0;	
	metric_linkedlights = 0;
	metric_unlinkedlights = 0;
	metric_linkedshadows = 0;	
	
	// find viewleaf
	viewleaf = Mod_PointInLeaf (light->origin, cl.worldmodel);

	// light in leaf?
	if (viewleaf) {
		// get possible visible leafs
		vis = Mod_LeafPVS (viewleaf, cl.worldmodel); // DRS TODO: add light param so it can include isleaflit 
		
		// setup next frame
		r_framecount++;
		r_visframecount++;
		
		for (i=0 ; i<cl.worldmodel->numleafs ; i++)	{
			if (vis[i>>3] & (1<<(i&7)))	{
				// ok, we have a visible leaf, check if it is in range
				mleaf_t *node = &cl.worldmodel->leafs[i+1];
				
//if (node == viewleaf) {
//show = true;
//} else {
show = false;
//}
				
				if (S_TouchLeaf(node, light)) {
					metric_litnode++;
					// mark surfaces
					S_MarkLitSurfaces(node, light);
				} else {
					// not visible, so reset visibility bit
					vis[i>>3] &= ~(1<<(i&7));
				}
			}
		}
int tcount = 0;
for (i=0 ; i<cl.worldmodel->numleafs ; i++)	{
	if (vis[i>>3] & (1<<(i&7)))	{
		tcount++;
	}
}
	Con_DPrintf("tcount %i metric_litnode %i metric_touchnode %i metric_marksurfaces %i metric_numvolumes %i metric_removedvolumes %i metric_linkedlights %i metric_unlinkedlights %i metric_linkedshadows %i\r\n",
		tcount,
		metric_litnode,
		metric_touchnode,
		metric_marksurfaces,
		metric_numvolumes,
		metric_removedvolumes,
		metric_linkedlights,
		metric_unlinkedlights,
		metric_linkedshadows);	

		
		// create volumes DRS TODO: this function must be aware of STATIC and DYNAMIC
		S_CreateVolumes(light, cl.worldmodel->nodes);
//		S_ReVolume(light);
		// optimize them
		S_ReShadow(light, vis);
		R_FilterDuplicateVolumeFrags(light);
	}
	
	Con_DPrintf("final--> metric_litnode %i metric_touchnode %i metric_marksurfaces %i metric_numsurfreal %i metric_numvolumes %i metric_removedvolumes %i metric_linkedlights %i metric_unlinkedlights %i metric_linkedshadows %i\r\n",
		metric_litnode,
		metric_touchnode,
		metric_marksurfaces,
		metric_numsurfreal,
		metric_numvolumes,
		metric_removedvolumes,
		metric_linkedlights,
		metric_unlinkedlights,
		metric_linkedshadows);	

	
}

int dbggg = 0;
/*
=============
S_LinkLights
=============
*/
void S_LinkLights(void) {
	int			i;
	dlight_t	*l = cl_staticlights;

dbggg++;

	S_ClearLightData(); // !!!!!! NOTE DRS TODO

	R_ClearStaticVolumes();
//surfacemetric = 0;
//u64		current_time	= gettime();
	for (i=0 ; i<cl_numstaticlights; i++, l++) {
		/*if (dbggg == 2 && i == 2) dbglt = l; else*/ dbglt = NULL;
//		if (i > 6) continue; 
		if (l->radius >= 200) {
Con_DPrintf("======= light %i %p %5.1f %5.1f %5.1f =========\r\n", i, l, l->origin[0], l->origin[1], l->origin[2]);
			S_AddLight(l);
		}
	}
}

