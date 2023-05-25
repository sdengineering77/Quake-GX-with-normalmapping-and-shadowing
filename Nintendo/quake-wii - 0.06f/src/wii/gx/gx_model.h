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

#ifndef __MODEL__
#define __MODEL__

#include "../../generic/modelgen.h"
#include "../../generic/spritegn.h"

/*

d*_t structures are on-disk representations
m*_t structures are in-memory

*/

// entity effects

#define	EF_BRIGHTFIELD			1
#define	EF_MUZZLEFLASH 			2
#define	EF_BRIGHTLIGHT 			4
#define	EF_DIMLIGHT 			8


/*
==============================================================================

BRUSH MODELS

==============================================================================
*/


//
// in memory representation
//
// !!! if this is changed, it must be changed in asm_draw.h too !!!
typedef struct
{
	vec3_t		position;
} mvertex_t;

#define	SIDE_FRONT	0
#define	SIDE_BACK	1
#define	SIDE_ON		2


// plane_t structure
// !!! if this is changed, it must be changed in asm_i386.h too !!!
typedef struct mplane_s
{
	vec3_t	normal;
	float	dist;
	byte	type;			// for texture axis selection and fast side tests
	byte	signbits;		// signx + signy<<1 + signz<<1
	byte	pad[2];
} mplane_t;

typedef struct texture_s
{
	char		name[16];
	unsigned	width, height;
	int			gl_texturenum;
	int			gl_normalmapnum;
	struct msurface_s	*texturechain;	// for gl_texsort drawing
	int			anim_total;				// total tenths in sequence ( 0 = no)
	int			anim_min, anim_max;		// time for this frame min <=time< max
	struct texture_s *anim_next;		// in the animation sequence
	struct texture_s *alternate_anims;	// bmodels in frmae 1 use these
	unsigned	offsets[MIPLEVELS];		// four mip maps stored
} texture_t;


#define	SURF_PLANEBACK		2
#define	SURF_DRAWSKY		4
#define SURF_DRAWSPRITE		8
#define SURF_DRAWTURB		0x10
#define SURF_DRAWTILED		0x20
#define SURF_DRAWBACKGROUND	0x40
#define SURF_UNDERWATER		0x80

// !!! if this is changed, it must be changed in asm_draw.h too !!!
typedef struct
{
	unsigned short	v[2];
	unsigned int	cachededgeoffset;
} medge_t;

typedef struct
{
	float		vecs[2][4];
	float		mipadjust;
	texture_t	*texture;
	int			flags;
} mtexinfo_t;

#define	VERTEXSIZE	7

typedef struct glpoly_s
{
	struct	glpoly_s	*next;
	struct	glpoly_s	*chain;
	int		numverts;
	int		flags;			// for SURF_UNDERWATER
	float	verts[4][VERTEXSIZE];	// variable sized (xyz s1t1 s2t2)
} glpoly_t;


// DRS: these really don't belong here... Also have problems with gltexture_r in light_t
#define SHADOWVOLFRAG_FLAG_USED	1<<0
#define SHADOWVOLFRAG_FLAG_VIS		1<<1

typedef struct shadowvolfrag_s {
	struct 	shadowvolfrag_s *nextfrag;
	struct 	shadowvolfrag_s *prevfrag;
	int		flags;
	Vector 	near;
	Vector 	far;
	Vector 	normal;
} shadowvolfrag_t;

#define MAX_NEIGHBOURING_SURFACES	6
#define SHADOWVOL_FLAG_USED						(1<<0)
#define SHADOWVOL_FLAG_HIDE_FRONTCAP	(1<<1)
#define SHADOWVOL_FLAG_HIDE_REARCAP		(1<<2)

typedef struct volumeneighbour_s {
	struct volumeneighbour_s 	*nextneighbour;
	struct shadowvol_s			*vol;
	qboolean 							used;
} volumeneighbour_t;

typedef struct shadowvol_s {
	shadowvolfrag_t			*nextfrag;
	struct shadowvol_s	*nextvol;
	volumeneighbour_t		*nextneighbour;
	qboolean 					used; // TODO use flags instead of this
	int 								flags;
	int								visframe;
//	qboolean				 capsvisible;
//	int 						num_shadowfrags;
//	int						vis; 	// bitmask to define what quads need to be drawn using the 
										// shadow fragments; bit 0=1 means a quad is drawn using 
										// shadowfrag[0] and shadowfrag[1] far and near vertices
} shadowvol_t;


#define	MAX_DLIGHTS		32
#define	LIGHT_FLAG_STATIC			1
#define	LIGHT_FLAG_DYNAMIC		2
#define	LIGHT_FLAG_POINTLIGHT	4
#define	LIGHT_FLAG_PROJLIGHT	8


typedef struct
{
	vec3_t	origin;
	float	radius;
	float	die;				// stop lighting after this time
	float	decay;				// drop this each second
	float	minlight;			// don't add when contributing less
	int		key;
	int 	style;
	int	flags;
//	float minmaxs[6];
	
//	gltexture_t  		*stenciltex; // 0 when no stencil available
	int 					stenciltexnum; // Temp hack -1 when no stencil available
	int					visframe; // visible in rendering frame?
	int 					num_staticshadowvolumes; // num static volumes
	int 					num_dynamicshadowvolumes; // num volumes
	shadowvol_t	*nextstaticshadowvolume; // pointer to list of shadow volumes
	shadowvol_t	*nextdynamicshadowvolume; // pointer to list of shadow volumes

#ifdef QUAKE2
	qboolean	dark;			// subtracts light instead of adding
#endif
} dlight_t;

// shadow volumes that hit the leaf
typedef struct mshadowdata_s {
	struct mshadowdata_s 	*nextshadow;
	shadowvol_t 					*volume;
} mshadowdata_t;

// lights that lit the leaf
typedef struct mlightdata_s {
	struct mlightdata_s *nextlight;
	dlight_t 					*light;
	float 						attenuation;
	mshadowdata_t		*shadowdata;
} mlightdata_t;


typedef struct msurfacelight_s {
	dlight_t		*light;
	float 			attenuation;
} msurfacelight_t;

// DRS
#define MAX_HWLIGHTS		4
#define MAX_SURFLIGHTS	4
#define MAX_STATICLIGHTS	8

typedef struct msurface_s
{
	int			visframe;		// should be drawn when node is crossed

	mplane_t	*plane;
	int			flags;

	int			firstedge;	// look up in model->surfedges[], negative numbers
	int			numedges;	// are backwards edges
	
	short		texturemins[2];
	short		extents[2];

	int			light_s, light_t;	// gl lightmap coordinates

	glpoly_t	*polys;				// multiple if warped
	struct		msurface_s	*texturechain;

	mtexinfo_t	*texinfo;
	
// lighting info
	int			dlightframe;
	int			dlightbits;
	int			litframe; // marks this surface for a given light 
	
	int						numstaticlights;
	int						numdynamiclights;
	msurfacelight_t 	lightdata[MAX_SURFLIGHTS];
	
	byte		styles[MAXLIGHTMAPS];
	byte		*samples;		// [numstyles*surfsize]
} msurface_t;


typedef struct mnode_s
{
// common with leaf
	int			contents;		// 0, to differentiate from leafs
	int			visframe;		// node needs to be traversed if current
	
	float		minmaxs[6];		// for bounding box culling

	struct mnode_s	*parent;

// node specific
	mplane_t	*plane;
	struct mnode_s	*children[2];	

	unsigned short		firstsurface;
	unsigned short		numsurfaces;
} mnode_t;



typedef struct mleaf_s
{
// common with node
	int			contents;		// wil be a negative contents number
	int			visframe;		// node needs to be traversed if current

	float		minmaxs[6];		// for bounding box culling

	struct mnode_s	*parent;

// leaf specific
	byte					*compressed_vis;
	efrag_t				*efrags;

	msurface_t		**firstmarksurface;
	int					nummarksurfaces;
	int					key;			// BSP sequence number for leaf's contents
	byte					ambient_sound_level[NUM_AMBIENTS];
	
	mlightdata_t 	*lightdata;
} mleaf_t;


// !!! if this is changed, it must be changed in asm_i386.h too !!!
typedef struct
{
	dclipnode_t	*clipnodes;
	mplane_t	*planes;
	int			firstclipnode;
	int			lastclipnode;
	vec3_t		clip_mins;
	vec3_t		clip_maxs;
} hull_t;

/*
==============================================================================

SPRITE MODELS

==============================================================================
*/


// FIXME: shorten these?
typedef struct mspriteframe_s
{
	int		width;
	int		height;
	float	up, down, left, right;
	int		gl_texturenum;
} mspriteframe_t;

typedef struct
{
	int				numframes;
	float			*intervals;
	mspriteframe_t	*frames[1];
} mspritegroup_t;

typedef struct
{
	spriteframetype_t	type;
	mspriteframe_t		*frameptr;
} mspriteframedesc_t;

typedef struct
{
	int					type;
	int					maxwidth;
	int					maxheight;
	int					numframes;
	float				beamlength;		// remove?
	void				*cachespot;		// remove?
	mspriteframedesc_t	frames[1];
} msprite_t;


/*
==============================================================================

ALIAS MODELS

Alias models are position independent, so the cache manager can move them.
==============================================================================
*/

typedef struct
{
	int				firstpose;
	int				numposes;
	float				interval;
	dtrivertx_t	bboxmin;
	dtrivertx_t	bboxmax;
	int				frame;
	char				name[16];
} maliasframedesc_t;

typedef struct
{
	dtrivertx_t		bboxmin;
	dtrivertx_t		bboxmax;
	int					frame;
} maliasgroupframedesc_t;

typedef struct
{
	int						numframes;
	int						intervals;
	maliasgroupframedesc_t	frames[1];
} maliasgroup_t;

// !!! if this is changed, it must be changed in asm_draw.h too !!!
typedef struct mtriangle_s {
	int					facesfront;
	int					vertindex[3];
} mtriangle_t;

typedef signed char 		vecs8_t[3]; 
typedef byte 					vecu8_t[3]; 

typedef signed short		trianglenbs_t[3]; // [0] = v[0]-v[1], [1] = v[1]-v[2], [2] = v[2] - v[0]

typedef struct maliastri_s {
	vecu8_t	v[3];
	vecs8_t	normal;
	float 		dist;
} maliastri_t;

typedef struct mtrivertx_s {
	byte			v[3];
	vecs8_t	normal;
	vecs8_t	tangent;
	vecs8_t	bitangent;	
} mtrivertx_t;


#define	MAX_SKINS	32
typedef struct {
	int			ident;
	int			version;
	vec3_t		scale;
	vec3_t		scale_origin;
	float		boundingradius;
	vec3_t		eyeposition;
	int			numskins;
	int			skinwidth;
	int			skinheight;
	int			numverts;
	int			numtris;
	int			numframes;
	synctype_t	synctype;
	int			flags;
	float		size;

	int							numposes;
	int							poseverts;
//	int							posedata;	// numposes*poseverts trivert_t
	int							mvertxdata;	// numposes*poseverts trivert_t
	int							commands;	// gl command list with embedded s/t
	int							tridata;
	int							neighbourdata;
//	int							nbtdata;
	int							gl_texturenum[MAX_SKINS][4];
	int							gl_normalmapnum[MAX_SKINS][4];
	int							texels[MAX_SKINS];	// only for player skins
	maliasframedesc_t	frames[1];	// variable sized
} aliashdr_t;

#define	MAXALIASVERTS	1024
#define	MAXALIASFRAMES	256
#define	MAXALIASTRIS	2048
extern	aliashdr_t	*pheader;
extern	stvert_t	stverts[MAXALIASVERTS];
extern	mtriangle_t	triangles[MAXALIASTRIS];
extern	dtrivertx_t	*poseverts[MAXALIASFRAMES];

// TODO: perhaps not the best place...
#define NUMVERTEXNORMALS	162
extern float	r_avertexnormals[NUMVERTEXNORMALS][3];


//===================================================================

//
// Whole model
//

typedef enum {mod_brush, mod_sprite, mod_alias} modtype_t;

#define	EF_ROCKET			1			// leave a trail
#define	EF_GRENADE			2			// leave a trail
#define	EF_GIB					4			// leave a trail
#define	EF_ROTATE			8			// rotate (bonus items)
#define	EF_TRACER			16			// green split trail
#define	EF_ZOMGIB			32			// small blood trail
#define	EF_TRACER2			64			// orange split trail + rotate
#define	EF_TRACER3			128			// purple trail
#define 	EF_NOSHADOW		256		// noshadow
#define 	EF_FULLBRIGHT	512		// fullbright
#define 	EF_EMITLIGHT		1024		// emit light


typedef struct model_s
{
	char		name[MAX_QPATH];
	qboolean	needload;		// bmodels and sprites don't cache normally

	modtype_t	type;
	int			numframes;
	synctype_t	synctype;
	
	int			flags;

//
// volume occupied by the model graphics
//		
	vec3_t		mins, maxs;
	float		radius;

//
// solid volume for clipping 
//
	qboolean	clipbox;
	vec3_t		clipmins, clipmaxs;

//
// brush model
//
	int			firstmodelsurface, nummodelsurfaces;

	int			numsubmodels;
	dmodel_t	*submodels;

	int			numplanes;
	mplane_t	*planes;

	int			numleafs;		// number of visible leafs, not counting 0
	mleaf_t		*leafs;

	int			numvertexes;
	mvertex_t	*vertexes;

	int			numedges;
	medge_t		*edges;

	int			numnodes;
	mnode_t		*nodes;

	int			numtexinfo;
	mtexinfo_t	*texinfo;

	int			numsurfaces;
	msurface_t	*surfaces;

	int			numsurfedges;
	int			*surfedges;

	int			numclipnodes;
	dclipnode_t	*clipnodes;

	int			nummarksurfaces;
	msurface_t	**marksurfaces;

	hull_t		hulls[MAX_MAP_HULLS];

	int			numtextures;
	texture_t	**textures;

	byte		*visdata;
	byte		*lightdata;
	char		*entities;

//
// additional model data
//
	cache_user_t	cache;		// only access through Mod_Extradata

} model_t;

//============================================================================

void	Mod_Init (void);
void	Mod_ClearAll (void);
model_t *Mod_ForName (char *name, qboolean crash);
void	*Mod_Extradata (model_t *mod);	// handles caching
void	Mod_TouchModel (char *name);

mleaf_t *Mod_PointInLeaf (float *p, model_t *model);
byte	*Mod_LeafPVS (mleaf_t *leaf, model_t *model);

#endif	// __MODEL__
