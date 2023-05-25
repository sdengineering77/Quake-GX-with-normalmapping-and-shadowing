/*
Copyright (C) 1996-1997 Id Software, Inc.

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
// cl_parse.c  -- parse a message received from the server

#include "quakedef.h"


char *svc_strings[] =
{
	"svc_bad",
	"svc_nop",
	"svc_disconnect",
	"svc_updatestat",
	"svc_version",		// [long] server version
	"svc_setview",		// [short] entity number
	"svc_sound",			// <see code>
	"svc_time",			// [float] server time
	"svc_print",			// [string] null terminated string
	"svc_stufftext",		// [string] stuffed into client's console buffer
						// the string should be \n terminated
	"svc_setangle",		// [vec3] set the view angle to this absolute value
	
	"svc_serverinfo",		// [long] version
						// [string] signon string
						// [string]..[0]model cache [string]...[0]sounds cache
						// [string]..[0]item cache
	"svc_lightstyle",		// [byte] [string]
	"svc_updatename",		// [byte] [string]
	"svc_updatefrags",	// [byte] [short]
	"svc_clientdata",		// <shortbits + data>
	"svc_stopsound",		// <see code>
	"svc_updatecolors",	// [byte] [byte]
	"svc_particle",		// [vec3] <variable>
	"svc_damage",			// [byte] impact [byte] blood [vec3] from
	
	"svc_spawnstatic",
	"OBSOLETE svc_spawnbinary",
	"svc_spawnbaseline",
	
	"svc_temp_entity",		// <variable>
	"svc_setpause",
	"svc_signonnum",
	"svc_centerprint",
	"svc_killedmonster",
	"svc_foundsecret",
	"svc_spawnstaticsound",
	"svc_intermission",
	"svc_finale",			// [string] music [string] text
	"svc_cdtrack",			// [byte] track [byte] looptrack
	"svc_sellscreen",
	"svc_cutscene"
};

//=============================================================================

/*
===============
CL_EntityNum

This error checks and tracks the total number of entities
===============
*/
entity_t	*CL_EntityNum (int num)
{
	if (num >= cl.num_entities)
	{
		if (num >= MAX_EDICTS)
			Host_Error ("CL_EntityNum: %i is an invalid number",num);
		while (cl.num_entities<=num)
		{
			cl_entities[cl.num_entities].colormap = vid.colormap;
			cl.num_entities++;
		}
	}
		
	return &cl_entities[num];
}


/*
==================
CL_ParseStartSoundPacket
==================
*/
void CL_ParseStartSoundPacket(void)
{
    vec3_t  pos;
    int 	channel, ent;
    int 	sound_num;
    int 	volume;
    int 	field_mask;
    float 	attenuation;  
 	int		i;
	           
    field_mask = MSG_ReadByte(); 

    if (field_mask & SND_VOLUME)
		volume = MSG_ReadByte ();
	else
		volume = DEFAULT_SOUND_PACKET_VOLUME;
	
    if (field_mask & SND_ATTENUATION)
		attenuation = MSG_ReadByte () / 64.0f;
	else
		attenuation = DEFAULT_SOUND_PACKET_ATTENUATION;
	
	channel = MSG_ReadShort ();
	sound_num = MSG_ReadByte ();

	ent = channel >> 3;
	channel &= 7;

	if (ent > MAX_EDICTS)
		Host_Error ("CL_ParseStartSoundPacket: ent = %i", ent);
	
	for (i=0 ; i<3 ; i++)
		pos[i] = MSG_ReadCoord ();
 
    S_StartSound (ent, channel, cl.sound_precache[sound_num], pos, volume/255.0, attenuation);
}       

/*
==================
CL_KeepaliveMessage

When the client is taking a long time to load stuff, send keepalive messages
so the server doesn't disconnect.
==================
*/
void CL_KeepaliveMessage (void)
{
	float	time;
	static float lastmsg;
	int		ret;
	sizebuf_t	old;
	byte		olddata[8192];
	
	if (sv.active)
		return;		// no need if server is local
	if (cls.demoplayback)
		return;

// read messages from server, should just be nops
	old = net_message;
	memcpy (olddata, net_message.data, net_message.cursize);
	
	do
	{
		ret = CL_GetMessage ();
		switch (ret)
		{
		default:
			Host_Error ("CL_KeepaliveMessage: CL_GetMessage failed");		
		case 0:
			break;	// nothing waiting
		case 1:
			Host_Error ("CL_KeepaliveMessage: received a message");
			break;
		case 2:
			if (MSG_ReadByte() != svc_nop)
				Host_Error ("CL_KeepaliveMessage: datagram wasn't a nop");
			break;
		}
	} while (ret);

	net_message = old;
	memcpy (net_message.data, olddata, net_message.cursize);

// check time
	time = Sys_FloatTime ();
	if (time - lastmsg < 5)
		return;
	lastmsg = time;

// write out a nop
	Con_Printf ("--> client to server keepalive\n");

	MSG_WriteByte (&cls.message, clc_nop);
	NET_SendMessage (cls.netcon, &cls.message);
	SZ_Clear (&cls.message);
}


/*
===============
CheckSide
takes one point and three triangle points, calculates cross and checks if point on the right.
===============
*/
qboolean CheckSide(Vector *p1, Vector *a, Vector *b, Vector *c) {
    Vector cross1, cross2, ba, p1a, ca;
	
	guVecSub(b,  a, &ba);
	guVecSub(c,  a, &ca);
	guVecSub(p1, a, &p1a);

    guVecCross(&ba, &ca,  &cross2);
	guVecCross(&ba, &cross2, &cross1);
	
	return guVecDotProduct(&cross1, &p1a) <= 0; 
	
//	guVecCross(&ba, &p1a, &cross1);
//   guVecCross(&ba, &ca,  &cross2);
	
//	return guVecDotProduct(&cross1, &cross2) >= 0; 
}


/*
===============
CL_IsInTriangleFanBounds
===============
*/
qboolean CL_IsInTriangleFanBounds(dlight_t *light, msurface_t *surf) {
	Vector v1, v2, v3, o;
	int i;

	float *v = surf->polys->verts[0];

	o.x = light->origin[0];
	o.y = light->origin[1];
	o.z = light->origin[2];
	v1.x = v[0];
	v1.y = v[1]; 
	v1.z = v[2];
	v += VERTEXSIZE;
	for (i=1 ; i<surf->polys->numverts-1 ; i++, v+= VERTEXSIZE) {
		v2.x = v[0];
		v2.y = v[1];
		v2.z = v[2];
		v3.x = v[VERTEXSIZE + 0];
		v3.y = v[VERTEXSIZE + 1];
		v3.z = v[VERTEXSIZE + 2];
		if (!(CheckSide(&o, &v1, &v2, &v3) && 
			  CheckSide(&o, &v2, &v3, &v1) && 
			  CheckSide(&o, &v3, &v1, &v2))) {
//		if (!(CheckSide(&o, &v1, &v2, &v3) && 
//			  CheckSide(&o, &v2, &v1, &v3) && 
//			  CheckSide(&o, &v3, &v1, &v2))) {
			return false;
		}
	}
	return true;

}

/*
===============
CL_CalcAvVertDistance
Calculates an average vector based distance. Cannot be used for perpendicular distance to surface
===============
*/
float CL_CalcAvVertDistance(dlight_t *light, msurface_t *surf, int lnum) {
	int i;
	float *v = surf->polys->verts[0];
	float x = 0, y = 0, z = 0, mostClose = 10000000000.0f;
	
	if (!surf->polys->numverts) {
		return mostClose; // shouldn't happen, but just make it far away
	}
	
	if (CL_IsInTriangleFanBounds(light, surf)) {
		return fabs(DotProduct (light->origin, surf->plane->normal) - surf->plane->dist);
	}
	
	for (i=0 ; i<surf->polys->numverts ; i++, v+= VERTEXSIZE) {
		x = (v[0] - light->origin[0]);
		y = (v[1] - light->origin[1]);
		z = (v[2] - light->origin[2]);
//		x += (v[0] - light->origin[0]);
//		y += (v[1] - light->origin[1]);
//		z += (v[2] - light->origin[2]);

/*		if (v[2] == -432) {
//			Con_DPrintf("surface: %p has -432 vertcnt %i pos %5.1f %5.1f  %5.1f \r\n", surf, i, v[0], v[1], v[2]);
			if ((v[0] == 768 && v[1] == 1752) ||
			(v[0] == 768 && v[1] == 1824) ||
			(v[0] == 896 && v[1] == 1752) ||
			(v[0] == 896 && v[1] == 1824) ) {
				Con_DPrintf("surface: %p has -432 vertcnt %i pos %5.1f %5.1f  %5.1f \r\n", surf, i, v[0], v[1], v[2]);
			}
		}
*/		
		float dist = x*x + y*y + z*z;
		if (dist < mostClose) {
			mostClose = dist; 
		}
		
	}
	
//	float numinv = 1.0f/surf->polys->numverts;
//	x *= numinv;
//	y *= numinv;
//	z *= numinv;
	
//	return sqrtf(x*x+y*y+z*z);
	
//	float dotdist = fabs(DotProduct (light->origin, surf->plane->normal) - surf->plane->dist);
//	float vertdist = sqrt(mostClose);
//	if (dotdist != vertdist && CL_IsInTriangleFanBounds(light, surf)) {
//	if (dotdist <= 40.0f) {
//	if (surf == 0x902bb500) {
//		Con_DPrintf("dot dist %5.1f vertdist %5.1f lnum:%i %5.1f %5.1f %5.1f surfptr:%p\r\n", dotdist, vertdist, lnum, light->origin[0], light->origin[1], light->origin[2], surf);
//		return dotdist;
//	}
	
//	if (CL_IsInTriangleFanBounds(light, surf)) {
//		return fabs(DotProduct (light->origin, surf->plane->normal) - surf->plane->dist);
//	}
	
	return sqrt(mostClose); 

}


/*
===============
CL_MarkLitSurface
Marks the surface
===============
*/
void CL_MarkLitSurface(dlight_t *light, int lnum, msurface_t *surf) {
	float dist = CL_CalcAvVertDistance(light, surf, lnum);
	float dotdist = fabs(DotProduct (light->origin, surf->plane->normal) - surf->plane->dist);
	//float attn = (light->radius - fabs(dist))/light->radius; // TODO calc an actual attenuation here
//	float attn = (light->radius - fabs(dist))/light->radius;
	float attn = (dotdist / dist) * 0.020f * light->radius/(1.0f + dist*dist/1024.0f); // TODO r^2/dist^2
//	if (lnum == 139) 
//		attn = 100;

//	if (surf == 0x902bb500) {
//Con_DPrintf("lnum %i attn %5.3f \r\n", lnum, attn);	
//	}
	if (attn > 0) {
		if (surf->num_slightnums < MAX_STATICLIGHTS) {
			surf->slightnums[surf->num_slightnums] = lnum;
			surf->slightattn[surf->num_slightnums] = attn;
			surf->num_slightnums++;
		}	else {
			// find the most significant light
			int lcnt;
			int lcnt_smallestAttn = 0;
			float smallestAttn = surf->slightattn[0];
			for (lcnt=0; lcnt<MAX_STATICLIGHTS; lcnt++) {
//	if (surf == 0x902bb500) {
//Con_DPrintf("smallest cnt %i smallest attn %5.3f surfattn %5.3f\r\n", lcnt, smallestAttn, surf->slightattn[lcnt]);	
//	}
				if (smallestAttn > surf->slightattn[lcnt]) {
					lcnt_smallestAttn = lcnt;
					smallestAttn = surf->slightattn[lcnt];
//	if (surf == 0x902bb500) {
//Con_DPrintf("==> smallest attn lnum %i cnt %i attn %5.3f \r\n", lcnt_smallestAttn, lcnt, smallestAttn);	
//	}				
				}
			}
//	if (surf == 0x902bb500) {
//Con_DPrintf("smallest attn lnum %i attn %5.3f \r\n", lcnt_smallestAttn, smallestAttn);	
//	}

			if (attn > surf->slightattn[lcnt_smallestAttn]) {
//	if (surf == 0x902bb500) {
//Con_DPrintf("overwrite lnum %i attn %5.3f \r\n", lnum, attn);	
//	}
				surf->slightnums[lcnt_smallestAttn] = lnum;
				surf->slightattn[lcnt_smallestAttn] = attn;
			}
		}
	}
}


/*
===============
CL_MarkLitNodes
Marks the surfaces that are probably lit (not regarding shadowing)
DRS took example of gx_misc.c and gx_main.c
===============
*/

void CL_MarkLitNodes(dlight_t *light, int lnum, mnode_t *node) {
	int			c, side;
	mplane_t	*plane;
	msurface_t	*surf, **mark;
	mleaf_t		*pleaf;
	double		dot;

	if (node->contents == CONTENTS_SOLID)
		return;		// solid

	if (node->visframe != r_visframecount)
		return;
	
// if a leaf node, draw stuff
	if (node->contents < 0)
	{
		pleaf = (mleaf_t *)node;

		mark = pleaf->firstmarksurface;
		c = pleaf->nummarksurfaces;

		if (c)
		{
			do
			{
				(*mark)->visframe = r_framecount;
				mark++;
			} while (--c);
		}

	// deal with model fragments in this leaf
//		if (pleaf->efrags)
//			R_StoreEfrags (&pleaf->efrags);

		return;
	}


// node is just a decision point, so go down the apropriate sides

// find which side of the node we are on
	plane = node->plane;

	switch (plane->type)
	{
	case PLANE_X:
		dot = light->origin[0] - plane->dist;
		break;
	case PLANE_Y:
		dot = light->origin[1] - plane->dist;
		break;
	case PLANE_Z:
		dot = light->origin[2] - plane->dist;
		break;
	default:
		dot = DotProduct (light->origin, plane->normal) - plane->dist;
		break;
	}

	if (dot >= 0)
		side = 0;
	else
		side = 1;

// recurse down the children, front side first
	CL_MarkLitNodes(light, lnum, node->children[side]);

// draw stuff
	c = node->numsurfaces;

	if (c)
	{
		surf = cl.worldmodel->surfaces + node->firstsurface;

		if (dot < 0 -BACKFACE_EPSILON)
			side = SURF_PLANEBACK;
		else if (dot > BACKFACE_EPSILON)
			side = 0;

		for ( ; c ; c--, surf++)
		{
			if (surf->visframe != r_framecount)
				continue;
//if (surf->plane->normal[0] != plane->normal[0] ||
//	surf->plane->normal[1] != plane->normal[1] ||
//	surf->plane->normal[2] != plane->normal[2]) {
//Con_DPrintf("normals different: %5.1f %5.1f %5.1f -> ", surf->plane->normal[0], surf->plane->normal[1], surf->plane->normal[2]);
//Con_DPrintf(" %5.1f %5.1f %5.1f %i\r\n", plane->normal[0], plane->normal[1], plane->normal[2], (surf->flags & SURF_PLANEBACK)) ;
//}
			// don't backface underwater surfaces, because they warp
			if ( !(surf->flags & SURF_UNDERWATER) && ( (dot < 0) ^ !!(surf->flags & SURF_PLANEBACK)) )
				continue;		// wrong side

			if (!(surf->flags & (SURF_DRAWSKY | SURF_DRAWTURB))) {
				CL_MarkLitSurface(light, lnum, surf);
			}
		}

	}

// recurse down the back side
	CL_MarkLitNodes(light, lnum, node->children[!side]);
	
}


void CL_AddLitSurfacesToList(dlight_t *light, int lnum, mnode_t *node) {
	int			c, side;
	mplane_t	*plane;
	msurface_t	*surf;
	double		dot;

	if (node->contents == CONTENTS_SOLID)
		return;		// solid

	if (node->visframe != r_visframecount)
		return;
	
// if a leaf node, draw stuff
	if (node->contents < 0)
		return;


// node is just a decision point, so go down the apropriate sides

// find which side of the node we are on
	plane = node->plane;

	switch (plane->type)
	{
	case PLANE_X:
		dot = light->origin[0] - plane->dist;
		break;
	case PLANE_Y:
		dot = light->origin[1] - plane->dist;
		break;
	case PLANE_Z:
		dot = light->origin[2] - plane->dist;
		break;
	default:
		dot = DotProduct (light->origin, plane->normal) - plane->dist;
		break;
	}

	if (dot >= 0)
		side = 0;
	else
		side = 1;

// recurse down the children, front side first
	CL_AddLitSurfacesToList(light, lnum, node->children[side]);

// draw stuff
	c = node->numsurfaces;

	if (c) {
		surf = cl.worldmodel->surfaces + node->firstsurface;

		if (dot < 0 -BACKFACE_EPSILON)
			side = SURF_PLANEBACK;
		else if (dot > BACKFACE_EPSILON)
			side = 0;

		for ( ; c ; c--, surf++)
		{
			if (surf->visframe != r_framecount)
				continue;

			// DRS backfaces produce shadows
			if ( !(surf->flags & (SURF_DRAWSKY | SURF_DRAWTURB)) && ((dot < 0) ^ !!(surf->flags & SURF_PLANEBACK)) ) {
//			if ( !(surf->flags & SURF_UNDERWATER) && ( (dot < 0) ^ !!(surf->flags & SURF_PLANEBACK)) ) {
				UT_AddLitSurfaceToSilo(surf);
			}
/*				continue;		// wrong side
			}
			if (!(surf->flags & (SURF_DRAWSKY | SURF_DRAWTURB))) {
				int i;
				for(i=0; i<surf->num_slightnums;i++) {
					if (lnum == surf->slightnums[i]) {
						UT_AddLitSurfaceToSilo(surf);
					}
				}
			}*/
		}

	}

// recurse down the back side
	CL_AddLitSurfacesToList(light, lnum, node->children[!side]);
	
}


/*
===============
CL_MarkLeaves
Marks the leaves that may be lit
DRS took example of gx_misc.c and gx_main.c
===============
*/
void CL_MarkLeavesLit (dlight_t *light, int lnum) {
	byte	*vis;
	mnode_t	*node;
	int		i;
	mleaf_t	*viewleaf;
	
	// find viewleaf
	viewleaf = Mod_PointInLeaf (light->origin, cl.worldmodel);

	// light in leaf?
	if (viewleaf) {
		r_visframecount++;
		r_framecount++;
		// get possible visible leafs
		vis = Mod_LeafPVS (viewleaf, cl.worldmodel);
			
		for (i=0 ; i<cl.worldmodel->numleafs ; i++)
		{
			if (vis[i>>3] & (1<<(i&7)))
			{
				node = (mnode_t *)&cl.worldmodel->leafs[i+1];
				do
				{
					if (node->visframe == r_visframecount)
						break;
					// now start marking the leafs
					node->visframe = r_visframecount;		
					node = node->parent;
				} while (node);
			}
		}
		
		if (viewleaf->visframe != r_visframecount) {
//Con_DPrintf("visible frame adjusted for viewleaf!!!!\r\n");
			viewleaf->visframe = r_visframecount;
		}

		// clear the surface cache
		UT_ClearLitSurfaceSilo();
			
		// mark the visible nodes
		CL_MarkLitNodes(light, lnum, cl.worldmodel->nodes);
		
		// enchart the surfaces lit
		if (light->radius >= 200) {
			u64		current_time	= gettime();
		
			CL_AddLitSurfacesToList(light, lnum, cl.worldmodel->nodes);
			// Create Shadow Volumes
			int num_surfaces;
			msurface_t *surfacelist = (msurface_t *) UT_GetLitSurfacesFromSilo(&num_surfaces);
Con_DPrintf("======= light %i num surfaces: %i =========\r\n", lnum, num_surfaces);
			R_CreateShadowVolumesFromSurfaceList(light, surfacelist, num_surfaces); // these end up in their own db
			current_time = gettime() - current_time;
Con_DPrintf("======= light %i num surfaces: %i time: %i =========\r\n", lnum, num_surfaces, ((u32) current_time));
		}
	}
}

/*
=============
CL_PushStaticLights
=============
*/
void CL_PushStaticLights (void)
{
	int			i;
	dlight_t	*l = cl_staticlights;

	R_ClearStaticVolumes();
	for (i=0 ; i<cl_numstaticlights; i++, l++) {
		CL_MarkLeavesLit(l, i);
	}
}


/*
=============
Light parsing
=============
*/

typedef struct {
	unsigned short	type;
	unsigned short 	ofs;
	char *name;
} clientfielddefs_t;

clientfielddefs_t cl_fielddefs[] = {
	{ev_float, 	offsetof(entvars_t, velocity)/sizeof(int),		"light_lev"},
	{ev_float, 	offsetof(entvars_t, effects)/sizeof(int),		"style"},
	{ev_vector, offsetof(entvars_t, origin)/sizeof(int), 		"origin"},
	{ev_string, offsetof(entvars_t, classname)/sizeof(int), 	"classname"}
};



/*
=============
CL_FindField
=============
*/
clientfielddefs_t *CL_FindField(char *name) {
	clientfielddefs_t	*def;
	int					i;

	for (i=0 ; i<sizeof(cl_fielddefs)/sizeof(clientfielddefs_t); i++)
	{
		def = &cl_fielddefs[i];
		if (!strcmp(def->name, name) )
			return def;
	}
	return NULL;
}


/*
=============
CL_ParseEpair
=============
*/
qboolean	CL_ParseEpair (void *base, clientfielddefs_t *key, char *s)
{
	int					i;
	char				string[128];
	char				*v, *w;
	void				*d;

	d = (void *)((int *)base + key->ofs);
	
	switch (key->type & ~DEF_SAVEGLOBAL)
	{
	case ev_string:
		strncpy((char *) *(string_t *)d, s, 255);
		break;
		
	case ev_float:
		*(float *)d = atof (s);
		break;
		
	case ev_vector:
		strcpy (string, s);
		v = string;
		w = string;
		for (i=0 ; i<3 ; i++)
		{
			while (*v && *v != ' ')
				v++;
			*v = 0;
			((float *)d)[i] = atof (w);
			w = v = v+1;
		}
		break;
		
	default:
		break;
	}
	
	return true;
}



/*
=============
CL_ParseEdict
=============
*/
char *CL_ParseEdict (char *data, edict_t *ent)
{
	clientfielddefs_t	*key;
	char				keyname[256];
	int					n;


	// go through all the dictionary pairs
	while (1)
	{	
		// parse key
		data = COM_Parse (data);
		if (com_token[0] == '}')
			break;
		if (!data)
			Sys_Error ("CL_ParseEntity: EOF without closing brace");
		
		// FIXME: change light to _light to get rid of this hack
		if (!strcmp(com_token, "light"))
			strcpy (com_token, "light_lev");	// hack for single light def

		strcpy (keyname, com_token);

		// another hack to fix heynames with trailing spaces
		n = strlen(keyname);
		while (n && keyname[n-1] == ' ')
		{
			keyname[n-1] = 0;
			n--;
		}

		// parse value	
		data = COM_Parse (data);
		if (!data)
			Sys_Error ("CL_ParseEntity: EOF without closing brace");

		if (com_token[0] == '}')
			Sys_Error ("CL_ParseEntity: closing brace without data");

		// keynames with a leading underscore are used for utility comments,
		// and are immediately discarded by quake
		if (keyname[0] == '_')
			continue;
		
		key = CL_FindField (keyname);
		if (!key) 
			continue;

		if (!CL_ParseEpair ((void *)&ent->v, key, com_token))
			Host_Error ("ED_ParseEdict: parse error");
	}

	return data;
}


/*
=============
CL_ParseStaticLights
=============
*/
void CL_ParseStaticLights(char *data) {
	edict_t		ent;
	
	// setup some mem for classname... TODO create generic client server edict framework
	char classname[1024];
	cl_numstaticlights = 0;
	// parse ents
	while (cl_numstaticlights<MAX_WORLDLIGHTS) 	{
		// parse the opening brace	
		data = COM_Parse (data);
		if (!data)
			break;
		if (com_token[0] != '{')
			Sys_Error ("CL_ParseStaticLights: found %s when expecting {",com_token);
	
		memset(&ent.v, 0, sizeof(entvars_t));
		ent.v.classname = (string_t) classname;
		
		data = CL_ParseEdict (data, &ent);

		if (ent.v.classname && strncmp("light", (char *)ent.v.classname, 5) == 0) {
			// abuse dlight for now
			cl_staticlights[cl_numstaticlights].origin[0] = ent.v.origin[0];
			cl_staticlights[cl_numstaticlights].origin[1] = ent.v.origin[1];
			cl_staticlights[cl_numstaticlights].origin[2] = ent.v.origin[2];
			float *pRadius = &ent.v.velocity; // hack light level TODO: just make light parse method, ditch the edict
			float *pStyle  = &ent.v.effects; // hack style
			
			if (*pRadius > 0) {
				cl_staticlights[cl_numstaticlights].radius = (*pRadius); 
			} else 
			if (strncmp("light_torch", (char *)ent.v.classname, 11) == 0 || 
				strncmp("light_flame", (char *)ent.v.classname, 11) == 0) {
				cl_staticlights[cl_numstaticlights].radius = 200.0f; // These really should be visible
			} else {
				cl_staticlights[cl_numstaticlights].radius = 64.0f; // For lacking light?
			}
			if (*pStyle > 0) {
				cl_staticlights[cl_numstaticlights].style = (int) *pStyle; 
			} else {
				cl_staticlights[cl_numstaticlights].style = 0;
			}
			cl_numstaticlights++;
		}
		
	}	

	Con_DPrintf ("%i lights read\r\n", cl_numstaticlights);
}






/*
==================
CL_ParseServerInfo
==================
*/
void CL_ParseServerInfo (void)
{
	char	*str;
	int		i;
	int		nummodels, numsounds;
	char	model_precache[MAX_MODELS][MAX_QPATH];
	char	sound_precache[MAX_SOUNDS][MAX_QPATH];
	
	Con_ToggleConsole_f(); // DRS toggle console
	Con_DPrintf ("Serverinfo packet received.\n");
//
// wipe the client_state_t struct
//
	CL_ClearState ();

// parse protocol version number
	i = MSG_ReadLong ();
	if (i != PROTOCOL_VERSION)
	{
		Con_Printf ("Server returned version %i, not %i", i, PROTOCOL_VERSION);
		return;
	}

// parse maxclients
	cl.maxclients = MSG_ReadByte ();
	if (cl.maxclients < 1 || cl.maxclients > MAX_SCOREBOARD)
	{
		Con_Printf("Bad maxclients (%u) from server\n", cl.maxclients);
		return;
	}
	cl.scores = Hunk_AllocName (cl.maxclients*sizeof(*cl.scores), "scores");

// parse gametype
	cl.gametype = MSG_ReadByte ();

// parse signon message
	str = MSG_ReadString ();
	strncpy (cl.levelname, str, sizeof(cl.levelname)-1);

// seperate the printfs so the server message can have a color
	Con_Printf("\n\n\35\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\36\37\n\n");
	Con_Printf ("%c%s\n", 2, str);


//
// first we go through and touch all of the precache data that still
// happens to be in the cache, so precaching something else doesn't
// needlessly purge it
//

// precache models
	memset (cl.model_precache, 0, sizeof(cl.model_precache));
	for (nummodels=1 ; ; nummodels++)
	{
		str = MSG_ReadString ();
		if (!str[0])
			break;
		if (nummodels==MAX_MODELS)
		{
			Con_Printf ("Server sent too many model precaches\n");
			return;
		}
		strcpy (model_precache[nummodels], str);
		Mod_TouchModel (str);
	}

// precache sounds
	memset (cl.sound_precache, 0, sizeof(cl.sound_precache));
	for (numsounds=1 ; ; numsounds++)
	{
		str = MSG_ReadString ();
		if (!str[0])
			break;
		if (numsounds==MAX_SOUNDS)
		{
			Con_Printf ("Server sent too many sound precaches\n");
			return;
		}
		strcpy (sound_precache[numsounds], str);
		S_TouchSound (str);
	}


//
// now we try to load everything else until a cache allocation fails
//

	for (i=1 ; i<nummodels ; i++)
	{
		cl.model_precache[i] = Mod_ForName (model_precache[i], false);
		if (cl.model_precache[i] == NULL)
		{
			Con_Printf("Model %s not found\n", model_precache[i]);
			return;
		}
		CL_KeepaliveMessage ();
	}

	S_BeginPrecaching ();
	for (i=1 ; i<numsounds ; i++)
	{
		cl.sound_precache[i] = S_PrecacheSound (sound_precache[i]);
		CL_KeepaliveMessage ();
	}
	S_EndPrecaching ();


// local state
	cl_entities[0].model = cl.worldmodel = cl.model_precache[1];
	
	R_NewMap ();

	Hunk_Check ();		// make sure nothing is hurt

// DRS load lights...
//	Con_Printf("num surfaces: %i \n", CL_CountSurfaces(cl.worldmodel->nodes));
	CL_ParseStaticLights(cl.worldmodel->entities);
	CL_PushStaticLights();

	Con_Print("Done \n");
	
	
	noclip_anglehack = false;		// noclip is turned off at start	
}


/*
==================
CL_ParseUpdate

Parse an entity update message from the server
If an entities model or origin changes from frame to frame, it must be
relinked.  Other attributes can change without relinking.
==================
*/
int	bitcounts[16];

void CL_ParseUpdate (int bits)
{
	int			i;
	model_t		*model;
	int			modnum;
	qboolean	forcelink;
	entity_t	*ent;
	int			num;
	int			skin;

	if (cls.signon == SIGNONS - 1)
	{	// first update is the final signon stage
		cls.signon = SIGNONS;
		CL_SignonReply ();
	}

	if (bits & U_MOREBITS)
	{
		i = MSG_ReadByte ();
		bits |= (i<<8);
	}

	if (bits & U_LONGENTITY)	
		num = MSG_ReadShort ();
	else
		num = MSG_ReadByte ();

	ent = CL_EntityNum (num);

for (i=0 ; i<16 ; i++)
if (bits&(1<<i))
	bitcounts[i]++;

	if (ent->msgtime != cl.mtime[1])
		forcelink = true;	// no previous frame to lerp from
	else
		forcelink = false;

	ent->msgtime = cl.mtime[0];
	
	if (bits & U_MODEL)
	{
		modnum = MSG_ReadByte ();
		if (modnum >= MAX_MODELS)
			Host_Error ("CL_ParseModel: bad modnum");
	}
	else
		modnum = ent->baseline.modelindex;
		
	model = cl.model_precache[modnum];
	if (model != ent->model)
	{
		ent->model = model;
	// automatic animation (torches, etc) can be either all together
	// or randomized
		if (model)
		{
			if (model->synctype == ST_RAND)
				ent->syncbase = (float)(rand()&0x7fff) / 0x7fff;
			else
				ent->syncbase = 0.0f;
		}
		else
			forcelink = true;	// hack to make null model players work
		if (num > 0 && num <= cl.maxclients)
			R_TranslatePlayerSkin (num - 1);
	}
	
	if (bits & U_FRAME)
		ent->frame = MSG_ReadByte ();
	else
		ent->frame = ent->baseline.frame;

	if (bits & U_COLORMAP)
		i = MSG_ReadByte();
	else
		i = ent->baseline.colormap;
	if (!i)
		ent->colormap = vid.colormap;
	else
	{
		if (i > cl.maxclients)
			Sys_Error ("i >= cl.maxclients");
		ent->colormap = cl.scores[i-1].translations;
	}

	if (bits & U_SKIN)
		skin = MSG_ReadByte();
	else
		skin = ent->baseline.skin;
	if (skin != ent->skinnum) {
		ent->skinnum = skin;
		if (num > 0 && num <= cl.maxclients)
			R_TranslatePlayerSkin (num - 1);
	}

	if (bits & U_EFFECTS)
		ent->effects = MSG_ReadByte();
	else
		ent->effects = ent->baseline.effects;

// shift the known values for interpolation
	VectorCopy (ent->msg_origins[0], ent->msg_origins[1]);
	VectorCopy (ent->msg_angles[0], ent->msg_angles[1]);

	if (bits & U_ORIGIN1)
		ent->msg_origins[0][0] = MSG_ReadCoord ();
	else
		ent->msg_origins[0][0] = ent->baseline.origin[0];
	if (bits & U_ANGLE1)
		ent->msg_angles[0][0] = MSG_ReadAngle();
	else
		ent->msg_angles[0][0] = ent->baseline.angles[0];

	if (bits & U_ORIGIN2)
		ent->msg_origins[0][1] = MSG_ReadCoord ();
	else
		ent->msg_origins[0][1] = ent->baseline.origin[1];
	if (bits & U_ANGLE2)
		ent->msg_angles[0][1] = MSG_ReadAngle();
	else
		ent->msg_angles[0][1] = ent->baseline.angles[1];

	if (bits & U_ORIGIN3)
		ent->msg_origins[0][2] = MSG_ReadCoord ();
	else
		ent->msg_origins[0][2] = ent->baseline.origin[2];
	if (bits & U_ANGLE3)
		ent->msg_angles[0][2] = MSG_ReadAngle();
	else
		ent->msg_angles[0][2] = ent->baseline.angles[2];

	if ( bits & U_NOLERP )
		ent->forcelink = true;

	if ( forcelink )
	{	// didn't have an update last message
		VectorCopy (ent->msg_origins[0], ent->msg_origins[1]);
		VectorCopy (ent->msg_origins[0], ent->origin);
		VectorCopy (ent->msg_angles[0], ent->msg_angles[1]);
		VectorCopy (ent->msg_angles[0], ent->angles);
		ent->forcelink = true;
	}
}

/*
==================
CL_ParseBaseline
==================
*/
void CL_ParseBaseline (entity_t *ent)
{
	int			i;
	
	ent->baseline.modelindex = MSG_ReadByte ();
	ent->baseline.frame = MSG_ReadByte ();
	ent->baseline.colormap = MSG_ReadByte();
	ent->baseline.skin = MSG_ReadByte();
	for (i=0 ; i<3 ; i++)
	{
		ent->baseline.origin[i] = MSG_ReadCoord ();
		ent->baseline.angles[i] = MSG_ReadAngle ();
	}
}


/*
==================
CL_ParseClientdata

Server information pertaining to this client only
==================
*/
void CL_ParseClientdata (int bits)
{
	int		i, j;
	
	if (bits & SU_VIEWHEIGHT)
		cl.viewheight = MSG_ReadChar ();
	else
		cl.viewheight = DEFAULT_VIEWHEIGHT;

	if (bits & SU_IDEALPITCH)
		cl.idealpitch = MSG_ReadChar ();
	else
		cl.idealpitch = 0;

	VectorCopy (cl.mvelocity[0], cl.mvelocity[1]);

	for (i=0 ; i<3 ; i++)
	{
		if (bits & (SU_PUNCH1<<i) )
			cl.punchangle[i] = MSG_ReadChar();
		else
			cl.punchangle[i] = 0;
		if (bits & (SU_VELOCITY1<<i) )
			cl.mvelocity[0][i] = MSG_ReadChar()*16;
		else
			cl.mvelocity[0][i] = 0;
	}

// [always sent]	if (bits & SU_ITEMS)
		i = MSG_ReadLong ();

	if (cl.items != i)
	{	// set flash times
		Sbar_Changed ();
		for (j=0 ; j<32 ; j++)
			if ( (i & (1<<j)) && !(cl.items & (1<<j)))
				cl.item_gettime[j] = cl.time;
		cl.items = i;
	}
		
	cl.onground = (bits & SU_ONGROUND) != 0;
	cl.inwater = (bits & SU_INWATER) != 0;

	if (bits & SU_WEAPONFRAME)
		cl.stats[STAT_WEAPONFRAME] = MSG_ReadByte ();
	else
		cl.stats[STAT_WEAPONFRAME] = 0;

	if (bits & SU_ARMOR)
		i = MSG_ReadByte ();
	else
		i = 0;
	if (cl.stats[STAT_ARMOR] != i)
	{
		cl.stats[STAT_ARMOR] = i;
		Sbar_Changed ();
	}

	if (bits & SU_WEAPON)
		i = MSG_ReadByte ();
	else
		i = 0;
	if (cl.stats[STAT_WEAPON] != i)
	{
		cl.stats[STAT_WEAPON] = i;
		Sbar_Changed ();
	}
	
	i = MSG_ReadShort ();
	if (cl.stats[STAT_HEALTH] != i)
	{
		cl.stats[STAT_HEALTH] = i;
		Sbar_Changed ();
	}

	i = MSG_ReadByte ();
	if (cl.stats[STAT_AMMO] != i)
	{
		cl.stats[STAT_AMMO] = i;
		Sbar_Changed ();
	}

	for (i=0 ; i<4 ; i++)
	{
		j = MSG_ReadByte ();
		if (cl.stats[STAT_SHELLS+i] != j)
		{
			cl.stats[STAT_SHELLS+i] = j;
			Sbar_Changed ();
		}
	}

	i = MSG_ReadByte ();

	if (standard_quake)
	{
		if (cl.stats[STAT_ACTIVEWEAPON] != i)
		{
			cl.stats[STAT_ACTIVEWEAPON] = i;
			Sbar_Changed ();
		}
	}
	else
	{
		if (cl.stats[STAT_ACTIVEWEAPON] != (1<<i))
		{
			cl.stats[STAT_ACTIVEWEAPON] = (1<<i);
			Sbar_Changed ();
		}
	}
}

/*
=====================
CL_NewTranslation
=====================
*/
void CL_NewTranslation (int slot)
{
	int		i, j;
	int		top, bottom;
	byte	*dest, *source;
	
	if (slot > cl.maxclients)
		Sys_Error ("CL_NewTranslation: slot > cl.maxclients");
	dest = cl.scores[slot].translations;
	source = vid.colormap;
	memcpy (dest, vid.colormap, sizeof(cl.scores[slot].translations));
	top = cl.scores[slot].colors & 0xf0;
	bottom = (cl.scores[slot].colors &15)<<4;
	R_TranslatePlayerSkin (slot);

	for (i=0 ; i<VID_GRADES ; i++, dest += 256, source+=256)
	{
		if (top < 128)	// the artists made some backwards ranges.  sigh.
			memcpy (dest + TOP_RANGE, source + top, 16);
		else
			for (j=0 ; j<16 ; j++)
				dest[TOP_RANGE+j] = source[top+15-j];
				
		if (bottom < 128)
			memcpy (dest + BOTTOM_RANGE, source + bottom, 16);
		else
			for (j=0 ; j<16 ; j++)
				dest[BOTTOM_RANGE+j] = source[bottom+15-j];		
	}
}

/*
=====================
CL_ParseStatic
=====================
*/
void CL_ParseStatic (void)
{
	entity_t *ent;
	int		i;
		
	i = cl.num_statics;
	if (i >= MAX_STATIC_ENTITIES)
		Host_Error ("Too many static entities");
	ent = &cl_static_entities[i];
	cl.num_statics++;
	CL_ParseBaseline (ent);

// copy it to the current state
	ent->model = cl.model_precache[ent->baseline.modelindex];
	ent->frame = ent->baseline.frame;
	ent->colormap = vid.colormap;
	ent->skinnum = ent->baseline.skin;
	ent->effects = ent->baseline.effects;

	VectorCopy (ent->baseline.origin, ent->origin);
	VectorCopy (ent->baseline.angles, ent->angles);	
	R_AddEfrags (ent);
}

/*
===================
CL_ParseStaticSound
===================
*/
void CL_ParseStaticSound (void)
{
	vec3_t		org;
	int			sound_num, vol, atten;
	int			i;
	
	for (i=0 ; i<3 ; i++)
		org[i] = MSG_ReadCoord ();
	sound_num = MSG_ReadByte ();
	vol = MSG_ReadByte ();
	atten = MSG_ReadByte ();
	
	S_StaticSound (cl.sound_precache[sound_num], org, vol, atten);
}


#define SHOWNET(x) if(cl_shownet.value==2)Con_Printf ("%3i:%s\n", msg_readcount-1, x);

/*
=====================
CL_ParseServerMessage
=====================
*/
void CL_ParseServerMessage (void)
{
	int			cmd;
	int			i;
	
//
// if recording demos, copy the message out
//
	if (cl_shownet.value == 1)
		Con_Printf ("%i ",net_message.cursize);
	else if (cl_shownet.value == 2)
		Con_Printf ("------------------\n");
	
	cl.onground = false;	// unless the server says otherwise	
//
// parse the message
//
	MSG_BeginReading ();
	
	while (1)
	{
		if (msg_badread)
			Host_Error ("CL_ParseServerMessage: Bad server message");

		cmd = MSG_ReadByte ();

		if (cmd == -1)
		{
			SHOWNET("END OF MESSAGE");
			return;		// end of message
		}

	// if the high bit of the command byte is set, it is a fast update
		if (cmd & 128)
		{
			SHOWNET("fast update");
			CL_ParseUpdate (cmd&127);
			continue;
		}

		SHOWNET(svc_strings[cmd]);
	
	// other commands
		switch (cmd)
		{
		default:
			Host_Error ("CL_ParseServerMessage: Illegible server message\n");
			break;
			
		case svc_nop:
//			Con_Printf ("svc_nop\n");
			break;
			
		case svc_time:
			cl.mtime[1] = cl.mtime[0];
			cl.mtime[0] = MSG_ReadFloat ();			
			break;
			
		case svc_clientdata:
			i = MSG_ReadShort ();
			CL_ParseClientdata (i);
			break;
		
		case svc_version:
			i = MSG_ReadLong ();
			if (i != PROTOCOL_VERSION)
				Host_Error ("CL_ParseServerMessage: Server is protocol %i instead of %i\n", i, PROTOCOL_VERSION);
			break;
			
		case svc_disconnect:
			Host_EndGame ("Server disconnected\n");

		case svc_print:
			Con_Printf ("%s", MSG_ReadString ());
			break;
			
		case svc_centerprint:
			SCR_CenterPrint (MSG_ReadString ());
			break;
			
		case svc_stufftext:
			Cbuf_AddText (MSG_ReadString ());
			break;
			
		case svc_damage:
			V_ParseDamage ();
			break;
			
		case svc_serverinfo:
			CL_ParseServerInfo ();
			vid.recalc_refdef = true;	// leave intermission full screen
			break;
			
		case svc_setangle:
			for (i=0 ; i<3 ; i++)
				cl.viewangles[i] = MSG_ReadAngle ();
			break;
			
		case svc_setview:
			cl.viewentity = MSG_ReadShort ();
			break;
					
		case svc_lightstyle:
			i = MSG_ReadByte ();
			if (i >= MAX_LIGHTSTYLES)
				Sys_Error ("svc_lightstyle > MAX_LIGHTSTYLES");
			strcpy (cl_lightstyle[i].map,  MSG_ReadString());
			cl_lightstyle[i].length = strlen(cl_lightstyle[i].map);
			break;
			
		case svc_sound:
			CL_ParseStartSoundPacket();
			break;
			
		case svc_stopsound:
			i = MSG_ReadShort();
			S_StopSound(i>>3, i&7);
			break;
		
		case svc_updatename:
			Sbar_Changed ();
			i = MSG_ReadByte ();
			if (i >= cl.maxclients)
				Host_Error ("CL_ParseServerMessage: svc_updatename > MAX_SCOREBOARD");
			strcpy (cl.scores[i].name, MSG_ReadString ());
			break;
			
		case svc_updatefrags:
			Sbar_Changed ();
			i = MSG_ReadByte ();
			if (i >= cl.maxclients)
				Host_Error ("CL_ParseServerMessage: svc_updatefrags > MAX_SCOREBOARD");
			cl.scores[i].frags = MSG_ReadShort ();
			break;			

		case svc_updatecolors:
			Sbar_Changed ();
			i = MSG_ReadByte ();
			if (i >= cl.maxclients)
				Host_Error ("CL_ParseServerMessage: svc_updatecolors > MAX_SCOREBOARD");
			cl.scores[i].colors = MSG_ReadByte ();
			CL_NewTranslation (i);
			break;
			
		case svc_particle:
			R_ParseParticleEffect ();
			break;

		case svc_spawnbaseline:
			i = MSG_ReadShort ();
			// must use CL_EntityNum() to force cl.num_entities up
			CL_ParseBaseline (CL_EntityNum(i));
			break;
		case svc_spawnstatic:
			CL_ParseStatic ();
			break;			
		case svc_temp_entity:
			CL_ParseTEnt ();
			break;

		case svc_setpause:
			{
				cl.paused = MSG_ReadByte ();

				if (cl.paused)
				{
					CDAudio_Pause ();
				}
				else
				{
					CDAudio_Resume ();
				}
			}
			break;
			
		case svc_signonnum:
			i = MSG_ReadByte ();
			if (i <= cls.signon)
				Host_Error ("Received signon %i when at %i", i, cls.signon);
			cls.signon = i;
			CL_SignonReply ();
			break;

		case svc_killedmonster:
			cl.stats[STAT_MONSTERS]++;
			break;

		case svc_foundsecret:
			cl.stats[STAT_SECRETS]++;
			break;

		case svc_updatestat:
			i = MSG_ReadByte ();
			if (i < 0 || i >= MAX_CL_STATS)
				Sys_Error ("svc_updatestat: %i is invalid", i);
			cl.stats[i] = MSG_ReadLong ();;
			break;
			
		case svc_spawnstaticsound:
			CL_ParseStaticSound ();
			break;

		case svc_cdtrack:
			cl.cdtrack = MSG_ReadByte ();
			cl.looptrack = MSG_ReadByte ();
			if ( (cls.demoplayback || cls.demorecording) && (cls.forcetrack != -1) )
				CDAudio_Play ((byte)cls.forcetrack, true);
			else
				CDAudio_Play ((byte)cl.cdtrack, true);
			break;

		case svc_intermission:
			cl.intermission = 1;
			cl.completed_time = cl.time;
			vid.recalc_refdef = true;	// go to full screen
			break;

		case svc_finale:
			cl.intermission = 2;
			cl.completed_time = cl.time;
			vid.recalc_refdef = true;	// go to full screen
			SCR_CenterPrint (MSG_ReadString ());			
			break;

		case svc_cutscene:
			cl.intermission = 3;
			cl.completed_time = cl.time;
			vid.recalc_refdef = true;	// go to full screen
			SCR_CenterPrint (MSG_ReadString ());			
			break;

		case svc_sellscreen:
			Cmd_ExecuteString ("help", src_command);
			break;
		}
	}
}

