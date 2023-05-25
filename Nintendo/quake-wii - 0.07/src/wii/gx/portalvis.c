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

// passages map must be multiple of 8
//#define MAX_PASSAGES_MAP 		32768
#define MAX_PASSAGES_MAP 		1
#define MAX_PASSAGE_VERTS 	4*MAX_PASSAGES_MAP
#define MAX_VERTS_PASSAGE 	16
#define MAX_PLANES_LEAF			64

extern qboolean isTestMap;
int dbgcnt;
int dbgcnt2;


mpassage_t			r_passages[MAX_PASSAGES_MAP];
byte							r_passagesused[MAX_PASSAGES_MAP/8];
mpassagevert_t		r_passageverts[MAX_PASSAGE_VERTS];
byte							r_passagevertsused[MAX_PASSAGE_VERTS/8];
int							r_numpassages; 
int							r_firstfreepassage; 
int							r_numpassageverts; 
int							r_firstfreepassagevert; 

void P_ClearPassages() {
	int i;
	r_numpassages = 0;
	r_numpassageverts = 0;
	r_firstfreepassagevert = 0;
	r_firstfreepassage = 0;
	
	for(i=0; i<MAX_PASSAGES_MAP/8; i++) {
		r_passagesused[i] = 0x00;
	}
	for(i=0; i<MAX_PASSAGE_VERTS/8; i++) {
		r_passagevertsused[i] = 0x00;
	}
}

void UseData(byte *buf, int idx) {
	int bufidx = idx/8;
	int bit = idx%8;
	buf[bufidx] |= 1<<bit;
}

void FreeData(byte *buf, int idx) {
	int bufidx = idx/8;
	int bit = idx%8;
	buf[bufidx] &= ~(1<<bit);
}

qboolean IsDataUsed(byte *buf, int idx) {
	int bufidx = idx/8;
	int bit = idx%8;
	return (buf[bufidx] & (1<<bit));
}


mpassagevert_t *AllocPassageVert() {
	mpassagevert_t  *ret  = NULL;
	
	int i;
//Con_DPrintf("Alloc: ");
	for(i=r_firstfreepassagevert; i<MAX_PASSAGE_VERTS; i++) {
//Con_DPrintf("entry %p used: %i ", &r_passageverts[i], IsDataUsed(r_passagevertsused, i));
		if (!IsDataUsed(r_passagevertsused, i)) {
			ret = &r_passageverts[i];
			r_firstfreepassagevert = i + 1;
			if (i > r_numpassageverts) {
				r_numpassageverts = i;
			}
			break;
		}
	}
//Con_DPrintf("\r\n");

	if (ret) {
		memset(ret, 0x00, sizeof(mpassagevert_t));
		UseData(r_passagevertsused, i);
	} else {
		// TODO check unused ones
		Con_Printf("AllocPassageVert: out of mem\r\n");
		Con_DPrintf("AllocPassageVert: out of mem\r\n");
	}
	return ret;
}

void DeAllocPassageVert(mpassagevert_t *deleteit) {
	int idx = (((int)deleteit) - ((int) &r_passageverts[0])) / sizeof(mpassagevert_t);

	if (idx < r_firstfreepassagevert) {
		r_firstfreepassagevert = idx;
	}
	FreeData(r_passagevertsused, idx);
}

mpassage_t *AllocPassage() {
	mpassage_t  *ret  = NULL;
	
	int i;
	for(i=r_firstfreepassage; i<MAX_PASSAGES_MAP; i++) {
		if (!IsDataUsed(r_passagesused, i)) {
			ret = &r_passages[i];
			r_firstfreepassage = i + 1;
			if (i > r_numpassages) {
				r_numpassages = i;
			}
			break;
		}
	}

	if (ret) {
		memset(ret, 0x00, sizeof(mpassage_t));
		UseData(r_passagesused, i);
	} else {
		// TODO check unused ones
		Con_Printf("AllocPassage: out of mem\r\n");
		Con_DPrintf("AllocPassage: out of mem\r\n");
	}
	return ret;
}

void DeAllocPassage(mpassage_t *deleteit) {
	int idx = (((int)deleteit) - ((int) &r_passages[0])) / sizeof(mpassage_t);

	if (idx < r_firstfreepassage) {
		r_firstfreepassage = idx;
	}
	FreeData(r_passagesused, idx);
}

void P_DeleteAllVerts(mpassage_t *passage) {
	mpassagevert_t *del;
	mpassagevert_t *curr = passage->nextvert;
	while(curr) {
		del = curr;
		curr = curr->nextvert;
		DeAllocPassageVert(del);
	}
	passage->nextvert = NULL;
}

mpassage_t *DeletePassage(mpassage_t *head, mpassage_t *passage, qboolean keepverts) {
	qboolean found = false;
	mpassage_t *newhead;
	if (head != passage) {
		newhead = head;
		// find it in chain
		while(head)  {
			if (head->nextpassage == passage) {
				found = true;
				break;
			}
			head = head->nextpassage;
		}
	} else {
		// set new head
		newhead = head->nextpassage;
		found = true;
	}
	if (found) {
		head->nextpassage = passage->nextpassage;
		if (!keepverts) P_DeleteAllVerts(passage);
		DeAllocPassage(passage);
	}
	return newhead;
}

void P_AddPassageVert(mpassage_t *passage, vec3_t v) {
	mpassagevert_t *pvert = AllocPassageVert();
	if (!pvert) return;
	VectorCopy(v, pvert->v);
	// add it to head?
	if (passage->nextvert) {
		// find tail
		mpassagevert_t *itvert = passage->nextvert;
		while(itvert->nextvert) {
			itvert = itvert->nextvert;
		}
		itvert->nextvert = pvert; // add tail
	} else {
		passage->nextvert = pvert; // add as head
	}
}

// mostly taken from Darkplaces (therefore I didn't port to gu lib)... Thanks Havoc!
mpassage_t *P_BasePassageForPlane(mplane_t *p) {
	int i;
	vec3_t				verts[4];
	mpassage_t 	*passage;
	float org[3], vright[3], vup[3], normal[3];

	// create a passage
	passage = AllocPassage();
	if (!passage) return NULL;
	passage->plane = p;

	VectorCopy(p->normal, normal);
	VectorVectors(normal, vright, vup);

	VectorScale (vup, 1024.0*1024.0, vup); // originally 1024^3 but do we really need such stupid big numbers?
	VectorScale (vright, 1024.0*1024.0, vright);

	// project a really big axis aligned box onto the plane
	VectorScale (p->normal, p->dist, org);

	VectorSubtract (org, vright, verts[0]);
	VectorAdd (verts[0], vup, verts[0]);

	VectorAdd (org, vright, verts[1]);
	VectorAdd (verts[1], vup, verts[1]);

	VectorAdd (org, vright, verts[2]);
	VectorSubtract (verts[2], vup, verts[2]);

	VectorSubtract (org, vright, verts[3]);
	VectorSubtract (verts[3], vup, verts[3]);

	for (i=0; i<4; i++) {
		P_AddPassageVert(passage, verts[i]); 
	}


	return passage;
}

int CountPassages(mpassage_t *passage) {
	int cnt = 0;
	while(passage) {
		passage = passage->nextpassage;
		cnt++;
	}
	return cnt;
}

int CountVerts(mpassage_t *passage) {
	int cnt = 0;
	mpassagevert_t *curr = passage->nextvert;
	while(curr) {
		curr = curr->nextvert;
		cnt++;
	}
	return cnt;
}

void ListVerts(mpassage_t *passage) {
	mpassagevert_t *curr = passage->nextvert;
	while(curr) {
		int idx = (((int)curr) - ((int) &r_passageverts[0])) / sizeof(mpassagevert_t);

		Con_DPrintf("(%p)(%i) %5.1f %5.1f %5.1f - ", curr, IsDataUsed(r_passagevertsused, idx), curr->v[0], curr->v[1], curr->v[2]);
		curr = curr->nextvert;
	}
	Con_DPrintf("\r\n");
}

void ListPassages(mpassage_t *passage) {
	Con_DPrintf("==== ListPassages num %i==== \r\n", CountPassages(passage));
	while(passage) {
		Con_DPrintf("passage %p -> ", passage);
		ListVerts(passage);
		passage = passage->nextpassage;
	}
	
}


// creates NEW passages when given passage is split. given passage is deleted as well
// if no split it returns the given passage with next ptr set to NULL
// (in other words, the passage passed will be deleted) 
mpassage_t *P_CutPassage(mpassage_t *passage, mplane_t *cuttingplane) {
	int i;
	vec3_t	normal;
	vec3_t	planexyz;
	// setup normal and point on plane
	for(i=0; i<3; i++) {
		planexyz[i] = cuttingplane->dist * cuttingplane->normal[i];
		normal[i] = cuttingplane->normal[i];
	}
	
	// er moet minstens 1 punt tussen liggen die *niet* op de cut ligt. En dat is het punt wat het 2e volume wordt
	// recalculate volumes
	qboolean prevIntersecting = false;
	int state = 0;
	int numverts1 = 0;
	int numverts2 = 0;
	vec3_t verts1[MAX_VERTS_PASSAGE];
	vec3_t verts2[MAX_VERTS_PASSAGE];

	mpassagevert_t *currvert = passage->nextvert;
	mpassagevert_t *nextvert = currvert->nextvert;
if (dbgcnt == 12) {
//Con_DPrintf("===== cutting passage %p curr %p next %p =====\r\n", passage, currvert, nextvert);
}	
	while(currvert) {
		Vector 		delta;
		vec3_t 	intersection;
		qboolean hitsplane = false;
		qboolean intersecting = false;
		
if (dbgcnt == 12) {
//Con_DPrintf("currvert %5.1f %5.1f %5.1f ", currvert->v[0], currvert->v[1], currvert->v[2]);	
//Con_DPrintf("nextvert %5.1f %5.1f %5.1f\r\n", nextvert->v[0], nextvert->v[1], nextvert->v[2]);	
//Con_DPrintf("normal %5.2f %5.2f %5.2f ", normal[0], normal[1], normal[2]);	
//Con_DPrintf("xyz %5.1f %5.1f %5.1f ", planexyz[0], planexyz[1], planexyz[2]);	
//Con_DPrintf("\r\n");
}	
		intersecting = R_CalculateIntersection(
			/* in */ 		(Vector *) &currvert->v[0], (Vector *) &nextvert->v[0], (Vector *) &normal[0], (Vector *) &planexyz[0], -0.5f, 
			/* out */	(Vector *) &intersection[0]) ? true : false;
			
		// if no intersection, check DP to see curr is on plane -> results in intersecting condition
		if (!intersecting) {
			guVecSub((Vector *) &currvert->v[0], (Vector *) &planexyz[0], &delta);
			float dp = guVecDotProduct(&delta, (Vector *) &normal[0]);
			if (dp >= -0.5 && dp <= 0.5) {
				hitsplane = true;
				intersecting = true;
				for(i=0; i<3; i++) {
					intersection[i] = currvert->v[i];
				}
			}
		}

		// if intersecting (TODO: can be done in a more efficient way)
		switch(state) {
			case 0: // fill vol1 up to an intersection 
				if (intersecting) {
					state++;
					if (!hitsplane) {
						for(i=0; i<3; i++) {
							verts1[numverts1][i] = currvert->v[i];
						}
						numverts1++;
					}
					for(i=0; i<3; i++) {
						verts1[numverts1][i] = intersection[i];
					}
					numverts1++;
					prevIntersecting = true;
				} else {
					// fill vol 1
					for(i=0; i<3; i++) {
						verts1[numverts1][i] = currvert->v[i];
					}
					numverts1++;
				}
				break;
			case 1: // may start vol2
				if (intersecting && prevIntersecting) {
					// still vol 1
					for(i=0; i<3; i++) {
						verts1[numverts1][i] = intersection[i];
					}
					numverts1++;
					prevIntersecting = true;
				} else {
					// not previous and this one not intersecting, so must be vol 2
					state++;
					// start vol2 since it hasn't been yet (previous vol1 frag contains intersection)
					for(i=0; i<3; i++) {
						verts2[numverts2][i] = verts1[numverts1-1][i];
					}
					numverts2++;
					for(i=0; i<3; i++) {
						verts2[numverts2][i] = currvert->v[i];
					}
					numverts2++;
				}
				break;
			case 2: // fill vol 2 up to second intersection
				if (intersecting) {
					// end vol 2, resume vol 1
					state++;
					for(i=0; i<3; i++) {
						verts1[numverts1][i] = intersection[i];
					}
					if (!hitsplane) {
						for(i=0; i<3; i++) {
							verts2[numverts2][i] = currvert->v[i];
						}
						numverts2++;
					}
					for(i=0; i<3; i++) {
						verts2[numverts2][i] = intersection[i];
					}
					numverts1++;
					numverts2++;
					prevIntersecting = true;
				} else {
					// fill vol 2
					for(i=0; i<3; i++) {
						verts2[numverts2][i] = currvert->v[i];
					}
					numverts2++;
				}
				break;
			case 3: // fill vol1 up to an intersection 
				// fill vol 1
				for(i=0; i<3; i++) {
					verts1[numverts1][i] = currvert->v[i];
				}
				numverts1++;
				break;
				
			default:
				break;
		}
		
		// loop 'curr' and 'next' pointers... make sure 'next' rotates!
		currvert = currvert->nextvert;
		nextvert = nextvert->nextvert;
		if (!nextvert) {
			nextvert = passage->nextvert;
		}
	}

	// if state != 3, the volume cap wasn't intersected at two edges, so nothing happens
	qboolean success = (state == 3 && numverts1 > 2 && numverts2 > 2);

	if (success) {
int j;
for(i=0; i<numverts1; i++) {
	for(j=i+1; j<numverts1; j++) {
		if (((int) verts1[i][0]) == ((int) verts1[j][0]) && 
			((int) verts1[i][1]) == ((int) verts1[j][1]) &&
			((int) verts1[i][2]) == ((int) verts1[j][2])) {
			Con_DPrintf("Warning! Duplicate points in winding");
			passage->nextpassage = NULL;
			return passage;
		}
	}
}
for(i=0; i<numverts2; i++) {
	for(j=i+1; j<numverts2; j++) {
		if (((int) verts2[i][0]) == ((int) verts2[j][0]) && 
			((int) verts2[i][1]) == ((int) verts2[j][1]) &&
			((int) verts2[i][2]) == ((int) verts2[j][2])) {
			Con_DPrintf("Warning! Duplicate points in winding");
			passage->nextpassage = NULL;
			return passage;
		}
	}
}
		
	
	
		// create new passage and reuse given one
		mpassage_t *split = AllocPassage(); 
		mpassage_t *head = passage;
		if (!split) {
			passage->nextpassage = NULL;
			return passage;
		}
		head->nextpassage = NULL;
		// get rid of old vertices
		P_DeleteAllVerts(head); 
		// duplicate passage properties
		memcpy(split, head, sizeof(mpassage_t));
		// setup chain
		head->nextpassage = split;
		
		// copy the new vertices
		for(i=0; i<numverts1; i++) {
			P_AddPassageVert(head, verts1[i]);
		}
		for(i=0; i<numverts2; i++) {
			P_AddPassageVert(split, verts2[i]);
		}
//Con_DPrintf("s: %i %i - ", r_numpassages, r_numpassageverts);		
		return head;
	}
	// prepare for reuse
//Con_DPrintf("f - ");		
	passage->nextpassage = NULL;
	return passage;
}

/*
===================
P_IntersectingBBoxs
===================
Returns true if bounding boxes intersect
*/
qboolean P_IntersectingBBoxs(float *minmaxs1, float *minmaxs2) {
	int i;
	float *mins1, *mins2, *maxs1, *maxs2;
	mins1 = &minmaxs1[0];
	mins2 = &minmaxs2[0];
	maxs1 = &minmaxs1[3];
	maxs2 = &minmaxs2[3];
	for(i=0; i<3; i++) {
/*		if (!	(mins2[i]  > 	mins1[i] - BACKFACE_EPSILON && mins2[i]  < 	maxs1[i] + BACKFACE_EPSILON) || 
				(maxs2[i] >	mins1[i] - BACKFACE_EPSILON && maxs2[i] < 	maxs1[i] + BACKFACE_EPSILON) ||
				(mins1[i]  > 	mins2[i] - BACKFACE_EPSILON && mins1[i]  < 	maxs2[i] + BACKFACE_EPSILON) ||
				(maxs1[i] > 	mins2[i] - BACKFACE_EPSILON && maxs1[i] < 	maxs2[i] + BACKFACE_EPSILON)) {
			return false;
		}*/
		if (!(mins1[i] <= maxs2[i] + BACKFACE_EPSILON && maxs1[i] >= mins2[i] - BACKFACE_EPSILON)) {
			return false;
		}
	}
	return true;
}

/*
===================
P_PassageBBox
===================
*/
void P_PassageBBox(mpassage_t *passage, float *pminmaxs) {
	int i;
	float *pmins, *pmaxs;
	pmins = &pminmaxs[0];
	pmaxs = &pminmaxs[3];
	pmins[0] = pmins[1] = pmins[2] = 1024.0f*1024.0f*1024.0f;
	pmaxs[0] = pmaxs[1] = pmaxs[2] = -1024.0f*1024.0f*1024.0f;
	mpassagevert_t *currvert = passage->nextvert;
	// bbox for passage
	while(currvert) {
		for(i=0; i<3; i++) {
			if (pmins[i] > currvert->v[i]) {
				pmins[i] = currvert->v[i];
			}
			if (pmaxs[i] < currvert->v[i]) {
				pmaxs[i] = currvert->v[i];
			}
		}	
		currvert = currvert->nextvert;
	}
}


qboolean P_PassageHitsBBox(mpassage_t *passage, float *mins, float *maxs) {
	Vector	point[6], normals[6];
	// left side
	point[0].x = mins[0];
	point[0].y = mins[1];
	point[0].z = mins[2];
	
	// back side
	point[1].x = mins[0];
	point[1].y = maxs[1];
	point[1].z = mins[2];

	// right side
	point[2].x = maxs[0];
	point[2].y = maxs[1];
	point[2].z = mins[2];

	// front side
	point[3].x = maxs[0];
	point[3].y = mins[1];
	point[3].z = mins[2];

	// bottom side (same as front)
	point[4].x = maxs[0];
	point[4].y = mins[1];
	point[4].z = mins[2];

	// top side (same as front, but z on maxs)
	point[5].x = maxs[0];
	point[5].y = mins[1];
	point[5].z = maxs[2];
	
	// lt, bk, rt, fr, bt, tp
	guVecSub(&point[0], &point[3], &normals[0]);
	guVecSub(&point[1], &point[0], &normals[1]);
	guVecSub(&point[3], &point[0], &normals[2]);
	guVecSub(&point[0], &point[1], &normals[3]);
	guVecSub(&point[4], &point[5], &normals[4]);
	guVecSub(&point[5], &point[4], &normals[5]);

	
	// we look for a vector that intersects or lies behind the 
	// current plane. Only one is required to pass
	mpassagevert_t *currvert = passage->nextvert;
	mpassagevert_t *nextvert = currvert->nextvert;
	while(currvert) {
		int i;
		float dist1, dist2;
		Vector delta;
		qboolean outside = false; 
		// if it is completely outside the bbox we break
		for(i=0; i<6; i++) {
			guVecSub((Vector *) &currvert->v[0], &point[i], &delta);
			dist1 = guVecDotProduct(&delta, &normals[i]);
			guVecSub((Vector *) &nextvert->v[0], &point[i], &delta);
			dist2 = guVecDotProduct(&delta, &normals[i]);
		
			if (dist1>BACKFACE_EPSILON && dist2>BACKFACE_EPSILON) {
				outside = true;
			}
		}
		if (!outside) {
			// yay, this vector is (partly) inside the bbox
			return  true;
		}
		currvert = currvert->nextvert;
		nextvert = nextvert->nextvert;
		if (!nextvert) {
			nextvert = passage->nextvert;
		}
	}
	return false;
}



/*
===================
P_CutPassages
===================
cuts passages in leaf by given plane
*/
mpassage_t *P_CutPassages(mpassage_t *passage, mplane_t *cuttingplane, float *cminmaxs) {
	mpassage_t *ppassage; 
	mpassage_t *newhead = NULL; 
	mpassage_t *cutresult = NULL; // outgoing chain
	mpassage_t *itpassage = passage; 
	// cuts all passages in list
	while(itpassage) {
		float pminmaxs[6];
		ppassage = itpassage;
		itpassage = itpassage->nextpassage;
		// need to cut this specific passage?
//		P_PassageBBox(ppassage, &pminmaxs[0]);
//		if (P_IntersectingBBoxs(&pminmaxs[0], &cminmaxs[0])) {
//		if (P_PassageHitsBBox(ppassage, &cminmaxs[0], &cminmaxs[3])) {
//			Con_DPrintf("c");
			// cut current passage
			cutresult = P_CutPassage(ppassage, cuttingplane);
//		} else {
//			Con_DPrintf("s");
//			ppassage->nextpassage = NULL; // have to hack it
//			cutresult = ppassage;
//		}
		if (newhead) {
			// find tail on outgoing chain
			mpassage_t *itcp = newhead;
			while(itcp->nextpassage) {
				itcp = itcp->nextpassage;
			}
			// add cut passages
			itcp->nextpassage = cutresult;
		} else {
			// first
			newhead = cutresult;
		}
	}
	
	return newhead;
}

/*
===================
P_CutPassages
===================
cuts passages in leaf by given plane
*/
mpassage_t *P_ClipPassages(mpassage_t *passage, mplane_t *cuttingplane, float *cminmaxs) {
	mpassage_t *ppassage; 
	mpassage_t *newhead = NULL; 
	mpassage_t *cutresult = NULL; // outgoing chain
	mpassage_t *itpassage = passage; 
	// cuts all passages in list
	while(itpassage) {
		float pminmaxs[6];
		float dp;
		mpassage_t *itcutresult;
		ppassage = itpassage;
		itpassage = itpassage->nextpassage;
		// need to cut this specific passage?
//		P_PassageBBox(ppassage, &pminmaxs[0]);
//		if (P_IntersectingBBoxs(&pminmaxs[0], &cminmaxs[0])) {
char buf[1024];
buf[0] = 0;
int numresult = 0;
			int monitor = 0;
			mpassagevert_t *pvert;
			// cut current passage
sprintf(&buf[strlen(buf)], "\r\nverts: ");
pvert = ppassage->nextvert;
while(pvert) {
sprintf(&buf[strlen(buf)], "%5.1f %5.1f %5.1f - ", pvert->v[0], pvert->v[1], pvert->v[2]);	
	pvert = pvert->nextvert;
}
sprintf(&buf[strlen(buf)], "pn %5.2f %5.2f %5.2f d %5.1f\r\n", cuttingplane->normal[0], cuttingplane->normal[1], cuttingplane->normal[2], cuttingplane->dist);	
			cutresult = P_CutPassage(ppassage, cuttingplane);
			itcutresult = cutresult;
			while(itcutresult) {
numresult++;			
sprintf(&buf[strlen(buf)], "result: ");
				mpassage_t *currresult = itcutresult;
				itcutresult = itcutresult->nextpassage;
				pvert = currresult->nextvert;
				qboolean deleteit = true;
				while(pvert) {
					dp = guVecDotProduct((Vector *) &pvert->v[0], (Vector *) &cuttingplane->normal[0]) - cuttingplane->dist; 
sprintf(&buf[strlen(buf)], "%5.1f %5.1f %5.1f - dp %8.5f - ", pvert->v[0], pvert->v[1], pvert->v[2], dp);	
					if (dp>=0.5) { // tweaked to actual results
						deleteit = false;
					}
					pvert= pvert->nextvert;
				}
				if (deleteit) {
					cutresult = DeletePassage(cutresult, currresult, false);
					monitor++;
				}

sprintf(&buf[strlen(buf)], "\r\n");				
			}
			if (monitor == 2) 
				Con_DPrintf("Warning!!! clipped both sides!!! %s", buf);
			if (monitor == 0 && numresult == 2) 
				Con_DPrintf("Warning!!! clipped no sides!!! %s", buf);
//		} else {
//			ppassage->nextpassage = NULL; // have to hack it
//			cutresult = ppassage;
//		}
		if (newhead) {
			// find tail on outgoing chain
			mpassage_t *itcp = newhead;
			while(itcp->nextpassage) {
				itcp = itcp->nextpassage;
			}
			// add cut passages
			itcp->nextpassage = cutresult;
		} else {
			// first
			newhead = cutresult;
		}
	}
	
	return newhead;
}


void P_CalcProbePoints(mpassage_t *passage, vec3_t front, vec3_t back) {
	int 				i, num;
	vec3_t 		center;
	mplane_t		*plane = passage->plane;
	for(i=0; i<3; i++) {
		center[i] = 0;
	}
	num = 0;
	mpassagevert_t *vert = passage->nextvert;
	while(vert) {
		for(i=0; i<3; i++) {
			center[i] += vert->v[i];
		}
		vert = vert->nextvert;
		num++;
	}
	for(i=0; i<3; i++) {
		center[i] /= num;
	}
//Con_DPrintf("probe at %5.1f %5.1f %5.1f \r\n", center[0], center[1], center[2]);	
	for(i=0; i<3; i++) {
		front[i] = center[i] + plane->normal[i];
		back[i] = center[i] - plane->normal[i];
	}
	
}

qboolean P_BoxIntersectsPlane(float *minmaxs, mplane_t *plane) {
	int i;
	float *mins = &minmaxs[0];
	float *maxs = &minmaxs[3];
	
	vec3_t corners[2];
	float dist1, dist2;
	float *normal = (float *) plane->normal;
	for (i=0 ; i<3 ; i++) {
		if (normal[i] < 0) {
			corners[0][i] = mins[i];
			corners[1][i] = maxs[i];
		} else {
			corners[1][i] = mins[i];
			corners[0][i] = maxs[i];
		}
	}
		
	dist1 = guVecDotProduct((Vector *) &plane->normal[0], (Vector *) &corners[0]) - plane->dist;
	dist2 = guVecDotProduct((Vector *) &plane->normal[0], (Vector *) &corners[1]) - plane->dist;

//Con_DPrintf("minmax %5.1f %5.1f %5.1f - %5.1f %5.1f %5.1f - ", mins[0], mins[1], mins[2], maxs[0], maxs[1], maxs[2]);
//Con_DPrintf("corners %5.1f %5.1f %5.1f - %5.1f %5.1f %5.1f - ", corners[0][0], corners[0][1], corners[0][2], corners[1][0], corners[1][1], corners[1][2]);
//Con_DPrintf("pnorm %5.2f %5.2f %5.2f - dist %5.1f dp1 %5.1f dp2 %5.1f\r\n", plane->normal[0], plane->normal[1], plane->normal[2], plane->dist, dist1, dist2);
	
	if ((dist1 > BACKFACE_EPSILON && dist2 > BACKFACE_EPSILON) ||
		(dist1 < -BACKFACE_EPSILON && dist2 < -BACKFACE_EPSILON)) {
		return false;
	}
	
	return true;
}


/*
===================
P_NodePassages
===================
Recursive cut passages according to intersecting nodes (this will find 'holes' between leafs)
*/
mpassage_t *P_NodePassages(mpassage_t *head, mplane_t *pplane) {
	
	int i;
	// don't process leafs
	for(i=0; i<cl.worldmodel->numnodes; i++) {
		mnode_t 	*cuttingnode =&cl.worldmodel->nodes[i];

		if (cuttingnode->contents < 0) continue; // skip leaf nodes

		// don't process self and check bounding box intersection
//		if (passagenode != cuttingnode && P_IntersectingBBoxs(passagenode->minmaxs, cuttingnode->minmaxs)) {
		if (P_BoxIntersectsPlane(cuttingnode->minmaxs, pplane)) {
			// it is intersecting so passage must be cut by this cutting node
//Con_DPrintf("c");
			mplane_t *cuttingplane = cuttingnode->plane;
			head = P_CutPassages(head, cuttingplane, cuttingnode->minmaxs);
		} else {
//Con_DPrintf("s");
		}
	}
	// descent the children
//Con_DPrintf("parent %p child0 %p - ", cuttingnode, cuttingnode->children[0]);	
//	head = P_NodePassages(head, passagenode, cuttingnode->children[0]); 
//Con_DPrintf("parent %p child1 %p - ", cuttingnode, cuttingnode->children[1]);	
//	head = P_NodePassages(head, passagenode, cuttingnode->children[1]); 
	return head;
}

// 0 non planar
// 1 planar and same facing
// 2 planar and diverged facing
#define PLANAR_EPSILON	0.0000001
int P_IsCoPlanar(mplane_t *p1, mplane_t *p2) {
	int i, ret;
	
	ret = 1;	
	if (fabs(p1->dist - p2->dist) > PLANAR_EPSILON) {
		ret = 0;
	} else {
		for(i=0; i<3; i++) {
			if (fabs(p1->normal[i] - p2->normal[i]) > PLANAR_EPSILON) {
				ret = 0;
				break;
			}
		}
	}
	if (ret) return ret;
	
	ret = 2;	
	if (fabs(p1->dist + p2->dist) > PLANAR_EPSILON) {
		ret = 0;
	} else {
		for(i=0; i<3; i++) {
			if (fabs(p1->normal[i] + p2->normal[i]) > PLANAR_EPSILON) {
				ret = 0;
				break;
			}
		}
	}
	return ret;
}


/*
===================
P_NodePassages
===================
Recursive cut passages according to intersecting nodes (this will find 'holes' between leafs)
*/
//mpassage_t *P_RecursiveNodePassages(mpassage_t *head, mplane_t *pplane, float *minmaxs, vec3_t *bbox, mnode_t *cuttingnode) {
mpassage_t *P_RecursiveNodePassages(mpassage_t *head, mplane_t *pplane, float *minmaxs, vec3_t *bbox, mnode_t *cuttingnode, qboolean clip) {
//	int 			i;

	qboolean descentfront = false;
	qboolean descentback = false;
	mplane_t *cuttingplane = cuttingnode->plane;

	if (cuttingnode->contents < 0) return head; // skip leaf nodes
	
	if (P_IsCoPlanar(pplane, cuttingnode->plane)) { 
		Con_DPrintf("sp");
		clip = false;
		head = P_RecursiveNodePassages(head, pplane, minmaxs, bbox, cuttingnode->children[0], clip);
		head = P_RecursiveNodePassages(head, pplane, minmaxs, bbox, cuttingnode->children[1], clip);
		
		return head;
	}
//	if (pplane == cuttingnode->plane) { 
//		Con_DPrintf("ALERT!!!!!!");
//		return head;
//	}
	// descent children; first check what children can be ruled out
//	for(i=0; i<8; i++) {
//		float dp = guVecDotProduct((Vector *) &bbox[i][0], (Vector *) &cuttingplane->normal[0]) - cuttingplane->dist;
//		if (dp >= 0) {
//			descentfront = true;
//		} else {
//			descentback = true;
//		}
//	}
	mpassage_t *itpassage = head;
	while(itpassage) {
		mpassagevert_t *vert = itpassage->nextvert;
		while(vert) {
			float dp = guVecDotProduct((Vector *) &vert->v[0], (Vector *) &cuttingplane->normal[0]) - cuttingplane->dist;
			if (dp >= 0) {
				descentfront = true;
			} else {
				descentback = true;
			}
			vert = vert->nextvert;
		}
	
		itpassage = itpassage->nextpassage;
	}

//	if (descentfront && descentback) {
	if (!clip) {
		head = P_CutPassages(head, cuttingplane, cuttingnode->minmaxs);
	} else {
		head = P_ClipPassages(head, cuttingplane, cuttingnode->minmaxs);
	}


	if (descentback) {
		Con_DPrintf("tb");
		head = P_RecursiveNodePassages(head, pplane, minmaxs, bbox, cuttingnode->children[1], clip);
	} else {
		Con_DPrintf("sb");
	} 

	// cut the passages if required
//	if (P_BoxIntersectsPlane(&cuttingnode->minmaxs[0], pplane)) {// && 
//		P_BoxIntersectsPlane(&minmaxs[0], cuttingnode->plane)) {
		// it is intersecting so passage must be cut by this cutting node
//Con_DPrintf("c");
//		if (descentfront && descentback) {
//			head = P_CutPassages(head, cuttingplane, cuttingnode->minmaxs);
//		} else {
//			head = P_ClipPassages(head, cuttingplane, cuttingnode->minmaxs);
//		}
//	} else {
//Con_DPrintf("s");
//	}
	
	if (descentfront) {
		Con_DPrintf("tf");
		head = P_RecursiveNodePassages(head, pplane, minmaxs, bbox, cuttingnode->children[0], clip);
	} else {
		Con_DPrintf("sf");
	}
	
	return head;
}

/*
===================
P_ClonePassageToLeaf
===================
Registers passage data on 'fromleaf' using target 'toleaf' and vertices 'verts'
*/
void P_ClonePassageToLeaf(mleaf_t *fromleaf, mleaf_t *toleaf, qboolean facingfront, mplane_t *plane, mpassagevert_t *verts) {
	mpassage_t *newpassage = AllocPassage();
	if (!newpassage) return;
	// fill passage data
	newpassage->plane 		= plane;
	newpassage->flags 		|= (!facingfront ? PASSAGE_PLANEBACK : 0);
	newpassage->leafs[0]	= fromleaf;
	newpassage->leafs[1]	= toleaf;
	newpassage->nextvert	= verts;
	// register on fromleaf
	if(fromleaf->passages) {
		// find to tail
		mpassage_t *itpassage = fromleaf->passages;
		while(itpassage->nextpassage) {
			itpassage = itpassage->nextpassage;
		}
		itpassage->nextpassage = newpassage;
	} else {
		fromleaf->passages = newpassage;
	} 
}

mleaf_t *Mod_PointInLeafFromNode(vec3_t p, mnode_t *node);

int realnum;
/*
===================
P_RegisterPassages
===================
checks each passage's leafs on both sides. If leafs are different, 
the passage is kept, otherwise it is destroyed
*/
void P_RegisterPassages(mpassage_t *head) {//, mnode_t *passagenode) {
	int					i;
	vec3_t				probe[2]; // 0 = front, 1 = back
	mleaf_t			*leaf[2];
	mpassage_t 	*currpassage, *itpassage;
int numdelete = 0;
	itpassage = head;
	while(itpassage) {
		qboolean passed = true;
		currpassage = itpassage;
		itpassage = itpassage->nextpassage;
		
		// calculate probe points
		P_CalcProbePoints(currpassage, probe[0], probe[1]);
		// find the leafs (in a solid way)
		for(i=0; i<2; i++) {
			// find the corresponding leafs
			leaf[i] = Mod_PointInLeaf (probe[i], cl.worldmodel);
			//leaf[i] = Mod_PointInLeafFromNode(probe[i], passagenode);
			// quit if the leaf is solid (no passages between solid/nonsolid leafs)
			if (leaf[i]->contents == CONTENTS_SOLID) {
				passed = false;
				break;
			}
		}
		// no portals between same leaf
		if (leaf[0] == leaf[1]) {
			passed = false;
		}
		// passed?
		if (passed) {
			// register the data on leafs
			P_ClonePassageToLeaf(leaf[0], leaf[1], true, currpassage->plane, currpassage->nextvert);
			P_ClonePassageToLeaf(leaf[1], leaf[0], false, currpassage->plane, currpassage->nextvert);
realnum+=2;
			
			// TODO dealloc passage but reuse verts
			head = DeletePassage(head, currpassage, true);
		} else {
			// not passed... remove it
			head = DeletePassage(head, currpassage, false);
			numdelete++;
		}		
	}
Con_DPrintf("deleted: %i", numdelete);	
} 

#define MAX_PLANES 8096
mplane_t	*p_planes[MAX_PLANES]; // TODO: perhaps intersesting to define a general mempool for these things
int	p_numplanes;
void P_CreatePlaneList() {
	int i, j;
	p_numplanes = 0;
	for(i=0; i<cl.worldmodel->numplanes; i++) {
		qboolean add = true;
		mplane_t *plane = &cl.worldmodel->planes[i];
		
		for(j=0; j<p_numplanes; j++) {
			if (P_IsCoPlanar(plane, p_planes[j])) {
				add = false;
				break;
			}
		}

		if(add) {
			p_planes[p_numplanes] = plane;
			p_numplanes++;
		} else {
			Con_DPrintf("skipped coplanar plane %i - ", i);
		}
	}
	
}


/*
===================
P_PlaneBBox
===================
Creates a BBOX by including all nodes on given plane
returns false if plane doesn't have nodes 
*/
qboolean P_PlaneBBox(mplane_t *plane, float *pminmaxs) {
	int i, num;
	mnode_t *node;
	float *pmins, *pmaxs;
	qboolean found = false;
	qboolean found2 = false;
	pmins = &pminmaxs[0];
	pmaxs = &pminmaxs[3];
	pmins[0] = pmins[1] = pmins[2] = 1024.0f*1024.0f*1024.0f;
	pmaxs[0] = pmaxs[1] = pmaxs[2] = -1024.0f*1024.0f*1024.0f;
	
	num = cl.worldmodel->numnodes;
	for(i=0; i<num; i++) {
		node = &cl.worldmodel->nodes[i];
		// equal plane?
		if (P_IsCoPlanar(node->plane, plane)) {
			int j;
			//if(node->children[0]->contents != CONTENTS_SOLID && node->children[1]->contents != CONTENTS_SOLID) { 
				float *nmins = &node->minmaxs[0];
				float *nmaxs = &node->minmaxs[3];
				found = true;
				for(j=0; j<3; j++) {
					if (pmins[j] > nmins[j]) {
						pmins[j] = nmins[j];
					}
					if (pmaxs[j] < nmaxs[j]) {
						pmaxs[j] = nmaxs[j];
					}
				}	
			//}
		}
		
		// hack
		if (node->plane == plane) {
			found2 = true;
		}
	}
	
	if (found2 && !found) {
		//Con_DPrintf("no node found for plane, but did find it using pointer!!!\r\n");
	} else
	if (!found) {
		//Con_DPrintf("no node found for plane!!!\r\n");
	}
	return found;
}

void P_MinmaxsToPoints(float *minmaxs, vec3_t *points) {
	float *mins = &minmaxs[0];
	float *maxs = &minmaxs[3];
	// bottom left front
	points[0][0] = mins[0];
	points[0][1] = mins[1];
	points[0][2] = mins[2];
	// bottom left back
	points[1][0] = mins[0];
	points[1][1] = maxs[1];
	points[1][2] = mins[2];
	// top left back
	points[2][0] = mins[0];
	points[2][1] = maxs[1];
	points[2][2] = maxs[2];
	// top left front
	points[3][0] = mins[0];
	points[3][1] = mins[1];
	points[3][2] = maxs[2];

	// bottom right front
	points[4][0] = maxs[0];
	points[4][1] = mins[1];
	points[4][2] = mins[2];
	// bottom right back
	points[5][0] = maxs[0];
	points[5][1] = maxs[1];
	points[5][2] = mins[2];
	// top right back
	points[6][0] = maxs[0];
	points[6][1] = maxs[1];
	points[6][2] = maxs[2];
	// top right front
	points[7][0] = maxs[0];
	points[7][1] = mins[1];
	points[7][2] = maxs[2];
	
}

mpassage_t *P_RecursiveCutPassages(mpassage_t *head, mnode_t *cuttingnode) {
	qboolean descentfront = false;
	qboolean descentback = false;
	mplane_t *cuttingplane = cuttingnode->plane;
	mplane_t *pplane = head->plane;
	if (cuttingnode->contents < 0) return head; // skip leaf nodes
	
	Con_DPrintf("-rct-");
	if (P_IsCoPlanar(pplane, cuttingnode->plane)) { 
		Con_DPrintf("sp");
		return head;
	}

	mpassage_t *itpassage = head;
	while(itpassage) {
		mpassagevert_t *vert = itpassage->nextvert;
		while(vert) {
			float dp = guVecDotProduct((Vector *) &vert->v[0], (Vector *) &cuttingplane->normal[0]) - cuttingplane->dist;
			if (dp >= 0) {
				descentfront = true;
			} else {
				descentback = true;
			}
			vert = vert->nextvert;
		}
	
		itpassage = itpassage->nextpassage;
	}

//	if (descentfront && descentback) {
	Con_DPrintf("ct");
	head = P_CutPassages(head, cuttingplane, cuttingnode->minmaxs);

	if (descentback) {
		Con_DPrintf("tb");
		head = P_RecursiveCutPassages(head, cuttingnode->children[1]);
	} else {
		Con_DPrintf("sb");
	} 
	
	if (descentfront) {
		Con_DPrintf("tf");
		head = P_RecursiveCutPassages(head, cuttingnode->children[0]);
	} else {
		Con_DPrintf("sf");
	}
	
	return head;
}

/*
===================
P_RecursiveClipByParents
===================
*/
mpassage_t *P_RecursiveClipByParents(mpassage_t *head, mnode_t *node) {//, int side) {
	mnode_t *parent;
	if (!head || !node || !node->parent) return head;
	parent = node->parent;
	
	if (!P_IsCoPlanar(head->plane, parent->plane)) {
		//head = P_CutPassages(head, parent->plane, &parent->minmaxs[0]);
	
		// if node in back of parent we need to clip to inverse plane
		if (parent->children[1] == node) {
		//if (side) {
			// in back
			//Con_DPrintf("cpb");
			int i;
			// create an inverted plane...
			mplane_t invplane;
			invplane.dist = -parent->plane->dist;
			for(i=0; i<3; i++) {
				invplane.normal[i] = -parent->plane->normal[i];
			}
			// ...and clip
			head = P_ClipPassages(head, &invplane, &parent->minmaxs[0]);
		} else {
			// in front
			//Con_DPrintf("cpf");
			head = P_ClipPassages(head, parent->plane, &parent->minmaxs[0]);
		}
	}
	return P_RecursiveClipByParents(head, parent);
//	return P_RecursiveClipByParents(head, parent, side);
}

mpassage_t *P_ClipByParents(mpassage_t *head, mnode_t *node) {
	mnode_t *parent;
	if (!node || !node->parent) return head;
	parent = node->parent;
	
	if (!P_IsCoPlanar(head->plane, parent->plane)) {
		int side;
		// if node in back of parent we need to clip to inverse plane
		if (parent->children[1] == node) {
			// in back
			side = 1;
		} else {
			// in front
			side = 0;
		}
		
		head = P_RecursiveClipByParents(head, node);//, side);
	}
	return head;
}


/*
===================
P_IntersectsPassage
===================
// check if plane intersects any of the passages
*/
qboolean P_IntersectsPassage(mpassage_t *passage, mplane_t *cut) {
	
	while(passage) {
		mpassagevert_t *currvert = passage->nextvert;
		mpassagevert_t *nextvert = currvert->nextvert;
		while(currvert) {
			float dist1, dist2;
			
			dist1 = guVecDotProduct((Vector *) &cut->normal[0], (Vector *) &currvert->v[0]) - cut->dist;
			dist2 = guVecDotProduct((Vector *) &cut->normal[0], (Vector *) &nextvert->v[0]) - cut->dist;
			
			// intersect?
			if (!((dist1 > 0.5f && dist2 >  0.5f) ||
				  (dist1 < -0.5f && dist2 < -0.5f))) { 
				// yes, return true
				return true;
			}
	
			currvert = currvert->nextvert;
			nextvert = nextvert->nextvert;
			if (!nextvert) nextvert = passage->nextvert;
			
		}
		passage = passage->nextpassage;
	}
	
	return false; // no intersection 

}


/*
===================
P_RecursiveCutByChildNodes
===================
// cut by node passed and recurse into children
*/
mpassage_t *P_RecursiveCutByChildNodes(mpassage_t *head, mnode_t *node) {
	mplane_t *plane = node->plane;
	if(node->contents < 0) return head; // skip leafs
	
	// cut head passage by passages on node
	if (node->passages && head) {
		if (!P_IsCoPlanar(head->plane, plane)) {// && P_IntersectsPassage(node->passages, head->plane)) {
			head = P_CutPassages(head, plane, node->minmaxs);
		} else {
			Con_DPrintf("sc");
		}
	}

	// handle children
	head = P_RecursiveCutByChildNodes(head, node->children[0]);
	head = P_RecursiveCutByChildNodes(head, node->children[1]);

	return head;
}


/*
===================
P_ConnectLeafs
===================
// connects find source and target leafs for passages
*/
mpassage_t *P_ConnectLeafs(mpassage_t *head) {
	int					i;
	vec3_t				probe[2]; // 0 = front, 1 = back
	mleaf_t			*leaf[2];
	mpassage_t 	*currpassage, *itpassage;
int numdelete = 0;
int numadd = CountPassages(head);

	itpassage = head;
	while(itpassage) {
		qboolean passed = true;
		currpassage = itpassage;
		itpassage = itpassage->nextpassage;
		
		// calculate probe points
		P_CalcProbePoints(currpassage, probe[0], probe[1]);
		// find the leafs (in a solid way)
		for(i=0; i<2; i++) {
			// find the corresponding leafs
			leaf[i] = Mod_PointInLeaf (probe[i], cl.worldmodel);
			//leaf[i] = Mod_PointInLeafFromNode(probe[i], passagenode);
			// quit if the leaf is solid (no passages between solid/nonsolid leafs)
//			if (leaf[i]->contents == CONTENTS_SOLID) {
//				passed = false;
//				break;
//			}
		}

		// no portals outside level
		if (leaf[0]->contents == CONTENTS_SOLID &&
			leaf[1]->contents == CONTENTS_SOLID) {
//			passed = false;
		}
		// no portals between same leaf 
		if (leaf[0] == leaf[1]) {
//Con_DPrintf("==");
//			passed = false;
		}
		// passed?
		if (passed) {
			// setup front and back leafs on passage
			for(i=0; i<2; i++) {
				currpassage->leafs[i] = leaf[i];
			}
		} else {
			// not passed... remove it
			head = DeletePassage(head, currpassage, false);
			numdelete++;
		}		
	}
Con_DPrintf("add %i del: %i keep: %i -", numadd, numdelete, numadd-numdelete);	
	return head;

} 

/*
===================
P_RecursiveCreatePassages
===================
// * recurses to terminating nodes in tree
// * create a passage polygon along the splitplane
// * clip the passage polygon by all parent nodes planes to define the passage's extends
// * register the clipped passage on node
// * for each node above last node in tree:
// * create a passage polygon along the splitplane
// * clip the passage polygon by all parent nodes planes to define the passage's extends
// * [extra step] split the passage polygon by all passages in childnodes, but only if they actually collide
// * register the clipped passage on node
*/
void P_RecursiveCreatePassages(mnode_t *node) {
	mpassage_t *head;
	//mnode_t *parent;
	mplane_t *nplane;
	if(node->contents < 0) return;
	Con_DPrintf("-rcp-");

	// process child nodes first
	Con_DPrintf("-cf-");
	P_RecursiveCreatePassages(node->children[0]);
	
// DRS: zit de bug hier? dit is laatste node in deze serie takken, dus zou een parents clip moeten krijgen
// om vervolgens ook een cut te doen op zowel front en back children
	
	Con_DPrintf("-cb-");
	P_RecursiveCreatePassages(node->children[1]);

// dan zou hier ook een clip en cut moeten plaatsvinden
 
	nplane = node->plane;
	// create a winding
	head = P_BasePassageForPlane(nplane);
	// clip this winding with all parent nodes. This will 'box' this plane's extends
	head = P_RecursiveClipByParents(head, node);
	//head = P_ClipByParents(head, node);
	//head = P_ConnectLeafs(head);
	if (!head) {
		Con_DPrintf("head = empty after clipping!");
	}
	// pass the passage to the childs. This will result in cutting it up by the childs
	if (head) {
		//head = P_RecursiveCutPassages(head, node->children[0]);
		//head = P_RecursiveCutPassages(head, node->children[1]);
		// a terminating node won't have children, so nothing is done
		head = P_RecursiveCutByChildNodes(head, node->children[0]); 
		head = P_RecursiveCutByChildNodes(head, node->children[1]);
		// register the result on leafs, this may remove passage polygons from the list
		//Con_DPrintf("register - %i passages -", CountPassages(head));
		head = P_ConnectLeafs(head);
		// register result on node
		node->passages = head;
	}

}

/*
===================
P_RecursiveRegisterPassages
===================
*/
void P_RecursiveRegisterPassages(mnode_t *node) {
	mpassage_t 	*head, *currpassage, *itpassage;
	if (node->contents < 0) return; // skip leafs
	
	head = node->passages;
	itpassage = head;
	Con_DPrintf("register - %i passages -", CountPassages(head));
	while(itpassage) {
		currpassage = itpassage;
		itpassage = itpassage->nextpassage;

// hack
int i;
qboolean passed = true;
		for(i=0; i<2; i++) {
			// find the corresponding leafs
			if (currpassage->leafs[i]->contents == CONTENTS_SOLID) {
//				passed = false;
				break;
			}
		}
		// no portals between same leaf
		if (currpassage->leafs[0] == currpassage->leafs[1]) {
//			passed = false;
		}
		if (passed) {
			// register the data on leafs
			P_ClonePassageToLeaf(currpassage->leafs[0], currpassage->leafs[1], true, currpassage->plane, currpassage->nextvert);
			P_ClonePassageToLeaf(currpassage->leafs[1], currpassage->leafs[0], false, currpassage->plane, currpassage->nextvert);
			head = DeletePassage(head, currpassage, true);
		} else {
			head = DeletePassage(head, currpassage, false);
		}
	}
	
	node->passages = head;
	
	// process the children
	P_RecursiveRegisterPassages(node->children[0]);
	P_RecursiveRegisterPassages(node->children[1]);
	
}

/*
===================
P_RecursiveClipByParentPortals
===================
*/
mpassage_t *P_RecursiveClipByParentPortals(mpassage_t *head, mnode_t *node) {
	mnode_t *parent;
	if (!head || !node || !node->parent) return head;
	parent = node->parent;
	
	if (!P_IsCoPlanar(head->plane, parent->plane)) {
		//head = P_CutPassages(head, parent->plane, &parent->minmaxs[0]);
	
		// if node in back of parent we need to clip to inverse plane
		if (parent->children[1] == node) {
			// in back
			//Con_DPrintf("cpb");
			int i;
			// create an inverted plane...
			mplane_t invplane;
			invplane.dist = -parent->plane->dist;
			for(i=0; i<3; i++) {
				invplane.normal[i] = -parent->plane->normal[i];
			}
			// ...and clip
			head = P_ClipPassages(head, &invplane, &parent->minmaxs[0]);
		} else {
			// in front
			//Con_DPrintf("cpf");
			head = P_ClipPassages(head, parent->plane, &parent->minmaxs[0]);
		}
	}
	return P_RecursiveClipByParentPortals(head, parent);
}




// clip each node's plane by it's parent
/*void P_RecursiveCreateBasePassages(mnode_t *node) {
	mplane_t *nplane;
	mnode_t *parent;
	if(node->contents < 0) return;
	Con_DPrintf("-rcp-");

	parent = node->parent;
	nplane = node->plane;

	// create a winding
	head = P_BasePassageForPlane(nplane);

	// if we have a parent
	if (parent) {
		// if node in back of parent we need to clip to inverse plane
		if (parent->children[1] == node) {
			// in back
			//Con_DPrintf("cpb");
			int i;
			// create an inverted plane...
			mplane_t invplane;
			invplane.dist = -parent->plane->dist;
			for(i=0; i<3; i++) {
				invplane.normal[i] = -parent->plane->normal[i];
			}
			// ...and clip
			head = P_ClipPassages(head, &invplane, &parent->minmaxs[0]);
		} else {
			// in front
			//Con_DPrintf("cpf");
			head = P_ClipPassages(head, parent->plane, &parent->minmaxs[0]);
		}
	}
}*/







/*
===================
P_CreatePassages
===================
Creates passages for all nodes in model
*/
void P_CreatePassages() {
	P_ClearPassages();
dbgcnt = 0;
realnum = 0;
if (!isTestMap)  return;
	P_RecursiveCreatePassages(cl.worldmodel->nodes);
	P_RecursiveRegisterPassages(cl.worldmodel->nodes);
}

/*void P_CreatePassages() {
	int i;
	mpassage_t *head;
	P_ClearPassages();
dbgcnt = 0;
realnum = 0;
//if (!isTestMap)  return;

	// loop the planes
Con_DPrintf("Creating plane list...");
	P_CreatePlaneList();
Con_DPrintf("%i ...\r\n", p_numplanes);
	for(i=0; i<p_numplanes; i++) {
		float 	pminmaxs[6];
		vec3_t	bboxpts[8];
		mplane_t *plane = cl.worldmodel->nodes[0].plane;//p_planes[i];
Con_DPrintf("plane %p num %i/%i - %i %i %i - real %i - ", plane, i, cl.worldmodel->numplanes, r_numpassages, r_numpassageverts, r_firstfreepassage, realnum);
dbgcnt++;
		// bounding box for plane (with all nodes on that plane)
		if (!P_PlaneBBox(plane, &pminmaxs[0])) continue;
		// create a base passage along the plane
		head = P_BasePassageForPlane(plane);
//		head = P_BasePassageForPlane(&cl.worldmodel->nodes[0].plane);
		if (!head) continue;
		P_MinmaxsToPoints(&pminmaxs[0], &bboxpts[0]);
		// throw it into the resolver
		//head = P_NodePassages(head, plane);//, cl.worldmodel->nodes);
//		head = P_RecursiveNodePassages(head, plane, &pminmaxs[0], &bboxpts[0], cl.worldmodel->nodes, true);
		head = P_RecursiveNodePassages(head, cl.worldmodel->nodes[0].plane, &pminmaxs[0], &bboxpts[0], cl.worldmodel->nodes, true);
		// filter the passages created (only actual passages between two distinct leafs are kept)
		// and register on referenced leafs
Con_DPrintf("register - %i passages -", CountPassages(head));
		P_RegisterPassages(head);
	}
}
*/

void R_DrawPortals() {
	mpassagevert_t *verts[MAX_VERTS_PASSAGE];
	R_SetupForStencilTexture();
	GXColor col = {0xFF, 0x00, 0x00, 0xFF};
	GX_SetTevColor(GX_TEVREG1, col);
	GX_SetZMode(GX_ENABLE, GX_ALWAYS, GX_FALSE); 
	
	mpassage_t *currpassage = r_viewleaf->passages;
	while(currpassage) {
		int numverts = 0;
		mpassagevert_t *currvert = currpassage->nextvert;
		while(currvert) {
			verts[numverts] = currvert;
			numverts++;
			currvert = currvert->nextvert;
		}
		GX_Begin(GX_LINESTRIP, GX_VTXFMT3, numverts+1);
		//GX_Begin(GX_TRIANGLEFAN, GX_VTXFMT3, numverts+1); 
		if (!(currpassage->flags & PASSAGE_PLANEBACK)) { // TODO: ??? what's up here
			int i = numverts;
			while(i) {
				i--;
				GX_Position3f32(verts[i]->v[0], verts[i]->v[1], verts[i]->v[2]);
			}
			i = numverts-1;
			GX_Position3f32(verts[i]->v[0], verts[i]->v[1], verts[i]->v[2]);
		} else {
			int i;
			for(i=0; i<numverts; i++) {
				GX_Position3f32(verts[i]->v[0], verts[i]->v[1], verts[i]->v[2]);
			}
			GX_Position3f32(verts[0]->v[0], verts[0]->v[1], verts[0]->v[2]);
		}
		GX_End();
		currpassage = currpassage->nextpassage;
	}
	R_SetDefaultQuakeShader();
}

