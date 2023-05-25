/*---------------------------------------------------------------------------------

	nehe lesson 6 port to GX by shagkur

---------------------------------------------------------------------------------*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <malloc.h>
#include <math.h>
#include <gccore.h>
#include <wiiuse/wpad.h>

#include "crate_tpl.h"
#include "crate.h"

#define DEFAULT_FIFO_SIZE	(256*1024)

#define _SHIFTL(v, s, w)	\
    ((u32) (((u32)(v) & ((0x01 << (w)) - 1)) << (s)))
#define _SHIFTR(v, s, w)	\
    ((u32)(((u32)(v) >> (s)) & ((0x01 << (w)) - 1)))

#define GX_LOAD_BP_REG(x)				\
	do {								\
		FIFO_PUTU8(0x61);				\
		FIFO_PUTU32((x));				\
	} while(0)



typedef struct tagtexdef
{
	void *pal_data;
	void *tex_data;
	u32 sz_x;
	u32 sz_y;
	u32 fmt;
	u32 min_lod;
	u32 max_lod;
	u32 min;
	u32 mag;
	u32 wrap_s;
	u32 wrap_t;
	void *nextdef;
} texdef;

static GXRModeObj *rmode = NULL;
static void *frameBuffer[2] = { NULL, NULL};
//static texdef *txdef = (texdef*)crate0_texture;

static GXColor litcolors[] = {
        { 0xFF, 0xFF, 0xFF, 0xFF }, // Light color 1
        { 0x00, 0x00, 0x00, 0xFF }, // Ambient 1
        { 0xFF, 0xFF, 0xFF, 0xFF }  // Material 1
};



Vector setlight(Mtx view,f32 theta,f32 phi,f32 dist, GXColor litcol, GXColor ambcol,GXColor matcol)
{
	Vector lpos;
	f32 _theta,_phi;
	GXLightObj lobj;

	_theta = (f32)theta*M_PI/180.0f;
	_phi = (f32)phi*M_PI/180.0f;
	lpos.x = dist * cosf(_phi) * sinf(_theta);
	lpos.y = dist * sinf(_phi);
	lpos.z = dist * cosf(_phi) * cosf(_theta);

	guVecMultiply(view,&lpos,&lpos);

	GX_InitLightPos(&lobj,lpos.x,lpos.y,lpos.z);
	GX_InitLightColor(&lobj,litcol);
	GX_LoadLightObj(&lobj,GX_LIGHT0);
	
	// set number of rasterized color channels
	GX_SetNumChans(1);
    GX_SetChanCtrl(GX_COLOR0,GX_ENABLE,GX_SRC_REG,GX_SRC_REG,GX_LIGHT0,GX_DF_CLAMP,GX_AF_NONE);
    GX_SetChanAmbColor(GX_COLOR0A0,ambcol);
    GX_SetChanMatColor(GX_COLOR0A0,matcol);
	
	return lpos;
}


int main(int argc,char **argv)
{
	f32 yscale,zt = 0;
	u32 xfbHeight;
	u32 fb = 0;
	f32 rquad = 0.0f;
	u32 first_frame = 1;
	GXTexObj texture;
	GXTexObj light_tex;
	GXTexObj reflectionlight_tex;
	
	Mtx nullMtx = 
		{{ 0.0f,  0.0f,  0.0f,  0.0f},
		 { 0.0f,  0.0f,  0.0f,  0.0f},
		 { 0.0f,  0.0f,  0.0f,  0.0f}};
	Mtx halfMtx = 
		{{ 0.5f,  0.0f,  0.0f,  0.0f},
		 { 0.0f,  0.5f,  0.0f,  0.0f},
		 { 0.0f,  0.0f,  0.5f,  0.0f}};
	Mtx view; // view and perspective matrices
	Mtx model, modelview, mvi;
	Mtx44 perspective;
	void *gpfifo = NULL;
	GXColor background = {0, 0, 0, 0xff};
	Vector cam = {0.0F, 0.0F, 0.0F},
			up = {0.0F, 1.0F, 0.0F},
		  look = {0.0F, 0.0F, -1.0F};
	TPLFile crateTPL;

	VIDEO_Init();
	WPAD_Init();

	rmode = VIDEO_GetPreferredMode(NULL);

	// allocate the fifo buffer
	gpfifo = memalign(32,DEFAULT_FIFO_SIZE);
	memset(gpfifo,0,DEFAULT_FIFO_SIZE);

	// allocate 2 framebuffers for double buffering
	frameBuffer[0] = SYS_AllocateFramebuffer(rmode);
	frameBuffer[1] = SYS_AllocateFramebuffer(rmode);

	// configure video
	VIDEO_Configure(rmode);
	VIDEO_SetNextFramebuffer(frameBuffer[fb]);
	VIDEO_Flush();
	VIDEO_WaitVSync();
	if(rmode->viTVMode&VI_NON_INTERLACE) VIDEO_WaitVSync();

	fb ^= 1;

	// init the flipper
	GX_Init(gpfifo,DEFAULT_FIFO_SIZE);
 
	// clears the bg to color and clears the z buffer
	GX_SetCopyClear(background, 0x00ffffff);
 
	// other gx setup
	GX_SetViewport(0,0,rmode->fbWidth,rmode->efbHeight,0,1);
	yscale = GX_GetYScaleFactor(rmode->efbHeight,rmode->xfbHeight);
	xfbHeight = GX_SetDispCopyYScale(yscale);
	GX_SetScissor(0,0,rmode->fbWidth,rmode->efbHeight);
	GX_SetDispCopySrc(0,0,rmode->fbWidth,rmode->efbHeight);
	GX_SetDispCopyDst(rmode->fbWidth,xfbHeight);
	GX_SetCopyFilter(rmode->aa,rmode->sample_pattern,GX_TRUE,rmode->vfilter);
	GX_SetFieldMode(rmode->field_rendering,((rmode->viHeight==2*rmode->xfbHeight)?GX_ENABLE:GX_DISABLE));
 
	if (rmode->aa)
        GX_SetPixelFmt(GX_PF_RGB565_Z16, GX_ZC_LINEAR);
    else
        GX_SetPixelFmt(GX_PF_RGB8_Z24, GX_ZC_LINEAR);

	GX_SetCullMode(GX_CULL_BACK);
	GX_CopyDisp(frameBuffer[fb],GX_TRUE);
	GX_SetDispCopyGamma(GX_GM_1_0);

	// setup the vertex attribute table
	// describes the data
	// args: vat location 0-7, type of data, data format, size, scale
	// so for ex. in the first call we are sending position data with
	// 3 values X,Y,Z of size F32. scale sets the number of fractional
	// bits for non float data.
	GX_ClearVtxDesc();
	GX_SetVtxDesc(GX_VA_POS, GX_DIRECT);
	GX_SetVtxDesc(GX_VA_NBT, GX_DIRECT);
	GX_SetVtxDesc(GX_VA_TEX0, GX_DIRECT);
	
	GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
	GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_NBT, GX_NRM_NBT3, GX_F32, 0);
	GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_TEX_ST, GX_F32, 0);

    GX_InvVtxCache();
	GX_InvalidateTexAll();
	TPL_OpenTPLFromMemory(&crateTPL, (void *)crate_tpl,crate_tpl_size);
	TPL_GetTexture(&crateTPL, crate, &texture);
	TPL_GetTexture(&crateTPL, light, &light_tex);
	TPL_GetTexture(&crateTPL, reflectionlight, &reflectionlight_tex);

	// setup our camera at the origin
	// looking down the -z axis with y up
	guLookAt(view, &cam, &up, &look);
 
	// setup our projection matrix
	// this creates a perspective matrix with a view angle of 90,
	// and aspect ratio based on the display resolution
    f32 w = rmode->viWidth;
    f32 h = rmode->viHeight;
	guPerspective(perspective, 45, (f32)w/h, 0.1F, 300.0F);
	GX_LoadProjectionMtx(perspective, GX_PERSPECTIVE);

	Vector cubeAxis = {1,1,0};

	
	f32 dir = 120.0f;
	zt = 8.0f;
	rquad = 45.0f;
	u8 mode = 1;
	u8 vsync = 1;
	
	f32 poss = 0.0f;
	while(1) {

		WPAD_ScanPads();
		if(WPAD_ButtonsDown(0) & WPAD_BUTTON_HOME) exit(0);
		else if (WPAD_ButtonsHeld(0)&WPAD_BUTTON_LEFT) zt -= 0.25f;
		else if (WPAD_ButtonsHeld(0)&WPAD_BUTTON_RIGHT) zt += 0.25f;
		else if (WPAD_ButtonsHeld(0)&WPAD_BUTTON_UP) dir -= 0.25f;
		else if (WPAD_ButtonsHeld(0)&WPAD_BUTTON_DOWN) dir += 0.25f;
		else if (WPAD_ButtonsHeld(0)&WPAD_BUTTON_A) mode=0;
		else if (WPAD_ButtonsHeld(0)&WPAD_BUTTON_B) mode=1;
		else if (WPAD_ButtonsHeld(0)&WPAD_BUTTON_PLUS) mode^=1;
		else if (WPAD_ButtonsHeld(0)&WPAD_BUTTON_MINUS) vsync^=1;
	

		// set number of rasterized color channels
		GX_SetNumChans(1);
		
		// set the light
		Vector lpos = setlight(view,dir, 0, zt, litcolors[0],litcolors[1],litcolors[2]);
//		dir+= 0.05f;
		if (dir >= 360 ) dir = 0;
		else if (dir <= 0) dir = 360;
		
		
		// ================= SHADER STUFF ================= 

		GX_LoadTexMtxImm(nullMtx, GX_TEXMTX0, GX_MTX3x4);
		GX_LoadTexMtxImm(halfMtx, GX_TEXMTX1, GX_MTX3x4);
//		GX_LoadPosMtxImm(nullMtx, GX_PNMTX1);
//void GX_LoadNrmMtxImm(Mtx mt,u32 pnidx);


	
		// VERTEX SHADER

		GXLightObj camlightobj;
		GX_InitLightPos(&camlightobj, 0.0f, 0.0f, 0.0f);
		GX_InitLightColor(&camlightobj, litcolors[1]);
		GX_LoadLightObj(&camlightobj, GX_LIGHT7);
		
		//set number of textures to generate
		GX_SetNumTexGens(4);

		// setup texture coordinate generation
		// args: texcoord slot 0-7, matrix type, source to generate texture coordinates from, matrix to use
		GX_SetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
		// text coord 1 renders st = (0, 0) TODO: is it possible to use mtx to render to 0, 0. Safes vertex bandwith
		GX_SetTexCoordGen(GX_TEXCOORD1, GX_TG_MTX2x4, GX_TG_TEX0, GX_TEXMTX0); 
		// text coord 2 renders the bump offset since it uses coord 1 as origin
		GX_SetTexCoordGen(GX_TEXCOORD2, GX_TG_BUMP0, GX_TG_TEXCOORD1, GX_IDENTITY);
//		GX_SetTexCoorScaleManually(GX_TEXCOORD2,GX_TRUE,128,128);
		// text coord 3 renders the bump offset related to camera position
		GX_SetTexCoordGen(GX_TEXCOORD3, GX_TG_BUMP7, GX_TG_TEXCOORD1, GX_IDENTITY);
//		GX_SetTexCoorScaleManually(GX_TEXCOORD3,GX_TRUE,128,128);
		
//		GX_SetTexCoordGen(GX_TEXCOORD3, GX_TG_MTX2x4, GX_TG_TEX0, GX_TEXMTX0); 


		// PIXEL SHADER
		GX_SetCopyClamp(GX_CLAMP_BOTTOM);
		u8 tevstage = GX_TEVSTAGE0;

		// setup stage 0 to calculate a light scale value which culls out the light when it
		// is behind the surface. 
		GX_SetTevColorIn(tevstage, GX_CC_RASC, GX_CC_ZERO, GX_CC_ONE, GX_CC_RASC);	
		GX_SetTevColorOp(tevstage, GX_TEV_COMP_A8_GT, GX_TB_ZERO, GX_CS_DIVIDE_2, GX_FALSE, GX_TEVREG1);
		GX_SetTevOrder(tevstage, GX_TEXCOORDNULL, GX_TEXMAP_DISABLE, GX_COLOR0A0);
		tevstage++;
		
		// ind stage 0 is set up to read normal map from texmap 0 
		GX_SetIndTexOrder(GX_INDTEXSTAGE0,GX_TEXCOORD0,GX_TEXMAP0);
		GX_SetIndTexCoordScale(GX_INDTEXSTAGE0,GX_ITS_1,GX_ITS_1); // normal map texture scale 1:1

		// setup indirect unit for tev stage 0 (for some reason I get a ABGR triplet, so transforms are done on normal map's B and G components)
		f32 offset_mtx[2][3] = {
			{  0.0f, -0.125f,    0.0f}, // B -> horizontal coordinate (s)
			{  0.0f,    0.0f, -0.125f}  // G -> vertical coordinate (t)
		};
		

		GX_SetNumIndStages(1);
		GX_SetIndTexMatrix(GX_ITM_0,offset_mtx, 0);
		
		GX_SetTevIndirect(
			tevstage, // tevstage 0 is used to combine normal map and lightmap
			GX_INDTEXSTAGE0, // ind stage is used to read normal map
			GX_ITF_8, // texture format 8 bits per channel
			GX_ITB_STU, // use bias on s and t channels (red and green and blue)
			GX_ITM_0, // use 3x2 matrix 0
			GX_ITW_OFF, // do not use texture wrapping
			GX_ITW_OFF, // do not use texture wrapping
			GX_FALSE, // don't add in previous coordinates
			GX_FALSE, // don't use mipmap stuff
			GX_ITBA_OFF // don't use bump alpha (TODO: can this be used to blend reflection and difuse?)
			); 


		// setup tev stage 1 to lookup the lightmap
		// the texture coordinates used should be the sum of the bump offset coordinates and
		// the indirect lookup associated with it using SetTevIndirect() above.
//		GX_SetTevColorIn(tevstage, GX_CC_RASC, GX_CC_ZERO, GX_CC_TEXC, GX_CC_ZERO);

		GX_SetTevKColorSel(tevstage, GX_TEV_KCSEL_1_8); // ambient intensity
		GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_C1, GX_CC_KONST); // !!!! check nog ff tevprev 
		GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
		GX_SetTevOrder(tevstage, GX_TEXCOORD2, GX_TEXMAP2, GX_COLORNULL);
//		GX_SetTevColorIn(tevstage, GX_CC_RASC, GX_CC_ZERO, GX_CC_TEXC, GX_CC_ZERO);
//		GX_SetTevColorOp(tevstage, GX_TEV_COMP_A8_GT, GX_TB_ZERO, GX_CS_DIVIDE_2, GX_TC_LINEAR, GX_TEVPREV);
//		GX_SetTevOrder(tevstage, GX_TEXCOORD2, GX_TEXMAP2, GX_COLOR0A0);
		tevstage++;

		
		// setup tev stage 1 to add reflection. Same theory as above, but light is where the cam is
		if (mode) {
		GX_SetTevIndirect(
			tevstage, // tevstage 0 is used to combine normal map and lightmap
			GX_INDTEXSTAGE0, // ind stage is used to read normal map
			GX_ITF_8, // texture format 8 bits per channel
			GX_ITB_STU, // use bias on s and t channels (red and green and blue)
			GX_ITM_0, // use 3x2 matrix 0
			GX_ITW_OFF, // do not use texture wrapping
			GX_ITW_OFF, // do not use texture wrapping
			GX_TRUE, // add in previous coordinates
			GX_FALSE, // don't use mipmap stuff
			GX_ITBA_OFF // don't use bump alpha (TODO: can this be used to blend reflection and difuse?)
			); 
//		GX_SetTevColorIn(tevstage, GX_CC_RASC, GX_CC_ZERO, GX_CC_TEXC, GX_CC_ZERO);
//		GX_SetTevColorIn(tevstage, GX_CC_RASC, GX_CC_ZERO, mode ? GX_CC_TEXC : GX_CC_ZERO, GX_CC_ZERO);
//		GX_SetTevColorOp(tevstage, GX_TEV_COMP_A8_GT, GX_TB_ZERO, GX_CS_DIVIDE_2, GX_TC_LINEAR, GX_TEVPREV);
//		GX_SetTevOrder(tevstage, GX_TEXCOORD3, GX_TEXMAP1, GX_COLOR0A0);

		GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_C1, GX_CC_CPREV); 
		GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
		GX_SetTevOrder(tevstage, GX_TEXCOORD3, GX_TEXMAP1, GX_COLORNULL);
		tevstage++;
		}


		// setup tev stage 2 to add normal mapped diffuse light
		GX_SetTevIndirect(
			tevstage, // tevstage 0 is used to combine normal map and lightmap
			GX_INDTEXSTAGE0, // ind stage is used to read normal map
			GX_ITF_8, // texture format 8 bits per channel
			GX_ITB_STU, // use bias on s and t channels (red and green and blue)
			GX_ITM_0, // use 3x2 matrix 0
			GX_ITW_OFF, // do not use texture wrapping
			GX_ITW_OFF, // do not use texture wrapping
			GX_FALSE, // don't add in previous coordinates (TODO: are these coordinates or lookup results?)
			GX_FALSE, // don't use mipmap stuff
			GX_ITBA_OFF // don't use bump alpha (TODO: can this be used to blend reflection and difuse?)
			); 
		GX_SetTevKColorSel(tevstage, GX_TEV_KCSEL_1_8);
		GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_KONST, GX_CC_TEXC, GX_CC_CPREV);
		GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_DIVIDE_2, GX_TRUE, GX_TEVPREV);
		GX_SetTevOrder(tevstage, GX_TEXCOORD3, GX_TEXMAP2, GX_COLORNULL);
		tevstage++;
	
		// setup number of tev stages
		GX_SetNumTevStages(tevstage);


		// connect textures 
		GX_LoadTexObj(&texture, GX_TEXMAP0); // normal map
		GX_LoadTexObj(&light_tex, GX_TEXMAP1); // light map
		GX_LoadTexObj(&reflectionlight_tex, GX_TEXMAP2); // reflective light map
		
/*		guMtxIdentity(model);
		guMtxTransApply(model, model, lpos.x,lpos.y,lpos.z);
		guMtxConcat(view,model,modelview);

		GX_LoadPosMtxImm(modelview, GX_PNMTX1);
		GX_SetCurrentMtx(GX_PNMTX1);
	    GX_LoadNrmMtxImm(modelview, GX_PNMTX1);

		GX_Begin(GX_QUADS, GX_VTXFMT0, 4);			// Draw a Cube
			GX_Position3f32(-1.0f,-1.0f, 0.0f);
			GX_Normal3f32  (   0.0f,   0.0f,  1.0f);
			GX_Normal3f32  (  0.125f,   0.0f,  0.0f);
			GX_Normal3f32  (   0.0f,  0.125f,  0.0f);
			GX_TexCoord2f32(0.0f,1.0f);

			GX_Position3f32(-1.0f,1.0f, 0.0f);
			GX_Normal3f32  (   0.0f,   0.0f,  1.0f);
			GX_Normal3f32  (  0.125f,   0.0f,  0.0f);
			GX_Normal3f32  (   0.0f,  0.125f,  0.0f);
			GX_TexCoord2f32(0.0f,0.0f);

			GX_Position3f32(1.0f,1.0f, 0.0f);
			GX_Normal3f32  (   0.0f,   0.0f,  1.0f);
			GX_Normal3f32  (  0.125f,   0.0f,  0.0f);
			GX_Normal3f32  (   0.0f,  0.125f,  0.0f);
			GX_TexCoord2f32(1.0f,0.0f);

			GX_Position3f32(1.0f,-1.0f, 0.0f);
			GX_Normal3f32  (   0.0f,   0.0f,  1.0f);
			GX_Normal3f32  (  0.125f,   0.0f,  0.0f);
			GX_Normal3f32  (   0.0f,  0.125f,  0.0f);
			GX_TexCoord2f32(1.0f,1.0f);
		GX_End();
		GX_DrawDone();
*/
		guMtxIdentity(model);
		guMtxRotAxisDeg(model, &cubeAxis, rquad);
		guMtxTransApply(model, model, -2.0f, 0.0f,-4.0f);
//		guMtxTransApply(model, model, lpos.x,lpos.y,lpos.z-10.0f);
		guMtxConcat(view,model,modelview);
		// load the modelview matrix into matrix memory
//		GX_LoadPosMtxImm(modelview, GX_PNMTX3);

		GX_LoadPosMtxImm(modelview, GX_PNMTX0);
		
		guMtxInverse(modelview,mvi);
		guMtxTranspose(mvi,modelview);
	    GX_LoadNrmMtxImm(modelview, GX_PNMTX0);
		GX_SetCurrentMtx(GX_PNMTX0);


//		GX_Begin(GX_QUADS, GX_VTXFMT0, 24);			// Draw a Cube
		GX_Begin(GX_QUADS, GX_VTXFMT0, 24);			// Draw a Cube

			// onder
			GX_Position3f32(-1.0f,-1.0f,-1.0f);
			GX_Normal3f32  (   0.0f, -1.0f,   0.0f);
			GX_Normal3f32  (  0.125f,  0.0f,   0.0f);
			GX_Normal3f32  (   0.0f,  0.0f,  0.125f);
			GX_TexCoord2f32(0.0f,1.0f);

			GX_Position3f32(-1.0f,-1.0f,1.0f);
			GX_Normal3f32  (   0.0f, -1.0f,   0.0f);
			GX_Normal3f32  (  0.125f,  0.0f,   0.0f);
			GX_Normal3f32  (   0.0f,  0.0f,  0.125f);
			GX_TexCoord2f32(0.0f,0.0f);

			GX_Position3f32(1.0f,-1.0f,1.0f);
			GX_Normal3f32  (   0.0f, -1.0f,   0.0f);
			GX_Normal3f32  (  0.125f,  0.0f,   0.0f);
			GX_Normal3f32  (   0.0f,  0.0f,  0.125f);
			GX_TexCoord2f32(1.0f,0.0f);

			GX_Position3f32(1.0f,-1.0f,-1.0f);
			GX_Normal3f32  (   0.0f, -1.0f,   0.0f);
			GX_Normal3f32  (  0.125f,  0.0f,   0.0f);
			GX_Normal3f32  (   0.0f,  0.0f,  0.125f);
			GX_TexCoord2f32(1.0f,1.0f);
			
			// boven
			GX_Position3f32(1.0f,1.0f,-1.0f);
			GX_Normal3f32  (   0.0f,  1.0f,   0.0f);
			GX_Normal3f32  ( -0.125f,  0.0f,   0.0f);
			GX_Normal3f32  (   0.0f,  0.0f,  0.125f);
			GX_TexCoord2f32(0.0f,1.0f);

			GX_Position3f32(1.0f,1.0f,1.0f);
			GX_Normal3f32  (   0.0f,  1.0f,   0.0f);
			GX_Normal3f32  ( -0.125f,  0.0f,   0.0f);
			GX_Normal3f32  (   0.0f,  0.0f,  0.125f);
			GX_TexCoord2f32(0.0f,0.0f);

			GX_Position3f32(-1.0f,1.0f,1.0f);
			GX_Normal3f32  (   0.0f,  1.0f,   0.0f);
			GX_Normal3f32  ( -0.125f,  0.0f,   0.0f);
			GX_Normal3f32  (   0.0f,  0.0f,  0.125f);
			GX_TexCoord2f32(1.0f,0.0f);

			GX_Position3f32(-1.0f,1.0f,-1.0f);
			GX_Normal3f32  (   0.0f,  1.0f,   0.0f);
			GX_Normal3f32  ( -0.125f,  0.0f,   0.0f);
			GX_Normal3f32  (   0.0f,  0.0f,  0.125f);
			GX_TexCoord2f32(1.0f,1.0f);

			// voor
//			GX_Normal3f32  ( 1.0f, 0.0f, 0.0f);
//			GX_Normal3f32  ( 0.0f,-1.0f, 0.0f);
//			GX_Normal3f32  ( 0.25f, 0.0f, 0.0f);
//			GX_Normal3f32  ( 0.0f,-0.25f, 0.0f);
//			GX_Normal3f32  ( 0.5f, 0.0f, 0.0f);
//			GX_Normal3f32  ( 0.0f,-0.5f, 0.0f);
			GX_Position3f32(-1.0f,-1.0f, 1.0f);
			GX_Normal3f32  (   0.0f,   0.0f,  1.0f);
			GX_Normal3f32  (  0.125f,   0.0f,  0.0f);
			GX_Normal3f32  (   0.0f,  0.125f,  0.0f);
			GX_TexCoord2f32(0.0f,1.0f);

			GX_Position3f32(-1.0f,1.0f,1.0f);
			GX_Normal3f32  (   0.0f,   0.0f,  1.0f);
			GX_Normal3f32  (  0.125f,   0.0f,  0.0f);
			GX_Normal3f32  (   0.0f,  0.125f,  0.0f);
			GX_TexCoord2f32(0.0f,0.0f);

			GX_Position3f32(1.0f,1.0f,1.0f);
			GX_Normal3f32  (   0.0f,   0.0f,  1.0f);
			GX_Normal3f32  (  0.125f,   0.0f,  0.0f);
			GX_Normal3f32  (   0.0f,  0.125f,  0.0f);
			GX_TexCoord2f32(1.0f,0.0f);

			GX_Position3f32(1.0f,-1.0f,1.0f);
			GX_Normal3f32  (   0.0f,   0.0f,  1.0f);
			GX_Normal3f32  (  0.125f,   0.0f,  0.0f);
			GX_Normal3f32  (   0.0f,  0.125f,  0.0f);
			GX_TexCoord2f32(1.0f,1.0f);
			
			// achter
			GX_Position3f32(1.0f,-1.0f,-1.0f);
			GX_Normal3f32  (   0.0f,   0.0f, -1.0f);
			GX_Normal3f32  ( -0.125f,   0.0f,  0.0f);
			GX_Normal3f32  (   0.0f,  0.125f,  0.0f);
			GX_TexCoord2f32(0.0f,1.0f);

			GX_Position3f32(1.0f,1.0f,-1.0f);
			GX_Normal3f32  (   0.0f,   0.0f, -1.0f);
			GX_Normal3f32  ( -0.125f,   0.0f,  0.0f);
			GX_Normal3f32  (   0.0f,  0.125f,  0.0f);
			GX_TexCoord2f32(0.0f,0.0f);

			GX_Position3f32(-1.0f,1.0f,-1.0f);
			GX_Normal3f32  (   0.0f,   0.0f, -1.0f);
			GX_Normal3f32  ( -0.125f,   0.0f,  0.0f);
			GX_Normal3f32  (   0.0f,  0.125f,  0.0f);
			GX_TexCoord2f32(1.0f,0.0f);

			GX_Position3f32(-1.0f,-1.0f,-1.0f);
			GX_Normal3f32  (   0.0f,   0.0f, -1.0f);
			GX_Normal3f32  ( -0.125f,   0.0f,  0.0f);
			GX_Normal3f32  (   0.0f,  0.125f,  0.0f);
			GX_TexCoord2f32(1.0f,1.0f);
		
			// links
			GX_Position3f32( -1.0f,-1.0f,-1.0f);
			GX_Normal3f32  (  -1.0f,   0.0f,  0.0f);
			GX_Normal3f32  (   0.0f,   0.0f, 0.125f);
			GX_Normal3f32  (   0.0f,  0.125f,  0.0f);
			GX_TexCoord2f32(0.0f,1.0f);

			GX_Position3f32(-1.0f,1.0f,-1.0f);
			GX_Normal3f32  (  -1.0f,   0.0f,  0.0f);
			GX_Normal3f32  (   0.0f,   0.0f, 0.125f);
			GX_Normal3f32  (   0.0f,  0.125f,  0.0f);
			GX_TexCoord2f32(0.0f,0.0f);

			GX_Position3f32(-1.0f,1.0f,1.0f);
			GX_Normal3f32  (  -1.0f,   0.0f,  0.0f);
			GX_Normal3f32  (   0.0f,   0.0f, 0.125f);
			GX_Normal3f32  (   0.0f,  0.125f,  0.0f);
			GX_TexCoord2f32(1.0f,0.0f);

			GX_Position3f32(-1.0f,-1.0f,1.0f);
			GX_Normal3f32  (  -1.0f,   0.0f,  0.0f);
			GX_Normal3f32  (   0.0f,   0.0f, 0.125f);
			GX_Normal3f32  (   0.0f,  0.125f,  0.0f);
			GX_TexCoord2f32(1.0f,1.0f);
				
			// rechts
			GX_Position3f32(1.0f,-1.0f,1.0f);
			GX_Normal3f32  (   1.0f,   0.0f,   0.0f);
			GX_Normal3f32  (   0.0f,   0.0f, -0.125f);
			GX_Normal3f32  (   0.0f,  0.125f,   0.0f);
			GX_TexCoord2f32(0.0f,1.0f);

			GX_Position3f32(1.0f,1.0f,1.0f);
			GX_Normal3f32  (   1.0f,   0.0f,   0.0f);
			GX_Normal3f32  (   0.0f,   0.0f, -0.125f);
			GX_Normal3f32  (   0.0f,  0.125f,   0.0f);
			GX_TexCoord2f32(0.0f,0.0f);

			GX_Position3f32(1.0f,1.0f,-1.0f);
			GX_Normal3f32  (   1.0f,   0.0f,   0.0f);
			GX_Normal3f32  (   0.0f,   0.0f, -0.125f);
			GX_Normal3f32  (   0.0f,  0.125f,   0.0f);
			GX_TexCoord2f32(1.0f,0.0f);

			GX_Position3f32(1.0f,-1.0f,-1.0f);
			GX_Normal3f32  (   1.0f,   0.0f,   0.0f);
			GX_Normal3f32  (   0.0f,   0.0f, -0.125f);
			GX_Normal3f32  (   0.0f,  0.125f,   0.0f);
			GX_TexCoord2f32(1.0f,1.0f);

		GX_End();									// Done Drawing The Quad 
		GX_SetAlphaUpdate(GX_TRUE);

		GX_SetZMode(GX_TRUE, GX_LEQUAL, GX_TRUE);
		GX_SetColorUpdate(GX_TRUE);
		GX_CopyDisp(frameBuffer[fb],GX_TRUE);

		GX_DrawDone();

		VIDEO_SetNextFramebuffer(frameBuffer[fb]);
		if(first_frame) {
			first_frame = 0;
			VIDEO_SetBlack(FALSE);
		}
		VIDEO_Flush();
 		if (vsync) VIDEO_WaitVSync();
		fb ^= 1;

		rquad -= 0.15f;				// Decrease The Rotation Variable For The Quad     ( NEW )
	}
}
