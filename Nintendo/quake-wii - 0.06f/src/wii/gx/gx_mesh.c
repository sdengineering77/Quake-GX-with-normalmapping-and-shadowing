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
void CalcTangentSpace(Vector *vertices, float texst[], Vector *tangent, Vector *bitangent) {
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
}


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


void AverageTangent(int pose, int vertindex, Vector *pt, Vector *pb) {
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
			if (tri->vertindex[j] == vertindex) {
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

					if (!tri->facesfront && stverts[vertindex].onseam)
						s += pheader->skinwidth / 2;	// on back side
					s = (s + 0.5) / paliashdr->skinwidth;
					t = (t + 0.5) / paliashdr->skinheight;
					
					texst[(k*2)] = s;
					texst[(k*2)+1] = t;
					
				}
				
				CalcTangentSpace(&tp[0], texst, &tangent, &bitangent);
				guVecAdd(&tangent, &avt, &avt);
				guVecAdd(&bitangent, &avb, &avb);
				numav++;
				break;
			} 
		}
	}
	
	// average the sum
	float scale = 1.0f/((float) numav);
	guVecScale(&avt, &avt, scale);
	guVecScale(&avb, &avb, scale);
	pt->x = avt.x;
	pt->y = avt.y;
	pt->z = avt.z;
	pb->x = avb.x;
	pb->y = avb.y;
	pb->z = avb.z;
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
	
	aliasmodel = mdl;
	paliashdr = hdr;	// (aliashdr_t *)Mod_Extradata (m);

	//
	// build it from scratch
	//
	//Con_Printf ("meshing %s...\n",m->name); // ELUTODO: cache them, using hashes to avoid original glquake problems

	BuildTris ();		// trifans or lists

	// save the data out

	paliashdr->poseverts = numorder;

	cmds = Hunk_Alloc (numcommands * 4);
	paliashdr->commands = (byte *)cmds - (byte *)paliashdr;
	memcpy (cmds, commands, numcommands * 4);

	// create mtrivertx_t data (instead of old trivertx_t)
	mverts = Hunk_Alloc (paliashdr->numposes * paliashdr->poseverts * sizeof(mtrivertx_t) );
//Con_DPrintf("num: %i\r\n", (paliashdr->numposes * paliashdr->poseverts * sizeof(mtrivertx_t)));
	paliashdr->mvertxdata = (byte *)mverts - (byte *)paliashdr;
	for (i=0 ; i<paliashdr->numposes ; i++) {
		for (j=0 ; j<numorder ; j++) {
			Vector			t, b;
			float 			*normal;
			mtrivertx_t 	*mvert = mverts;
			dtrivertx_t 	*dvert = &poseverts[i][vertexorder[j]]; // disk version
			// copy vertices
			mvert->v[0] = dvert->v[0];
			mvert->v[1] = dvert->v[1];
			mvert->v[2] = dvert->v[2];
			// copy normal
			normal = r_avertexnormals[dvert->lightnormalindex];
			mvert->normal[0] = 127.0f * normal[0];
			mvert->normal[1] = 127.0f * normal[1];
			mvert->normal[2] = 127.0f * normal[2];
			// tangents are set after planes have been calculated
			AverageTangent(i, vertexorder[j], &t, &b);
			// store em
			mverts->tangent[0] = t.x * 127.0f; 
			mverts->tangent[1] = t.y * 127.0f;
			mverts->tangent[2] = t.z * 127.0f;
			mverts->bitangent[0] = b.x * 127.0f; 
			mverts->bitangent[1] = b.y * 127.0f;
			mverts->bitangent[2] = b.z * 127.0f;
			
			mverts++;
		}
	}

	// vert tangents bitangents
/*	for(i=0; i<paliashdr->numposes; i++) {
		Vector 	tangent, bitangent;
		int 		*order, count;
		// point to vertices for this pose
		mverts 	= (mtrivertx_t *)((byte *)paliashdr + paliashdr->mvertxdata);
		mverts  += i * paliashdr->poseverts;
		order 	= (int *)((byte *)paliashdr + paliashdr->commands);
		j = 0;
		while (1) {
			// get the vertex count and primitive type
			count = *order++;
			if (!count)
				break;		// done
			if (count < 0) {
				count = -count;
			}

			do {
				vec3_t    		vnormal32, t, b, projt, projb;
				Vector			tp[3];
				dtrivertx_t	*p; 
				float				texst[6];
			
				for (k=0; k<3; k++) {
					float s, t;
					int triindex = triorder[j];
					int vertindex = triangles[triindex].vertindex[k];
					p = &poseverts[i][vertindex];
					tp[k].x = p->v[0];
					tp[k].y = p->v[1];
					tp[k].z = p->v[2];

					s = stverts[vertindex].s;
					t = stverts[vertindex].t;

					if (!triangles[triindex].facesfront && stverts[vertindex].onseam)
						s += pheader->skinwidth / 2;	// on back side
					s = (s + 0.5) / pheader->skinwidth;
					t = (t + 0.5) / pheader->skinheight;
					
					texst[(k*2)] 		= s;
					texst[(k*2)+1] 	= t;
					
				}
			
				// calculate tangents at triangle level
				CalcTangentSpace(&tp[0], texst, &tangent, &bitangent);
				// recalc to vertex normal's plane
				// normal S8 to F32
				GL_VecS8ToF32(&mverts->normal[0],  (Vector *) &vnormal32[0]);
				// project plane tangents to vertex normal
				t[0] = tangent.x;
				t[1] = tangent.y;
				t[2] = tangent.z;
				b[0] = bitangent.x;
				b[1] = bitangent.y;
				b[2] = bitangent.z;
				// Gram-Schmidt orthogonalize
				// tangent = (t - n * Dot(n, t)).Normalize();
				for(k=0; k<3; k++) {
					projt[k] = t[k] - vnormal32[k] * guVecDotProduct((Vector *) &vnormal32[0], (Vector *) &t[0]);		
					projb[k] = b[k] - vnormal32[k] * guVecDotProduct((Vector *) &vnormal32[0], (Vector *) &b[0]);		
				}
//				ProjectPointOnPlane(projt, t, vnormal32);
//				ProjectPointOnPlane(projb, b, vnormal32);
				guVecNormalize((Vector *) &projt[0]);
				guVecNormalize((Vector *) &projb[0]);
				// store em
				mverts->tangent[0] = projt[0] * 127.0f; 
				mverts->tangent[1] = projt[1] * 127.0f;
				mverts->tangent[2] = projt[2] * 127.0f;
				mverts->bitangent[0] = projb[0] * 127.0f; 
				mverts->bitangent[1] = projb[1] * 127.0f;
				mverts->bitangent[2] = projb[2] * 127.0f;
				
				// the last three vertices of a command come from the same triangle
				if (count > 2) j++;
			
				mverts++;
				order += 2;
				count --;
			} while (count > 0);
		}
	}*/
	
	
	// triangle normal bitangent tangent's
	// alloc nbt data for all ordered triangles and corresponding poses
	mtridata = Hunk_Alloc (paliashdr->numposes * numorderedtris * sizeof(maliastri_t));
	paliashdr->tridata = (byte *) mtridata - (byte *) paliashdr;

//	Con_DPrintf("============= ordered %i tris %i \r\n", numorderedtris, paliashdr->numtris);
	// at his point poseverts is still valid, so we loop the triorder list
	// and create nbt data for each pose
	for (i=0 ; i<paliashdr->numposes ; i++) {
		for (j=0 ; j<numorderedtris; j++) {
			// use this to save to
//			currtridata = &mtridata[i * numorderedtris + j];
			currtridata = &mtridata[i * paliashdr->numtris + j];

			// get triangle k=0 ... k=3 points
			float 		dist;
			Vector		tp[3], normal, t, b;
			dtrivertx_t	*p; 
			
			for (k=0; k<3; k++) {
//				p = &poseverts[i][triangles[triorder[j]].vertindex[k]];
				p = &poseverts[i][triangles[j].vertindex[k]];
				tp[k].x = p->v[0];
				tp[k].y = p->v[1];
				tp[k].z = p->v[2];
				currtridata->v[k][0] = p->v[0];
				currtridata->v[k][1] = p->v[1];
				currtridata->v[k][2] = p->v[2];
			}
			
			// calculate normal
			guVecSub(&tp[2], &tp[1], &t);
			guVecSub(&tp[1], &tp[0], &b);
			guVecCross(&t, &b, &normal);
			guVecNormalize(&normal);
			
			// calculate dist
			dist = guVecDotProduct(&tp[1], &normal);
			
			// save data
			currtridata->dist = dist;			
			currtridata->normal[0] = normal.x * 127.0f;  
			currtridata->normal[1] = normal.y * 127.0f;  
			currtridata->normal[2] = normal.z * 127.0f;  
		}
	}

	// neighbours
	trianglenbs_t	*neighbours;
	neighbours = Hunk_Alloc (numorderedtris * sizeof(trianglenbs_t));
	paliashdr->neighbourdata = (byte *)neighbours - (byte *)paliashdr;
	
	for (j=0 ; j<numorderedtris; j++) {
		for(i=0; i<3; i++) {
			neighbours[j][i] = -1;
		}
	}
	
/*	{
		int					*order;
		int					count, end;
		
		order 	= (int *)((byte *)paliashdr + paliashdr->commands);
		j = 0;
		while (1) {
			// get the vertex count and primitive type
			count = *order++;
			if (!count)
				break;		// done
			if (count < 0) {
				count = -count;
			}
			end = j + count - 3; // numtri = numvert-2, last tri is excluded
			
			for (;j<end; j++) {
				int k, l, m;//, n;
				mtriangle_t *currtri, *remtri; 
				// fetch tri j
				currtri = &triangles[triorder[j]];
				// loop thru j's vertices
				for(k=0; k<3; k++) {
					int v0, v1; // edge
					int matchidx = -1;
					qboolean match = false;
					v0 = currtri->vertindex[k];
					v1 = currtri->vertindex[(k+1)%3]; 
					// check edge against remaining triangles
					l = j + 1;
					// curr remaining tri
					remtri = &triangles[triorder[l]];
						
					// check remaining triangle's edges
					for(m=0; m<3; m++) {
						// compare verts (a bit less elegant since my mtri's contains direct coordinates)
						if ((v1 == remtri->vertindex[m] && v0 == remtri->vertindex[(m+1)%3]) ) {
							// register match on neighbouring tri
							if (match) {
								Con_DPrintf("model %s tri %i edge %i already multiple matches...\r\n", mdl->name, l, m);
							} else { 
								match = true;
							}
							if (neighbours[l][m] != -1) {
								Con_DPrintf("model %s tri %i edge %i already bound...\r\n", mdl->name, l, m);
							}
							
							neighbours[l][m] = j;// remtridata->neighbours[m] = j;
							// register matching neighbour on current tri
							if (neighbours[j][k] != -1) {
								Con_DPrintf("model %s tri %i edge %i already bound...\r\n", mdl->name, j, k);
							}
							neighbours[j][k] = l;
							break;
						}
					}
				}
			}
			
			order += 2 * count;
		}
	}*/
	qboolean dbg = false;
	for (j=0 ; j<numorderedtris; j++) {
		int k, l, m;//, n;
		mtriangle_t *currtri, *remtri; 
		// fetch tri j
//		currtri = &triangles[triorder[j]]; // denk aan neighbour functie
		currtri = &triangles[j];
		// loop thru j's vertices
		for(k=0; k<3; k++) {
			neighbours[j][k] = TrackNeighbour(currtri, k);
			if (strcmp(aliasmodel->name, "progs/player.mdl") == 0) {
				dbg = true;
			}
			if (dbg) {
//				Con_DPrintf("tri %i edge %i neighbour %i \r\n", j, k, neighbours[j][k]);
			}
		}
		if (neighbours[j][0] == neighbours[j][1] || 
			neighbours[j][1] == neighbours[j][2] ||
			neighbours[j][2] == neighbours[j][0]) {
//			Con_DPrintf("============ Duplicate neighbours on same tri ===============\r\n");
			
		}
			
	}
	
/*	for (j=0 ; j<numorderedtris; j++) {
		int k, l, m;//, n;
		mtriangle_t *currtri, *remtri; 
		// fetch tri j
		currtri = &triangles[triorder[j]];
		// loop thru j's vertices
		for(k=0; k<3; k++) {
			int v0, v1; // edge
			int matchidx = -1;
			qboolean match = false;
			v0 = currtri->vertindex[k];
			v1 = currtri->vertindex[(k+1)%3]; 
			// check edge against remaining triangles
//			for(l=j+1; l<numorderedtris && !match; l++) {
			for(l=j+1; l<numorderedtris; l++) {
				// curr remaining tri
				remtri = &triangles[triorder[l]];
				
				if (remtri->facesfront != currtri->facesfront)
					continue;
				
				// check remaining triangle's edges
//				for(m=0; m<3 && !match; m++) {
				for(m=0; m<3; m++) {
					// compare verts (a bit less elegant since my mtri's contains direct coordinates)
					if ((v1 == remtri->vertindex[m] && v0 == remtri->vertindex[(m+1)%3]) ) {
						// register match on neighbouring tri
						if (match) {
							Con_DPrintf("model %s tri %i edge %i already multiple matches...\r\n", mdl->name, l, m);
						} else { 
							match = true;
						}
						if (neighbours[l][m] != -1) {
							Con_DPrintf("model %s tri %i edge %i already bound...\r\n", mdl->name, l, m);
						}
						
						neighbours[l][m] = j;// remtridata->neighbours[m] = j;
						// register matching neighbour on current tri
						if (neighbours[j][k] != -1) {
							Con_DPrintf("model %s tri %i edge %i already bound...\r\n", mdl->name, j, k);
						}
						neighbours[j][k] = l;
						break;
					}
				}
			}
		}
	}
*/
/*	mplanenbt_t 	*nbt;
	int					*order;
	int					count;
	int					posenum = 0;
	
	verts 	= (dtrivertx_t *)((byte *)paliashdr + paliashdr->posedata);
	verts  += posenum * paliashdr->poseverts;
	nbt 		= (mplanenbt_t 	*) ((byte *)paliashdr + paliashdr->nbtdata);
	nbt 	  += posenum * paliashdr->poseverts;
	order 	= (int *)((byte *)paliashdr + paliashdr->commands);

	Con_DPrintf("===================\r\n");
	while (1) {
		// get the vertex count and primitive type
		count = *order++;
		Con_DPrintf("==== count: %i \r\n", count);
		if (!count)
			break;		// done
		if (count < 0) {
			count = -count;
			dtrivertx_t *p[3];
			p[0] = verts; // p0
			verts++;
			order += 2;
			count--;
			do {
				p[1] = verts;
				p[2] = verts + 1;
				Con_DPrintf("==== verts: \r\n");
				for (i=0; i<3; i++) {
					Con_DPrintf("%i %i %i - ", p[i]->v[0], p[i]->v[1], p[i]->v[2]);
				}

				Con_DPrintf("\r\n");
				Con_DPrintf("==== tridata: \r\n");
				for (i=0; i<3; i++) {
					Con_DPrintf("%i %i %i - ", nbt->v[i][0], nbt->v[i][1], nbt->v[i][2]);
				}
				Con_DPrintf("\r\n");
				
				verts+=1;
				nbt++;
				order += 2;
				count --;
			} while (count > 1);
			order += 2;
			verts+=1;

		} else {
			int ccw = 0;
			do {
				Con_DPrintf("==== verts: ccw %i\r\n", ccw);
				for (i=0; i<3; i++) {
					Con_DPrintf("%i %i %i - ", verts[i].v[0], verts[i].v[1], verts[i].v[2]);
				}

				Con_DPrintf("\r\n");
				Con_DPrintf("==== tridata: \r\n");
				for (i=0; i<3; i++) {
					Con_DPrintf("%i %i %i - ", nbt->v[i][0], nbt->v[i][1], nbt->v[i][2]);
				}
				Con_DPrintf("\r\n");
				
				verts++;
				nbt++;
				order += 2;
				count --;
				ccw ^= 1;
			} while (count > 2);
			order += 4;
			verts+=2;
		}
	}
*/	

}


/*void _GL_MakeAliasModelDisplayLists (model_t *m, aliashdr_t *hdr)
{
	int					i, j, k;
	int					*cmds;
	mtrivertx_t		*verts;
	maliastri_t		*tridata, *currtridata;
	Vector				*tangent, *bitangent;
	Vector				tangents[MAXALIASVERTS], bitangents[MAXALIASVERTS];
	
	aliasmodel = m;
	paliashdr = hdr;	// (aliashdr_t *)Mod_Extradata (m);

	//
	// build it from scratch
	//
	//Con_Printf ("meshing %s...\n",m->name); // ELUTODO: cache them, using hashes to avoid original glquake problems

	BuildTris ();		// trifans or lists

	// save the data out

	paliashdr->poseverts = numorder;

	cmds = Hunk_Alloc (numcommands * 4);
	paliashdr->commands = (byte *)cmds - (byte *)paliashdr;
	memcpy (cmds, commands, numcommands * 4);

	// create mtrivertx_t data (instead of old trivertx_t)
	verts = Hunk_Alloc (paliashdr->numposes * paliashdr->poseverts * sizeof(mtrivertx_t) );
	paliashdr->posedata = (byte *)verts - (byte *)paliashdr;
	for (i=0 ; i<paliashdr->numposes ; i++) {
		for (j=0 ; j<numorder ; j++) {
			float 			*normal;
			mtrivertx_t 	*mvert = verts;
			trivertx_t 	*dvert = &poseverts[i][vertexorder[j]]; // disk version
			// copy vertices
			mvert->v[0] = dvert->v[0];
			mvert->v[1] = dvert->v[1];
			mvert->v[2] = dvert->v[2];
int k;
for(k=0; k<3; k++) {
Con_DPrintf("dvert %i %i %i - ", dvert->v[0], dvert->v[1], dvert->v[2]);
}
for(k=0; k<3; k++) {
Con_DPrintf("mvert %i %i %i - ", mvert->v[0], mvert->v[1], mvert->v[2]);
}
			// copy normal
			normal = r_avertexnormals[dvert->lightnormalindex];
			mvert->normal[0] = 127.0f * normal[0];
			mvert->normal[1] = 127.0f * normal[1];
			mvert->normal[2] = 127.0f * normal[2];
			// tangents are set after planes have been calculated
			verts++;
		}
	}
//	Con_DPrintf("\r\n");
	
	// triangle plane normals and distances
	// alloc tri data for all ordered triangles and corresponding poses
	tridata = Hunk_Alloc (paliashdr->numposes * numorderedtris * sizeof(maliastri_t));
	paliashdr->tridata = (byte *) tridata - (byte *) paliashdr;

//	Con_DPrintf("============= ordered %i tris %i \r\n", numorderedtris, paliashdr->numtris);
	// at his point poseverts is still valid, so we loop the triorder list
	// and create data for each pose
	tangent 	= &tangents[0];
	bitangent = &bitangents[0];
	for (i=0 ; i<paliashdr->numposes ; i++) {
		for (j=0 ; j<numorderedtris; j++) {
			// use this to save to
			currtridata = &tridata[i * numorderedtris + j];

			// get triangle k=0 ... k=3 points
			float 			dist;
			Vector			tp[3], normal, t, b;
			trivertx_t		*p; 
			stvert_t		texst[3];
			
			for (k=0; k<3; k++) {
				p = &poseverts[i][triangles[triorder[j]].vertindex[k]];
				
				// triangle vertices
				currtridata->v[k][0] = p->v[0];
				currtridata->v[k][1] = p->v[1];
				currtridata->v[k][2] = p->v[2];
				tp[k].x = p->v[0];
				tp[k].y = p->v[1];
				tp[k].z = p->v[2];
				texst[k] = stverts[triangles[triorder[j]].vertindex[k]];
			}
			
			// calculate normal
			guVecSub(&tp[2], &tp[1], &t);
			guVecSub(&tp[1], &tp[0], &b);
			guVecCross(&t, &b, &normal);
			guVecNormalize(&normal);
			
			// calculate dist
			dist = guVecDotProduct(&tp[1], &normal);
			
			// TODO calc texspace tangent bitangent

			// save data
			currtridata->dist = dist;			
			currtridata->normal[0] = normal.x * 127.0f;  
			currtridata->normal[1] = normal.y * 127.0f;  
			currtridata->normal[2] = normal.z * 127.0f;  
//		if (fabs(normal.x) >= 1.0f || fabs(normal.y) >= 1.0f || fabs(normal.z) >= 1.0f) {
//Con_DPrintf("=== It happens!!! ===\r\n");			
//Con_DPrintf("%5.2f %5.2f %5.2f - %i %i %i - %i %i %i \r\n", normal.x, normal.y, normal.z, 
//	((int) normal.x * 128), ((int) normal.y * 128), ((int) normal.z * 128),
//	currnbtdata->normal[0], currnbtdata->normal[1], currnbtdata->normal[2]);			
//		}	
			// these will be used in next iteration
			CalcTangentSpace(&tp[0], &texst[0], tangent, bitangent);

//			tangent[0] = t.x * 127.0f;  
//			tangent[1] = t.y * 127.0f;  
//			tangent[2] = t.z * 127.0f;  
//			bitangent[0] = b.x * 127.0f;  
//			bitangent[1] = b.y * 127.0f;  
//			bitangent[2] = b.z * 127.0f;  
			tangent++;
			bitangent++;
		}
	}
Con_DPrintf("=== Tangentspace ===\r\n");			
	// setup tangentspace for vertices
	verts 	= (mtrivertx_t *)((byte *)paliashdr + paliashdr->posedata);
	for (i=0 ; i<paliashdr->numposes ; i++) {
		// find proper tridata
		tangent 	= &tangents[i * paliashdr->numtris];
		bitangent = &bitangents[i * paliashdr->numtris];
		for (j=0 ; j<numorder ; j++) {
			// project tangent and bitangent on vertex normal's plane
			vec3_t    vnormal32, t, b, projt, projb;
			// normal S8 to F32
			GL_VecS8ToF32(&verts->normal[0],  (Vector *) &vnormal32[0]);
			// project plane tangents to vertex normal
			t[0] = tangent->x;
			t[1] = tangent->y;
			t[2] = tangent->z;
			b[0] = bitangent->x;
			b[1] = bitangent->y;
			b[2] = bitangent->z;
			ProjectPointOnPlane(projt, t, vnormal32);
			ProjectPointOnPlane(projb, b, vnormal32);
			guVecNormalize((Vector *) &projt[0]);
			guVecNormalize((Vector *) &projb[0]);
			// store em
			verts->tangent[0] = projt[0] * 127.0f; 
			verts->tangent[1] = projt[1] * 127.0f;
			verts->tangent[2] = projt[2] * 127.0f;
			verts->bitangent[0] = projb[0] * 127.0f; 
			verts->bitangent[1] = projb[1] * 127.0f;
			verts->bitangent[2] = projb[2] * 127.0f;
			
			if (j < numorder-2) { // last 2 vertices use same plane
				tangent++;
				bitangent++;
			}
			verts++;
		}
	}

Con_DPrintf("=== Neighbours reset ===\r\n");			
	
	// triangle neighbours
	for (i=0 ; i<paliashdr->numposes*numorderedtris ; i++) {
		currtridata = &tridata[i];
		for(j=0; j<3; j++) {
			currtridata->neighbours[j] = -1;
		}
	}
Con_DPrintf("=== Neighbours detection ===\r\n");			
	for (i=0 ; i<1; i++) { // TODO: fix
		for (j=0 ; j<numorderedtris; j++) {
			int k, l, m, n;
			// fetch tri j
			currtridata = &tridata[i * numorderedtris + j];
			// loop thru j's vertices
			for(k=0; k<3; k++) {
				vecu8_t v0, v1; // edge
				int matchidx = -1;
				for(l=0; l<3; l++) {
					v0[l] = currtridata->v[k][l];
					v1[l] = currtridata->v[(k+1)%3][l]; 
				}
				// check edge against remaining triangles
				for(l=j+1; l<numorderedtris; l++) {
					qboolean match;
					// curr remaining tri verts
					maliastri_t *remtridata = &tridata[i * numorderedtris + l];
					for(m=0; m<3; m++) {
						match = true;
						// compare verts (a bit less elegant since my mtri's contains direct coordinates)
						for(n=0; n<3; n++) {
							if (	(v0[n] != remtridata->v[m][n] || v1[n] != remtridata->v[(m+1)%3][n]) &&
									(v1[n] != remtridata->v[m][n] || v0[n] != remtridata->v[(m+1)%3][n]) ) {
								match = false;
								break;
							}
						}
						// register match on neighbouring tri
						if (match) {
							remtridata->neighbours[m] = j;
							break;
						}
					}
					if (match) {
						matchidx = l;
						break;
					}
				}
				// register matching neighbour on current tri
				if (matchidx >= 0) {
					currtridata->neighbours[k] = matchidx; // l is valid too
				}
			}
		}
	}
Con_DPrintf("=== Neighbours duplication ===\r\n");			
	for (i=1 ; i<paliashdr->numposes ; i++) {
		for (j=0 ; j<numorderedtris; j++) {
			int k;
			maliastri_t *desttridata;
			currtridata = &tridata[j];
			desttridata = &tridata[i * numorderedtris + j];
			for(k=0; k<3; k++) {
				desttridata->neighbours[k] = currtridata->neighbours[k];
			}
		}
	}
Con_DPrintf("=== End ===\r\n");			
}	
*/
