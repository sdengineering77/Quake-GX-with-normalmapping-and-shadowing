
#include "charset8x8.h"


#define TEXW		128
#define TEXH		64

static void qgx_getTexConvParms(const int fmt, int &blockx, int &blocky, int &stepx, int &stepy, int &bpp) {
	switch(fmt) {
	case GX_TF_I4:
		blockx = 8;
		blocky = 8;
		stepx = 2;
		stepy = 1;
		bpp = 1;
		break;
	case GX_TF_I8:
		blockx = 8;
		blocky = 4;
		stepx = 1;
		stepy = 1;
		bpp = 1;
		break;
	}

}


static void createFontTex(GXTexObj *obj, void *buf, CharsetTexCoord *coords) {
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
			coords[idx].texCoords[0].x = x*8;
			coords[idx].texCoords[0].y = y*8;

			coords[idx].texCoords[1].x = x*8 + 7;
			coords[idx].texCoords[1].y = y*8;

			coords[idx].texCoords[2].x = x*8 + 7;
			coords[idx].texCoords[2].y = y*8 + 7;

			coords[idx].texCoords[3].x = x*8;
			coords[idx].texCoords[3].y = y*8 + 7;
			for(int z=0; z<4; z++) {
				coords[idx].texCoords[z].x /= (float) TEXW;
				coords[idx].texCoords[z].y /= (float) TEXH;
			}
		}
	}
	byte *bufptr = (byte *) buf;
	memset(bufptr, 0, TEXW*TEXH);
/*	for(y=0; y<TEXH; y+=4) {
		for(x=0; x<TEXW; x+=8) {
			int xx, yy;
			for (yy=0; yy<4; yy++) {
				for (xx=0; xx<8; xx++) {
					bufptr[xx + yy * 8]  = texbuf[x + xx + (y + yy)*TEXW];
				}
			}
			bufptr += 32; 
		}
	}*/
	int blockx, blocky, div, mul, tmp;
	int fmt = GX_TF_I4;
	qgx_getTexConvParms(fmt, blockx, blocky, div, tmp, mul);
	for(y=0; y<TEXH; y+=blocky) {
		for(x=0; x<TEXW; x+=blockx) {
			int xx, yy;
			for (yy=0; yy<blocky; yy++) {
				for (xx=0; xx<blockx; xx+=div) {
					byte *address = &bufptr[mul * (xx + yy * blockx)/div];
					if (fmt == GX_TF_I4) {
						*address = (texbuf[x + xx + (y + yy)*TEXW]&0xF0);
						*address |= ((texbuf[1 + x + xx + (y + yy)*TEXW]>>4)&0x0F);
					} else if (fmt == GX_TF_I8) {
						*address = texbuf[x + xx + (y + yy)*TEXW];
					}
				}
			}
			bufptr += 32;
		}
	}


	bufptr = (u8 *) buf;

	GX_InitTexObj(obj, (void *) &bufptr[0], TEXW, TEXH, fmt, GX_CLAMP, GX_CLAMP, GX_FALSE);
//	GX_InitTexObj(obj, (void *) &bufptr[0], TEXW, TEXH, GX_TF_I8, GX_CLAMP, GX_CLAMP, GX_FALSE);
	GX_InitTexObjLOD(obj, GX_LINEAR, GX_LINEAR, 0, 0, 0.0f, GX_TC_GE, GX_FALSE, GX_ANISO_1);
	DCFlushRange((void *) bufptr, TEXW*TEXH);

}

Charset8x8::Charset8x8() {
	// allocate texture data on heap
	this->pLowMark = getMemLowMark();
	this->texture = (Texture*) allocMem(sizeof(Texture), 0);
	this->texture->data = allocMem(TEXW*TEXH, 32);

	// allocate texCoords
	this->texCoords =(CharsetTexCoord*) allocMem(sizeof(CharsetTexCoord) * 256, 0);
	// font texture
	createFontTex(&this->texture->texobj, this->texture->data, this->texCoords);
	DCFlushRange((void *) this->texture, sizeof(Texture));
	
}

Charset8x8::~Charset8x8() {
	freeFromMark(this->pLowMark);
}

		
Texture *Charset8x8::getTexture() {
	return this->texture;
}

CharsetTexCoord *Charset8x8::getTexCoords(byte idx) {
	return &this->texCoords[idx];
}

int Charset8x8::getCharacterWidth(byte idx) {
	return 8;
}

int	Charset8x8::getHeight() {
	return 8;
}

