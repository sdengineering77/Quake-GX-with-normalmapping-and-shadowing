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
// gl_mesh.c: triangle model functions

#include "../../generic/quakedef.h"

/*
=================================================================

ALIAS MODEL DISPLAY LIST GENERATION

=================================================================
*/

model_t		*aliasmodel;
aliashdr_t	*paliashdr;

qboolean	used[8192];

// the command list holds counts and s/t values that are valid for
// every frame
int		commands[8192];
int		numcommands;

// all frames will have their vertexes rearranged and expanded
// so they are in the order expected by the command list
int		vertexorder[8192];
int		numorder;
int		triorder[8192];
int		numorderedtris;

int		allverts, alltris;

int		stripverts[128];
int		striptris[128];
int		stripcount;



signed short TrackNeighbour(mtriangle_t *tri, int edge) {
	mtriangle_t *remtri;
	int l, m;
	int v0, v1; // edge indices
	int mtriidx = -1;
	int medgeidx = -1;
	v0 = tri->vertindex[edge];
	v1 = tri->vertindex[(edge+1)%3]; 
	
	qboolean dbg  = false, dbg1= false;
	if (strcmp(aliasmodel->name, "progs/h_zombie.mdl") == 0) {
//		dbg = true;
	}
	if (strcmp(aliasmodel->name, "progs/player.mdl") == 0) {
//		Con_DPrintf("============ PLAYER MODEL ==============\r\n");
//		dbg1 = true;
	} else {
//		Con_DPrintf("============ NON PLAYER MODEL ==============\r\n");
	}
	int k;
	if (dbg || dbg1) Con_DPrintf("============ indices: ==============\r\n");
	for(k=0; k<3; k++) {
		int idx = tri->vertindex[k];
		if (dbg || dbg1) Con_DPrintf("%i ", idx);
	}
	if (dbg || dbg1) Con_DPrintf("\r\n");
	if (dbg || dbg1) Con_DPrintf("verts: \r\n");
	for(k=0; k<3; k++) {
		int idx = tri->vertindex[k];
		if (dbg || dbg1) Con_DPrintf("%i %i %i ", poseverts[0][idx].v[0], poseverts[0][idx].v[1], poseverts[0][idx].v[2]);
	}
	if (dbg || dbg1) Con_DPrintf("\r\n");

	
	for(l=0; l<numorderedtris; l++) {
		// curr remaining tri
//		remtri = &triangles[triorder[l]];
		remtri = &triangles[l];
		if (tri == remtri) 
			continue;
		// check remaining triangle's edges
		for(m=0; m<3; m++) {
			// compare verts
			qboolean doit = false, dbg2 = false;
			if ((v1 == remtri->vertindex[m] && v0 == remtri->vertindex[(m+1)%3])) {
				if (dbg) Con_DPrintf("cw and ccw faces front %i \r\n", remtri->facesfront);
				doit = true;
			}
			if ((v0 == remtri->vertindex[m] && v1 == remtri->vertindex[(m+1)%3])) {
				if (dbg || dbg1) Con_DPrintf("both cw faces front %i \r\n", remtri->facesfront);
				doit = true;
				dbg2 = true;
			}


			if (doit) {
				int k;
				if (dbg || dbg2) Con_DPrintf("indices: ");
				for(k=0; k<3; k++) {
					int idx = remtri->vertindex[k];
					if (dbg || dbg2) Con_DPrintf("%i ", idx);
				}
				if (dbg || dbg2) Con_DPrintf("\r\n");
				if (dbg || dbg2) Con_DPrintf("verts: ");
				for(k=0; k<3; k++) {
					int idx = remtri->vertindex[k];
					if (dbg || dbg2) Con_DPrintf("%i %i %i ", poseverts[0][idx].v[0], poseverts[0][idx].v[1], poseverts[0][idx].v[2]);
				}
				if (dbg || dbg2) Con_DPrintf("\r\n");
			
				// register match
				if (mtriidx >= 0) {
					Con_DPrintf("model %s tri %i edge %i has multiple matches...\r\n", aliasmodel->name, l, m);
					return -1;
				} else { 
					mtriidx = l;
				}
				if (medgeidx >= 0) {
					Con_DPrintf("model %s tri %i edge %i already bound...\r\n", aliasmodel->name, l, m);
					return -1;
				} else {
					medgeidx = m;
				}
			}
		}
	}
	return mtriidx;

}



/*
*/
/*void CalcTangentSpace(Vector *vertices, float texst[], Vector *tangent, Vector *bitangent) {
//see:
//http://members.rogers.com/deseric/tangentspace.htm
	float *v0, *v1, *v2;
	float *st0, *st1, *st2;
	Vector vec1, vec2;
	Vector planes[3];
	int i;

	v0 = &vertices[0].x;
	v1 = &vertices[1].x;
	v2 = &vertices[2].x;
	st0 = &texst[0];
	st1 = &texst[2];
	st2 = &texst[4];

	for (i=0; i<3; i++) {
		vec1.x = v1[i]-v0[i];
		vec1.y = st1[0]-st0[0];
		vec1.z = st1[1]-st0[1];
		vec2.x = v2[i]-v0[i];
		vec2.y = st2[0]-st0[0];
		vec2.z = st2[1]-st0[1];
		guVecNormalize(&vec1);
		guVecNormalize(&vec2);
		guVecCross(&vec1, &vec2, &planes[i]);
		if (planes[i].x == 0) {
			tangent->x = 0;
			tangent->y = 0;
			tangent->z = 0;
			bitangent->x = 0;
			bitangent->y = 0;
			bitangent->z = 0;
			return;
		}
	}

	//Tangent = (-planes[B][x]/plane[A][x], -planes[B][y]/planes[A][y], - planes[B][z]/planes[A][z] )
	//Binormal = (-planes[C][x]/planes[A][x], -planes[C][y]/planes[A][y], -planes[C][z]/planes[A][z] )
	tangent->x = -planes[0].y/planes[0].x;
	tangent->y = -planes[1].y/planes[1].x;
	tangent->z = -planes[2].y/planes[2].x;
	bitangent->x = -planes[0].z/planes[0].x;
	bitangent->y = -planes[1].z/planes[1].x;
	bitangent->z = -planes[2].z/planes[2].x;
	guVecNormalize(tangent);
	guVecNormalize(bitangent);
}*/

void CalcTangentSpace(Vector *vertices, float texst[], Vector *tangent, Vector *bitangent) {
	Vector v10, v20;
	Vector v10tex20u, v10tex20v, v20tex10u, v20tex10v;
	float det_inv;
	float tex20u = texst[2*2+0] - texst[0*2+0];
	float tex20v = texst[2*2+1] - texst[0*2+1];
	float tex10u = texst[1*2+0] - texst[0*2+0];
	float tex10v = texst[1*2+1] - texst[0*2+1];
	guVecSub(&vertices[2], &vertices[0], &v20); 
	guVecSub(&vertices[1], &vertices[0], &v10);

	det_inv = 1.0f/(tex10u*tex20v - tex10v*tex20u);
	guVecScale(&v10, &v10tex20u, tex20u); 
	guVecScale(&v20, &v20tex10u, tex10u); 
	guVecScale(&v10, &v10tex20v, tex20v); 
	guVecScale(&v20, &v20tex10v, tex10v); 
	
	tangent->x = det_inv * (v10tex20v.x - v20tex10v.x);
	tangent->y = det_inv * (v10tex20v.y - v20tex10v.y);
	tangent->z = det_inv * (v10tex20v.z - v20tex10v.z);
	bitangent->x = -det_inv * (v20tex10u.x - v10tex20u.x);
	bitangent->y = -det_inv * (v20tex10u.y - v10tex20u.y);
	bitangent->z = -det_inv * (v20tex10u.z - v10tex20u.z);

	guVecNormalize(tangent);
	guVecNormalize(bitangent);

}


/*void CalcTangentSpace(Vector *vertices, float texst[], Vector *tangent, Vector *bitangent) {
	Vector tmp;
	int idxu, idxv;
	float texu21;
	float texv21;
	float texu31;
	float texv31;
	
	// sort u
	if (texst[2*2+0] <= texst[0*2+0] && texst[2*2+0] <= texst[1*2+0]) {
		idxu = 2;
	} else
	if (texst[1*2+0] <= texst[0*2+0] && texst[1*2+0] <= texst[2*2+0]) {
		idxu = 1;
	} else {
		idxu = 0;
	} 
	// sort v
	if (texst[2*2+1] <= texst[0*2+1] && texst[2*2+1] <= texst[1*2+1]) {
		idxv = 2;
	} else
	if (texst[1*2+1] <= texst[0*2+1] && texst[1*2+1] <= texst[2*2+1]) {
		idxv = 1;
	} else {
		idxv = 0;
	} 
	
	texu21 = texst[((1+idxu)%3)*2+0] - texst[((0+idxu)%3)*2+0];
	texv21 = texst[((1+idxv)%3)*2+1] - texst[((0+idxv)%3)*2+1];
	texu31 = texst[((2+idxu)%3)*2+0] - texst[((0+idxu)%3)*2+0];
	texv31 = texst[((2+idxv)%3)*2+1] - texst[((0+idxv)%3)*2+1];
	
	if (texu31 != 0) {
		float texdu = texu21/texu31;
		guVecSub(&vertices[(2+idxu)%3], &vertices[(0+idxu)%3], &tmp); // (p3-p1)
		guVecScale(&tmp, &tmp, texdu); // texu21 * (p3-p1) / texu31
		guVecAdd(&tmp, &vertices[(0+idxu)%3], &tmp); // p1 + texu21 * (p3-p1) / texu31
		guVecSub(&vertices[(1+idxu)%3], &tmp, bitangent); // p2 - (p1 + texu21 * (p3-p1) / texu31)
	} else {
		guVecSub(&vertices[(0+idxu)%3], &vertices[(2+idxu)%3], bitangent); // (p3-p1)
	}
	
	if (texv31 != 0) {
		float texdv = texv21/texv31;
		guVecSub(&vertices[(2+idxv)%3], &vertices[(0+idxv)%3], &tmp); // (p3-p1)
		guVecScale(&tmp, &tmp, texdv); // texv21 * (p3-p1) / texv31
		guVecAdd(&tmp, &vertices[(0+idxv)%3], &tmp); // p1 + texv21 * (p3-p1) / texv31
		guVecSub(&vertices[(1+idxv)%3], &tmp, tangent); // p2 - (p1 + texu21 * (p3-p1) / texu31) 
	} else {
		guVecSub(&vertices[(0+idxv)%3], &vertices[(2+idxv)%3], tangent); // (p3-p1)
	}
	
}*/

void SortST2(float texst[], int *indicesu, int *indicesv) {
	int idxu, idxv, i;
	
	// sort u
	if (texst[2*2+0] <= texst[0*2+0] && texst[2*2+0] <= texst[1*2+0]) {
		idxu = 2;
	} else
	if (texst[1*2+0] <= texst[0*2+0] && texst[1*2+0] <= texst[2*2+0]) {
		idxu = 1;
	} else {
		idxu = 0;
	} 
	// sort v
	if (texst[2*2+1] <= texst[0*2+1] && texst[2*2+1] <= texst[1*2+1]) {
		idxv = 2;
	} else
	if (texst[1*2+1] <= texst[0*2+1] && texst[1*2+1] <= texst[2*2+1]) {
		idxv = 1;
	} else {
		idxv = 0;
	} 

	for(i=0; i<3; i++) {
		indicesu[i] = (i+idxu)%3;
		indicesv[i] = (i+idxv)%3;
	}

}

void SortST(float texst[], int *indicesu, int *indicesv) {
	int i, j;
	// init
	for(i=0; i<3; i++) {
		indicesu[i] = i;
		indicesv[i] = i;
	}
	
	// sort u
	for(i=0; i<3; i++) {
		for(j=i+1; j<3; j++) {
			int idx1 = indicesu[i];
			int idx2 = indicesu[j];
			
			float value1 = texst[idx1*2+0];
			float value2 = texst[idx2*2+0];
			if(value2<value1) {
				indicesu[i] = idx2;
				indicesu[j] = idx1;
			}
		}
	}

	// sort v
	for(i=0; i<3; i++) {
		for(j=i+1; j<3; j++) {
			int idx1 = indicesv[i];
			int idx2 = indicesv[j];
			
			float value1 = texst[idx1*2+1];
			float value2 = texst[idx2*2+1];
			if(value2<value1) {
				indicesv[i] = idx2;
				indicesv[j] = idx1;
			}
		}
	}
}

/*void CalcTangentSpace(Vector *vertices, float texst[], Vector *tangent, Vector *bitangent) {
	int indicesu[3], indicesv[3];
	float texu21;
	float texv21;
	float texu31;
	float texv31;
	float texu23;
	float texv23;
	SortST2(texst, &indicesu[0], &indicesv[0]);
	
	texu21 = texst[indicesv[1]*2+0] - texst[indicesv[0]*2+0];
	texv21 = texst[indicesu[1]*2+1] - texst[indicesu[0]*2+1];
	texu31 = texst[indicesv[2]*2+0] - texst[indicesv[0]*2+0];
	texv31 = texst[indicesu[2]*2+1] - texst[indicesu[0]*2+1];
	texu23 = texu21 - texu31;
	texv23 = texv21 - texv31;
	
	// tangent
	if(texv23 != 0) {
		// T = (v21*P3 - v31*P2) / v23 - P1
		Vector fP3, fP2, dP;
		float f1 = texv21/texv23;
		float f2 = texv31/texv23;
		guVecScale(&vertices[indicesu[2]], &fP3, f1); // v21*P3/v23
		guVecScale(&vertices[indicesu[1]], &fP2, f2); // v31*P2/v23
		guVecSub(&fP3, &fP2, &dP); // (v21*P3 - v31*P2) / v23
		guVecSub(&vertices[indicesu[0]], &dP, tangent);
	} else {
		guVecSub(&vertices[indicesu[2]], &vertices[indicesu[1]], tangent); // (p3-p2)
	}
	
	// bitangent
	if(texu23 != 0) {
		// T = (u21*P3 - u31*P2) / u23 - P1
		Vector fP3, fP2, dP;
		float f1 = texu21/texu23;
		float f2 = texu31/texu23;
		guVecScale(&vertices[indicesv[2]], &fP3, f1); // u21*P3/u23
		guVecScale(&vertices[indicesv[1]], &fP2, f2); // u31*P2/u23
		guVecSub(&fP3, &fP2, &dP); // (u21*P3 - u31*P2) / u23
		guVecSub(&vertices[indicesv[0]], &dP, bitangent);
	} else {
		guVecSub(&vertices[indicesv[1]], &vertices[indicesv[2]], bitangent); // (p3-p2)
	}
	
	
}

*/


/*
================
StripLength
================
*/
int	StripLength (int starttri, int startv)
{
	int			m1, m2;
	int			j;
	mtriangle_t	*last, *check;
	int			k;

	used[starttri] = 2;

	last = &triangles[starttri];

	stripverts[0] = last->vertindex[(startv)%3];
	stripverts[1] = last->vertindex[(startv+1)%3];
	stripverts[2] = last->vertindex[(startv+2)%3];

	striptris[0] = starttri;
	stripcount = 1;

	m1 = last->vertindex[(startv+2)%3];
	m2 = last->vertindex[(startv+1)%3];

	// look for a matching triangle
nexttri:
	for (j=starttri+1, check=&triangles[starttri+1] ; j<pheader->numtris ; j++, check++)
	{
		if (check->facesfront != last->facesfront)
			continue;
		for (k=0 ; k<3 ; k++)
		{
			if (check->vertindex[k] != m1)
				continue;
			if (check->vertindex[ (k+1)%3 ] != m2)
				continue;

			// this is the next part of the fan

			// if we can't use this triangle, this tristrip is done
			if (used[j])
				goto done;

			// the new edge
			if (stripcount & 1)
				m2 = check->vertindex[ (k+2)%3 ];
			else
				m1 = check->vertindex[ (k+2)%3 ];

			stripverts[stripcount+2] = check->vertindex[ (k+2)%3 ];
			striptris[stripcount] = j;
			stripcount++;

			used[j] = 2;
			goto nexttri;
		}
	}
done:

	// clear the temp used flags
	for (j=starttri+1 ; j<pheader->numtris ; j++)
		if (used[j] == 2)
			used[j] = 0;

	return stripcount;
}

/*
===========
FanLength
===========
*/
int	FanLength (int starttri, int startv)
{
	int		m1, m2;
	int		j;
	mtriangle_t	*last, *check;
	int		k;

	used[starttri] = 2;

	last = &triangles[starttri];

	stripverts[0] = last->vertindex[(startv)%3];
	stripverts[1] = last->vertindex[(startv+1)%3];
	stripverts[2] = last->vertindex[(startv+2)%3];

	striptris[0] = starttri;
	stripcount = 1;

	m1 = last->vertindex[(startv+0)%3];
	m2 = last->vertindex[(startv+2)%3];


	// look for a matching triangle
nexttri:
	for (j=starttri+1, check=&triangles[starttri+1] ; j<pheader->numtris ; j++, check++)
	{
		if (check->facesfront != last->facesfront)
			continue;
		for (k=0 ; k<3 ; k++)
		{
			if (check->vertindex[k] != m1)
				continue;
			if (check->vertindex[ (k+1)%3 ] != m2)
				continue;

			// this is the next part of the fan

			// if we can't use this triangle, this tristrip is done
			if (used[j])
				goto done;

			// the new edge
			m2 = check->vertindex[ (k+2)%3 ];

			stripverts[stripcount+2] = m2;
			striptris[stripcount] = j;
			stripcount++;

			used[j] = 2;
			goto nexttri;
		}
	}
done:

	// clear the temp used flags
	for (j=starttri+1 ; j<pheader->numtris ; j++)
		if (used[j] == 2)
			used[j] = 0;

	return stripcount;
}


/*
================
BuildTris

Generate a list of trifans or strips
for the model, which holds for all frames
================
*/
void BuildTris (void)
{
	int		i, j, k;
	int		startv;
	float	s, t;
	int		len, bestlen, besttype;
	int		bestverts[1024];
	int		besttris[1024];
	int		type;

	//
	// build tristrips
	//
	numorderedtris = 0;
	numorder = 0;
	numcommands = 0;
	memset (used, 0, sizeof(used));
	
	for (i=0 ; i<pheader->numtris ; i++)
	{
		// pick an unused triangle and start the trifan
		if (used[i])
			continue;

		bestlen = 0;
		for (type = 0 ; type < 2 ; type++)
//	type = 1;
		{
			for (startv =0 ; startv < 3 ; startv++)
			{
				if (type == 1)
					len = StripLength (i, startv);
				else
					len = FanLength (i, startv);
				if (len > bestlen)
				{
					besttype = type;
					bestlen = len;
					for (j=0 ; j<bestlen+2 ; j++)
						bestverts[j] = stripverts[j];
					for (j=0 ; j<bestlen ; j++)
						besttris[j] = striptris[j];
				}
			}
		}
		
		// mark the tris on the best strip as used
		for (j=0 ; j<bestlen ; j++)
			used[besttris[j]] = 1;

		if (besttype == 1)
			commands[numcommands++] = (bestlen+2);
		else
			commands[numcommands++] = -(bestlen+2);

		// DRS keep triangles
		for (j=0 ; j<bestlen ; j++) {
			triorder[numorderedtris++] = besttris[j];
		}

		for (j=0 ; j<bestlen+2 ; j++)
		{
			// emit a vertex into the reorder buffer
			k = bestverts[j];
			vertexorder[numorder++] = k;

			// emit s/t coords into the commands stream
			s = stverts[k].s;
			t = stverts[k].t;
			if (!triangles[besttris[0]].facesfront && stverts[k].onseam)
				s += pheader->skinwidth / 2;	// on back side
			s = (s + 0.5) / pheader->skinwidth;
			t = (t + 0.5) / pheader->skinheight;

			*(float *)&commands[numcommands++] = s;
			*(float *)&commands[numcommands++] = t;
		}
	}

	commands[numcommands++] = 0;		// end of list marker

	//Con_DPrintf ("%3i tri %3i vert %3i cmd\n", pheader->numtris, numorder, numcommands);

	allverts += numorder;
	alltris += pheader->numtris;
}


void AverageTangent(int pose, int basevertindex, Vector *pt, Vector *pb) {
	// a bit slow but working nicely
	int i, j, k, numav;
	Vector avt, avb;
	numav = 0;
	avb.x = avb.y = avb.z = 0;
	avt.x = avt.y = avt.z = 0;
	// find all triangles that reference vertindex
	// and compute their tangents. Then average them
	for(i=0; i<paliashdr->numtris; i++) {
		mtriangle_t *tri = &triangles[i];
		for(j=0; j<3; j++) {
			if (tri->vertindex[j] == basevertindex) {
				// we have a match, calc tangents
				Vector 			tangent, bitangent, tp[3];
				float 			texst[6];
				dtrivertx_t	*p; 
			
				for (k=0; k<3; k++) {
					float s, t;
					int vertindex = tri->vertindex[k];
					p = &poseverts[pose][vertindex];
					tp[k].x = p->v[0];
					tp[k].y = p->v[1];
					tp[k].z = p->v[2];

					s = stverts[vertindex].s;
					t = stverts[vertindex].t;

//					if (stverts[vertindex].onseam)
//						s = -s;//pheader->skinwidth / 2;	// on back side

					if (!tri->facesfront && stverts[vertindex].onseam)
						s += pheader->skinwidth / 2;	// on back side
					s = (s + 0.5) / paliashdr->skinwidth;
					t = (t + 0.5) / paliashdr->skinheight;
					texst[(k*2)] = s;
					texst[(k*2)+1] = t;
					
				}
				
				CalcTangentSpace(&tp[0], texst, &tangent, &bitangent);
/*				if (!tri->facesfront) { 
					tangent.x *= -1;
					tangent.y *= -1;
					tangent.z *= -1;
				}*/
				guVecAdd(&tangent, &avt, &avt);
				guVecAdd(&bitangent, &avb, &avb);
				numav++;
				break;
			} 
		}
	}
	
	// average the sum
	float scale = 1.0f/((float) numav);
	guVecScale(&avt, pt, scale);
	guVecScale(&avb, pb, scale);
	guVecNormalize(pt);
	guVecNormalize(pb);
}

// assumes that all strips/fans contain either frontside or backside vertices, not both
//void CalcSmoothTangent(mvertxref_t *vertxref, int pose, int firsttriidx, int numtri) {
void CalcSmoothTangent(aliashdr_t *paliashdr, mvertxref_t *vertxref, int pose, int firsttriidx, int numtri) {
	int i, j, k;
	Vector avt, avb;
	mtrivertx_t *verts;
	qboolean facesfront = true;
	int basevertidx = vertxref->vertindex;
	
	avb.x = avb.y = avb.z = 0;
	avt.x = avt.y = avt.z = 0;
	verts 		=	(mtrivertx_t *)((byte *)paliashdr + paliashdr->vertxdata);
	verts 		+= pose * paliashdr->numverts;

	// check if strip is frontside or backside
	for(i=0; i<numtri; i++) {
		mtriangle_t *tri = &triangles[triorder[firsttriidx+i]];
		if (i) {
			if (tri->facesfront != facesfront) {
				Con_DPrintf("Warning! Both front and back triangles in strip/fan!");
				Con_Printf("Warning! Both front and back triangles in strip/fan!");
			}
		}
		facesfront = tri->facesfront;
	}

	// loop through triangles and find vertindex
//	for(i=0; i<numtri; i++) {
	for(i=0; i<paliashdr->numtris; i++) {
		mtriangle_t *tri = &triangles[triorder[i]];
		for(j=0; j<3; j++) {
//			if (tri->vertindex[j] == basevertidx) {
			if (tri->vertindex[j] == basevertidx && tri->facesfront == facesfront) {
				// match! use this triangle's tangent and bitangent
				Vector 			normal, tangent, bitangent, tp[3];
				float 			texst[6];
				mtrivertx_t	*v; 
			
				for (k=0; k<3; k++) {
					float s, t;
					int vertindex = tri->vertindex[k];
					v = &verts[vertindex];
					tp[k].x = v->xyz[0];
					tp[k].y = v->xyz[1];
					tp[k].z = v->xyz[2];

					s = stverts[vertindex].s;
					t = stverts[vertindex].t;
					
					// DRS since vertices have only 1 texcoord, texcoords on vertices on a seam are based on front side 
					// part of the skintexture. So, when the triangle is on the back, the texcoord is translated to the back side part
					// of the texture. Also, the backside texture is mirrored, so for proper tangent calculation s must be inverted

					if (!tri->facesfront && stverts[vertindex].onseam)  
						s += pheader->skinwidth / 2;	// on back side
					s = (s + 0.5) / paliashdr->skinwidth;
					t = (t + 0.5) / paliashdr->skinheight;

					if (!tri->facesfront) s = -s;  

					texst[(k*2)] = s;
					texst[(k*2)+1] = t;
					
				}
				
				CalcTangentSpace(&tp[0], texst, &tangent, &bitangent);
				guVecNormalize(&tangent);
				guVecNormalize(&bitangent);


//if ((basevertidx == 60 || basevertidx == 50 || basevertidx == 51) && strcmp(aliasmodel->name, "progs/v_shot.mdl") == 0) {
//	Con_DPrintf("1) idx %d tri %d tangent %5.3f %5.3f %5.3f\r\n", basevertidx, triorder[i], tangent.x, tangent.y, tangent.z);
//	Con_DPrintf("1) idx %d tri %d bitangent %5.3f %5.3f %5.3f\r\n", basevertidx, triorder[i], bitangent.x, bitangent.y, bitangent.z);
//}

				// orthogonalize the triangle's tangent and bitangent with the vertex's normal 
				// tangent = (t - n * Dot(n, t)).Normalize();
				// tangent    = (Tplane * Dot(Nplane, N) - Nplane * Dot(Tplane, N)).Normalize()
				// bitangent = (Bplane * Dot(Nplane, N) - Nplane * Dot(Bplane, N)).Normalize()
				Vector np;
				v = &verts[basevertidx]; // get the base vertex's normal
				GL_VecS8ToF32(&v->normal[0], &normal);
				// plane normal
				guVecCross(&tangent, &bitangent, &np);
				//guVecSub(&tp[2], &tp[1], &t);
				//guVecSub(&tp[1], &tp[0], &b);
				float cost = guVecDotProduct(&normal, &tangent);
				float cosb = guVecDotProduct(&normal, &bitangent);
				float sint = sqrtf(1-powf(cost, 2));
				float sinb = sqrtf(1-powf(cosb, 2));
				// t = sint * t + cost * np
				tangent.x = tangent.x * sint - np.x * cost;
				tangent.y = tangent.y * sint - np.y * cost;
				tangent.z = tangent.z * sint - np.z * cost;
				bitangent.x = bitangent.x * sinb - np.x * cosb;
				bitangent.y = bitangent.y * sinb - np.y * cosb;
				bitangent.z = bitangent.z * sinb - np.z * cosb;	
				
				/*
				float dnpn = guVecDotProduct(&np, &normal);
				float dtpn = guVecDotProduct(&tangent, &normal);
				float dbpn = guVecDotProduct(&bitangent, &normal);
				tangent.x = tangent.x * dnpn - np.x * dtpn;
				tangent.y = tangent.y * dnpn - np.y * dtpn;
				tangent.z = tangent.z * dnpn - np.z * dtpn;
				bitangent.x = bitangent.x * dnpn - np.x * dbpn;
				bitangent.y = bitangent.y * dnpn - np.y * dbpn;
				bitangent.z = bitangent.z * dnpn - np.z * dbpn;
				*/
				
				/*float dpt = guVecDotProduct(&normal, &tangent);
				float dpb = guVecDotProduct(&normal, &bitangent);
				tangent.x = tangent.x - normal.x * dpt;
				tangent.y = tangent.y - normal.y * dpt;
				tangent.z = tangent.z - normal.z * dpt;
				bitangent.x = bitangent.x - normal.x * dpb;
				bitangent.y = bitangent.y - normal.y * dpb;
				bitangent.z = bitangent.z - normal.z * dpb;
				*/
				guVecNormalize(&tangent);
				guVecNormalize(&bitangent);
if ((basevertidx == 60 || basevertidx == 50|| basevertidx == 51) && strcmp(aliasmodel->name, "progs/v_shot.mdl") == 0) {
//	Con_DPrintf("2) idx %d tri %d tangent %5.3f %5.3f %5.3f\r\n", basevertidx, triorder[i], tangent.x, tangent.y, tangent.z);
//	Con_DPrintf("2) idx %d tri %d bitangent %5.3f %5.3f %5.3f\r\n", basevertidx, triorder[i], bitangent.x, bitangent.y, bitangent.z);
}

if ((basevertidx == 60) && strcmp(aliasmodel->name, "progs/v_shot.mdl") == 0 && triorder[i] != 50) {
	break;
}				
if ((basevertidx == 61) && strcmp(aliasmodel->name, "progs/v_shot.mdl") == 0 && triorder[i] != 50) {
	break;
}				
				// add to average
				guVecAdd(&tangent, &avt, &avt);
				guVecAdd(&bitangent, &avb, &avb);
				
				break;
			}
			// 
		}
	}

	guVecNormalize(&avt);
	guVecNormalize(&avb);
if ((basevertidx == 60 || basevertidx == 50 || basevertidx == 51) && strcmp(aliasmodel->name, "progs/v_shot.mdl") == 0) {
//	Con_DPrintf("3) idx %d AVG tangent %5.3f %5.3f %5.3f\r\n", basevertidx, avt.x, avt.y, avt.z);
//	Con_DPrintf("3) idx %d AVG bitangent %5.3f %5.3f %5.3f\r\n", basevertidx, avb.x, avb.y, avb.z);
	Vector normal;
	mtrivertx_t  *v = &verts[basevertidx]; // get the base vertex's normal
	GL_VecS8ToF32(&v->normal[0], &normal);
	
//	Con_DPrintf("3) idx %d AVG normal %5.3f %5.3f %5.3f\r\n", basevertidx, normal.x, normal.y, normal.z);
}
	
	vertxref->tangent[0] = avt.x * 127.0f; 
	vertxref->tangent[1] = avt.y * 127.0f; 
	vertxref->tangent[2] = avt.z * 127.0f; 
	vertxref->bitangent[0] = avb.x * 127.0f; 
	vertxref->bitangent[1] = avb.y * 127.0f; 
	vertxref->bitangent[2] = avb.z * 127.0f; 


}

void CalcTangents(aliashdr_t *paliashdr, int posenum) {
	int					*order;
	int					count, numtris;
	mvertxref_t 	*vertxrefs;	
	int					triidx = 0, i;
	
	// get vertex index pointer list
	vertxrefs	=	(mvertxref_t *) ((byte *)paliashdr + paliashdr->vertxrefdata);
	// get raw vertices
	order 		=	(int *)((byte *)paliashdr + paliashdr->commands);

	while (1) 	{
		// get the vertex count and primitive type
		count = *order++;
		if (!count)
			break;		// done
		if (count < 0) {
			count = -count;
		}
		numtris = count - 2;
		for(i=0; i<count; i++, vertxrefs++) {
			CalcSmoothTangent(paliashdr, vertxrefs, posenum, triidx, numtris);
//			CalcSmoothTangent(vertxrefs, posenum, triidx, numtris);
		}
		triidx += numtris;
		order += 2 * count;
	}
			
}


/*
================
GL_MakeAliasModelDisplayLists
================
*/
void GL_MakeAliasModelDisplayLists (model_t *mdl, aliashdr_t *hdr)
{
	int					i, j, k;
	int					*cmds;
	mtrivertx_t		*mverts;
	maliastri_t		*mtridata, *currtridata;
	mvertxref_t		*mvertxrefs;
	mtriplane_t		*mplanes;
	
	aliasmodel = mdl;
	paliashdr = hdr;	// (aliashdr_t *)Mod_Extradata (m);

	//
	// build it from scratch
	//
	//Con_Printf ("meshing %s...\n",m->name); // ELUTODO: cache them, using hashes to avoid original glquake problems

	BuildTris ();		// trifans or lists

	// save the data out

	paliashdr->poseverts = paliashdr->numverts;//numorder;

	cmds = Hunk_Alloc (numcommands * 4);
	paliashdr->commands = (byte *)cmds - (byte *)paliashdr;
	memcpy (cmds, commands, numcommands * 4);

	Con_DPrintf("numverts: %i numordered verts %i\r\n", paliashdr->numverts, numorder);

	// create, vertex order lists (the tristrip and trifan lists generated by buildtris)
	// each entry references the corresponding unordered vertex
	mvertxrefs = Hunk_Alloc (numorder * sizeof(mvertxref_t) );
	paliashdr->vertxrefdata = (byte *) mvertxrefs - (byte *)paliashdr;
	for (j=0 ; j<numorder; j++) {
		mvertxrefs[j].vertindex = vertexorder[j];
	}
	
	// create mtrivertx_t data (instead of old trivertx_t)
	// this contains, per pose, unique vertices (order lists duplicate vertices)
	mverts = Hunk_Alloc (paliashdr->numposes * paliashdr->numverts * sizeof(mtrivertx_t) );
	paliashdr->vertxdata = (byte *)mverts - (byte *)paliashdr;
	for (i=0 ; i<paliashdr->numposes ; i++) {
		for (j=0 ; j<paliashdr->numverts; j++) {
			vec3_t			t, b;
			float 			*normal;
			mtrivertx_t 	*mvert = &mverts[i * paliashdr->numverts + j];
			dtrivertx_t 	*dvert = &poseverts[i][j]; // disk version
			// copy and scale vertices (so we can use unit transform matrices)
			mvert->xyz[0] = dvert->v[0] * paliashdr->scale[0] + paliashdr->scale_origin[0];
			mvert->xyz[1]  = dvert->v[1] * paliashdr->scale[1] + paliashdr->scale_origin[1];
			mvert->xyz[2]  = dvert->v[2] * paliashdr->scale[2] + paliashdr->scale_origin[2];
			
			// copy normal
			normal = r_avertexnormals[dvert->lightnormalindex];
			mvert->normal[0] = 127.0f * normal[0];
			mvert->normal[1] = 127.0f * normal[1];
			mvert->normal[2] = 127.0f * normal[2];
			// tangents
			AverageTangent(i, vertexorder[j], (Vector *) &t[0], (Vector *) &b[0]);
			// Gram-Schmidt orthogonalize
			// tangent = (t - n * Dot(n, t)).Normalize();
			//for(k=0; k<3; k++) {
			//	t[k] = t[k] - normal[k] * guVecDotProduct((Vector *) &normal[0], (Vector *) &t[0]);		
			//	b[k] = b[k] - normal[k] * guVecDotProduct((Vector *) &normal[0], (Vector *) &b[0]);		
			//}
			guVecNormalize((Vector *) &t[0]);
			guVecNormalize((Vector *) &b[0]);

			// store em
			for (k=0; k<3; k++) {
				mvert->tangent[k] = t[k] * 127.0f; 
				mvert->bitangent[k] = b[k] * 127.0f; 
				//mvert->tangent[0] = t.x * 127.0f; 
				//mvert->tangent[1] = t.y * 127.0f;
				//mvert->tangent[2] = t.z * 127.0f;
				//mvert->bitangent[0] = b.x * 127.0f; 
				//mvert->bitangent[1] = b.y * 127.0f;
				//mvert->bitangent[2] = b.z * 127.0f;
			}
		}
	}

	// tangents at refs
	for (i=0 ; i<paliashdr->numposes ; i++) {
		CalcTangents(paliashdr, i);
	}

	// create triangle lists for volume shadowing purposes
	//	mtridata = Hunk_Alloc (numorderedtris * sizeof(maliastri_t));
	mtridata = Hunk_Alloc (paliashdr->numtris * sizeof(maliastri_t));
	paliashdr->tridata = (byte *) mtridata - (byte *) paliashdr;

	//	for (j=0 ; j<numorderedtris; j++) {
	for (j=0 ; j<paliashdr->numtris; j++) {
		// use this to save to
		currtridata = &mtridata[j];

		for (k=0; k<3; k++) {
			currtridata->vertindex[k] = triangles[j].vertindex[k]; // triangles[triorder[j]]
		}
	}
	

	// create triangle plane lists for each pose
	mplanes	= Hunk_Alloc(paliashdr->numposes * paliashdr->numtris * sizeof(mtriplane_t));
	paliashdr->planedata = (byte *) mplanes - (byte *) paliashdr;

	for (i=0 ; i<paliashdr->numposes ; i++) {
		// for (j=0 ; j<numorderedtris; j++) { // !! let op, als je wilt orderen hoeft dat alleen bij triangle lists, niet hier
		for (j=0 ; j<paliashdr->numtris; j++) { // we have as many planes as there are triangles
			// use this to save to
//			currtridata = &mtridata[i * numorderedtris + j];
			mtriplane_t *currplane = &mplanes[i * paliashdr->numtris + j];

			// get triangle k=0 ... k=3 points
			float 		dist;
			Vector		tp[3], normal, t, b;
			mtrivertx_t	*p;
			
			for (k=0; k<3; k++) {
				p = &mverts[i * paliashdr->numverts + mtridata[j].vertindex[k]]; 
				tp[k].x = p->xyz[0];
				tp[k].y = p->xyz[1];
				tp[k].z = p->xyz[2];
			}
			
			// calculate normal
			guVecSub(&tp[2], &tp[1], &t);
			guVecSub(&tp[1], &tp[0], &b);
			if ((fabs(t.x) < 0.1 && fabs(t.y) < 0.1 && fabs(t.z) < 0.1) ||
				(fabs(b.x) < 0.1 && fabs(b.y) < 0.1 && fabs(b.z) < 0.1)) {
				normal.x = normal.y = normal.z = 0;
			} else {
				guVecCross(&t, &b, &normal);
				guVecNormalize(&normal);
			}
			
			// calculate dist
			dist = guVecDotProduct(&tp[1], &normal);
			
			// save data
			currplane->dist = dist;			
			currplane->normal[0] = normal.x;// * 127.0f;  
			currplane->normal[1] = normal.y;// * 127.0f;  
			currplane->normal[2] = normal.z;// * 127.0f;  
		}
	}

	// create neighbour data
	
	for (j=0 ; j<numorderedtris; j++) {
		for(i=0; i<3; i++) {
			mtridata[j].neighbour[i] = -1;
		}
	}
	
	qboolean dbg = false;
	for (j=0 ; j<numorderedtris; j++) {
		int k;//, l, m;//, n;
		mtriangle_t *currtri;//, *remtri; 
		// fetch tri j
		//		currtri = &triangles[triorder[j]]; // denk aan neighbour functie
		currtri = &triangles[j];
		// loop thru j's vertices
		for(k=0; k<3; k++) {
			//neighbours[j][k] = TrackNeighbour(currtri, k);
			mtridata[j].neighbour[k] = TrackNeighbour(currtri, k);
			if (strcmp(aliasmodel->name, "progs/player.mdl") == 0) {
				dbg = true;
			}
			//if (dbg) {
			//				Con_DPrintf("tri %i edge %i neighbour %i \r\n", j, k, neighbours[j][k]);
			//}
		}
		//if (mtridata[j].neighbour[0] == mtridata[j].neighbour[1] || 
		//	mtridata[j].neighbour[1] == mtridata[j].neighbour[2] ||
		//	mtridata[j].neighbour[2] == mtridata[j].neighbour[0]) {
			//			Con_DPrintf("============ Duplicate neighbours on same tri ===============\r\n");
			
		//}
			
	}
	
}

