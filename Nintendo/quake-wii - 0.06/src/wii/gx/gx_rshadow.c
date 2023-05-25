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


//#define MAX_STATIC_SHADOWFRAGS				262144	
#define MAX_STATIC_SHADOWFRAGS				311296	
#define MAX_DYNAMIC_SHADOWFRAGS			32768	
#define MAX_STATIC_SHADOWVOLUMES		2*65536	
#define MAX_DYNAMIC_SHADOWVOLUMES	8192

#define MAX_FRAGS_VOLUME 							32


// static volumes
// TODO: move to arena2 to free up extra mem for stenciling
shadowvol_t 			r_sshadowvolumes[MAX_STATIC_SHADOWVOLUMES];
shadowvolfrag_t 	*r_sshadowvolfrags;//[MAX_STATIC_SHADOWFRAGS];

int r_numsshadowvolumes;
int r_firstsshadowvol;
int r_numsshadowvolfrags;
int r_firstsshadowvolfrag;

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


extern qboolean isTestMap; // DRS TODO nog weghalen
extern qboolean debugLnum;


/*
================
UT_AllocShadowvolFrag()
================
*/
shadowvolfrag_t *UT_AllocShadowvolFrag(void) {
	shadowvolfrag_t *retfrag = NULL;

	int i;
//if (debugLnum) Con_DPrintf("search... %i - ", r_firstsshadowvolfrag);
	for(i=r_firstsshadowvolfrag; i<MAX_STATIC_SHADOWFRAGS; i++) {
		if (!(r_sshadowvolfrags[i].flags & SHADOWVOLFRAG_FLAG_USED)) {
			retfrag = &r_sshadowvolfrags[i];
			r_firstsshadowvolfrag = i + 1;
			if (i > r_numsshadowvolfrags) {
				r_numsshadowvolfrags = i;
			}
			break;
		}
	}
//if (debugLnum) Con_DPrintf("... found...\r\n");
//	}
	
	if (retfrag) {
		memset(retfrag, 0x00, sizeof(shadowvolfrag_t));
		retfrag->flags |= SHADOWVOLFRAG_FLAG_USED;
		retfrag->prevfrag = NULL;
	} else {
		Con_Printf("UT_AllocShadowvolFrag: out of volume fragments\r\n");
		Con_DPrintf("UT_AllocShadowvolFrag: out of volume fragments\r\n");
	}
	
	return retfrag;
}

/*
=================
UT_DeallocFrag()
=================
*/
void UT_DeallocFrag(shadowvolfrag_t *deleteit) {
	int idx = (((int)deleteit) - ((int) &r_sshadowvolfrags[0])) / sizeof(shadowvolfrag_t);
//if (debugLnum) Con_DPrintf("del... %i - %p %p %i", idx, deleteit, &r_sshadowvolfrags[0], sizeof(shadowvolfrag_t));

	if (idx < r_firstsshadowvolfrag) {
		r_firstsshadowvolfrag = idx;
	}
	deleteit ->flags &= ~(SHADOWVOLFRAG_FLAG_USED);
	deleteit->prevfrag = NULL;	
}


/*
=================
UT_AddFragToVolumeTail()
=================
*/
void UT_AddFragToVolumeTail(shadowvol_t *vol, shadowvolfrag_t *frag) {
	if (!frag || !vol) {
		Con_Printf("UT_AddFragToVolumeTail: frag == NULL || vol == NULL");
		return;
	}

	if(!vol->nextfrag) {
		vol->nextfrag = frag;
		frag->prevfrag = (shadowvolfrag_t *) vol;
	} else {
		UT_AddFragToVolumeTail((shadowvol_t *) vol->nextfrag, frag);
	}
}


/*
=================
UT_AddFragToVolumeHead()
=================
*/
void UT_AddFragToVolumeHead(shadowvol_t *vol, shadowvolfrag_t *frag) {
	if (!frag || !vol) {
		Con_Printf("UT_AddFragToVolumeHead: frag == NULL || vol == NULL");
		return;
	}
	// lead available?
	if (vol->nextfrag) {
		frag->nextfrag= vol->nextfrag;
		vol->nextfrag->prevfrag = frag;
	} 
	// add it
	vol->nextfrag = frag; 
	frag->prevfrag = (shadowvolfrag_t *) vol;
}


/*
=================
UT_DeleteFragFromVolume()
=================
*/
void UT_DeleteFragFromVolume(shadowvol_t *vol, shadowvolfrag_t *deleteit) {
	int success = 0; // DRS TODO remove
	shadowvolfrag_t *prev, *curr;

	if (!vol || !deleteit) {
		Con_Printf("UT_DeleteFragFromVolume: NULL");
		return;
	}

	curr = vol->nextfrag;
	prev = (shadowvolfrag_t *) vol;
	while(curr != NULL) {
		// is this the one to delete?
		if (curr == deleteit) {
			// yep, adjust prev and set next
			prev->nextfrag = deleteit->nextfrag;
			if (deleteit->nextfrag) {
				deleteit->nextfrag->prevfrag = prev;
			}
			UT_DeallocFrag(deleteit);
			success = 1;
			break;
		}
		prev = curr;
		curr = curr->nextfrag;
	}
	if (!success) {
		Con_DPrintf("UT_DeleteFragFromVolume: unable to delete!!!");
		Con_Printf("UT_DeleteFragFromVolume: unable to delete!!!");
	}
}

/*
=================
UT_DeleteAllFragsInVolume
=================
*/
void UT_DeleteAllFragsInVolume(shadowvol_t *vol) {
	int count = 0;

	if (!vol) {
		Con_Printf("UT_DeleteAllFragsInVolume: NULL");
		return;
	}

	shadowvolfrag_t *f = vol->nextfrag;
	vol->nextfrag = NULL;
	while(f) {
		shadowvolfrag_t *curr = f;
		f = f->nextfrag;

		UT_DeallocFrag(curr);
		count++;
	}
if(isTestMap) Con_DPrintf("deleted %i frags \r\n", count);
}



/*
=================
UT_CountFragsInVolume
=================
*/
int UT_CountFragsInVolume(shadowvol_t *vol) {
	int count = 0;
	shadowvolfrag_t *f = vol->nextfrag;
	while(f) {
		count++;
		f = f->nextfrag;
	}
	return count;
}


/*
=================
UT_AllocShadowVolume()
=================
*/
shadowvol_t *UT_AllocShadowVolume(void) {
	shadowvol_t  *returnvolume  = NULL;
	
	int i;
	for(i=r_firstsshadowvol; i<MAX_STATIC_SHADOWVOLUMES; i++) {
		if (!r_sshadowvolumes[i].used) {
			returnvolume = &r_sshadowvolumes[i];
			r_firstsshadowvol = i + 1;
			if (i > r_numsshadowvolumes) {
				r_numsshadowvolumes = i;
			}
			break;
		}
	}

	if (returnvolume) {
		memset(returnvolume, 0x00, sizeof(shadowvol_t));
		returnvolume->used = true;
	} else {
		// TODO check unused ones
		Con_Printf("UT_AllocShadowVolume: out of volumes\r\n");
		Con_DPrintf("UT_AllocShadowVolume: out of volumes\r\n");
	}
	return returnvolume;
}


/*
=================
UT_DeallocVolume()
=================
*/
void UT_DeallocVolume(shadowvol_t *deleteit) {
	int idx = (((int)deleteit) - ((int) &r_sshadowvolumes[0])) / sizeof(shadowvol_t);
//if (debugLnum) Con_DPrintf("del... %i - %p %p %i", idx, deleteit, &r_sshadowvolfrags[0], sizeof(shadowvolfrag_t));

	if (idx < r_firstsshadowvol) {
		r_firstsshadowvol = idx;
	}
	deleteit ->used = false;
}


/*
================
UT_InsertShadowVolumeBefore()
================
*/
void UT_InsertShadowVolumeBefore(dlight_t *light, shadowvol_t *vol, shadowvol_t *beforevol) {
	qboolean inserted = false;
	if (!vol || !light || !beforevol) {
		Con_Printf("UT_InsertShadowVolumeBefore: NULL");
		return;
	}

	if (light->nextstaticshadowvolume) {
		shadowvol_t *currvol = light->nextstaticshadowvolume;
		if (currvol == beforevol) {
			light->nextstaticshadowvolume = vol;
			vol->nextvol = currvol;
		}
		while(currvol) {
			if (currvol->nextvol == beforevol) {
				currvol->nextvol = vol;
				vol->nextvol = beforevol;
				inserted = true;
				break;
			}
			currvol = currvol->nextvol;
		}
	} else {
		light->nextstaticshadowvolume = vol;
	}
	if (inserted) {
		light->num_staticshadowvolumes++;	
	}
}


/*
================
UT_AddShadowVolumeToTail()
================
*/
void UT_AddShadowVolumeToTail(dlight_t *light, shadowvol_t *vol) {
	if (!vol || !light) {
		Con_Printf("UT_AddShadowVolumeToTail: NULL");
		return;
	}

	if (light->nextstaticshadowvolume) {
		shadowvol_t *currvol = light->nextstaticshadowvolume;
		while(currvol) {
			if (!currvol->nextvol) {
				currvol->nextvol = vol;
				break;
			}
			currvol = currvol->nextvol;
		}
	} else {
		light->nextstaticshadowvolume = vol;
	}
	light->num_staticshadowvolumes++;	
}


/*
================
UT_CountVolumesInStore()
================
*/
int UT_CountVolumesInStore(dlight_t *light) {
	int num = 0;
	if (!light) {
		Con_Printf("UT_CountVolumesInStore: NULL");
		return 0;
	}

	shadowvol_t *currvol = light->nextstaticshadowvolume;
	while(currvol) {
		num++;
		currvol = currvol->nextvol;
	}
	return num;
}

/*
================
UT_AddShadowVolumeToHead()
================
*/
void UT_AddShadowVolumeToHead(dlight_t *light, shadowvol_t *vol) {
	if (!vol || !light) {
		Con_Printf("UT_AddShadowVolumeToHead: NULL");
		return;
	}
	if (light->nextstaticshadowvolume) {
		shadowvol_t *shiftvol = light->nextstaticshadowvolume;

		shadowvol_t *currvol = vol;
		while(currvol) {
			if (!currvol->nextvol) {
				currvol->nextvol = shiftvol;
				break;
			}
			currvol = currvol->nextvol;
		}

		light->nextstaticshadowvolume = vol;
	} else {
		light->nextstaticshadowvolume = vol;
	}
	light->num_staticshadowvolumes++;	
}


/*
================
UT_DeleteShadowVolume()
================
*/
void UT_DeleteShadowVolume(dlight_t *light, shadowvol_t *deleteit) {
	int success = 0; // DRS TODO remove
	shadowvol_t *curr, *prev;

	if (!deleteit || !light) {
		Con_Printf("UT_DeleteShadowVolume: NULL");
		return;
	}

	curr = light->nextstaticshadowvolume;
	if (curr == deleteit) {
		light->nextstaticshadowvolume = curr->nextvol;
		success = 1;
	} else {
		prev = curr;
		curr = curr->nextvol;
		while(curr) {
			if (curr == deleteit) {
				prev->nextvol = curr->nextvol;
				success = 1;
				break;
			}
			prev = curr;
			curr = curr->nextvol;
		}
	}
	if (success) {
		UT_DeallocVolume(deleteit);
		UT_DeleteAllFragsInVolume(deleteit);
	}
	
	if (!success) {
		Con_DPrintf("UT_DeleteShadowVolume: unable to delete!!!");
		Con_Printf("UT_DeleteShadowVolume: unable to delete!!!");
	}
}


/*
================
UT_DeleteAllShadowVolumes
================
*/
void UT_DeleteAllShadowVolumes(dlight_t *light) {
	if (!light) {
		Con_Printf("UT_DeleteAllShadowVolumes: NULL");
		return;
	}

	shadowvol_t *curr = light->nextstaticshadowvolume;
	light->nextstaticshadowvolume = NULL;
	while(curr) {
		shadowvol_t *deleteit = curr;
		curr = curr->nextvol;
		
		UT_DeleteAllFragsInVolume(deleteit);
		UT_DeallocVolume(deleteit);
	}
}


/*
================
UT_CloneVolume
================
*/
shadowvol_t *UT_CloneVolume(shadowvol_t *copyVolume) {
	int count = 0;
	if (!copyVolume) {
		Con_Printf("UT_CloneVolume: NULL");
		return NULL;
	}
	if (copyVolume) {
		shadowvol_t		*destvol	= UT_AllocShadowVolume();
		if (!destvol) return NULL;
		
		memcpy(destvol, copyVolume, sizeof(shadowvol_t));
		destvol->nextvol = NULL;
		destvol->nextfrag = NULL;
		
		if (!destvol) return NULL;
		shadowvolfrag_t	*currfrag	= copyVolume->nextfrag;
		while(currfrag) {
			shadowvolfrag_t *destfrag = UT_AllocShadowvolFrag();
			if (!destfrag) return NULL;
			
			memcpy(destfrag, currfrag, sizeof(shadowvolfrag_t));
			destfrag->nextfrag = NULL;
			destfrag->prevfrag = NULL;
			UT_AddFragToVolumeTail(destvol, destfrag);
			currfrag = currfrag->nextfrag;
			count++;
		}
if (isTestMap) Con_DPrintf("Cloned %i frags\r\n", count);		
		return destvol;
	} else {
		Con_Printf("UT_CloneVolume: source is NULL");
	}
	return NULL;
}


/*
================
UT_CloneAndAddAllVolumes
================
*/
void UT_CloneAndAddAllVolumes(dlight_t *dest, dlight_t *source, qboolean addTail) {
	int count = 0;
	if (!dest || !source) {
		Con_Printf("UT_CloneAndAddAllVolumes: NULL");
		return;
	}
shadowvol_t *dbgvol = NULL;
	shadowvol_t *currvol = source->nextstaticshadowvolume;
	while(currvol) {
		shadowvol_t *clonedvol = UT_CloneVolume(currvol);
		if (!clonedvol) return;
dbgvol = clonedvol;
		if (addTail) {
			UT_AddShadowVolumeToTail(dest, clonedvol);
		} else {
			UT_AddShadowVolumeToHead(dest, clonedvol);
		}
		currvol = currvol->nextvol;
		count++;
		
	}
if (debugLnum) Con_DPrintf("Last added clone: %p - ", dbgvol);
if (isTestMap) 	Con_DPrintf("Cloned %i volumes\r\n", count);
}

/*
=================
UT_CreateArray()
=================
*/
void UT_CreateArray(const shadowvol_t *shadowvol, const int maxsize, shadowvolfrag_t **fragbuf, int *num_entries) {
	shadowvolfrag_t *currfrag;
	// create array of fragments
	int num_frags = 0;
	currfrag = shadowvol->nextfrag;
//Con_DPrintf(" create array start - ");
	while(currfrag && num_frags<maxsize) {
		fragbuf[num_frags] = currfrag;
		currfrag = currfrag->nextfrag;
//Con_DPrintf(" %i %p - ", num_frags, fragbuf[num_frags]);
		num_frags++;
	}
	*num_entries = num_frags;
//Con_DPrintf(" create array end - ");
}



/*
=================
R_ClearStaticVolumes()
=================
*/
void R_ClearStaticVolumes(void) {
	r_numsshadowvolumes = 0;
	r_numsshadowvolfrags  = 0;
	r_firstsshadowvolfrag = 0;
	r_firstsshadowvol = 0;
	int i;
	
	for(i=0; i<MAX_STATIC_SHADOWVOLUMES; i++) {
		r_sshadowvolumes[i].used = false;
	}

	for(i=0; i<MAX_STATIC_SHADOWFRAGS; i++) {
		r_sshadowvolfrags[i].flags = 0;
	}
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

	int faker1 = (int) (dp1 * 100.0f);
	int faker2 = (int) (dp2 * 100.0f);
	
	dp1 = ((float)faker1)/100.0f;
	dp2 = ((float)faker2)/100.0f;
	
	// point not intersecting
	if ((dp1 >= -0.5f && dp2 >= -0.5f)  ||
		(dp1 <= 0.5f && dp2 <= 0.5f)) {
		return NULL;
	}
	
	// both points on plane
	if (dp1 == 0 && dp2 == 0) {
		intersection->x = p1->x;
		intersection->y = p1->y;
		intersection->z = p1->z;
		return NULL;
	}

	// calculate divider
	divider = fabs(dp1) / (fabs(dp1) + fabs(dp2));
	
	// calculate intersection
	guVecSub(p2, p1, &p1_p2);

	guVecScale(&p1_p2, &p1_p2, divider);
	guVecAdd(p1, &p1_p2, intersection);

	return dp1 >= 0 ? p1 : p2;
}

/*
=================
UT_CreateVolumeFromSurface
=================
*/
qboolean UT_CreateVolumeFromVertices(const dlight_t *light, Vector *vertices, const int numvertices, shadowvol_t *shadowvol) {
	int 			i;
	int 			numverts;
	Vector 		t, b;
	Vector 		delta[MAX_FRAGS_VOLUME]; // max 32 vertices per surface TODO: check actual maximum
	float			length[MAX_FRAGS_VOLUME]; // testhack
	Vector 		lpos;
	float			rad2 = light->radius*1; // just increase visibility a bit
	float			rad4 = light->radius*1; // just increase visibility a bit
	float 		radsq 	= pow(rad2, 2); 
	
	qboolean isInRange = false;
	lpos.x = light->origin[0];
	lpos.y = light->origin[1];
	lpos.z = light->origin[2];
	// check vertices in range (radius^2)
	for(numverts=0; numverts<numvertices && numverts<MAX_FRAGS_VOLUME; numverts++) { 
		// from here always frontfacing pov
		guVecSub(&vertices[numverts], &lpos, &delta[numverts]);
		float lengthsq = pow(delta[numverts].x, 2) + pow(delta[numverts].y, 2) + pow(delta[numverts].z, 2);
		if (lengthsq == 0) { // testhack
			lengthsq = 1;     // testhack
		}                             // testhack
		length[numverts] = lengthsq; // testhack

		if (lengthsq < radsq) {
			isInRange = true;
		}
	} 
	if (!isInRange) return false;

	// don't want to calculate delta lengths, so determine perpendicular distance to surface

	// front cap plane
	Vector normal;
	guVecSub(&vertices[2], &vertices[1], &t);
	guVecSub(&vertices[1], &vertices[0], &b);
	guVecCross(&t, &b, &normal);
	guVecNormalize(&normal);

	float dot = -guVecDotProduct(&delta[1], &normal);
	
	// divide is unavoidable
	if (dot < 1) return false; // too close to surface, no shadow
	
//	shadowvol->capsvisible = true;
	
	for(i=0; i<numverts; i++) {
		int j;
		Vector far, near; // temp for far vector
		float scale = rad4/dot;//sqrtf(length[i]);
		float plusonepixscale = (dot + 1.0f)/dot; 
		if (scale < 1.0f) scale = 1.0f;
		
		j = i+1;
		if (j>=numverts) j = 0;
		// allocate frag
		shadowvolfrag_t * newFrag = UT_AllocShadowvolFrag();
		newFrag->flags |= SHADOWVOLFRAG_FLAG_VIS; // the plane between this and next fragment is visible
		// calculate far delta 
		guVecScale(&delta[i], &far, scale); // calc the far vertex position with light as origin
		// near point
		guVecScale(&delta[i], &near, plusonepixscale);
		guVecAdd(&near, &lpos, &newFrag->near); // translate back to world and store
//		guVecAdd(&delta[i], &lpos, &newFrag->near); // translate back to world and store
		// far point
		guVecAdd(&far, &lpos, &newFrag->far); // translate back to world
		
		// normal
		Vector next;
		guVecAdd(&delta[j], &lpos, &next); // next point (should equal vertex j)
		guVecSub(&newFrag->near, &next, &b);
		guVecSub(&newFrag->far, &newFrag->near, &t);
		guVecCross(&t, &b, &newFrag->normal);
		guVecNormalize(&newFrag->normal);

		// add frag to volume
		UT_AddFragToVolumeTail(shadowvol, newFrag);
	}

	return true;
}
	
/*
=================
UT_CutSideWalls()
=================
*/
qboolean UT_CutSideWalls(dlight_t *light, shadowvol_t *cutvol, Vector *frontcap_normal, Vector *frontcap_xyz, shadowvol_t **out) {
	//out[0]->flags |= SHADOWVOL_FLAG_HIDE_REARCAP;
	//out[1]->flags |= SHADOWVOL_FLAG_HIDE_FRONTCAP;
	// *			adjust loopedvol far coordinates
	int		fragmentcnt = 0;
	shadowvolfrag_t *currfrag;
	Vector intersection[MAX_FRAGS_VOLUME];
	Vector front[MAX_FRAGS_VOLUME];
	currfrag = cutvol->nextfrag;
	while(currfrag) {
		if (!R_CalculateIntersection(
			&currfrag->near, &currfrag->far, frontcap_normal, frontcap_xyz, 
			&intersection[fragmentcnt]))  {
			return false;
		}

		front[fragmentcnt].x = currfrag->near.x;
		front[fragmentcnt].y = currfrag->near.y;
		front[fragmentcnt].z = currfrag->near.z;
		fragmentcnt++;
		currfrag = currfrag->nextfrag;
	}
	
	shadowvol_t *vol1 = UT_CloneVolume(cutvol);
	shadowvol_t *vol2 = UT_CloneVolume(cutvol);
	if (!vol1 || !vol2) {
		UT_DeallocVolume(vol1);
		UT_DeallocVolume(vol2);
		return false;
	}
	
	// create new volumes
	currfrag = vol1->nextfrag;
	fragmentcnt = 0;
	while(currfrag) {
if (isTestMap)		Con_DPrintf("near %6.2f %6.2f %6.2f far %6.2f %6.2f %6.2f intersection %6.2f %6.2f %6.2f - ",
			currfrag->near.x, currfrag->near.y, currfrag->near.z,
			currfrag->far.x, currfrag->far.y, currfrag->far.z,
			intersection[fragmentcnt].x, intersection[fragmentcnt].y, intersection[fragmentcnt].z);


		currfrag->far.x = intersection[fragmentcnt].x;
		currfrag->far.y = intersection[fragmentcnt].y;
		currfrag->far.z = intersection[fragmentcnt].z;
		fragmentcnt++;
		currfrag = currfrag->nextfrag;
	}
	currfrag = vol2->nextfrag;
	fragmentcnt = 0;
	while(currfrag) {
		currfrag->near.x = intersection[fragmentcnt].x;
		currfrag->near.y = intersection[fragmentcnt].y;
		currfrag->near.z = intersection[fragmentcnt].z;
		fragmentcnt++;
		currfrag = currfrag->nextfrag;
	}
	vol1->flags |= SHADOWVOL_FLAG_HIDE_REARCAP;
	vol2->flags |= SHADOWVOL_FLAG_HIDE_FRONTCAP;
	
	out[0] = vol1;
	out[1] = vol2;


	return true;
}



/*
==============
UT_CutVolumeCap()
==============
*/
//qboolean UT_CutVolumeCap(dlight_t *light, shadowvol_t *cutvol, Vector *plane_normal, Vector *plane_xyz, shadowvol_t **out) {
qboolean UT_CutVolumeCap(dlight_t *light, shadowvol_t *cutvol, shadowvolfrag_t *cuttingfrag, shadowvolfrag_t *topedge, shadowvolfrag_t *bottomedge, shadowvol_t **out) {
	Vector *plane_normal				= &cuttingfrag->normal;
	Vector *plane_xyz 					= &cuttingfrag->near;
	Vector *topedge_normal			= NULL;
	Vector *topedge_xyz				= NULL;
	Vector *bottomedge_normal	= NULL;
	Vector *bottomedge_xyz		= NULL;
	qboolean calcBackCut			= false;
//Con_DPrintf("UT_CutVolumeCap %p - ", cutvol);	
	if (topedge && bottomedge) {
		topedge_normal			= &topedge->normal;
		topedge_xyz				= &topedge->near;
		bottomedge_normal	= &bottomedge->normal;
		bottomedge_xyz			= &bottomedge->near;
		calcBackCut = true;
	}
	
	// er moet minstens 1 punt tussen liggen die *niet* op de cut ligt. En dat is het punt wat het 2e volume wordt
	// recalculate volumes
	qboolean prevIntersecting = false;
	int state = 0;
	int numfrags1 = 0;
	int numfrags2 = 0;
	int numCutBack = 0;
	Vector frags1[MAX_FRAGS_VOLUME];
	qboolean vis1[MAX_FRAGS_VOLUME];
	Vector frags2[MAX_FRAGS_VOLUME];
	qboolean vis2[MAX_FRAGS_VOLUME];

//if (!isTestMap) return false;
	
	shadowvolfrag_t *currcutfrag = cutvol->nextfrag;
//Con_DPrintf("cutting curr %p  - ", currcutfrag);	
	shadowvolfrag_t *nextcutfrag = currcutfrag->nextfrag;
//Con_DPrintf("cutting next %p - ", nextcutfrag);	
	while(currcutfrag) {
		Vector 	delta;
		Vector 	intersection;
		qboolean hitsplane = false;
		qboolean intersecting = false;
		
		
		intersecting = R_CalculateIntersection(
			/* in */ 		&currcutfrag->near, &nextcutfrag->near, plane_normal, plane_xyz, 
			/* out */	&intersection) ? true : false;
			
		// if no intersection, check DP to see curr is on plane -> results in intersecting condition
		if (!intersecting) {
			guVecSub(&currcutfrag->near, plane_xyz, &delta);
			float dp = guVecDotProduct(&delta, plane_normal);
			if (isTestMap) {
//				Con_DPrintf("!intersecting: delta %6.1f %6.1f %6.1f - plane_xyz %6.1f %6.1f %6.1f - plane normal %6.1f %6.1f %6.1f - dp %5.2f\r\n",
//					delta.x, delta.y, delta.z,
//					plane_xyz->x, plane_xyz->y, plane_xyz->z,
//					plane_normal->x, plane_normal->y, plane_normal->z, dp);
			}
			if (dp >= -0.5 && dp <= 0.5) {
				hitsplane = true;
				intersecting = true;
				intersection.x = currcutfrag->near.x;
				intersection.y = currcutfrag->near.y;
				intersection.z = currcutfrag->near.z;
			}
		}

		// the points checked must lie within given edges (negative dp result)
		// otherwise it doesn't intersect after all
		if (intersecting && calcBackCut) {
			float dp1, dp2;
			guVecSub(&intersection, topedge_xyz, &delta);
			dp1 = guVecDotProduct(&delta, topedge_normal);
			guVecSub(&intersection, bottomedge_xyz, &delta);
			dp2 = guVecDotProduct(&delta, bottomedge_normal);

			if (dp1 <= -0.5) {
				numCutBack++;
			}
			if (dp2 <= -0.5) {
				numCutBack--;
			}
/*			if (isTestMap) Con_DPrintf("topedge: delta %6.1f %6.1f %6.1f - plane_xyz %6.1f %6.1f %6.1f - intersection %6.1f %6.1f %6.1f - dp %5.2f\r\n",
				delta.x, delta.y, delta.z,
				topedge_xyz->x, topedge_xyz->y, topedge_xyz->z,
				topedge_normal->x, topedge_normal->y, topedge_normal->z, dp1);
			if (isTestMap) Con_DPrintf("bottomedge: delta %6.1f %6.1f %6.1f - plane_xyz %6.1f %6.1f %6.1f - intersection %6.1f %6.1f %6.1f - dp %5.2f\r\n",
				delta.x, delta.y, delta.z,
				bottomedge_xyz->x, bottomedge_xyz->y, bottomedge_xyz->z,
				bottomedge_normal->x, bottomedge_normal->y, bottomedge_normal->z, dp2);
*/			
		}
		
/*		if (isTestMap) {
			Con_DPrintf("frags:  p1 %6.1f %6.1f %6.1f - p2 %6.1f %6.1f %6.1f \r\n",
				currcutfrag->near.x, currcutfrag->near.y, currcutfrag->near.z,
				nextcutfrag->near.x, nextcutfrag->near.y, nextcutfrag->near.z);
			if (intersecting) {
				Con_DPrintf("intersection:  p1 %6.1f %6.1f %6.1f \r\n",
					intersection.x, intersection.y, intersection.z);
			}
		}*/
		// if intersecting (TODO: can be done in a more clean way)
		switch(state) {
			case 0: // fill vol1 up to an intersection 
				if (intersecting) {
					state++;
					if (!hitsplane) {
						frags1[numfrags1].x = currcutfrag->near.x;
						frags1[numfrags1].y = currcutfrag->near.y;
						frags1[numfrags1].z = currcutfrag->near.z;
						vis1[numfrags1] = currcutfrag->flags & SHADOWVOLFRAG_FLAG_VIS;
						numfrags1++;
					}
					frags1[numfrags1].x = intersection.x;
					frags1[numfrags1].y = intersection.y;
					frags1[numfrags1].z = intersection.z;
					vis1[numfrags1] = currcutfrag->flags & SHADOWVOLFRAG_FLAG_VIS;
					numfrags1++;
					prevIntersecting = true;
				} else {
					// fill vol 1
					frags1[numfrags1].x = currcutfrag->near.x;
					frags1[numfrags1].y = currcutfrag->near.y;
					frags1[numfrags1].z = currcutfrag->near.z;
					vis1[numfrags1] = currcutfrag->flags & SHADOWVOLFRAG_FLAG_VIS;
					numfrags1++;
				}
				break;
			case 1: // may start vol2
				if (intersecting && prevIntersecting) {
					// still vol 1
					frags1[numfrags1].x = intersection.x;
					frags1[numfrags1].y = intersection.y;
					frags1[numfrags1].z = intersection.z;
					vis1[numfrags1] = currcutfrag->flags & SHADOWVOLFRAG_FLAG_VIS;
					numfrags1++;
					prevIntersecting = true;
				} else {
					// not previous and this one not intersecting, so must be vol 2
					state++;
					// start vol2 since it hasn't been yet (previous vol1 frag contains intersection)
					frags2[numfrags2].x = frags1[numfrags1-1].x;
					frags2[numfrags2].y = frags1[numfrags1-1].y;
					frags2[numfrags2].z = frags1[numfrags1-1].z;
					vis2[numfrags2] = vis1[numfrags1-1]; 
					numfrags2++;
					frags2[numfrags2].x = currcutfrag->near.x;
					frags2[numfrags2].y = currcutfrag->near.y;
					frags2[numfrags2].z = currcutfrag->near.z;
					vis2[numfrags2] = currcutfrag->flags & SHADOWVOLFRAG_FLAG_VIS;					
					numfrags2++;
				}
				break;
			case 2: // fill vol 2 up to second intersection
				if (intersecting) {
					// end vol 2, resume vol 1
					state++;
					frags1[numfrags1].x = intersection.x;
					frags1[numfrags1].y = intersection.y;
					frags1[numfrags1].z = intersection.z;
					vis1[numfrags1] = currcutfrag->flags & SHADOWVOLFRAG_FLAG_VIS;					
					if (!hitsplane) {
						frags2[numfrags2].x = currcutfrag->near.x;
						frags2[numfrags2].y = currcutfrag->near.y;
						frags2[numfrags2].z = currcutfrag->near.z;
						vis2[numfrags2] = currcutfrag->flags & SHADOWVOLFRAG_FLAG_VIS;					
						numfrags2++;
					}
					frags2[numfrags2].x = intersection.x;
					frags2[numfrags2].y = intersection.y;
					frags2[numfrags2].z = intersection.z;
					vis2[numfrags2] = currcutfrag->flags & SHADOWVOLFRAG_FLAG_VIS;					
					numfrags1++;
					numfrags2++;
					prevIntersecting = true;
				} else {
					// fill vol 2
					frags2[numfrags2].x = currcutfrag->near.x;
					frags2[numfrags2].y = currcutfrag->near.y;
					frags2[numfrags2].z = currcutfrag->near.z;
					vis2[numfrags2] = currcutfrag->flags & SHADOWVOLFRAG_FLAG_VIS;					
					numfrags2++;
				}
				break;
			case 3: // fill vol1 up to an intersection 
				// fill vol 1
				frags1[numfrags1].x = currcutfrag->near.x;
				frags1[numfrags1].y = currcutfrag->near.y;
				frags1[numfrags1].z = currcutfrag->near.z;
				vis1[numfrags1] = currcutfrag->flags & SHADOWVOLFRAG_FLAG_VIS;					
				numfrags1++;
				break;
				
			default:
				break;
			/*case 0: // 
				state++;
				break;*/
		}
		
		// loop 'curr' and 'next' pointers... make sure 'next' rotates!
		currcutfrag = currcutfrag->nextfrag;
		nextcutfrag = nextcutfrag->nextfrag;
		if (!nextcutfrag) {
			nextcutfrag = cutvol->nextfrag;
		}
	}

	qboolean success = (state == 3 && numfrags1 > 2 && numfrags2 > 2 && (abs(numCutBack) != 2)); // numCutBack->cutbackbalance
if (isTestMap) {
	int fc;
	if (success) {
		Con_DPrintf("==== Volume has been cut ==== numcutback %i \r\n", numCutBack);
		shadowvolfrag_t *currfrag;
		currfrag = cutvol->nextfrag;
		while(currfrag) {
			Con_DPrintf("=> volorig:  %6.1f %6.1f %6.1f vis %i\r\n",
				currfrag->near.x, currfrag->near.y, currfrag->near.z, currfrag->flags);
			currfrag = currfrag->nextfrag;
		}

		for (fc=0; fc<numfrags1; fc++) { 
			Con_DPrintf("=> vol1:  %6.1f %6.1f %6.1f vis %i\r\n",
				frags1[fc].x, frags1[fc].y, frags1[fc].z, vis1[fc]);
		}
		for (fc=0; fc<numfrags2; fc++) { 
			Con_DPrintf("=> vol2:  %6.1f %6.1f %6.1f vis %i\r\n",
				frags2[fc].x, frags2[fc].y, frags2[fc].z, vis1[fc]);
		}
	}
}
//if(!isTestMap) return false;

	// if state != 3, the volume cap wasn't intersected at two edges, so nothing happens
	if (success) {
		// alloc 2 volumes, and call UT_CreateVolumeFromVertices, 
		// then, return them in array
		shadowvol_t *vol1 = UT_AllocShadowVolume();
		shadowvol_t *vol2 = UT_AllocShadowVolume();
		if (!vol1 || !vol2) return false;
		
		if (!UT_CreateVolumeFromVertices(light, frags1, numfrags1, vol1) || 
			!UT_CreateVolumeFromVertices(light, frags2, numfrags2, vol2)) {
			UT_DeleteAllFragsInVolume(vol1);
			UT_DeleteAllFragsInVolume(vol2);
			UT_DeallocVolume(vol1);
			UT_DeallocVolume(vol2);
			return false;
		}
		
		// clone rest of data
		vol1->used = cutvol->used;
		vol1->flags = cutvol->flags;
		vol2->used = cutvol->used;
		vol2->flags = cutvol->flags;
		// adjust visibility
		int i;
		shadowvolfrag_t *currfrag;
		currfrag = vol1->nextfrag;
		i = 0;
		while(currfrag) {
			currfrag->flags &= ~(SHADOWVOLFRAG_FLAG_VIS);
			currfrag->flags |= vis1[i] ? SHADOWVOLFRAG_FLAG_VIS : 0;
			i++;
			currfrag = currfrag->nextfrag;
		}
		currfrag = vol2->nextfrag;
		i = 0;
		while(currfrag) {
			currfrag->flags &= ~(SHADOWVOLFRAG_FLAG_VIS);
			currfrag->flags |= vis2[i] ? SHADOWVOLFRAG_FLAG_VIS : 0;
			i++;
			currfrag = currfrag->nextfrag;
		}
		
		
		out[0] = vol1;
		out[1] = vol2;
			
		return true;
	}
	return false;
}


/*
==============
UT_CheckAllFragsOnPlaneBack
==============
*/
qboolean UT_CheckAllFragsOnPlaneBack(shadowvolfrag_t *comparingfrag, shadowvol_t *volume) {
	qboolean retValue = true;
	
	// loop thru all frags in compared volume...
	shadowvolfrag_t *currcomparedfrag = volume->nextfrag;
	while(currcomparedfrag) {
		// ... and check if it is in back of comparing frag plane
		Vector delta;
		guVecSub(&currcomparedfrag->near, &comparingfrag->near, &delta);
		
		float dp = guVecDotProduct(&delta, &comparingfrag->normal);
		
		if (dp >= 0.5) {
			// it is outside
			retValue = false;
		}

//		if (isTestMap) {
//			Con_DPrintf("UT_CheckAllFragsOnPlaneBack: compared %6.1f %6.1f %6.1f comparing %6.1f %6.1f %6.1f\r\n",
//				currcomparedfrag->near.x, currcomparedfrag->near.y, currcomparedfrag->near.z,
//				comparingfrag->near.x, comparingfrag->near.y, comparingfrag->near.z);
//			Con_DPrintf("UT_CheckAllFragsOnPlaneBack: normal %5.2f %5.2f %5.2f dp %5.2f\r\n",
//				comparingfrag->normal.x, comparingfrag->normal.y, comparingfrag->normal.z, dp);
//		}	

		currcomparedfrag  = currcomparedfrag->nextfrag;
	}
	
	return retValue;
}

/*
==============
UT_FilterOutEncapsulated
==============
*/
void UT_FilterOutEncapsulated(shadowvol_t *cuttingVolume, dlight_t *volstore) {
	// go thru each volume in volstore
	shadowvol_t *loopedvol = volstore->nextstaticshadowvolume;
	while(loopedvol) {
		shadowvol_t *currvol = loopedvol;
		loopedvol = loopedvol->nextvol;
		
		// loop thru all volume frags to check their planes against volume bounds
		qboolean allFragsIn= true;
		shadowvolfrag_t *loopedfrag = cuttingVolume->nextfrag;
		while(loopedfrag) {
			shadowvolfrag_t *currfrag = loopedfrag;
			loopedfrag = loopedfrag->nextfrag;
			
			if (!UT_CheckAllFragsOnPlaneBack(currfrag, currvol)) {
				allFragsIn = false;
			}
		}
		// did all frags in volume lie within cuttingvolume's bounds?
		if (allFragsIn) {
			// yes, remove it
			UT_DeleteShadowVolume(volstore, currvol);
			if (isTestMap) {
				Con_DPrintf("UT_FilterOutEncapsulated: ==== DELETED ====\r\n");
			}	
		}
	}
}


/*
==============
UT_CutVolumes
==============
*/
int UT_CutVolumes(dlight_t *light, shadowvol_t *cuttingVolume, dlight_t *volstore) {
	int numcut = 0;
	// all cutting volume's frags will cut loopedVol
	shadowvolfrag_t *cuttingfrag = cuttingVolume->nextfrag;
	shadowvolfrag_t *nextfrag = cuttingVolume->nextfrag->nextfrag;
	shadowvolfrag_t *prevfrag = cuttingVolume->nextfrag;
	while(prevfrag->nextfrag) {
		prevfrag = prevfrag->nextfrag;
	}
	while(cuttingfrag) {
		// all volumes in volstore are processed
		shadowvol_t *currLoopedVol = volstore->nextstaticshadowvolume;
		while(currLoopedVol) {
			shadowvol_t *outVolumes[2];
//			if (UT_CutVolumeCap(light, currLoopedVol, &cuttingfrag->normal, &cuttingfrag->near, &outVolumes[0])) {
			if (UT_CutVolumeCap(light, currLoopedVol, cuttingfrag, nextfrag, prevfrag, &outVolumes[0])) {
				// this is cut, new volumes have been allocated, add them to volstore
				UT_AddShadowVolumeToHead(volstore, outVolumes[0]);
				UT_AddShadowVolumeToHead(volstore, outVolumes[1]);
				// delete the cut volume from volstore
				UT_DeleteAllFragsInVolume(currLoopedVol);
				UT_DeleteShadowVolume(volstore, currLoopedVol);
				numcut++;
			}
			currLoopedVol = currLoopedVol->nextvol;
		}
		prevfrag = cuttingfrag;
		cuttingfrag = cuttingfrag->nextfrag;
		nextfrag = nextfrag->nextfrag;
		if (nextfrag == NULL) {
			nextfrag = cuttingVolume->nextfrag;
		}
	}

	return numcut;
}


/*
==============
UT_FindMaxDepth
==============
*/
float UT_FindMaxDepth(dlight_t *light, shadowvol_t *cuttingVolume) {
	float maxdepth = 0;
	Vector 	lpos;
	Vector 	frontcap_xyz, intersection_xyz;
	Vector 	frontcap_normal;
	int 		frontcap_numfrags;
	Vector 	t, b;
	shadowvolfrag_t *frontcap_fragbuf[MAX_FRAGS_VOLUME];

	lpos.x = light->origin[0];
	lpos.y = light->origin[1];
	lpos.z = light->origin[2];

	// create fragment array
	UT_CreateArray(cuttingVolume, MAX_FRAGS_VOLUME, &frontcap_fragbuf[0], &frontcap_numfrags);

	guVecSub(&frontcap_fragbuf[2]->near, &frontcap_fragbuf[1]->near, &t);
	guVecSub(&frontcap_fragbuf[1]->near, &frontcap_fragbuf[0]->near, &b);
	guVecCross(&t, &b, &frontcap_normal);
	guVecNormalize(&frontcap_normal);

	frontcap_xyz.x = frontcap_fragbuf[1]->near.x;
	frontcap_xyz.y = frontcap_fragbuf[1]->near.y;
	frontcap_xyz.z = frontcap_fragbuf[1]->near.z;

if (isTestMap||debugLnum)	Con_DPrintf("newvol    p1 %6.1f %6.1f %6.1f - p2 %6.1f %6.1f %6.1f - p3 %6.1f %6.1f %6.1f\r\n",
		frontcap_fragbuf[0]->near.x, frontcap_fragbuf[0]->near.y, frontcap_fragbuf[0]->near.z,
		frontcap_fragbuf[1]->near.x, frontcap_fragbuf[1]->near.y, frontcap_fragbuf[1]->near.z,
		frontcap_fragbuf[2]->near.x, frontcap_fragbuf[2]->near.y, frontcap_fragbuf[2]->near.z);
	
	shadowvolfrag_t *cuttingfrag = cuttingVolume->nextfrag;
	while(cuttingfrag) {
		// all volumes in volstore are processed
		shadowvol_t *currLoopedVol = light->nextstaticshadowvolume;
		while(currLoopedVol) {
			shadowvolfrag_t *currcutfrag = currLoopedVol->nextfrag;
			shadowvolfrag_t *nextcutfrag = currcutfrag->nextfrag;
			while(currcutfrag) {
				qboolean intersecting = false;
				Vector 	delta;
				Vector 	intersection;

if (isTestMap||debugLnum)	Con_DPrintf("newvol    near %6.1f %6.1f %6.1f - far %6.1f %6.1f %6.1f - ",
		currcutfrag->near.x, currcutfrag->near.y, currcutfrag->near.z,
		nextcutfrag->near.x, nextcutfrag->near.y, nextcutfrag->near.z);

				if (!intersecting) {
					// check point in volume
					qboolean outVolume = false;
					shadowvolfrag_t *frustrumfrag = cuttingVolume->nextfrag;
					while(frustrumfrag) {
						guVecSub(&currcutfrag->near, &frustrumfrag->near, &delta);
						if (guVecDotProduct(&delta, &frustrumfrag->normal) >= 0.5f) {
							// point outside volume
							outVolume = true;
							break;
						}
						frustrumfrag = frustrumfrag->nextfrag;
					}
					if (!outVolume) {
						intersecting = true;
						intersection.x = currcutfrag->near.x;
						intersection.y = currcutfrag->near.y;
						intersection.z = currcutfrag->near.z;
					}
				}

				if (!intersecting) {
					intersecting = R_CalculateIntersection(
						/* in */ 		&currcutfrag->near, &nextcutfrag->near, &cuttingfrag->normal, &cuttingfrag->near, 
						/* out */	&intersection) ? true : false;
				}
				// if no intersection, check DP to see curr is on plane -> results in intersecting condition
				if (!intersecting) {
					guVecSub(&currcutfrag->near, &cuttingfrag->near, &delta);
					float dp = guVecDotProduct(&delta, &cuttingfrag->normal);
					if (dp >= -0.5 && dp <= 0.5) {
						intersecting = true;
						intersection.x = currcutfrag->near.x;
						intersection.y = currcutfrag->near.y;
						intersection.z = currcutfrag->near.z;
					}
				}

				if (intersecting) {
					float		depth = 0;
					// check behind frontcap
					guVecSub(&intersection, &frontcap_xyz, &delta);
					if (guVecDotProduct(&frontcap_normal, &delta) <= -1) {
						guVecSub(&intersection, &lpos, &delta);
						depth = sqrtf(powf(delta.x, 2) + powf(delta.y, 2) + powf(delta.z, 2));
					}
//					depth = -guVecDotProduct(&frontcap_normal, &delta);
				
					if (depth > maxdepth) { 
						maxdepth = depth;
						intersection_xyz.x = intersection.x;
						intersection_xyz.y = intersection.y;
						intersection_xyz.z = intersection.z;
if (isTestMap) Con_DPrintf("new depth: %5.1f\r\n", maxdepth);						
					} 
				}
		
				// loop 'curr' and 'next' pointers... make sure 'next' rotates!
				currcutfrag = currcutfrag->nextfrag;
				nextcutfrag = nextcutfrag->nextfrag;
				if (!nextcutfrag) {
					nextcutfrag = currLoopedVol->nextfrag;
				}
if (isTestMap) Con_DPrintf("\r\n");						
				
			}
			currLoopedVol = currLoopedVol->nextvol;
		}
		cuttingfrag = cuttingfrag->nextfrag;
	}
	if (maxdepth <= 1)  {
		UT_DeleteShadowVolume(light, cuttingVolume);
//		Con_DPrintf("!keep - ");
	} else {
		// adjust volume depth
		Vector intersection_normal;
		guVecSub(&intersection_xyz, &lpos, &intersection_normal);
		guVecNormalize(&intersection_normal);
		shadowvol_t *out[2];
//		cuttingfrag = cuttingVolume->nextfrag;
		if (UT_CutSideWalls(light, cuttingVolume, &intersection_normal, &intersection_xyz, &out[0])) {
			UT_DeleteAllFragsInVolume(out[1]);
			UT_DeallocVolume(out[1]);
			out[0]->flags = cuttingVolume->flags;
			UT_InsertShadowVolumeBefore(light, out[0], cuttingVolume);
			UT_DeleteShadowVolume(light, cuttingVolume);
		}
		
/*		while(cuttingfrag) {
			Vector delta;
			guVecSub(&cuttingfrag->far, &lpos, &delta);
			float length = sqrtf(powf(delta.x, 2) + powf(delta.y, 2) + powf(delta.z, 2));
			if (length  > maxdepth) {
				float scale = maxdepth/length;
				guVecScale(&delta, &delta, scale);
				guVecAdd(&lpos, &delta, &cuttingfrag->far);
	Con_DPrintf("scale %5.2f - ", scale);
			}
			
			cuttingfrag = cuttingfrag->nextfrag;
		}*/

//		guVecSub(&frontcap_xyz, &lpos, &dlpos);
//		float dist = fabs(guVecDotProduct(&dlpos, &frontcap_normal));
//		if (light->radius > (dist + maxdepth)) {
//			// adjust volume depth
//			float scale = (dist + maxdepth)/light->radius;
//			cuttingfrag = cuttingVolume->nextfrag;
//			while(cuttingfrag) {
//				guVecScale(&cuttingfrag->far, &cuttingfrag->far, scale);
//				cuttingfrag = cuttingfrag->nextfrag;
//			}
//		}
	}
	return maxdepth;
}

/*
==============
UT_FilterExcludedContent
==============
*/
void UT_FilterExcludedContent(dlight_t *light) {
	// 
	shadowvol_t *itcheckingvolume = light->nextstaticshadowvolume;
	while(itcheckingvolume) {
		float 		maxdepth = 0;
		shadowvol_t *checkingvolume = itcheckingvolume;
		itcheckingvolume = itcheckingvolume->nextvol;
		
//		shadowvol_t *itcheckedvolume = light->nextstaticshadowvolume;
//		while(itcheckedvolume) {			
//			shadowvol_t *checkedvolume = itcheckedvolume;
//			itcheckedvolume = itcheckedvolume->nextvol;
//			if (checkedvolume == checkingvolume) continue;
			
			// use planes of checking volume to check if they make a cut in checked volume
			// if so, the checking volume can be kept
			float depth = UT_FindMaxDepth(light, checkingvolume);
//			if (depth > maxdepth) {
//				maxdepth = depth;
//			}
	//	}
//		if (maxdepth <= 1)  {
//			UT_DeleteShadowVolume(light, checkingvolume);
//			Con_DPrintf("!keep - ");
//		}
	}
}


/*
==============
UT_CalculateMinMaxs
call after volumes have been calculated
==============
*/
/*void UT_CalculateMinMaxs(dlight_t *light) {
	float xmin, xmax;
	float ymin, ymax;
	float zmin, zmax;
	shadowvol_t *curr = light->nextstaticshadowvolume;
	while(curr) {
		shadowvolfrag_t *currfrag =  curr->nextfrag;
		while(currfrag) {
			if (currfrag->far.x < xmin) xmin = currfrag->far.x;
			if (currfrag->far.x > xmax) xmax = currfrag->far.x;
			if (currfrag->far.y < ymin) ymin = currfrag->far.y;
			if (currfrag->far.y > ymax) ymax = currfrag->far.y;
			if (currfrag->far.z < zmin) zmin = currfrag->far.z;
			if (currfrag->far.z > zmax) zmax = currfrag->far.z;
			currfrag = currfrag->nextfrag;
		}
		curr = curr->nextvol;
	}
	light->minmaxs[0] = xmin;
	light->minmaxs[1] = ymin;
	light->minmaxs[2] = zmin;
	light->minmaxs[3] = xmax;
	light->minmaxs[4] = ymax;
	light->minmaxs[5] = zmax;
} */

/*
==============
UT_CutVolumes
==============
*/
int UT_HardCutVolumes(dlight_t *light, dlight_t *volstore, dlight_t *cuttingstore) {
	int numcut = 0;
	shadowvol_t *cuttingVolume = cuttingstore->nextstaticshadowvolume;
	while(cuttingVolume) {
//Con_DPrintf("cuttingstore %p - \r\n ", cuttingVolume);	
		// all cutting volume's frags will cut loopedVol
		shadowvolfrag_t *cuttingfrag = cuttingVolume->nextfrag;
		while(cuttingfrag) {
//Con_DPrintf("cuttingfrag %p - \r\n ", cuttingfrag);	
			// all volumes in volstore are processed
			shadowvol_t *currLoopedVol = volstore->nextstaticshadowvolume;
			while(currLoopedVol) {
				shadowvol_t *outVolumes[2];
//Con_DPrintf("currLoopedVol %p - ", currLoopedVol);	
				if (UT_CutVolumeCap(light, currLoopedVol, cuttingfrag, NULL, NULL, &outVolumes[0])) {
					// this is cut, new volumes have been allocated, add them to volstore
					UT_AddShadowVolumeToHead(volstore, outVolumes[0]);
					UT_AddShadowVolumeToHead(volstore, outVolumes[1]);
					// delete the cut volume from volstore
					UT_DeleteAllFragsInVolume(currLoopedVol);
					UT_DeleteShadowVolume(volstore, currLoopedVol);
					numcut++;
				}
				currLoopedVol = currLoopedVol->nextvol;
			}
			cuttingfrag = cuttingfrag->nextfrag;
		}
		cuttingVolume = cuttingVolume->nextvol;
	}
	return numcut;
}


void debugLight(dlight_t *light) {
	shadowvol_t *it = light->nextstaticshadowvolume;
	Con_DPrintf("===== debug list ===== \r\n");
	while(it) {
		int numfrags_cv, i;
		shadowvolfrag_t *fragbuf_cv[MAX_FRAGS_VOLUME];
		UT_CreateArray(it, MAX_FRAGS_VOLUME, &fragbuf_cv[0], &numfrags_cv);

		Con_DPrintf("volume:  flags %X\r\n", it->flags);
		for (i=0; i<numfrags_cv; i++) {
			Con_DPrintf("frag:  near %6.1f %6.1f %6.1f far %6.1f %6.1f %6.1f flags %X\r\n",
				fragbuf_cv[i]->near.x, fragbuf_cv[i]->near.y, fragbuf_cv[i]->near.z, 
				fragbuf_cv[i]->far.x, fragbuf_cv[i]->far.y, fragbuf_cv[i]->far.z, fragbuf_cv[i]->flags);
		}
//		Con_DPrintf("volume:  p1 %6.1f %6.1f %6.1f flags %X - p2 %6.1f %6.1f %6.1f flags %X - p3 %6.1f %6.1f %6.1f flags %X\r\n",
//			fragbuf_cv[0]->near.x, fragbuf_cv[0]->near.y, fragbuf_cv[0]->near.z, fragbuf_cv[0]->flags,
//			fragbuf_cv[1]->near.x, fragbuf_cv[1]->near.y, fragbuf_cv[1]->near.z, fragbuf_cv[1]->flags,
//			fragbuf_cv[2]->near.x, fragbuf_cv[2]->near.y, fragbuf_cv[2]->near.z, fragbuf_cv[2]->flags);
		
		it = it->nextvol;
	}
}


/*
============
UT_FindMostClose
============
*/
Vector *UT_FindMostClose(Vector *lpos, shadowvolfrag_t **fragbuf, int numfrags) {
	int i;
	Vector *retvect = NULL;
	float mostclose = 10000000000000.0f;
	for(i=0; i<numfrags; i++) {
		Vector delta;
		guVecSub(&fragbuf[i]->near, lpos, &delta);
		float len = delta.x*delta.x + delta.y*delta.y + delta.z*delta.z;
		if (len < mostclose) {
			mostclose = len;
			retvect = &fragbuf[i]->near;
		}
	}

if(isTestMap) {
Con_DPrintf("mostclose  light %6.1f %6.1f %6.1f - vect %6.1f %6.1f %6.1f\r\n",
	lpos->x, lpos->y, lpos->z,
	retvect->x, retvect->y, retvect->z);
}
	return retvect;
}

/*
==============
UT_CloneAndInsertVolume()
inserted volume will cut volumes in back of it and then is 
cut by volumes in front of it. passed cuttingvolume isn't added
itself, but a clone is created and added since the volume may be
cut into the hierarchy
==============
*/
void UT_CloneAndInsertVolume(dlight_t *light, shadowvol_t *cuttingVolume) {
	int numfrags_cv;
	Vector lpos, t, b;
	Vector  *mostclose;
	shadowvolfrag_t *fragbuf_cv[MAX_FRAGS_VOLUME];
	shadowvolfrag_t *fragbuf_lv[MAX_FRAGS_VOLUME];
	shadowvol_t *loopedvol;

	dlight_t volstore; 
	memset(&volstore, 0x00, sizeof(dlight_t));

	lpos.x = light->origin[0];
	lpos.y = light->origin[1];
	lpos.z = light->origin[2];
	
	// create fragment array
	UT_CreateArray(cuttingVolume, MAX_FRAGS_VOLUME, &fragbuf_cv[0], &numfrags_cv);

	Vector cv_plane_normal, cv_deltalpos;
	Vector cv_plane_xyz;
	guVecSub(&fragbuf_cv[2]->near, &fragbuf_cv[1]->near, &t);
	guVecSub(&fragbuf_cv[1]->near, &fragbuf_cv[0]->near, &b);
	guVecCross(&t, &b, &cv_plane_normal);
	guVecNormalize(&cv_plane_normal);

	mostclose = UT_FindMostClose(&lpos, &fragbuf_cv[0], numfrags_cv);
	cv_plane_xyz.x = mostclose->x;
	cv_plane_xyz.y = mostclose->y;
	cv_plane_xyz.z = mostclose->z;
//	cv_plane_xyz.x = fragbuf_cv[1]->near.x;
//	cv_plane_xyz.y = fragbuf_cv[1]->near.y;
//	cv_plane_xyz.z = fragbuf_cv[1]->near.z;
	guVecSub(&lpos, &cv_plane_xyz, &cv_deltalpos); // this will be used in facing check 
	guVecNormalize(&cv_deltalpos);
	
if (debugLnum) {
//	isTestMap = true;
Con_DPrintf("volume  p1 %6.1f %6.1f %6.1f - p2 %6.1f %6.1f %6.1f - p3 %6.1f %6.1f %6.1f\r\n",
	fragbuf_cv[0]->near.x, fragbuf_cv[0]->near.y, fragbuf_cv[0]->near.z,
	fragbuf_cv[1]->near.x, fragbuf_cv[1]->near.y, fragbuf_cv[1]->near.z,
	fragbuf_cv[2]->near.x, fragbuf_cv[2]->near.y, fragbuf_cv[2]->near.z);
}
if (isTestMap || debugLnum) {
	Con_DPrintf("==================== \r\n");
}	
	// loop thru the volumes 
	// check cutting volume plane in front or back of looped volume
	// if in front->
	//		looped volume is added to volstore
	//		cutting volume plane sidewalls cuts all volumes in volstore
	//			when cut
	//				resulting volumes are add to volstore
	//				the cut volume is deleted from volstore (also deletes frags!!!)
	//			else
	//				nothing
	//		end loop
	//		volumes in volstore encapsulated by cutting volume plane are filtered out
	// 		volumes in volstore are add to light
	//		volstore is cleared
	// end loop
	loopedvol = light->nextstaticshadowvolume;
int dbg = 0;

	while(loopedvol) {
		int numfrags_lv;
		shadowvol_t *nextvol = loopedvol->nextvol;
		// create fragment array
		UT_CreateArray(loopedvol, MAX_FRAGS_VOLUME, &fragbuf_lv[0], &numfrags_lv);

//Con_DPrintf("f");
		Vector lv_plane_normal, lv_deltalpos;
		Vector lv_plane_xyz;

		guVecSub(&fragbuf_lv[2]->near, &fragbuf_lv[1]->near, &t);
		guVecSub(&fragbuf_lv[1]->near, &fragbuf_lv[0]->near, &b);
		guVecCross(&t, &b, &lv_plane_normal);
		guVecNormalize(&lv_plane_normal);
		
		mostclose = UT_FindMostClose(&lpos, &fragbuf_lv[0], numfrags_lv);
		lv_plane_xyz.x = mostclose->x;
		lv_plane_xyz.y = mostclose->y;
		lv_plane_xyz.z = mostclose->z;
//		lv_plane_xyz.x = fragbuf_lv[1]->near.x;
//		lv_plane_xyz.y = fragbuf_lv[1]->near.y;
//		lv_plane_xyz.z = fragbuf_lv[1]->near.z;
		guVecSub(&lpos, &lv_plane_xyz, &lv_deltalpos); // this will be used in facing check 
		guVecNormalize(&lv_deltalpos);

		// point same direction and lv plane in front of looped volume? (dist < 0)
//		float dp = guVecDotProduct(&lv_plane_normal, &cv_plane_normal);
		float dp = guVecDotProduct(&lv_deltalpos, &cv_deltalpos);

		if (isTestMap) {
		Con_DPrintf("loopedvol  p1 %6.1f %6.1f %6.1f - p2 %6.1f %6.1f %6.1f - p3 %6.1f %6.1f %6.1f\r\n",
			fragbuf_lv[0]->near.x, fragbuf_lv[0]->near.y, fragbuf_lv[0]->near.z,
			fragbuf_lv[1]->near.x, fragbuf_lv[1]->near.y, fragbuf_lv[1]->near.z,
			fragbuf_lv[2]->near.x, fragbuf_lv[2]->near.y, fragbuf_lv[2]->near.z);
		Con_DPrintf("cutvol        p1 %6.1f %6.1f %6.1f - p2 %6.1f %6.1f %6.1f - p3 %6.1f %6.1f %6.1f\r\n",
			fragbuf_cv[0]->near.x, fragbuf_cv[0]->near.y, fragbuf_cv[0]->near.z,
			fragbuf_cv[1]->near.x, fragbuf_cv[1]->near.y, fragbuf_cv[1]->near.z,
			fragbuf_cv[2]->near.x, fragbuf_cv[2]->near.y, fragbuf_cv[2]->near.z);

		Con_DPrintf("Test in front of loopedVol dp %5.2f\r\n", dp);
		}
		if(debugLnum) Con_DPrintf(" - Test in front of loopedVol num %i - %p ", dbg++, loopedvol);

		if (dp >= 0) {
			Vector delta;
			guVecSub(&lv_plane_xyz, &cv_plane_xyz, &delta);
//			float dist = guVecDotProduct(&delta, &cv_plane_normal);
			float dist = guVecDotProduct(&delta, &cv_deltalpos);

			if (isTestMap) {
			Con_DPrintf("Test in front of loopedVol dist %5.2f\r\n", dist);
			}
//			if (dist < -1) { // planes close to eachother probably dont intersect
			if (dist <= -0.5f) { // planes close to eachother probably dont intersect
				if (isTestMap) {
				Con_DPrintf("AddedVol in front of loopedVol dp %5.2f\r\n", dist);
				}
				// it is in front...
				// clone volume and add it to volume store
				UT_AddShadowVolumeToHead(&volstore, UT_CloneVolume(loopedvol));
				
//				if (isTestMap) debugLight(light);
				
				UT_DeleteShadowVolume(light, loopedvol);
				
//				if (isTestMap) debugLight(light);
				
				// all cutting volume's frags will cut loopedVol
				UT_CutVolumes(light, cuttingVolume, &volstore);
				// remove redundant volumes from volstore
				UT_FilterOutEncapsulated(cuttingVolume, &volstore);
				
//				if (isTestMap||debugLnum) Con_DPrintf(" - 2 - ");				
				
				// add resulting volumes to head
				UT_CloneAndAddAllVolumes(light, &volstore, false);
				// clear store
				UT_DeleteAllShadowVolumes(&volstore);
				
//				if (isTestMap) debugLight(light);
			}
		}
		loopedvol = nextvol;
	}

	// add cutting volume to volstore
	// loop thru the volumes 
	// check cutting volume plane in front or back of looped volume
	// if in back -> 
	//		looped volume plane sidewalls cuts all cutting volumes in volstore
	//			when cut
	//				resulting volumes are add to volstore
	//				the cut volume is deleted from volstore (also deletes frags!!!)
	//			else
	//				nothing
	//		end loop
	//		volumes in volstore encapsulated by volume plane are filtered out
	// end loop
	// 	volumes in volstore are add to light
	//	volstore is cleared
if(debugLnum) Con_DPrintf(" - Test in back of loopedVol - ");

	UT_DeleteAllShadowVolumes(&volstore);
//if(debugLnum) Con_DPrintf(" - Add1 - ");
	UT_AddShadowVolumeToHead(&volstore, UT_CloneVolume(cuttingVolume)); // create a clone
//if(debugLnum) Con_DPrintf(" - Del1- ");
	UT_DeleteAllFragsInVolume(cuttingVolume);
	UT_DeallocVolume(cuttingVolume);
	
	loopedvol = light->nextstaticshadowvolume;
	while(loopedvol) {
		int numfrags_lv;
		shadowvolfrag_t *fragbuf_lv[MAX_FRAGS_VOLUME];
		// create fragment array
		UT_CreateArray(loopedvol, MAX_FRAGS_VOLUME, &fragbuf_lv[0], &numfrags_lv);
//Con_DPrintf("b");

		Vector lv_plane_normal, lv_deltalpos;
		Vector lv_plane_xyz;
		guVecSub(&fragbuf_lv[2]->near, &fragbuf_lv[1]->near, &t);
		guVecSub(&fragbuf_lv[1]->near, &fragbuf_lv[0]->near, &b);
		guVecCross(&t, &b, &lv_plane_normal);
		guVecNormalize(&lv_plane_normal);

		mostclose = UT_FindMostClose(&lpos, &fragbuf_lv[0], numfrags_lv);
		lv_plane_xyz.x = mostclose->x;
		lv_plane_xyz.y = mostclose->y;
		lv_plane_xyz.z = mostclose->z;
//		lv_plane_xyz.x = fragbuf_lv[1]->near.x;
//		lv_plane_xyz.y = fragbuf_lv[1]->near.y;
//		lv_plane_xyz.z = fragbuf_lv[1]->near.z;
		guVecSub(&lpos, &lv_plane_xyz, &lv_deltalpos); // this will be used in facing check 
		guVecNormalize(&lv_deltalpos);
		
		// point same direction and lv plane in back of looped volume? (dist > 0)
//		float dp = guVecDotProduct(&lv_plane_normal, &cv_plane_normal);
		float dp = guVecDotProduct(&lv_deltalpos, &cv_deltalpos);

		if (isTestMap) {
		Con_DPrintf("loopedvol p1 %6.1f %6.1f %6.1f - p2 %6.1f %6.1f %6.1f - p3 %6.1f %6.1f %6.1f\r\n",
			fragbuf_lv[0]->near.x, fragbuf_lv[0]->near.y, fragbuf_lv[0]->near.z,
			fragbuf_lv[1]->near.x, fragbuf_lv[1]->near.y, fragbuf_lv[1]->near.z,
			fragbuf_lv[2]->near.x, fragbuf_lv[2]->near.y, fragbuf_lv[2]->near.z);
		Con_DPrintf("cutvol       p1 %6.1f %6.1f %6.1f - p2 %6.1f %6.1f %6.1f - p3 %6.1f %6.1f %6.1f\r\n",
			fragbuf_cv[0]->near.x, fragbuf_cv[0]->near.y, fragbuf_cv[0]->near.z,
			fragbuf_cv[1]->near.x, fragbuf_cv[1]->near.y, fragbuf_cv[1]->near.z,
			fragbuf_cv[2]->near.x, fragbuf_cv[2]->near.y, fragbuf_cv[2]->near.z);


		Con_DPrintf("Test in back of loopedVol dp %5.2f\r\n", dp);
		}
		if (dp >= 0) {
			Vector delta;
			guVecSub(&lv_plane_xyz, &cv_plane_xyz, &delta);
//			float dist = guVecDotProduct(&delta, &cv_plane_normal);
			float dist = guVecDotProduct(&delta, &cv_deltalpos);

			if (isTestMap) {
			Con_DPrintf("Test in back of loopedVol dist %5.2f\r\n", dist);
			}

//			if (dist > 1) { // planes close to eachother probably dont intersect
			if (dist > -0.5f) { // planes close to eachother probably dont intersect
				if (isTestMap) {
				Con_DPrintf("AddedVol in back of loopedVol dp %5.2f\r\n", dist);
				}
				UT_CutVolumes(light, loopedvol, &volstore);
				UT_FilterOutEncapsulated(loopedvol, &volstore);
			}
		}
		loopedvol = loopedvol->nextvol;
	}
//	if(debugLnum) Con_DPrintf(" - Add2 - ");
	UT_CloneAndAddAllVolumes(light, &volstore, true);
//	if(debugLnum) Con_DPrintf(" - Del2 - ");
	UT_DeleteAllShadowVolumes(&volstore);

}


/*
===============
CheckSide
takes one point and three triangle points, calculates cross and checks if point on the right.
===============
*/
qboolean R_CheckSide(Vector *p1, Vector *a, Vector *b, Vector *c) {
    Vector cross1, cross2, ba, p1a, ca;
	
	guVecSub(b,  a, &ba);
	guVecSub(c,  a, &ca);
	guVecSub(p1, a, &p1a);

    guVecCross(&ba, &ca,  &cross2);
	guVecCross(&ba, &cross2, &cross1);
	
	return guVecDotProduct(&cross1, &p1a) < 0.0; 
	
}


/*
=================
R_PointsOnVector
=================
*/
qboolean R_PointsOnVector(Vector *vect, Vector *p1, Vector *p2) {
	Vector cross;
	guVecCross(vect, p1, &cross);
	if (!(fabs(cross.x) < BACKFACE_EPSILON &&
		fabs(cross.y) < BACKFACE_EPSILON &&
		fabs(cross.z) < BACKFACE_EPSILON)) {
		return false;
	}
	guVecCross(vect, p2, &cross);
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
	
	return true;
}

qboolean UT_VectorCompare(Vector *a, Vector *b) {
	if (fabs(a->x-b->x) <= 1.0f &&
		fabs(a->y-b->y) <= 1.0f &&
		fabs(a->z-b->z) <= 1.0f) {
		// TODO: fix R_PointsOnVector since it returns false when points slightly misalign
		a->x = b->x;
		a->y = b->y;
		a->z = b->z;
		return true;
	}
	return false;
}


/*
=================
R_FilterDuplicateVolumeFrags()
Removes duplicate fragment quads from visibility mask
access: private
=================
*/
void R_FilterDuplicateVolumeFrags(dlight_t *light) {
	int i, j, icnt, jcnt;
	int numfrags_i, numfrags_j;
	shadowvolfrag_t *fragbuf_i[MAX_FRAGS_VOLUME];
	shadowvolfrag_t *fragbuf_j[MAX_FRAGS_VOLUME];

	shadowvol_t *ivol = light->nextstaticshadowvolume;
	i = 0;
	while(ivol) {
		shadowvol_t *jvol = ivol->nextvol; 
		j = i+1;
		while(jvol) {
			int imatch[MAX_FRAGS_VOLUME], nummatch = 0;
			
			// create fragment arrays
			 UT_CreateArray(ivol, MAX_FRAGS_VOLUME, &fragbuf_i[0], &numfrags_i);
			 UT_CreateArray(jvol, MAX_FRAGS_VOLUME, &fragbuf_j[0], &numfrags_j);

			// find connecting vertices
			for(icnt=0; icnt<numfrags_i; icnt++) {
				// take a frag from a current volume
				float ix = fragbuf_i[icnt]->near.x;
				float iy = fragbuf_i[icnt]->near.y;
				float iz = fragbuf_i[icnt]->near.z;

				// check with frags from the possibly matching volume
				for(jcnt=0; jcnt<numfrags_j; jcnt++) {
					float jx = fragbuf_j[jcnt]->near.x;
					float jy = fragbuf_j[jcnt]->near.y;
					float jz = fragbuf_j[jcnt]->near.z;
//if(isTestMap) Con_DPrintf("Current Fragment i %i j %i - icnt %i -> %5.1f %5.1f %5.1f -> %5.1f %5.1f %5.1f\r\n", i, j, icnt, ix, iy, iz, jx, jy, jz); 
//					if (ix == jx &&  iy == jy && iz == jz) {
					if (UT_VectorCompare(&fragbuf_i[icnt]->near, &fragbuf_j[jcnt]->near)) {
						float depthi, depthj;
						Vector deltai, deltaj, lpos;
						lpos.x = light->origin[0];
						lpos.y = light->origin[1];
						lpos.z = light->origin[2];
						guVecSub(&fragbuf_i[icnt]->far, &lpos, &deltai);
						guVecSub(&fragbuf_j[jcnt]->far, &lpos, &deltaj);
						depthi = sqrtf(powf(deltai.x, 2) + powf(deltai.y, 2) + powf(deltai.z, 2));
						depthj = sqrtf(powf(deltaj.x, 2) + powf(deltaj.y, 2) + powf(deltaj.z, 2));
						if (depthi > depthj) {
							fragbuf_j[jcnt]->far.x = fragbuf_i[icnt]->far.x;
							fragbuf_j[jcnt]->far.y = fragbuf_i[icnt]->far.y;
							fragbuf_j[jcnt]->far.z = fragbuf_i[icnt]->far.z;
						} else {
							fragbuf_i[icnt]->far.x = fragbuf_j[jcnt]->far.x;
							fragbuf_i[icnt]->far.y = fragbuf_j[jcnt]->far.y;
							fragbuf_i[icnt]->far.z = fragbuf_j[jcnt]->far.z;
						}
						imatch[nummatch] = icnt;
						nummatch++;
//if(isTestMap) Con_DPrintf("Current Fragment i %i j %i - icnt %i -> %5.1f %5.1f %5.1f\r\n", i, j, icnt, ix, iy, iz); 
//if(isTestMap) Con_DPrintf("Fragment Match i %i j %i - icnt: %i jcnt: %i nummatch %i\r\n", i, j, icnt, jcnt, nummatch); 
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
				Vector *matchBase = &fragbuf_i[imatch[0]]->near;
				guVecSub(&fragbuf_i[imatch[1]]->near, matchBase, &matchVect);
				
				// loop thru current volume
				numfragsForCount = numfrags_i-1;
				for(icnt=0; icnt<numfragsForCount; icnt++) {
					// point 1 and point 2 on matching vector?
					guVecSub(&fragbuf_i[icnt]->near, matchBase, &fragmentVect0);
					guVecSub(&fragbuf_i[icnt+1]->near, matchBase, &fragmentVect1);
					if (R_PointsOnVector(&matchVect, &fragmentVect0, &fragmentVect1)) {
						// yes, unset visibility bit
						fragbuf_i[icnt]->flags &= ~(SHADOWVOLFRAG_FLAG_VIS);
if(isTestMap) Con_DPrintf("Removed fragment quad i: %i \r\n", icnt); 
					}
				}
				// remaining quad
				guVecSub(&fragbuf_i[numfragsForCount]->near, matchBase, &fragmentVect0);
				guVecSub(&fragbuf_i[0]->near, matchBase, &fragmentVect1);
				if (R_PointsOnVector(&matchVect, &fragmentVect0, &fragmentVect1)) {
					// yes, unset visibility bit
					fragbuf_i[numfragsForCount]->flags &= ~(SHADOWVOLFRAG_FLAG_VIS);
if(isTestMap) Con_DPrintf("Removed fragment quad i: %i \r\n", icnt); 
				}
				
				// do the same for matching volume
				numfragsForCount = numfrags_j-1;
				for(jcnt=0; jcnt<numfragsForCount; jcnt++) {
					// point 1 and point 2 on matching vector?
					guVecSub(&fragbuf_j[jcnt]->near, matchBase, &fragmentVect0);
					guVecSub(&fragbuf_j[jcnt+1]->near, matchBase, &fragmentVect1);
					if (R_PointsOnVector(&matchVect, &fragmentVect0, &fragmentVect1)) {
						// yes, unset visibility bit
						fragbuf_j[jcnt]->flags &= ~(SHADOWVOLFRAG_FLAG_VIS);
if(isTestMap) Con_DPrintf("Removed fragment quad j: %i\r\n", jcnt); 
					}
				}
				// remaining quad
				guVecSub(&fragbuf_j[numfragsForCount]->near, matchBase, &fragmentVect0);
				guVecSub(&fragbuf_j[0]->near, matchBase, &fragmentVect1);
				if (R_PointsOnVector(&matchVect, &fragmentVect0, &fragmentVect1)) {
					// yes, unset visibility bit
					fragbuf_j[numfragsForCount]->flags &= ~(SHADOWVOLFRAG_FLAG_VIS);
if(isTestMap) Con_DPrintf("Removed fragment quad j: %i\r\n", jcnt); 
				}
			}		
			jvol = jvol->nextvol;;
			j++;
		}
		ivol = ivol->nextvol;;
		i++;
	}

}


/*
=================
R_FilterDuplicateVolumeFragsFast()
Removes duplicate fragment quads from visibility mask
access: private
=================
*/
void R_FilterDuplicateVolumeFragsFast(dlight_t *newstore, dlight_t *existingstore) {
	int i, j, icnt, jcnt;
	int numfrags_i, numfrags_j;
	shadowvolfrag_t *fragbuf_i[MAX_FRAGS_VOLUME];
	shadowvolfrag_t *fragbuf_j[MAX_FRAGS_VOLUME];

	shadowvol_t *ivol = newstore->nextstaticshadowvolume;
	i = 0;
	while(ivol) {
		shadowvol_t *jvol = existingstore->nextstaticshadowvolume; 
		j = i+1;
		while(jvol) {
			int imatch[MAX_FRAGS_VOLUME], nummatch = 0;
			
			// create fragment arrays
			 UT_CreateArray(ivol, MAX_FRAGS_VOLUME, &fragbuf_i[0], &numfrags_i);
			 UT_CreateArray(jvol, MAX_FRAGS_VOLUME, &fragbuf_j[0], &numfrags_j);

			// find connecting vertices
			for(icnt=0; icnt<numfrags_i; icnt++) {
				// take a frag from a current volume
				float ix = fragbuf_i[icnt]->near.x;
				float iy = fragbuf_i[icnt]->near.y;
				float iz = fragbuf_i[icnt]->near.z;

				// check with frags from the possibly matching volume
				for(jcnt=0; jcnt<numfrags_j; jcnt++) {
					float jx = fragbuf_j[jcnt]->near.x;
					float jy = fragbuf_j[jcnt]->near.y;
					float jz = fragbuf_j[jcnt]->near.z;
//if(isTestMap) Con_DPrintf("Current Fragment i %i j %i - icnt %i -> %5.1f %5.1f %5.1f -> %5.1f %5.1f %5.1f\r\n", i, j, icnt, ix, iy, iz, jx, jy, jz); 
//					if (ix == jx &&  iy == jy && iz == jz) {
					if (UT_VectorCompare(&fragbuf_i[icnt]->near, &fragbuf_j[jcnt]->near)) {
					
						// these vertices match, record them
						imatch[nummatch] = icnt;
						nummatch++;
//if(isTestMap) Con_DPrintf("Current Fragment i %i j %i - icnt %i -> %5.1f %5.1f %5.1f\r\n", i, j, icnt, ix, iy, iz); 
//if(isTestMap) Con_DPrintf("Fragment Match i %i j %i - icnt: %i jcnt: %i nummatch %i\r\n", i, j, icnt, jcnt, nummatch); 
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
				Vector *matchBase = &fragbuf_i[imatch[0]]->near;
				guVecSub(&fragbuf_i[imatch[1]]->near, matchBase, &matchVect);
				
				// loop thru current volume
				numfragsForCount = numfrags_i-1;
				for(icnt=0; icnt<numfragsForCount; icnt++) {
					// point 1 and point 2 on matching vector?
					guVecSub(&fragbuf_i[icnt]->near, matchBase, &fragmentVect0);
					guVecSub(&fragbuf_i[icnt+1]->near, matchBase, &fragmentVect1);
					if (R_PointsOnVector(&matchVect, &fragmentVect0, &fragmentVect1)) {
						// yes, unset visibility bit
						fragbuf_i[icnt]->flags &= ~(SHADOWVOLFRAG_FLAG_VIS);
if(isTestMap) Con_DPrintf("Removed fragment quad i: %i \r\n", icnt); 
					}
				}
				// remaining quad
				guVecSub(&fragbuf_i[numfragsForCount]->near, matchBase, &fragmentVect0);
				guVecSub(&fragbuf_i[0]->near, matchBase, &fragmentVect1);
				if (R_PointsOnVector(&matchVect, &fragmentVect0, &fragmentVect1)) {
					// yes, unset visibility bit
					fragbuf_i[numfragsForCount]->flags &= ~(SHADOWVOLFRAG_FLAG_VIS);
if(isTestMap) Con_DPrintf("Removed fragment quad i: %i \r\n", icnt); 
				}
				
				// do the same for matching volume
				numfragsForCount = numfrags_j-1;
				for(jcnt=0; jcnt<numfragsForCount; jcnt++) {
					// point 1 and point 2 on matching vector?
					guVecSub(&fragbuf_j[jcnt]->near, matchBase, &fragmentVect0);
					guVecSub(&fragbuf_j[jcnt+1]->near, matchBase, &fragmentVect1);
					if (R_PointsOnVector(&matchVect, &fragmentVect0, &fragmentVect1)) {
						// yes, unset visibility bit
						fragbuf_j[jcnt]->flags &= ~(SHADOWVOLFRAG_FLAG_VIS);
if(isTestMap) Con_DPrintf("Removed fragment quad j: %i\r\n", jcnt); 
					}
				}
				// remaining quad
				guVecSub(&fragbuf_j[numfragsForCount]->near, matchBase, &fragmentVect0);
				guVecSub(&fragbuf_j[0]->near, matchBase, &fragmentVect1);
				if (R_PointsOnVector(&matchVect, &fragmentVect0, &fragmentVect1)) {
					// yes, unset visibility bit
					fragbuf_j[numfragsForCount]->flags &= ~(SHADOWVOLFRAG_FLAG_VIS);
if(isTestMap) Con_DPrintf("Removed fragment quad j: %i\r\n", jcnt); 
				}
			}		
			jvol = jvol->nextvol;;
			j++;
		}
		ivol = ivol->nextvol;;
		i++;
	}

}




/*
=================
UT_CloneAndInsertAscending()
=================
*/
void UT_CloneAndInsertAscending(dlight_t *light, shadowvol_t * newvol) {
	// * clone and add newvol -> newvolcuttings
	// * calculate newvol frontcap plane-> nfplane
	// * loop thru existing volumes->loopedvol
	// *	check if nfplane cuts all loopedvol sidewalls
	// *	if yes -> loopedvol must be modified
	// *		checknum volumes in newvolcuttings
	// *		check if loopedvol sidewalls cut newvol frontcap ->newvolcuttings
	// *		if yes
	// *			disable loopedvol rearcap
	// *			adjust loopedvol far coordinates
	// *			create a new volume from loopedvol sidewall cuts, disable frontcap -> newloopedvol
	// *			remove volumes from newvolcuttings that are encapsulated by newloopedvol
	// *			clone and add newloopedvol->newloopedvolcuttings
	// * 			hardcore cut newloopedvolcuttings using volumes in newvolcuttings
	// *			clone and add all volumes in newloopedvolcuttings to newvolcuttings
	// * 			clean newloopedvolcuttings
	// *		if no
	// * 			loopedvol is kept as is
	// * 	if no
	// *		loopedvol is kept as is
	// * end loop
	// * clean volume
	// * add newvolcuttings to light
	dlight_t newvolcuttings; 
	dlight_t newloopedvolcuttings; 
	memset(&newvolcuttings, 0x00, sizeof(dlight_t));
	memset(&newloopedvolcuttings, 0x00, sizeof(dlight_t));

	Vector 	lpos;
	Vector 	frontcap_deltalpos;
	Vector 	frontcap_xyz;
	Vector 	frontcap_normal;
	int 		frontcap_numfrags;
	Vector 	t, b;
	shadowvolfrag_t *frontcap_fragbuf[MAX_FRAGS_VOLUME];
	if (isTestMap || debugLnum) Con_DPrintf("===== AddVolume %i- ", UT_CountVolumesInStore(light));	

	lpos.x = light->origin[0];
	lpos.y = light->origin[1];
	lpos.z = light->origin[2];

	// create fragment array
	UT_CreateArray(newvol, MAX_FRAGS_VOLUME, &frontcap_fragbuf[0], &frontcap_numfrags);

	guVecSub(&frontcap_fragbuf[2]->near, &frontcap_fragbuf[1]->near, &t);
	guVecSub(&frontcap_fragbuf[1]->near, &frontcap_fragbuf[0]->near, &b);
	guVecCross(&t, &b, &frontcap_normal);
	guVecNormalize(&frontcap_normal);

	frontcap_xyz.x = frontcap_fragbuf[1]->near.x;
	frontcap_xyz.y = frontcap_fragbuf[1]->near.y;
	frontcap_xyz.z = frontcap_fragbuf[1]->near.z;
	guVecSub(&lpos, &frontcap_xyz, &frontcap_deltalpos); // this will be used in facing check 
	guVecNormalize(&frontcap_deltalpos);

	// add newvol to a storage
	UT_AddShadowVolumeToHead(&newvolcuttings, UT_CloneVolume(newvol));
//if(debugLnum) {
//	isTestMap = true;
//} else {
//	isTestMap = false;
//}
if (isTestMap||debugLnum)	Con_DPrintf("newvol    p1 %6.1f %6.1f %6.1f - p2 %6.1f %6.1f %6.1f - p3 %6.1f %6.1f %6.1f\r\n",
		frontcap_fragbuf[0]->near.x, frontcap_fragbuf[0]->near.y, frontcap_fragbuf[0]->near.z,
		frontcap_fragbuf[1]->near.x, frontcap_fragbuf[1]->near.y, frontcap_fragbuf[1]->near.z,
		frontcap_fragbuf[2]->near.x, frontcap_fragbuf[2]->near.y, frontcap_fragbuf[2]->near.z);

	
	// delete newvol
	UT_DeleteAllFragsInVolume(newvol);
	UT_DeallocVolume(newvol);
	
	shadowvol_t *itloopedvol = light->nextstaticshadowvolume;
	int num = 0;
	while(itloopedvol) {
		shadowvol_t *loopedvol = itloopedvol;
		itloopedvol = itloopedvol->nextvol;
		
		shadowvol_t *sidewallcutresult[2];
		int numfrags_lv;
		shadowvolfrag_t *fragbuf_lv[MAX_FRAGS_VOLUME];
		// create fragment array
		UT_CreateArray(loopedvol, MAX_FRAGS_VOLUME, &fragbuf_lv[0], &numfrags_lv);

		Vector lv_deltalpos;
		Vector lv_plane_xyz;
		lv_plane_xyz.x = fragbuf_lv[1]->near.x;
		lv_plane_xyz.y = fragbuf_lv[1]->near.y;
		lv_plane_xyz.z = fragbuf_lv[1]->near.z;
		guVecSub(&lpos, &lv_plane_xyz, &lv_deltalpos); // this will be used in facing check 
		guVecNormalize(&lv_deltalpos);
		
		float dp = guVecDotProduct(&lv_deltalpos, &frontcap_deltalpos);

		if (isTestMap) {
		Con_DPrintf("loopedvol p1 %6.1f %6.1f %6.1f - p2 %6.1f %6.1f %6.1f - p3 %6.1f %6.1f %6.1f\r\n",
			fragbuf_lv[0]->near.x, fragbuf_lv[0]->near.y, fragbuf_lv[0]->near.z,
			fragbuf_lv[1]->near.x, fragbuf_lv[1]->near.y, fragbuf_lv[1]->near.z,
			fragbuf_lv[2]->near.x, fragbuf_lv[2]->near.y, fragbuf_lv[2]->near.z);


			Con_DPrintf("Test in back of loopedVol dp %5.2f\r\n", dp);
		}
//if (isTestMap) Con_DPrintf("t1count%i - ", num++);	
		if (dp >= 0) {		
if (isTestMap || debugLnum) Con_DPrintf("t1.1 - ");	
/*			if (UT_CutSideWalls(light, loopedvol, &frontcap_normal, &frontcap_xyz, &sidewallcutresult[0])) {
				// yes we have a cut
				if (UT_CutVolumes(light, loopedvol, &newvolcuttings)) {
					// newvol frontcaps are cut
					// *			remove volumes from newvolcuttings that are encapsulated by newloopedvol
if (isTestMap || debugLnum)	Con_DPrintf("t2.1num%i - ", UT_CountVolumesInStore(&newvolcuttings));	
					R_FilterDuplicateVolumeFrags(&newvolcuttings);

					UT_FilterOutEncapsulated(loopedvol, &newvolcuttings);
if (isTestMap || debugLnum)	Con_DPrintf("t2.2num%i - ", UT_CountVolumesInStore(&newvolcuttings));	
					// insert the replacement for loopedvol
					UT_InsertShadowVolumeBefore(light, sidewallcutresult[0], loopedvol);
//if (isTestMap) Con_DPrintf("t3num%i - ", UT_CountVolumesInStore(light));	
					UT_DeleteShadowVolume(light, loopedvol);
//if (isTestMap)	Con_DPrintf("t3.1num%i - ", UT_CountVolumesInStore(light));	
					// *			clone and add newloopedvol->newloopedvolcuttings (=sidewallcutresult[1])
					UT_AddShadowVolumeToHead(&newloopedvolcuttings, sidewallcutresult[1]);
					// * 			hardcore cut newloopedvolcuttings using volumes in newvolcuttings
if (isTestMap || debugLnum)	Con_DPrintf("t4 - ");	
					UT_HardCutVolumes(light, &newloopedvolcuttings, &newvolcuttings);  
if (isTestMap || debugLnum)	Con_DPrintf("t5num%i - ", UT_CountVolumesInStore(&newloopedvolcuttings));	
					// *			clone and add all volumes in newloopedvolcuttings to newvolcuttings
					UT_CloneAndAddAllVolumes(&newvolcuttings, &newloopedvolcuttings, true);
					R_FilterDuplicateVolumeFrags(&newvolcuttings);
					// * 			clean newloopedvolcuttings
					UT_DeleteAllShadowVolumes(&newloopedvolcuttings);
if (isTestMap || debugLnum)	Con_DPrintf("t6 - ");	
				} else {
					// no cut
					UT_DeleteAllFragsInVolume(sidewallcutresult[0]);
					UT_DeallocVolume(sidewallcutresult[0]);
					UT_DeleteAllFragsInVolume(sidewallcutresult[1]);
					UT_DeallocVolume(sidewallcutresult[1]);

					UT_FilterOutEncapsulated(loopedvol, &newvolcuttings);
					
				}
			} else {*/
				// no cut
					UT_FilterOutEncapsulated(loopedvol, &newvolcuttings);
			/*}*/
		}
	}

//if (isTestMap || debugLnum) debugLight(&newvolcuttings);	
if (isTestMap || debugLnum)	Con_DPrintf("numadd%i - ", UT_CountVolumesInStore(&newvolcuttings));	

//	R_FilterDuplicateVolumeFrags(&newvolcuttings);
//	R_FilterDuplicateVolumeFragsFast(&newvolcuttings, light);	

	UT_CloneAndAddAllVolumes(light, &newvolcuttings, true);
if (isTestMap || debugLnum) Con_DPrintf("t7numvol %i - ", UT_CountVolumesInStore(light));	

	UT_DeleteAllShadowVolumes(&newvolcuttings);
if (isTestMap || debugLnum) Con_DPrintf("t8 - \r\n");	

if (isTestMap || debugLnum) debugLight(light);	

}



/*
=================
UT_CreateVolumeFromSurface
=================
*/
qboolean UT_CreateVolumeFromSurface(dlight_t *light, msurface_t *surf, shadowvol_t *shadowvol) {
	qboolean isFan = false;
	float *v, *second, *last;
	int startvert, numverts, maxverts;
	glpoly_t 	*polys = surf->polys;
	Vector vertices[MAX_FRAGS_VOLUME];
	v 	= polys->verts[0];
	second = v + VERTEXSIZE;
	last = v + VERTEXSIZE * (polys->numverts-1);
	// check for real triangle fans and filter out co linear points if so
	if (second[0] == last[0] && second[1] == last[1] && second[2] == last[2]) {
		isFan  = true;
		startvert = 1;
		maxverts = polys->numverts - 2;
//Con_DPrintf("FAN\r\n");		
	} else {
		startvert = 0;
		maxverts = polys->numverts;
	}
	
	int idx = 0;
	for(numverts=0; numverts<maxverts && idx<MAX_FRAGS_VOLUME; numverts++) { 
		// compromize for rearfacing surface by storing the vertices inverted
//		int idx = polys->numverts - numverts - 1;
//		vertices[idx].x = v[0];
//		vertices[idx].y = v[1];
//		vertices[idx].z = v[2];
		// colinear?
		Vector vnext, vprev, vcurr, norm1, norm2, result;
		float *fnext = polys->verts[0] + (startvert + (numverts+1)%maxverts) * VERTEXSIZE;
		float *fcurr = polys->verts[0] + (startvert + (numverts)%maxverts) * VERTEXSIZE;
		float *fprev = polys->verts[0] + (startvert + (numverts+maxverts-1)%maxverts) * VERTEXSIZE;
		vnext.x = fnext[0];
		vnext.y = fnext[1];
		vnext.z = fnext[2];

		vprev.x = fprev[0];
		vprev.y = fprev[1];
		vprev.z = fprev[2];
		
		vcurr.x = fcurr[0];
		vcurr.y = fcurr[1];
		vcurr.z = fcurr[2];
		
		guVecSub(&vnext, &vprev, &norm1);
		guVecSub(&vnext, &vcurr, &norm2);
		guVecNormalize(&norm1);
		guVecNormalize(&norm2);
		guVecSub(&norm1, &norm2, &result);
if (isFan) {
//	Con_DPrintf("next %5.1f %5.1f %5.1f\r\n", vnext.x, vnext.y, vnext.z);		
//	Con_DPrintf("curr %5.1f %5.1f %5.1f\r\n", vcurr.x, vcurr.y, vcurr.z);		
//	Con_DPrintf("prev %5.1f %5.1f %5.1f\r\n", vprev.x, vprev.y, vprev.z);		
//	Con_DPrintf("norm1 %5.1f %5.1f %5.1f\r\n", norm1.x, norm1.y, norm1.z);		
//	Con_DPrintf("norm2 %5.1f %5.1f %5.1f\r\n", norm2.x, norm2.y, norm2.z);		
}	
		
		#define COLINEAR_EPSILON 0.001
		if (fabs(result.x) >= COLINEAR_EPSILON || 
			fabs(result.y) >= COLINEAR_EPSILON || 
			fabs(result.z) >= COLINEAR_EPSILON) { 
if (isFan) {
//	Con_DPrintf("Added!\r\n");
}	
			vertices[idx].x = vcurr.x;
			vertices[idx].y = vcurr.y;
			vertices[idx].z = vcurr.z;
			idx++;
		}
	} 
//	Con_DPrintf("==================\r\n");
	return UT_CreateVolumeFromVertices(light, vertices, idx, shadowvol);
}


/*
=================
UT_AddShadowVolume
=================
*/
qboolean UT_AddShadowVolume(dlight_t *light, msurface_t *surf) {
	shadowvol_t *vol = UT_AllocShadowVolume();
	if (!vol) {
		Con_DPrintf("UT_AddShadowVolume: no free volumes!");
		return false;
	}
	
	
	if (UT_CreateVolumeFromSurface(light, surf, vol)) {
//		if (!isTestMap) {
//			UT_AddShadowVolumeToTail(light, vol);
//		} else {
			// in this case vol is a dummy, so 'free' it after
			UT_CloneAndInsertAscending(light, vol);
//			UT_CloneAndInsertVolume(light, vol);
//		}
	} else {
		UT_DeallocVolume(vol);
	}
	return true;
	
}


/*
=================
UT_CalcMostClose()
=================
*/
float UT_GetMostClose(dlight_t *light, msurface_t *surf) {
	float mostclose = 0;
	float *v;
	int numverts;
	glpoly_t 	*polys = surf->polys;
	v 	= polys->verts[0];
	
	// check vertices in range (radius^2)
	for(numverts=0; numverts<polys->numverts && numverts<MAX_FRAGS_VOLUME; numverts++, v+=VERTEXSIZE) { 
		// compromize for rearfacing surface by storing the vertices inverted
		float v0 = v[0] - light->origin[0];
		float v1 = v[1] - light->origin[1];
		float v2 = v[2] - light->origin[2];
		float lengthsq = v0 * v0 + v1 * v1 + v2 * v2;
		if (numverts == 0) {
			mostclose = lengthsq;
		} else
		if (lengthsq < mostclose) {
			mostclose = lengthsq;
		}
	} 
	return mostclose;
}


/*
=================
R_CalculateVolumesForLight()
=================
*/
void R_CalculateVolumesForLight(dlight_t *light, msurface_t *firstsurface, int num_surfaces) {
	int i,j;

Con_DPrintf("light->nextstaticshadowvolume %p\r\n", light->nextstaticshadowvolume);
	light->nextstaticshadowvolume = NULL;
	light->num_staticshadowvolumes = 0;

	for(i=0; i<num_surfaces; i++) {
		for(j=i+1; j<num_surfaces; j++) {
			msurface_t		*surf1 = &firstsurface[i];
			msurface_t		*surf2 = &firstsurface[j];
			if (UT_GetMostClose(light, surf1) > UT_GetMostClose(light, surf2)) {
				msurface_t temp;
				memcpy(&temp, surf1, sizeof(msurface_t));
				memcpy(surf1, surf2, sizeof(msurface_t));
				memcpy(surf2, &temp, sizeof(msurface_t));
				
			}
		}
	}
	
	for (i=0; i<num_surfaces; i++) {
		msurface_t		*surf = &firstsurface[i];
		if (!UT_AddShadowVolume(light, surf)) {
			Con_Printf("R_CalculateVolumesForLight: not enough shadow volume storage. Volume is skipped\r\n");
			return;
		}
	}
	
	// * list offered is sorted ascending
	// * get surface from list -> volume
	// *
	
	if(isTestMap || debugLnum) debugLight(light);	
	// optimize them
	UT_FilterExcludedContent(light);
	R_FilterDuplicateVolumeFrags(light);//->staticshadowvolumes, light->num_staticshadowvolumes);
//	UT_CalculateMinMaxs(light);
//	UT_DefragShadowFragMem();

//if (isTestMap) 	R_CutVolumes(light);
//if (isTestMap) 	R_OptimizeVolumes(light);
//	UT_DefragShadowTriMem();
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
	r_sshadowvolfrags = Hunk_AllocName(MAX_STATIC_SHADOWFRAGS * sizeof(shadowvolfrag_t), "svfrags");

	r_stencilTextureBuf = 0;
	r_stencilTextureBuf = (void *) SYS_AllocArena1MemLo(STENCIL_WIDTH * STENCIL_HEIGHT * MAX_STENCIL_TEXTURES, 32);	 // TODO: need to free somewhere
	
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
	GX_SetTevColor(GX_TEVPREV, r_volumecol);
	GX_SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV);
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
	GX_SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO);
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
=================
R_DrawShadowVolumeStencilTexture
Draw the shadow volumes
=================
*/
void R_DrawShadowVolumeStencilTexture(dlight_t *light, const qboolean clearfb) {
	int face, f1, f2;
	shadowvol_t *vol;
	int num_frags;
	shadowvolfrag_t *fragbuf[MAX_FRAGS_VOLUME];
	shadowvolfrag_t *vf1, *vf2, *currfrag;
	
	light->stenciltexnum = r_numstencilTextures;
	r_numstencilTextures++;

//	R_Blank();
	GX_SetZMode(GX_ENABLE, GX_GEQUAL, GX_FALSE); 
	
	for (face=0; face<2; face++) {
		if (face == 0 ) {
			GX_SetCullMode(GX_CULL_FRONT);  // blend
			GX_SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	// Increase backface count
		} else {
			GX_SetCullMode(GX_CULL_BACK);  // subtr
			GX_SetBlendMode(GX_BM_SUBSTRACT, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	// Decrease backface count
		}
		vol = light->nextstaticshadowvolume;
		while(vol) {
				
			// create array of fragments TODO use func
			num_frags = 0;
			currfrag = vol->nextfrag;
			while(currfrag) {
				fragbuf[num_frags] = currfrag;
				currfrag = currfrag->nextfrag;
				num_frags++;
			}
			
			if (!(vol->flags & SHADOWVOL_FLAG_HIDE_REARCAP)) {
				GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT3, num_frags);
				for (f1=num_frags-1; f1>-1; f1--) { // inv winding
					vf1 = fragbuf[f1];
					GX_Position3f32(	vf1->far.x, vf1->far.y, vf1->far.z);
				}
				GX_End();
			}
			if (!(vol->flags & SHADOWVOL_FLAG_HIDE_FRONTCAP)) {
				GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT3, num_frags);
				for (f1=0; f1<num_frags; f1++) {
					vf1 = fragbuf[f1];
					GX_Position3f32(	vf1->near.x, vf1->near.y, vf1->near.z);
				}
				GX_End();
			}

/*			int start = -1;
			int i, force = num_frags-1;
			for (i=0; i<num_frags; i++) {
				vf1 = fragbuf[i];
				if (start < 0 && (vf1->flags & SHADOWVOLFRAG_FLAG_VIS)) { 
					start = i;
				}
				if (start  > -1 && ((!(vf1->flags & SHADOWVOLFRAG_FLAG_VIS)) || (i == force))) {
					// draw em
//					if (i == force) i++;
					int num_sidewalls = 2 + (i - start) * 2; 
					GX_Begin(GX_TRIANGLESTRIP, GX_VTXFMT3, num_sidewalls);
					vf1 = fragbuf[start];
					GX_Position3f32(	vf1->near.x, vf1->near.y, vf1->near.z);
					GX_Position3f32(	vf1->far.x, 	vf1->far.y, 	vf1->far.z);
					for(f1=start; f1<i; f1++) {
						f2 = f1 + 1;
						if (f2 == num_frags) f2 = 0;
						vf2 = fragbuf[f2];
						
						GX_Position3f32(	vf2->near.x, vf2->near.y, vf2->near.z);
						GX_Position3f32(	vf2->far.x, 	vf2->far.y, 	vf2->far.z);
						
					}
					GX_End();
					start = -1;
				}
			}
*/			
			for (f1=0; f1<num_frags; f1++) {
				vf1 = fragbuf[f1];
				if (vf1->flags & SHADOWVOLFRAG_FLAG_VIS) { 
					f2 = f1 + 1;
					if (f2 == num_frags) f2 = 0;
					
					vf2 = fragbuf[f2];
					
					GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT3, 4);
					GX_Position3f32(	vf1->far.x, 	vf1->far.y, 	vf1->far.z);
					GX_Position3f32(	vf2->far.x, 	vf2->far.y, 	vf2->far.z);
					GX_Position3f32(	vf2->near.x, vf2->near.y, vf2->near.z);
					GX_Position3f32(	vf1->near.x, vf1->near.y, vf1->near.z);
					GX_End();
				}
			}
		
			vol = vol->nextvol;
		}
		GX_PixModeSync();
		GX_DrawDone();
	}
	
	int width = r_stencilTextures[light->stenciltexnum].scaled_width;
	int height =r_stencilTextures[light->stenciltexnum].scaled_height;
	void *data = r_stencilTextures[light->stenciltexnum].data;
	
	if (clearfb) {
		GX_SetZMode(GX_ENABLE, GX_LEQUAL, GX_TRUE); // funny feature, this clears Z, latter FALSE doesn't
	} else {
		// clear color only z setup already done above
//		GX_SetZMode(GX_ENABLE, GX_LEQUAL, GX_FALSE); // funny feature, this doesn't!
	}
	GX_SetAlphaUpdate(GX_TRUE);
	GX_SetColorUpdate(GX_TRUE);
	GX_SetTexCopySrc(0, 0, width, height);
	
	GX_SetTexCopyDst(width, height, GX_CTF_R8, GX_FALSE);
//	GX_SetBlendMode(GX_BM_NONE, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	// Increase backface count

	GX_CopyTex(data, GX_TRUE);
//	GX_CopyTex(data, clearfb);
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
//		if(R_CullBox(lights[i]->minmaxs, lights[i]->minmaxs+3)) 
//			continue;
		R_DrawShadowVolumeStencilTexture(lights[i], i==0);
	}
	
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
	GX_SetNumChans(1);

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

