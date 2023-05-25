#ifndef _ENGINE_DATA_TYPES_H
#define _ENGINE_DATA_TYPES_H

#include <stdio.h>
#include <string.h>
#include <malloc.h>
#include <gccore.h>

typedef unsigned char boolean;
typedef unsigned char byte;

typedef struct _vectorU8_s {
	signed char x;
	signed char y;
	signed char z;
} VectorU8;

typedef struct _vector2D_s {
	float x;
	float y;
} Vector2D;


typedef enum _textureMapTypes_e {
	stNone				= 0x0000, // draw flat
	stTexMap			= 0x0001, // use texture
	stXYNormalMap	= 0x0002, // 2D Normal map
	stHeightMap		= 0x0004, // emboss
	stGlossMap		= 0x0008, // mix specular and diffuse
	stIntensityMap	= 0x0010  // light intensity 0 = dark 255 = modulate x 2
} TextureMapTypes;

typedef struct _texture_s {
	int				id; // -1 = n/a
	void 			*data;
	int				renderWidth; // for rendering this width is used
	int				renderHeight;
	int				dataWidth; // lod
	int				dataHeight; // lod
	GXTexObj 	texobj;
} Texture;


#endif
