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

/*
#define MAX_STATIC_SHADOWFRAGS				262144	
#define MAX_DYNAMIC_SHADOWFRAGS			32768	
#define MAX_STATIC_SHADOWVOLUMES		65536	
#define MAX_DYNAMIC_SHADOWVOLUMES	8192
*/
#define MAX_FRAGS_VOLUME 							32

#define MAX_STATIC_SHADOWFRAGS				0	
#define MAX_DYNAMIC_SHADOWFRAGS			0	
#define MAX_STATIC_SHADOWVOLUMES		0	
#define MAX_DYNAMIC_SHADOWVOLUMES	0


// static volumes
// TODO: move to arena2 to free up extra mem for stenciling
shadowvol_t 			r_sshadowvolumes[MAX_STATIC_SHADOWVOLUMES];
shadowvolfrag_t 	r_sshadowvolfrags[MAX_STATIC_SHADOWFRAGS];

int r_numsshadowvolumes;
int r_numsshadowvolfrags;

// help list to store the surfaces seen by a light when processing it
#define MAX_SURFACES_LIGHT					4096
int ut_numlitsurfacesincache;
msurface_t ut_litsurfacecache[MAX_SURFACES_LIGHT];

// DRS since these are big, only declare 24 of em
#define MAX_STENCIL_TEXTURES		24
#define STENCIL_WIDTH						320
#define STENCIL_HEIGHT						240
#define NUM_VOLUMES_PASS				128

gltexture_t 	r_stencilTextures[MAX_STENCIL_TEXTURES];
void				*r_stencilTextureBuf;
int				r_numstencilTextures; 			
int				r_stencilTextureSize;

// other
GXColor 		r_volumecol;
GXColor 		r_blankcol;
Mtx 				r_identity;


int 	r_numshadowvolt = 0;
int 	r_numshadowtris = 0;
int 	r_numshadowplanes = 0;
int	r_numshadowpoints = 0;

#define MAX_SHADOWVOLUMES			256*256
#define MAX_SHADOWTRIS					1024*256
//#define MAX_SHADOWPOINTS				MAX_SHADOWTRIS*2
//#define MAX_SHADOWPOINTSUSED	MAX_SHADOWPOINTS/8
#define MAX_SHADOWPLANES				MAX_SHADOWTRIS/2

shadowvolt_t		r_shadowvolt[MAX_SHADOWVOLUMES]; 
//shadowtri_t			r_shadowtri_t[MAX_SHADOWTRIS];  // TODO rename...
shadowplane_t	r_shadowplane[MAX_SHADOWPLANES];
shadowtri_t			*r_shadowtri_t; // TODO rename...
/*Vector					r_shadowpoints[MAX_SHADOWPOINTS];
byte						r_shadowpointused[MAX_SHADOWPOINTSUSED];


Vector *UT_AllocVector() {
	Vector *retVector = NULL;
	if (r_numshadowpoints < MAX_NUMSHADOWPOINTS) {
		retVector = &r_shadowpoints[r_numshadowpoints];
		r_numshadowpoints++;
	} else {
		// TODO check unused ones
		Con_Printf("UT_AllocVector: out of vectors\r\n");
		Con_DPrintf("UT_AllocVector: out of vectors\r\n");
	}

}
*/

extern qboolean isTestMap; // DRS TODO nog weghalen


/*
=================
UT_AllocShadowVolume()
=================
*/
shadowvolt_t *UT_AllocShadowVolume(void) {
	shadowvolt_t  *returnvolume  = NULL;
	
	if (r_numshadowvolt < MAX_SHADOWVOLUMES) {
		returnvolume = &r_shadowvolt[r_numshadowvolt];
		r_numshadowvolt++;
	} else {
		// TODO check unused ones
		Con_Printf("UT_AllocShadowVolume: out of volumes\r\n");
		Con_DPrintf("UT_AllocShadowVolume: out of volumes\r\n");
	}

	if (returnvolume) {
		memset(returnvolume, 0x00, sizeof(shadowvolt_t));
//		returnvolume->used = true;
	}
	return returnvolume;
}
 
/*
=================
UT_AllocShadowTri()
=================
*/
shadowtri_t *UT_AllocShadowTri(void) {
	shadowtri_t *returntri = NULL;
	
	if (r_numshadowtris < MAX_SHADOWTRIS) {
		returntri = &r_shadowtri_t[r_numshadowtris];
		r_numshadowtris++;
	} else {
		int i;
		for(i=0; i<MAX_SHADOWTRIS; i++) {
			if (!r_shadowtri_t[i].used) {
				returntri = &r_shadowtri_t[i];
			}
		}
	}
	
	if (returntri) {
		memset(returntri, 0x00, sizeof(shadowtri_t));
		returntri->used = true;
	} else {
		Con_Printf("UT_AllocShadowTri: out of tris\r\n");
		Con_DPrintf("UT_AllocShadowTri: out of tris\r\n");
	}
	
	return returntri;
}


/*
=================
UT_DeleteTriangleFromVolume()
=================
*/
void UT_DeleteTriangleFromVolume(shadowvolt_t *vol, shadowtri_t *deleteit) {
	int success = 0; // DRS TODO remove
	shadowtri_t *prev, *curr;
	curr = vol->nexttri;
	prev = (shadowtri_t *) vol;
	while(curr != NULL) {
		// is this the one to delete?
//Con_DPrintf("Delete curr %p next %p delete %p\r\n", curr, curr->nexttri, deleteit);
		if (curr == deleteit) {
			// yep, adjust prev and set next
			prev->nexttri = deleteit->nexttri;
			deleteit->used = false;
			success = 1;
			break;
		}
		prev = curr;
		curr = curr->nexttri;
	}
	if (!success) {
		Con_DPrintf("UT_DeleteTriangleFromVolume: unable to delete!!!");
		Con_Printf("UT_DeleteTriangleFromVolume: unable to delete!!!");
	}
}

/*
=================
UT_AddTriangleToVolume()
=================
*/
void UT_AddTriangleToVolume(shadowvolt_t *vol, shadowtri_t *tri) {
	// lead available?
	if (vol->nexttri) {
		// yes, go next
		UT_AddTriangleToVolume((shadowvolt_t *)vol->nexttri, tri);
	} else {
		// no, add it
		vol->nexttri = tri; 
	}
}


/*
=================
UT_AddTriangleToVolumeHead()
=================
*/
void UT_AddTriangleToVolumeHead(shadowvolt_t *vol, shadowtri_t *tri) {
	// lead available?
	if (vol->nexttri) {
		tri->nexttri = vol->nexttri;
	} 
	// add it
	vol->nexttri = tri; 
}




/*
=================
R_ClearStaticVolumes()
=================
*/
void R_ClearStaticVolumes(void) {
	r_numsshadowvolumes = 0;
	r_numsshadowvolfrags  = 0;
	
	int i;
	for(i=0; i<r_numshadowtris; i++) {
		r_shadowtri_t[i].used = false;
	}
//	for(i=0; i<r_numshadowvolt; i++) {
//		r_shadowvolt[i].used = false;
//	}

	r_numshadowvolt = 0;
	r_numshadowtris = 0;
	r_numshadowplanes = 0;
//	r_numshadowpoints = 0;
//	for(i=0; i<MAX_SHADOWPOINTSUSED; i++) {
//		r_shadowpointused = 0x00;
//	}
}


/*
=================
R_CalculateIntersection()
returns the vectex in front of the plane when intersecting or NULL when no 
intersection occurred, *intersections will contain intersecting point
=================
*/
Vector *R_CalculateIntersection(
	/* in */ 		Vector *p1, Vector *p2, Vector *plane_normal, Vector *plane_xyz, 
	/* out */	Vector *intersection)  {
	
	Vector plane_p1, plane_p2, p1_p2;
	float dp1, dp2;
	float divider;
	
	guVecSub(p1, plane_xyz, &plane_p1);
	guVecSub(p2, plane_xyz, &plane_p2);


	dp1 = guVecDotProduct(&plane_p1, plane_normal);
	dp2 = guVecDotProduct(&plane_p2, plane_normal);

Con_DPrintf("R_CalculateIntersection p1 %5.1f %5.1f %5.1f p2 %5.1f %5.1f %5.1f xyz %5.1f %5.1f %5.1f \r\n",
	p1->x, p1->y, p1->z, 
	p2->x, p2->y, p2->z, 
	plane_xyz->x, plane_xyz->y, plane_xyz->z); 
	
Con_DPrintf("R_CalculateIntersection plane_p1 %5.1f %5.1f %5.1f dp1 %5.2f  ===== plane_p2 %5.1f %5.1f %5.1f dp2 %5.2f\r\n", 

	plane_p1.x, plane_p1.y, plane_p1.z, 
	dp1, 
	plane_p2.x, plane_p2.y, plane_p2.z, 
	dp2);
	
	// point not intersecting
	if ((dp1 > 0 && dp2 > 0)  ||
		(dp1 < 0 && dp2 < 0)) {
		return NULL;
	}
Con_DPrintf("1 - ");
	
	// both points on plane
	if (dp1 == 0 && dp2 == 0) {
		intersection->x = p1->x;
		intersection->y = p1->y;
		intersection->z = p1->z;
		return p1;
	}

	// calculate divider
	divider = fabs(dp1) / (fabs(dp1) + fabs(dp2));
	
	// calculate intersection
	guVecSub(p2, p1, &p1_p2);

	guVecScale(&p1_p2, &p1_p2, divider);
	guVecAdd(p1, &p1_p2, intersection);

Con_DPrintf("divider %5.2f -  p2-p1 %5.1f %5.1f %5.1f p1 %5.1f %5.1f %5.1f  intersection %5.1f %5.1f %5.1f \r\n", divider, 
	p1_p2.x, p1_p2.y, p1_p2.z, 
	p1->x, p1->y, p1->z, 
	intersection->x, intersection->y, intersection->z);
	
	return dp1 >= 0 ? p1 : p2;
}


/*
=================
R_FillTriangle
=================
*/
void R_FillTriangle(shadowtri_t *triangle, Vector *p1, Vector *p2, Vector *p3) {
	triangle->p1.x = p1->x;
	triangle->p1.y = p1->y;
	triangle->p1.z = p1->z;
	triangle->p2.x = p2->x;
	triangle->p2.y = p2->y;
	triangle->p2.z = p2->z;
	triangle->p3.x = p3->x;
	triangle->p3.y = p3->y;
	triangle->p3.z = p3->z;
}


/*
=================
R_CutTriangle()
Cuts the triangle on the intersecting plane
triangle, plane normal and a point on the plane go in,
the resulting number of triangles in front and back, and 
corresponding triangles go out. 
NOTE: vertices_front and vertices_back must point to arrays 
of size 3
=================
*/
void R_CutTriangle(
	/* in */		shadowtri_t 	*triangle, 
	/* in */		Vector 				*plane_normal, 
	/* in */		Vector 				*plane_xyz, 
	/* out */	int 					*num_front,
	/* out */	shadowtri_t 	*triangles_front,
	/* out */	int 					*num_back,
	/* out */	shadowtri_t 	*triangles_back) {
	
	// kutter de kut, wat n klote code
	// roadmap:
	// * c1) vector p1-p2 crosses the plane? 
	// * c2) vector p2-p3 crosses the plane? 
	// * c1 true c2 true? 
	// *	calculate intersection pi1
	// *	calculate intersection pi2
	// * 	p1 in front? p3 is also in front, p2 in back, 	create triangles front: p1-pi1-pi2, p1-pi2-p3		back: p2-pi2-pi1
	// * 	p1 in back? p3 is also in back, p2 in front, 	create triangles front: p2-pi2-pi1						back: p1-pi1-pi2, p1-pi2-p3
	// * c1 true c2 false? 
	// *	calculate intersection pi1
	// * 	calculate intersection pi3
	// * 	p1 in front? p2 and p3 in back,						create triangles front: p1-pi1-pi3						back: p2-p3-pi3, p2-pi3-pi1
	// *	p1 in back? p2 and p3 in front,						create triangles front: p2-p3-pi3, p2-pi3-pi1		back: p1-pi1-pi3
	// * c1 false c2 true?
	// *	calculate intersection pi2
	// * 	calculate intersection pi3
	// * 	p1 in front? p2 is also in front, p3 in back,		create triangles front: p1-p2-pi2, p1-pi2-pi3		back: p3-pi3-pi2
	// *	p1 in back? p2 is also in back, p3 in front,		create triangles front: p3-pi3-pi2						back: p1-p2-pi2, p1-pi2-pi3
	// * c1 false c2 false?
	// * 	triangle is not intersecting, calculate dotproduct of one point to decide front or back side
	// push new tris out

Con_DPrintf("tri->plane normal %5.2f %5.2f %5.2f xyz %5.1f %5.1f %5.1f\r\n", 
	triangle->plane->plane_normal.x, triangle->plane->plane_normal.y, triangle->plane->plane_normal.z,
	triangle->plane->plane_xyz->x, triangle->plane->plane_xyz->y, triangle->plane->plane_xyz->z);
	
	// 1) calculate condition 1 and condition 2
	Vector *c1, *c2, *c3;
	Vector pi1, pi2, pi3;
	c1 = R_CalculateIntersection(&triangle->p1, &triangle->p2, plane_normal, plane_xyz, &pi1) ;
	c2 = R_CalculateIntersection(&triangle->p2, &triangle->p3, plane_normal, plane_xyz, &pi2) ;
	c3 = R_CalculateIntersection(&triangle->p3, &triangle->p1, plane_normal, plane_xyz, &pi3) ;
	
	// 2) c1 && c2?
	if (c1 && c2) {
		// p1 in front?
		// * 	p1 in front? p3 is also in front, p2 in back, 	create triangles front: p1-pi1-pi2, p1-pi2-p3		back: p2-pi2-pi1
		// * 	p1 in back? p3 is also in back, p2 in front, 	create triangles front: p2-pi2-pi1						back: p1-pi1-pi2, p1-pi2-p3
		if (c1 == &triangle->p1) {
			// yes, create triangles
			*num_front = 2;
			*num_back = 1;
			R_FillTriangle(&triangles_front[0], &triangle->p1, 	&pi1, 				&pi2);
			R_FillTriangle(&triangles_front[1], &triangle->p1, 	&pi2, 				&triangle->p3);
			R_FillTriangle(&triangles_back[0], &triangle->p2, 	&pi2, 				&pi1);
		} else {
			// no, create triangles
			*num_front = 1;
			*num_back = 2;
			R_FillTriangle(&triangles_back[0], &triangle->p1, 	&pi1, 				&pi2);
			R_FillTriangle(&triangles_back[1], &triangle->p1, 	&pi2, 				&triangle->p3);
			R_FillTriangle(&triangles_front[0], &triangle->p2, 	&pi2, 				&pi1);
		}
	} else
	//  3) c1 && !c2
	if (c1 && !c2) {
		// * 	p1 in front? p2 and p3 in back,						create triangles front: p1-pi1-pi3						back: p2-p3-pi3, p2-pi3-pi1
		// *	p1 in back? p2 and p3 in front,						create triangles front: p2-p3-pi3, p2-pi3-pi1		back: p1-pi1-pi3
		if (c1 == &triangle->p1) {
			// yes, create triangles
			*num_front = 1;
			*num_back = 2;
			R_FillTriangle(&triangles_front[0], &triangle->p1, 	&pi1, 				&pi3);
			R_FillTriangle(&triangles_back[0], &triangle->p2, 	&triangle->p3, &pi3);
			R_FillTriangle(&triangles_back[1], &triangle->p2, 	&pi3, 				&pi1);
		} else {
			// no, create triangles
			*num_front = 2;
			*num_back = 1;
			R_FillTriangle(&triangles_back[0], &triangle->p1, 	&pi1, 				&pi3);
			R_FillTriangle(&triangles_front[0], &triangle->p2, 	&triangle->p3,	&pi3);
			R_FillTriangle(&triangles_front[1], &triangle->p2, 	&pi3, 				&pi1);
		}
	} else 
	// 4) !c1 && c2
	if (!c1 && c2) {
	// * 	p1 in front? p2 is also in front, p3 in back,		create triangles front: p1-p2-pi2, p1-pi2-pi3		back: p3-pi3-pi2
	// *	p1 in back? p2 is also in back, p3 in front,		create triangles front: p3-pi3-pi2						back: p1-p2-pi2, p1-pi2-pi3
		if (c1 == &triangle->p1) {
			// yes, create triangles
			*num_front = 2;
			*num_back = 1;
			R_FillTriangle(&triangles_front[0], &triangle->p1, 	&triangle->p2,	&pi2);
			R_FillTriangle(&triangles_front[1], &triangle->p1, 	&pi2, 				&pi3);
			R_FillTriangle(&triangles_back[0], &triangle->p3,	&pi3,				&pi2);
		} else {
			// no, create triangles
			*num_front = 1;
			*num_back = 2;
			R_FillTriangle(&triangles_back[0], &triangle->p1, 	&triangle->p2,	&pi2);
			R_FillTriangle(&triangles_back[1], &triangle->p1, 	&pi2, 				&pi3);
			R_FillTriangle(&triangles_front[0], &triangle->p3,	&pi3,				&pi2);
		}
	} else
	// 5) !c1 && !c2
	if (!c1 && !c2) {
		// * 	triangle is not intersecting, calculate dotproduct of one point to decide front or back side
		float dp;
		Vector plane_p1;
		guVecSub(&triangle->p1, plane_xyz, &plane_p1);
		dp = guVecDotProduct(&plane_p1, plane_normal);
		if (dp >= 0) {
			// triangle is in front
			*num_front = 1;
			*num_back = 0;
			R_FillTriangle(&triangles_front[0], &triangle->p1,	&triangle->p2,	&triangle->p3);
		} else {
			*num_front = 0;
			*num_back = 1;
			R_FillTriangle(&triangles_back[0], &triangle->p1,	&triangle->p2,	&triangle->p3);
		}
		
	}  
	// error
	else {
		Con_Printf("Some stuff goes wrong here!!!!");
	}
	
}
	

/*
=================
R_CreateVolumeFromSurface
=================
*/
qboolean R_CreateVolumeFromSurface(dlight_t *light, msurface_t *surf, shadowvolt_t *shadowvol) {
	// allocate a current volume for this surface
	// calculate and add planes
	// calculate and add triangles
	int 			i;
	int 			numverts;
	float 		*v;
	Vector 		t, b;
	Vector 		*frontcap[MAX_FRAGS_VOLUME];
	Vector 		*rearcap[MAX_FRAGS_VOLUME];
	Vector 		delta[MAX_FRAGS_VOLUME]; // max 32 vertices per surface TODO: check actual maximum
	float			length[MAX_FRAGS_VOLUME]; // testhack
	Vector 		lpos;
	float			rad2 = light->radius*4; // just increase visibility a bit
	float 		radsq 	= pow(rad2, 2); 
	glpoly_t 	*polys = surf->polys;
	
	qboolean isInRange = false;
	v 	= polys->verts[0];
	lpos.x = light->origin[0];
	lpos.y = light->origin[1];
	lpos.z = light->origin[2];
	// check vertices in range (radius^2)
	for(numverts=0; numverts<polys->numverts && numverts<MAX_FRAGS_VOLUME; numverts++, v+=VERTEXSIZE) { 
		// compromize for rearfacing surface by storing the vertices inverted
		int idx = polys->numverts - numverts - 1;
		delta[idx].x = v[0] - lpos.x;
		delta[idx].y = v[1] - lpos.y;
		delta[idx].z = v[2] - lpos.z;
		float lengthsq = pow(delta[idx].x, 2) + pow(delta[idx].y, 2) + pow(delta[idx].z, 2);
		if (lengthsq == 0) { // testhack
			lengthsq = 1;     // testhack
		}                             // testhack
		length[idx] = lengthsq; // testhack

// front facing
//		delta[numverts].x = v[0] - lpos.x;
//		delta[numverts].y = v[1] - lpos.y;
//		delta[numverts].z = v[2] - lpos.z;
//		float lengthsq = pow(delta[numverts].x, 2) + pow(delta[numverts].y, 2) + pow(delta[numverts].z, 2);
//		if (lengthsq == 0) { // testhack
//			lengthsq = 1;     // testhack
//		}                             // testhack
//		length[numverts] = lengthsq; // testhack


		if (lengthsq < radsq) {
			isInRange = true;
		}
//Con_DPrintf("Surf %p vertice: near %5.1f %5.1f %5.1f\r\n", surf, v[0], v[1], v[2]);
	} 
//Con_DPrintf("Surf %p has vertices in range: %i\r\n", surf, isInRange);
	if (!isInRange) return false;
	
	// don't want to calculate delta lengths, so determine perpendicalar distance to surface
	float dist = fabs(DotProduct(light->origin, surf->plane->normal) - surf->plane->dist);
	
	// divide is unavoidable
	if (dist < 1) return false;
	
	// allocate the planes necessary
	if (r_numshadowplanes + numverts + 2<MAX_SHADOWPLANES) {
		shadowvol->num_planes = numverts + 2; // + 2 for caps
		shadowvol->planes = &r_shadowplane[r_numshadowplanes];
		r_numshadowplanes += numverts + 2;
	} else {
		Con_Printf("R_AddSurfaceToVolume: no planes available");
		return false;
	}
	
	// scale is used to multiply the vertice with. This leads to a vertice that's more distant from 
	// the light to form the volume
	for(i=0; i<numverts; i++) {
		Vector far_i, far_j; // temp for far vector
		shadowtri_t *tri1 = UT_AllocShadowTri();
		shadowtri_t *tri2 = UT_AllocShadowTri();

		if (!tri1 || !tri2) {
			return false;
		}

		int j = i + 1;
		if (j == numverts) j = 0;


		float scale_i = rad2/sqrtf(length[i]); // TODO calculate scales in separate loop
		float scale_j = rad2/sqrtf(length[j]);
		if (scale_i < 1.0f) scale_i = 1.0f;
		if (scale_j < 1.0f) scale_j = 1.0f;
		guVecScale(&delta[i], &far_i, scale_i); // calc the far vertex position with light as origin
		guVecScale(&delta[j], &far_j, scale_j); // calc the far vertex position with light as origin

		// calculate triangles
		// tri2->p1 = &fari, &lpos;
		// tri2->p2 = &delta[j], &lpos;
		// tri2->p3 = &delta[i], &lpos;
		// tri1->p1 = &fari, &lpos;
		// tri1->p2 = &farj, &lpos;
		// tri1->p3 = &delta[j], &lpos;
		guVecAdd(&far_i, 	&lpos, &tri1->p1);
		guVecAdd(&far_j, 	&lpos, &tri1->p2);
		guVecAdd(&delta[j],	&lpos, &tri1->p3); // TODO: some of these are duplicated

		guVecAdd(&far_i,		&lpos, &tri2->p1);
		guVecAdd(&delta[j],	&lpos, &tri2->p2);
		guVecAdd(&delta[i],	&lpos, &tri2->p3);

		// add the triangles to volume
		UT_AddTriangleToVolume(shadowvol, tri1);
		UT_AddTriangleToVolume(shadowvol, tri2);

		// calculate planes, oriented to inside of volume
		// calculate tangent and bitangent the dumb way
		// t = near_i - far_i
		// b = near_j - near_i
		guVecSub(&tri1->p3, &tri1->p2, &t);
		guVecSub(&tri1->p2, &tri1->p1, &b);
		
		guVecCross(&t, &b, &shadowvol->planes[i].plane_normal);
		guVecNormalize(&shadowvol->planes[i].plane_normal); // TODO: delete this
		shadowvol->planes[i].plane_xyz = &tri2->p3; // use t2.p3 since this is the original vertice
		// associate planes with triangles
		tri1->plane = &shadowvol->planes[i];
		tri2->plane = &shadowvol->planes[i];
		
		// setup for front and rear caps
		frontcap[i] = &tri2->p3;
		rearcap[numverts - i - 1] = &tri2->p1; // rearcap inverse winding
	}
	
	// front cap plane
	guVecSub(frontcap[2], frontcap[1], &t);
	guVecSub(frontcap[1], frontcap[0], &b);
	guVecCross(&t, &b, &shadowvol->planes[numverts].plane_normal);
	guVecNormalize(&shadowvol->planes[numverts].plane_normal); // TODO: delete this
	
	shadowvol->planes[numverts].plane_xyz = frontcap[0]; // use t2.p3 since this is the original vertice
	
	// rear cap plane
	guVecSub(rearcap[2], rearcap[1], &t);
	guVecSub(rearcap[1], rearcap[0], &b);
	guVecCross(&t, &b, &shadowvol->planes[numverts+1].plane_normal);
	guVecNormalize(&shadowvol->planes[numverts+1].plane_normal); // TODO: delete this
	
	shadowvol->planes[numverts+1].plane_xyz = rearcap[0]; // use t2.p3 since this is the original vertice
	
	// front and rear cap triangles TRIANGLE_FAN
	for(i=2; i<numverts; i++) {
		int j = i - 1;
		shadowtri_t *tri_front = UT_AllocShadowTri();
		shadowtri_t *tri_rear = UT_AllocShadowTri();

		if (!tri_front || !tri_rear) {
			return false;
		}
		
		R_FillTriangle(tri_front, frontcap[0], frontcap[j], frontcap[i]);
		R_FillTriangle(tri_rear, rearcap[0], rearcap[j], rearcap[i]);
		UT_AddTriangleToVolume(shadowvol, tri_front);
		UT_AddTriangleToVolume(shadowvol, tri_rear);
		
		tri_front->plane = &shadowvol->planes[numverts]; // front cap
		tri_rear->plane = &shadowvol->planes[numverts+1]; // rear cap
	}

	

	
	return true;
	
	
}

/*
=================
R_IsTriangleInVolumeBounds()
=================
*/
qboolean R_IsTriangleInVolumeBounds(shadowvolt_t *vol, shadowtri_t *triangle) {
	// check all planes have negative dotproducts with triangle points
	float dp;
	int i, p;
	int numplanes = vol->num_planes;
	for(i=0; i<numplanes; i++) {
		Vector ptri_xyz;
		shadowplane_t *curr = &vol->planes[i];
		// tri points
		for(p=0; p<3; p++) {
			if (p == 0) {
				guVecSub(curr->plane_xyz, &triangle->p1, &ptri_xyz);
			} else
			if (p == 1) {
				guVecSub(curr->plane_xyz, &triangle->p2, &ptri_xyz);
			} else
			if (p == 2) {
				guVecSub(curr->plane_xyz, &triangle->p3, &ptri_xyz);
			}
			dp = guVecDotProduct(&curr->plane_normal, &ptri_xyz);
Con_DPrintf("tri in volume: pl %i pt %i delta %5.1f %5.1f %5.1f  normal %5.1f %5.1f %5.1f dp %5.2f - ", i, p, 
	ptri_xyz.x, 	ptri_xyz.y, 	ptri_xyz.z,
	curr->plane_normal.x, curr->plane_normal.y, curr->plane_normal.z, dp);
	
			if (dp>0) {
Con_DPrintf("tri not in volume\r\n");			
				return false;
			}
			
		}
	}
Con_DPrintf("tri IS in volume\r\n");			
	return true;
}


/*
=================
R_FindTrianglesOnPlane()
=================
*/
void R_FindTrianglesOnPlane(const shadowvolt_t *vol, const shadowplane_t *plane, int *numOnPlane, shadowtri_t *triangles) {
	shadowtri_t *currtri = vol->nexttri;
	int count = 0;
	*numOnPlane = 0;
	while(currtri) {
		if (currtri->plane == plane) {
			triangles[count] = *currtri;
			count++;
		}
		currtri = currtri->nexttri;
	}
	*numOnPlane = count;
}


/*
=================
R_CutsTrianglesOnPlane()
=================
*/
qboolean R_CutsTrianglesOnPlane(const shadowvolt_t *vol, const shadowplane_t *plane, const shadowtri_t *origtri) {
	shadowtri_t	triangles[32];
	shadowtri_t	triangles_front[3];
	shadowtri_t	triangles_back[3];
	int				numTrianglesOnPlane, num_front, num_back, i;
	// first find triangles on plane
	R_FindTrianglesOnPlane(vol, plane, &numTrianglesOnPlane, &triangles[0]);
	// have any?
	if (numTrianglesOnPlane == 0) {
		Con_DPrintf("Didn't find any triangles on given plane, which may be weird");
		return false;
	}
	// continue with checking for intersections
	shadowplane_t *cuttingplane = origtri->plane;
	for(i=0; i<numTrianglesOnPlane; i++) {
		R_CutTriangle(
			/* in */		&triangles[i], 
			/* in */		&cuttingplane->plane_normal, 
			/* in */		cuttingplane->plane_xyz, 
			/* out */	&num_front,
			/* out */	&triangles_front[0],
			/* out */	&num_back,
			/* out */	&triangles_back[0]);
			
		// any cuts?
		if (num_front+num_back > 1) {
			return true;
		}
	}
	return false;
}


/*
=================
R_CutVolumes()
=================
*/
void R_CutVolumes(dlight_t *light) {
	// loop 1 thru this light's volumes -> currvol1
	// 	loop 2 thru this light's volumes starting with index loop1+1 -> currvol2
	// 		loop thru vol2's planes -> currplane_vol2
	// 			loop thru vol1's triangles -> currtri_vol1
	//				create temp arrays for cut polygons
	//				cut currtri_vol1 using currplane_vol2 as cutter
	//				in case of a cut: 
	//					allocate triangles and add them
	//					delete currtri_vol1 
	//			end loop
	//		end loop
	// 		loop thru vol1's planes -> currplane_vol1
	// 			loop thru vol2's triangles -> currtri_vol2
	//				create temp arrays for cut polygons
	//				cut currtri_vol2 using currplane_vol1 as cutter
	//				in case of a cut: 
	//					allocate triangles and add them
	//					delete currtri_vol2 
	//			end loop
	//		end loop
	//	end loop 2
	// end loop 1
	
	
	int i, j;
	int num_volumes;
	shadowvolt_t *vol_i;
	shadowvolt_t *vol_j;
	
	num_volumes = light->num_staticshadowvolumes;
if (!isTestMap) num_volumes = 0;

	for (i=0; i<num_volumes; i++) {
		vol_i = &light->staticshadowvolumes[i];
		Con_DPrintf("\r\nNextvol %p\r\n", vol_i);
		for (j=i+1; j<num_volumes; j++) {
			vol_j = &light->staticshadowvolumes[j];

			shadowtri_t 		triangles_front[3];
			shadowtri_t 		triangles_back[3];
			int						num_front, num_back;
			int 						iteration, num_planes, c1;
			shadowplane_t 	*planes;
			shadowtri_t 		*currtri = NULL;
			
Con_DPrintf("NextSub %p\r\n", vol_j);
			for(iteration=0; iteration<1; iteration++) {
				shadowvolt_t *vol1, *vol2;
				if (iteration == 0) {
					// 1) loop thru vol2's planes and	loop thru vol1's triangles
					vol1 = vol_i;
					vol2 = vol_j;
				} else {
					// 2) loop thru vol1's planes and loop thru vol2's triangles
					vol1 = vol_j;
					vol2 = vol_i;
				}

				num_planes = vol2->num_planes;
				planes = vol2->planes;

				currtri = vol1->nexttri;
	Con_DPrintf("1 vol1 %p vol1->next %p planes %i - ", vol1, vol1->nexttri, num_planes);
				while(currtri) {
	Con_DPrintf("2 currtri %p currtri->next %p - ", currtri, currtri->nexttri);
//					qboolean deleteit = false;
					for(c1=0; c1<num_planes; c1++) {
					
	Con_DPrintf("\r\n plane nr %i p1 %5.1f %5.1f %5.1f p2 %5.1f %5.1f %5.1f\r\n", c1, 
		planes[c1].plane_normal.x,
		planes[c1].plane_normal.y,
		planes[c1].plane_normal.z,
		planes[c1].plane_xyz->x,
		planes[c1].plane_xyz->y,
		planes[c1].plane_xyz->z
		);
						R_CutTriangle(
							/* in */		currtri, 
							/* in */		&planes[c1].plane_normal, 
							/* in */		planes[c1].plane_xyz, 
							/* out */	&num_front,
							/* out */	&triangles_front[0],
							/* out */	&num_back,
							/* out */	&triangles_back[0]);
							
//ten eerste terugbouwen naar plane snijdt alle triangles, oude weg nieuwe erin
//maar oude weg en nieuwe erin mag alleen als het plane vd triangle het snijdende
//plane ook snijdt. Dus er moet een method komen om triangles op een plane te zoeken
//om deze check te kunnen doen.
	
						// we do this even when the tri hasn't been cut to ensure 
						// a minimum amount of 'segmenting'
						if (num_front + num_back > 1) {
							// plane cuts triangle, check if triangle's plane cuts back plane
							if (R_CutsTrianglesOnPlane(vol2, &planes[c1], currtri)) {
								// has been cut
								int tricnt;

								if(isTestMap) Con_DPrintf("R_CutTriangle f %i b %i \r\n", num_front, num_back);
								if(isTestMap) {
									Con_DPrintf("orig  p1 %5.1f %5.1f %5.1f p2 %5.1f %5.1f %5.1f p3 %5.1f %5.1f %5.1f\r\n",
											currtri->p1.x, currtri->p1.y, currtri->p1.z, 
											currtri->p2.x, currtri->p2.y, currtri->p2.z, 
											currtri->p3.x, currtri->p3.y, currtri->p3.z);

									for(tricnt=0; tricnt<num_front; tricnt++) {
										Con_DPrintf("front p1 %5.1f %5.1f %5.1f p2 %5.1f %5.1f %5.1f p3 %5.1f %5.1f %5.1f\r\n",
											triangles_front[tricnt].p1.x, triangles_front[tricnt].p1.y, triangles_front[tricnt].p1.z,
											triangles_front[tricnt].p2.x, triangles_front[tricnt].p2.y, triangles_front[tricnt].p2.z,
											triangles_front[tricnt].p3.x, triangles_front[tricnt].p3.y, triangles_front[tricnt].p3.z);
									}
									for(tricnt=0; tricnt<num_back; tricnt++) {
										Con_DPrintf("back  p1 %5.1f %5.1f %5.1f p2 %5.1f %5.1f %5.1f p3 %5.1f %5.1f %5.1f\r\n",
											triangles_back[tricnt].p1.x, triangles_back[tricnt].p1.y, triangles_back[tricnt].p1.z,
											triangles_back[tricnt].p2.x, triangles_back[tricnt].p2.y, triangles_back[tricnt].p2.z,
											triangles_back[tricnt].p3.x, triangles_back[tricnt].p3.y, triangles_back[tricnt].p3.z);
									}
								}
														
	//							Con_DPrintf("4 - ");
								// delete this volume
	//							deleteit = true;
								UT_DeleteTriangleFromVolume(vol1, currtri);
								// and add new ones to head so this iteration won't be messed up
								for(tricnt=0; tricnt<num_front; tricnt++) {
									// check tri in planes vol 2
	//								if (R_IsTriangleInVolumeBounds(vol2, &triangles_front[tricnt])) {
										shadowtri_t *newtri = UT_AllocShadowTri();
										newtri->plane = currtri->plane;
										R_FillTriangle(newtri, &triangles_front[tricnt].p1, &triangles_front[tricnt].p2, &triangles_front[tricnt].p3);
										UT_AddTriangleToVolumeHead(vol1, newtri);
										// delete this volume
//										deleteit = true;
										
	//								}
								}
	//							Con_DPrintf("5 - ");
								for(tricnt=0; tricnt<num_back; tricnt++) {
									// check tri in planes vol 2
	//								if (R_IsTriangleInVolumeBounds(vol2, &triangles_back[tricnt])) {
										shadowtri_t *newtri = UT_AllocShadowTri();
										newtri->plane = currtri->plane;
										R_FillTriangle(newtri, &triangles_back[tricnt].p1, &triangles_back[tricnt].p2, &triangles_back[tricnt].p3);
										UT_AddTriangleToVolumeHead(vol1, newtri);
										// delete this volume
//										deleteit = true;
	//								}
								}
							}
							
//							Con_DPrintf("6 - ");						
						} else 
						if (num_front + num_back == 0) {
							Con_DPrintf("num_front + num_back == 0!!!\r\n");
						}
						
//						Con_DPrintf("7 - ");
					}
					// delete this volume
//					if (deleteit) UT_DeleteTriangleFromVolume(vol1, currtri);
					// TODO: tel de aangemaakte voor logging
					currtri = currtri->nexttri;
				}

				currtri = vol1->nexttri;
				
				while(currtri) {
				
					currtri = currtri->nexttri;
				}
			}
		}
	}

}


/*
=================
R_OptimizeVolumes()
=================
*/
void R_OptimizeVolumes(dlight_t *light) {
	// loop 1 thru this light's volumes -> currvol1
	// 	loop 2 thru this light's volumes starting with index loop1+1 -> currvol2
	// 		loop thru vol1's triangles -> currtri_vol1
	// 			loop thru vol2's planes -> currplane_vol2
	// 				dotproduct all points of currtri_vol1 with plane
	//				in case dotproduct < 0
	//					currtri_vol1 not in currvol2
	//					break;
	//			end loop
	//			in case currtri_vol1 in currvol2
	//				delete currtri_vol1
	//		end loop
	// 		loop thru vol2's triangles -> currtri_vol2
	// 			loop thru vol1's planes -> currplane_vol1
	// 				dotproduct all points of currtri_vol2 with plane
	//				in case dotproduct < 0
	//					currtri_vol2 not in currvol1
	//					break;
	//			end loop
	//			in case currtri_vol2 in currvol1
	//				delete currtri_vol2
	//		end loop
	//	end loop 2
	// end loop 1
}


/*
=================
R_CalculateVolumesForLight()
=================
*/
void R_CalculateVolumesForLight(dlight_t *light, msurface_t *firstsurface, int num_surfaces) {
	int i;

	shadowvolt_t *vol = UT_AllocShadowVolume();
	light->num_staticshadowvolumes = 0;
	light->staticshadowvolumes = vol;

	if (!vol) {
		Con_Printf("R_CalculateVolumesForLight: not enough shadow volume storage. Volume is skipped\r\n");
		return;
	}
	
	for (i=0; i<num_surfaces; i++) {
		// enough room?
		msurface_t *surf = &firstsurface[i];
		
		// calculate the shadow volume
		// DRS since only surface backfaces are used, the func inverts vertice order
		if ((vol = UT_AllocShadowVolume())) {
			if(R_CreateVolumeFromSurface(light, surf, vol)) {
				light->num_staticshadowvolumes++;
			}
		} else {
			Con_Printf("R_CalculateVolumesForLight: not enough shadow volume storage. Volume is skipped\r\n");
			return;
		}
	}
	
	// optimize them
	R_CutVolumes(light);
	R_OptimizeVolumes(light);
}


/*
=================
R_CalculateSurfaceStaticVolume()
returns true if shadowvol for surface has been created, assumes shadowvol_t->firstshadowfrag points to
an array of sufficient shadowfrags
access: private
=================
*/
qboolean R_CalculateSurfaceStaticVolume(const dlight_t *light, const msurface_t *surf, shadowvol_t *shadowvol) {
	int 			i;
	int 			numverts;
	float 		*v;
	Vector 		delta[MAX_FRAGS_VOLUME]; // max 32 vertices per surface TODO: check actual maximum
	float			length[MAX_FRAGS_VOLUME]; // testhack
	Vector 		lpos;
	float			rad2 = light->radius*4; // just increase visibility a bit
	float 		radsq 	= pow(rad2, 2); 
	glpoly_t 	*polys = surf->polys;
	
	qboolean isInRange = false;
	v 	= polys->verts[0];
	lpos.x = light->origin[0];
	lpos.y = light->origin[1];
	lpos.z = light->origin[2];
	// check vertices in range (radius^2)
	for(numverts=0; numverts<polys->numverts && numverts<MAX_FRAGS_VOLUME; numverts++, v+=VERTEXSIZE) { 
		delta[numverts].x = v[0] - lpos.x;
		delta[numverts].y = v[1] - lpos.y;
		delta[numverts].z = v[2] - lpos.z;
		float lengthsq = pow(delta[numverts].x, 2) + pow(delta[numverts].y, 2) + pow(delta[numverts].z, 2);
		if (lengthsq == 0) { // testhack
			lengthsq = 1;     // testhack
		}                             // testhack
		length[numverts] = lengthsq; // testhack
		if (lengthsq < radsq) {
			isInRange = true;
		}
//Con_DPrintf("Surf %p vertice: near %5.1f %5.1f %5.1f\r\n", surf, v[0], v[1], v[2]);
	} 
//Con_DPrintf("Surf %p has vertices in range: %i\r\n", surf, isInRange);
	if (!isInRange) return false;
	
	// don't want to calculate delta lengths, so determine perpendicalar distance to surface
	float dist = fabs(DotProduct(light->origin, surf->plane->normal) - surf->plane->dist);
	
	// divide is unavoidable
	if (dist < 1) return false;
	// scale is used to multiply the vertice with. This leads to a vertice that's more distant from 
	// the light to form the volume
//	float scale = rad2/dist;
//	if (scale < 1.0f) scale = 1.0f;
	shadowvol->vis = 0;
	shadowvol->num_shadowfrags = numverts;
	shadowvolfrag_t *currshadowfrag = shadowvol->firstshadowfrag;
	for(i=0; i<numverts; i++) {
		Vector far; // temp for far vector
		float scale = rad2/sqrtf(length[i]);
		if (scale < 1.0f) scale = 1.0f;
		
		guVecScale(&delta[i], &far, scale); // calc the far vertex position with light as origin
//		guVecAdd(&delta[i], &lpos, &currshadowfrag[i].near); // translate back to world and store
//		guVecAdd(&far, &lpos, &currshadowfrag[i].far); // translate back to world
		guVecAdd(&delta[i], &lpos, &currshadowfrag[numverts-1-i].near); // translate back to world and store
		guVecAdd(&far, &lpos, &currshadowfrag[numverts-1-i].far); // translate back to world
//Con_DPrintf("Surf %p volume vertice: near %5.1f %5.1f %5.1f far %5.1f %5.1f %5.1f \r\n", surf, 
//	currshadowfrag[i].near.x, currshadowfrag[i].near.y, currshadowfrag[i].near.z, 
//	currshadowfrag[i].far.x, currshadowfrag[i].far.y, currshadowfrag[i].far.z);
		shadowvol->vis |= 1<<i; 
//		shadowvol->vis |= 1<<(numverts-1-i); 
	}
	
	return true;
}


/*
=================
R_PointsOnVector
=================
*/
qboolean R_PointsOnVector(Vector *vect, Vector *p1, Vector *p2) {
	Vector cross;
	guVecCross(vect, p1, &cross);
//Con_DPrintf("VecCross 1: %5.3f %5.3f %5.3f - %5.3f %5.3f %5.3f - %5.3f %5.3f %5.3f \r\n", 
//vect->x, vect->y, vect->z, p1->x, p1->y, p1->z, cross.x, cross.y, cross.z); 
	if (!(fabs(cross.x) < BACKFACE_EPSILON &&
		fabs(cross.y) < BACKFACE_EPSILON &&
		fabs(cross.z) < BACKFACE_EPSILON)) {
		return false;
	}
	guVecCross(vect, p2, &cross);
//Con_DPrintf("VecCross 2: %5.3f %5.3f %5.3f - %5.3f %5.3f %5.3f - %5.3f %5.3f %5.3f \r\n", 
//vect->x, vect->y, vect->z, p2->x, p2->y, p2->z, cross.x, cross.y, cross.z); 
	if (!(fabs(cross.x) < BACKFACE_EPSILON &&
		fabs(cross.y) < BACKFACE_EPSILON &&
		fabs(cross.z) < BACKFACE_EPSILON)) {
		return false;
	}
	Vector vecti, p1i, p2i;
	vecti.x = -vect->x;
	vecti.y = -vect->y;
	vecti.z = -vect->z;
	guVecSub(vect, p1, &p1i);
	guVecSub(vect, p2, &p2i);
	if (guVecDotProduct(vect, p1) < 0 && guVecDotProduct(vect, p2) < 0)
		return false;
	if (guVecDotProduct(&vecti, &p1i) < 0 && guVecDotProduct(&vecti, &p2i) < 0)
		return false;
//	float absvx = fabs(vect->x);
//	float absvy = fabs(vect->y);
//	float absvz = fabs(vect->z);
//	float absvx = vect->x;
//	float absvy = vect->y;
//	float absvz = vect->z;
	// both points on line, check bounds
//	if (!(fabs(p1->x) <= absvx &&
//		fabs(p1->y) <= absvy &&
//		fabs(p1->z) <= absvz)) {
//		return false;
//	}
	// both points on line, check bounds
//	if (!(fabs(p2->x) <= absvx &&
//		fabs(p2->y) <= absvy &&
//		fabs(p2->z) <= absvz)) {
//		return false;
//	}
//Con_DPrintf("VecCross i: %i - %5.3f %5.3f %5.3f - %5.3f %5.3f %5.3f - %5.3f %5.3f %5.3f \r\n", icnt, 
//matchVect.x, matchVect.y, matchVect.z,
//fragmentVect.x, fragmentVect.y, fragmentVect.z,
//pointOnMatchVect.x, pointOnMatchVect.y, pointOnMatchVect.z); 
	
	return true;
}



/*
=================
R_CheckPointsInShadow()
access: private
=================
*/
qboolean R_CheckPointsInShadow(const shadowvol_t *caster, Vector *points, const int num_points) {
	Vector normal, t, b, delta;
	int i, j, pts, num_shadowfrags = caster->num_shadowfrags;
	
	// calculate this shadow's 'frustrum' normals. These are used to perform dotproducts
	// against given points
	for(i=0; i<num_shadowfrags; i++) {
		j = i + 1;
		if (j==num_shadowfrags) j=0;
		
		shadowvolfrag_t *frag1 = &caster->firstshadowfrag[i];
		shadowvolfrag_t *frag2 = &caster->firstshadowfrag[j];
		// calculate tangent and bitangent the dumb way
		guVecSub(&frag1->far, &frag1->near, &t);
		guVecSub(&frag2->near, &frag1->near, &b);
		// calculate the normal, though not normalized
		guVecCross(&t, &b, &normal);
if(isTestMap) Con_DPrintf("plane i %i j %i - f1f %5.1f %5.1f %5.1f - f1n %5.1f %5.1f %5.1f - f2n %5.1f %5.1f %5.1f\r\n", i, j,
frag1->far.x, frag1->far.y, frag1->far.z,
frag1->near.x, frag1->near.y, frag1->near.z,
frag2->near.x, frag2->near.y, frag2->near.z
);

if(isTestMap) Con_DPrintf("plane tbn i %i j %i - f1f %5.1f %5.1f %5.1f - f1n %5.1f %5.1f %5.1f - f2n %5.1f %5.1f %5.1f\r\n", i, j,
t.x, t.y, t.z,
b.x, b.y, b.z,
normal.x, normal.y, normal.z);


		for(pts=0; pts<num_points; pts++) {
			guVecSub(&frag1->near, &points[pts], &delta);
if(isTestMap) Con_DPrintf("point i %i j %i - point %5.1f %5.1f %5.1f delta %5.1f %5.1f %5.1f dp %5.2f\r\n", i, j,
points[pts].x, points[pts].y, points[pts].z,
delta.x, delta.y, delta.z,
guVecDotProduct(&delta, &normal));

			if (guVecDotProduct(&delta, &normal) > 0) {
				return false;
			}
		}
	}
	return true;
}


/*
=================
R_FilterEncapsulatedVolumeFrags()
Removes encapsulated fragment quads from visibility mask
access: private
=================
*/
void R_FilterEncapsulatedVolumeFrags(shadowvol_t *shadowvol, const int num_volumes) {
	int i, j, jcnt;
	
	for(i=0; i<num_volumes; i++) {
		shadowvol_t *ivol = &shadowvol[i]; 

		for(j=0; j<num_volumes; j++) {
			qboolean keep = false;
			shadowvol_t *jvol = &shadowvol[j]; 
			
			if (i==j) continue;
			
			// check with frags from the possibly matching volume
			for(jcnt=0; jcnt<jvol->num_shadowfrags; jcnt++) {
				// TODO optimize
				if (!R_CheckPointsInShadow(ivol, &jvol->firstshadowfrag[jcnt].near, 1)) {
					// point outside, so keep it TODO: split it!
					keep = true;
					break;
				}
			}
			if (!keep) {
				if(isTestMap) Con_DPrintf("!keep! i %i j %i\r\n", i, j);
				jvol->vis = 0;
				jvol->num_shadowfrags = 0; // keep in mind..
			}
		}
	}
}


/*
=================
R_FilterDuplicateVolumeFrags()
Removes duplicate fragment quads from visibility mask
access: private
=================
*/

void R_FilterDuplicateVolumeFrags(shadowvol_t *shadowvol, const int num_volumes) {
	int i, j, icnt, jcnt;
	
	for(i=0; i<num_volumes; i++) {
		shadowvol_t *ivol = &shadowvol[i]; 

		for(j=i+1; j<num_volumes; j++) {
			int imatch[MAX_FRAGS_VOLUME], nummatch = 0;
			shadowvol_t *jvol = &shadowvol[j]; 

			// find connecting vertices
			for(icnt=0; icnt<ivol->num_shadowfrags; icnt++) {
				// take a frag from a current volume
				float ix = ivol->firstshadowfrag[icnt].near.x;
				float iy = ivol->firstshadowfrag[icnt].near.y;
				float iz = ivol->firstshadowfrag[icnt].near.z;

				// check with frags from the possibly matching volume
				for(jcnt=0; jcnt<jvol->num_shadowfrags; jcnt++) {
					float jx = jvol->firstshadowfrag[jcnt].near.x;
					float jy = jvol->firstshadowfrag[jcnt].near.y;
					float jz = jvol->firstshadowfrag[jcnt].near.z;
					if (ix == jx &&  iy == jy && iz == jz) {
						// these vertices match, record them
						imatch[nummatch] = icnt;
						nummatch++;
if(isTestMap) Con_DPrintf("Current Fragment i %i j %i - icnt %i -> %5.1f %5.1f %5.1f\r\n", i, j, icnt, ix, iy, iz); 
if(isTestMap) Con_DPrintf("Fragment Match i %i j %i - icnt: %i jcnt: %i nummatch %i\r\n", i, j, icnt, jcnt, nummatch); 
						break;
					}
				}
			}
		
			// enough matches?
			if (nummatch == 2) {
if(isTestMap) Con_DPrintf("Current Fragment i %i j %i \r\n", i, j); 
				// 'disable' all fragment quads on the line between the matching points
				int numfragsForCount;
				Vector matchVect;
				Vector fragmentVect0;
				Vector fragmentVect1;
				Vector *matchBase = &ivol->firstshadowfrag[imatch[0]].near;
				guVecSub(&ivol->firstshadowfrag[imatch[1]].near, matchBase, &matchVect);
				
				// loop thru current volume
				numfragsForCount = ivol->num_shadowfrags-1;
				for(icnt=0; icnt<numfragsForCount; icnt++) {
if(isTestMap) Con_DPrintf("Fragment quad i: %i mask %X\r\n", icnt, ivol->vis); 
					// point 1 and point 2 on matching vector?
					guVecSub(&ivol->firstshadowfrag[icnt].near, matchBase, &fragmentVect0);
					guVecSub(&ivol->firstshadowfrag[icnt+1].near, matchBase, &fragmentVect1);
					if (R_PointsOnVector(&matchVect, &fragmentVect0, &fragmentVect1)) {
						// yes, unset visibility bit
						ivol->vis &= ~((int) 1<<icnt);
if(isTestMap) Con_DPrintf("Removed fragment quad i: %i mask %X\r\n", icnt, ivol->vis); 
					}
				}
				// remaining quad
if(isTestMap) Con_DPrintf("Fragment quad i: %i mask %X\r\n", numfragsForCount, ivol->vis); 
				guVecSub(&ivol->firstshadowfrag[numfragsForCount].near, matchBase, &fragmentVect0);
				guVecSub(&ivol->firstshadowfrag[0].near, matchBase, &fragmentVect1);
				if (R_PointsOnVector(&matchVect, &fragmentVect0, &fragmentVect1)) {
					// yes, unset visibility bit
					ivol->vis &= ~((int) 1<<numfragsForCount);
if(isTestMap) Con_DPrintf("Removed fragment quad i: %i mask %X\r\n", icnt, ivol->vis); 
				}
				
				// do the same for matching volume
				numfragsForCount = jvol->num_shadowfrags-1;
				for(jcnt=0; jcnt<numfragsForCount; jcnt++) {
if(isTestMap) Con_DPrintf("Fragment quad j: %i mask %X\r\n", jcnt, jvol->vis); 
					// point 1 and point 2 on matching vector?
					guVecSub(&jvol->firstshadowfrag[jcnt].near, matchBase, &fragmentVect0);
					guVecSub(&jvol->firstshadowfrag[jcnt+1].near, matchBase, &fragmentVect1);
					if (R_PointsOnVector(&matchVect, &fragmentVect0, &fragmentVect1)) {
						// yes, unset visibility bit
						jvol->vis &= ~((int) 1<<jcnt);
if(isTestMap) Con_DPrintf("Removed fragment quad j: %i mask %X\r\n", jcnt, jvol->vis); 
					}
				}
				// remaining quad
if(isTestMap) Con_DPrintf("Fragment quad j: %i mask %X\r\n", numfragsForCount, jvol->vis); 
				guVecSub(&jvol->firstshadowfrag[numfragsForCount].near, matchBase, &fragmentVect0);
				guVecSub(&jvol->firstshadowfrag[0].near, matchBase, &fragmentVect1);
				if (R_PointsOnVector(&matchVect, &fragmentVect0, &fragmentVect1)) {
					// yes, unset visibility bit
					jvol->vis &= ~((int) 1<<numfragsForCount);
if(isTestMap) Con_DPrintf("Removed fragment quad j: %i mask %X\r\n", jcnt, jvol->vis); 
				}
			}
		}
		
	}
	
}


/*
=================
R_CreateShadowVolumesFromSurfaceList()
Fills static shadow volume db with generated volumes from given light's surfaces
access: public
=================
*/
void R_CreateShadowVolumesFromSurfaceList(dlight_t *light, const msurface_t *surf, const int num_surfaces) {
	
	R_CalculateVolumesForLight(light, surf, num_surfaces);
/*	int i;

	light->num_staticshadowvolumes = 0;
	light->firststaticshadowvolume = &r_sshadowvolumes[r_numsshadowvolumes];

	for (i=0; i<num_surfaces; i++) {
		// enough room?
		if (r_numsshadowvolumes<MAX_STATIC_SHADOWVOLUMES && 
			surf[i].polys->numverts + r_numsshadowvolfrags < MAX_STATIC_SHADOWFRAGS) {
			r_sshadowvolumes[r_numsshadowvolumes].firstshadowfrag = &r_sshadowvolfrags[r_numsshadowvolfrags];

			// calculate the shadow volume
			// DRS since only surface backfaces are used, the func inverts vertice order
			if (R_CalculateSurfaceStaticVolume(light, &surf[i], &r_sshadowvolumes[r_numsshadowvolumes])) {
				// it was created, increase counts
				r_numsshadowvolfrags += r_sshadowvolumes[r_numsshadowvolumes].num_shadowfrags;
				r_numsshadowvolumes++;
				light->num_staticshadowvolumes++;
			}
		} else {
			Con_Printf("R_GroupAndStoreVolumes: not enough shadow volume storage. Volume is skipped\r\n");
		}
	}
	
	// group volumes to bigger ones
//	if (isTestMap) {
//		R_FilterEncapsulatedVolumeFrags(light->firststaticshadowvolume, light->num_staticshadowvolumes); // eerst
		R_FilterDuplicateVolumeFrags(light->firststaticshadowvolume, light->num_staticshadowvolumes);
//	}
*/
} 


/*
=================
R_InitStencilTextures()
Inits stencil textures
access: public
=================
*/
void R_InitStencilTextures(void) {
	// TODO: relocate
	r_shadowtri_t = Hunk_AllocName(MAX_SHADOWTRIS * sizeof(shadowtri_t), "triangles");


	r_stencilTextureBuf = 0;
	r_stencilTextureBuf = SYS_AllocArena1MemLo(STENCIL_WIDTH * STENCIL_HEIGHT * MAX_STENCIL_TEXTURES, 32);	 // TODO: need to free somewhere
//	r_stencilTextureBuf = memalign(32, 2 * STENCIL_WIDTH * STENCIL_HEIGHT * MAX_STENCIL_TEXTURES);	 // TODO: need to free somewhere
	
	if (!r_stencilTextureBuf || SYS_GetArena1Lo() > SYS_GetArena1Hi()) {
		Sys_Error("R_InitStencilTextures: Couldn't initialize stencil textures.");
	} 
//	r_stencilTextureBuf = MEM_K0_TO_K1(r_stencilTextureBuf);
	memset(r_stencilTextureBuf, 0x00, STENCIL_WIDTH * STENCIL_HEIGHT * MAX_STENCIL_TEXTURES);

	r_numstencilTextures = 0;
	r_stencilTextureSize = STENCIL_WIDTH * STENCIL_HEIGHT;
	int i;
	for (i=0; i<MAX_STENCIL_TEXTURES; i++) {
		r_stencilTextures[i].data = (void *) ((u8 *) r_stencilTextureBuf) + r_stencilTextureSize * i;
		r_stencilTextures[i].scaled_width = STENCIL_WIDTH;
		r_stencilTextures[i].scaled_height = STENCIL_HEIGHT;
		GX_InitTexObj(
			&r_stencilTextures[i].gx_tex, 
			r_stencilTextures[i].data, 
			r_stencilTextures[i].scaled_width, 
			r_stencilTextures[i].scaled_height, 
			GX_TF_I8,
			GX_CLAMP, GX_CLAMP, GX_FALSE);
	}
	
	r_volumecol.r  	= 0x01<<0; // we need to keep in mind that this is scaled to RGB5 or RGB4, so shift left...
	r_volumecol.g 	= 0x00<<0;
	r_volumecol.b 	= 0x00<<0;
	r_volumecol.a		= 0x00;
	r_blankcol.r  		= 0x80;
	r_blankcol.g 		= 0x00;
	r_blankcol.b 		= 0x00;
	r_blankcol.a 		= 0x00;

	guMtxIdentity(r_identity);
	
}


/*
=================
R_ClearStencilTextures
Sets usage to zero
=================
*/
void R_ClearStencilTextures(void) {
	r_numstencilTextures = 0;
}


/*
=================
R_SetupForStencilTexture
Sets usage to zero
=================
*/
void R_SetupForStencilTexture(void) {
	GX_SetColorUpdate(GX_TRUE); // TODO
	GX_SetAlphaUpdate(GX_TRUE); // TODO

	GX_SetZCompLoc(GX_TRUE);
	GX_ClearVtxDesc();
	GX_SetVtxDesc(GX_VA_POS, GX_DIRECT);
	GX_SetVtxAttrFmt(GX_VTXFMT3, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
	
	GX_SetNumIndStages(0);
	GX_SetNumTexGens(0);
	GX_SetNumTevStages(1);

	GX_SetTevDirect(GX_TEVSTAGE0);
//	GX_SetTevKColor(GX_TEV_KCSEL_K0, r_volumecol);
//	GX_SetTevKColorSel(GX_TEVSTAGE0, GX_TEV_KCSEL_K0);	
//	GX_SetTevColor(GX_TEVPREV, r_volumecol);
//	GX_SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV);
	GX_SetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
	GX_SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORDNULL, GX_TEXMAP_DISABLE, GX_COLORNULL);

	
}


/*
=================
R_Blank()
=================
*/
void R_Blank(void) {
	Mtx x, y;
	guMtxIdentity(y);
	Vector cam = {0.0F, 0.0F, 0.0F},
			up = {0.0F, 1.0F, 0.0F},
		  look = {0.0F, 0.0F, -1.0F};
	
//	GX_SetTevColor(GX_TEVPREV, r_blankcol);
//	GX_SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV);
	GX_SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_HALF);
	GX_SetBlendMode(GX_BM_NONE, GX_BL_ONE, GX_BL_ONE, GX_LO_COPY);
	
	GX_SetZMode(GX_ENABLE, GX_ALWAYS, GX_FALSE); 
	guLookAt(x, &cam, &up, &look); 
	guMtxTransApply(y, y, 0, 0, -8);
	guMtxConcat(x, y, y);
	GX_LoadPosMtxImm(y, GX_PNMTX1);
	GX_SetCurrentMtx(GX_PNMTX1);
	GX_Begin(GX_QUADS, GX_VTXFMT3, 4);
	GX_Position3f32(-11, -6, 0);
	GX_Position3f32(-11, 6, 0);
	GX_Position3f32(11,  6, 0);
	GX_Position3f32(11,  -6, 0);

	GX_End();
	GX_DrawDone();
	GX_SetCurrentMtx(GX_PNMTX0);

	GX_SetTevColor(GX_TEVPREV, r_volumecol); // TODO move
	GX_SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV);
	
	
}


/*
===================
R_DrawShadowVolumeStencilTexture2()
===================
*/ 
void R_DrawShadowVolumeStencilTexture2(dlight_t *light, const qboolean clearfb) {
	int i, j, face;
	int num_volumes;
	shadowvolt_t *vol;
	
	num_volumes = light->num_staticshadowvolumes;

	// abandon if no stencils left
	if (r_numstencilTextures >= MAX_STENCIL_TEXTURES) {
		light->stenciltexnum = -1;
		return;
	}
	
	light->stenciltexnum = r_numstencilTextures;
	r_numstencilTextures++;

	R_Blank();
	GX_SetZMode(GX_ENABLE, GX_GEQUAL, GX_FALSE); 
	
	for (i=0; i<num_volumes; i+=NUM_VOLUMES_PASS) {

		for (face=0; face<2; face++) {
			if (face == 0 ) {
				GX_SetCullMode(GX_CULL_FRONT);  // blend
				GX_SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	// Increase backface count
			} else {
				GX_SetCullMode(GX_CULL_BACK);  // subtr
				GX_SetBlendMode(GX_BM_SUBSTRACT, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	// Decrease backface count
			}
			for (j=0; j<NUM_VOLUMES_PASS && i+j<num_volumes; j++) {
				vol = &light->staticshadowvolumes[i+j];
				shadowtri_t *tri = vol->nexttri;
				
				// draw triangles
				while(tri) {
					GX_Begin(GX_TRIANGLES, GX_VTXFMT3, 3);
						GX_Position3f32(	tri->p1.x,	tri->p1.y,	tri->p1.z);
						GX_Position3f32(	tri->p2.x,	tri->p2.y,	tri->p2.z);
						GX_Position3f32(	tri->p3.x,	tri->p3.y,	tri->p3.z);
					GX_End();
					
					tri = tri->nexttri;
				}
			}
			GX_PixModeSync(); // TODO: remove?
			GX_DrawDone();
		}
	}
	
	// export EFB to texture
	int width = r_stencilTextures[light->stenciltexnum].scaled_width;
	int height =r_stencilTextures[light->stenciltexnum].scaled_height;
	void *data = r_stencilTextures[light->stenciltexnum].data;
	
	if (clearfb) {
		GX_SetZMode(GX_ENABLE, GX_LEQUAL, GX_TRUE); // funny feature, this clears Z, latter FALSE doesn't
	} else {
		// clear color only z setup already done above
		// GX_SetZMode(GX_ENABLE, GX_LEQUAL, GX_FALSE); // funny feature, this doesn't!
	}
	GX_SetAlphaUpdate(GX_TRUE);
	GX_SetColorUpdate(GX_TRUE);
	GX_SetTexCopySrc(0, 0, width, height);
	
	GX_SetTexCopyDst(width, height, GX_CTF_R8, GX_FALSE); 

//	GX_CopyTex(data, GX_TRUE);
	GX_CopyTex(data, clearfb); // TODO: don't mind the requirement of -1 values in fb
	GX_PixModeSync();
	DCFlushRange(data, r_stencilTextureSize);
	
}



/*
=================
R_DrawShadowVolumeStencilTexture
Draw the shadow volumes
=================
*/
void R_DrawShadowVolumeStencilTexture(dlight_t *light, const qboolean clearfb) {
	int i, j, face, f1, f2;
	int num_volumes, num_fragments;
	shadowvol_t *vol;
	shadowvolfrag_t *vf1, *vf2;
	
	num_volumes = light->num_staticshadowvolumes;

	light->stenciltexnum = r_numstencilTextures;
	r_numstencilTextures++;

//	GXColor clear = {0x00, 0x00, 0x00, 0x00};
//	GXColor min = {0x00, 0x00, 0x00, 0x00};
//	GX_SetCopyClear(min, GX_MAX_Z24);

	R_Blank();
	GX_SetZMode(GX_ENABLE, GX_GEQUAL, GX_FALSE); 
	
	for (i=0; i<num_volumes; i+=NUM_VOLUMES_PASS) {


if(isTestMap && i != 0) continue; 	
//	i = 0; {

		for (face=0; face<2; face++) {
			if (face == 0 ) {
				GX_SetCullMode(GX_CULL_FRONT);  // blend
//				GX_SetBlendMode(GX_BM_SUBSTRACT, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	// Decrease backface count
				GX_SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	// Increase backface count
//				GX_PokeBlendMode(GX_BM_SUBSTRACT, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	
			} else {
				GX_SetCullMode(GX_CULL_BACK);  // subtr
//				GX_SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	// Increase backface count
				GX_SetBlendMode(GX_BM_SUBSTRACT, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	// Decrease backface count
//				GX_PokeBlendMode(GX_BM_SUBSTRACT, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	
			}
			for (j=0; j<NUM_VOLUMES_PASS && i+j<num_volumes; j++) {
				vol = &light->firststaticshadowvolume[i+j];
				num_fragments = vol->num_shadowfrags;
				
//				if (face == 0) {
					GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT3, num_fragments);
					for (f1=num_fragments-1; f1>-1; f1--) { // inv winding
						vf1 = &vol->firstshadowfrag[f1];
						GX_Position3f32(	vf1->far.x, vf1->far.y, vf1->far.z);
					}
					GX_End();
//				} else {
					GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT3, num_fragments);
					for (f1=0; f1<num_fragments; f1++) {
						vf1 = &vol->firstshadowfrag[f1];
						GX_Position3f32(	vf1->near.x, vf1->near.y, vf1->near.z);
					}
					GX_End();
//				}
				
				for (f1=0; f1<num_fragments; f1++) {
					if (vol->vis & 1<<f1) {
						f2 = f1 + 1;
						if (f2 == num_fragments) f2 = 0;
						
						vf1 = &vol->firstshadowfrag[f1];
						vf2 = &vol->firstshadowfrag[f2];
						GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT3, 4);
						GX_Position3f32(	vf1->far.x, 	vf1->far.y, 	vf1->far.z);
						GX_Position3f32(	vf2->far.x, 	vf2->far.y, 	vf2->far.z);
						GX_Position3f32(	vf2->near.x, vf2->near.y, vf2->near.z);
						GX_Position3f32(	vf1->near.x, vf1->near.y, vf1->near.z);
						GX_End();
//if(isTestMap) Con_DPrintf("vol %i - %02X - 0:%5.1f %5.1f %5.1f  1:%5.1f %5.1f %5.1f  2:%5.1f %5.1f %5.1f  3:%5.1f %5.1f %5.1f \r\n", i+j, vol->vis,
//vf1->far.x, 	vf1->far.y, 	vf1->far.z,
//vf2->far.x, 	vf2->far.y, 	vf2->far.z,
//vf2->near.x, vf2->near.y, vf2->near.z,
//vf1->near.x, vf1->near.y, vf1->near.z);

						
if (vf1->near.x == -16 &&
	vf1->near.y == 128 &&
	vf1->near.z == -96 &&
	vf2->near.x == -16 &&
	vf2->near.y == 128 &&
	vf2->near.z ==  96) {
	Con_DPrintf("- %i - %02X", i+j, vol->vis);
}
if (vf1->near.x == -16 &&
	vf1->near.y == 128 &&
	vf1->near.z ==  96 &&
	vf2->near.x == -16 &&
	vf2->near.y == 128 &&
	vf2->near.z ==  -96) {
	Con_DPrintf("- %i - %02X", i+j, vol->vis);
}
					}
				}
			}
//			GX_Flush();
			GX_PixModeSync();
			GX_DrawDone();
		}
	}
	
	int width = r_stencilTextures[light->stenciltexnum].scaled_width;
	int height =r_stencilTextures[light->stenciltexnum].scaled_height;
	void *data = r_stencilTextures[light->stenciltexnum].data;
	
//	GX_SetCopyClear(clear, GX_MAX_Z24);
	if (clearfb) {
		GX_SetZMode(GX_ENABLE, GX_LEQUAL, GX_TRUE); // funny feature, this clears Z, latter FALSE doesn't
	} else {
		// clear color only z setup already done above
		// GX_SetZMode(GX_ENABLE, GX_LEQUAL, GX_FALSE); // funny feature, this doesn't!
	}
	GX_SetAlphaUpdate(GX_TRUE);
	GX_SetColorUpdate(GX_TRUE);
	GX_SetTexCopySrc(0, 0, width, height);
//	GX_SetTexCopyDst(width, height, GX_TF_RGB565, GX_FALSE); // yes, we output to 565
	
	GX_SetTexCopyDst(width, height, GX_CTF_R8, GX_FALSE); // yes, we output to 565

//	GX_CopyTex(data, GX_TRUE);
	GX_CopyTex(data, clearfb);
	GX_PixModeSync();
	DCFlushRange(data, r_stencilTextureSize);
	
}


/*
=================
R_DrawShadowVolumes
=================
*/
void R_DrawShadowVolumes(void) {

	int i, numlights = 0;
	dlight_t *lights[MAX_STENCIL_TEXTURES];

	// DRS shadow volumes
	R_ClearStencilTextures();
	R_SetupForStencilTexture();
	// static lights
	for(i=0; i<cl_numstaticlights; i++) {
		if (cl_staticlights[i].visframe == r_framecount && cl_staticlights[i].num_staticshadowvolumes) {
			if(numlights<MAX_STENCIL_TEXTURES) {
				lights[numlights] = &cl_staticlights[i];
				numlights++;
			}
		}
	}
	if (!numlights) {
		GL_ClearEFB();
		return;
	}
	for(i=numlights-1; i>-1; i--) {
		R_DrawShadowVolumeStencilTexture2(lights[i], i==0);
//		R_DrawShadowVolumeStencilTexture(lights[i], i==0); // clear
//Con_DPrintf("Light drawn %i %i %i\r\n", i, i==0, lights[i]->num_staticshadowvolumes);
	}
	
//	DCFlushRange(r_stencilTextureBuf, 2 * STENCIL_WIDTH * STENCIL_HEIGHT * MAX_STENCIL_TEXTURES);
	
}



/*
===============
R_SetDefaultQuakeShader
Temporary...
===============
*/
void R_SetDefaultQuakeShader(void) {
	GX_SetColorUpdate(GX_TRUE);
	GX_SetAlphaUpdate(GX_TRUE);
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

/*
=================
UT_ClearLitSurfaceSilo
This isn't the most attractive way to gather surfaces, but it works
=================
*/
void UT_ClearLitSurfaceSilo(void) {
	ut_numlitsurfacesincache = 0;
}

/*
=================
UT_AddLitSurfaceToSilo
This isn't the most attractive way to gather surfaces, but it works
=================
*/
void UT_AddLitSurfaceToSilo(const msurface_t *surf) {
	if (ut_numlitsurfacesincache < MAX_SURFACES_LIGHT) {
		ut_litsurfacecache[ut_numlitsurfacesincache] = *surf;
		ut_numlitsurfacesincache++;
	} else {
		Con_Printf("UT_AddLitSurface: Too many surfaces in cache\r\n");
	}
}

/*
=================
UT_GetLitSurfacesFromSilo
This isn't the most attractive way to gather surfaces, but it works
out: numsurfaces
=================
*/
msurface_t *UT_GetLitSurfacesFromSilo(int *numsurfaces) {
	*numsurfaces = ut_numlitsurfacesincache;
	return &ut_litsurfacecache[0];
}


void testGrab(void) {
	void *data = r_stencilTextures[0].data;
	
/*	if (clearfb) {
		GX_SetZMode(GX_ENABLE, GX_LEQUAL, GX_TRUE); // funny feature, this clears Z, latter FALSE doesn't
	} else {
		// clear color only z setup already done above
		// GX_SetZMode(GX_ENABLE, GX_LEQUAL, GX_FALSE); // funny feature, this doesn't!
	}
*/

	int width = r_stencilTextures[0].scaled_width;
	int height =r_stencilTextures[0].scaled_height;
	
	GX_SetAlphaUpdate(GX_TRUE);
	GX_SetColorUpdate(GX_TRUE);
	GX_SetTexCopySrc(0, 0, width, height);
	GX_SetTexCopyDst(width, height, GX_TF_RGB565, GX_FALSE); // yes, we output to 565
	GX_CopyTex(data, GX_FALSE);
	GX_PixModeSync();
	DCFlushRange(data, r_stencilTextureSize);

}

int r_subframe = 0;
int r_showstencil = 0;
extern qboolean scr_takeScreenshot;

void testVolumeMap(void) {
	Mtx x, y;
	guMtxIdentity(y);
	Vector cam = {0.0F, 0.0F, 0.0F},
			up = {0.0F, 1.0F, 0.0F},
		  look = {0.0F, 0.0F, -1.0F};
	
//	testGrab();
	GX_SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ONE, GX_LO_COPY);	// Increase backface count
	
	GX_ClearVtxDesc();
	GX_SetVtxDesc(GX_VA_POS, GX_DIRECT);
	GX_SetVtxDesc(GX_VA_TEX0, GX_DIRECT);
	GX_SetVtxAttrFmt(GX_VTXFMT2, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
	GX_SetVtxAttrFmt(GX_VTXFMT2, GX_VA_TEX0, GX_TEX_ST, GX_F32, 0);

	int i;
//	for (i=0; i<r_numstencilTextures; i++) {
if (scr_takeScreenshot) {
	r_showstencil++;
	scr_takeScreenshot = false;
	if (r_showstencil >= r_numstencilTextures) r_showstencil =  0;
}
if (r_showstencil >= r_numstencilTextures) r_showstencil =  r_numstencilTextures;
if (r_subframe++ > 25) {
	for(i=0; i<cl_numstaticlights; i++) {
		if (cl_staticlights[i].visframe == r_framecount && cl_staticlights[i].num_staticshadowvolumes) {
			if (r_showstencil == cl_staticlights[i].stenciltexnum) {
				Con_DPrintf("cnt: %i cl static lnum: %d %d radius %f %5.1f %5.1f %5.1f\r\n", r_framecount, i, cl_staticlights[i].num_staticshadowvolumes, cl_staticlights[i].radius, cl_staticlights[i].origin[0], cl_staticlights[i].origin[1], cl_staticlights[i].origin[2]);
			}
		}
	}
r_subframe = 0;	
}

i = r_showstencil; 


{
		GX_LoadTexObj(&r_stencilTextures[i].gx_tex, GX_TEXMAP0);

		GX_SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);

		GX_SetTevDirect(GX_TEVSTAGE0);
		GX_SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ONE, GX_CC_TEXC, GX_CC_ZERO);
		GX_SetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);


		GX_SetNumTevStages(1);
		GX_SetNumTexGens(1);

		guLookAt(x, &cam, &up, &look); 
		guMtxTransApply(y, y, 0, 0, -64);
		guMtxConcat(x, y, y);
		GX_LoadPosMtxImm(y, GX_PNMTX1);
		GX_SetCurrentMtx(GX_PNMTX1);
		GX_Begin(GX_QUADS, GX_VTXFMT2, 4);
		GX_Position3f32(-88, -48, 0);
		GX_TexCoord2f32(0.0f, 1.0f);

		GX_Position3f32(-88, 48, 0);
		GX_TexCoord2f32(0.0f, 0.0f);

		GX_Position3f32(88,  48, 0);
		GX_TexCoord2f32(1.0f, 0.0f);

		GX_Position3f32(88,  -48, 0);
		GX_TexCoord2f32(1.0f, 1.0f);

		GX_End();
		GX_Flush();
		GX_SetCurrentMtx(GX_PNMTX0);
	//	GX_LoadProjectionMtx(perspective, GX_PERSPECTIVE);
	}
	R_SetDefaultQuakeShader();
	GX_SetCullMode(GX_CULL_BACK);
	
}

