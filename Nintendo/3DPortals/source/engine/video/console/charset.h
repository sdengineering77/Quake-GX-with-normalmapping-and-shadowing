#ifndef _CHARSET_H
#define _CHARSET_H

#include "engine/data/types.h"
#include "engine/core/heap.h"

typedef struct _charsetTexCoord_s {
	Vector2D	texCoords[4];
} CharsetTexCoord;


class Charset {
	public:
		Charset();
		~Charset();
		
		virtual Texture *getTexture();
		virtual CharsetTexCoord *getTexCoords(byte idx); 
		virtual int getCharacterWidth(byte idx); 
		virtual int	getHeight();

};



#endif


