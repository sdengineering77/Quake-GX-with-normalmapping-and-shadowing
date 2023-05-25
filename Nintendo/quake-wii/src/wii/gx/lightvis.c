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

#define SPANBUF_WIDTH		160
#define SPANBUF_HEIGHT	120
#define SPANBUF_SIZE			SPANBUF_WIDTH*SPANBUF_HEIGHT

typedef struct mspan_s {
	int startx;
	int endx;
	int y;
	int depth;
} mspan_t;


mspan_t 	r_spanbuf[SPANBUF_SIZE];
int			r_numspans;

mspan_t	*r_screenbuf[SPANBUF_SIZE];

void R_ClearSpans() {
	int i, j;
	for(i=0; i<r_numspans; i++) {
		for(j=r_spanbuf[i].startx; j<r_spanbuf[i].endx; j++) {
			r_screenbuf[j + r_spanbuf[i].y * SPANBUF_HEIGHT] = NULL;
		}
	}
	r_numspans = 0;
}

/*
=============
R_TriToSpan()
=============
*/
void R_TriToSpans(float *xs, float *ys, float depth) {
	int 			i, j;
	float			sxs[3], sys[3];
	float 		dx[3], dy[3], startx, endx;
	int			starty, endy, direction;
	qboolean isflat, invertx;
	// sort edges top to bottom
	for(i=0; i<3; i++) {
		sxs[i] = xs[0];
		sys[i] = ys[0];
		for(j=1; j<3; j++) {
			if(ys[j] < sys[i]) {
				sxs[i] = xs[j];
				sys[i] = ys[j];
			} 
		}
	}
	
	// dividers for calculating dx
	dy[0] = sys[2]-sys[0]; // top to bottom
	dy[1] = sys[1]-sys[0]; // top to mid
	dy[2] = sys[2]-sys[1]; // mid to bottom
	// bail out?
	if (dy[0] == dy[1] == dy[2] == 0) {
		return;
	}
	// calc top to bottom or bottom to top? (if dy[1] equals 0 it is required to draw bottom to top
	if (dy[1] == 0) {
		// bottom to top
		startx = endx = sxs[2];
		starty = sys[2];
		endy = sys[0];
		direction = -1;
		// if dy[1] == 0 it is flat (top), 
		if (dy[1] == 0) {
			// use dy[0] and dy[2]
			dx[0] = (sxs[0] - sxs[2])/dy[0];
			dx[1] = (sxs[1] - sxs[2])/dy[2];
			isflat = true;
		} else {
			dx[0] = (sxs[0] - sxs[2])/dy[0];
			dx[1] = (sxs[1] - sxs[2])/dy[2];
			dx[2] = (sxs[0] - sxs[1])/dy[1];
			isflat = false;
		}
		if (sxs[0] > sxs[1]) { // [0] is right side of [1]
			invertx = true;
		} else {
			invertx = false;
		}

	} else {
		// top to bottom
		startx = endx = sxs[0];
		starty = sys[0];
		endy = sys[2];
		direction = 1;
		// if dy[2] == 0 it is flat (bottom)
		if (dy[2] == 0) {
			// use dy[0] and dy[1]
			dx[0] = (sxs[0] - sxs[2])/dy[0];
			dx[1] = (sxs[0] - sxs[1])/dy[1];
			isflat = true;
		} else {
			dx[0] = (sxs[0] - sxs[2])/dy[0];
			dx[1] = (sxs[0] - sxs[1])/dy[1];
			dx[2] = (sxs[1] - sxs[2])/dy[2];
			isflat = false;
		}
		if (sxs[2] > sxs[1]) { // [2] is right side of [1]
			invertx = true;
		} else {
			invertx = false;
		}
	}

	// loop from start to end
	for(i=starty; i<=endy; i++) {
		R_InsertSpan(startx, endx, i, depth);
		if (invertx) {
			startx += dx[1];
			endx += dx[0];
		} else {
			startx += dx[0];
			endx += dx[1];
		}
		
	}
}

/*
=============
R_ProjectSpans()
=============
*/
void R_ProjectSpans(msurface_t *surf) {
}

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
// TODO: refactor
#define MAX_PASSAGES_MAP 		32768
#define MAX_PASSAGE_VERTS 	4*MAX_PASSAGES_MAP
#define MAX_VERTS_PASSAGE 	16
#define MAX_PLANES_LEAF			64

extern qboolean isTestMap;
int dbgcnt;
int dbgcnt2;

//mpassage_t			r_mpassages[MAX_PASSAGES_MAP];
//mpassagevert_t		r_mpassageverts[MAX_PASSAGE_VERTS];


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

mpassage_t *DeletePassage(mpassage_t *head, mpassage_t *passage) {
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
		P_DeleteAllVerts(passage);
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

qboolean P_CheckPlaneIntersectsSurf(mplane_t *plane, msurface_t *s) {
	int 			i, j, num, idx;
	medge_t	*pedges, *r_pedge;
	float			*vec[2];
	vec3_t		planexyz, intersection;
	mvertex_t	*pcurrentvertbase;
	// first timer... use edges instead of checking out s->poly
	pcurrentvertbase = cl.worldmodel->vertexes;
	pedges = cl.worldmodel->edges;
	num = s->numedges;
	for (i=0 ; i<num; i++) {
		for(j=0; j<2; j++) {
			idx = cl.worldmodel->surfedges[s->firstedge + ((i+j)%num)];

			if (idx > 0) {
				r_pedge = &pedges[idx];
				vec[j] = pcurrentvertbase[r_pedge->v[0]].position;
			} else {
				r_pedge = &pedges[-idx];
				vec[j] = pcurrentvertbase[r_pedge->v[1]].position;
			}
		}
		// check intersection with plane
		for(j=0; j<3; j++) {
			planexyz[j] = plane->dist * plane->normal[j];
		}
		if (R_CalculateIntersection(
			(Vector *) &vec[0][0], (Vector *) &vec[1][0], (Vector *) &plane->normal[0], (Vector *) &planexyz[0], 1.1f, 
			(Vector *) &intersection[0]))  {
			// it intersects
			return true;
		}
		
	}
	return false; // no intersection 

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
		if (verts1[i][0] == verts1[j][0] && 
			verts1[i][1] == verts1[j][1] &&
			verts1[i][2] == verts1[j][2]) {
			Con_DPrintf("Warning! Duplicate points in winding");
			passage->nextpassage = NULL;
			return passage;
		}
	}
}
for(i=0; i<numverts2; i++) {
	for(j=i+1; j<numverts2; j++) {
		if (verts2[i][0] == verts2[j][0] && 
			verts2[i][1] == verts2[j][1] &&
			verts2[i][2] == verts2[j][2]) {
			Con_DPrintf("Warning! Duplicate points in winding");
			passage->nextpassage = NULL;
			return passage;
		}
	}
}
		
	
	
		// create new passage and reuse given one
		mpassage_t *split = AllocPassage(); 
		mpassage_t *head = passage;
		if (!split) return passage;
		
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

// cuts passages in leaf by given plane
mpassage_t *P_CutPassages(mpassage_t *passage, mplane_t *cuttingplane) {
	mpassage_t *ppassage; 
	mpassage_t *newhead = NULL; 
	mpassage_t *cutresult = NULL; // outgoing chain
	mpassage_t *itpassage = passage; 
	// cuts all passages in list
//if (dbgcnt == 12) { 
//Con_DPrintf("==== cutting passages with head %p ====== \r\n", passage);
//}
	while(itpassage) {
		ppassage = itpassage;
		itpassage = itpassage->nextpassage;
		
		// cut current passage
//if (dbgcnt == 12) { 
//Con_DPrintf("count2 %i - ", dbgcnt2);
//dbgcnt2++;
//}
if (dbgcnt == 12) { 
//Con_DPrintf("num befor %i - ", CountVerts(ppassage));
}
//if (dbgcnt2 > 500) {
//Con_DPrintf("before\r\n");
//ListPassages(ppassage);
//}
		cutresult = P_CutPassage(ppassage, cuttingplane);
if (dbgcnt == 12) { 
//Con_DPrintf("num after[1] %i ", CountVerts(cutresult));
//if (cutresult->nextpassage) Con_DPrintf("num after[2] %i ", CountVerts(cutresult->nextpassage));
//Con_DPrintf("/\r\n");
}
//if (dbgcnt2 > 500) {
//Con_DPrintf("after\r\n");
//ListPassages(cutresult);
//}

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
		
//if (dbgcnt2 > 500) {
//Con_DPrintf("newhead:\r\n");
//ListPassages(newhead);
//}
	}
	
	return newhead;
}

// passages are calculated per processed leaf. The leaf the passage refers to 
// must have a link to the passage as well, however, that passage links to the
// processed passage. Therefore, this function takes the processed leaf and
// passage, creates a new passage and links it to the referred leaf. The new passage
// is set to link to the processed leaf  
// note: at rendertime the plane must be checked for winding order
void P_DuplicatePassageToLeaf(mpassage_t *passage, mleaf_t *dest) {
	mleaf_t *leaf = passage->leaf;
	mpassage_t *newpassage = AllocPassage();
	memset(newpassage, 0x00, sizeof(newpassage));
	// link vertices
	newpassage->nextvert = passage->nextvert;
	// link flags
	if (!(passage->flags & PASSAGE_PLANEBACK)) {
		// when not faced back, the inverted passage
		// WILL be faced back
		newpassage->flags |= PASSAGE_PLANEBACK;
	}
	// the leaf it links to
	newpassage->leaf = dest;
	
	if(leaf->passages) {
		// find to tail
		mpassage_t *itpassage = leaf->passages;
		while(itpassage->nextpassage) {
			itpassage = itpassage->nextpassage;
		}
		itpassage->nextpassage = newpassage;
	} else {
		leaf->passages = newpassage;
	} 
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
	
	for(i=0; i<3; i++) {
		front[i] = center[i] + plane->normal[i];
		back[i] = center[i] - plane->normal[i];
	}
	
}

// to put it simple, searches for holes in the plane and registers em
void P_CreatePlanePassages(mplane_t *plane, mleaf_t *leaf) {
	int 			i;
	byte 		*vis;
	vec3_t		probe[2];
	mpassage_t *itpassage, *currpassage;
	// start with creating a polygon 
	mpassage_t *head = P_BasePassageForPlane(plane);
	if (!head) return;
	// find leafs in PVS (these are the leafs that may possibly connect with given leaf)
	vis = Mod_LeafPVS (leaf, cl.worldmodel);
//if (dbgcnt == 12) { 
//Con_DPrintf("==== cutting baseplane %p ====== \r\n", head);
//}
	for (i=0 ; i<cl.worldmodel->numleafs; i++) {
		if (vis[i>>3] & (1<<(i&7))) {
			int j;
			mleaf_t *visleaf = &cl.worldmodel->leafs[i+1];
			if (visleaf == leaf) continue; // dont cut self
			// check all the surfaces in this leaf for intersection with plane
//			msurface_t **s = visleaf->firstmarksurface;
//			for(j=0; j<visleaf->nummarksurfaces; j++, s++) {
//				if (P_CheckPlaneIntersectsSurf(plane, (*s))) {
					// plane intersects this surface, so cut the passage(s)
					head = P_CutPassages(head, visleaf->parent->plane);
//					head = P_CutPassages(head, (*s)->plane);
//				}
//			}
		}
	}
//if (dbgcnt == 12) { 
//Con_DPrintf("==== end cutting baseplane %p ====== \r\n", head);
//}
	// head may contain multiple polygons now. Some of them
	// face a solid leaf. These must be removed
	itpassage = head;
	while(itpassage) {
		int 			j;
		qboolean passed = false;
		// iterate
		currpassage = itpassage;
		itpassage = itpassage->nextpassage;
		// calculate probe points
		P_CalcProbePoints(currpassage, probe[0], probe[1]);
		// check the leafs (in a solid way)
		for(j=0; j<2; j++) {
			mleaf_t *connectingleaf = Mod_PointInLeaf (probe[j], cl.worldmodel);
			if (connectingleaf ->contents != CONTENTS_SOLID) {
				// register the leaf
				if (connectingleaf == leaf) {
					passed = true;
					if (j) { // facing back
						currpassage->flags |= PASSAGE_PLANEBACK;
					}
				} else {
					currpassage->leaf = connectingleaf;
				}
			} else {
				// it's solid... remove it
				head = DeletePassage(head, currpassage);
				break;
			}
		}
		// delete if we don't reference the leaf we are in at all
		if (!passed) {
			head = DeletePassage(head, currpassage);
		}
	}
	
	// the list of remaining passages is linked to the leaf
	leaf->passages = head;
	// the leafs referred by the passages must have inverse passages
	/*itpassage = head;
	while(itpassage) {
		// iterate
		P_DuplicatePassageToLeaf(itpassage, leaf);
		itpassage = itpassage->nextpassage;
	}*/
}

qboolean P_SkipPlane(mplane_t *plane, mplane_t **processedplanes, int numprocessedplanes) {
	int j;
	for(j=0; j<numprocessedplanes; j++) {
		if (processedplanes[j] == plane) {
			return true;
		}
	}
	return false;
}

// * we check all surface's planes and its parent node
// * each plane results in a big square polygon along the plane (passages)
// * all of these polygons are cut by the remaining leafs' planes
// * the remaining polygons are checked on what leaf is behind them
//   using point in leaf
// * if the leaf behind the portal is solid, the passage is thrown away
// * if the leaf behind the portal is already registered in current leaf, the
//	 passage is thrown away 
// * otherwise, the passage is registered in both current and behind leafs
void P_CreateLeafPassages(mleaf_t *leaf) {
	msurface_t	**s;
	int i, numsurf, numprocessedplanes;
	mplane_t *processedplanes[MAX_PLANES_LEAF]; // max num planes per leaf
	numprocessedplanes = 0;
	// loop the surfaces
	/*s = leaf->firstmarksurface;
	numsurf = leaf->nummarksurfaces;
	for(i=0; i<numsurf; i++, s++) {
		mplane_t 		*plane = (*s)->plane;
		
		// plane already done?
		if (P_SkipPlane(plane, &processedplanes[0], numprocessedplanes)) 
			continue;
		// add plane to skip list
		processedplanes[numprocessedplanes] = plane;
		numprocessedplanes++;
		// create passages for plane 
//Con_DPrintf("surfpassages for plane %p - ", plane);
		P_CreatePlanePassages(plane, leaf);
	}*/
	// the parent node
/*	if (leaf->parent) {
		mnode_t 	*node 	= (mnode_t *) leaf->parent;
		mplane_t *plane	= node->plane;
		
		// plane already done?
		if (!P_SkipPlane(plane, &processedplanes[0], numprocessedplanes)) {
			// add plane to skip list (actually a redundant action at this point)
			processedplanes[numprocessedplanes] = plane;
			numprocessedplanes++;
			// create passages for plane 
//Con_DPrintf("parentplane for plane %p - ", plane);
			P_CreatePlanePassages(plane, leaf);
		}
	}*/
	
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
		if (!	(mins2[i]  > 	mins1[i] - BACKFACE_EPSILON && mins2[i]  < 	maxs1[i] + BACKFACE_EPSILON) || 
				(maxs2[i] >	mins1[i] - BACKFACE_EPSILON && maxs2[i] < 	maxs1[i] + BACKFACE_EPSILON) ||
				(mins1[i]  > 	mins2[i] - BACKFACE_EPSILON && mins1[i]  < 	maxs2[i] + BACKFACE_EPSILON) ||
				(maxs1[i] > 	mins2[i] - BACKFACE_EPSILON && maxs1[i] < 	maxs2[i] + BACKFACE_EPSILON)) {
			return false;
		}
	}
	return true;
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
mpassage_t *P_NodePassages(mpassage_t *head, mplane_t *pplane) {//, mnode_t *cuttingnode) {
	int i;
	// don't process leafs
	//if (cuttingnode->contents == CONTENTS_SOLID) return head;
//Con_DPrintf("numnodes%i", cl.worldmodel->numnodes);
	for(i=0; i<cl.worldmodel->numnodes; i++) {
		mnode_t 	*cuttingnode =&cl.worldmodel->nodes[i];

//		if (cuttingnode->contents < 0) return head;
		if (cuttingnode->contents < 0) continue; // skip leaf nodes
//Con_DPrintf("n%i", i);

		// don't process self and check bounding box intersection
//		if (passagenode != cuttingnode && P_IntersectingBBoxs(passagenode->minmaxs, cuttingnode->minmaxs)) {
//		if (passagenode != cuttingnode && P_BoxIntersectsPlane(cuttingnode->minmaxs, pplane)) {//passagenode->plane) && P_BoxIntersectsPlane(passagenode->minmaxs, cuttingnode->plane)) {
		if (P_BoxIntersectsPlane(cuttingnode->minmaxs, pplane)) {
			// it is intersecting so passage must be cut by this cutting node
//Con_DPrintf("c");
			mplane_t *cuttingplane = cuttingnode->plane;
			head = P_CutPassages(head, cuttingplane);
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


/*
===================
P_ClonePassageToLeaf
===================
Registers passage data on 'fromleaf' using target 'toleaf' and vertices 'verts'
*/
void P_ClonePassageToLeaf(mleaf_t *fromleaf, mleaf_t *toleaf, qboolean facingfront, mplane_t *plane, mpassagevert_t *verts) {
	mpassage_t *newpassage = AllocPassage();
	// fill passage data
	newpassage->plane 		= plane;
	newpassage->flags 		|= (!facingfront ? PASSAGE_PLANEBACK : 0);
	newpassage->leaf 			= toleaf;
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
			
			// TODO dealloc passage but reuse verts
			DeAllocPassage(currpassage);
		} else {
			// not passed... remove it
			head = DeletePassage(head, currpassage);
			numdelete++;
			break;
		}		
	}
Con_DPrintf("deleted: %i", numdelete);	
} 

/*
===================
P_CreatePassages
===================
Creates passages for all nodes in model
*/
void P_CreatePassages() {
	int i;
	mpassage_t *head;
	P_ClearPassages();
dbgcnt = 0;
	// loop the nodes
//	for(i=0; i<cl.worldmodel->numnodes; i++) {
//		mnode_t 	*node	=&cl.worldmodel->nodes[i];
//		mplane_t *plane	= node->plane;
	for(i=0; i<cl.worldmodel->numplanes; i++) {
		mplane_t *plane = &cl.worldmodel->planes[i];
//Con_DPrintf("node %p num %i - %i %i - ", node, dbgcnt, r_numpassages, r_numpassageverts);
Con_DPrintf("plane %p num %i/%i - %i %i - ", plane, i, cl.worldmodel->numplanes, r_numpassages, r_numpassageverts);
dbgcnt++;
		// skip leafs
		//if (node->contents == CONTENTS_SOLID) continue;
		// create a base passage along the plane
		head = P_BasePassageForPlane(plane);
		if (!head) continue;
		// throw it into the resolver
		//head = P_NodePassages(head, node);//, cl.worldmodel->nodes);
		head = P_NodePassages(head, plane);//, cl.worldmodel->nodes);
		// filter the passages created (only actual passages between two distinct leafs are kept)
		// and register on referenced leafs
Con_DPrintf("register - %i passages -", CountPassages(head));
		P_RegisterPassages(head);//, node);
	}
}


/*void P_CreatePassages() {
	int i;
	P_ClearPassages();
dbgcnt = 0;
dbgcnt2 = 0;	
	// loop leafs
	for (i=0 ; i<cl.worldmodel->numleafs ; i++)	{
		mleaf_t *pleaf = &cl.worldmodel->leafs[i+1];
Con_DPrintf("leaf %p num %i - %i %i - ", pleaf, dbgcnt, r_numpassages, r_numpassageverts);
		// create leaf passages
		P_CreateLeafPassages(pleaf);
dbgcnt++;
	}
}*/


void R_DrawPortals() {
	mpassagevert_t *verts[MAX_VERTS_PASSAGE];
	R_SetupForStencilTexture();
	GXColor col = {0xFF, 0x00, 0x00, 0xFF};
	GX_SetTevColor(GX_TEVPREV, col);
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
		GX_Begin(GX_LINESTRIP, GX_VTXFMT3, numverts);
		if (currpassage->flags & PASSAGE_PLANEBACK) {
			while(numverts) {
				numverts--;
				GX_Position3f32(verts[numverts]->v[0], verts[numverts]->v[1], verts[numverts]->v[2]);
			}
		} else {
			int i;
			for(i=0; i<numverts; i++) {
				GX_Position3f32(verts[i]->v[0], verts[i]->v[1], verts[i]->v[2]);
			}
		}
		GX_End();
		currpassage = currpassage->nextpassage;
	}
	R_SetDefaultQuakeShader();
}




































// REV 2

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
#define MAX_PASSAGES_MAP 		32768
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

mpassage_t *DeletePassage(mpassage_t *head, mpassage_t *passage) {
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
		P_DeleteAllVerts(passage);
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

qboolean P_CheckPlaneIntersectsSurf(mplane_t *plane, msurface_t *s) {
	int 			i, j, num, idx;
	medge_t	*pedges, *r_pedge;
	float			*vec[2];
	vec3_t		planexyz, intersection;
	mvertex_t	*pcurrentvertbase;
	// first timer... use edges instead of checking out s->poly
	pcurrentvertbase = cl.worldmodel->vertexes;
	pedges = cl.worldmodel->edges;
	num = s->numedges;
	for (i=0 ; i<num; i++) {
		for(j=0; j<2; j++) {
			idx = cl.worldmodel->surfedges[s->firstedge + ((i+j)%num)];

			if (idx > 0) {
				r_pedge = &pedges[idx];
				vec[j] = pcurrentvertbase[r_pedge->v[0]].position;
			} else {
				r_pedge = &pedges[-idx];
				vec[j] = pcurrentvertbase[r_pedge->v[1]].position;
			}
		}
		// check intersection with plane
		for(j=0; j<3; j++) {
			planexyz[j] = plane->dist * plane->normal[j];
		}
		if (R_CalculateIntersection(
			(Vector *) &vec[0][0], (Vector *) &vec[1][0], (Vector *) &plane->normal[0], (Vector *) &planexyz[0], 1.1f, 
			(Vector *) &intersection[0]))  {
			// it intersects
			return true;
		}
		
	}
	return false; // no intersection 

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
		if (verts1[i][0] == verts1[j][0] && 
			verts1[i][1] == verts1[j][1] &&
			verts1[i][2] == verts1[j][2]) {
			Con_DPrintf("Warning! Duplicate points in winding");
			passage->nextpassage = NULL;
			return passage;
		}
	}
}
for(i=0; i<numverts2; i++) {
	for(j=i+1; j<numverts2; j++) {
		if (verts2[i][0] == verts2[j][0] && 
			verts2[i][1] == verts2[j][1] &&
			verts2[i][2] == verts2[j][2]) {
			Con_DPrintf("Warning! Duplicate points in winding");
			passage->nextpassage = NULL;
			return passage;
		}
	}
}
		
	
	
		// create new passage and reuse given one
		mpassage_t *split = AllocPassage(); 
		mpassage_t *head = passage;
		if (!split) return passage;
		
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

// cuts passages in leaf by given plane
mpassage_t *P_CutPassages(mpassage_t *passage, mplane_t *cuttingplane) {
	mpassage_t *ppassage; 
	mpassage_t *newhead = NULL; 
	mpassage_t *cutresult = NULL; // outgoing chain
	mpassage_t *itpassage = passage; 
	// cuts all passages in list
//if (dbgcnt == 12) { 
//Con_DPrintf("==== cutting passages with head %p ====== \r\n", passage);
//}
	while(itpassage) {
		ppassage = itpassage;
		itpassage = itpassage->nextpassage;
		
		// cut current passage
//if (dbgcnt == 12) { 
//Con_DPrintf("count2 %i - ", dbgcnt2);
//dbgcnt2++;
//}
if (dbgcnt == 12) { 
//Con_DPrintf("num befor %i - ", CountVerts(ppassage));
}
//if (dbgcnt2 > 500) {
//Con_DPrintf("before\r\n");
//ListPassages(ppassage);
//}
		cutresult = P_CutPassage(ppassage, cuttingplane);
if (dbgcnt == 12) { 
//Con_DPrintf("num after[1] %i ", CountVerts(cutresult));
//if (cutresult->nextpassage) Con_DPrintf("num after[2] %i ", CountVerts(cutresult->nextpassage));
//Con_DPrintf("/\r\n");
}
//if (dbgcnt2 > 500) {
//Con_DPrintf("after\r\n");
//ListPassages(cutresult);
//}

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
		
//if (dbgcnt2 > 500) {
//Con_DPrintf("newhead:\r\n");
//ListPassages(newhead);
//}
	}
	
	return newhead;
}

// passages are calculated per processed leaf. The leaf the passage refers to 
// must have a link to the passage as well, however, that passage links to the
// processed passage. Therefore, this function takes the processed leaf and
// passage, creates a new passage and links it to the referred leaf. The new passage
// is set to link to the processed leaf  
// note: at rendertime the plane must be checked for winding order
void P_DuplicatePassageToLeaf(mpassage_t *passage, mleaf_t *dest) {
	mleaf_t *leaf = passage->leaf;
	mpassage_t *newpassage = AllocPassage();
	memset(newpassage, 0x00, sizeof(newpassage));
	// link vertices
	newpassage->nextvert = passage->nextvert;
	// link flags
	if (!(passage->flags & PASSAGE_PLANEBACK)) {
		// when not faced back, the inverted passage
		// WILL be faced back
		newpassage->flags |= PASSAGE_PLANEBACK;
	}
	// the leaf it links to
	newpassage->leaf = dest;
	
	if(leaf->passages) {
		// find to tail
		mpassage_t *itpassage = leaf->passages;
		while(itpassage->nextpassage) {
			itpassage = itpassage->nextpassage;
		}
		itpassage->nextpassage = newpassage;
	} else {
		leaf->passages = newpassage;
	} 
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
Con_DPrintf("probe at %5.1f %5.1f %5.1f \r\n", center[0], center[1], center[2]);	
	for(i=0; i<3; i++) {
		front[i] = center[i] + plane->normal[i];
		back[i] = center[i] - plane->normal[i];
	}
	
}

// to put it simple, searches for holes in the plane and registers em
void P_CreatePlanePassages(mplane_t *plane, mleaf_t *leaf) {
	int 			i;
	byte 		*vis;
	vec3_t		probe[2];
	mpassage_t *itpassage, *currpassage;
	// start with creating a polygon 
	mpassage_t *head = P_BasePassageForPlane(plane);
	if (!head) return;
	// find leafs in PVS (these are the leafs that may possibly connect with given leaf)
	vis = Mod_LeafPVS (leaf, cl.worldmodel);
//if (dbgcnt == 12) { 
//Con_DPrintf("==== cutting baseplane %p ====== \r\n", head);
//}
	for (i=0 ; i<cl.worldmodel->numleafs; i++) {
		if (vis[i>>3] & (1<<(i&7))) {
			int j;
			mleaf_t *visleaf = &cl.worldmodel->leafs[i+1];
			if (visleaf == leaf) continue; // dont cut self
			// check all the surfaces in this leaf for intersection with plane
//			msurface_t **s = visleaf->firstmarksurface;
//			for(j=0; j<visleaf->nummarksurfaces; j++, s++) {
//				if (P_CheckPlaneIntersectsSurf(plane, (*s))) {
					// plane intersects this surface, so cut the passage(s)
					head = P_CutPassages(head, visleaf->parent->plane);
//					head = P_CutPassages(head, (*s)->plane);
//				}
//			}
		}
	}
//if (dbgcnt == 12) { 
//Con_DPrintf("==== end cutting baseplane %p ====== \r\n", head);
//}
	// head may contain multiple polygons now. Some of them
	// face a solid leaf. These must be removed
	itpassage = head;
	while(itpassage) {
		int 			j;
		qboolean passed = false;
		// iterate
		currpassage = itpassage;
		itpassage = itpassage->nextpassage;
		// calculate probe points
		P_CalcProbePoints(currpassage, probe[0], probe[1]);
		// check the leafs (in a solid way)
		for(j=0; j<2; j++) {
			mleaf_t *connectingleaf = Mod_PointInLeaf (probe[j], cl.worldmodel);
			if (connectingleaf ->contents != CONTENTS_SOLID) {
				// register the leaf
				if (connectingleaf == leaf) {
					passed = true;
					if (j) { // facing back
						currpassage->flags |= PASSAGE_PLANEBACK;
					}
				} else {
					currpassage->leaf = connectingleaf;
				}
			} else {
				// it's solid... remove it
				head = DeletePassage(head, currpassage);
				break;
			}
		}
		// delete if we don't reference the leaf we are in at all
		if (!passed) {
			head = DeletePassage(head, currpassage);
		}
	}
	
	// the list of remaining passages is linked to the leaf
	leaf->passages = head;
	// the leafs referred by the passages must have inverse passages
	/*itpassage = head;
	while(itpassage) {
		// iterate
		P_DuplicatePassageToLeaf(itpassage, leaf);
		itpassage = itpassage->nextpassage;
	}*/
}

qboolean P_SkipPlane(mplane_t *plane, mplane_t **processedplanes, int numprocessedplanes) {
	int j;
	for(j=0; j<numprocessedplanes; j++) {
		if (processedplanes[j] == plane) {
			return true;
		}
	}
	return false;
}

// * we check all surface's planes and its parent node
// * each plane results in a big square polygon along the plane (passages)
// * all of these polygons are cut by the remaining leafs' planes
// * the remaining polygons are checked on what leaf is behind them
//   using point in leaf
// * if the leaf behind the portal is solid, the passage is thrown away
// * if the leaf behind the portal is already registered in current leaf, the
//	 passage is thrown away 
// * otherwise, the passage is registered in both current and behind leafs
void P_CreateLeafPassages(mleaf_t *leaf) {
	msurface_t	**s;
	int i, numsurf, numprocessedplanes;
	mplane_t *processedplanes[MAX_PLANES_LEAF]; // max num planes per leaf
	numprocessedplanes = 0;
	// loop the surfaces
	/*s = leaf->firstmarksurface;
	numsurf = leaf->nummarksurfaces;
	for(i=0; i<numsurf; i++, s++) {
		mplane_t 		*plane = (*s)->plane;
		
		// plane already done?
		if (P_SkipPlane(plane, &processedplanes[0], numprocessedplanes)) 
			continue;
		// add plane to skip list
		processedplanes[numprocessedplanes] = plane;
		numprocessedplanes++;
		// create passages for plane 
//Con_DPrintf("surfpassages for plane %p - ", plane);
		P_CreatePlanePassages(plane, leaf);
	}*/
	// the parent node
/*	if (leaf->parent) {
		mnode_t 	*node 	= (mnode_t *) leaf->parent;
		mplane_t *plane	= node->plane;
		
		// plane already done?
		if (!P_SkipPlane(plane, &processedplanes[0], numprocessedplanes)) {
			// add plane to skip list (actually a redundant action at this point)
			processedplanes[numprocessedplanes] = plane;
			numprocessedplanes++;
			// create passages for plane 
//Con_DPrintf("parentplane for plane %p - ", plane);
			P_CreatePlanePassages(plane, leaf);
		}
	}*/
	
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
		if (!	(mins2[i]  > 	mins1[i] - BACKFACE_EPSILON && mins2[i]  < 	maxs1[i] + BACKFACE_EPSILON) || 
				(maxs2[i] >	mins1[i] - BACKFACE_EPSILON && maxs2[i] < 	maxs1[i] + BACKFACE_EPSILON) ||
				(mins1[i]  > 	mins2[i] - BACKFACE_EPSILON && mins1[i]  < 	maxs2[i] + BACKFACE_EPSILON) ||
				(maxs1[i] > 	mins2[i] - BACKFACE_EPSILON && maxs1[i] < 	maxs2[i] + BACKFACE_EPSILON)) {
			return false;
		}
	}
	return true;
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
mpassage_t *P_NodePassages(mpassage_t *head, mnode_t *passagenode) {//, mnode_t *cuttingnode) {
	int i;
	// don't process leafs
	//if (cuttingnode->contents == CONTENTS_SOLID) return head;
//Con_DPrintf("numnodes%i", cl.worldmodel->numnodes);
	for(i=0; i<cl.worldmodel->numnodes; i++) {
		mnode_t 	*cuttingnode =&cl.worldmodel->nodes[i];

//		if (cuttingnode->contents < 0) return head;
		if (cuttingnode->contents < 0) continue; // skip leaf nodes
//Con_DPrintf("n%i", i);

		// don't process self and check bounding box intersection
//		if (passagenode != cuttingnode && P_IntersectingBBoxs(passagenode->minmaxs, cuttingnode->minmaxs)) {
		if (passagenode != cuttingnode && P_BoxIntersectsPlane(cuttingnode->minmaxs, passagenode->plane)) {// && P_BoxIntersectsPlane(passagenode->minmaxs, cuttingnode->plane)) {
			// it is intersecting so passage must be cut by this cutting node
//Con_DPrintf("c");
			mplane_t *cuttingplane = cuttingnode->plane;
			head = P_CutPassages(head, cuttingplane);
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


/*
===================
P_ClonePassageToLeaf
===================
Registers passage data on 'fromleaf' using target 'toleaf' and vertices 'verts'
*/
void P_ClonePassageToLeaf(mleaf_t *fromleaf, mleaf_t *toleaf, qboolean facingfront, mplane_t *plane, mpassagevert_t *verts) {
	mpassage_t *newpassage = AllocPassage();
	// fill passage data
	newpassage->plane 		= plane;
	newpassage->flags 		|= (!facingfront ? PASSAGE_PLANEBACK : 0);
	newpassage->leaf 			= toleaf;
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


/*
===================
P_RegisterPassages
===================
checks each passage's leafs on both sides. If leafs are different, 
the passage is kept, otherwise it is destroyed
*/
void P_RegisterPassages(mpassage_t *head, mnode_t *passagenode) {
	int					i;
	vec3_t				probe[2]; // 0 = front, 1 = back
	mleaf_t			*leaf[2];
	mpassage_t 	*currpassage, *itpassage;
if (isTestMap)  {
	Con_DPrintf("=== register passages ===\r\n");
	ListPassages(head);
}
int numdeleted = 0;
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
			//leaf[i] = Mod_PointInLeaf (probe[i], cl.worldmodel);
			leaf[i] = Mod_PointInLeafFromNode(probe[i], passagenode);
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
if (isTestMap)  {
	Con_DPrintf("==== register leafs %p and %p on winding ==== \r\n", leaf[0], leaf[1]);
	ListVerts(currpassage);
}
			// register the data on leafs
			P_ClonePassageToLeaf(leaf[0], leaf[1], true, currpassage->plane, currpassage->nextvert);
			P_ClonePassageToLeaf(leaf[1], leaf[0], false, currpassage->plane, currpassage->nextvert);
			
			// TODO dealloc passage but reuse verts
			DeAllocPassage(currpassage);
		} else {
			// not passed... remove it
			head = DeletePassage(head, currpassage);
			numdeleted++;
		}		
	}
	Con_DPrintf("numdeleted: %i\r\n", numdeleted);
} 

/*
===================
P_CreatePassages
===================
Creates passages for all nodes in model
*/
void P_CreatePassages() {
	int i;
	mpassage_t *head;
	P_ClearPassages();
dbgcnt = 0;
if (!isTestMap)  return;
	// loop the nodes
	for(i=0; i<cl.worldmodel->numnodes; i++) {
		mnode_t 	*node	=&cl.worldmodel->nodes[i];
		mplane_t *plane	= node->plane;
Con_DPrintf("node %p num %i - %i %i - ", node, dbgcnt, r_numpassages, r_numpassageverts);
dbgcnt++;
		// skip leafs
		if (node->contents == CONTENTS_SOLID) { 
			Con_DPrintf("solid node-");
			continue;
		}
		// create a base passage along the plane
		head = P_BasePassageForPlane(plane);
		if (!head) continue;
		// throw it into the resolver
		head = P_NodePassages(head, node);//, cl.worldmodel->nodes);
		// filter the passages created (only actual passages between two distinct leafs are kept)
		// and register on referenced leafs
Con_DPrintf("register - %i nodes -", CountPassages(head));
		P_RegisterPassages(head, node);
	}
}


/*void P_CreatePassages() {
	int i;
	P_ClearPassages();
dbgcnt = 0;
dbgcnt2 = 0;	
	// loop leafs
	for (i=0 ; i<cl.worldmodel->numleafs ; i++)	{
		mleaf_t *pleaf = &cl.worldmodel->leafs[i+1];
Con_DPrintf("leaf %p num %i - %i %i - ", pleaf, dbgcnt, r_numpassages, r_numpassageverts);
		// create leaf passages
		P_CreateLeafPassages(pleaf);
dbgcnt++;
	}
}*/


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
		GX_Begin(GX_LINESTRIP, GX_VTXFMT3, numverts);
		if (currpassage->flags & PASSAGE_PLANEBACK) {
			while(numverts) {
				numverts--;
				GX_Position3f32(verts[numverts]->v[0], verts[numverts]->v[1], verts[numverts]->v[2]);
			}
		} else {
			int i;
			for(i=0; i<numverts; i++) {
				GX_Position3f32(verts[i]->v[0], verts[i]->v[1], verts[i]->v[2]);
			}
		}
		GX_End();
		currpassage = currpassage->nextpassage;
	}
	R_SetDefaultQuakeShader();
}






// REV 3
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
#define MAX_PASSAGES_MAP 		32768
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

mpassage_t *DeletePassage(mpassage_t *head, mpassage_t *passage) {
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
		P_DeleteAllVerts(passage);
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
		if (verts1[i][0] == verts1[j][0] && 
			verts1[i][1] == verts1[j][1] &&
			verts1[i][2] == verts1[j][2]) {
			Con_DPrintf("Warning! Duplicate points in winding");
			passage->nextpassage = NULL;
			return passage;
		}
	}
}
for(i=0; i<numverts2; i++) {
	for(j=i+1; j<numverts2; j++) {
		if (verts2[i][0] == verts2[j][0] && 
			verts2[i][1] == verts2[j][1] &&
			verts2[i][2] == verts2[j][2]) {
			Con_DPrintf("Warning! Duplicate points in winding");
			passage->nextpassage = NULL;
			return passage;
		}
	}
}
		
	
	
		// create new passage and reuse given one
		mpassage_t *split = AllocPassage(); 
		mpassage_t *head = passage;
		if (!split) return passage;
		
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
//		float pminmaxs[6];
		ppassage = itpassage;
		itpassage = itpassage->nextpassage;
		// need to cut this specific passage?
//		P_PassageBBox(ppassage, &pminmaxs[0]);
//		if (P_IntersectingBBoxs(&pminmaxs[0], &cminmaxs[0])) {
		if (P_PassageHitsBBox(ppassage, &cminmaxs[0], &cminmaxs[3])) {
//			Con_DPrintf("c");
			// cut current passage
			cutresult = P_CutPassage(ppassage, cuttingplane);
		} else {
//			Con_DPrintf("s");
			ppassage->nextpassage = NULL; // have to hack it
			cutresult = ppassage;
		}
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


/*
===================
P_ClonePassageToLeaf
===================
Registers passage data on 'fromleaf' using target 'toleaf' and vertices 'verts'
*/
void P_ClonePassageToLeaf(mleaf_t *fromleaf, mleaf_t *toleaf, qboolean facingfront, mplane_t *plane, mpassagevert_t *verts) {
	mpassage_t *newpassage = AllocPassage();
	// fill passage data
	newpassage->plane 		= plane;
	newpassage->flags 		|= (!facingfront ? PASSAGE_PLANEBACK : 0);
	newpassage->leaf 			= toleaf;
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
realnum++;
		// passed?
		if (passed) {
			// register the data on leafs
			P_ClonePassageToLeaf(leaf[0], leaf[1], true, currpassage->plane, currpassage->nextvert);
			P_ClonePassageToLeaf(leaf[1], leaf[0], false, currpassage->plane, currpassage->nextvert);
			
			// TODO dealloc passage but reuse verts
			DeAllocPassage(currpassage);		
		} else {
			// not passed... remove it
			head = DeletePassage(head, currpassage);
			numdelete++;
realnum--;			
		}		
	}
Con_DPrintf("deleted: %i", numdelete);	
} 

// 0 non planar
// 1 planar and same facing
// 2 planar and diverged facing
#define PLANAR_EPSILON	0.00001
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
			break;
		}
	}
	
}

/*
===================
P_CreatePassages
===================
Creates passages for all nodes in model
*/
void P_CreatePassages() {
	int i;
	mpassage_t *head;
	P_ClearPassages();
dbgcnt = 0;
realnum = 0;
if (!isTestMap)  return;

	// loop the planes
Con_DPrintf("Creating plane list...");
	P_CreatePlaneList();
Con_DPrintf("%i ...\r\n", p_numplanes);
	for(i=0; i<p_numplanes; i++) {
		mplane_t *plane = p_planes[i];
Con_DPrintf("plane %p num %i/%i - %i %i - real %i - ", plane, i, cl.worldmodel->numplanes, r_numpassages, r_numpassageverts, realnum);
dbgcnt++;
		// create a base passage along the plane
		head = P_BasePassageForPlane(plane);
		if (!head) continue;
		// throw it into the resolver
		head = P_NodePassages(head, plane);//, cl.worldmodel->nodes);
		// filter the passages created (only actual passages between two distinct leafs are kept)
		// and register on referenced leafs
Con_DPrintf("register - %i passages -", CountPassages(head));
		P_RegisterPassages(head);
	}
}


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
		GX_Begin(GX_LINESTRIP, GX_VTXFMT3, numverts);
		if (currpassage->flags & PASSAGE_PLANEBACK) {
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


