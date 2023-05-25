	.file	"glut.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl ShowConsole
	.type	ShowConsole, @function
ShowConsole:
.LFB68:
	.file 1 "d:/Data/Nintendo/DoomGX/gl2gx/source/glut.c"
	.loc 1 247 0
	.loc 1 248 0
	li 0,1
	lis 9,_console_enabled@ha
	stb 0,_console_enabled@l(9)
	.loc 1 251 0
	blr
.LFE68:
	.size	ShowConsole, .-ShowConsole
	.align 2
	.globl HideConsole
	.type	HideConsole, @function
HideConsole:
.LFB69:
	.loc 1 254 0
	.loc 1 257 0
	li 0,0
	lis 9,_console_enabled@ha
	stb 0,_console_enabled@l(9)
	.loc 1 258 0
	blr
.LFE69:
	.size	HideConsole, .-HideConsole
	.align 2
	.globl getVImode
	.type	getVImode, @function
getVImode:
.LFB70:
	.loc 1 261 0
.LVL0:
	.loc 1 262 0
	lis 9,rmode@ha
	lwz 11,rmode@l(9)
	.loc 1 263 0
	lhz 10,16(11)
	.loc 1 262 0
	lhz 0,14(11)
	stw 0,0(3)
	.loc 1 263 0
	stw 10,0(4)
	.loc 1 264 0
	blr
.LFE70:
	.size	getVImode, .-getVImode
	.align 2
	.globl computeFactor
	.type	computeFactor, @function
computeFactor:
.LFB73:
	.loc 1 415 0
	stwu 1,-16(1)
.LCFI0:
	.loc 1 416 0
	lis 9,rmode@ha
	lwz 11,rmode@l(9)
	lis 9,offset@ha
	lwz 0,offset@l(9)
	lis 9,.LC1@ha
	lhz 10,6(11)
	lis 11,0x4330
	stw 11,8(1)
	slwi 0,0,1
	stw 10,12(1)
	xoris 0,0,0x8000
	lfs 0,.LC1@l(9)
	lis 9,.LC3@ha
	lfd 13,8(1)
	stw 0,12(1)
	fsub 13,13,0
	lfs 0,.LC3@l(9)
	lfd 1,8(1)
	.loc 1 417 0
	addi 1,1,16
	.loc 1 416 0
	fsub 1,1,0
	frsp 13,13
	frsp 1,1
	fsubs 1,13,1
	.loc 1 417 0
	fdivs 1,1,13
	blr
.LFE73:
	.size	computeFactor, .-computeFactor
	.align 2
	.globl glutGet
	.type	glutGet, @function
glutGet:
.LFB79:
	.loc 1 472 0
.LVL1:
	.loc 1 474 0
	cmpwi 7,3,201
	.loc 1 476 0
	li 0,480
.LVL2:
	.loc 1 474 0
	beq- 7,.L14
	cmpwi 7,3,504
	li 0,18
	beq- 7,.L14
	cmpwi 7,3,200
	li 0,0
	beq- 7,.L18
.L14:
	.loc 1 481 0
	mr 3,0
.LVL3:
	blr
.LVL4:
.L18:
	.loc 1 474 0
	li 0,640
	.loc 1 481 0
	mr 3,0
.LVL5:
	blr
.LFE79:
	.size	glutGet, .-glutGet
	.align 2
	.globl glutDisplayFunc
	.type	glutDisplayFunc, @function
glutDisplayFunc:
.LFB80:
	.loc 1 485 0
.LVL6:
	.loc 1 486 0
	lis 9,displayfunc@ha
	stw 3,displayfunc@l(9)
	.loc 1 487 0
	blr
.LFE80:
	.size	glutDisplayFunc, .-glutDisplayFunc
	.align 2
	.globl glutIdleFunc
	.type	glutIdleFunc, @function
glutIdleFunc:
.LFB81:
	.loc 1 491 0
.LVL7:
	.loc 1 492 0
	lis 9,idlefunc@ha
	stw 3,idlefunc@l(9)
	.loc 1 493 0
	blr
.LFE81:
	.size	glutIdleFunc, .-glutIdleFunc
	.align 2
	.globl getFPS
	.type	getFPS, @function
getFPS:
.LFB83:
	.loc 1 519 0
	.loc 1 521 0
	lis 9,FPS@ha
	lbz 3,FPS@l(9)
	blr
.LFE83:
	.size	getFPS, .-getFPS
	.align 2
	.globl getFrontFramebuffer
	.type	getFrontFramebuffer, @function
getFrontFramebuffer:
.LFB86:
	.loc 1 573 0
	.loc 1 573 0
	lis 9,fb@ha
	lwz 0,fb@l(9)
	.loc 1 575 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	.loc 1 573 0
	slwi 0,0,2
	.loc 1 575 0
	lwzx 3,9,0
	blr
.LFE86:
	.size	getFrontFramebuffer, .-getFrontFramebuffer
	.align 2
	.globl getBackFramebuffer
	.type	getBackFramebuffer, @function
getBackFramebuffer:
.LFB87:
	.loc 1 578 0
	.loc 1 578 0
	lis 9,fb@ha
	lwz 0,fb@l(9)
	.loc 1 580 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	.loc 1 578 0
	xori 0,0,1
	slwi 0,0,2
	.loc 1 580 0
	lwzx 3,9,0
	blr
.LFE87:
	.size	getBackFramebuffer, .-getBackFramebuffer
	.align 2
	.globl power_off
	.type	power_off, @function
power_off:
.LFB88:
	.loc 1 583 0
.LVL8:
	.loc 1 584 0
	li 0,1
	lis 9,kill@ha
	stb 0,kill@l(9)
	.loc 1 585 0
	blr
.LFE88:
	.size	power_off, .-power_off
	.align 2
	.globl glutMainLoop
	.type	glutMainLoop, @function
glutMainLoop:
.LFB85:
	.loc 1 535 0
	stwu 1,-56(1)
.LCFI1:
	mflr 0
.LCFI2:
	stw 29,44(1)
.LCFI3:
	.loc 1 540 0
	lis 29,watchdog@ha
	la 3,watchdog@l(29)
	.loc 1 535 0
	stw 30,48(1)
.LCFI4:
	stw 31,52(1)
.LCFI5:
	.loc 1 542 0
	lis 30,kill@ha
	.loc 1 535 0
	stw 0,60(1)
.LCFI6:
	.loc 1 540 0
	bl SYS_CreateAlarm
	.loc 1 550 0
	mr. 10,3
	.loc 1 544 0
	li 11,0
	.loc 1 542 0
	li 0,0
	.loc 1 547 0
	li 9,1
	.loc 1 542 0
	stb 0,kill@l(30)
	addi 31,1,20
	.loc 1 547 0
	stw 9,20(1)
	.loc 1 548 0
	stw 11,24(1)
	.loc 1 544 0
	stw 11,12(1)
	.loc 1 545 0
	stw 11,16(1)
	.loc 1 550 0
	beq- 0,.L42
.L32:
	.loc 1 559 0
	lis 4,glutThread@ha
	addi 3,1,8
	la 4,glutThread@l(4)
	li 5,0
	li 6,0
	li 7,0
	li 8,67
	bl LWP_CreateThread
.L41:
	.loc 1 563 0
	mr 3,31
	bl nanosleep
	.loc 1 564 0
	lbz 0,kill@l(30)
	cmpwi 7,0,0
	beq- 7,.L41
.L43:
	.loc 1 566 0
	bl do_reset
	.loc 1 563 0
	mr 3,31
	bl nanosleep
	.loc 1 564 0
	lbz 0,kill@l(30)
	cmpwi 7,0,0
	beq- 7,.L41
	b .L43
.L42:
	.loc 1 554 0
	lwz 3,watchdog@l(29)
	lis 6,timercallback@ha
	.loc 1 552 0
	lis 9,count@ha
	.loc 1 554 0
	la 6,timercallback@l(6)
	addi 4,1,12
	mr 5,31
	.loc 1 552 0
	stb 10,count@l(9)
	.loc 1 554 0
	bl SYS_SetPeriodicAlarm
	b .L32
.LFE85:
	.size	glutMainLoop, .-glutMainLoop
	.align 2
	.globl glutThread
	.type	glutThread, @function
glutThread:
.LFB84:
	.loc 1 523 0
.LVL9:
	mflr 0
.LCFI7:
	stwu 1,-16(1)
.LCFI8:
	.loc 1 525 0
	lis 9,displayfunc@ha
	.loc 1 523 0
	stw 30,8(1)
.LCFI9:
	stw 0,20(1)
.LCFI10:
	stw 31,12(1)
.LCFI11:
	.loc 1 525 0
	lwz 0,displayfunc@l(9)
	cmpwi 7,0,0
	beq- 7,.L50
	mtctr 0
	lis 30,count@ha
	lis 31,idlefunc@ha
	bctrl
.LVL10:
.L51:
	.loc 1 529 0
	lwz 9,idlefunc@l(31)
	.loc 1 528 0
	li 0,0
	stb 0,count@l(30)
	.loc 1 529 0
	cmpwi 7,9,0
	beq- 7,.L47
	mtctr 9
	bctrl
.LVL11:
.L47:
	.loc 1 530 0
	bl LWP_YieldThread
.LVL12:
	b .L51
.LVL13:
.L50:
	lis 30,count@ha
	lis 31,idlefunc@ha
	b .L51
.LFE84:
	.size	glutThread, .-glutThread
	.align 2
	.globl timercallback
	.type	timercallback, @function
timercallback:
.LFB82:
	.loc 1 501 0
.LVL14:
	mflr 0
.LCFI12:
	stwu 1,-16(1)
.LCFI13:
	stw 31,12(1)
.LCFI14:
	.loc 1 502 0
	lis 31,count@ha
	.loc 1 501 0
	stw 0,20(1)
.LCFI15:
	.loc 1 502 0
	lbz 9,count@l(31)
	addi 9,9,1
	rlwinm 9,9,0,0xff
	stb 9,count@l(31)
	.loc 1 503 0
	lbz 0,count@l(31)
	cmplwi 7,0,2
	bgt- 7,.L58
.L53:
	.loc 1 509 0
	lbz 0,count@l(31)
	cmplwi 7,0,10
	ble- 7,.L55
	.loc 1 511 0
	li 0,1
	lis 9,kill@ha
	stb 0,kill@l(9)
.L55:
	.loc 1 514 0
	lis 10,incFPS@ha
	.loc 1 515 0
	li 0,0
	.loc 1 514 0
	lbz 11,incFPS@l(10)
	lis 9,FPS@ha
	stb 11,FPS@l(9)
	.loc 1 515 0
	stb 0,incFPS@l(10)
	.loc 1 516 0
	lwz 0,20(1)
	lwz 31,12(1)
	addi 1,1,16
	mtlr 0
	blr
.L58:
	.loc 1 505 0
	lbz 4,count@l(31)
.LVL15:
	lis 3,.LC6@ha
.LVL16:
	la 3,.LC6@l(3)
	crxor 6,6,6
	bl printf
	.loc 1 506 0
	bl GX_AbortFrame
	b .L53
.LFE82:
	.size	timercallback, .-timercallback
	.align 2
	.globl glutSwapBuffers
	.type	glutSwapBuffers, @function
glutSwapBuffers:
.LFB77:
	.loc 1 441 0
	stwu 1,-24(1)
.LCFI16:
	mflr 0
.LCFI17:
	stw 28,8(1)
.LCFI18:
	.loc 1 444 0
	lis 28,fb@ha
	.loc 1 441 0
	stw 29,12(1)
.LCFI19:
	.loc 1 449 0
	lis 29,.LANCHOR0@ha
	.loc 1 441 0
	stw 0,28(1)
.LCFI20:
	.loc 1 442 0
	bl glFlush
	.loc 1 444 0
	lwz 0,fb@l(28)
	.loc 1 446 0
	li 5,1
	li 4,7
	li 3,1
	.loc 1 444 0
	xori 0,0,1
	.loc 1 449 0
	la 29,.LANCHOR0@l(29)
	.loc 1 444 0
	stw 0,fb@l(28)
	.loc 1 446 0
	bl GX_SetZMode
	.loc 1 447 0
	li 3,1
	bl GX_SetColorUpdate
	.loc 1 448 0
	li 3,1
	bl GX_SetAlphaUpdate
	.loc 1 449 0
	lwz 0,fb@l(28)
	li 4,1
	slwi 0,0,2
	lwzx 3,29,0
	bl GX_CopyDisp
	.loc 1 451 0
	bl GX_DrawDone
	.loc 1 452 0
	lis 11,incFPS@ha
	.loc 1 460 0
	lwz 0,fb@l(28)
	.loc 1 452 0
	lbz 9,incFPS@l(11)
	.loc 1 460 0
	slwi 0,0,2
	lwzx 3,29,0
	.loc 1 452 0
	addi 9,9,1
	rlwinm 9,9,0,0xff
	stb 9,incFPS@l(11)
	.loc 1 460 0
	bl VIDEO_SetNextFramebuffer
	.loc 1 463 0
	bl VIDEO_Flush
	.loc 1 466 0
	lwz 0,28(1)
	lwz 28,8(1)
	lwz 29,12(1)
	mtlr 0
	addi 1,1,24
	blr
.LFE77:
	.size	glutSwapBuffers, .-glutSwapBuffers
	.align 2
	.globl GX_SetModScissor
	.type	GX_SetModScissor, @function
GX_SetModScissor:
.LFB75:
	.loc 1 427 0
.LVL17:
	mflr 0
.LCFI21:
	stwu 1,-48(1)
.LCFI22:
	stw 28,32(1)
.LCFI23:
	mr 28,5
	stw 29,36(1)
.LCFI24:
	mr 29,4
	stw 30,40(1)
.LCFI25:
	mr 30,3
	stw 31,44(1)
.LCFI26:
	mr 31,6
	stw 0,52(1)
.LCFI27:
	.loc 1 430 0
	add 29,31,29
	.loc 1 428 0
	bl computeFactor
.LVL18:
	.loc 1 430 0
	lis 9,rmode@ha
	lwz 11,rmode@l(9)
	lis 9,offset@ha
	stw 29,20(1)
	lis 10,.LC1@ha
	lhz 0,6(11)
	.loc 1 428 0
	fmr 11,1
.LVL19:
	.loc 1 430 0
	lwz 11,offset@l(9)
	lis 9,0x4330
	stw 9,16(1)
	subf 0,11,0
	lfs 0,.LC1@l(10)
	xoris 0,0,0x8000
	lfd 13,16(1)
	stw 9,8(1)
	lis 9,.LC3@ha
	stw 0,12(1)
	fsub 13,13,0
	lfs 12,.LC3@l(9)
	lis 9,.LC8@ha
	lfd 0,8(1)
	frsp 13,13
	fsub 0,0,12
	lfs 12,.LC8@l(9)
	fmuls 13,1,13
	frsp 0,0
	fsubs 0,0,13
	fcmpu 7,0,12
	cror 30,29,30
	beq- 7,.L62
.LVL20:
	fctiwz 0,0
	lis 0,0x4330
	stw 31,12(1)
	addi 11,1,24
	stw 0,8(1)
	stfiwx 0,0,11
	lfs 13,.LC1@l(10)
	lfd 0,8(1)
	lfs 12,.LC8@l(9)
	fsub 0,0,13
	lwz 4,24(1)
	fmr 1,12
.LVL21:
	frsp 0,0
	fmuls 0,11,0
	fcmpu 7,0,1
	cror 30,29,30
	beq- 7,.L64
.L67:
	fctiwz 0,0
	addi 9,1,24
	mr 3,30
	mr 5,28
	stfiwx 0,0,9
	lwz 6,24(1)
	bl GX_SetScissor
.LVL22:
	.loc 1 431 0
	lwz 0,52(1)
	lwz 28,32(1)
.LVL23:
	lwz 29,36(1)
	mtlr 0
	lwz 30,40(1)
.LVL24:
	lwz 31,44(1)
.LVL25:
	addi 1,1,48
	blr
.LVL26:
.L62:
	.loc 1 430 0
	fsub 0,0,12
	lis 0,0x4330
	stw 31,12(1)
	addi 11,1,28
	stw 0,8(1)
	fctiwz 13,0
	lfs 12,.LC8@l(9)
	lfd 0,8(1)
	fmr 1,12
.LVL27:
	stfiwx 13,0,11
	lfs 13,.LC1@l(10)
	lwz 4,28(1)
	fsub 0,0,13
	addis 4,4,0x8000
	frsp 0,0
	fmuls 0,11,0
	fcmpu 7,0,1
	cror 30,29,30
	bne+ 7,.L67
.L64:
	fsub 0,0,1
	addi 11,1,28
	mr 3,30
	mr 5,28
	fctiwz 13,0
	stfiwx 13,0,11
	lwz 6,28(1)
	addis 6,6,0x8000
	bl GX_SetScissor
.LVL28:
	.loc 1 431 0
	lwz 0,52(1)
	lwz 28,32(1)
.LVL29:
	lwz 29,36(1)
	mtlr 0
	lwz 30,40(1)
.LVL30:
	lwz 31,44(1)
.LVL31:
	addi 1,1,48
	blr
.LFE75:
	.size	GX_SetModScissor, .-GX_SetModScissor
	.align 2
	.globl GX_SetMaxScissor
	.type	GX_SetMaxScissor, @function
GX_SetMaxScissor:
.LFB76:
	.loc 1 434 0
	.loc 1 435 0
	lis 9,rmode@ha
	li 3,0
	lwz 11,rmode@l(9)
	li 4,0
	lhz 6,6(11)
	lhz 5,4(11)
	b GX_SetModScissor
.LFE76:
	.size	GX_SetMaxScissor, .-GX_SetMaxScissor
	.align 2
	.globl GX_SetModViewport
	.type	GX_SetModViewport, @function
GX_SetModViewport:
.LFB74:
	.loc 1 420 0
.LVL32:
	mflr 0
.LCFI28:
	stwu 1,-64(1)
.LCFI29:
	stfd 26,16(1)
.LCFI30:
	fmr 26,6
	stfd 27,24(1)
.LCFI31:
	fmr 27,5
	stfd 28,32(1)
.LCFI32:
	fmr 28,3
	stfd 29,40(1)
.LCFI33:
	fmr 29,1
	stfd 30,48(1)
.LCFI34:
	fmr 30,4
	stfd 31,56(1)
.LCFI35:
	fmr 31,2
	stw 0,68(1)
.LCFI36:
	.loc 1 421 0
	bl computeFactor
.LVL33:
	.loc 1 423 0
	lis 9,rmode@ha
	lwz 11,rmode@l(9)
	lis 9,offset@ha
	fadds 31,31,30
.LVL34:
	lhz 0,6(11)
	fmuls 4,1,30
.LVL35:
	lwz 11,offset@l(9)
	lis 9,0x4330
	stw 9,8(1)
	lis 9,.LC3@ha
	subf 0,11,0
	lfs 0,.LC3@l(9)
	xoris 0,0,0x8000
	fmuls 13,1,31
	stw 0,12(1)
	fmr 1,29
.LVL36:
	fmr 3,28
	lfd 2,8(1)
	fmr 5,27
	fmr 6,26
	fsub 2,2,0
	frsp 2,2
	fsubs 2,2,13
	bl GX_SetViewport
	.loc 1 424 0
	lwz 0,68(1)
	lfd 26,16(1)
.LVL37:
	lfd 27,24(1)
.LVL38:
	mtlr 0
	lfd 28,32(1)
.LVL39:
	lfd 29,40(1)
.LVL40:
	lfd 30,48(1)
.LVL41:
	lfd 31,56(1)
	addi 1,1,64
	blr
.LFE74:
	.size	GX_SetModViewport, .-GX_SetModViewport
	.align 2
	.globl glutInitWindowSize
	.type	glutInitWindowSize, @function
glutInitWindowSize:
.LFB78:
	.loc 1 468 0
.LVL42:
	stwu 1,-16(1)
.LCFI37:
	.loc 1 469 0
	xoris 3,3,0x8000
.LVL43:
	lis 0,0x4330
	xoris 4,4,0x8000
.LVL44:
	stw 3,12(1)
	lis 9,.LC3@ha
	stw 0,8(1)
	lfs 0,.LC3@l(9)
	lis 9,.LC14@ha
	lfd 3,8(1)
	stw 4,12(1)
	fsub 3,3,0
	lfs 1,.LC14@l(9)
	lfd 4,8(1)
	lis 9,.LC12@ha
	fmr 2,1
	lfs 6,.LC12@l(9)
	fsub 4,4,0
	.loc 1 470 0
	addi 1,1,16
	.loc 1 469 0
	frsp 3,3
	fmr 5,1
	frsp 4,4
	b GX_SetModViewport
.LFE78:
	.size	glutInitWindowSize, .-glutInitWindowSize
	.align 2
	.globl glutCreateWindow
	.type	glutCreateWindow, @function
glutCreateWindow:
.LFB72:
	.loc 1 403 0
.LVL45:
	mflr 0
.LCFI38:
	stwu 1,-32(1)
.LCFI39:
	.loc 1 404 0
	lis 9,rmode@ha
	lis 10,0x4330
	stw 10,16(1)
	.loc 1 403 0
	stw 0,36(1)
.LCFI40:
	stfd 31,24(1)
.LCFI41:
	.loc 1 404 0
	lwz 11,rmode@l(9)
	lhz 0,4(11)
	lhz 9,6(11)
	stw 0,20(1)
	lfd 3,16(1)
	stw 9,20(1)
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	lis 9,.LC14@ha
	lfd 4,16(1)
	lfs 1,.LC14@l(9)
	fsub 3,3,0
	fsub 4,4,0
	lis 9,.LC12@ha
	lfs 31,.LC12@l(9)
	fmr 2,1
	fmr 5,1
	fmr 6,31
	frsp 3,3
	frsp 4,4
	bl GX_SetModViewport
.LVL46:
	.loc 1 406 0
	li 3,5888
	bl glMatrixMode
	.loc 1 407 0
	bl glLoadIdentity
	.loc 1 408 0
	lis 9,.LC15@ha
	lfd 0,.LC15@l(9)
	fmr 8,31
	lis 9,.LC17@ha
	fmr 1,0
	lfs 6,.LC17@l(9)
	fmr 2,0
	stfd 0,8(1)
	fmr 3,0
	fmr 4,0
	fmr 5,0
	fmr 7,0
	bl gluLookAt
	.loc 1 410 0
	lwz 0,36(1)
	li 3,0
	lfd 31,24(1)
	mtlr 0
	addi 1,1,32
	blr
.LFE72:
	.size	glutCreateWindow, .-glutCreateWindow
	.align 2
	.globl initGlutData
	.type	initGlutData, @function
initGlutData:
.LFB67:
	.loc 1 86 0
	stwu 1,-264(1)
.LCFI42:
	mflr 0
.LCFI43:
	stw 19,204(1)
.LCFI44:
	.loc 1 89 0
	lis 19,.LC12@ha
	.loc 1 86 0
	stfd 31,256(1)
.LCFI45:
	.loc 1 89 0
	lfs 31,.LC12@l(19)
	.loc 1 86 0
	stw 0,268(1)
.LCFI46:
	.loc 1 89 0
	fmr 3,31
	.loc 1 86 0
	stw 20,208(1)
.LCFI47:
	.loc 1 89 0
	fmr 1,31
	.loc 1 86 0
	stw 21,212(1)
.LCFI48:
	.loc 1 89 0
	fmr 2,31
	.loc 1 86 0
	stw 22,216(1)
.LCFI49:
	stw 23,220(1)
.LCFI50:
	.loc 1 107 0
	li 23,8
	.loc 1 86 0
	stw 24,224(1)
.LCFI51:
	stw 25,228(1)
.LCFI52:
	stw 26,232(1)
.LCFI53:
	stw 27,236(1)
.LCFI54:
	stw 28,240(1)
.LCFI55:
	stw 29,244(1)
.LCFI56:
	stw 30,248(1)
.LCFI57:
	stw 31,252(1)
.LCFI58:
	.loc 1 89 0
	bl glColor3f
	.loc 1 90 0
	lis 9,.LC14@ha
	lfs 1,.LC14@l(9)
	fmr 2,1
	bl glTexCoord2f
	.loc 1 91 0
	lis 9,.LC14@ha
	lfs 1,.LC14@l(9)
	fmr 3,31
	fmr 2,1
	bl glNormal3f
	lis 11,.LANCHOR1@ha
	lis 9,lights+68@ha
	la 12,.LANCHOR1@l(11)
	la 10,lights+68@l(9)
	.loc 1 103 0
	lis 9,.LC21@ha
	.loc 1 95 0
	lwz 20,.LANCHOR1@l(11)
	.loc 1 107 0
	mtctr 23
	.loc 1 103 0
	lfs 0,.LC21@l(9)
	addi 31,10,-68
	.loc 1 95 0
	lwz 21,4(12)
	.loc 1 96 0
	li 0,0
	.loc 1 95 0
	lwz 22,8(12)
	.loc 1 99 0
	lwz 30,12(12)
	lwz 24,16(12)
	lwz 25,20(12)
	lwz 26,24(12)
	.loc 1 100 0
	lwz 27,28(12)
	lwz 28,32(12)
	lwz 29,36(12)
	lwz 3,40(12)
	.loc 1 101 0
	lwz 4,44(12)
	lwz 5,48(12)
	lwz 6,52(12)
	lwz 7,56(12)
	.loc 1 105 0
	lwz 8,60(12)
	lwz 11,64(12)
	lwz 9,68(12)
.L77:
	.loc 1 98 0
	li 23,0
	.loc 1 96 0
	stw 0,12(10)
	.loc 1 98 0
	stb 23,-68(10)
	.loc 1 103 0
	stfs 0,80(10)
	.loc 1 99 0
	stw 30,28(10)
	stw 24,32(10)
	stw 25,36(10)
	stw 26,40(10)
	.loc 1 100 0
	stw 27,44(10)
	stw 28,48(10)
	stw 29,52(10)
	stw 3,56(10)
	.loc 1 101 0
	stw 4,60(10)
	stw 5,64(10)
	stw 6,68(10)
	stw 7,72(10)
	.loc 1 95 0
	stw 20,0(10)
	stw 21,4(10)
	stw 22,8(10)
	.loc 1 99 0
	stw 30,32(1)
	.loc 1 95 0
	stw 20,8(1)
	stw 21,12(1)
	stw 22,16(1)
	.loc 1 99 0
	stw 24,36(1)
	stw 25,40(1)
	stw 26,44(1)
	.loc 1 100 0
	stw 27,48(1)
	stw 28,52(1)
	stw 29,56(1)
	stw 3,60(1)
	.loc 1 101 0
	stw 4,64(1)
	stw 5,68(1)
	stw 6,72(1)
	stw 7,76(1)
	.loc 1 104 0
	stw 0,76(10)
	.loc 1 105 0
	stw 8,16(10)
	stw 11,20(10)
	stw 9,24(10)
	.loc 1 107 0
	stfs 31,84(10)
	.loc 1 108 0
	stw 0,88(10)
	.loc 1 109 0
	stw 0,92(10)
	addi 10,10,164
	.loc 1 105 0
	stw 8,20(1)
	stw 11,24(1)
	stw 9,28(1)
	.loc 1 94 0
	bdnz .L77
	.loc 1 112 0
	lwz 0,72(12)
	.loc 1 115 0
	lis 9,globAmbient@ha
	.loc 1 112 0
	lwz 10,76(12)
	.loc 1 115 0
	la 11,globAmbient@l(9)
	.loc 1 112 0
	lwz 8,80(12)
	lwz 7,84(12)
	.loc 1 113 0
	lwz 6,88(12)
	lwz 5,92(12)
	lwz 4,96(12)
	lwz 3,100(12)
	.loc 1 115 0
	lwz 29,104(12)
	lwz 27,116(12)
	lwz 26,112(12)
	lwz 28,108(12)
	.loc 1 113 0
	stw 3,140(31)
	.loc 1 115 0
	stw 29,globAmbient@l(9)
	.loc 1 118 0
	lis 9,curmat@ha
	.loc 1 112 0
	stw 0,112(31)
	stw 10,116(31)
	stw 8,120(31)
	stw 7,124(31)
	.loc 1 113 0
	stw 6,128(31)
	stw 5,132(31)
	stw 4,136(31)
	.loc 1 118 0
	la 31,curmat@l(9)
	.loc 1 112 0
	stw 0,80(1)
	stw 10,84(1)
	stw 8,88(1)
	stw 7,92(1)
	.loc 1 113 0
	stw 6,96(1)
	stw 5,100(1)
	stw 4,104(1)
	stw 3,108(1)
	.loc 1 115 0
	stw 29,112(1)
	stw 28,116(1)
	stw 27,124(1)
	stw 26,120(1)
	stw 28,4(11)
	.loc 1 118 0
	lwz 0,120(12)
	lwz 10,124(12)
	lwz 8,128(12)
	lwz 7,132(12)
	.loc 1 119 0
	lwz 6,136(12)
	lwz 4,144(12)
	lwz 3,148(12)
	.loc 1 120 0
	lwz 29,152(12)
	lwz 28,156(12)
	.loc 1 119 0
	lwz 5,140(12)
	.loc 1 120 0
	lwz 25,160(12)
	lwz 24,164(12)
	.loc 1 119 0
	stw 5,20(31)
	stw 5,148(1)
	.loc 1 115 0
	stw 27,12(11)
	.loc 1 138 0
	li 27,0
	.loc 1 118 0
	stw 0,curmat@l(9)
	.loc 1 130 0
	lis 9,model_stack@ha
	.loc 1 115 0
	stw 26,8(11)
	.loc 1 130 0
	la 30,model_stack@l(9)
	.loc 1 118 0
	stw 10,4(31)
	.loc 1 124 0
	lis 9,blend_src@ha
	.loc 1 118 0
	stw 8,8(31)
	.loc 1 126 0
	lis 11,blend_op@ha
	.loc 1 118 0
	stw 7,12(31)
	.loc 1 138 0
	ori 27,27,33992
	.loc 1 119 0
	stw 6,16(31)
	stw 4,24(31)
	stw 3,28(31)
	.loc 1 118 0
	stw 0,128(1)
	.loc 1 124 0
	li 0,1
	.loc 1 118 0
	stw 10,132(1)
	stw 8,136(1)
	stw 7,140(1)
	.loc 1 119 0
	stw 6,144(1)
	stw 4,152(1)
	.loc 1 130 0
	li 4,32
	.loc 1 119 0
	stw 3,156(1)
	.loc 1 130 0
	mr 3,30
	.loc 1 120 0
	stw 29,160(1)
	stw 28,164(1)
	stw 25,168(1)
	stw 24,172(1)
	.loc 1 121 0
	lwz 6,180(12)
	lwz 10,168(12)
	lwz 8,172(12)
	lwz 7,176(12)
	stw 10,48(31)
	stw 8,52(31)
	stw 7,56(31)
	stw 6,60(31)
	.loc 1 124 0
	stb 0,blend_src@l(9)
	.loc 1 128 0
	li 0,2
	lis 9,cull_mode@ha
	.loc 1 120 0
	stw 29,32(31)
	stw 28,36(31)
	.loc 1 136 0
	lis 29,texture_stack@ha
	.loc 1 120 0
	stw 25,40(31)
	.loc 1 136 0
	la 29,texture_stack@l(29)
	.loc 1 120 0
	stw 24,44(31)
	.loc 1 143 0
	li 28,0
	.loc 1 128 0
	stb 0,cull_mode@l(9)
	.loc 1 123 0
	lis 9,blend_type@ha
	.loc 1 126 0
	stb 23,blend_op@l(11)
	.loc 1 125 0
	lis 11,blend_dst@ha
	.loc 1 123 0
	stb 23,blend_type@l(9)
	.loc 1 143 0
	ori 28,28,33985
	.loc 1 125 0
	stb 23,blend_dst@l(11)
	.loc 1 121 0
	stw 10,176(1)
	stw 8,180(1)
	stw 7,184(1)
	stw 6,188(1)
	.loc 1 130 0
	bl InitStackMtx
	.loc 1 131 0
	li 3,5888
	bl glMatrixMode
	.loc 1 132 0
	bl glLoadIdentity
	.loc 1 134 0
	lis 3,projection_stack@ha
	li 4,2
	la 3,projection_stack@l(3)
	bl InitStackPrjMtx
	.loc 1 135 0
	li 3,5889
	bl glMatrixMode
	.loc 1 136 0
	bl glLoadIdentity
	.loc 1 140 0
	li 4,2
	mr 3,29
	.loc 1 143 0
	addi 29,29,16
	.loc 1 140 0
	bl InitStackMtx
	.loc 1 141 0
	li 3,5890
	bl glMatrixMode
	.loc 1 142 0
	li 3,0
	ori 3,3,33984
	bl glActiveTextureARB
	.loc 1 143 0
	bl glLoadIdentity
.L79:
	.loc 1 140 0
	li 4,2
	mr 3,29
	bl InitStackMtx
	.loc 1 141 0
	li 3,5890
	bl glMatrixMode
	.loc 1 142 0
	mr 3,28
	.loc 1 143 0
	addi 28,28,1
	.loc 1 142 0
	bl glActiveTextureARB
	.loc 1 143 0
	bl glLoadIdentity
	.loc 1 138 0
	cmpw 7,28,27
	.loc 1 143 0
	addi 29,29,16
	.loc 1 138 0
	bne+ 7,.L79
	.loc 1 146 0
	li 3,0
	ori 3,3,33984
	bl glActiveTextureARB
	.loc 1 154 0
	lis 9,vert@ha
	.loc 1 148 0
	li 0,0
	.loc 1 154 0
	la 11,vert@l(9)
	.loc 1 148 0
	lis 8,norm@ha
	.loc 1 154 0
	stb 0,vert@l(9)
	.loc 1 149 0
	lis 9,_normalelements@ha
	.loc 1 148 0
	la 10,norm@l(8)
	.loc 1 149 0
	la 9,_normalelements@l(9)
	.loc 1 150 0
	li 6,12
	.loc 1 149 0
	stw 9,4(10)
	.loc 1 155 0
	lis 9,_vertexelements@ha
	.loc 1 151 0
	li 5,5126
	.loc 1 152 0
	li 7,3
	.loc 1 155 0
	la 9,_vertexelements@l(9)
	.loc 1 148 0
	stb 0,norm@l(8)
	li 0,8
	.loc 1 155 0
	stw 9,4(11)
	.loc 1 152 0
	stw 7,12(10)
	.loc 1 158 0
	lis 9,tex+4@ha
	.loc 1 150 0
	stb 6,8(10)
	mtctr 0
	.loc 1 151 0
	stw 5,16(10)
	.loc 1 158 0
	stw 5,16(11)
	.loc 1 156 0
	stb 6,8(11)
	.loc 1 157 0
	stw 7,12(11)
	.loc 1 158 0
	la 11,tex+4@l(9)
.L81:
	.loc 1 162 0
	li 3,0
	.loc 1 165 0
	li 29,5126
	.loc 1 163 0
	li 0,8
	.loc 1 164 0
	li 9,2
	.loc 1 163 0
	stb 0,4(11)
	.loc 1 164 0
	stw 9,8(11)
	.loc 1 162 0
	stw 3,0(11)
	.loc 1 165 0
	stw 29,12(11)
	.loc 1 166 0
	stb 3,-4(11)
	addi 11,11,20
	.loc 1 160 0
	bdnz .L81
	.loc 1 178 0
	lis 9,curmtx@ha
	.loc 1 179 0
	li 0,5888
	.loc 1 178 0
	stw 30,curmtx@l(9)
	.loc 1 179 0
	lis 9,cur_mode@ha
	stw 0,cur_mode@l(9)
	.loc 1 190 0
	li 11,2305
	lis 9,gxwinding@ha
	.loc 1 197 0
	li 0,519
	.loc 1 190 0
	stw 11,gxwinding@l(9)
	.loc 1 197 0
	lis 9,_alphatest_func@ha
	stw 0,_alphatest_func@l(9)
	.loc 1 208 0
	lis 9,scissor_test@ha
	.loc 1 172 0
	lis 5,color@ha
	.loc 1 208 0
	stb 3,scissor_test@l(9)
	.loc 1 173 0
	lis 9,_colorelements@ha
	.loc 1 172 0
	la 10,color@l(5)
	.loc 1 173 0
	la 9,_colorelements@l(9)
	.loc 1 193 0
	li 8,1
	.loc 1 173 0
	stw 9,4(10)
	.loc 1 175 0
	li 9,4
	.loc 1 199 0
	lis 11,_alphatest_dirty@ha
	.loc 1 175 0
	stw 9,12(10)
	.loc 1 181 0
	lis 9,cur_tex_client@ha
	.loc 1 199 0
	stb 8,_alphatest_dirty@l(11)
	.loc 1 181 0
	stw 3,cur_tex_client@l(9)
	.loc 1 180 0
	lis 11,cur_tex@ha
	.loc 1 186 0
	lis 9,lighting@ha
	.loc 1 180 0
	stw 3,cur_tex@l(11)
	.loc 1 186 0
	stb 3,lighting@l(9)
	.loc 1 189 0
	lis 11,gxcullfaceanabled@ha
	.loc 1 192 0
	lis 9,depthtestenabled@ha
	.loc 1 203 0
	lfs 0,.LC12@l(19)
	.loc 1 189 0
	stb 3,gxcullfaceanabled@l(11)
	.loc 1 193 0
	lis 11,depthfunction@ha
	.loc 1 192 0
	stb 3,depthtestenabled@l(9)
	.loc 1 194 0
	lis 9,depthupdate@ha
	.loc 1 202 0
	lis 4,_clearcolor@ha
	.loc 1 183 0
	li 6,0
	.loc 1 174 0
	li 0,16
	.loc 1 193 0
	stw 8,depthfunction@l(11)
	.loc 1 194 0
	stb 8,depthupdate@l(9)
	.loc 1 196 0
	lis 11,_alphatest_enabled@ha
	.loc 1 198 0
	lis 9,_alphatest_ref@ha
	.loc 1 202 0
	la 7,_clearcolor@l(4)
	.loc 1 174 0
	stb 0,8(10)
	.loc 1 212 0
	li 23,4
	.loc 1 196 0
	stb 3,_alphatest_enabled@l(11)
	.loc 1 202 0
	li 0,-1
	.loc 1 198 0
	stw 6,_alphatest_ref@l(9)
	.loc 1 206 0
	lis 11,cur_state@ha
	.loc 1 203 0
	lis 9,_cleardepth@ha
	.loc 1 212 0
	fmr 13,0
	.loc 1 203 0
	stfs 0,_cleardepth@l(9)
	.loc 1 212 0
	mtctr 23
	.loc 1 208 0
	lis 9,Trans+4@ha
	.loc 1 176 0
	stw 29,16(10)
	.loc 1 172 0
	stb 3,color@l(5)
	.loc 1 208 0
	la 9,Trans+4@l(9)
	.loc 1 183 0
	stw 6,64(31)
	.loc 1 202 0
	stb 0,3(7)
	stb 3,1(7)
	stb 3,_clearcolor@l(4)
	.loc 1 206 0
	stw 3,cur_state@l(11)
	.loc 1 202 0
	stb 3,2(7)
.L83:
	.loc 1 212 0
	stw 6,0(9)
	stfs 13,-4(9)
	addi 9,9,8
	.loc 1 210 0
	bdnz .L83
	.loc 1 218 0
	li 0,1029
	lis 9,read_mode@ha
	stw 0,read_mode@l(9)
	.loc 1 221 0
	li 11,5634
	lis 9,copy_material@ha
	.loc 1 224 0
	li 0,4
	.loc 1 221 0
	stw 11,copy_material@l(9)
	.loc 1 225 0
	lis 11,fog_startz@ha
	.loc 1 224 0
	lis 9,fog_mode@ha
	.loc 1 225 0
	stw 6,fog_startz@l(11)
	.loc 1 227 0
	lis 11,.LC22@ha
	.loc 1 228 0
	lis 7,fog_color@ha
	.loc 1 224 0
	stb 0,fog_mode@l(9)
	.loc 1 226 0
	lis 9,fog_endz@ha
	.loc 1 227 0
	lfs 0,.LC22@l(11)
	.loc 1 220 0
	li 10,0
	.loc 1 228 0
	li 29,1
	la 8,fog_color@l(7)
	.loc 1 226 0
	stfs 13,fog_endz@l(9)
	.loc 1 227 0
	lis 9,fog_density@ha
	stfs 0,fog_density@l(9)
	.loc 1 216 0
	lis 11,normFar@ha
	.loc 1 215 0
	lis 9,normNear@ha
	.loc 1 228 0
	stb 29,3(8)
	stb 10,1(8)
	stb 10,2(8)
	.loc 1 215 0
	stw 6,normNear@l(9)
	.loc 1 220 0
	lis 9,copy_mat_enabled@ha
	.loc 1 216 0
	stfs 13,normFar@l(11)
	.loc 1 223 0
	lis 11,fog_enable@ha
	.loc 1 220 0
	stb 10,copy_mat_enabled@l(9)
	.loc 1 223 0
	stb 10,fog_enable@l(11)
	.loc 1 228 0
	stb 10,fog_color@l(7)
	.loc 1 230 0
	bl _glInitStacks
	.loc 1 234 0
	lis 11,color_write_mask@ha
	la 9,color_write_mask@l(11)
	stb 29,color_write_mask@l(11)
	stb 29,3(9)
	stb 29,1(9)
	stb 29,2(9)
	.loc 1 240 0
	lwz 0,268(1)
	lwz 19,204(1)
	lwz 20,208(1)
	mtlr 0
	lwz 21,212(1)
	lwz 22,216(1)
	lwz 23,220(1)
	lwz 24,224(1)
	lwz 25,228(1)
	lwz 26,232(1)
	lwz 27,236(1)
	lwz 28,240(1)
	lwz 29,244(1)
	lwz 30,248(1)
	lwz 31,252(1)
	lfd 31,256(1)
	addi 1,1,264
	blr
.LFE67:
	.size	initGlutData, .-initGlutData
	.align 2
	.globl glutInitDisplayMode
	.type	glutInitDisplayMode, @function
glutInitDisplayMode:
.LFB71:
	.loc 1 266 0
.LVL47:
	mflr 0
.LCFI59:
	stwu 1,-48(1)
.LCFI60:
	stw 26,24(1)
.LCFI61:
	.loc 1 288 0
	lis 26,fb@ha
	.loc 1 266 0
	stw 0,52(1)
.LCFI62:
	stw 29,36(1)
.LCFI63:
	.loc 1 280 0
	lis 29,.LANCHOR0@ha
	.loc 1 266 0
	stw 30,40(1)
.LCFI64:
	.loc 1 280 0
	la 30,.LANCHOR0@l(29)
	.loc 1 266 0
	stw 31,44(1)
.LCFI65:
	.loc 1 270 0
	lis 31,rmode@ha
	.loc 1 266 0
	stw 27,28(1)
.LCFI66:
	stw 28,32(1)
.LCFI67:
	.loc 1 268 0
	bl VIDEO_Init
.LVL48:
	.loc 1 270 0
	li 3,0
	bl VIDEO_GetPreferredMode
	.loc 1 272 0
	li 9,660
	.loc 1 273 0
	lhz 11,10(3)
	.loc 1 275 0
	li 0,480
	.loc 1 272 0
	sth 9,14(3)
	.loc 1 273 0
	addi 11,11,-10
	.loc 1 275 0
	sth 0,6(3)
	.loc 1 273 0
	sth 11,10(3)
	.loc 1 270 0
	stw 3,rmode@l(31)
	.loc 1 277 0
	bl initGlutData
	.loc 1 280 0
	lwz 3,rmode@l(31)
	bl SYS_AllocateFramebuffer
	addis 0,3,0x4000
	.loc 1 281 0
	lwz 3,rmode@l(31)
	.loc 1 280 0
	stw 0,.LANCHOR0@l(29)
	.loc 1 281 0
	bl SYS_AllocateFramebuffer
	.loc 1 282 0
	lwz 9,rmode@l(31)
	.loc 1 281 0
	addis 0,3,0x4000
	.loc 1 282 0
	lwz 3,.LANCHOR0@l(29)
	lhz 6,4(9)
	li 4,20
	lhz 7,8(9)
	li 5,20
	slwi 8,6,1
	.loc 1 281 0
	stw 0,4(30)
	.loc 1 282 0
	bl CON_Init
	.loc 1 284 0
	lwz 4,.LANCHOR0@l(29)
	lwz 3,rmode@l(31)
	li 5,0
	bl VIDEO_ClearFrameBuffer
	.loc 1 285 0
	lwz 4,4(30)
	lwz 3,rmode@l(31)
	li 5,0
	bl VIDEO_ClearFrameBuffer
	.loc 1 287 0
	lwz 3,rmode@l(31)
	bl VIDEO_Configure
	.loc 1 288 0
	lwz 0,fb@l(26)
	slwi 0,0,2
	lwzx 3,30,0
	bl VIDEO_SetNextFramebuffer
	.loc 1 289 0
	li 3,0
	bl VIDEO_SetBlack
	.loc 1 290 0
	bl VIDEO_Flush
	.loc 1 291 0
	bl VIDEO_WaitVSync
	.loc 1 292 0
	lwz 9,rmode@l(31)
	lwz 0,0(9)
	andi. 9,0,1
	bne- 0,.L111
	.loc 1 297 0
	lis 9,_console_enabled@ha
	lbz 0,_console_enabled@l(9)
	cmpwi 7,0,0
	bne- 7,.L112
.L97:
	.loc 1 309 0
	lis 4,0x8
	li 3,32
	bl memalign
	.loc 1 310 0
	lis 5,0x8
	.loc 1 309 0
	mr 29,3
.LVL49:
	.loc 1 310 0
	li 4,0
	bl memset
	.loc 1 312 0
	lis 4,0x8
	mr 3,29
	.loc 1 322 0
	lis 28,scissorInfo@ha
	.loc 1 312 0
	bl GX_Init
	.loc 1 315 0
	lwz 11,rmode@l(31)
	lis 10,0x4330
	lhz 0,4(11)
	stw 10,8(1)
	stw 0,12(1)
	lhz 9,6(11)
	lfd 3,8(1)
	stw 9,12(1)
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	lis 9,.LC14@ha
	lfd 4,8(1)
	fsub 3,3,0
	lfs 1,.LC14@l(9)
	fsub 4,4,0
	lis 9,.LC12@ha
	fmr 2,1
	lfs 6,.LC12@l(9)
	frsp 3,3
	frsp 4,4
	fmr 5,1
	bl GX_SetViewport
	.loc 1 316 0
	lwz 9,rmode@l(31)
	lhz 4,8(9)
	lhz 3,6(9)
	bl GX_GetYScaleFactor
	.loc 1 317 0
	bl GX_SetDispCopyYScale
	.loc 1 319 0
	lwz 9,rmode@l(31)
	.loc 1 317 0
	mr 27,3
.LVL50:
	.loc 1 319 0
	li 4,0
	lhz 6,6(9)
	li 3,0
	lhz 5,4(9)
	bl GX_SetScissor
	.loc 1 320 0
	lwz 9,rmode@l(31)
	.loc 1 323 0
	lis 11,viewPort@ha
	.loc 1 322 0
	li 0,0
	.loc 1 320 0
	lhz 7,6(9)
	.loc 1 323 0
	la 8,viewPort@l(11)
	.loc 1 321 0
	lhz 29,4(9)
.LVL51:
	.loc 1 322 0
	la 10,scissorInfo@l(28)
	stw 0,4(10)
	.loc 1 325 0
	mr 6,7
	.loc 1 323 0
	stw 0,4(8)
	.loc 1 325 0
	mr 5,29
	.loc 1 322 0
	stw 7,12(10)
	.loc 1 320 0
	lis 9,fb_max_height@ha
	.loc 1 322 0
	stw 29,8(10)
	.loc 1 325 0
	li 3,0
	.loc 1 323 0
	stw 7,12(8)
	.loc 1 325 0
	li 4,0
	.loc 1 323 0
	stw 29,8(8)
	stw 0,viewPort@l(11)
	.loc 1 321 0
	lis 11,fb_max_width@ha
	.loc 1 320 0
	stw 7,fb_max_height@l(9)
	.loc 1 321 0
	stw 29,fb_max_width@l(11)
	.loc 1 322 0
	stw 0,scissorInfo@l(28)
	.loc 1 325 0
	bl GX_SetDispCopySrc
	.loc 1 326 0
	lwz 9,rmode@l(31)
	rlwinm 4,27,0,0xffff
.LVL52:
	lhz 3,4(9)
	bl GX_SetDispCopyDst
.LVL53:
	.loc 1 327 0
	lwz 4,rmode@l(31)
	li 5,1
	lbz 3,25(4)
	addi 6,4,50
	addi 4,4,26
	bl GX_SetCopyFilter
	.loc 1 328 0
	lwz 9,rmode@l(31)
	lhz 4,8(9)
	lhz 0,16(9)
	slwi 4,4,1
	lbz 3,24(9)
	xor 4,0,4
	cntlzw 4,4
	srwi 4,4,5
	bl GX_SetFieldMode
	.loc 1 330 0
	lwz 9,rmode@l(31)
	lbz 0,25(9)
	cmpwi 7,0,0
	beq- 7,.L99
	.loc 1 331 0
	li 3,2
	li 4,0
	bl GX_SetPixelFmt
.L101:
	.loc 1 337 0
	addi 29,1,16
	.loc 1 335 0
	li 28,0
	.loc 1 337 0
	mr 3,29
	li 4,0
	stw 28,16(1)
	bl GX_SetCopyClear
	.loc 1 338 0
	lwz 0,fb@l(26)
	li 4,1
	.loc 1 368 0
	li 27,1
.LVL54:
	.loc 1 338 0
	slwi 0,0,2
	lwzx 3,30,0
	bl GX_CopyDisp
	.loc 1 339 0
	lis 4,0xff
	mr 3,29
	ori 4,4,65535
	stw 28,16(1)
	bl GX_SetCopyClear
	.loc 1 340 0
	lwz 0,fb@l(26)
	li 4,1
	slwi 0,0,2
	lwzx 3,30,0
	bl GX_CopyDisp
	.loc 1 341 0
	lwz 0,fb@l(26)
	li 4,1
	slwi 0,0,2
	lwzx 3,30,0
	bl GX_CopyDisp
	.loc 1 342 0
	li 3,0
	bl GX_SetDispCopyGamma
	.loc 1 351 0
	li 3,0
	li 4,9
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 352 0
	li 3,0
	li 4,10
	li 5,0
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 353 0
	li 5,1
	li 6,5
	li 7,0
	li 3,0
	li 4,11
	bl GX_SetVtxAttrFmt
	.loc 1 358 0
	bl GX_ClearVtxDesc
	.loc 1 359 0
	li 3,9
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 360 0
	li 3,10
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 361 0
	li 3,11
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 362 0
	li 4,1
	li 3,13
	bl GX_SetVtxDesc
	.loc 1 368 0
	li 3,0
	bl incTexDesc
	li 5,1
	mr 4,3
	li 6,4
	li 3,0
	li 7,0
	bl GX_SetVtxAttrFmt
.L102:
	rlwinm 3,27,0,0xff
.LVL55:
	bl incTexDesc
.LVL56:
	li 5,1
	mr 4,3
	li 6,4
	li 3,0
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 366 0
	cmpwi 7,27,7
.LVL57:
	addi 27,27,1
	bne+ 7,.L102
	.loc 1 371 0
	li 3,9
	li 4,0
	li 5,0
	.loc 1 376 0
	li 29,1
.LVL58:
	.loc 1 371 0
	bl GX_SetArray
	.loc 1 372 0
	li 3,10
	li 4,0
	li 5,0
	bl GX_SetArray
	.loc 1 373 0
	li 4,0
	li 5,0
	li 3,11
	bl GX_SetArray
	.loc 1 376 0
	li 3,0
	bl incTexDesc
	li 4,0
	li 5,0
	bl GX_SetArray
.L104:
	rlwinm 3,29,0,0xff
.LVL59:
	bl incTexDesc
.LVL60:
	li 4,0
	li 5,0
	bl GX_SetArray
	.loc 1 374 0
	cmpwi 7,29,7
.LVL61:
	addi 29,29,1
	bne+ 7,.L104
.LVL62:
	.loc 1 381 0
	li 4,1
	li 5,4
	li 6,60
	li 3,0
	bl GX_SetTexCoordGen
	.loc 1 383 0
	li 3,1
	bl GX_SetNumChans
	.loc 1 385 0
	li 3,1
	bl GX_SetNumTexGens
	.loc 1 386 0
	bl GX_InvalidateTexAll
	.loc 1 388 0
	li 5,255
	li 6,4
	li 3,0
	li 4,255
	bl GX_SetTevOrder
	.loc 1 389 0
	li 4,4
	li 3,0
	bl GX_SetTevOp
	.loc 1 392 0
	li 3,1
	bl GX_SetAlphaUpdate
	.loc 1 394 0
	li 3,0
	bl GX_SetCullMode
	.loc 1 396 0
	bl GX_DrawDone
	.loc 1 399 0
	bl ResetArrays
	.loc 1 401 0
	lwz 0,52(1)
	lwz 26,24(1)
	lwz 27,28(1)
	mtlr 0
	lwz 28,32(1)
	lwz 29,36(1)
.LVL63:
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	blr
.LVL64:
.L99:
	.loc 1 333 0
	li 3,1
	li 4,0
	bl GX_SetPixelFmt
	b .L101
.LVL65:
.L111:
	.loc 1 292 0
	bl VIDEO_WaitVSync
	.loc 1 297 0
	lis 9,_console_enabled@ha
	lbz 0,_console_enabled@l(9)
	cmpwi 7,0,0
	beq+ 7,.L97
.L112:
	.loc 1 299 0
	bl ShowConsole
	b .L97
.LFE71:
	.size	glutInitDisplayMode, .-glutInitDisplayMode
	.align 2
	.globl glutInit
	.type	glutInit, @function
glutInit:
.LFB66:
	.loc 1 67 0
.LVL66:
	mflr 0
.LCFI68:
	stwu 1,-8(1)
.LCFI69:
	.loc 1 77 0
	lis 9,.LC85@ha
	lis 11,__glutProgramName@ha
	la 9,.LC85@l(9)
	.loc 1 67 0
	stw 0,12(1)
.LCFI70:
	.loc 1 77 0
	stw 9,__glutProgramName@l(11)
	.loc 1 79 0
	bl initTextures
.LVL67:
	.loc 1 80 0
	bl initCalllist
	.loc 1 81 0
	bl initTextureSlots
	.loc 1 83 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE66:
	.size	glutInit, .-glutInit
	.globl __glutProgramName
	.globl fb
	.globl _console_enabled
	.globl _console_inited
	.globl offset
	.globl FPS
	.globl incFPS
	.globl displayfunc
	.globl idlefunc
	.comm	_tempcolorelement,16,4
	.comm	_tempnormalelement,12,4
	.comm	_temptexcoordelement,64,4
	.comm	norm,20,4
	.comm	vert,20,4
	.comm	tex,160,4
	.comm	color,20,4
	.comm	_normalelements,12000,32
	.comm	_vertexelements,12000,32
	.comm	_texcoordelements,64000,32
	.comm	_colorelements,16000,32
	.comm	vert_i,4,4
	.comm	_type,4,4
	.comm	_GLtype,4,4
	.comm	cur_tex,4,4
	.comm	cur_tex_client,4,4
	.comm	depthtestenabled,1,1
	.comm	depthupdate,1,1
	.comm	depthfunction,4,4
	.comm	_cleardepth,4,4
	.comm	model_stack,16,4
	.comm	projection_stack,16,4
	.comm	texture_stack,128,4
	.comm	curmtx,4,4
	.comm	cur_mode,4,4
	.comm	lights,1312,4
	.comm	globAmbient,16,4
	.comm	curmat,68,4
	.comm	gxcullfaceanabled,1,1
	.comm	gxwinding,4,4
	.comm	lighting,1,1
	.comm	blend_type,1,1
	.comm	blend_src,1,1
	.comm	blend_dst,1,1
	.comm	blend_op,1,1
	.comm	cull_mode,1,1
	.comm	cur_state,4,4
	.comm	fb_max_height,4,4
	.comm	fb_max_width,4,4
	.comm	scissor_test,1,1
	.comm	scissorInfo,16,4
	.comm	viewPort,16,4
	.comm	normNear,4,4
	.comm	normFar,4,4
	.comm	line_width,4,4
	.comm	point_size,4,4
	.comm	pack,20,4
	.comm	unpack,20,4
	.comm	color_write_mask,4,4
	.comm	copy_mat_enabled,1,1
	.comm	copy_material,4,4
	.comm	_clearcolor,4,1
	.comm	Trans,32,4
	.comm	fog_enable,1,1
	.comm	fog_mode,1,1
	.comm	fog_startz,4,4
	.comm	fog_endz,4,4
	.comm	fog_density,4,4
	.comm	fog_color,4,1
	.comm	glTexEnvs,864,4
	.comm	read_mode,4,4
	.comm	call_offset,4,4
	.comm	rmode,4,4
	.comm	watchdog,4,4
	.comm	count,1,1
	.comm	kill,1,1
	.section	.rodata
	.align 2
	.set	.LANCHOR1,. + 0
	.type	C.2.15155, @object
	.size	C.2.15155, 12
C.2.15155:
	.long	0
	.long	0
	.long	1065353216
	.type	C.3.15156, @object
	.size	C.3.15156, 16
C.3.15156:
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.type	C.4.15157, @object
	.size	C.4.15157, 16
C.4.15157:
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.type	C.5.15158, @object
	.size	C.5.15158, 16
C.5.15158:
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.type	C.6.15159, @object
	.size	C.6.15159, 12
C.6.15159:
	.long	0
	.long	0
	.long	-1082130432
	.type	C.7.15160, @object
	.size	C.7.15160, 16
C.7.15160:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.type	C.8.15161, @object
	.size	C.8.15161, 16
C.8.15161:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.type	C.9.15162, @object
	.size	C.9.15162, 16
C.9.15162:
	.long	1045220557
	.long	1045220557
	.long	1045220557
	.long	1065353216
	.type	C.10.15163, @object
	.size	C.10.15163, 16
C.10.15163:
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.type	C.11.15164, @object
	.size	C.11.15164, 16
C.11.15164:
	.long	1045220557
	.long	1045220557
	.long	1045220557
	.long	1065353216
	.type	C.12.15165, @object
	.size	C.12.15165, 16
C.12.15165:
	.long	1061997773
	.long	1061997773
	.long	1061997773
	.long	1065353216
	.type	C.13.15166, @object
	.size	C.13.15166, 16
C.13.15166:
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1501560832
.LC3:
	.4byte	1501560836
.LC8:
	.4byte	1325400064
.LC12:
	.4byte	1065353216
.LC14:
	.4byte	0
.LC17:
	.4byte	-1082130432
.LC21:
	.4byte	1127481344
.LC22:
	.4byte	1085370904
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC15:
	.4byte	0
	.4byte	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC6:
	.string	"%d\n"
.LC85:
	.string	"test"
	.section	.sbss,"aw",@nobits
	.align 2
	.type	__glutProgramName, @object
	.size	__glutProgramName, 4
__glutProgramName:
	.zero	4
	.type	fb, @object
	.size	fb, 4
fb:
	.zero	4
	.type	_console_enabled, @object
	.size	_console_enabled, 1
_console_enabled:
	.zero	1
	.type	_console_inited, @object
	.size	_console_inited, 1
_console_inited:
	.zero	1
	.zero	2
	.type	offset, @object
	.size	offset, 4
offset:
	.zero	4
	.type	FPS, @object
	.size	FPS, 1
FPS:
	.zero	1
	.type	incFPS, @object
	.size	incFPS, 1
incFPS:
	.zero	1
	.zero	2
	.type	displayfunc, @object
	.size	displayfunc, 4
displayfunc:
	.zero	4
	.type	idlefunc, @object
	.size	idlefunc, 4
idlefunc:
	.zero	4
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	frameBuffer, @object
	.size	frameBuffer, 8
frameBuffer:
	.zero	8
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.byte	0x41
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.align 2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x4
	.4byte	.LCFI0-.LFB73
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.byte	0x4
	.4byte	.LCFI1-.LFB85
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI3-.LCFI1
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI5-.LCFI3
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.byte	0x4
	.4byte	.LCFI8-.LFB84
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI11-.LCFI8
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x4
	.4byte	.LCFI13-.LFB82
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x4
	.4byte	.LCFI16-.LFB77
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI18-.LCFI16
	.byte	0x9c
	.uleb128 0x4
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x9d
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x4
	.4byte	.LCFI22-.LFB75
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0x9c
	.uleb128 0x4
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0x9d
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0x9f
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.align 2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x4
	.4byte	.LCFI29-.LFB74
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xba
	.uleb128 0xc
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0xbb
	.uleb128 0xa
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0xbc
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0xbd
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xbf
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.byte	0x4
	.4byte	.LCFI37-.LFB78
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI39-.LFB72
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI41-.LCFI39
	.byte	0xbf
	.uleb128 0x2
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x4
	.4byte	.LCFI42-.LFB67
	.byte	0xe
	.uleb128 0x108
	.byte	0x4
	.4byte	.LCFI44-.LCFI42
	.byte	0x93
	.uleb128 0xf
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI45-.LCFI44
	.byte	0xbf
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI50-.LCFI45
	.byte	0x97
	.uleb128 0xb
	.byte	0x96
	.uleb128 0xc
	.byte	0x95
	.uleb128 0xd
	.byte	0x94
	.uleb128 0xe
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI58-.LCFI50
	.byte	0x9f
	.uleb128 0x3
	.byte	0x9e
	.uleb128 0x4
	.byte	0x9d
	.uleb128 0x5
	.byte	0x9c
	.uleb128 0x6
	.byte	0x9b
	.uleb128 0x7
	.byte	0x9a
	.uleb128 0x8
	.byte	0x99
	.uleb128 0x9
	.byte	0x98
	.uleb128 0xa
	.align 2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x4
	.4byte	.LCFI60-.LFB71
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0x9a
	.uleb128 0x6
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI63-.LCFI61
	.byte	0x9d
	.uleb128 0x3
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI64-.LCFI63
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI65-.LCFI64
	.byte	0x9f
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI67-.LCFI65
	.byte	0x9c
	.uleb128 0x4
	.byte	0x9b
	.uleb128 0x5
	.align 2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI69-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE44:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST3:
	.4byte	.LFB73-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LFB85-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE85-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LFB84-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13-.Ltext0
	.4byte	.LFE84-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LFB82-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LFB77-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB75-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LFB74-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI29-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x26
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LFB78-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI37-.Ltext0
	.4byte	.LFE78-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LFB72-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LFB67-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI42-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 264
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI60-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI60-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LFB66-.Ltext0
	.4byte	.LCFI69-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI69-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stddef.h"
	.file 3 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/../../../../powerpc-gekko/include/sys/types.h"
	.file 4 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 5 "c:/utils/devkitPro/libogc/include/ogc/gx_struct.h"
	.file 6 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 7 "c:/utils/devkitPro/libogc/include/ogc/lwp.h"
	.file 8 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 9 "c:/utils/devkitPro/libogc/include/ogc/system.h"
	.file 10 "d:/Data/Nintendo/DoomGX/gl2gx/include/GL/gl.h"
	.file 11 "d:/Data/Nintendo/DoomGX/gl2gx/source/include/glint.h"
	.file 12 "d:/Data/Nintendo/DoomGX/gl2gx/source/include/mat_stack.h"
	.section	.debug_info
	.4byte	0x1334
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF237
	.byte	0x1
	.4byte	.LASF238
	.4byte	.LASF239
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x2
	.byte	0xd6
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x8
	.byte	0x4
	.4byte	0x74
	.uleb128 0x8
	.byte	0x4
	.4byte	0x82
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x8
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x9
	.4byte	0x82
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x6d
	.4byte	0x94
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x8
	.byte	0x3
	.byte	0x72
	.4byte	0xcf
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x3
	.byte	0x73
	.4byte	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x3
	.byte	0x74
	.4byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF16
	.uleb128 0xc
	.string	"u8"
	.byte	0x4
	.byte	0xf
	.4byte	0x3a
	.uleb128 0xc
	.string	"u16"
	.byte	0x4
	.byte	0x10
	.4byte	0x41
	.uleb128 0xc
	.string	"u32"
	.byte	0x4
	.byte	0x11
	.4byte	0x30
	.uleb128 0xc
	.string	"s32"
	.byte	0x4
	.byte	0x16
	.4byte	0x58
	.uleb128 0xd
	.4byte	0x3a
	.uleb128 0xc
	.string	"f32"
	.byte	0x4
	.byte	0x29
	.4byte	0xd6
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x35
	.4byte	0xe4
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.byte	0x36
	.4byte	0x13f
	.uleb128 0xf
	.4byte	.LASF18
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF19
	.sleb128 1
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7c
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x3c
	.byte	0x5
	.byte	0x3a
	.4byte	0x207
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0x3b
	.4byte	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x3c
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x3d
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x3e
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0x3f
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0x40
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x5
	.byte	0x41
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x42
	.4byte	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x43
	.4byte	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x44
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.string	"aa"
	.byte	0x5
	.byte	0x45
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x46
	.4byte	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x47
	.4byte	0x21d
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0x0
	.uleb128 0x11
	.4byte	0xe4
	.4byte	0x21d
	.uleb128 0x12
	.4byte	0x37
	.byte	0xb
	.uleb128 0x12
	.4byte	0x37
	.byte	0x1
	.byte	0x0
	.uleb128 0x11
	.4byte	0xe4
	.4byte	0x22d
	.uleb128 0x12
	.4byte	0x37
	.byte	0x6
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x5
	.byte	0x48
	.4byte	0x145
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0xc
	.byte	0x6
	.byte	0x27
	.4byte	0x269
	.uleb128 0x10
	.string	"x"
	.byte	0x6
	.byte	0x28
	.4byte	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"y"
	.byte	0x6
	.byte	0x28
	.4byte	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"z"
	.byte	0x6
	.byte	0x28
	.4byte	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x6
	.byte	0x29
	.4byte	0x238
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x7
	.byte	0x3e
	.4byte	0xf9
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x4
	.byte	0x8
	.2byte	0x3b8
	.4byte	0x2c1
	.uleb128 0x14
	.string	"r"
	.byte	0x8
	.2byte	0x3b9
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x14
	.string	"g"
	.byte	0x8
	.2byte	0x3ba
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x14
	.string	"b"
	.byte	0x8
	.2byte	0x3bb
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x14
	.string	"a"
	.byte	0x8
	.2byte	0x3bc
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF39
	.byte	0x8
	.2byte	0x3bd
	.4byte	0x27f
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0x40
	.byte	0x8
	.2byte	0x3d6
	.4byte	0x2ea
	.uleb128 0x14
	.string	"val"
	.byte	0x8
	.2byte	0x3d7
	.4byte	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x11
	.4byte	0xf9
	.4byte	0x2fa
	.uleb128 0x12
	.4byte	0x37
	.byte	0xf
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF41
	.byte	0x8
	.2byte	0x3d8
	.4byte	0x2cd
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x9
	.byte	0x86
	.4byte	0xf9
	.uleb128 0x8
	.byte	0x4
	.4byte	0x317
	.uleb128 0x16
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf9
	.uleb128 0x8
	.byte	0x4
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0xa
	.byte	0x93
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0xa
	.byte	0x94
	.4byte	0x3a
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0xa
	.byte	0x99
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0xa
	.byte	0x9c
	.4byte	0x30
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0xa
	.byte	0x9d
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0xa
	.byte	0x9f
	.4byte	0xd6
	.uleb128 0x17
	.byte	0x10
	.byte	0xb
	.byte	0x15
	.4byte	0x387
	.uleb128 0x10
	.string	"v"
	.byte	0xb
	.byte	0x16
	.4byte	0x269
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"w"
	.byte	0xb
	.byte	0x17
	.4byte	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0xb
	.byte	0x18
	.4byte	0x366
	.uleb128 0x17
	.byte	0x8
	.byte	0xb
	.byte	0x1b
	.4byte	0x3b3
	.uleb128 0x10
	.string	"s"
	.byte	0xb
	.byte	0x1c
	.4byte	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"t"
	.byte	0xb
	.byte	0x1d
	.4byte	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0xb
	.byte	0x1e
	.4byte	0x392
	.uleb128 0x17
	.byte	0x10
	.byte	0xb
	.byte	0x21
	.4byte	0x3f7
	.uleb128 0x10
	.string	"r"
	.byte	0xb
	.byte	0x22
	.4byte	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"g"
	.byte	0xb
	.byte	0x23
	.4byte	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"b"
	.byte	0xb
	.byte	0x24
	.4byte	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"a"
	.byte	0xb
	.byte	0x25
	.4byte	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0xb
	.byte	0x26
	.4byte	0x3be
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x14
	.byte	0xb
	.byte	0x42
	.4byte	0x453
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0xb
	.byte	0x43
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"p"
	.byte	0xb
	.byte	0x44
	.4byte	0x311
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0xb
	.byte	0x45
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0xb
	.byte	0x46
	.4byte	0x33a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0xb
	.byte	0x47
	.4byte	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0xb
	.byte	0x48
	.4byte	0x402
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x10
	.byte	0xc
	.byte	0xd
	.4byte	0x4a3
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0xc
	.byte	0xe
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0xc
	.byte	0xf
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0xc
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"cur"
	.byte	0xc
	.byte	0x11
	.4byte	0x25
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0xc
	.byte	0x12
	.4byte	0x45e
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0xa4
	.byte	0xb
	.byte	0x83
	.4byte	0x569
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0xb
	.byte	0x84
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"obj"
	.byte	0xb
	.byte	0x86
	.4byte	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"pos"
	.byte	0xb
	.byte	0x88
	.4byte	0x387
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0xb
	.byte	0x8a
	.4byte	0x269
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0xb
	.byte	0x8c
	.4byte	0x3f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0xb
	.byte	0x8d
	.4byte	0x3f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0xb
	.byte	0x8e
	.4byte	0x3f7
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0xb
	.byte	0x90
	.4byte	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0xb
	.byte	0x91
	.4byte	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0xb
	.byte	0x92
	.4byte	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0xb
	.byte	0x93
	.4byte	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0xb
	.byte	0x94
	.4byte	0xd6
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0xb
	.byte	0x95
	.4byte	0x4ae
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x44
	.byte	0xb
	.byte	0xa0
	.4byte	0x5c7
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0xb
	.byte	0xa1
	.4byte	0x3f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0xb
	.byte	0xa2
	.4byte	0x3f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0xb
	.byte	0xa3
	.4byte	0x3f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0xb
	.byte	0xa4
	.4byte	0x3f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0xb
	.byte	0xa5
	.4byte	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0xb
	.byte	0xa6
	.4byte	0x574
	.uleb128 0x18
	.4byte	.LASF240
	.byte	0x4
	.byte	0xb
	.byte	0xbf
	.4byte	0x5f1
	.uleb128 0xf
	.4byte	.LASF78
	.sleb128 0
	.uleb128 0xf
	.4byte	.LASF79
	.sleb128 1
	.uleb128 0xf
	.4byte	.LASF80
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0xb
	.byte	0xc3
	.4byte	0x5d2
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0x10
	.byte	0xb
	.byte	0xe8
	.4byte	0x63d
	.uleb128 0x10
	.string	"x"
	.byte	0xb
	.byte	0xe9
	.4byte	0x33a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"y"
	.byte	0xb
	.byte	0xea
	.4byte	0x33a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF83
	.byte	0xb
	.byte	0xeb
	.4byte	0x350
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF84
	.byte	0xb
	.byte	0xec
	.4byte	0x350
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0xb
	.byte	0xed
	.4byte	0x5fc
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0x14
	.byte	0xb
	.byte	0xfb
	.4byte	0x6ab
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0xb
	.byte	0xfc
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0xb
	.byte	0xfd
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0xb
	.byte	0xfe
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0xb
	.byte	0xff
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.4byte	.LASF90
	.byte	0xb
	.2byte	0x100
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.4byte	.LASF91
	.byte	0xb
	.2byte	0x101
	.4byte	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0xb
	.2byte	0x102
	.4byte	0x648
	.uleb128 0x13
	.4byte	.LASF93
	.byte	0x8
	.byte	0xb
	.2byte	0x117
	.4byte	0x6e3
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0xb
	.2byte	0x118
	.4byte	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0xb
	.2byte	0x119
	.4byte	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0xb
	.2byte	0x11a
	.4byte	0x6b7
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0x6c
	.byte	0xb
	.2byte	0x127
	.4byte	0x847
	.uleb128 0x19
	.4byte	.LASF63
	.byte	0xb
	.2byte	0x128
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0xb
	.2byte	0x12a
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0xb
	.2byte	0x12b
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x19
	.4byte	.LASF100
	.byte	0xb
	.2byte	0x12c
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0xb
	.2byte	0x12d
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x19
	.4byte	.LASF102
	.byte	0xb
	.2byte	0x12e
	.4byte	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x19
	.4byte	.LASF103
	.byte	0xb
	.2byte	0x12f
	.4byte	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x19
	.4byte	.LASF104
	.byte	0xb
	.2byte	0x130
	.4byte	0x114
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0xb
	.2byte	0x131
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x19
	.4byte	.LASF106
	.byte	0xb
	.2byte	0x132
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x19
	.4byte	.LASF107
	.byte	0xb
	.2byte	0x133
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0xb
	.2byte	0x135
	.4byte	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x19
	.4byte	.LASF109
	.byte	0xb
	.2byte	0x137
	.4byte	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x19
	.4byte	.LASF110
	.byte	0xb
	.2byte	0x138
	.4byte	0x324
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x19
	.4byte	.LASF111
	.byte	0xb
	.2byte	0x13a
	.4byte	0x847
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x19
	.4byte	.LASF112
	.byte	0xb
	.2byte	0x13b
	.4byte	0x847
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x19
	.4byte	.LASF113
	.byte	0xb
	.2byte	0x13c
	.4byte	0x847
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x19
	.4byte	.LASF114
	.byte	0xb
	.2byte	0x13d
	.4byte	0x847
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x14
	.string	"tex"
	.byte	0xb
	.2byte	0x13f
	.4byte	0x33a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x19
	.4byte	.LASF115
	.byte	0xb
	.2byte	0x141
	.4byte	0x3f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x19
	.4byte	.LASF116
	.byte	0xb
	.2byte	0x143
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x19
	.4byte	.LASF117
	.byte	0xb
	.2byte	0x144
	.4byte	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x69
	.byte	0x0
	.uleb128 0x11
	.4byte	0x324
	.4byte	0x857
	.uleb128 0x12
	.4byte	0x37
	.byte	0x2
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0xb
	.2byte	0x145
	.4byte	0x6ef
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF119
	.byte	0x1
	.byte	0xf7
	.4byte	.LFB68
	.4byte	.LFE68
	.byte	0x1
	.byte	0x51
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF120
	.byte	0x1
	.byte	0xfe
	.4byte	.LFB69
	.4byte	.LFE69
	.byte	0x1
	.byte	0x51
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x105
	.byte	0x1
	.4byte	.LFB70
	.4byte	.LFE70
	.byte	0x1
	.byte	0x51
	.4byte	0x8b8
	.uleb128 0x1c
	.string	"w"
	.byte	0x1
	.2byte	0x104
	.4byte	0x318
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.string	"h"
	.byte	0x1
	.2byte	0x104
	.4byte	0x318
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x19f
	.4byte	0xd6
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LLST3
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x1d8
	.byte	0x1
	.4byte	0x58
	.4byte	.LFB79
	.4byte	.LFE79
	.byte	0x1
	.byte	0x51
	.4byte	0x90c
	.uleb128 0x1f
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x324
	.4byte	.LLST5
	.uleb128 0x20
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x58
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x1e5
	.byte	0x1
	.4byte	.LFB80
	.4byte	.LFE80
	.byte	0x1
	.byte	0x51
	.4byte	0x933
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x76
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x1eb
	.byte	0x1
	.4byte	.LFB81
	.4byte	.LFE81
	.byte	0x1
	.byte	0x51
	.4byte	0x95a
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x76
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x207
	.4byte	0x3a
	.4byte	.LFB83
	.4byte	.LFE83
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x23d
	.4byte	0x48
	.4byte	.LFB86
	.4byte	.LFE86
	.byte	0x1
	.byte	0x51
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x242
	.4byte	0x48
	.4byte	.LFB87
	.4byte	.LFE87
	.byte	0x1
	.byte	0x51
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x247
	.byte	0x1
	.4byte	.LFB88
	.4byte	.LFE88
	.byte	0x1
	.byte	0x51
	.4byte	0x9c6
	.uleb128 0x21
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x246
	.4byte	0x104
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x217
	.byte	0x1
	.4byte	.LFB85
	.4byte	.LFE85
	.4byte	.LLST12
	.4byte	0xa1a
	.uleb128 0x20
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x218
	.4byte	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x219
	.4byte	0xa6
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x21a
	.4byte	0x58
	.uleb128 0x20
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x22d
	.4byte	0x274
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x20b
	.byte	0x1
	.4byte	0x48
	.4byte	.LFB84
	.4byte	.LFE84
	.4byte	.LLST13
	.4byte	0xa47
	.uleb128 0x26
	.string	"a"
	.byte	0x1
	.2byte	0x20b
	.4byte	0x48
	.4byte	.LLST14
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x1f5
	.byte	0x1
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LLST15
	.4byte	0xa81
	.uleb128 0x1f
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x306
	.4byte	.LLST16
	.uleb128 0x26
	.string	"cb"
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x48
	.4byte	.LLST17
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x1b9
	.byte	0x1
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LLST18
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x1ab
	.byte	0x1
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LLST19
	.4byte	0xafe
	.uleb128 0x1f
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x1aa
	.4byte	0xf9
	.4byte	.LLST20
	.uleb128 0x1f
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x1aa
	.4byte	0xf9
	.4byte	.LLST21
	.uleb128 0x26
	.string	"wd"
	.byte	0x1
	.2byte	0x1aa
	.4byte	0xf9
	.4byte	.LLST22
	.uleb128 0x26
	.string	"ht"
	.byte	0x1
	.2byte	0x1aa
	.4byte	0xf9
	.4byte	.LLST23
	.uleb128 0x28
	.string	"f"
	.byte	0x1
	.2byte	0x1ac
	.4byte	0xd6
	.4byte	.LLST24
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x1b2
	.4byte	.LFB76
	.4byte	.LFE76
	.byte	0x1
	.byte	0x51
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x1a4
	.byte	0x1
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LLST26
	.4byte	0xb98
	.uleb128 0x1f
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x114
	.4byte	.LLST27
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x114
	.4byte	.LLST28
	.uleb128 0x26
	.string	"wd"
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x114
	.4byte	.LLST29
	.uleb128 0x26
	.string	"ht"
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x114
	.4byte	.LLST30
	.uleb128 0x1f
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x114
	.4byte	.LLST31
	.uleb128 0x1f
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x1a3
	.4byte	0x114
	.4byte	.LLST32
	.uleb128 0x28
	.string	"f"
	.byte	0x1
	.2byte	0x1a5
	.4byte	0xd6
	.4byte	.LLST33
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x1d4
	.byte	0x1
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LLST34
	.4byte	0xbd3
	.uleb128 0x1f
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x58
	.4byte	.LLST35
	.uleb128 0x1f
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x58
	.4byte	.LLST36
	.byte	0x0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x193
	.byte	0x1
	.4byte	0x58
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST37
	.4byte	0xc02
	.uleb128 0x1f
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x193
	.4byte	0x89
	.4byte	.LLST38
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF153
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LLST39
	.4byte	0xc25
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.byte	0x5d
	.4byte	0x58
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x10a
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST40
	.4byte	0xc94
	.uleb128 0x1f
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x10a
	.4byte	0x30
	.4byte	.LLST41
	.uleb128 0x24
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x12f
	.4byte	0x114
	.uleb128 0x2c
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x131
	.4byte	0xf9
	.4byte	.LLST42
	.uleb128 0x2c
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x134
	.4byte	0x48
	.4byte	.LLST43
	.uleb128 0x2d
	.string	"c"
	.byte	0x1
	.2byte	0x14f
	.4byte	0x2c1
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.2byte	0x16d
	.4byte	0x58
	.4byte	.LLST44
	.byte	0x0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF158
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LLST45
	.4byte	0xccc
	.uleb128 0x2e
	.4byte	.LASF159
	.byte	0x1
	.byte	0x43
	.4byte	0x31e
	.4byte	.LLST46
	.uleb128 0x2e
	.4byte	.LASF160
	.byte	0x1
	.byte	0x43
	.4byte	0x13f
	.4byte	.LLST47
	.byte	0x0
	.uleb128 0x11
	.4byte	0x48
	.4byte	0xcdc
	.uleb128 0x12
	.4byte	0x37
	.byte	0x1
	.byte	0x0
	.uleb128 0x2f
	.4byte	.LASF161
	.byte	0x1
	.byte	0x14
	.4byte	0xccc
	.byte	0x5
	.byte	0x3
	.4byte	frameBuffer
	.uleb128 0x30
	.4byte	.LASF162
	.byte	0xb
	.byte	0x3c
	.4byte	0x3f7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempcolorelement
	.uleb128 0x30
	.4byte	.LASF163
	.byte	0xb
	.byte	0x3d
	.4byte	0x269
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_tempnormalelement
	.uleb128 0x11
	.4byte	0x3b3
	.4byte	0xd21
	.uleb128 0x12
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x30
	.4byte	.LASF164
	.byte	0xb
	.byte	0x3e
	.4byte	0xd11
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_temptexcoordelement
	.uleb128 0x30
	.4byte	.LASF165
	.byte	0xb
	.byte	0x4a
	.4byte	0x453
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	norm
	.uleb128 0x30
	.4byte	.LASF166
	.byte	0xb
	.byte	0x4b
	.4byte	0x453
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert
	.uleb128 0x11
	.4byte	0x453
	.4byte	0xd67
	.uleb128 0x12
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x31
	.string	"tex"
	.byte	0xb
	.byte	0x4c
	.4byte	0xd57
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tex
	.uleb128 0x30
	.4byte	.LASF115
	.byte	0xb
	.byte	0x4d
	.4byte	0x453
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color
	.uleb128 0x11
	.4byte	0x269
	.4byte	0xd9c
	.uleb128 0x32
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x30
	.4byte	.LASF167
	.byte	0xb
	.byte	0x4f
	.4byte	0xd8b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_normalelements
	.uleb128 0x30
	.4byte	.LASF168
	.byte	0xb
	.byte	0x50
	.4byte	0xd8b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_vertexelements
	.uleb128 0x11
	.4byte	0x3b3
	.4byte	0xdd7
	.uleb128 0x12
	.4byte	0x37
	.byte	0x7
	.uleb128 0x32
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x30
	.4byte	.LASF169
	.byte	0xb
	.byte	0x51
	.4byte	0xdc0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_texcoordelements
	.uleb128 0x11
	.4byte	0x3f7
	.4byte	0xdfa
	.uleb128 0x32
	.4byte	0x37
	.2byte	0x3e7
	.byte	0x0
	.uleb128 0x30
	.4byte	.LASF170
	.byte	0xb
	.byte	0x52
	.4byte	0xde9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorelements
	.uleb128 0x30
	.4byte	.LASF171
	.byte	0xb
	.byte	0x5c
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vert_i
	.uleb128 0x30
	.4byte	.LASF172
	.byte	0xb
	.byte	0x5d
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_type
	.uleb128 0x30
	.4byte	.LASF173
	.byte	0xb
	.byte	0x5e
	.4byte	0x324
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_GLtype
	.uleb128 0x30
	.4byte	.LASF174
	.byte	0xb
	.byte	0x60
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex
	.uleb128 0x30
	.4byte	.LASF175
	.byte	0xb
	.byte	0x61
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_tex_client
	.uleb128 0x33
	.4byte	.LASF176
	.byte	0xb
	.byte	0x65
	.4byte	0x324
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF177
	.byte	0xb
	.byte	0x66
	.4byte	0x35b
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF178
	.byte	0xb
	.byte	0x67
	.4byte	0x11f
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF179
	.byte	0xb
	.byte	0x68
	.4byte	0x11f
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF180
	.byte	0xb
	.byte	0x6a
	.4byte	0xe4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthtestenabled
	.uleb128 0x30
	.4byte	.LASF181
	.byte	0xb
	.byte	0x6b
	.4byte	0xe4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthupdate
	.uleb128 0x30
	.4byte	.LASF182
	.byte	0xb
	.byte	0x6c
	.4byte	0x324
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	depthfunction
	.uleb128 0x30
	.4byte	.LASF183
	.byte	0xb
	.byte	0x6d
	.4byte	0xd6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_cleardepth
	.uleb128 0x30
	.4byte	.LASF184
	.byte	0xb
	.byte	0x79
	.4byte	0x4a3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	model_stack
	.uleb128 0x30
	.4byte	.LASF185
	.byte	0xb
	.byte	0x7a
	.4byte	0x4a3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	projection_stack
	.uleb128 0x11
	.4byte	0x4a3
	.4byte	0xf16
	.uleb128 0x12
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x30
	.4byte	.LASF186
	.byte	0xb
	.byte	0x7b
	.4byte	0xf06
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	texture_stack
	.uleb128 0x30
	.4byte	.LASF187
	.byte	0xb
	.byte	0x7c
	.4byte	0xf3a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmtx
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4a3
	.uleb128 0x30
	.4byte	.LASF188
	.byte	0xb
	.byte	0x7d
	.4byte	0x324
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_mode
	.uleb128 0x11
	.4byte	0x569
	.4byte	0xf62
	.uleb128 0x12
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x30
	.4byte	.LASF189
	.byte	0xb
	.byte	0x98
	.4byte	0xf52
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lights
	.uleb128 0x30
	.4byte	.LASF190
	.byte	0xb
	.byte	0x9b
	.4byte	0x3f7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globAmbient
	.uleb128 0x30
	.4byte	.LASF191
	.byte	0xb
	.byte	0xa8
	.4byte	0x5c7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	curmat
	.uleb128 0x30
	.4byte	.LASF192
	.byte	0xb
	.byte	0xab
	.4byte	0x11f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxcullfaceanabled
	.uleb128 0x30
	.4byte	.LASF193
	.byte	0xb
	.byte	0xac
	.4byte	0x324
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gxwinding
	.uleb128 0x30
	.4byte	.LASF194
	.byte	0xb
	.byte	0xb0
	.4byte	0x11f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lighting
	.uleb128 0x30
	.4byte	.LASF195
	.byte	0xb
	.byte	0xb7
	.4byte	0xe4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_type
	.uleb128 0x30
	.4byte	.LASF196
	.byte	0xb
	.byte	0xb8
	.4byte	0xe4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_src
	.uleb128 0x30
	.4byte	.LASF197
	.byte	0xb
	.byte	0xb9
	.4byte	0xe4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_dst
	.uleb128 0x30
	.4byte	.LASF198
	.byte	0xb
	.byte	0xba
	.4byte	0xe4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blend_op
	.uleb128 0x30
	.4byte	.LASF199
	.byte	0xb
	.byte	0xbc
	.4byte	0xe4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cull_mode
	.uleb128 0x30
	.4byte	.LASF200
	.byte	0xb
	.byte	0xc5
	.4byte	0x5f1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cur_state
	.uleb128 0x30
	.4byte	.LASF201
	.byte	0xb
	.byte	0xef
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_height
	.uleb128 0x30
	.4byte	.LASF202
	.byte	0xb
	.byte	0xf0
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb_max_width
	.uleb128 0x30
	.4byte	.LASF203
	.byte	0xb
	.byte	0xf1
	.4byte	0x32f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissor_test
	.uleb128 0x30
	.4byte	.LASF204
	.byte	0xb
	.byte	0xf2
	.4byte	0x63d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	scissorInfo
	.uleb128 0x30
	.4byte	.LASF205
	.byte	0xb
	.byte	0xf3
	.4byte	0x63d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	viewPort
	.uleb128 0x30
	.4byte	.LASF206
	.byte	0xb
	.byte	0xf4
	.4byte	0x114
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normNear
	.uleb128 0x30
	.4byte	.LASF207
	.byte	0xb
	.byte	0xf5
	.4byte	0x114
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	normFar
	.uleb128 0x30
	.4byte	.LASF208
	.byte	0xb
	.byte	0xf7
	.4byte	0x114
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	line_width
	.uleb128 0x30
	.4byte	.LASF209
	.byte	0xb
	.byte	0xf8
	.4byte	0x114
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	point_size
	.uleb128 0x34
	.4byte	.LASF210
	.byte	0xb
	.2byte	0x104
	.4byte	0x6ab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pack
	.uleb128 0x34
	.4byte	.LASF211
	.byte	0xb
	.2byte	0x105
	.4byte	0x6ab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	unpack
	.uleb128 0x11
	.4byte	0x11f
	.4byte	0x1112
	.uleb128 0x12
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x34
	.4byte	.LASF212
	.byte	0xb
	.2byte	0x106
	.4byte	0x1102
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_write_mask
	.uleb128 0x34
	.4byte	.LASF213
	.byte	0xb
	.2byte	0x10c
	.4byte	0x11f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_mat_enabled
	.uleb128 0x34
	.4byte	.LASF214
	.byte	0xb
	.2byte	0x10d
	.4byte	0x324
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	copy_material
	.uleb128 0x34
	.4byte	.LASF215
	.byte	0xb
	.2byte	0x110
	.4byte	0x2c1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clearcolor
	.uleb128 0x11
	.4byte	0x6e3
	.4byte	0x116e
	.uleb128 0x12
	.4byte	0x37
	.byte	0x3
	.byte	0x0
	.uleb128 0x34
	.4byte	.LASF216
	.byte	0xb
	.2byte	0x124
	.4byte	0x115e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Trans
	.uleb128 0x34
	.4byte	.LASF217
	.byte	0xb
	.2byte	0x149
	.4byte	0x11f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enable
	.uleb128 0x34
	.4byte	.LASF218
	.byte	0xb
	.2byte	0x14a
	.4byte	0xe4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_mode
	.uleb128 0x34
	.4byte	.LASF219
	.byte	0xb
	.2byte	0x14b
	.4byte	0x114
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_startz
	.uleb128 0x34
	.4byte	.LASF220
	.byte	0xb
	.2byte	0x14c
	.4byte	0x114
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_endz
	.uleb128 0x34
	.4byte	.LASF221
	.byte	0xb
	.2byte	0x14d
	.4byte	0x114
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_density
	.uleb128 0x34
	.4byte	.LASF222
	.byte	0xb
	.2byte	0x14e
	.4byte	0x2c1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0x11
	.4byte	0x857
	.4byte	0x1203
	.uleb128 0x12
	.4byte	0x37
	.byte	0x7
	.byte	0x0
	.uleb128 0x34
	.4byte	.LASF223
	.byte	0xb
	.2byte	0x150
	.4byte	0x11f3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glTexEnvs
	.uleb128 0x34
	.4byte	.LASF224
	.byte	0xb
	.2byte	0x155
	.4byte	0x324
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	read_mode
	.uleb128 0x34
	.4byte	.LASF225
	.byte	0xb
	.2byte	0x158
	.4byte	0x345
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	call_offset
	.uleb128 0x30
	.4byte	.LASF226
	.byte	0x1
	.byte	0x13
	.4byte	0x7c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__glutProgramName
	.uleb128 0x30
	.4byte	.LASF227
	.byte	0x1
	.byte	0x15
	.4byte	0x1260
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rmode
	.uleb128 0x8
	.byte	0x4
	.4byte	0x22d
	.uleb128 0x30
	.4byte	.LASF228
	.byte	0x1
	.byte	0x16
	.4byte	0x306
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	watchdog
	.uleb128 0x31
	.string	"fb"
	.byte	0x1
	.byte	0x18
	.4byte	0xf9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fb
	.uleb128 0x30
	.4byte	.LASF229
	.byte	0x1
	.byte	0xf3
	.4byte	0x11f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_console_enabled
	.uleb128 0x30
	.4byte	.LASF230
	.byte	0x1
	.byte	0xf4
	.4byte	0x11f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_console_inited
	.uleb128 0x34
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x19c
	.4byte	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	offset
	.uleb128 0x35
	.string	"FPS"
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x12d3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	FPS
	.uleb128 0xd
	.4byte	0x82
	.uleb128 0x34
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x12d3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	incFPS
	.uleb128 0x34
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x76
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	displayfunc
	.uleb128 0x34
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x76
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	idlefunc
	.uleb128 0x34
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x10f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	count
	.uleb128 0x34
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x10f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	kill
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x60a
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1338
	.4byte	0x863
	.string	"ShowConsole"
	.4byte	0x875
	.string	"HideConsole"
	.4byte	0x887
	.string	"getVImode"
	.4byte	0x8b8
	.string	"computeFactor"
	.4byte	0x8d1
	.string	"glutGet"
	.4byte	0x90c
	.string	"glutDisplayFunc"
	.4byte	0x933
	.string	"glutIdleFunc"
	.4byte	0x95a
	.string	"getFPS"
	.4byte	0x971
	.string	"getFrontFramebuffer"
	.4byte	0x988
	.string	"getBackFramebuffer"
	.4byte	0x99f
	.string	"power_off"
	.4byte	0x9c6
	.string	"glutMainLoop"
	.4byte	0xa1a
	.string	"glutThread"
	.4byte	0xa47
	.string	"timercallback"
	.4byte	0xa81
	.string	"glutSwapBuffers"
	.4byte	0xa97
	.string	"GX_SetModScissor"
	.4byte	0xafe
	.string	"GX_SetMaxScissor"
	.4byte	0xb11
	.string	"GX_SetModViewport"
	.4byte	0xb98
	.string	"glutInitWindowSize"
	.4byte	0xbd3
	.string	"glutCreateWindow"
	.4byte	0xc02
	.string	"initGlutData"
	.4byte	0xc25
	.string	"glutInitDisplayMode"
	.4byte	0xc94
	.string	"glutInit"
	.4byte	0xced
	.string	"_tempcolorelement"
	.4byte	0xcff
	.string	"_tempnormalelement"
	.4byte	0xd21
	.string	"_temptexcoordelement"
	.4byte	0xd33
	.string	"norm"
	.4byte	0xd45
	.string	"vert"
	.4byte	0xd67
	.string	"tex"
	.4byte	0xd79
	.string	"color"
	.4byte	0xd9c
	.string	"_normalelements"
	.4byte	0xdae
	.string	"_vertexelements"
	.4byte	0xdd7
	.string	"_texcoordelements"
	.4byte	0xdfa
	.string	"_colorelements"
	.4byte	0xe0c
	.string	"vert_i"
	.4byte	0xe1e
	.string	"_type"
	.4byte	0xe30
	.string	"_GLtype"
	.4byte	0xe42
	.string	"cur_tex"
	.4byte	0xe54
	.string	"cur_tex_client"
	.4byte	0xe9a
	.string	"depthtestenabled"
	.4byte	0xeac
	.string	"depthupdate"
	.4byte	0xebe
	.string	"depthfunction"
	.4byte	0xed0
	.string	"_cleardepth"
	.4byte	0xee2
	.string	"model_stack"
	.4byte	0xef4
	.string	"projection_stack"
	.4byte	0xf16
	.string	"texture_stack"
	.4byte	0xf28
	.string	"curmtx"
	.4byte	0xf40
	.string	"cur_mode"
	.4byte	0xf62
	.string	"lights"
	.4byte	0xf74
	.string	"globAmbient"
	.4byte	0xf86
	.string	"curmat"
	.4byte	0xf98
	.string	"gxcullfaceanabled"
	.4byte	0xfaa
	.string	"gxwinding"
	.4byte	0xfbc
	.string	"lighting"
	.4byte	0xfce
	.string	"blend_type"
	.4byte	0xfe0
	.string	"blend_src"
	.4byte	0xff2
	.string	"blend_dst"
	.4byte	0x1004
	.string	"blend_op"
	.4byte	0x1016
	.string	"cull_mode"
	.4byte	0x1028
	.string	"cur_state"
	.4byte	0x103a
	.string	"fb_max_height"
	.4byte	0x104c
	.string	"fb_max_width"
	.4byte	0x105e
	.string	"scissor_test"
	.4byte	0x1070
	.string	"scissorInfo"
	.4byte	0x1082
	.string	"viewPort"
	.4byte	0x1094
	.string	"normNear"
	.4byte	0x10a6
	.string	"normFar"
	.4byte	0x10b8
	.string	"line_width"
	.4byte	0x10ca
	.string	"point_size"
	.4byte	0x10dc
	.string	"pack"
	.4byte	0x10ef
	.string	"unpack"
	.4byte	0x1112
	.string	"color_write_mask"
	.4byte	0x1125
	.string	"copy_mat_enabled"
	.4byte	0x1138
	.string	"copy_material"
	.4byte	0x114b
	.string	"_clearcolor"
	.4byte	0x116e
	.string	"Trans"
	.4byte	0x1181
	.string	"fog_enable"
	.4byte	0x1194
	.string	"fog_mode"
	.4byte	0x11a7
	.string	"fog_startz"
	.4byte	0x11ba
	.string	"fog_endz"
	.4byte	0x11cd
	.string	"fog_density"
	.4byte	0x11e0
	.string	"fog_color"
	.4byte	0x1203
	.string	"glTexEnvs"
	.4byte	0x1216
	.string	"read_mode"
	.4byte	0x1229
	.string	"call_offset"
	.4byte	0x123c
	.string	"__glutProgramName"
	.4byte	0x124e
	.string	"rmode"
	.4byte	0x1266
	.string	"watchdog"
	.4byte	0x1278
	.string	"fb"
	.4byte	0x1289
	.string	"_console_enabled"
	.4byte	0x129b
	.string	"_console_inited"
	.4byte	0x12ad
	.string	"offset"
	.4byte	0x12c0
	.string	"FPS"
	.4byte	0x12d8
	.string	"incFPS"
	.4byte	0x12eb
	.string	"displayfunc"
	.4byte	0x12fe
	.string	"idlefunc"
	.4byte	0x1311
	.string	"count"
	.4byte	0x1324
	.string	"kill"
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF155:
	.string	"glutInitDisplayMode"
.LASF134:
	.string	"interval"
.LASF61:
	.string	"Stack"
.LASF8:
	.string	"char"
.LASF176:
	.string	"_alphatest_func"
.LASF45:
	.string	"GLint"
.LASF82:
	.string	"boxInfo"
.LASF238:
	.string	"d:/Data/Nintendo/DoomGX/gl2gx/source/glut.c"
.LASF239:
	.string	"d:\\\\Data\\\\Nintendo\\\\DoomGX\\\\build"
.LASF190:
	.string	"globAmbient"
.LASF186:
	.string	"texture_stack"
.LASF151:
	.string	"glutCreateWindow"
.LASF179:
	.string	"_alphatest_dirty"
.LASF200:
	.string	"cur_state"
.LASF201:
	.string	"fb_max_height"
.LASF0:
	.string	"unsigned int"
.LASF167:
	.string	"_normalelements"
.LASF74:
	.string	"_mat"
.LASF226:
	.string	"__glutProgramName"
.LASF67:
	.string	"specular"
.LASF234:
	.string	"idlefunc"
.LASF122:
	.string	"glutDisplayFunc"
.LASF121:
	.string	"getVImode"
.LASF169:
	.string	"_texcoordelements"
.LASF161:
	.string	"frameBuffer"
.LASF93:
	.string	"_trans"
.LASF69:
	.string	"spotCutoff"
.LASF97:
	.string	"_tex_env"
.LASF123:
	.string	"func"
.LASF191:
	.string	"curmat"
.LASF236:
	.string	"kill"
.LASF108:
	.string	"mode"
.LASF215:
	.string	"_clearcolor"
.LASF103:
	.string	"maxlod"
.LASF78:
	.string	"GL_STATE_NONE"
.LASF30:
	.string	"xfbMode"
.LASF40:
	.string	"_gx_litobj"
.LASF76:
	.string	"shininess"
.LASF188:
	.string	"cur_mode"
.LASF168:
	.string	"_vertexelements"
.LASF51:
	.string	"GXColorf"
.LASF112:
	.string	"CargOp"
.LASF183:
	.string	"_cleardepth"
.LASF66:
	.string	"diffuse"
.LASF163:
	.string	"_tempnormalelement"
.LASF152:
	.string	"title"
.LASF175:
	.string	"cur_tex_client"
.LASF166:
	.string	"vert"
.LASF218:
	.string	"fog_mode"
.LASF27:
	.string	"viYOrigin"
.LASF220:
	.string	"fog_endz"
.LASF172:
	.string	"_type"
.LASF15:
	.string	"float"
.LASF98:
	.string	"min_filter"
.LASF233:
	.string	"displayfunc"
.LASF235:
	.string	"count"
.LASF95:
	.string	"bias"
.LASF39:
	.string	"GXColor"
.LASF208:
	.string	"line_width"
.LASF6:
	.string	"long long unsigned int"
.LASF216:
	.string	"Trans"
.LASF158:
	.string	"glutInit"
.LASF210:
	.string	"pack"
.LASF75:
	.string	"emissive"
.LASF205:
	.string	"viewPort"
.LASF145:
	.string	"GX_SetModViewport"
.LASF184:
	.string	"model_stack"
.LASF212:
	.string	"color_write_mask"
.LASF111:
	.string	"Carg"
.LASF53:
	.string	"enable"
.LASF223:
	.string	"glTexEnvs"
.LASF20:
	.string	"timespec"
.LASF178:
	.string	"_alphatest_enabled"
.LASF222:
	.string	"fog_color"
.LASF13:
	.string	"tv_nsec"
.LASF10:
	.string	"size_t"
.LASF154:
	.string	"watchdog_conf"
.LASF83:
	.string	"width"
.LASF231:
	.string	"offset"
.LASF213:
	.string	"copy_mat_enabled"
.LASF23:
	.string	"fbWidth"
.LASF174:
	.string	"cur_tex"
.LASF14:
	.string	"double"
.LASF110:
	.string	"comAlpha"
.LASF173:
	.string	"_GLtype"
.LASF116:
	.string	"rgb_scale"
.LASF209:
	.string	"point_size"
.LASF140:
	.string	"glutSwapBuffers"
.LASF136:
	.string	"glutGet"
.LASF159:
	.string	"argcp"
.LASF19:
	.string	"true"
.LASF214:
	.string	"copy_material"
.LASF80:
	.string	"GL_STATE_NEWLIST"
.LASF187:
	.string	"curmtx"
.LASF65:
	.string	"ambient"
.LASF204:
	.string	"scissorInfo"
.LASF130:
	.string	"chan"
.LASF193:
	.string	"gxwinding"
.LASF124:
	.string	"glutIdleFunc"
.LASF41:
	.string	"GXLightObj"
.LASF156:
	.string	"yscale"
.LASF96:
	.string	"ColorTrans"
.LASF150:
	.string	"glutInitWindowSize"
.LASF196:
	.string	"blend_src"
.LASF77:
	.string	"Material"
.LASF182:
	.string	"depthfunction"
.LASF118:
	.string	"glTexEnvSet"
.LASF203:
	.string	"scissor_test"
.LASF42:
	.string	"syswd_t"
.LASF147:
	.string	"yOrig"
.LASF11:
	.string	"time_t"
.LASF185:
	.string	"projection_stack"
.LASF170:
	.string	"_colorelements"
.LASF132:
	.string	"retval"
.LASF86:
	.string	"swap"
.LASF24:
	.string	"efbHeight"
.LASF5:
	.string	"long long int"
.LASF57:
	.string	"VertexArray"
.LASF207:
	.string	"normFar"
.LASF46:
	.string	"GLuint"
.LASF143:
	.string	"yOrigin"
.LASF224:
	.string	"read_mode"
.LASF60:
	.string	"elem_size"
.LASF28:
	.string	"viWidth"
.LASF81:
	.string	"glState"
.LASF70:
	.string	"constant"
.LASF139:
	.string	"alarm"
.LASF217:
	.string	"fog_enable"
.LASF32:
	.string	"sample_pattern"
.LASF17:
	.string	"bool"
.LASF33:
	.string	"vfilter"
.LASF228:
	.string	"watchdog"
.LASF49:
	.string	"VertexElement"
.LASF230:
	.string	"_console_inited"
.LASF105:
	.string	"biasclamp"
.LASF88:
	.string	"row_length"
.LASF48:
	.string	"GLclampf"
.LASF181:
	.string	"depthupdate"
.LASF120:
	.string	"HideConsole"
.LASF55:
	.string	"size"
.LASF73:
	.string	"LightObj"
.LASF29:
	.string	"viHeight"
.LASF100:
	.string	"wrap_s"
.LASF101:
	.string	"wrap_t"
.LASF71:
	.string	"linear"
.LASF35:
	.string	"_vecf"
.LASF197:
	.string	"blend_dst"
.LASF84:
	.string	"height"
.LASF164:
	.string	"_temptexcoordelement"
.LASF229:
	.string	"_console_enabled"
.LASF26:
	.string	"viXOrigin"
.LASF160:
	.string	"argv"
.LASF34:
	.string	"GXRModeObj"
.LASF16:
	.string	"long double"
.LASF141:
	.string	"GX_SetModScissor"
.LASF138:
	.string	"timercallback"
.LASF128:
	.string	"getBackFramebuffer"
.LASF211:
	.string	"unpack"
.LASF129:
	.string	"power_off"
.LASF64:
	.string	"spotDir"
.LASF52:
	.string	"_array"
.LASF68:
	.string	"spotExponent"
.LASF72:
	.string	"quad_t"
.LASF104:
	.string	"lodbias"
.LASF189:
	.string	"lights"
.LASF4:
	.string	"short int"
.LASF102:
	.string	"minlod"
.LASF99:
	.string	"max_filter"
.LASF9:
	.string	"long int"
.LASF21:
	.string	"_gx_rmodeobj"
.LASF227:
	.string	"rmode"
.LASF126:
	.string	"getFPS"
.LASF137:
	.string	"glutThread"
.LASF43:
	.string	"GLenum"
.LASF62:
	.string	"_light"
.LASF115:
	.string	"color"
.LASF127:
	.string	"getFrontFramebuffer"
.LASF47:
	.string	"GLsizei"
.LASF225:
	.string	"call_offset"
.LASF162:
	.string	"_tempcolorelement"
.LASF37:
	.string	"lwp_t"
.LASF90:
	.string	"skip_pixels"
.LASF113:
	.string	"Aarg"
.LASF107:
	.string	"maxaniso"
.LASF133:
	.string	"start"
.LASF221:
	.string	"fog_density"
.LASF54:
	.string	"stride"
.LASF194:
	.string	"lighting"
.LASF12:
	.string	"tv_sec"
.LASF7:
	.string	"long unsigned int"
.LASF195:
	.string	"blend_type"
.LASF135:
	.string	"draw_thread"
.LASF198:
	.string	"blend_op"
.LASF149:
	.string	"farZ"
.LASF92:
	.string	"pixelStore"
.LASF146:
	.string	"xOrig"
.LASF79:
	.string	"GL_STATE_BEGIN"
.LASF237:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF56:
	.string	"type"
.LASF1:
	.string	"unsigned char"
.LASF63:
	.string	"enabled"
.LASF89:
	.string	"skip_rows"
.LASF18:
	.string	"false"
.LASF171:
	.string	"vert_i"
.LASF87:
	.string	"lsb_first"
.LASF117:
	.string	"alpha_scale"
.LASF219:
	.string	"fog_startz"
.LASF36:
	.string	"Vector"
.LASF109:
	.string	"comRGB"
.LASF202:
	.string	"fb_max_width"
.LASF94:
	.string	"scale"
.LASF206:
	.string	"normNear"
.LASF180:
	.string	"depthtestenabled"
.LASF22:
	.string	"viTVMode"
.LASF38:
	.string	"_gx_color"
.LASF106:
	.string	"edgelod"
.LASF192:
	.string	"gxcullfaceanabled"
.LASF58:
	.string	"_stack"
.LASF144:
	.string	"GX_SetMaxScissor"
.LASF3:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF59:
	.string	"begin"
.LASF165:
	.string	"norm"
.LASF148:
	.string	"nearZ"
.LASF232:
	.string	"incFPS"
.LASF131:
	.string	"glutMainLoop"
.LASF31:
	.string	"field_rendering"
.LASF142:
	.string	"xOrigin"
.LASF25:
	.string	"xfbHeight"
.LASF91:
	.string	"alignment"
.LASF50:
	.string	"TexCoordElement"
.LASF177:
	.string	"_alphatest_ref"
.LASF44:
	.string	"GLboolean"
.LASF157:
	.string	"gp_fifo"
.LASF119:
	.string	"ShowConsole"
.LASF240:
	.string	"_glState"
.LASF85:
	.string	"_pixelStore"
.LASF125:
	.string	"computeFactor"
.LASF199:
	.string	"cull_mode"
.LASF114:
	.string	"AargOp"
.LASF153:
	.string	"initGlutData"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
