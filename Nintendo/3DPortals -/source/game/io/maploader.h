#ifndef _MAPLOADER_H
#define _MAPLOADER_H

#include "/engine/data/convexspace.h"
#include "/engine/core/heap.h"

class MapLoader {

	private:
		const int SPAN_DATABLOCKSIZE		= 7;
		const int SPAN_LEFT							= 0;
		const int SPAN_RIGHT						=	1;
		const int SPAN_TOP							= 2;
		const int SPAN_BOTTOM					= 3;
		const int SPAN_ALIGN						= 4;
		const 	int _SPAN_ALIGN_LEFT			= 0;
		const 	int _SPAN_ALIGN_RIGHT		= 1;
		const 	int _SPAN_ALIGN_TOP			= 2;
		const 	int _SPAN_ALIGN_BOTTOM	= 3;
		const int SPAN_TEXTURE					= 5;
		const int SPAN_ANIMATED					= 6;
		
		const int CONN_PORT_DATABLOCKSIZE		= 6;
		const int CONN_PORT_LEFT							= 0;
		const int CONN_PORT_RIGHT						= 1;
		const int CONN_PORT_TOP							= 2;
		const int CONN_PORT_BOTTOM					= 3;
		const int CONN_PORT_ALIGN						= 4;
		const 	int _CONN_PORT_ALIGN_LEFT			= 0;
		const 	int _CONN_PORT_ALIGN_RIGHT		= 1;
		const 	int _CONN_PORT_ALIGN_TOP			= 2;
		const 	int _CONN_PORT_ALIGN_BOTTOM	= 3;
		const int CONN_PORT_REL_PORTAL_ID		= 5;

		const int PORTAL_DATABLOCKSIZE			= 16;
		const int PORTAL_BOTTOM_H 					= 0;
		const int PORTAL_BOTTOM_L 					= 1;
		const int PORTAL_LEFT_H  						= 2;
		const int PORTAL_LEFT_L  						= 3;
		const int PORTAL_FLOOR_H 						= 4;
		const int PORTAL_FLOOR_L 						= 5;
		const int PORTAL_CEIL_HEIGHT 				= 6;
		const int PORTAL_WIDTH		 					= 7;
		const int PORTAL_HEIGHT	 						= 8;
		const int PORTAL_TEXT_FLOOR				= 9;
		const int PORTAL_TEXT_CEIL	    			= 10;
		const int PORTAL_LIGHT	    					= 11;
		const int PORTAL_LIGHT_TYPE   				= 12;
		const int PORTAL_ID	    							= 13;
		const int PORTAL_NUM_REF_PORTALS	= 14;
		const int PORTAL_NUM_REF_SPANS		= 15;

		//const byte[] portal_data 								= new byte[PORTAL_DATABLOCKSIZE];
		//const byte[] span_data 								= new byte[SPAN_DATABLOCKSIZE];

	public:

		MapLoader();
		~MapLoader();

		RectangularPortal loadMap( char *name );

	private:
	
		void solveConnectionPorts( ConvexSpace *spacesList );	
		short convertPair( byte byte_h, byte byte_l );
		ConvexSpace loadConvexSpace( InputStream in );
		Polygon loadSpan( InputStream in, ConvexSpace space );
}

#endif
