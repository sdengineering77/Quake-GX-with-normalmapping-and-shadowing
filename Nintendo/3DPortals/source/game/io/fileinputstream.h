#ifndef _FILEINPUTSTREAM_H
#define _FILEINPUTSTREAM_H

#include "inputstream.h"

class FileInputStream : public InputStream {
	private:
		int fd;
		char name[256];
	
	public:
		FileInputStream(char *name);
		~FileInputStream();
		
		int read();
		
};

#endif

