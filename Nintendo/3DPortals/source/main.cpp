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

#include <fat.h>
#include <fnmatch.h>
#include <dirent.h>


#include "engine/video/display.h"
#include "engine/video/console/charset.h"

float cubedata[][5] = {
	// voor
	{-1.0f,-1.0f, 1.0f, 0.0f,0.0f},
	{-1.0f,1.0f,1.0f, 0.0f,1.0f},
	{1.0f,1.0f,1.0f, 1.0f,1.0f},
	{1.0f,-1.0f,1.0f, 1.0f,0.0f},
	
	// achter
	{1.0f,-1.0f,-1.0f, 0.0f,1.0f},
	{1.0f,1.0f,-1.0f, 0.0f,0.0f},
	{-1.0f,1.0f,-1.0f, 1.0f,0.0f},
	{-1.0f,-1.0f,-1.0f, 1.0f,1.0f},

	// onder
	{-1.0f,-1.0f,-1.0f, 0.0f,1.0f},
	{-1.0f,-1.0f,1.0f, 0.0f,0.0f},
	{1.0f,-1.0f,1.0f, 1.0f,0.0f},
	{1.0f,-1.0f,-1.0f, 1.0f,1.0f},
				
	// boven
	{1.0f,1.0f,-1.0f, 0.0f,1.0f},
	{1.0f,1.0f,1.0f, 0.0f,0.0f},
	{-1.0f,1.0f,1.0f, 1.0f,0.0f},
	{-1.0f,1.0f,-1.0f,1.0f,1.0f},

	// links
	{-1.0f,-1.0f,-1.0f, 0.0f,1.0f},
	{-1.0f,1.0f,-1.0f, 0.0f,0.0f},
	{-1.0f,1.0f,1.0f, 1.0f,0.0f},
	{-1.0f,-1.0f,1.0f, 1.0f,1.0f},
					
	// rechts
	{1.0f,-1.0f,1.0f, 0.0f,1.0f},
	{1.0f,1.0f,1.0f, 0.0f,0.0f},
	{1.0f,1.0f,-1.0f, 1.0f,0.0f},	
	{1.0f,-1.0f,-1.0f, 1.0f,1.0f}
	
};

void initHeap();

#define TEXW		128
#define TEXH		64

void createFontTex(GXTexObj *obj, void *buf) {
	byte texbuf[TEXW*TEXH];
	int x, y, charx, chary;
	memset(&texbuf[0], 0x00, TEXW*TEXH);
	for (y=0; y<8; y++) {
		for (x=0; x<16; x++) {
			int idx = x + y * 16;
			for (chary=0; chary<8; chary++) {
				byte alphaMask = font8x8[idx * 8 + chary];
				for (charx=7; charx>=0; charx--) {
					if (alphaMask & (1<<charx)) {
						texbuf[x*8+7-charx + (y*8+chary)*TEXW] = 0xFF;
					}
				}
			}
		}
	}
	byte *bufptr = (byte *) buf;
	memset(bufptr, 0, TEXW*TEXH);
	for(y=0; y<TEXH; y+=4) {
		for(x=0; x<TEXW; x+=8) {
			int xx, yy;
			for (yy=0; yy<4; yy++) {
				for (xx=0; xx<8; xx++) {
					bufptr[xx + yy * 8]  = texbuf[x + xx + (y + yy)*TEXW];
				}
			}
			bufptr += 32; 
		}
	}

	bufptr = (u8 *) buf;

	GX_InitTexObj(obj, (void *) &bufptr[0], TEXW, TEXH, GX_TF_I8, GX_CLAMP, GX_CLAMP, GX_FALSE);
//	GX_InitTexObjLOD(tex,GX_LINEAR,GX_LINEAR, 1, 10, 0.0f, GX_TC_GE, GX_TRUE, GX_ANISO_1);
	DCFlushRange((void *) bufptr, TEXW*TEXH);

}


int main(int argc,char **argv)
{
	int buttonState = 0x00000000;
	float rquad = 0.0f;
	Mtx view; // view and perspective matrices
	Mtx model, modelview, mvi;
	Mtx44 perspective;
	Vector cam = {0.0F, 0.0F, 0.0F},
			up = {0.0F, 1.0F, 0.0F},
		  look = {0.0F, 0.0F, -1.0F};

	WPAD_Init();

	// engine specific
	initHeap();
	Display *d = new Display(640, 480);

	// setup our camera at the origin
	// looking down the -z axis with y up
	guLookAt(view, &cam, &up, &look);
 
	// setup our projection matrix
	// this creates a perspective matrix with a view angle of 90,
	// and aspect ratio based on the display resolution
    f32 w = d->rmode->viWidth;
    f32 h = d->rmode->viHeight;

	Vector cubeAxis[3] = {
		{0,1,1},
		{0,1,0},
		{0,1,0}};

	int i;
	int 		numverts = sizeof(cubedata)/sizeof(float[5]);
	
	float mtxf[16];
	double mtxd[16];
	printf("size: %d\n", sizeof(Mtx44));
	// just testing...
	guPerspective(perspective, 45, (f32)w/h, 0.1F, (float) 0x7FFFFFFF);
	memcpy(mtxf, perspective, sizeof(Mtx44));
	for (i=0; i<16; i++) {
		printf("value: %f %f\n", mtxf[i], perspective[i/4][i%4]);
	}
	for (i=0; i<12; i++) {
		mtxd[i] = (double) perspective[i/4][i%4];
		printf("value: %f %f\n", mtxd[i], perspective[i/4][i%4]);
	}
	
	
	float dir = 90.0f;
	float zt = 0.0f;
	rquad = 45.0f;
	byte mode = 0;
	byte vsync = 1;
	float numcubes = 3;
	Charset *c = new Charset8x8();
	byte rgb[] = {0x40, 0X80, 0xFF};
	for (int i=0; i<5; i++) {
		d->getConsole()->printf(rgb, "\nHallo, dit is de console! Ik schrijf een lange regel.....\n");
		d->getConsole()->printf(rgb, "Hallo, dit is de console! Ik schrijf een tweede, nog langere regel.....\n");
		d->getConsole()->printf(rgb, "\nHallo, dit is de console! Ik schrijf een lange regel.....\n");
		d->getConsole()->printf(rgb, "\nHallo, dit is de console! Ik schrijf een lange regel.....\n");
	}
	for (int i=1; i<128; i++) {
		if (i != '\n' && i != '\t')
			d->getConsole()->printf(rgb, "%c", (char) i);
	}

	int framecnt = 0;
	int timer = 0;
	float dd = 0;

	struct stat statbuf;
	fatInitDefault();

	DIR *direntry;
	struct dirent *entry;

	direntry = opendir ("/apps/TenebraeGX/id1");

	while (entry = readdir (direntry)){
		int code;
		char pathbuf[1024];
		strncpy(pathbuf, entry->d_name, 1024);
		code = fnmatch ("*.pak", strlwr(pathbuf), 0);
		printf("2) fnmatch %s (%s)result %d\n", pathbuf, entry->d_name, code);
	}
	closedir(direntry);
	
	stat("/apps/TenebraeGX/id1/PAK1.PAK",&statbuf);
	FILE *file = fopen("/apps/TenebraeGX/id1/PAK1.PAK", "rb");
	printf("size: %d\n", statbuf.st_size);
	
	while(1) {

		WPAD_ScanPads();
		if(WPAD_ButtonsDown(0) & WPAD_BUTTON_HOME) exit(0);
		if (WPAD_ButtonsHeld(0)&WPAD_BUTTON_LEFT) zt -= 0.25f;
		if (WPAD_ButtonsHeld(0)&WPAD_BUTTON_RIGHT) zt += 0.25f;
		if (WPAD_ButtonsHeld(0)&WPAD_BUTTON_UP) dir -= 0.25f;
		if (WPAD_ButtonsHeld(0)&WPAD_BUTTON_DOWN) dir += 0.25f;
		
		u32 buttonsHeld = WPAD_ButtonsHeld(0);
		u32 buttonsInv  = buttonsHeld^0xFFFFFFFF;
		if (buttonsHeld&WPAD_BUTTON_A) buttonState |= WPAD_BUTTON_A;
		if (buttonsHeld&WPAD_BUTTON_B) buttonState |= WPAD_BUTTON_B;
		if (buttonsHeld&WPAD_BUTTON_PLUS) buttonState |= WPAD_BUTTON_PLUS;
		if (buttonsHeld&WPAD_BUTTON_MINUS) buttonState |= WPAD_BUTTON_MINUS;


		if (buttonsInv&WPAD_BUTTON_A&buttonState)     { mode^=1; buttonState &= (WPAD_BUTTON_A^0xFFFF);}
		if (buttonsInv&WPAD_BUTTON_B&buttonState)     { mode=1; buttonState &= (WPAD_BUTTON_B^0xFFFF);}
		if (buttonsInv&WPAD_BUTTON_PLUS&buttonState)  { numcubes += 1000; buttonState &= (WPAD_BUTTON_PLUS^0xFFFF);}
		if (buttonsInv&WPAD_BUTTON_MINUS&buttonState) { vsync^=1; buttonState &= (WPAD_BUTTON_MINUS^0xFFFF);}
	
		// projection
		guPerspective(perspective, 45, (f32)w/h, 0.1F, (float) 0x7FFFFFFF);
		GX_LoadProjectionMtx(perspective, GX_PERSPECTIVE);

		// light setup
		GX_SetChanCtrl(GX_COLOR0A0, GX_DISABLE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHTNULL, GX_DF_NONE, GX_AF_NONE);
		GX_SetNumChans(1);

		// input
		GX_ClearVtxDesc();
		GX_SetVtxDesc(GX_VA_POS, GX_DIRECT);
		GX_SetVtxDesc(GX_VA_CLR0, GX_DIRECT);
		GX_SetVtxDesc(GX_VA_TEX0, GX_DIRECT);
		GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
		GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
		GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_TEX_ST, GX_F32, 0);
		GX_InvVtxCache();

		//set number of textures to generate
		GX_SetNumTexGens(1);

		// setup texture coordinate generation
		// args: texcoord slot 0-7, matrix type, source to generate texture coordinates from, matrix to use
		GX_SetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
		u8 tevstage = GX_TEVSTAGE0;

		GX_SetTevColorIn(tevstage, GX_CC_ZERO, GX_CC_TEXA, GX_CC_RASC, GX_CC_ZERO); 
		GX_SetTevColorOp(tevstage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
		GX_SetTevOrder(tevstage, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
		//GX_SetTevOrder(tevstage, GX_TEXCOORDNULL, GX_TEXMAP_DISABLE, GX_COLOR0A0);
		tevstage++;
		
		// setup number of tev stages
		GX_SetNumTevStages(tevstage);

		// connect textures 
		GX_LoadTexObj(&c->getTexture()->texobj, GX_TEXMAP0); // normal map
		
		// blend setup
		GX_SetDstAlpha(GX_TRUE, 0);
		GX_SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ONE, GX_LO_NOOP);	
		int idx = 0;
		for(idx=0; idx<numcubes; idx++) {
			guMtxIdentity(model);
			guMtxRotAxisDeg(model, &cubeAxis[(0)], rquad);
			float xxx = 2.0f - (idx * 0.02f);
			if (idx & 1) {
				xxx *= -1;
			}
			//dd += .05f;
			guMtxTransApply(model, model, xxx, 0.0f,-2.0f - (idx * 2.0f) - dd);
//			guMtxTransApply(model, model, -2.0f + (idx * 2.0f), 0.0f,-4.0f - (idx * 2.0f));
	//		guMtxTransApply(model, model, lpos.x,lpos.y,lpos.z-10.0f);
			guMtxConcat(view,model,modelview);
			// load the modelview matrix into matrix memory
	//		GX_LoadPosMtxImm(modelview, GX_PNMTX3);

			GX_LoadPosMtxImm(modelview, GX_PNMTX0);
			
			//guMtxInverse(modelview,mvi);
			//guMtxTranspose(mvi,modelview);
			GX_LoadNrmMtxImm(modelview, GX_PNMTX0);
			GX_SetCurrentMtx(GX_PNMTX0);

			// DRAW VERTS
			GX_Begin(GX_QUADS, GX_VTXFMT0, numverts);
			for(i=0; i<numverts; i++) {
				float *vertdata = cubedata[i];
				float *texdata = &vertdata[3];
				GX_Position3f32(vertdata[0], vertdata[1], vertdata[2]);
				GX_Color4u8(0xFF, 0x80, 0x40, 	0xff);
				GX_TexCoord2f32(texdata[0], texdata[1]);
				//GX_TexCoord2f32(texdata[0] / 8, texdata[1] / 8 + 0.25f);
 
			}
			
			GX_End();									// Done Drawing The Quad 
			
			if (idx%500 == 0) {
				GX_DrawDone();
			}
		}

		d->getConsole()->draw();
		
		GX_Flush(); // Flush
		GX_DrawDone();
		GX_SetAlphaUpdate(GX_TRUE);

		GX_SetZMode(GX_TRUE, GX_LEQUAL, GX_TRUE);
		GX_SetColorUpdate(GX_TRUE);

		d->newFrame();
		
		rquad -= 0.15f;				// Decrease The Rotation Variable For The Quad     ( NEW )
		timer = (timer+1)%2;
		if (timer == 0) {
			framecnt++;
			//d->getConsole()->printf(rgb, "%5d %5d --", d->getConsole()->idxEof, d->getConsole()->idxWriter);
			//d->getConsole()->printf(rgb, "%5f %5d --", dd);
			int res;
			byte dest;
			res = fread (&dest, 1, 1, file);
			d->getConsole()->printf(rgb, "%5d %02X --", res, dest);
			printf("%5d %02X -%c -", res, dest, dest);
		}
	}
}


	
