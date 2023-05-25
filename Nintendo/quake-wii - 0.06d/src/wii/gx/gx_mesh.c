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
/*void CalcTangentSpace(Vector *vertices, stvert_t *texst, Vector *tangent, Vector *bitangent) {
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
	trivertx_t			*verts;
	mplanenbt_t	*nbtdata, *currnbtdata;
	
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

	verts = Hunk_Alloc (paliashdr->numposes * paliashdr->poseverts * sizeof(trivertx_t) );
	paliashdr->posedata = (byte *)verts - (byte *)paliashdr;
//	Con_DPrintf("recv: ");
	for (i=0 ; i<paliashdr->numposes ; i++) {
		for (j=0 ; j<numorder ; j++) {
//			Con_DPrintf("%i %i %i - ", poseverts[i][vertexorder[j]].v[0], poseverts[i][vertexorder[j]].v[1], poseverts[i][vertexorder[j]].v[2]);
			*verts++ = poseverts[i][vertexorder[j]];
		}
	}
//	Con_DPrintf("\r\n");
	
	// triangle normal bitangent tangent's
	// alloc nbt data for all ordered triangles and corresponding poses
	nbtdata = Hunk_Alloc (paliashdr->numposes * numorderedtris * sizeof(mplanenbt_t));
	paliashdr->nbtdata = (byte *) nbtdata - (byte *) paliashdr;

//	Con_DPrintf("============= ordered %i tris %i \r\n", numorderedtris, paliashdr->numtris);
	// at his point poseverts is still valid, so we loop the triorder list
	// and create nbt data for each pose
	for (i=0 ; i<paliashdr->numposes ; i++) {
		for (j=0 ; j<numorderedtris; j++) {
			// use this to save to
			currnbtdata = &nbtdata[i * numorderedtris + j];

			// get triangle k=0 ... k=3 points
			float 		dist;
			Vector		tp[3], normal, t, b;
			trivertx_t	*p; 
			stvert_t	texst[3];
			
//			Con_DPrintf("send: ");
			for (k=0; k<3; k++) {
				p = &poseverts[i][triangles[triorder[j]].vertindex[k]];
//				Con_DPrintf("%i %i %i - ", p[k]->v[0], p[k]->v[1], p[k]->v[2]);
			
				// TODO: not needed and must be removed to save mem
				currnbtdata->v[k][0] = p->v[0];
				currnbtdata->v[k][1] = p->v[1];
				currnbtdata->v[k][2] = p->v[2];
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
			currnbtdata->dist = dist;			
			currnbtdata->normal[0] = normal.x * 127.0f;  
			currnbtdata->normal[1] = normal.y * 127.0f;  
			currnbtdata->normal[2] = normal.z * 127.0f;  
//		if (fabs(normal.x) >= 1.0f || fabs(normal.y) >= 1.0f || fabs(normal.z) >= 1.0f) {
//Con_DPrintf("=== It happens!!! ===\r\n");			
//Con_DPrintf("%5.2f %5.2f %5.2f - %i %i %i - %i %i %i \r\n", normal.x, normal.y, normal.z, 
//	((int) normal.x * 128), ((int) normal.y * 128), ((int) normal.z * 128),
//	currnbtdata->normal[0], currnbtdata->normal[1], currnbtdata->normal[2]);			
//		}	
			
			CalcTangentSpace(&tp[0], &texst[0], &t, &b);
Vector test;
guVecCross(&t, &b, &test);
guVecNormalize(&test);

			currnbtdata->tangent[0] = t.x * 127.0f;  
			currnbtdata->tangent[1] = t.y * 127.0f;  
			currnbtdata->tangent[2] = t.z * 127.0f;  
			currnbtdata->bitangent[0] = b.x * 127.0f;  
			currnbtdata->bitangent[1] = b.y * 127.0f;  
			currnbtdata->bitangent[2] = b.z * 127.0f;  

/*			Con_DPrintf("tangent %5.2f %5.2f %5.2f  s8 %i %i %i ", 
				t.x, t.y, t.z, 
				currnbtdata->tangent[0], currnbtdata->tangent[1], currnbtdata->tangent[2]);
			Con_DPrintf("\r\n");

			Con_DPrintf("bitangent %5.2f %5.2f %5.2f  s8 %i %i %i ", 
				b.x, b.y, b.z, 
				currnbtdata->bitangent[0], currnbtdata->bitangent[1], currnbtdata->bitangent[2]);
			Con_DPrintf("\r\n");

			Con_DPrintf("normal %5.2f %5.2f %5.2f  s8 %i %i %i ", 
				normal.x, normal.y, normal.z, 
				currnbtdata->normal[0], currnbtdata->normal[1], currnbtdata->normal[2]);
			Con_DPrintf("\r\n");

			Con_DPrintf("test %5.2f %5.2f %5.2f", 
				test.x, test.y, test.z);
			Con_DPrintf("\r\n");
*/			
		}
	}

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

