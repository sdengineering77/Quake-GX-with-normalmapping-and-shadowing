/*
 * operators.cpp
 *
 *  Created on: 15 okt. 2012
 *      Author: Danny
 */
#include <limits.h>
#include <stdio.h>
#include <malloc.h>
//#include <new>
#include <ogc/machine/asm.h>
#include <ogc/machine/processor.h>

using namespace std;

int backtrace (void **buffer, int size);

void * operator new(size_t size, const char *file, int line) {
printf(">>> alloc new size %d %s %d\r\n", size, file, line);
	void *alloc;
	alloc = malloc(size);

	return alloc;
}

void operator delete(void *pMem) {
	free(pMem);
}

void *operator new[](size_t size, const char *file, int line) {
printf(">>> alloc new[] size %d %s %d\r\n", size, file, line);
	void *alloc;
	alloc = malloc(size);

	return alloc;
}

void operator delete[](void *pMem) {
	free(pMem);
}

#undef new
#define extnew new(__FILE__, __LINE__)
#define new extnew

class fileDataPtr {
public:
	fileDataPtr();
	~fileDataPtr();

	fileDataPtr(const fileDataPtr &other);
	fileDataPtr(fileDataPtr &other);

	void setFile(const char *filename);
	void setBuffer(char *buffer, int length);

	operator		const int ( void ) const;
	operator		const int ( void );

	char &			operator*(void);
	char &			operator[](int & index);
	fileDataPtr &	operator++();
	fileDataPtr 	operator++(int);
	fileDataPtr &	operator--();
	fileDataPtr 	operator--(int);
	fileDataPtr &	operator+=(const int & plus);
	fileDataPtr &	operator-=(const int & minus);
	fileDataPtr 	operator+(const int & plus);
	fileDataPtr 	operator-(const int & minus);
	fileDataPtr &	operator=(const int & ptr);
	bool			operator==(const int & ptr) const;
	bool			operator!=(const int & ptr) const;
	bool			operator<(const int & ptr) const;
	bool			operator>(const int & ptr) const;
	bool			operator<=(const int & ptr) const;
	bool			operator>=(const int & ptr) const;


	int			ptr;

private:
	char *		buf;
	FILE *		file;

	int 		posStart;
	int 		posEnd;
	bool		inMem;
	bool		master;

};

#define FILE_DATA_PTR_BUFSIZE 256*1024

fileDataPtr::fileDataPtr() {
	posStart = LONG_MAX;
	posEnd = LONG_MIN;
	ptr = 0;
	inMem = false;
	master = true;

}

fileDataPtr::~fileDataPtr() {
	if (master) {
printf("MASTER IS DELETED\r\n");
		if (buf && !inMem) {
			free(buf);
		}
		if (file) {
//			fileSystem->CloseFile(file);
		}
	} else {
printf("COPY IS DELETED\r\n");
	}
}

fileDataPtr::fileDataPtr(const fileDataPtr &other) {
	*this = other;
	this->master = false;
}

fileDataPtr::fileDataPtr(fileDataPtr &other) {
	*this = other;
	this->master = false;
}


// DRS TODO: actually we should write to another path and compare
// timestamp with zipped version so we can detect newer versions in PK4
void fileDataPtr::setFile(const char *filename) {

	/*file = fileSystem->OpenFileRead(filename, false);
	if (!file) {
		Sys_Error("File not found: %s\r\n", filename);
	}

	// unzip files to disk so we can random access them when too big to fit in memory
	if (file->GetFileType() == FILETYPE_INZIP) {
		int length;
		void *tempbuf = NULL;

		Sys_Printf(">>> Backing up inzip file %s to disk\r\n", filename);

		// close the file pointer and unzip the file
		fileSystem->CloseFile(file);
		length = fileSystem->ReadFile(filename, &tempbuf, NULL);

		// small files don't need to be backed up, which saves time
		if (length > FILE_DATA_PTR_BUFSIZE) {
			if (!fileSystem->WriteFile(filename, tempbuf, length)) {
				Sys_Error("fileDataPtr::setFile: Couldn't write buffer to disk %s\r\n", filename);
			}

			// file is copied, so we can delete the buffer and reopen the file from disk
			Mem_Free16(tempbuf);
			file = fileSystem->OpenFileRead(filename); // from now on it is on disk
			if (!file) {
				Sys_Error("File not found: %s\r\n", filename);
			} else if (file->GetFileType() == FILETYPE_INZIP) {
				Sys_Error("fileDataPtr::setFile: Copy to disk failed; still reading from PK4\r\n");
			}

			// create new buffer
			buf = (char *) malloc(FILE_DATA_PTR_BUFSIZE);
			if (!buf) {
				Sys_Error("fileDataPtr::setFile out of memory\r\n");
			}

		} else {
			setBuffer((char *) tempbuf, length);
		}
	}*/
	inMem = false;
}

void fileDataPtr::setBuffer(char *buffer, int length) {
	if (!buffer) {
		free(0);
	}
	buf = buffer;
	posStart = 0;
	posEnd = length;
	inMem = true;
}

fileDataPtr::operator const int ( void ) const {
	printf(">>> operator const int() const %d\r\n", ptr);
	return ptr;
}

fileDataPtr::operator const int ( void ) {
	printf(">>> operator const int() %d\r\n", ptr);
	return ptr;
}


char &			fileDataPtr::operator*() {
printf(">>> fileDataPtr::operator*() %d %d\r\n", ptr, posStart);
	if (ptr < posStart || ptr > posEnd) {
		int numread = 0;

		// load 64KB from file into buf, starting at ptr
//		file->Seek(ptr, FS_SEEK_SET); // issue, zip file geen seek support...
//		numread = file->Read(buf, FILE_DATA_PTR_BUFSIZE);
		// set posStart and posEnd
		posStart = ptr;
		posEnd = ptr + numread;
	}

	return buf[ptr - posStart];
}

char &			fileDataPtr::operator[](int & index) {
	int ptr = this->ptr + index; // override member ptr
	if (ptr < posStart || ptr > posEnd) {
		int numread = 0;

		// load 64KB from file into buf, starting at ptr
//		file->Seek(ptr, FS_SEEK_SET); // issue, zip file geen seek support...
//		numread = file->Read(buf, FILE_DATA_PTR_BUFSIZE);
		// set posStart and posEnd
		posStart = ptr;
		posEnd = ptr + numread;
	}

	return buf[ptr - posStart];
}


fileDataPtr &	fileDataPtr::operator++() {
	ptr++;
printf(">>> fileDataPtr::operator++ ptr = %d\r\n", ptr);
	return *this;
}

fileDataPtr 	fileDataPtr::operator++(int) {
	fileDataPtr cpy = *this; // shallow copy is ok
	ptr++;
printf(">>> fileDataPtr::operator++(int) ptr = %d\r\n", ptr);
	return cpy;
}

fileDataPtr &	fileDataPtr::operator--() {
	ptr--;
printf(">>> fileDataPtr::operator-- ptr = %d\r\n", ptr);
	return *this;
}

fileDataPtr 	fileDataPtr::operator--(int) {
	fileDataPtr cpy = *this; // shallow copy is ok
	ptr--;
printf(">>> fileDataPtr::operator--(int) ptr = %d\r\n", ptr);
	return cpy;
}

fileDataPtr &	fileDataPtr::operator+=(const int & plus) {
printf(">>> fileDataPtr::operator+= %d\r\n", plus);
	ptr += plus;
	return *this;
}

fileDataPtr &	fileDataPtr::operator-=(const int & minus) {
printf(">>> fileDataPtr::operator-= %d\r\n", minus);
	ptr -= minus;
	return *this;
}

fileDataPtr		fileDataPtr::operator+(const int & plus) {
printf(">>> fileDataPtr::operator+ %d\r\n", plus);
	fileDataPtr cpy = *this; // shallow copy is ok
	cpy.ptr += plus;
	return cpy;
}

fileDataPtr 	fileDataPtr::operator-(const int & minus) {
printf(">>> fileDataPtr::operator- %d\r\n", minus);
	fileDataPtr cpy = *this; // shallow copy is ok
	cpy.ptr -= minus;
	return cpy;

}

fileDataPtr &	fileDataPtr::operator=(const int & ptr) {
printf(">>> fileDataPtr::operator= %d\r\n", ptr);
	this->ptr = ptr;
	return *this;
}

// TODO assignment and compare ==, !=, <, >, <=, >= operators
bool			fileDataPtr::operator==(const int & ptr) const {
	return (this->ptr == ptr);
}

bool			fileDataPtr::operator!=(const int & ptr) const {
	return (this->ptr != ptr);
}

bool			fileDataPtr::operator<(const int & ptr) const {
	return (this->ptr < ptr);
}

bool			fileDataPtr::operator>(const int & ptr) const {
	return (this->ptr > ptr);
}

bool			fileDataPtr::operator<=(const int & ptr) const {
	return (this->ptr <= ptr);
}

bool			fileDataPtr::operator>=(const int & ptr) const {
	return (this->ptr >= ptr);
}

class testfileptr {
private:
	fileDataPtr ptr;
	float *testFloat;
public:
	testfileptr() {
		testFloat = new float[32];
		for (int i=0; i<32; i++) {
			testFloat[i] = i;
		printf(">>> testFloat[i] %f\r\n", testFloat[i]);
		}
	};
	~testfileptr() {};

	void test(void) {
		int testnum = 0;
		const char buffer[] = "Een stukje test data met wat tekst enzo\r\n";
		int length = sizeof(buffer);

		void * stack[8];
		int depth = backtrace(stack, 8);
		for (int i = 0; i<depth; i++) {
			printf(">>> stack[%d] %p\r\n", i, stack[i]);
		}

		printf("===== test %d ===== ", testnum++);
		ptr.setBuffer((char *) buffer, length);

		while(*testfileptr::ptr >= ' ') {
			char c = *testfileptr::ptr;
			if (*testfileptr::ptr <= ' ') {
				printf("break\r\n");
			} else {
				printf("%c\r\n", c);
			}
			testfileptr::ptr++;
		}
		ptr = 4;
		printf("===== test %d ===== ", testnum++);
		printf("%c\r\n", *(ptr+0));
		printf("%c\r\n", *(ptr+1));
		printf("%c\r\n", *(ptr+2));
		printf("%c\r\n", *(ptr+3));
		ptr += 1;
		printf("%c\r\n", *(ptr+3));

		printf("===== test %d ===== ", testnum++);
		ptr=0;
		printf("%c\r\n", *(++ptr));
		printf("%c\r\n", *(++ptr));
		testnum = ptr;
		printf("int: %d\r\n", testnum);
		testnum = 0;
		while(testfileptr::ptr[testnum] >= ' ') {
			char c = testfileptr::ptr[testnum];
			if (testfileptr::ptr[testnum] <= ' ') {
				printf("break\r\n");
			} else {
				printf("%c\r\n", c);
			}
			testnum++;
		}

		printf("checkString %d\r\n", checkString("data"));
	}

	int checkString( const char *str ) {
		int i;

		for ( i = 0; str[i]; i++ ) {
			if ( testfileptr::ptr[i] != str[i] ) {
				return false;
			}
		}
		return true;
	}

};
void test() {
	testfileptr test;
	test.test();

}

testfileptr exttestptr;

int backtrace (void **buffer, int size) {
	int depth;
	u32 stackptr, lr, *addr;
	// get link register
	asm volatile ("mflr %0" : "=r"(lr));
	// link register is assigned to depth[0]
	buffer[0] = (void *) (lr - 4);
	// get stackpointer
	asm volatile ("stw %%sp, 0(%0)" : : "b"((u32) &stackptr));
	// assign stack ptr to address
	addr = (u32 *) stackptr;
	// get the frames
	if (*addr) {
		// skip first two frames because this function
		// does create a stackframe but doesn't set lr on
		// the previous one.
		addr = (u32 *) *addr;
		if (*addr) {
			addr = (u32 *) *addr;
		}
	}
	for (depth=1; (depth<size && *addr); ++depth) {
		u32 * next = (u32 *) *addr;
		buffer[depth] = (void *) (*(addr+1) - 4);
		addr = next;
	}

	return depth;
}

int __main(int argc, char* argv[]) {
	u32 stackptr, x, y = 1, addr;
	//write32((u32)&stackptr, sp);
	addr = (u32)&stackptr;
	//asm("stw %0,0(%1) ;" : : "r"(x), "b"(((u32)&stackptr)));
	printf(">>> addr: %X\r\n", addr);
	asm volatile ("stw %%sp, 0(%0)" : : "b"(addr));
	//asm volatile(: "=r1"(x));
	printf(">>> stack pointer: %X\r\n", stackptr);
//	printf(">>> stack pointer: %X\r\n", x);
	void * stack[8];
	int depth = backtrace(stack, 8);
	for (int i = 0; i<depth; i++) {
		printf(">>> stack[%d] %p\r\n", i, stack[i]);
	}


	test();
	printf("==================================================\r\n");
	testfileptr *ptr = new testfileptr();
	printf("==================================================\r\n");
	ptr->test();
	printf("==================================================\r\n");
	testfileptr *ptr2 = new testfileptr[2];
	printf("================================================== %p\r\n", ptr2);
	exttestptr.test();

	//write32((u32)&stackptr, sp);
	//asm("stw %0,0(%1) ;" : : "r"(x), "b"(((u32)&stackptr)));
	asm volatile ("stw %%sp, 0(%0)" : "=r"(stackptr));
	//asm volatile(: "=r1"(x));
	printf(">>> stack pointer: %X\r\n", stackptr);
//	printf(">>> stack pointer: %X\r\n", x);


	return 0;
}

