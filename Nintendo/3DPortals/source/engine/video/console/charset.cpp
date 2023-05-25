#include "charset.h"

Charset::Charset() {
}

Charset::~Charset() {
}

Texture *Charset::getTexture() {
	return NULL;
}

CharsetTexCoord *Charset::getTexCoords(byte idx)  {
	return NULL;
}

int Charset::getCharacterWidth(byte idx)  {
	return 0;
}

int Charset::getHeight()  {
	return 0;
}
