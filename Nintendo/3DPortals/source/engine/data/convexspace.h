#ifndef __CONVEXSPACE_H
#define __CONVEXSPACE_H

#include <gccore.h>
#include "polygon.h"

typedef struct ConvexSpace_s {
	// bounding box
	Vector minMaxs[2];
	
	// poygons
	int numPolygons;
	Polygon **polygons;
	
	// portals
	int numPortals;
	
	// entities
	int numEntities;
	
	// frame counts
	int visibleInFrame;
	int renderedInFrame;
	
} ConvexSpace;

#endif

