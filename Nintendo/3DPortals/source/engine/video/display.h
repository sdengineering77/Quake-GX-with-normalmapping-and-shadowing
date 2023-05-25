#ifndef _HEAP_H
#define _HEAP_H

// memalign...
#include <malloc.h>

#include "engine/data/types.h"
#include "engine/video/console/console.h"

#define DEFAULT_FIFO_SIZE	(512*1024)

class Display {
	private:
		int renderWidth;
		int renderHeight;
		
		Console 			*console;
		void 				*frameBuffer[2];
	public:
		GXRModeObj 	*rmode;
		int					currBuffer;

		
	public:
		Display(int renderWidth, int renderHeight);
		~Display();
		
		void			newFrame();
		Console 	*getConsole();
	private:
		void 		init();

};

#endif
