/*
Copyright (C) 2009 Danny Sedney (DRS)

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty ofA
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
		memset((byte *) ret, 0x00, sizeof(mpassagevert_t));
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
		memset((byte *) ret, 0x00, sizeof(mpassage_t));
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

void DeletePassages(mpassage_t *head) {
	while(head)  {
		head = DeletePassage(head, head, false);
	}
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


// 0 = nosplit, 1 = first portal in back of plane (v2 in front), 2 = first portal in front of plane (v1 in front) 
int P_FindSplitPoints(mpassagevert_t *first, mplane_t *plane, int *idxIntersect1, Vector *intersect1, int *idxIntersect2, Vector *intersect2) {
	int i, idx, split = 0;
	vec3_t	normal;
	vec3_t	planexyz;
	// setup normal and point on plane
	for(i=0; i<3; i++) {
		planexyz[i] = plane->dist * plane->normal[i];
		normal[i] = plane->normal[i];
	}
	
	mpassagevert_t *currvert = first;
	mpassagevert_t *nextvert = currvert->nextvert;

	// in this loop we accept either a v2 in front and next a v2 in back, or a v1 in front and next a v1 in back
	// when split is 0 and we get an intersection, this is considered to be the first splitpoint and split is set
	// according to the side of plane the edge's endpoint lies. Therefore, the next endpoint must be on the other
	// side of the plane
	idx = 0;
	while(currvert) {
		vec3_t		*front;	
		vec3_t 	intersection;
		
		front = (vec3_t *) R_CalculateIntersection(
			/* in */ 		(Vector *) &currvert->v[0], (Vector *) &nextvert->v[0], (Vector *) &normal[0], (Vector *) &planexyz[0], 0.5f, 
			/* out */	(Vector *) &intersection[0]);

		if (front) {
			// it intersects
			if (front == (vec3_t *) (&nextvert->v[0])) { // v2 in front
				if (!split) {
					split = 1;
					*idxIntersect1 = idx;
					intersect1->x = intersection[0];
					intersect1->y = intersection[1];
					intersect1->z = intersection[2];
				} else if (split == 2) {
					*idxIntersect2 = idx;
					intersect2->x = intersection[0];
					intersect2->y = intersection[1];
					intersect2->z = intersection[2];
				}
				
			} else { // v1 in front
				if (!split) {
					split = 2;
					*idxIntersect1 = idx;
					intersect1->x = intersection[0];
					intersect1->y = intersection[1];
					intersect1->z = intersection[2];
				} else if (split == 1) {
					*idxIntersect2 = idx;
					intersect2->x = intersection[0];
					intersect2->y = intersection[1];
					intersect2->z = intersection[2];
				}
			}
			
		}

		// loop 'curr' and 'next' pointers... make sure 'next' rotates!
		currvert = currvert->nextvert;
		nextvert = nextvert->nextvert;
		if (!nextvert) {
			nextvert = first;
		}
		idx++;
	}		
	return split;
}

// check if point on plane1 lies in front or back of plane2
// return 1 when in front, -1 when in back or 0 when on plane
int P_SideOfPlane(mplane_t *plane1, mplane_t *plane2) {
	int i;
	float dp;
	Vector plane_p1;
	vec3_t	planexyz1, planexyz2;
	// setup point on plane1
	for(i=0; i<3; i++) {
		planexyz1[i] = plane1->dist * plane1->normal[i];
		planexyz2[i] = plane2->dist * plane2->normal[i];
	}
	
	guVecSub((Vector *) &planexyz1[0], (Vector *) &planexyz2[0], &plane_p1);
	dp = guVecDotProduct(&plane_p1, (Vector *) &plane2->normal[0]);
	
	if (dp > 0.1f) {
		return 1;
	}
	
	if (dp < -0.1f) {
		return -1;
	}
	
	return 0;
}

qboolean P_PointsNotEqual(vec3_t v1, vec3_t v2) {
	int i;
	for (i=0; i<3; i++) {
		if (fabs(v1[i]-v2[i]) > 0.1f) {
			return true;
		}
	}
	return false;
}

void P_SplitPassage(const mpassage_t *passage, mplane_t *plane, mpassage_t **retFront, mpassage_t **retBack) {
	mpassagevert_t *currVert = NULL;
	mpassage_t *vol1 = NULL, *vol2 = NULL;
	int idxIntersect1, idxIntersect2;
	vec3_t intersect1, intersect2;
	int isSplit; // 0 = nosplit, 1 = first portal in back of plane (v2 in front), 2 = first portal in front of plane (v1 in front) 
	
	// find the points where the plane intersects the passage's edges
	isSplit = P_FindSplitPoints(passage->nextvert, plane, &idxIntersect1, (Vector *) &intersect1, &idxIntersect2, (Vector *) &intersect2);
	
	// if it is split, we need to constuct two new portals. 
	// the first will have vertices vert[0 ... idxIntersect1], intersect1, intersect2, vert[idxIntersect2 - numVerts]
	// the second will have vertices vert[idxIntersect1 - idxIntersect2]
	if (isSplit) {
		int idx;
		vol1 = AllocPassage();
		if (!vol1) return;
		vol2 = AllocPassage();
		if (!vol2) return;
		
		
		// fill vol1 vert[0 ... idxIntersect1]
		currVert = passage->nextvert;
		for (idx=0; idx <= idxIntersect1; idx++) {
			if (P_PointsNotEqual(currVert->v, intersect1)) {
				P_AddPassageVert(vol1, currVert->v);
			}
			currVert = currVert->nextvert;
		} 
		// fill vol1 intersect1, intersect2
		P_AddPassageVert(vol1, intersect1);
		P_AddPassageVert(vol1, intersect2);
		// fill vol1 vert[0 ... idxIntersect1]
		idx = 0;
		for( ; currVert; idx++) {
			if (idx > idxIntersect2 && P_PointsNotEqual(currVert->v, intersect2)) {
				P_AddPassageVert(vol1, currVert->v);
			}
			currVert = currVert->nextvert;
		} 
			
		// fill vol 2 vert[idxIntersect1 - idxIntersect2]	
		currVert = passage->nextvert;
		P_AddPassageVert(vol2, intersect1);
		for (idx=0; currVert; idx++) {
			if (idx > idxIntersect1 && P_PointsNotEqual(currVert->v, intersect1) && P_PointsNotEqual(currVert->v, intersect2)) {
				P_AddPassageVert(vol2, currVert->v);
			}
			if (idx >= idxIntersect2) {
				currVert = NULL;
			} else {
				currVert = currVert->nextvert;
			}
		}
		P_AddPassageVert(vol2, intersect2);
		
		if (isSplit == 1) {
			*retFront = vol2;
			*retBack = vol1;	
		} else {
			*retFront = vol1;
			*retBack = vol2;	
		}
	}	else {
		// if it wasn't split we just determine if points are in front or back of the plane and set either retFront or retBack
		int i;
		float dp;
		Vector plane_p1;
		vec3_t	planexyz;

		// setup point on plane1
		for(i=0; i<3; i++) {
			planexyz[i] = plane->dist * plane->normal[i];
		}
		
		// create a new volume
		vol1 = AllocPassage();
		if (!vol1) return;
		
		
		// calculate the average dot product and check if it is > 0.1 or < -0.1
		i = 0;
		dp = 0;
		currVert = passage->nextvert;
		while (currVert) {

			guVecSub((Vector *) &currVert->v[0], (Vector *) &planexyz[0], &plane_p1);
			dp += guVecDotProduct(&plane_p1, (Vector *) &plane->normal[0]);
			i ++;
			// create vol1
			P_AddPassageVert(vol1, currVert->v);
			currVert = currVert->nextvert;
		}
		
		dp = dp / i;
		
		if (dp > 0.1f) {
			*retFront = vol1;
			*retBack = NULL;	
		} else if (dp < 0.1f) {
			*retFront = NULL;
			*retBack = vol1;	
		} else {
			*retFront = NULL;
			*retBack = NULL;	
		}
		
	}
	
	
		
}

mpassage_t *ConcatPassages(mpassage_t *p1, mpassage_t *p2) {
	mpassage_t *head, *tail, *curr;
	if (p1 == NULL && p2 == NULL) {
		head = AllocPassage();
		tail = NULL;
	} else if (p1 == NULL && p2 != NULL) {
		head = p2;
		tail = p1;
	} else {
		head = p1;
		tail = p2;
	}
	
	curr = head;
	while (curr) {
		curr = curr->nextpassage;
	}
	
	curr->nextpassage = tail;
	
	return head;
}

void P_SplitPassages(mpassage_t *firstPassage, mplane_t *plane, mpassage_t **retFront, mpassage_t **retBack) {
	*retFront = NULL;
	*retBack = NULL;
	
	mpassage_t *currPassage = firstPassage;

	// iterate thru passages 
	while(currPassage) {
		mpassage_t *frontList = NULL, *backList = NULL;
		P_SplitPassage(currPassage, plane, &frontList, &backList);
		
		// did we get any fragments in front of mnode plane?
		if (frontList) {
			*retFront = ConcatPassages(*retFront, frontList);
		}
		
		// did we get any fragments in back of mnode plane?
		if (backList) {
			*retBack = ConcatPassages(*retBack, backList);
		}
		
		currPassage = currPassage->nextpassage;
	}
	
} 

void P_LinkPassages(mpassage_t *passage, mnode_t *node, int side) {
	// side = 0 -> we are in front of processed passage -> passage is facing toward leaf in front
	// side = 1 -> we are in back of processed passage -> passage is facing toward leaf in back
	ConcatPassages(node->passages, passage);
	passage->leafs[side] = (mleaf_t *) node;
	// mmm less code than expected:)
}

mpassage_t *P_ProcessPassage(mpassage_t *passage, mnode_t *node, int side) {
	
	if (node->contents == CONTENTS_SOLID) {
		// solid, this gobbles up the passage
		DeletePassages(passage);
		// you get nothing
		return NULL;
	} else if (node->contents < 0) {
		// leaf node
		// side = 0 -> we are in front of processed passage -> passage is facing toward leaf in front
		// side = 1 -> we are in back of processed passage -> passage is facing toward leaf in back
		P_LinkPassages(passage, node, side); // link this passage to the node  ...
		return passage; // and keep it
	} else {
		// split node or jump over
		if (P_IsCoPlanar(passage->plane, node->plane)) { // TODO: mag er afstand tussen de planes zijn (dp comp?)
			// TODO if passage in front of node plane (calc point on plane fo passage, dp with node plane)
			// just pass it to the front side
			int coplanarSide;
			coplanarSide = P_SideOfPlane(passage->plane, node->plane);
			if (coplanarSide == 1) {
				// front
				passage = P_ProcessPassage(passage, node->children[0], side);
			} else if (coplanarSide == -1) {
				// else pass it to the back side
				passage = P_ProcessPassage(passage, node->children[1], side);
			} else {
				// mmmmmmmm???? planes are equal
				Con_DPrintf(">>>> Ok this happens...");
				// quess we need to descend both sides then...
			}
			return passage;
		} else {
			// split
			mpassage_t *frontPassageFrag = NULL, *backPassageFrag = NULL, *aggregated;
			P_SplitPassages(passage, node->plane, &frontPassageFrag, &backPassageFrag);
			// we have two new fragments now so delete the original
			DeletePassages(passage);
			// pass the front one to the front 
			if (frontPassageFrag) {
				frontPassageFrag = P_ProcessPassage(frontPassageFrag, node->children[0], side);
			}
			// pass the back one to the back
			if (backPassageFrag) {
				backPassageFrag = P_ProcessPassage(backPassageFrag, node->children[1], side);
			}
			// return the results of both the front and backside of this mnode
			aggregated = ConcatPassages(frontPassageFrag, backPassageFrag);
			return aggregated;
		}
	}
}

void P_ClipPassage(nodePassage, parentPassageList) {
	
//	P_SplitPassage(const mpassage_t *passage, mplane_t *plane, mpassage_t **retFront, mpassage_t **retBack);
}


// TODO: mss toch maar planes doorgeven?
void P_NodePassage(mnode_t *node, mpassage_t *parentPassageList) {
	mpassage_t *nodePassageList = NULL;
	
	nodePassageList = AllocPassage(); // actually it's just the head, but it may end up as a list:)
	
	if (nodePassageList) {
		if (parentPassageList) {
			// clip takes in account each passage plane's orientation and wether it has to clip 
			// to the plane's front or back (passage->flags = PASSAGE_PLANEBACK;)
			P_ClipPassage(nodePassageList, parentPassageList);
		}
		
		// send the passage down the tree
		// front side first. While processing, the passage can be cut up to several pieces,
		// that then are passed to the back side for further cut and trim.
		nodePassageList = P_ProcessPassage(nodePassageList, node->children[0], 0);
		if (nodePassageList) {
			nodePassageList = P_ProcessPassage(nodePassageList, node->children[1], 1);
		}
		
		// in the end we have only the passages between 2 leaf nodes remaining in 
		// the nodePassageList or nothing at all
		parentPassageList = ConcatPassages(parentPassageList, nodePassageList); // TODO: use the mnode or just the plane instead!
//		nodePassage->flags ^= PASSAGE_PLANEBACK; // todo: all entries, or pass side as argument in nodepassage???
		P_NodePassage(node->children[0], parentPassageList);
		
//		nodePassage->flags |= PASSAGE_PLANEBACK;
		P_NodePassage(node->children[1], parentPassageList);
		
	}
}

/*
===================
P_CreatePassages
===================
Creates passages for all nodes in model
*/
void P_CreatePassages() {
	P_ClearPassages();
dbgcnt = 0;
//realnum = 0;
if (!isTestMap)  return;
	P_NodePassage(cl.worldmodel->nodes, NULL);
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

