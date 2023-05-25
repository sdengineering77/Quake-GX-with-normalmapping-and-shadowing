#include "quakedef.h"

float	r_avertexnormals[NUMVERTEXNORMALS][3] = {
#include "anorms.h"
};

// VARS
server_t		sv;

server_static_t	svs;
viddef_t	vid;				// global video state

client_static_t	cls;

unsigned        d_8to24table[256];

refdef_t	r_refdef;
texture_t	*r_notexture_mip;

float		scr_centertime_off; // gl_screen.c
qboolean	scr_disabled_for_loading; // gl_screen.c
int			scr_copytop; // gl_screen.c
int			clearnotify; // gl_screen.c
int			glx, gly, glwidth, glheight; // gl_screen.c


vec3_t	vup; // gl_rmain.c
vec3_t	vpn; // gl_rmain.c
vec3_t	vright; // gl_rmain.c
vec3_t	r_origin; // gl_rmain.c

int		skytexturenum; // gl_warp.c
char	skybox_name[64]; // gl_warp.c
float skybox_cloudspeed; // gl_warp.c

mmvertex_t *globalVertexTable = NULL; // gl_rsurf.c

int numShadowLights; // gl_shadow.c
int numStaticShadowLights;
int numUsedShadowLights; //number of shadow lights acutally drawn this frame
shadowlight_t *usedshadowlights[MAXUSEDSHADOWLIGHS]; // gl_shadow.c

int aliasCacheRequests, aliasFullCacheHits, aliasPartialCacheHits; // gl_Aliasinstant.c
int brushCacheRequests, brushFullCacheHits, brushPartialCacheHits; // gl_brushinstant.c


PFNGLACTIVETEXTUREARBPROC qglActiveTextureARB = NULL;
PFNGLCLIENTACTIVETEXTUREARBPROC qglClientActiveTextureARB = NULL;

PFNGLMULTITEXCOORD1FARBPROC qglMultiTexCoord1fARB = NULL;
PFNGLMULTITEXCOORD2FARBPROC qglMultiTexCoord2fARB = NULL;
PFNGLMULTITEXCOORD2FVARBPROC qglMultiTexCoord2fvARB = NULL;
PFNGLMULTITEXCOORD3FARBPROC qglMultiTexCoord3fARB = NULL;
PFNGLMULTITEXCOORD3FVARBPROC qglMultiTexCoord3fvARB = NULL;


/* ================================ GL_RMAIN.C ==================================== */

entity_t	r_worldentity;

qboolean	r_cache_thrash;		// compatability

vec3_t		modelorg, r_entorigin;
entity_t	*currententity;

int			r_visframecount;	// bumped when going to a new PVS
int			r_framecount;		// used for dlight push checking
int			r_lightTimestamp;	// PENTA: incresed when next light is started

mplane_t	frustum[4];

int			c_brush_polys, c_alias_polys;

qboolean	envmap;				// true during envmap command capture 

int			currenttexture = -1;		// to avoid unnecessary texture sets

int			cnttextures[16] = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };     // cached

int			particletexture;	// little dot for particles
int			particletexture_smoke;
int			particletexture_glow;
int			particletexture_glow2;
int			particletexture_tele;
int			particletexture_blood;
int			particletexture_dirblood;
int			playertextures;		// up to 16 color translated skins

int			mirrortexturenum;	// quake texturenum, not gltexturenum
qboolean	mirror;
qboolean	glare;
mplane_t	*mirror_plane;
mplane_t	mirror_far_plane; //far plane of the view frustum for mirrors
int			mirror_clipside;
msurface_t	*causticschain;
int			caustics_textures[8];
qboolean	busy_caustics = false;

//
// view origin
//
vec3_t	vup;
vec3_t	vpn;
vec3_t	vright;
vec3_t	r_origin;

float	r_projection_matrix[16];
float	r_world_matrix[16];
float	r_base_world_matrix[16];
double	r_Dproject_matrix[16];//PENTA
double	r_Dworld_matrix[16];//PENTA
int		r_Iviewport[4];//PENTA
int		numClearsSaved;//PENTA

float color_black[4] = {0.0, 0.0, 0.0, 0.0};

//
// screen size info
//
refdef_t	r_refdef;

mleaf_t		*r_viewleaf, *r_oldviewleaf;

texture_t	*r_notexture_mip;

int		d_lightstylevalue[256];	// 8.8 fraction of base light value


void R_MarkLeaves (void);
void R_Clear (void);

cvar_t	r_norefresh = {"r_norefresh","0"};
cvar_t	r_drawentities = {"r_drawentities","1"};
cvar_t	r_drawviewmodel = {"r_drawviewmodel","1"};
cvar_t	r_fullbright = {"r_fullbright","0"};
cvar_t	r_lightmap = {"r_lightmap","0"};
cvar_t	r_shadows = {"r_shadows","0"};
//cvar_t	r_mirroralpha = {"r_mirroralpha","1"};
cvar_t	r_wateralpha = {"r_wateralpha","0.5"};//PENTA: different default
cvar_t	r_dynamic = {"r_dynamic","1"};
cvar_t	r_novis = {"r_novis","0"};

cvar_t	gl_finish = {"gl_finish","0"};
cvar_t	gl_clear = {"gl_clear","0"};
cvar_t	gl_cull = {"gl_cull","1"};
//cvar_t	gl_texsort = {"gl_texsort","1"};
cvar_t	gl_smoothmodels = {"gl_smoothmodels","1"};
cvar_t	gl_affinemodels = {"gl_affinemodels","0"};
cvar_t	gl_polyblend = {"gl_polyblend","1"};
cvar_t	gl_flashblend = {"gl_flashblend","1"};
cvar_t	gl_playermip = {"gl_playermip","0"};
cvar_t	gl_nocolors = {"gl_nocolors","0"};
//cvar_t	gl_keeptjunctions = {"gl_keeptjunctions","0"}; PENTA: Don't remove t-junctions
cvar_t	gl_reporttjunctions = {"gl_reporttjunctions","0"};
cvar_t	gl_doubleeyes = {"gl_doubleeys", "1"};

cvar_t	gl_watershader = {"gl_watershader","1"};//PENTA: water shaders ON/OFF
cvar_t	gl_calcdepth = {"gl_calcdepth","0"};

cvar_t	sh_lightmapbright = {"sh_lightmapbright","0.5"};//PENTA: brightness of lightmaps
cvar_t	sh_radiusscale = {"sh_radiusscale","0.5"};//PENTA: brightness of lightmaps
cvar_t	sh_visiblevolumes = {"sh_visiblevolumes","0"};//PENTA: draw shadow volumes on/off
cvar_t  sh_entityshadows = {"sh_entityshadows","1"};//PENTA: entities cast shadows on/off
cvar_t  sh_worldshadows = {"sh_worldshadows","1"};//PENTA: brushes cast shadows on/off
cvar_t  sh_showlightnum = {"sh_showlightnum","0"};//PENTA: draw numer of lights used this frame
cvar_t  sh_glows = {"sh_glows","1"};//PENTA: draw glows around some light sources
cvar_t	sh_fps = {"sh_fps","0", true};	// set for running times - muff
cvar_t	sh_debuginfo = {"sh_debuginfo","0"};
cvar_t	sh_norevis = {"sh_norevis","0"};//PENTA: no recalculating the vis for light positions
cvar_t	sh_nosvbsp = {"sh_nosvbsp","0"};//PENTA: no shadow bsp
cvar_t	sh_noeclip = {"sh_noeclip","0"};//PENTA: no entity/leaf clipping for shadows
cvar_t  sh_infinitevolumes = {"sh_infinitevolumes","0", true};//PENTA: Nvidia infinite volumes 
cvar_t  sh_noscissor = {"sh_noscissor","0"};//PENTA: no scissoring
cvar_t	sh_nocleversave = {"sh_nocleversave","0"};//PENTA: don't change light drawing order to reduce stencil clears
cvar_t	sh_bumpmaps = {"sh_bumpmaps","1"};//PENTA: enable disable bump mapping
cvar_t	sh_colormaps = {"sh_colormaps","1"};//PENTA: enable disable textures on the world (light will remain)
cvar_t	sh_playershadow = {"sh_playershadow","1"};//PENTA: the player casts a shadow (the one YOU are playing with, others always cast shadows)
cvar_t	sh_nocache = {"sh_nocache","0"};
cvar_t	sh_glares = {"sh_glares","0",true};
cvar_t	sh_noefrags = {"sh_noefrags","0",true};
cvar_t	sh_showtangent = {"sh_showtangent","0"};
cvar_t	sh_noshadowpopping = {"sh_noshadowpopping","1"};

cvar_t	mir_detail = {"mir_detail","1",true};
cvar_t	mir_frameskip = {"mir_frameskip","1",true};
cvar_t	mir_forcewater = {"mir_forcewater","0"};
cvar_t	mir_distance = {"mir_distance","400",true};
cvar_t  gl_wireframe = {"gl_wireframe","0"}; 
cvar_t  gl_caustics = {"gl_caustics","1"};
cvar_t  gl_truform = {"gl_truform","0"};
cvar_t  gl_truform_tesselation = {"gl_truform_tesselation","4"};
cvar_t	gl_transformlerp = {"gl_transformlerp","0",true};//Erad - transform interpolation cvar (off by default due to bugs)

cvar_t	fog_r = {"fog_r","0.2"};
cvar_t	fog_g = {"fog_g","0.1"};
cvar_t	fog_b = {"fog_b","0.0"};
cvar_t	fog_start = {"fog_start","256"};
cvar_t	fog_end = {"fog_end","700"};
cvar_t	fog_enabled = {"fog_enabled","1"};
cvar_t  fog_waterfog = {"fog_waterfog","1"}; 
float fog_color[4];


/* =============================================================================== */

// CVARS


// FUNCS
void R_LoadVertexProgram(){ // gl_bumpgf.c
	Con_DPrintf("R_LoadVertexProgram()\n");
}

void R_FillEntityLeafs (entity_t *ent) { // gl_refrag.c
	Con_DPrintf("R_FillEntityLeafs (entity_t *ent)\n");
}

void R_RemoveEfrags (entity_t *ent) { // gl_refrag.c
	Con_DPrintf("R_RemoveEfrags (entity_t *ent)\n");
}

int R_CubeMapLookup(int i) { // gl_shadow.c
	Con_DPrintf("R_CubeMapLookup(int i)\n");
	return 0;
}

void R_AutomaticLightPos() { // gl_shadow.c
	Con_DPrintf("R_AutomaticLightPos()\n");
}

void R_AddEfrags (entity_t *ent) { // gl_refrag.c
	Con_DPrintf("R_AddEfrags (entity_t *ent)\n");
}

void R_CalcSvBsp(entity_t *ent) { // gl_shadow.c
	Con_DPrintf("R_CalcSvBsp(entity_t *ent)\n");
}

int GL_LoadShader( int target, const char *fileName ) { // gl_bumparb.c
	Con_DPrintf("GL_LoadShader( int target, const char *fileName )\n");
	return 0;
}



void M_Keydown (int key) { // menu.c
	Con_DPrintf("M_Keydown (int key)\n");
}

void M_ToggleMenu_f (void) {  // menu.c
	Con_DPrintf("M_ToggleMenu_f (void)\n");
}

void M_Init (void) { // menu.c
	Con_DPrintf("M_Init (void)\n");
}

void M_Menu_Quit_f (void) { // menu.c
	Con_DPrintf("M_Menu_Quit_f (void)\n");
}

void M_Menu_Main_f (void) { // menu.c
	Con_DPrintf("M_Menu_Main_f (void)\n");
}

void M_DrawPic (int x, int y, qpic_t *pic) {
	Con_DPrintf("M_DrawPic (int x, int y, qpic_t *pic)\n");
}

void M_Draw (void) { // menu.c
	Con_DPrintf("M_Draw (void)\n");
}

void R_RenderView (void) { // gl_rmain.c
	Con_DPrintf("R_RenderView (void)\n");
}

void R_NewMirrorChains() { // gl_rmain.c
	Con_DPrintf("R_NewMirrorChains()\n");
}

void R_InitMirrorChains() { // gl_rmain.c
	Con_DPrintf("R_InitMirrorChains()\n");
}

void GL_BuildLightmaps (void) { // gl_rsurf.c
	Con_DPrintf("GL_BuildLightmaps (void)\n");
}

void R_CopyVerticesToHunk(void) { // gl_rsurf.c
	Con_DPrintf("R_CopyVerticesToHunk(void)\n");
}

void GL_DisableMultitexture(void) { // gl_rsurf.c
	Con_DPrintf("GL_DisableMultitexture(void)\n");
}

void GL_EnableMultitexture(void) { // gl_rsurf.c
	Con_DPrintf("void GL_EnableMultitexture(void)\n");
}

int R_GetNextVertexIndex(void) { // gl_rsurf.c
	Con_DPrintf("int R_GetNextVertexIndex(void)\n");
	return 0;
}

int R_AllocateVertexInTemp(vec3_t pos, float texture [2], float lightmap[2]) { // gl_rsurf.c
	Con_DPrintf("R_AllocateVertexInTemp(vec3_t pos, float texture [2], float lightmap[2])\n");
	return 0;
}

void R_ClearInstantCaches() { // gl_aliasinstant.c
	Con_DPrintf("R_ClearInstantCaches()\n");
}

void R_ClearBrushInstantCaches() { // gl_brushinstant.c
	Con_DPrintf("R_ClearBrushInstantCaches()\n");
}

void V_RenderView (void) { // view.c
	Con_DPrintf("V_RenderView (void)\n");
}

void V_ParseDamage (void) { // view.c
	Con_DPrintf("V_ParseDamage (void)\n");
}

void V_UpdatePalette (void) {
	Con_DPrintf("V_UpdatePalette (void)\n");
}

void R_RenderGlow (shadowlight_t *light) { // gl_shadow.c
	Con_DPrintf("R_RenderGlow (shadowlight_t *light)\n");
}


