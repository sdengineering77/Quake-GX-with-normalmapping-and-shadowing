#ifndef _MAPLOADER_H
#define _MAPLOADER_H

#include "engine/data/convexspace.h"
#include "engine/core/heap.h"
#include "fileinputstream.h"

class MapLoader {

	private:
		const static int SPAN_DATABLOCKSIZE;
		const static int SPAN_LEFT;
		const static int SPAN_RIGHT;
		const static int SPAN_TOP;
		const static int SPAN_BOTTOM;
		const static int SPAN_ALIGN;
		const static int _SPAN_ALIGN_LEFT;
		const static int _SPAN_ALIGN_RIGHT;
		const static int _SPAN_ALIGN_TOP;
		const static int _SPAN_ALIGN_BOTTOM;
		const static int SPAN_TEXTURE;
		const static int SPAN_ANIMATED;
		
		const static int CONN_PORT_DATABLOCKSIZE;
		const static int CONN_PORT_LEFT;
		const static int CONN_PORT_RIGHT;
		const static int CONN_PORT_TOP;
		const static int CONN_PORT_BOTTOM;
		const static int CONN_PORT_ALIGN;
		const static int _CONN_PORT_ALIGN_LEFT;
		const static int _CONN_PORT_ALIGN_RIGHT;
		const static int _CONN_PORT_ALIGN_TOP;
		const static int _CONN_PORT_ALIGN_BOTTOM;
		const static int CONN_PORT_REL_PORTAL_ID;

		const static int PORTAL_DATABLOCKSIZE;
		const static int PORTAL_BOTTOM_H;
		const static int PORTAL_BOTTOM_L;
		const static int PORTAL_LEFT_H;
		const static int PORTAL_LEFT_L ;
		const static int PORTAL_FLOOR_H;
		const static int PORTAL_FLOOR_L;
		const static int PORTAL_CEIL_HEIGHT;
		const static int PORTAL_WIDTH;
		const static int PORTAL_HEIGHT;
		const static int PORTAL_TEXT_FLOOR;
		const static int PORTAL_TEXT_CEIL;
		const static int PORTAL_LIGHT;
		const static int PORTAL_LIGHT_TYPE ;
		const static int PORTAL_ID;
		const static int PORTAL_NUM_REF_PORTALS;
		const static int PORTAL_NUM_REF_SPANS;

		//const byte[] portal_data 								= new byte[PORTAL_DATABLOCKSIZE];
		//const byte[] span_data 								= new byte[SPAN_DATABLOCKSIZE];

	public:

		MapLoader();
		~MapLoader();

		void loadMap( char *name );

	private:
	
		void solveConnectionPorts( ConvexSpace *spacesList );	
		short convertPair( byte byte_h, byte byte_l );
		ConvexSpace *loadConvexSpace( InputStream *in );
		Polygon *loadSpan( InputStream *in, ConvexSpace *space );
};



#endif
