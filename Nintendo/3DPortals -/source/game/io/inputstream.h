#ifndef _INPUTSTREAM_H
#define _INPUTSTREAM_H

class InputStream {
	public:
		virtual InputStream() {
		}
		
		virtual ~InputStream() {
		}
		
		virtual int read() {
			return -1;
		}
		
}

#endif

