/*
 * operators2.cpp
 *
 *  Created on: 29 nov. 2012
 *      Author: Danny
 */
#include <limits.h>
#include <stdio.h>
#include <malloc.h>
//#include <new>
#include <ogc/machine/asm.h>
#include <ogc/machine/processor.h>

typedef unsigned char byte;

template <class type>
class DataWrapper {
public:
	DataWrapper();
	~DataWrapper();

	DataWrapper(const DataWrapper &other);
	DataWrapper(DataWrapper &other);

	//operator		const type * ( void ) const;
	operator		const type * ( void );
	//operator		type * ( void ) const;
	operator		type * ( void );
	//operator		byte * ( void );
	operator		type * ( void );

	type *			operator->(void);
	type &			operator*(void);
	type &			operator[](int index);
	DataWrapper &	operator++();
	DataWrapper 	operator++(int);
	DataWrapper &	operator--();
	DataWrapper 	operator--(int);
	DataWrapper &	operator+=(const int & plus);
	DataWrapper &	operator-=(const int & minus);
	DataWrapper 	operator+(const int & plus);
	DataWrapper 	operator-(const int & minus);
	DataWrapper &	operator=(const type * ptr);
	DataWrapper &	operator=(type * ptr);
	DataWrapper &	operator=(const int ptr);
	bool			operator==(const type * ptr) const;
	bool			operator!=(const type * ptr) const;
	bool			operator<(const type * ptr) const;
	bool			operator>(const type * ptr) const;
	bool			operator<=(const type * ptr) const;
	bool			operator>=(const type * ptr) const;

//private:
	type * data;

};

template <class type>
DataWrapper<type>::DataWrapper() {
	data = NULL;
}

template <class type>
DataWrapper<type>::~DataWrapper() {
}

template <class type>
DataWrapper<type>::DataWrapper(const DataWrapper<type> &other) {
	*this = other;
}

template <class type>
DataWrapper<type>::DataWrapper(DataWrapper<type> &other) {
	*this = other;
}


//template <class type>
//DataWrapper<type>::operator const type * ( void ) const {
//	printf(">>> operator const DataWrapper * () const %p\r\n", data);
//	return data;
//}

template <class type>
DataWrapper<type>::operator const type * ( void ) {
	printf(">>> operator const DataWrapper<type> * () %p\r\n", data);
	return data;
}

//template <class type>
//DataWrapper<type>::operator type * ( void ) const {
//	printf(">>> operator const DataWrapper<type> * () %p\r\n", data);
//	return data;
//}

template <class type>
DataWrapper<type>::operator type * ( void ) {
	printf(">>> operator const DataWrapper<type> * () %p\r\n", data);
	return data;
}

//template <class type>
//DataWrapper<type>::operator byte * ( void ) {
//	printf(">>> operator const DataWrapper<type> * () %p\r\n", data);
//	return (byte *) data;
//}

template <class type>
type &			DataWrapper<type>::operator*() {
printf(">>> DataWrapper<type>::operator*() %p\r\n", data);
	return *data;
}

template <class type>
type *			DataWrapper<type>::operator->() {
printf(">>> DataWrapper<type>::operator->() %p\r\n", data);
	return data;
}

template <class type>
type &			DataWrapper<type>::operator[](int index) {
	return data[index];
}


template <class type>
DataWrapper<type> &	DataWrapper<type>::operator++() {
	data++;
printf(">>> DataWrapper<type>::operator++ ptr = %p\r\n", data);
	return *this;
}

template <class type>
DataWrapper<type> 	DataWrapper<type>::operator++(int) {
	DataWrapper<type> cpy = *this; // shallow copy is ok
	data++;
printf(">>> DataWrapper<type>::operator++(int) ptr = %p\r\n", data);
	return cpy;
}

template <class type>
DataWrapper<type> &	DataWrapper<type>::operator--() {
	data--;
printf(">>> DataWrapper<type>::operator-- ptr = %p\r\n", data);
	return *this;
}

template <class type>
DataWrapper<type> 	DataWrapper<type>::operator--(int) {
	DataWrapper<type> cpy = *this; // shallow copy is ok
	data--;
printf(">>> DataWrapper<type>::operator--(int) ptr = %p\r\n", data);
	return cpy;
}

template <class type>
DataWrapper<type> &	DataWrapper<type>::operator+=(const int & plus) {
printf(">>> DataWrapper<type>::operator+= %d\r\n", plus);
	data += plus;
	return *this;
}

template <class type>
DataWrapper<type> &	DataWrapper<type>::operator-=(const int & minus) {
printf(">>> DataWrapper<type>::operator-= %d\r\n", minus);
	data -= minus;
	return *this;
}

template <class type>
DataWrapper<type>		DataWrapper<type>::operator+(const int & plus) {
printf(">>> DataWrapper<type>::operator+ %d\r\n", plus);
	DataWrapper<type> cpy = *this; // shallow copy is ok
	cpy.data += plus;
	return cpy;
}

template <class type>
DataWrapper<type> 	DataWrapper<type>::operator-(const int & minus) {
printf(">>> DataWrapper<type>::operator- %d\r\n", minus);
	DataWrapper<type> cpy = *this; // shallow copy is ok
	cpy.data -= minus;
	return cpy;

}

template <class type>
DataWrapper<type> &	DataWrapper<type>::operator=(const type * ptr) {
printf(">>> DataWrapper<type>::operator= %p\r\n", ptr);
	this->data = (type *) ptr;
	return *this;
}

template <class type>
DataWrapper<type> &	DataWrapper<type>::operator=(type * ptr) {
printf(">>> DataWrapper<type>::operator= %p\r\n", ptr);
	this->data = ptr;
	return *this;
}

template <class type>
DataWrapper<type> &	DataWrapper<type>::operator=(const int ptr) {
printf(">>> DataWrapper<type>::operator= %x\r\n", ptr);
	this->data = (type *) ptr;
	return *this;
}

// TODO assignment and compare ==, !=, <, >, <=, >= operators
template <class type>
bool			DataWrapper<type>::operator==(const type * ptr) const {
	return (this->data == ptr);
}

template <class type>
bool			DataWrapper<type>::operator!=(const type * ptr) const {
	return (this->data != ptr);
}

template <class type>
bool			DataWrapper<type>::operator<(const type * ptr) const {
	return (this->data < ptr);
}

template <class type>
bool			DataWrapper<type>::operator>(const type * ptr) const {
	return (this->data > ptr);
}

template <class type>
bool			DataWrapper<type>::operator<=(const type * ptr) const {
	return (this->data <= ptr);
}

template <class type>
bool			DataWrapper<type>::operator>=(const type * ptr) const {
	return (this->data >= ptr);
}

typedef struct cm_polygonRef_s {
	int *			p;					// pointer to polygon
	struct cm_polygonRef_s *next;				// next polygon in chain
} cm_polygonRef_t;


int main(int argc, char ** argv) {
	DataWrapper<cm_polygonRef_t> wrapper;
	cm_polygonRef_t *ref;
	cm_polygonRef_t real;
	ref = (cm_polygonRef_t *) malloc(4*sizeof(cm_polygonRef_t));
	printf(">>> ref %p\r\n", ref);
	wrapper = ref;
	printf(">>> wrapped ref %p\r\n", wrapper.data);
	ref = wrapper;

	wrapper->p;
	wrapper->next = (cm_polygonRef_t *) (((byte *) wrapper) + sizeof(cm_polygonRef_t));
	printf(">>> wrapped ref next %p\r\n", wrapper->next);
	real = wrapper[0];
	ref = &wrapper[0];
	printf(">>> ref %p\r\n", ref);
	int i = ref - wrapper;
	printf(">>> i %d\r\n", i);
	wrapper = NULL;
	if (wrapper) {
		printf(">>> i %d\r\n", wrapper);
	}
	return 0;
}
