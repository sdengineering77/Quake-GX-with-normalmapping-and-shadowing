#ifndef _CONSOLE_H
#define _CONSOLE_H

#include <stdio.h>
#include <stdarg.h>
#include <string.h>

#include "engine/data/types.h"

#include "charset.h"
#include "charset8x8.h"

#define CONSOLE_WIDTH		80
#define CONSOLE_HEIGHT	60

class Console {
	public:
		int *buffer;
		int size;
		int *pEnd;
		int idxEof;
		int idxWriter;
		int width;
		int height;
		int visHeight;
		int pixelsx;
		int pixelsy;
		Charset *charSet;
		
	public:
		Console(byte width, byte height, int pixelsx, int pixelsy, Charset *charSet);
		~Console();

		void printf(byte *color, const char *string, ...);
		void draw();
		
	private:
		void	setConsoleShader();


};

#endif


