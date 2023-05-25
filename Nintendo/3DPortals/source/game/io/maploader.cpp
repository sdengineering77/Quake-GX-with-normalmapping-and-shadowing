

#include "maploader.h"

const int MapLoader::SPAN_DATABLOCKSIZE					= 7;
const int MapLoader::SPAN_LEFT										= 0;
const int MapLoader::SPAN_RIGHT									=	1;
const int MapLoader::SPAN_TOP										= 2;
const int MapLoader::SPAN_BOTTOM								= 3;
const int MapLoader::SPAN_ALIGN									= 4;
const int MapLoader::_SPAN_ALIGN_LEFT						= 0;
const int MapLoader::_SPAN_ALIGN_RIGHT						= 1;
const int MapLoader::_SPAN_ALIGN_TOP							= 2;
const int MapLoader::_SPAN_ALIGN_BOTTOM					= 3;
const int MapLoader::SPAN_TEXTURE								= 5;
const int MapLoader::SPAN_ANIMATED								= 6;

const int MapLoader::CONN_PORT_DATABLOCKSIZE		= 6;
const int MapLoader::CONN_PORT_LEFT							= 0;
const int MapLoader::CONN_PORT_RIGHT						= 1;
const int MapLoader::CONN_PORT_TOP							= 2;
const int MapLoader::CONN_PORT_BOTTOM					= 3;
const int MapLoader::CONN_PORT_ALIGN						= 4;
const int MapLoader::_CONN_PORT_ALIGN_LEFT			= 0;
const int MapLoader::_CONN_PORT_ALIGN_RIGHT			= 1;
const int MapLoader::_CONN_PORT_ALIGN_TOP				= 2;
const int MapLoader::_CONN_PORT_ALIGN_BOTTOM		= 3;
const int MapLoader::CONN_PORT_REL_PORTAL_ID		= 5;

const int MapLoader::PORTAL_DATABLOCKSIZE			= 16;
const int MapLoader::PORTAL_BOTTOM_H 					= 0;
const int MapLoader::PORTAL_BOTTOM_L 					= 1;
const int MapLoader::PORTAL_LEFT_H  						= 2;
const int MapLoader::PORTAL_LEFT_L  						= 3;
const int MapLoader::PORTAL_FLOOR_H 						= 4;
const int MapLoader::PORTAL_FLOOR_L 						= 5;
const int MapLoader::PORTAL_CEIL_HEIGHT 				= 6;
const int MapLoader::PORTAL_WIDTH		 					= 7;
const int MapLoader::PORTAL_HEIGHT	 						= 8;
const int MapLoader::PORTAL_TEXT_FLOOR				= 9;
const int MapLoader::PORTAL_TEXT_CEIL	    			= 10;
const int MapLoader::PORTAL_LIGHT	    					= 11;
const int MapLoader::PORTAL_LIGHT_TYPE   				= 12;
const int MapLoader::PORTAL_ID	    							= 13;
const int MapLoader::PORTAL_NUM_REF_PORTALS	= 14;
const int MapLoader::PORTAL_NUM_REF_SPANS		= 15;


MapLoader::MapLoader() {
}

MapLoader::~MapLoader() {
	// TODO: free memory
}



/*
===============================================
===============================================
*/
void MapLoader::loadMap( char *name ) {
}


/*
===============================================
===============================================
*/
void MapLoader::solveConnectionPorts( ConvexSpace *spacesList ) {
	
}


/*
===============================================
===============================================
*/
short MapLoader::convertPair( byte byte_h, byte byte_l ) {
	return 0;
}


/*
===============================================
===============================================
*/
ConvexSpace *MapLoader::loadConvexSpace( InputStream *in ) {
	return NULL;
}


/*
===============================================
===============================================
*/
Polygon *MapLoader::loadSpan( InputStream *in,  ConvexSpace *space ) {
	return 0;
}
