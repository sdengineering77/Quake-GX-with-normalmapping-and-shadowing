/*
 * mockups.h
 *
 *  Created on: 7 aug. 2012
 *      Author: Danny
 */

#ifndef MOCKUPS_H_
#define MOCKUPS_H_

#include "mockupcd.h"

extern idCmdSystemLocal *	cmdSystemLocal;


extern idNetworkSystem *	networkSystem;
extern idCmdSystem *		cmdSystem;
extern idCommon *			common;
extern idConsole *			console;
extern idCVarSystem *		cvarSystem;
extern idDeclManager *		declManager;
extern idFileSystem *		fileSystem;

void createNewSession(void);
void createNewUsercmdGen(void);
void createNewIdGameLocal(void);



#endif /* MOCKUPS_H_ */
