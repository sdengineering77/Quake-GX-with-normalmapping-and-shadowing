
#include "gxgl.h"

#define MAX_VTX_DESC 	MAX_TEXTURE_UNIT
#define MAX_VTX_ATTR		MAX_TEXTURE_UNIT

typedef struct gxVTXDescState_s {
	bool isDirty;
	
	int vtxDescriptorIdx; // used for setting new descriptors in the descriptor list
	int vtxAttrFormatIdx; // used for setting new attribute formats
	
	int numActiveVtxDescriptors; // num in current setup, wont be committed until an actual draw call emerges (glBegin, glDrawElements)
	int numActiveVtxAttrFormats; // num in current setup, wont be committed until an actual draw call emerges (glBegin, glDrawElements)
	
	//typedef struct {u8 attr;u8 type;} GXVtxDesc;
	GXVtxDesc vtxDescList[MAX_VTX_DESC];
	
	//typedef struct {u32 vtxattr;u32 comptype;u32 compsize;u32 frac;} GXVtxAttrFmt;
	GXVtxAttrFmt vtxAttrFmtList[MAX_VTX_ATTR	];

} gxVTXDescState_t;

static gxVTXDescState_t	_current_vertex_state;
static unsigned char			_current_vertex_format = GX_VTXFMT0;


/* 
 * ============================================
 * VERTEX STATE
 * ============================================
 */
unsigned char getCurrentVertexFormat() {
	return _current_vertex_format;
}

void setCurrentVertexFormat(unsigned char vertexFormat) {
	_current_vertex_format = vertexFormat;
}

void clearVtxDesc() {
	_current_vertex_state.vtxDescriptorIdx = 0;
	_current_vertex_state.vtxAttrFormatIdx = 0;
	
}

void addVtxAttrFmt(unsigned int vtxattr, unsigned int comptype, unsigned int compsize, unsigned int frac) {
	
	//typedef struct {u32 vtxattr;u32 comptype;u32 compsize;u32 frac;} GXVtxAttrFmt;
	if (_current_vertex_state.vtxAttrFormatIdx < MAX_VTX_ATTR	) {
		int idx = _current_vertex_state.vtxAttrFormatIdx;
		if (_current_vertex_state.vtxAttrFmtList[idx].vtxattr != vtxattr ||
			_current_vertex_state.vtxAttrFmtList[idx].comptype != comptype ||
			_current_vertex_state.vtxAttrFmtList[idx].compsize != compsize ||
			_current_vertex_state.vtxAttrFmtList[idx].frac != frac) {
			
			_current_vertex_state.isDirty = true;
			_current_vertex_state.vtxAttrFmtList[idx].vtxattr = vtxattr;
			_current_vertex_state.vtxAttrFmtList[idx].comptype = comptype;
			_current_vertex_state.vtxAttrFmtList[idx].compsize = compsize;
			_current_vertex_state.vtxAttrFmtList[idx].frac = frac;
		}
		_current_vertex_state.vtxAttrFormatIdx++;
	}
	
}

void addVtxDesc(unsigned char attr, unsigned char type) {

	//typedef struct {u8 attr;u8 type;} GXVtxDesc;
	if (_current_vertex_state.vtxDescriptorIdx < MAX_VTX_DESC) {
		int idx = _current_vertex_state.vtxDescriptorIdx;
		if (_current_vertex_state.vtxDescList[idx].attr != attr ||
			_current_vertex_state.vtxDescList[idx].type != type) {
			
			_current_vertex_state.isDirty = true;
			_current_vertex_state.vtxDescList[idx].attr = attr;
			_current_vertex_state.vtxDescList[idx].type = type;
		}
		_current_vertex_state.vtxDescriptorIdx++;
	}
}

void commitVtxDescState() {
	if (_current_vertex_state.isDirty ||
		_current_vertex_state.vtxDescriptorIdx != _current_vertex_state.numActiveVtxDescriptors ||
		_current_vertex_state.vtxAttrFormatIdx != _current_vertex_state.numActiveVtxAttrFormats) {
		
		int i;
		int numActiveVtxDescriptors = _current_vertex_state.vtxDescriptorIdx;
		int numActiveVtxAttrFormats = _current_vertex_state.vtxAttrFormatIdx;
		
		// we need to upload...
		_current_vertex_state.isDirty = false;
		_current_vertex_state.numActiveVtxDescriptors = numActiveVtxDescriptors;
		_current_vertex_state.numActiveVtxAttrFormats = numActiveVtxAttrFormats;
		
		GX_ClearVtxDesc();
		for (i=0; i<numActiveVtxDescriptors ; i++) {
			GX_SetVtxDesc(_current_vertex_state.vtxDescList[i].attr, _current_vertex_state.vtxDescList[i].type);
		}	

		for (i=0; i<numActiveVtxAttrFormats ; i++) {
			GX_SetVtxAttrFmt(_current_vertex_format, 
										_current_vertex_state.vtxAttrFmtList[i].vtxattr,
										_current_vertex_state.vtxAttrFmtList[i].comptype,
										_current_vertex_state.vtxAttrFmtList[i].compsize,
										_current_vertex_state.vtxAttrFmtList[i].frac);
		}	
	}
}


/* 
 * ============================================
 * DRAWING VERTICES
 * ============================================
 */

void gxSendVertex(	Vector *point, 
									int numNormals, Vector *normals,  
									int numTexCoords, Vector *texCoords,
									int numColors, GXColor *colors) {
	int i;
	
	// send the vertice
	GX_Position3f32(point->x, point->y, point->z);
	
	// send the normals
	for (i=0; i<numNormals; i++) { 
		GX_Normal3f32(normals[i].x,  normals[i].y, normals[i].z);
	}			

	// send the texCoords
	for (i=0; i<numNormals; i++) { 
		GX_Normal3f32(normals[i].x,  normals[i].y, normals[i].z);
	}			

	// send the colors
	for (i=0; i<numNormals; i++) { 
		GX_Color4u8(colors[i].r, colors[i].g, colors[i].b, colors[i].a);
	}			
}


void gxBegin(unsigned char gxPrimitive, int count) {

	// setup vtxdesc
	glVtxAttrState_t *activeVtxAttrState = getGLVertexState();
	
	// if the gl vertex state is dirty, the vtxdesc must be refreshed (or in future correct gx vertex format choosen)
	if (activeVtxAttrState->isDirty) {
		int i;
		clearVtxDesc();
		
		if (activeVtxAttrState->vertexPointerEnabled) {
			addVtxDesc(GX_VA_POS, GX_DIRECT);
			addVtxAttrFmt(GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
		} 
		if(activeVtxAttrState->normalPointerEnabled /* && !activeVtxAttrState.tangentPointerEnabled DRS TODO*/) {
			addVtxDesc(GX_VA_NRM, GX_DIRECT);
			addVtxAttrFmt(GX_VA_NRM, GX_NRM_XYZ, GX_F32, 0);
		} 
		/*DRS TODO: tangent, bitangent
		if(activeVtxAttrState.tangentPointerEnabled) {
			addVtxDesc(GX_VA_NBT, GX_DIRECT);
			addVtxAttrFmt(GX_VA_NBT, GX_NRM_NBT3, GX_F32, 0);
		} */
		for (i=0; i<MAX_TEXTURE_UNIT; i++) {
			if(activeVtxAttrState->texCoordPointerEnabled[i]) {
				addVtxDesc(GX_VA_TEX0 + i, GX_DIRECT);
				addVtxAttrFmt(GX_VA_TEX0 + i, GX_TEX_ST, GX_F32, 0);
			}
		}
		if(activeVtxAttrState->colorPointerEnabled) {
			addVtxDesc(GX_VA_CLR0, GX_DIRECT);
			addVtxAttrFmt(GX_VA_CLR0, GX_CLR_RGBA, GX_RGB8, 0);
		} 
	}
	
	//	commit any changes to VtxDesc and upload it to GPU if needed... (perhaps return current gx vertex format?)
	commitVtxDescState();
	
	GX_Begin(gxPrimitive, getCurrentVertexFormat(), count);
	
	// ready for vertices now
	
	
}

void gxEnd() {
	GX_End();
}

void gxDrawElements(uchar gxPrimitive, int count, int *indices, 
	glpointer_t *vertexPointer, glpointer_t *normalPointer, glpointer_t *texCoordPointer, glpointer_t *colorPointer) {
	int numActiveVtxDescriptors, i, idx, tcIdx, clrIdx;
	Vector *pn, *tc;  
	uchar *colorP;
	
	gxBegin(gxPrimitive,  count);
	
	// send the enabled vertices
	for (idx=0; idx<count; idx++) {
		
		numActiveVtxDescriptors = _current_vertex_state.numActiveVtxDescriptors;
		
		// DRS TODO: this loop can likely be improved a little...
		for (i=0; i<numActiveVtxDescriptors; i++) {
			// DRS TODO: add array bind addresses...
			int currAttr = _current_vertex_state.vtxDescList[i].attr;
			switch(currAttr) {
				case GX_VA_POS:
					pn = (Vector *) ((uchar *) vertexPointer->pointer + idx * vertexPointer->stride);
					// send the vertice
					GX_Position3f32(pn->x, pn->y, pn->z);
					break;
				case GX_VA_NRM:
					pn = (Vector *) ((uchar *) normalPointer->pointer + idx * normalPointer->stride);
					// send the normal
					GX_Normal3f32(pn->x, pn->y, pn->z);
					break;
				case GX_VA_NBT: // DRS TODO
					break;
				case GX_VA_TEX0:
				case GX_VA_TEX1:
				case GX_VA_TEX2:
				case GX_VA_TEX3:
				case GX_VA_TEX4:
				case GX_VA_TEX5:
				case GX_VA_TEX6:
				case GX_VA_TEX7:
					// DRS TODO 3D texcoords must be passed as 2 2D GX coords... This means there must be more mappings... I.E. we can't use 8 textures w/o ability to pass 8 unique texcoords
					tcIdx = currAttr-GX_VA_TEX0;
					tc= (Vector *) ((uchar *) texCoordPointer[tcIdx].pointer + idx * texCoordPointer[tcIdx].stride);
					// send the texCoords
					GX_TexCoord2f32(tc->x, tc->y);
					break;
				case GX_VA_CLR0:
				case GX_VA_CLR1:
					clrIdx = currAttr - GX_VA_CLR0;
					colorP = (uchar *) colorPointer[clrIdx].pointer + idx * colorPointer[clrIdx].stride;
					if (colorPointer[0].size == 3) {
						GX_Color4u8(colorP[0], colorP[1], colorP[2], 0xFF);

					} else if (colorPointer[0].size == 4) {
						GX_Color4u8(colorP[0], colorP[1], colorP[2], colorP[3]);
					}
					break;
				default:
					break;
			}
		}
		
	}
	
	gxEnd();

}




