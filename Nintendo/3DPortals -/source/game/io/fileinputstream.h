#ifndef _FILEINPUTSTREAM_H
#define _FILEINPUTSTREAM_H

class FileInputStream {
	private:
		int fd;
		char name[256];
	
	public:
		FileInputStream(char *name);
		~FileInputStream();
		
		int read();
		
}

#endif

