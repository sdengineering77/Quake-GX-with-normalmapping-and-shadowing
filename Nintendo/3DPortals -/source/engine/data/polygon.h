#ifndef __POLYGON_H
#define __POLYGON_H

#include <gccore.h>
#include "types.h"

typedef enum PolyDrawMode_e {
	pdmPoints 				= GX_POINTS,
	pdmLines 				= GX_LINES,
	pdmLineStrip			= GX_LINESTRIP,
	pdmTriangles 			= GX_TRIANGLES,
	pdmTriangleStrip	= GX_TRIANGLESTRIP,
	pdmTriangleFan 		= GX_TRIANGLEFAN,
	pdmQuads 				= GX_QUADS
} PolyDrawMode;


typedef struct Polygon_s {
	// drawmode
	PolyDrawMode drawmode = pdmTriangles;

	// vertices
	int numVertices;
	
	// list of *vertices
	Vector **vertices;
	
	// list of normals, tangents and bitangents
	boolean hasNormals;
	VectorU8 **normals;
	VectorU8 **tangents;
	VectorU8 **bitangents;
	
	// plane normal
	Vector U8 *plane_normal;
	
	// supported maps
	TextureMapTypes supported
	
	// texture ref id
	int textureID;
	
} Polygon;

#endif

