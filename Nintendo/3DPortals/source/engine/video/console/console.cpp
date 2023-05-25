
#include "console.h"

using namespace std;

#define TABSIZE 4
#define SPACE 	32

Console::Console(byte width, byte height, int pixelsx, int pixelsy, Charset *charSet) {
	this->size = width * height;
	buffer = new int[this->size];
	this->width = width;
	this->height = height;
	this->visHeight = height;
	this->pEnd = buffer + size;
	this->idxEof = size-1;
	this->idxWriter = 0;
	this->charSet = charSet;
	this->pixelsx = pixelsx;
	this->pixelsy = pixelsy;
	
}

Console::~Console() {
	delete this->buffer;
}

void		Console::printf(byte *color, const char *string, ...) {
	char 	tmp[512], out[512];
	int		len;
	va_list varg;
	// ssafeguard
	len = strlen(string);
	if (len > 511) {
		len = 511;
		tmp[511] = '\0';
	}
	
	strncpy(tmp, string, len+1);
	
	va_start(varg, string);
	vsprintf(out, tmp, varg);
	va_end(varg);
	
	// add chardata to buffer
	char *pChar = &out[0];
	for(;; pChar++) {
		if (*pChar == '\0') {
			int data = ((*pChar)<<24)&0xFF000000;
			*(this->buffer+idxWriter) = data; // \0 is overwritten next printf call 
			break; // LOOP END !!! Not so nice ehh?
		} else 
		if (*pChar == '\n') { // insert newline
			*(this->buffer+idxWriter) = '\0'; // terminate row
			idxWriter += (this->width - idxWriter%this->width); // next row
			if (idxWriter > idxEof) {
				idxEof = idxWriter%size; // wrap around
			}
			if (idxWriter >= size) {
				idxWriter = idxWriter%size; // wrap around
			}
			*(this->buffer+idxWriter) = '\0'; // terminate next row
		} else
		if (*pChar == '\t') { // insert tab
			int posOnRow = idxWriter%this->width;
			int numShift = TABSIZE - posOnRow%TABSIZE;
			for (; numShift > 0; numShift--) {
				*(this->buffer+idxWriter) = SPACE; //space
				idxWriter++;
				if (idxWriter > idxEof) {
					idxEof = idxWriter%size; // wrap around
				}
				if (idxWriter >= size) {
					idxWriter = idxWriter%size; // wrap around
				}
			}
		} else { // copy to buffer
			int data = (*pChar)<<24|color[0]<<16|color[1]<<8|color[2];
			*(this->buffer+idxWriter) = data;
			idxWriter++;
			if (idxWriter > idxEof) {
				idxEof = idxWriter%size; // wrap around
			}
			if (idxWriter >= size) {
				idxWriter = idxWriter%size; // wrap around
			}
		}
		
	}
	//if (dbg) {
	//	printf(color, "WRAP: %d %d %d -- ", idxEof, idxWriter, size);
	//}
}

void		Console::setConsoleShader() {
	Mtx44 ortho;
	guOrtho(ortho, 0, pixelsx, 0, pixelsy, -300.0f, 300.0f);
	GX_LoadProjectionMtx(ortho, GX_ORTHOGRAPHIC);

	Mtx model;
	guMtxIdentity(model);
	GX_LoadPosMtxImm(model, GX_PNMTX0);
	GX_LoadNrmMtxImm(model, GX_PNMTX0);
	GX_SetCurrentMtx(GX_PNMTX0);

	// data setup
	GX_ClearVtxDesc();
	GX_SetVtxDesc(GX_VA_POS, GX_DIRECT);
	GX_SetVtxDesc(GX_VA_CLR0, GX_DIRECT);
	GX_SetVtxDesc(GX_VA_TEX0, GX_DIRECT);
	GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
	GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
	GX_SetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_TEX_ST, GX_F32, 0);
	GX_InvVtxCache();

	// light setup
	GX_SetChanCtrl(GX_COLOR0A0, GX_DISABLE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHTNULL, GX_DF_NONE, GX_AF_NONE);
	GX_SetNumChans(1);


	// texcoord generation
	GX_SetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY);
	GX_InvalidateTexAll();
	GX_SetNumTexGens(1);
	
	// texture setup
	GX_LoadTexObj(&this->charSet->getTexture()->texobj, GX_TEXMAP0); 
	
	// tev setup
	GX_SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_TEXA, GX_CC_RASC, GX_CC_ZERO);
	GX_SetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV); 
	GX_SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0);
	GX_SetNumTevStages(1);

	// pixel pipeline
	GX_SetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_COPY);
	GX_SetAlphaUpdate(GX_TRUE);
}

void		Console::draw(){
	int lastRow	= idxEof/this->width;
	int firstRow	= (this->height + lastRow - this->visHeight + 1)%this->height;
	int num		= this->visHeight;
	int h 			= this->charSet->getHeight();
	int currY 		= 0;
	
	setConsoleShader();
	for (int row = firstRow; num > 0; row = (row+1)%this->visHeight, num--) {
		int	currX = 0;
		int *pChar = this->buffer + row * this->width;
		for (int col = 0; col < this->width; col++, pChar++) {
			byte color[3];
			byte character = (*pChar)>>24;
			color[0] = (*pChar)>>16;
			color[1] = (*pChar)>>8;
			color[2] = (*pChar);
			
			if (*pChar == '\0') {
				break;
			} else {
				int w = this->charSet->getCharacterWidth(character);
				CharsetTexCoord *texCoords = this->charSet->getTexCoords(character); 

				// draw it
				GX_Begin(GX_QUADS, GX_VTXFMT0, 4);

				GX_Position3f32(currX, 			currY, 			0.0f);
				GX_Color4u8(color[0], 			color[1], 		color[2], 	0xff);
				GX_TexCoord2f32(texCoords->texCoords[0].x, texCoords->texCoords[0].y);

				GX_Position3f32(currX + w, 	currY, 			0.0f);
				GX_Color4u8(color[0], color[1], color[2], 0xff);
				GX_TexCoord2f32(texCoords->texCoords[1].x, texCoords->texCoords[1].y);

				GX_Position3f32(currX + w, 	currY + h, 	0.0f);
				GX_Color4u8(color[0], color[1], color[2], 0xff);
				GX_TexCoord2f32(texCoords->texCoords[2].x, texCoords->texCoords[2].y);

				GX_Position3f32(currX, 			currY + h, 	0.0f);
				GX_Color4u8(color[0], color[1], color[2], 0xff);
				GX_TexCoord2f32(texCoords->texCoords[3].x, texCoords->texCoords[3].y);
				
				GX_End();
				
				currX += (w);
			}
		}
		currY += (h);
	}
	
	
}
