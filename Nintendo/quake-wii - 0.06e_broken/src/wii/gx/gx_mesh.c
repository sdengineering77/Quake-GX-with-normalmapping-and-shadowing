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

/*
*/
void CalcTangentSpace(Vector *vertices, stvert_t *texst, Vector *tangent, Vector *bitangent) {
//see:
//http://members.rogers.com/deseric/tangentspace.htm
	float *v0, *v1, *v2;
	int *st0, *st1, *st2;
	Vector vec1, vec2;
	Vector planes[3];
	int i;

	v0 = &vertices[0].x;
	v1 = &vertices[1].x;
	v2 = &vertices[2].x;
	st0 = &texst[0].s;
	st1 = &texst[1].s;
	st2 = &texst[2].s;

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


/*
================
GL_MakeAliasModelDisplayLists
================
*/
void GL_MakeAliasModelDisplayLists (model_t *m, aliashdr_t *hdr)
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
/*Con_DPrintf("=== Neighbours match found curr %i===\r\n", j);
int gg;
for(gg=0; gg<3; gg++) {
Con_DPrintf("%i %i %i - ", currtridata->v[gg][0], currtridata->v[gg][1], currtridata->v[gg][2]);
}			
Con_DPrintf("=== matches to %i ===\r\n", l);
for(gg=0; gg<3; gg++) {
Con_DPrintf("%i %i %i - ", remtridata->v[gg][0], remtridata->v[gg][1], remtridata->v[gg][2]);
}*/
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
	
/*	mplanenbt_t 	*nbt;
	int					*order;
	int					count;
	int					posenum = 0;
	
	verts 	= (trivertx_t *)((byte *)paliashdr + paliashdr->posedata);
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
			trivertx_t *p[3];
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

