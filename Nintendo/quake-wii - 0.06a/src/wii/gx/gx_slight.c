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
	mlightdata_t 	*lightdata = surface->lightdata;
	
if (light == dbglt) {
Con_DPrintf("Adding light %p to surf %p\r\n", light, surface);	
}

// TODO remove
int count = 0;
	// add to head?
	if (!lightdata) {
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
count++;
		}
//		lightdata->nextlight = newdata;
	}
	
	lightdata = surface->lightdata;

if (count > 3 || light == dbglt) {
	glpoly_t *p = surface->polys;
	float *v = p->verts[0];
	int num = p->numverts;
	int i;
	for(i=0; i<num; i++, v+=VERTEXSIZE) {
		Con_DPrintf("%5.1f %5.1f %5.1f - ", v[0], v[1], v[2]); 
	}
	while(lightdata) {
	Con_DPrintf("\r\nsurf %p light %p %5.1f %5.1f %5.1f\r\n", surface, lightdata->light, lightdata->light->origin[0], lightdata->light->origin[1], lightdata->light->origin[2]);

		lightdata = lightdata->nextlight;
	}
}

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
// log de surfaces bij light 5
if (light == dbglt) {
Con_DPrintf("--> surf %p\r\n", s);
}
					if (!S_BoxCullSurface(light, s)) {
						// is this surface backward
						mplane_t *plane = s->plane;
						float dist = guVecDotProduct ((Vector *) light->origin, (Vector *) plane->normal) - plane->dist;

						if (((dist < 0) ^ !!(s->flags & SURF_PLANEBACK))) {
							continue;		// wrong side
						}
						// DRS TODO include underwater surfaces
						if (!(s->flags & (SURF_UNDERWATER|SURF_DRAWSKY|SURF_DRAWTURB))) {
							S_SurfaceLightData(s, light, ld->attenuation);
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
	Vector delta1, delta2;
	guVecSub(mins, origin, &delta1);
	guVecSub(maxs, origin, &delta2);
	if ((	fabs(delta1.x) <= radius && 
			fabs(delta1.y) <= radius && 
			fabs(delta1.z) <= radius) ||
		(	fabs(delta2.x) <= radius && 
			fabs(delta2.y) <= radius && 
			fabs(delta2.z) <= radius)) {
		return true;
	}
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
	if (attenuation > 0.00f) {
/*		metric_touchnode++;
		// TODO: dynamic lights must be handled differently
		if (S_CountLightsInLeaf(leaf) >= MAX_STATICLIGHTS) {
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
			
				// find which side of the node we are on
/*				mplane_t *plane = s->plane;
				float dist = guVecDotProduct ((Vector *) light->origin, (Vector *) plane->normal) - plane->dist;

				if (S_BoxCullSurface(light, s) || ((dist < 0) ^ !!(s->flags & SURF_PLANEBACK))) {
					continue;		// wrong side or out of reach
				}
				// DRS TODO include underwater surfaces
				if (!(s->flags & (SURF_UNDERWATER|SURF_DRAWSKY|SURF_DRAWTURB))) {
					metric_marksurfaces++;
					s->visframe = r_framecount;
				}
			}*/
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
	}
	guVecSub(verts[2], verts[1], &t);
	guVecSub(verts[1], verts[0], &b);	
	guVecCross(&t, &b, (Vector *) &capnormal);
	guVecNormalize((Vector *) &capnormal);

	// leaf's minmaxs
	float 	*emins = (float *) &leaf->minmaxs[0];
	float 	*emaxs = (float *) &leaf->minmaxs[3];
	
	// check leaf is located behind the surface, if not it is outside
	vec3_t	corners[2];
	float dist1, dist2;
	Vector deltamins, deltamaxs;
	for (i=0 ; i<3 ; i++) {
		if (capnormal[i] < 0) {
			corners[0][i] = emins[i];
			corners[1][i] = emins[i];
		} else {
			corners[0][i] = emaxs[i];
			corners[1][i] = emaxs[i];
		}
	}
	
	guVecSub((Vector *) &corners[0], verts[1], &deltamins);
	guVecSub((Vector *) &corners[1], verts[1], &deltamaxs);
	dist1 = guVecDotProduct(&deltamins, (Vector *) &capnormal);
	dist2 = guVecDotProduct(&deltamaxs,(Vector *) &capnormal);
	if (dist1 >= -1.0f || dist2 >= -1.0f) {
//Con_DPrintf("not in front - ");	
		return 2;
	} 
	
	// check each of the volume's planes
	currfrag = vol->nextfrag;
	while(currfrag) {
		// partly taken from boxonplaneside
		Vector delta;
		float 	*normal = (float *) &currfrag->normal;
		for (i=0 ; i<3 ; i++) {
			if (normal[i] < 0) {
				corners[0][i] = emins[i];
				corners[1][i] = emaxs[i];
			} else {
				corners[1][i] = emins[i];
				corners[0][i] = emaxs[i];
			}
		}
		
		guVecSub((Vector *) &corners[0], &currfrag->near, &delta); 
		dist1 = guVecDotProduct(&delta, &currfrag->normal);

		guVecSub((Vector *) &corners[1], &currfrag->near, &delta); 
		dist2 = guVecDotProduct(&delta, &currfrag->normal);
		
		if (dist1 >= 0.5f && dist2 >= 0.5f) {
			outsides = 2;
			break; // clean huh
		} else 
		if (dist1 >= 0.5f || dist2 >= 0.5f) {
			outsides = 1;
		}
		currfrag = currfrag->nextfrag;
	}
	return outsides;
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
//					volumeEmpty = false;
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
	}
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
		
		// optimize them
//		S_ReShadow(light, vis);
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

/*
=============
S_LinkLights
=============
*/
void S_LinkLights(void) {
	int			i;
	dlight_t	*l = cl_staticlights;

	S_ClearLightData(); // !!!!!! NOTE DRS TODO

	R_ClearStaticVolumes();
//surfacemetric = 0;
//u64		current_time	= gettime();
	for (i=0 ; i<cl_numstaticlights; i++, l++) {
		if (i == 5) dbglt = l;// else dbglt = NULL;
		if (i > 6) continue; 
		if (l->radius >= 200) {
Con_DPrintf("======= light %i %p %5.1f %5.1f %5.1f =========\r\n", i, l, l->origin[0], l->origin[1], l->origin[2]);
			S_AddLight(l);
		}
	}
}

