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
#include <ogc/lwp_mutex.h>
#include <gx.h>
#include <math.h>
#include <system.h>


#define MAX_STATIC_SHADOWVOLUMES		65536	
#define MAX_STATIC_SHADOWFRAGS				4*MAX_STATIC_SHADOWVOLUMES	
#define MAX_DYNAMIC_SHADOWFRAGS			32768	
#define MAX_DYNAMIC_SHADOWVOLUMES	8192
#define MAX_VOLUMENEIGHBOURS				2*MAX_STATIC_SHADOWVOLUMES

#define MAX_FRAGS_VOLUME 							32


// static volumes
// TODO: move to arena2 to free up extra mem for stenciling
shadowvol_t 				r_sshadowvolumes[MAX_STATIC_SHADOWVOLUMES];
volumeneighbour_t		r_volumeneighbours[MAX_VOLUMENEIGHBOURS]; // TODO remove
shadowvolfrag_t 		*r_sshadowvolfrags;//[MAX_STATIC_SHADOWFRAGS];

int r_numvolumeneighbours;
int r_firstvolumeneighbour;
int r_numsshadowvolumes;
int r_firstsshadowvol;
int r_numsshadowvolfrags;
int r_firstsshadowvolfrag;

int r_firstdshadowvol;
int r_firstdshadowvolfrag;
int r_volumemode;

// help list to store the surfaces seen by a light when processing it
#define MAX_SURFACES_LIGHT					4096
//int ut_numlitsurfacesincache;
//msurface_t ut_litsurfacecache[MAX_SURFACES_LIGHT];

// DRS since these are big, only declare 24 of em
#define MAX_STENCIL_TEXTURES		16
#define NUM_VOLUMES_PASS				128

gltexture_t 	r_stencilTextures[MAX_STENCIL_TEXTURES];
void				*r_stencilTextureBuf;
int				r_numstencilTextures; 			
int				r_stencilTextureSize;
//gltexture_t 	r_zTexture;
//void				*r_zTextureBuf;

// other
GXColor 		r_volumecol;
GXColor 		r_blankcol;
Mtx 				r_identity;


extern qboolean isTestMap; // DRS TODO nog weghalen
extern qboolean debugLnum;
extern dlight_t			*r_contributinglights[];
extern int					r_contributinglightscount;

// TODO: move
/*void R_GrabZ() {
	GX_SetTexCopySrc(0, 0, STENCIL_WIDTH, STENCIL_HEIGHT);
	GX_SetTexCopyDst(ZBUFTEX_WIDTH, ZBUFTEX_HEIGHT, GX_TF_Z24X8, GX_FALSE);

	GX_CopyTex(r_zTextureBuf, GX_FALSE);
	GX_PixModeSync();
	DCFlushRange(r_zTextureBuf, ZBUFTEX_WIDTH*ZBUFTEX_HEIGHT);

}

qboolean R_CheckZ(dlight_t *light, Mtx mtx) {
	int i, j;
	Mtx p43;
	Vector xyz;
	float dz;
	// transform to viewspace
	guVecMultiply(mtx, (Vector *) light->origin[0], &xyz);
	// project
	if ((xyz.z + light->radius) < 0) {
		dz = xyz.z + light->radius;
	} else
	if (xyz.z < 0) {
		dz = xyz.z + light->radius;
	} else
	

}*/

/*
================
UT_SetVolumeMode()
0 = static
1 = dynamic
================
*/
void UT_SetVolumeMode(int mode) {
	if (r_volumemode != mode && mode == 1) {
		// set to dynamic (actually, setup pointers in such a way that 
		// no bubbles can occur and dynamic volumes can be removed 
		// easily
		r_firstdshadowvol = r_numsshadowvolumes;
		r_firstsshadowvol = r_numsshadowvolumes;
		r_firstdshadowvolfrag = r_numsshadowvolfrags;
		r_firstsshadowvolfrag = r_numsshadowvolfrags;
		r_volumemode = mode;
	} else
	if (r_volumemode != mode && mode == 0) { 
		// TODO but not required: since switchback to mode 0 is 
		// done at map load when stuff is cleared anyway
		r_volumemode = mode;
	}
}

/*
================
UT_ClearDynamicVolumes
================
*/
void UT_ClearDynamicVolumes(void) {
	r_firstsshadowvol = r_firstdshadowvol;
	r_firstsshadowvolfrag = r_firstdshadowvolfrag;
}


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
		if (!(r_sshadowvolfrags[i].flags & SHADOWVOLFRAG_FLAG_USED) || r_volumemode == 1) {
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
UT_AllocVolumeNeighbour()
=================
*/
volumeneighbour_t *UT_AllocVolumeNeighbour(void) {
	volumeneighbour_t *returnneighbour  = NULL;
	
	int i;
	for(i=r_firstvolumeneighbour; i<MAX_VOLUMENEIGHBOURS; i++) {
		if (!r_volumeneighbours[i].used) {
			returnneighbour = &r_volumeneighbours[i];
			r_firstvolumeneighbour = i + 1;
			if (i > r_numvolumeneighbours) {
				r_numvolumeneighbours = i;
			}
			break;
		}
	}

	if (returnneighbour) {
		memset(returnneighbour, 0x00, sizeof(volumeneighbour_t));
		returnneighbour->used = true;
	} else {
		// TODO check unused ones
		Con_Printf("UT_AllocVolumeNeighbour: out of neighbours\r\n");
		Con_DPrintf("UT_AllocVolumeNeighbour: out of neighbours\r\n");
	}
	return returnneighbour;
}

/*
=================
UT_DeallocVolumeNeighbour()
=================
*/
void UT_DeallocVolumeNeighbour(volumeneighbour_t *deleteit) {
	int idx = (((int)deleteit) - ((int) &r_volumeneighbours[0])) / sizeof(volumeneighbour_t);

	if (idx < r_firstvolumeneighbour) {
		r_firstvolumeneighbour = idx;
	}
	deleteit ->used = false;
}


/*
=================
UT_AddNeighbourToVolume()
=================
*/
void UT_AddNeighbourToVolume(shadowvol_t *vol, shadowvol_t *neighbouringvol) {
	volumeneighbour_t *neighbour = UT_AllocVolumeNeighbour();
	if (neighbour) {
		neighbour->vol = neighbouringvol;
		if (vol->nextneighbour) {
			volumeneighbour_t *curr = vol->nextneighbour;
			while(curr) {
				if (!curr->nextneighbour) {
					curr->nextneighbour = neighbour;
					break;
				}
				curr = curr->nextneighbour;
			}
		} else {
			vol->nextneighbour = neighbour;
		}
	}
}


/*
=================
UT_DeleteAllNeighboursFromVolume()
=================
*/
void UT_DeleteAllNeighboursFromVolume(shadowvol_t *vol) {
	volumeneighbour_t *curr = vol->nextneighbour;
	vol->nextneighbour = NULL;
	while(curr) {
		volumeneighbour_t *deleteit = curr;
		curr = curr->nextneighbour;
		
		UT_DeallocVolumeNeighbour(deleteit);
	}
	
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
		if (!r_sshadowvolumes[i].used || r_volumemode == 1) {
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
void UT_InsertShadowVolumeBefore(dlight_t *l, shadowvol_t *vol, shadowvol_t *beforevol) {
	qboolean inserted = false;
	if (!vol || !l || !beforevol) {
		Con_Printf("UT_InsertShadowVolumeBefore: NULL");
		return;
	}
	shadowvol_t **head;
	if (r_volumemode == 0) {
		head = &l->nextstaticshadowvolume;
	} else {
		head = &l->nextdynamicshadowvolume;
	}

	if (*head) {
		shadowvol_t *currvol = *head;
		if (currvol == beforevol) {
			*head = vol;
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
		*head = vol;
	}
	if (inserted) {
		if (r_volumemode == 0) {
			l->num_staticshadowvolumes++;	
		}
	}
}


/*
================
UT_AddShadowVolumeToTail()
================
*/
void UT_AddShadowVolumeToTail(dlight_t *l, shadowvol_t *vol) {
	if (!vol || !l) {
		Con_Printf("UT_AddShadowVolumeToTail: NULL");
		return;
	}

	shadowvol_t **head;
	if (r_volumemode == 0) {
		head = &l->nextstaticshadowvolume;
	} else {
		head = &l->nextdynamicshadowvolume;
	}

	if (*head) {
		shadowvol_t *currvol = *head;
		while(currvol) {
			if (!currvol->nextvol) {
				currvol->nextvol = vol;
				break;
			}
			currvol = currvol->nextvol;
		}
	} else {
		*head = vol;
	}
	if (r_volumemode == 0) {
		l->num_staticshadowvolumes++;	
	}
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
void UT_AddShadowVolumeToHead(dlight_t *l, shadowvol_t *vol) {
	if (!vol || !l) {
		Con_Printf("UT_AddShadowVolumeToHead: NULL");
		return;
	}

	shadowvol_t **head;
	if (r_volumemode == 0) {
		head = &l->nextstaticshadowvolume;
	} else {
		head = &l->nextdynamicshadowvolume;
	}
	
	if (*head) {
		shadowvol_t *shiftvol = *head;

		shadowvol_t *currvol = vol;
		while(currvol) {
			if (!currvol->nextvol) {
				currvol->nextvol = shiftvol;
				break;
			}
			currvol = currvol->nextvol;
		}

		*head = vol;
	} else {
		*head = vol;
	}
	if (r_volumemode == 0) {
		l->num_staticshadowvolumes++;	
	}
}



/*
================
UT_UnlinkReferencingNeighbours()
================
*/
void UT_UnlinkReferencingNeighbours(dlight_t *light, shadowvol_t *vol) {
	shadowvol_t *currvol = light->nextstaticshadowvolume;
	while(currvol) {
		volumeneighbour_t *prev;
		volumeneighbour_t *curr = currvol->nextneighbour;
		if (curr) { 
			// first entry match?
			if (curr->vol == vol) {
				currvol->nextneighbour = curr->nextneighbour;
				UT_DeallocVolumeNeighbour(curr);
			} else {
				prev = curr;
				curr = curr->nextneighbour;
				while(curr) {
					if (curr->vol == vol) {
						prev->nextneighbour = curr->nextneighbour;
						UT_DeallocVolumeNeighbour(curr);
						break;
					}
					prev = curr;
					curr = curr->nextneighbour;
				}
				
			}
		}
		currvol = currvol->nextvol;
	}
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
		UT_UnlinkReferencingNeighbours(light, deleteit);
		UT_DeallocVolume(deleteit);
		UT_DeleteAllFragsInVolume(deleteit);
		UT_DeleteAllNeighboursFromVolume(deleteit);
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
		
		UT_UnlinkReferencingNeighbours(light, deleteit);
		UT_DeleteAllNeighboursFromVolume(deleteit);
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
	r_numvolumeneighbours = 0;
	r_firstvolumeneighbour = 0;
	r_firstdshadowvol = 0;
	r_firstdshadowvolfrag = 0;
	r_volumemode = 0;
	
	int i;

	for(i=0; i<MAX_VOLUMENEIGHBOURS; i++) {
		r_volumeneighbours[i].used = false;
	}
	
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
	/* in */ 		Vector *p1, Vector *p2, Vector *plane_normal, Vector *plane_xyz, float threshold, 
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
	if ((dp1 >= threshold && dp2 >= threshold)  ||
		(dp1 <= -threshold && dp2 <= -threshold)) {
		return NULL;
	}
	
	// both points on plane
	if (fabs(dp1) < fabs(threshold) && fabs(dp2) < fabs(threshold)) {
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
qboolean UT_CreateVolumeFromVertices(const dlight_t *light, Vector *vertices, const int numvertices, const int vismask, shadowvol_t *shadowvol, qboolean dotscale) {
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
	if (!isInRange && dotscale) {
		if(!dotscale) { 
			Con_DPrintf("UT !Ranges: ");
			for(i=0; i<3; i++) {
				Con_DPrintf("r %5.1f l %5.1f ", radsq, length[i]);
			}
			Con_DPrintf("\r\n");
		}
		return false;
	}

	// don't want to calculate delta lengths, so determine perpendicular distance to surface
	float dot = 0;
	if (dotscale) {
		// front cap plane
		Vector normal;
		guVecSub(&vertices[2], &vertices[1], &t);
		guVecSub(&vertices[1], &vertices[0], &b);
		guVecCross(&t, &b, &normal);
		guVecNormalize(&normal);

		dot = -guVecDotProduct(&delta[1], &normal);
		
		// divide is unavoidable
		if (dot < 4 && dotscale) { 
			if(!dotscale) Con_DPrintf("!Dot - ");
			return false; // too close to surface, no shadow
		}
	}
//	shadowvol->capsvisible = true;
	
	shadowvol->mins[0] = 1024*1024;
	shadowvol->mins[1] = 1024*1024;
	shadowvol->mins[2] = 1024*1024;
	shadowvol->maxs[0] = -1024*1024;
	shadowvol->maxs[1] = -1024*1024;
	shadowvol->maxs[2] = -1024*1024;
	
	for(i=0; i<numverts; i++) {
		int j;
		Vector far, near; // temp for far vector
		float sqrt = sqrtf(length[i]);
		float scale = rad4/(dotscale ? dot : sqrt);
//		float plusonepixscale = ((dotscale ? dot : sqrtf(length[i])) + 1)/(dotscale ? dot : sqrtf(length[i])); 
		float plusonepixscale = (sqrt + 1)/sqrt; 
		if (scale < 1.0f) return false;//scale = plusonepixscale;
		
		j = i+1;
		if (j>=numverts) j = 0;
		// allocate frag
		shadowvolfrag_t * newFrag = UT_AllocShadowvolFrag();
		if (!newFrag) 
			return false;
		if (vismask & 1<<i) {
			newFrag->flags |= SHADOWVOLFRAG_FLAG_VIS; // the plane between this and next fragment is visible
		}
		// calculate far delta 
		guVecScale(&delta[i], &far, scale); // calc the far vertex position with light as origin
		// near point
		guVecScale(&delta[i], &near, plusonepixscale);
		guVecAdd(&near, &lpos, &newFrag->near); // translate back to world and store
		//guVecAdd(&delta[i], &lpos, &newFrag->near); // translate back to world and store
		// far point
		guVecAdd(&far, &lpos, &newFrag->far); // translate back to world
		
		// normal
		if (dotscale) {
			Vector next;
			guVecAdd(&delta[j], &lpos, &next); // next point (should equal vertex j)
			guVecSub(&newFrag->near, &next, &b);
			guVecSub(&newFrag->far, &newFrag->near, &t);
			guVecCross(&t, &b, &newFrag->normal);
			guVecNormalize(&newFrag->normal);
		}
		
		// minsmaxs
		int k;
		float *pxyz;
		pxyz = (float *) &newFrag->near;
		for(k=0; k<3; k++) {
			if (pxyz[k] < shadowvol->mins[k]) {
				shadowvol->mins[k] = pxyz[k];
			}
			if (pxyz[k] > shadowvol->maxs[k]) {
				shadowvol->maxs[k] = pxyz[k];
			}
		}
		pxyz = (float *) &newFrag->far;
		for(k=0; k<3; k++) {
			if (pxyz[k] < shadowvol->mins[k]) {
				shadowvol->mins[k] = pxyz[k];
			}
			if (pxyz[k] > shadowvol->maxs[k]) {
				shadowvol->maxs[k] = pxyz[k];
			}
		}
		
		// add frag to volume
		UT_AddFragToVolumeTail(shadowvol, newFrag);
		
	}

	return true;
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

qboolean dbgPonV = false;
/*
=================
R_PointsOnVector
=================
*/
qboolean R_PointsOnVector(Vector *vect, Vector *p1, Vector *p2) {
	Vector cross;
	guVecCross(vect, p1, &cross);
if (dbgPonV) {
	Con_DPrintf("xyz %5.2f %5.2f %5.2f - ", cross.x, cross.y, cross.z);
}
	if (!(fabs(cross.x) < BACKFACE_EPSILON &&
		fabs(cross.y) < BACKFACE_EPSILON &&
		fabs(cross.z) < BACKFACE_EPSILON)) {
		return false;
	}
	guVecCross(vect, p2, &cross);
if (dbgPonV) {
	Con_DPrintf("xyz %5.2f %5.2f %5.2f - ", cross.x, cross.y, cross.z);
}
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
if (dbgPonV) {
	Con_DPrintf("dp1 %5.2f dp2 %5.2f - ", guVecDotProduct(vect, p1), guVecDotProduct(vect, p2));
}
	if (guVecDotProduct(vect, p1) < 0 && guVecDotProduct(vect, p2) < 0)
		return false;
if (dbgPonV) {
	Con_DPrintf("dp1 %5.2f dp2 %5.2f - ", guVecDotProduct(&vecti, &p1i), guVecDotProduct(&vecti, &p2i));
}
	if (guVecDotProduct(&vecti, &p1i) < 0 && guVecDotProduct(&vecti, &p2i) < 0)
		return false;
	
	return true;
}

qboolean UT_VectorCompare(Vector *a, Vector *b) {
	if (fabs(a->x-b->x) <= 0.1f &&
		fabs(a->y-b->y) <= 0.1f &&
		fabs(a->z-b->z) <= 0.1f) {
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
S_ReVolume()
Replaces neighbouring volumes by a single aggregated volume
=================
*/
void S_ReVolume(dlight_t *light) {
	shadowvolfrag_t fragbuf_i[MAX_FRAGS_VOLUME];
	shadowvolfrag_t fragbuf_j[MAX_FRAGS_VOLUME];
	shadowvol_t *ivol = light->nextstaticshadowvolume;
	while(ivol) {
		shadowvol_t *jvol = ivol->nextvol; 
		while(jvol) {
			int numfrags_i = 0;
			int numfrags_j = 0;
		
			// first ivol is looped until a match with jvol is found
			// then jvol is looped until the match with ivol is found
			// lastly, the remainger ivol is looped
			shadowvolfrag_t *matchingifrag1 = NULL; 
			shadowvolfrag_t *matchingjfrag1 = NULL; 
			shadowvolfrag_t *matchingjfrag2 = NULL; 

			// loopt thru ivol frags until a match is found and
			// add ivol frags to list
			shadowvolfrag_t *ifrag = ivol->nextfrag;
			while(ifrag && !matchingjfrag1) {
				// add it to the list
				fragbuf_i[numfrags_i++] = *ifrag;
				// loop thru jvol frags to compare
				shadowvolfrag_t *jfrag = jvol->nextfrag;
				while(jfrag) {
					fragbuf_j[numfrags_j++] = *jfrag;
					// equal?
					if (UT_VectorCompare(&ifrag->near, &jfrag->near)) {
						matchingjfrag1 = jfrag;
						break;
					}
					jfrag = jfrag->nextfrag;
				}
				ifrag = ifrag->nextfrag;
			}
			
			// loop thru jvol frags until match with ivol is found
			if (matchingjfrag1) {
				// matching frag itself already has been added, so take next
				shadowvolfrag_t *jfrag = matchingjfrag1->nextfrag;
				shadowvolfrag_t *startfrag = jfrag; // this loop must rotate
				while(jfrag && !matchingifrag1) {
					// add it to the list
					fragbuf_i[numfrags_i++] = *jfrag;
					// loop thru ivol frags to compare starting from where ifrag ended previously
					while(ifrag) {
						fragbuf_j[numfrags_j++] = *ifrag;
						// equal?
						if (UT_VectorCompare(&ifrag->near, &jfrag->near)) {
							matchingifrag1 = ifrag;
							matchingjfrag2 = jfrag;
							break;
						}
						ifrag = ifrag->nextfrag;
					}

					// rotate if neccessary
					if (!jfrag->nextfrag) {
						jfrag = jvol->nextfrag; // rotate
					} else {
						jfrag = jfrag->nextfrag;
					}
					
					// bail out when rotated
					if (jfrag == startfrag) break;
				}
			}
			
			// if a ifrag matched these should be aggregated
			if (matchingifrag1) {
				int i, numfrags;
				// now there are two flows:
				// 1) matchingjfrag1->nextfrag == matchingjfrag2
				// 		in this case fragbuf_j is used
				// 2) matchingjfrag1->nextfrag != matchingjfrag2
				// 		in this case fragbuf_i is used
				qboolean dbug = true;
				if (matchingjfrag1->nextfrag != matchingjfrag2) {
					// first the remaining ifrags must be added
					ifrag = matchingifrag1->nextfrag;
					while(ifrag) {
						fragbuf_i[numfrags_i++] = *ifrag;
						ifrag = ifrag->nextfrag;
					}
					numfrags = numfrags_i;
					dbug = true;
				} else {
					shadowvolfrag_t  *jfrag = matchingjfrag2->nextfrag;
					while(jfrag) {
						fragbuf_j[numfrags_j++] = *jfrag;
						jfrag = jfrag->nextfrag;
					}
					numfrags = numfrags_j;
				}

				if (dbug) {
					Con_DPrintf("ivol %i ===============\r\n", numfrags_i);
					ifrag = ivol->nextfrag;
					while(ifrag) {
						Con_DPrintf("%5.1f %5.1f %5.1f - ", 
							ifrag->near.x, ifrag->near.y, ifrag->near.z);
						ifrag = ifrag->nextfrag;
					}
					Con_DPrintf("\r\njvol %i ===============\r\n", numfrags_j);
					ifrag = jvol->nextfrag;
					while(ifrag) {
						Con_DPrintf("%5.1f %5.1f %5.1f - ", 
							ifrag->near.x, ifrag->near.y, ifrag->near.z);
						ifrag = ifrag->nextfrag;
					}
				}
				// delete old frags from first volume
				UT_DeleteAllFragsInVolume(ivol);
				// delete second volume
				UT_DeleteShadowVolume(light, jvol);
				
				// assign new frags
				if (dbug) Con_DPrintf("\r\n==============aggregated: ");
				for(i=0;  i<numfrags; i++) {
					shadowvolfrag_t *newfrag = UT_AllocShadowvolFrag();
					if (newfrag) {
						if (matchingjfrag1->nextfrag != matchingjfrag2) {
							if (dbug) Con_DPrintf("%5.1f %5.1f %5.1f - ", fragbuf_i[i].near.x, fragbuf_i[i].near.y, fragbuf_i[i].near.z);
							*newfrag = fragbuf_i[i];
						} else {
							if (dbug) Con_DPrintf("%5.1f %5.1f %5.1f - ", fragbuf_j[i].near.x, fragbuf_j[i].near.y, fragbuf_j[i].near.z);
							*newfrag = fragbuf_j[i];
						}
						newfrag->nextfrag = NULL;
						UT_AddFragToVolumeHead(ivol, newfrag);
					}
				}
				if (dbug) Con_DPrintf("\r\n");
			}
			jvol = jvol->nextvol;
		}
		ivol = ivol->nextvol;
	Con_DPrintf("next ivol %p \r\n", ivol);
	}
	Con_DPrintf("end \r\n");
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
	shadowvol_t *ivol;
	
	// dynamic mode?
	if (r_volumemode) {
		ivol = light->nextdynamicshadowvolume;
	} else {
		ivol = light->nextstaticshadowvolume;
	}
	i = 0;
	while(ivol) {
		shadowvol_t *jvol = ivol->nextvol; 
		j = i+1;
		while(jvol) {
			int imatch[MAX_FRAGS_VOLUME], nummatch = 0;
			
			// create fragment arrays
			 UT_CreateArray(ivol, MAX_FRAGS_VOLUME, &fragbuf_i[0], &numfrags_i);
			 UT_CreateArray(jvol, MAX_FRAGS_VOLUME, &fragbuf_j[0], &numfrags_j);

//if (i == 20 && j == 27 ) dbgPonV = true; else dbgPonV = false; 
//if (dbgPonV) isTestMap = true; else isTestMap = false;
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
int m1 = 0, m2 = 0;				
if(isTestMap) Con_DPrintf("1) Current Fragment i %i j %i \r\n", i, j); 
				// 'disable' all fragment quads on the line between the matching points
				int numfragsForCount;
				Vector matchVect;
				Vector fragmentVect0;
				Vector fragmentVect1;
				Vector *matchBase = &fragbuf_i[imatch[0]]->near;
				guVecSub(&fragbuf_i[imatch[1]]->near, matchBase, &matchVect);
				
				// loop thru current volume
				numfragsForCount = numfrags_i;
				for(icnt=0; icnt<numfragsForCount; icnt++) {
					// point 1 and point 2 on matching vector?
if(isTestMap) Con_DPrintf("passing %5.1f %5.1f %5.1f - %5.1f %5.1f %5.1f \r\n", 
	fragbuf_i[icnt]->near.x, fragbuf_i[icnt]->near.y, fragbuf_i[icnt]->near.z,
	fragbuf_i[(icnt+1)%numfrags_i]->near.x, fragbuf_i[(icnt+1)%numfrags_i]->near.y, fragbuf_i[(icnt+1)%numfrags_i]->near.z); 
					guVecSub(&fragbuf_i[icnt]->near, matchBase, &fragmentVect0);
					guVecSub(&fragbuf_i[(icnt+1)%numfrags_i]->near, matchBase, &fragmentVect1);
					if (R_PointsOnVector(&matchVect, &fragmentVect0, &fragmentVect1)) {
						// yes, unset visibility bit
						fragbuf_i[icnt]->flags &= ~(SHADOWVOLFRAG_FLAG_VIS);
if(isTestMap) Con_DPrintf("Removed fragment quad i: %i \r\n", icnt); 
m1++;
					}
				}
				
if(isTestMap) Con_DPrintf("2) Current Fragment i %i j %i \r\n", i, j); 
				// do the same for matching volume
				numfragsForCount = numfrags_j;
				for(jcnt=0; jcnt<numfragsForCount; jcnt++) {
					// point 1 and point 2 on matching vector?
if(isTestMap) Con_DPrintf("passing %5.1f %5.1f %5.1f - %5.1f %5.1f %5.1f \r\n", 
	fragbuf_j[jcnt]->near.x, fragbuf_j[jcnt]->near.y, fragbuf_j[jcnt]->near.z,
	fragbuf_j[(jcnt+1)%numfrags_j]->near.x, fragbuf_j[(jcnt+1)%numfrags_j]->near.y, fragbuf_j[(jcnt+1)%numfrags_j]->near.z); 

					guVecSub(&fragbuf_j[jcnt]->near, matchBase, &fragmentVect0);
					guVecSub(&fragbuf_j[(jcnt+1)%numfrags_j]->near, matchBase, &fragmentVect1);
					if (R_PointsOnVector(&matchVect, &fragmentVect0, &fragmentVect1)) {
						// yes, unset visibility bit
						fragbuf_j[jcnt]->flags &= ~(SHADOWVOLFRAG_FLAG_VIS);
if(isTestMap) Con_DPrintf("Removed fragment quad j: %i\r\n", jcnt); 
m2++;
					}
				}
				
if (m1 != m2) {
Con_DPrintf("========= Match ERROR m1 %i m2 %i i %i j%i=======\r\n", m1, m2, i, j);
}
				// register neighbours
				UT_AddNeighbourToVolume(ivol, jvol);
				UT_AddNeighbourToVolume(jvol, ivol);
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
		if (dp >= 0) {		
			UT_FilterOutEncapsulated(loopedvol, &newvolcuttings);
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

//if (isTestMap || debugLnum) debugLight(light);	

}

/*
=================
UT_CreateVolumeFromVerticesTranslate
=================
*/
qboolean UT_CreateVolumeFromVerticesTranslate(dlight_t *light, Vector *verts, int num, int vismask, Mtx mtx) {
//	qboolean isFan = false;
//	Vector *v, *second, *last;
	int i;//startvert, numverts, maxverts;
	Vector vertices[MAX_FRAGS_VOLUME];

	shadowvol_t *vol = UT_AllocShadowVolume();
	if (!vol) {
		Con_DPrintf("UT_CreateVolumeFromVerticesTranslate: no free volumes!");
		return false;
	}

/*	v 	= &verts[0];
	second = v + 1;
	last = v + num - 1;
	// check for real triangle fans and filter out co linear points if so
	if (second->x == last->x && second->y == last->y && second->z == last->z) {
		isFan  = true;
		startvert = 1;
		maxverts = num - 2;
vismask = 0xFFFFFFFF;		
	} else {
		startvert = 0;
		maxverts = num;
	}
	
	int idx = 0;
	for(numverts=0; numverts<maxverts && idx<MAX_FRAGS_VOLUME; numverts++) { 
		// colinear?
		Vector vnext, vprev, vcurr, norm1, norm2, result;
		Vector *fnext = &verts[0] + (startvert + (numverts+1)%maxverts);
		Vector *fcurr = &verts[0] + (startvert + (numverts)%maxverts);
		Vector *fprev = &verts[0] + (startvert + (numverts+maxverts-1)%maxverts);
		vnext.x = fnext->x;
		vnext.y = fnext->y;
		vnext.z = fnext->z;

		vprev.x = fprev->x;
		vprev.y = fprev->y;
		vprev.z = fprev->z;
		
		vcurr.x = fcurr->x;
		vcurr.y = fcurr->y;
		vcurr.z = fcurr->z;
		
		guVecSub(&vnext, &vprev, &norm1);
		guVecSub(&vnext, &vcurr, &norm2);
		guVecNormalize(&norm1);
		guVecNormalize(&norm2);
		guVecSub(&norm1, &norm2, &result);
		
		#define COLINEAR_EPSILON 0.001
		if (fabs(result.x) >= COLINEAR_EPSILON || 
			fabs(result.y) >= COLINEAR_EPSILON || 
			fabs(result.z) >= COLINEAR_EPSILON) { 

			guVecMultiply(mtx, &vcurr, &vertices[idx]);
//Con_DPrintf("o: %5.1f %5.1f %5.1f t: %5.1f %5.1f %5.1f - ", vcurr.x, vcurr.y, vcurr.z, vertices[idx].x, vertices[idx].y, vertices[idx].z);			
			idx++;
		} else {
			Con_DPrintf("colinear...\r\n");
		}
	} */

	
	// for dynamic use
	vol->visframe = r_framecount; 
	
	for(i=0; i<3; i++)  {
		guVecMultiply(mtx, &verts[i], &vertices[i]);
	}
	
//	if (UT_CreateVolumeFromVertices(light, vertices, idx, vismask, vol, false)) {
	if (UT_CreateVolumeFromVertices(light, vertices, num, vismask, vol, false)) {
//Con_DPrintf("add success\r\n");			
//		UT_AddShadowVolumeTo(light, vol);
		UT_AddShadowVolumeToHead(light, vol);
	} else {
//Con_DPrintf("add fail\r\n");			
		UT_DeallocVolume(vol);
		return false;
	}
	return true;
}



/*
=================
UT_CreateVolumeFromSurface
=================
*/
qboolean UT_CreateVolumeFromSurface(dlight_t *light, msurface_t *surf, shadowvol_t *shadowvol, Mtx mtx) {
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
			guVecMultiply(mtx, &vcurr, &vertices[idx]);
			idx++;
		}
	} 
//	Con_DPrintf("==================\r\n");
	
	// hack TODO move to better place...
	shadowvol->caster = (void *) surf;
	shadowvol->castertype = SHADOWVOL_CASTERTYPE_SURFACE;

	return UT_CreateVolumeFromVertices(light, vertices, idx, 0xFFFFFFFF, shadowvol, true);
}


/*
=================
UT_AddShadowVolumeTranslate
=================
*/
qboolean UT_AddShadowVolumeTranslate(dlight_t *light, msurface_t *surf, Mtx mtx) {
	shadowvol_t *vol = UT_AllocShadowVolume();
	if (!vol) {
		Con_DPrintf("UT_AddShadowVolume: no free volumes!");
		return false;
	}
	
	// for dynamic use
	vol->visframe = r_framecount; 
	
	if (UT_CreateVolumeFromSurface(light, surf, vol, mtx)) {
		// TODO: fix UT_CloneAndInsertAscending
		if (r_volumemode == 0) {
			UT_CloneAndInsertAscending(light, vol);
		} else {
			UT_AddShadowVolumeToHead(light, vol);
		}
	} else {
		UT_DeallocVolume(vol);
		return false;
	}
	return true;
	
}

/*
=================
UT_AddShadowVolume
=================
*/
qboolean UT_AddShadowVolume(dlight_t *light, msurface_t *surf) {
	Mtx mtx;
	guMtxIdentity(mtx);
	return UT_AddShadowVolumeTranslate(light, surf, mtx);
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

	u32 level, size;

	_CPU_ISR_Disable(level);
	r_sshadowvolfrags = SYS_GetArena2Lo();
	size = MAX_STATIC_SHADOWFRAGS * sizeof(shadowvolfrag_t);
	
	if ((u32)r_sshadowvolfrags + size > (u32)SYS_GetArena2Hi())
	{
		_CPU_ISR_Restore(level);
		Sys_Error("no mem for volume vertices");
	}	
	else
	{
		SYS_SetArena2Lo(r_sshadowvolfrags + size);
		_CPU_ISR_Restore(level);
	}

	memset(r_sshadowvolfrags, 0, size);

	//r_sshadowvolfrags = Hunk_AllocName(MAX_STATIC_SHADOWFRAGS * sizeof(shadowvolfrag_t), "svfrags");

	r_stencilTextureBuf = 0;
	r_stencilTextureBuf = (void *) SYS_AllocArena1MemLo(STENCIL_WIDTH * STENCIL_HEIGHT * MAX_STENCIL_TEXTURES, 32);	 // TODO: need to free somewhere
	
	if (!r_stencilTextureBuf || SYS_GetArena1Lo() > SYS_GetArena1Hi()) {
		Sys_Error("R_InitStencilTextures: Couldn't initialize stencil textures.");
	} 
	r_stencilTextureBuf = MEM_K0_TO_K1(r_stencilTextureBuf);
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

	// TODO  move this
/*	r_zTextureBuf = 0;	
	r_zTextureBuf = (void *) SYS_AllocArena1MemLo(ZBUFTEX_WIDTH * ZBUFTEX_HEIGHT, 32);	 // TODO: need to free somewhere
	
	if (!r_zTextureBuf || SYS_GetArena1Lo() > SYS_GetArena1Hi()) {
		Sys_Error("R_InitStencilTextures: zBufTex.");
	} 
//	r_stencilTextureBuf = MEM_K0_TO_K1(r_stencilTextureBuf);
	memset(r_zTextureBuf, 0x00, ZBUFTEX_WIDTH * ZBUFTEX_HEIGHT);
	GX_InitTexObj(
		&r_zTexture, 
		r_zTextureBuf, 
		ZBUFTEX_WIDTH, 
		ZBUFTEX_HEIGHT, 
		GX_TF_Z24X8,
		GX_CLAMP, GX_CLAMP, GX_FALSE);
*/	
	r_volumecol.r  	= 0x01; 
	r_volumecol.g 	= 0x00;
	r_volumecol.b 	= 0x00;
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
	GX_SetAlphaUpdate(GX_FALSE); // TODO

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
	GX_SetTevColor(GX_TEVREG1, r_volumecol);
	GX_SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_C1);
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
Returns number of volumes drawn
=================
*/
int R_DrawShadowVolumeStencilTexture(dlight_t *light, const qboolean clearfb) {
	int face, f1, f2;
	shadowvol_t *vol;
	int num_frags, numvol = 0;
	shadowvolfrag_t *fragbuf[MAX_FRAGS_VOLUME];
	shadowvolfrag_t *vf1, *vf2, *currfrag;
	
//	R_Blank();
	GX_SetZMode(GX_ENABLE, GX_GEQUAL, GX_FALSE); 
	
	for (face=0; face<2; face++) {
		if (!face) {
			GX_SetCullMode(GX_CULL_FRONT);  // blend
			GX_SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	// Increase backface count
		} else {
			GX_SetCullMode(GX_CULL_BACK);  // subtr
			GX_SetBlendMode(GX_BM_SUBTRACT, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	// Decrease backface count
		}
		int mode = 0;
		for(mode=0; mode<2; mode++) {
			if (!mode) {
				vol = light->nextstaticshadowvolume;
			} else {
				vol = light->nextdynamicshadowvolume;
			}
			while(vol) {
				// not in frustum?
				if(!R_CullBox(vol->mins, vol->maxs)) {
		
	
				//if ((vol->visframe == r_framecount)) {
					numvol++;
					// create array of fragments TODO use func
					num_frags = 0;
					currfrag = vol->nextfrag;
					while(currfrag) {
						fragbuf[num_frags] = currfrag;
						currfrag = currfrag->nextfrag;
						num_frags++;
					}
					
	//				if (!(vol->flags & SHADOWVOL_FLAG_HIDE_REARCAP)) {
						GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT3, num_frags);
						for (f1=num_frags-1; f1>-1; f1--) { // inv winding
							vf1 = fragbuf[f1];
							GX_Position3f32(	vf1->far.x, vf1->far.y, vf1->far.z);
						}
						GX_End();
	//				}
	//				if (!(vol->flags & SHADOWVOL_FLAG_HIDE_FRONTCAP)) {
						GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT3, num_frags);
						for (f1=0; f1<num_frags; f1++) {
							vf1 = fragbuf[f1];
							GX_Position3f32(	vf1->near.x, vf1->near.y, vf1->near.z);
						}
						GX_End();
	//				}


					for (f1=0; f1<num_frags; f1++) {
						vf1 = fragbuf[f1];
						if (vf1->flags & SHADOWVOLFRAG_FLAG_VIS) { 
							f2 = f1 + 1;
							if (f2 == num_frags) f2 = 0;
							
							vf2 = fragbuf[f2];
							
	//Con_DPrintf("frag %5.1f %5.1f %5.1f - ", vf1->near.x, vf1->near.y, vf1->near.z);
							GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT3, 4);
							GX_Position3f32(	vf1->far.x, 	vf1->far.y, 	vf1->far.z);
							GX_Position3f32(	vf2->far.x, 	vf2->far.y, 	vf2->far.z);
							GX_Position3f32(	vf2->near.x, vf2->near.y, vf2->near.z);
							GX_Position3f32(	vf1->near.x, vf1->near.y, vf1->near.z);
							GX_End();
						}
					}
				}
				vol = vol->nextvol;
			}
		}
		GX_PixModeSync();
		GX_DrawDone();
	}

//Con_DPrintf("num %i clear %i r_numstencilTextures %i light %5.1f %5.1f %5.1f - ", numvol, clearfb, r_numstencilTextures, light->origin[0], light->origin[1], light->origin[2]);
	
//	if (numvol || clearfb) {
		
		int width = r_stencilTextures[r_numstencilTextures].scaled_width;
		int height =r_stencilTextures[r_numstencilTextures].scaled_height;
		void *data = r_stencilTextures[r_numstencilTextures].data;
		
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

		//int level = IRQ_Disable();
		GX_CopyTex(data, GX_TRUE);
		GX_PixModeSync();
		//IRQ_Restore(level);
		DCFlushRange(data, r_stencilTextureSize);
//	}
	
	return numvol || clearfb;
}


/*
=================
R_DrawShadowVolumes
=================
*/
void R_DrawShadowVolumes(void) {

	int i;//
	// DRS shadow volumes
	R_ClearStencilTextures();
	R_SetupForStencilTexture();
	// static lights
	for (i=0; i<r_contributinglightscount ; i++) {
		r_contributinglights[i]->stenciltexnum = -1;
		if(r_numstencilTextures<MAX_STENCIL_TEXTURES) {
			qboolean islast = false;
			if (r_numstencilTextures == MAX_STENCIL_TEXTURES-1 ||
				i == r_contributinglightscount -1) {
				islast = true;
// TODO: islast is nu niet noodzakelijk de laatste als r_numstencilTextures == MAX_STENCIL_TEXTURES-1
			}
			if (R_DrawShadowVolumeStencilTexture(r_contributinglights[i], islast)) {
				r_contributinglights[i]->stenciltexnum = r_numstencilTextures;
				r_numstencilTextures++;
			} else
			if (islast) {
				break;
			}
		}
	}
	if (!r_contributinglightscount ) {
		GL_ClearEFB();
		return;
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
	for (i=0; i<r_numstencilTextures; i++) {
/*if (scr_takeScreenshot) {
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


{*/
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

