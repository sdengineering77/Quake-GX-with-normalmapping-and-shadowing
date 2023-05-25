#include "quakedef.h"

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


int numShadowLights; // gl_shadow.c
int numStaticShadowLights;
int numUsedShadowLights; //number of shadow lights acutally drawn this frame
shadowlight_t *usedshadowlights[MAXUSEDSHADOWLIGHS]; // gl_shadow.c

int aliasCacheRequests, aliasFullCacheHits, aliasPartialCacheHits; // gl_Aliasinstant.c
int brushCacheRequests, brushFullCacheHits, brushPartialCacheHits; // gl_brushinstant.c

PFNGLPNTRIANGLESIATIPROC qglPNTrianglesiATI = NULL; // gl_bumpradeon.c


// CVARS


// FUNCS
void R_LoadVertexProgram(){ // gl_bumpgf.c
	Con_DPrintf("R_LoadVertexProgram()\n");
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


void R_DrawWorldBumped() { // glbumpdriver.c
	Con_DPrintf("R_DrawWorldBumped()\n");  // glbumpdriver.c
}

void R_DrawLightEntities (shadowlight_t *l) {
	Con_DPrintf("R_DrawLightEntities ()\n");
}

void R_DrawAliasObjectLight(entity_t *e,void (*AliasGeoSender) (aliashdr_t *paliashdr, aliasframeinstant_t* instant)) { // gl_bumpmap.c
	Con_DPrintf("R_DrawAliasObjectLight(entity_t *e,void (*AliasGeoSender) (aliashdr_t *paliashdr, aliasframeinstant_t* instant))\n");
}

void R_DrawAliasBumped(aliashdr_t *paliashdr, aliasframeinstant_t *instant) { // gl_bumpmap.c
	Con_DPrintf("R_DrawAliasBumped(aliashdr_t *paliashdr, aliasframeinstant_t *instant)\n");
}

void R_DrawSpriteModelWV (entity_t *e) { // gl_bumpmap.c
	Con_DPrintf("R_DrawSpriteModelWV (entity_t *e)\n");
}

void GL_SetupCubeMapMatrix(qboolean world) { // gl_bumpmap.c
	Con_DPrintf("GL_SetupCubeMapMatrix(qboolean world)\n");
}

void GL_EnableColorShader (qboolean specular)  {
	Con_DPrintf("GL_EnableColorShader (qboolean specular)\n");
}

void GL_DisableColorShader (qboolean specular)  {
	Con_DPrintf("GL_DisableColorShader (qboolean specular)\n");
}

void R_WorldToObjectMatrix(entity_t *e, matrix_4x4 result) { // gl_bumpmap.c
	Con_DPrintf("R_WorldToObjectMatrix(entity_t *e, matrix_4x4 result)\n");
}