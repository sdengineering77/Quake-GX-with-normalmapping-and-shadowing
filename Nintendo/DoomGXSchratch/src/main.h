/*
 * main.h
 *
 *  Created on: 9 aug. 2012
 *      Author: Danny
 */

#ifndef MAIN_H_
#define MAIN_H_

typedef struct myTestNode_s {
	int						symbol;
	int						frequency;
	struct myTestNode_s *	next;
	struct myTestNode_s *	children[2];
} myTestNode_t;


#endif /* MAIN_H_ */
