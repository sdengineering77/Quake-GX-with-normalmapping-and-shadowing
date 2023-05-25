#ifndef __TYPES_H
#define __TYPES_H

typedef enum boolean_e {
	false = 0x00,
	true = 0x01
} boolean;

typedef struct VectorU8_s {
	signed char x;
	signed char y;
	signed char z;
} VectorU8;

typedef enum TextureMapTypes_e {
	stNone				= 0x0000, // draw flat
	stTexMap			= 0x0001, // use texture
	stXYNormalMap	= 0x0002, // 2D Normal map
	stHeightMap		= 0x0004, // emboss
	stGlossMap		= 0x0008, // mix specular and diffuse
	stIntensityMap	= 0x0010  // light intensity 0 = dark 255 = modulate x 2
} TextureMapTypes;



#endif