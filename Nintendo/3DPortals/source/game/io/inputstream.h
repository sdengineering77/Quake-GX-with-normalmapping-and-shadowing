#ifndef _INPUTSTREAM_H
#define _INPUTSTREAM_H

class InputStream {
	public:
		InputStream() {
		}
		
		~InputStream() {
		}
		
		virtual int read() {
			return -1;
		}
		
};

#endif

