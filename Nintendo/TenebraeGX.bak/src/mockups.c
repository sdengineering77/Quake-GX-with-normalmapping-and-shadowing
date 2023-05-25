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
int		texture_mode = GL_LINEAR;

refdef_t	r_refdef;
texture_t	*r_notexture_mip;

qcardtype       gl_cardtype = GENERIC; // gl_common.c

float		scr_centertime_off; // gl_screen.c
qboolean	scr_disabled_for_loading; // gl_screen.c
int			scr_copytop; // gl_screen.c
int			clearnotify; // gl_screen.c


float color_black[4] = {0.0, 0.0, 0.0, 0.0}; // gl_rmain.c
vec3_t	vup; // gl_rmain.c
vec3_t	vpn; // gl_rmain.c
vec3_t	vright; // gl_rmain.c
vec3_t	r_origin; // gl_rmain.c

// CVARS
cvar_t	mir_forcewater = {"mir_forcewater","0"};
cvar_t  gl_wireframe = {"gl_wireframe","0"}; 


// FUNCS

int GL_LoadTexture (char *identifier, int width, int height, byte *data, qboolean mipmap, qboolean alpha, qboolean bump)
{
	Con_DPrintf("GL_LoadTexture (char *identifier, int width, int height, byte *data, qboolean mipmap, qboolean alpha, qboolean bump)\n");
	return 0;
}

void	GL_GetOverrideName(char *identifier,char *tail, char *dest) {
	Con_DPrintf("GL_GetOverrideName(char *identifier,char *tail, char *dest)\n");
}

int GL_LoadLuma(char *identifier, qboolean mipmap) {
	Con_DPrintf("GL_LoadLuma(char *identifier, qboolean mipmap)\n");
	return 0;
}

void GL_SubdivideSurface (msurface_t *fa) {
	Con_DPrintf("GL_SubdivideSurface (msurface_t *fa)\n");
}

void R_InitSky (texture_t *mt) {
	Con_DPrintf("R_InitSky (texture_t *mt)\n");
}

void SCR_EndLoadingPlaque() {
	Con_DPrintf("SCR_EndLoadingPlaque()\n");
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

void SCR_BeginLoadingPlaque (void) { // gl_screen.c
	Con_DPrintf("SCR_BeginLoadingPlaque (void)\n");
}

void SCR_UpdateScreen(void) { // gl_screen.c
	Con_DPrintf("SCR_UpdateScreen (void)\n");
}

void R_AutomaticLightPos() { // gl_shadow.c
	Con_DPrintf("R_AutomaticLightPos()\n");
}

void R_LoadSkys (void) { // gl_rwarp.c
	Con_DPrintf("R_LoadSkys (void)\n");
}

void R_AddEfrags (entity_t *ent) { // gl_refrag.c
	Con_DPrintf("R_AddEfrags (entity_t *ent)\n");
}

void R_TranslatePlayerSkin (int playernum) { // gl_rmisc.c
	Con_DPrintf("R_TranslatePlayerSkin (int playernum)\n");
}

void D_FlushCaches (void) { // gl_rmisc.c
	Con_DPrintf("D_FlushCaches (void)\n");
}

void Sbar_Changed (void) { // sbar.c
	Con_DPrintf("Sbar_Changed (void)\n");
}

void R_NewMap () {
	Con_DPrintf("R_NewMap ()\n");
}

void R_CalcSvBsp(entity_t *ent) { // gl_shadow.c
	Con_DPrintf("R_CalcSvBsp(entity_t *ent)\n");
}

void SCR_CenterPrint (char *str) { // gl_screen.c
	Con_DPrintf("SCR_CenterPrint (char *str)\n");
}

void V_ParseDamage (void) { // view.c
	Con_DPrintf("V_ParseDamage (void)\n");
}

int GL_LoadShader( int target, const char *fileName ) { // gl_bumparb.c
	Con_DPrintf("GL_LoadShader( int target, const char *fileName )\n");
	return 0;
}

void GL_Bind (int texnum) { // gl_draw.c
	Con_DPrintf("GL_Bind (int texnum)\n");
}

void Draw_Character (int x, int y, int num) { // gl_draw.c
	Con_DPrintf("Draw_Character (int x, int y, int num)\n");
}

void Draw_String (int x, int y, char *str) { // gl_draw.c
	Con_DPrintf("Draw_String (int x, int y, char *str)\n");
}

void Draw_ConsoleBackground (int lines) { // gl_draw.c
	Con_DPrintf("Draw_ConsoleBackground (int lines)\n");
}

void Draw_SpiralConsoleBackground (int lines) { // gl_draw.c
	Con_DPrintf("Draw_SpiralConsoleBackground (int lines)\n");
}

void R_SpawnDecal(vec3_t center, vec3_t normal, vec3_t tangent,  ParticleEffect_t *effect) { // gl_decals.c
	Con_DPrintf("R_SpawnDecal(vec3_t center, vec3_t normal, vec3_t tangent,  ParticleEffect_t *effect)\n");
}

int EasyTgaLoad(char *filename) { // gl_warp.c
	Con_DPrintf("EasyTgaLoad(char *filename)\n");
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



