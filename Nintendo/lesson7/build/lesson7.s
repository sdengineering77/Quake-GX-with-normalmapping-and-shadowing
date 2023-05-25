	.file	"lesson7.cpp"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl _Z6SortSTPfPiS0_
	.type	_Z6SortSTPfPiS0_, @function
_Z6SortSTPfPiS0_:
.LFB70:
	.file 1 "d:/Data/Nintendo/lesson7/source/lesson7.cpp"
	.loc 1 401 0
.LVL0:
.LBB2:
	.loc 1 405 0
	li 0,0
	.loc 1 406 0
	li 9,1
.LVL1:
	.loc 1 405 0
	stw 0,0(4)
	.loc 1 406 0
	li 11,4
	stw 0,0(5)
.L2:
	.loc 1 404 0
	cmpwi 7,9,2
	.loc 1 405 0
	stwx 9,11,4
	.loc 1 406 0
	stwx 9,11,5
	.loc 1 404 0
	addi 11,11,4
	addi 9,9,1
	bne- 7,.L2
	li 10,1
.LVL2:
	li 6,1
.LVL3:
	li 9,0
.LVL4:
.L4:
	addi 0,10,1
.LBB3:
	.loc 1 412 0
	slwi 9,9,2
.LVL5:
	cmpwi 7,0,3
	slwi 0,10,2
	subfic 10,10,3
	add 7,9,4
	add 11,0,4
	mtctr 10
	bgt- 7,.L32
.LVL6:
.L5:
	.loc 1 413 0
	lwz 10,0(11)
	.loc 1 412 0
	lwz 8,0(7)
	.loc 1 417 0
	slwi 9,10,3
	slwi 0,8,3
	lfsx 0,9,3
	lfsx 13,3,0
	fcmpu 7,13,0
	bng- 7,.L6
	.loc 1 418 0
	stw 10,0(7)
	.loc 1 419 0
	stw 8,0(11)
.L6:
.LBE3:
	.loc 1 411 0
	addi 11,11,4
	bdnz .L5
	cmpwi 7,6,2
	.loc 1 401 0
	mr 9,6
.LVL7:
	.loc 1 411 0
	addi 10,6,1
.LVL8:
	beq- 7,.L10
.LVL9:
	mr 6,10
	b .L4
.LVL10:
.L32:
	li 0,1
	mtctr 0
	b .L5
.LVL11:
.L10:
	addi 3,3,4
.LVL12:
	li 10,1
.LVL13:
	li 6,1
.LVL14:
	li 9,0
.LVL15:
.L12:
	addi 0,10,1
.LBB4:
	.loc 1 427 0
	slwi 9,9,2
.LVL16:
	cmpwi 7,0,3
	slwi 0,10,2
	subfic 10,10,3
	add 7,9,5
	add 11,0,5
	mtctr 10
	bgt- 7,.L33
.LVL17:
.L13:
	.loc 1 428 0
	lwz 10,0(11)
	.loc 1 427 0
	lwz 8,0(7)
.LVL18:
	.loc 1 432 0
	slwi 9,10,3
	slwi 0,8,3
	lfsx 0,9,3
	lfsx 13,3,0
	fcmpu 7,13,0
	bng- 7,.L14
	.loc 1 433 0
	stw 10,0(7)
	.loc 1 434 0
	stw 8,0(11)
.L14:
.LBE4:
	.loc 1 426 0
	addi 11,11,4
	bdnz .L13
	cmpwi 7,6,2
	.loc 1 401 0
	mr 9,6
.LVL19:
	.loc 1 426 0
	addi 10,6,1
.LVL20:
	beqlr- 7
.LVL21:
	mr 6,10
	b .L12
.LVL22:
.L33:
	li 0,1
	mtctr 0
	b .L13
.LBE2:
.LFE70:
	.size	_Z6SortSTPfPiS0_, .-_Z6SortSTPfPiS0_
	.globl __gxx_personality_v0
	.align 2
	.globl _Z16CalcTangentSpaceP5_vecfPfS0_S0_
	.type	_Z16CalcTangentSpaceP5_vecfPfS0_S0_, @function
_Z16CalcTangentSpaceP5_vecfPfS0_S0_:
.LFB68:
	.loc 1 324 0
.LVL23:
	mflr 0
.LCFI0:
	stwu 1,-136(1)
.LCFI1:
	stw 16,72(1)
.LCFI2:
	addi 16,1,32
	stw 0,140(1)
.LCFI3:
	stw 17,76(1)
.LCFI4:
.LBB5:
	.loc 1 334 0
	addi 17,3,12
.LVL24:
.LBE5:
	.loc 1 324 0
	stw 18,80(1)
.LCFI5:
.LBB6:
	.loc 1 335 0
	addi 18,3,24
.LVL25:
.LBE6:
	.loc 1 324 0
	stw 19,84(1)
.LCFI6:
.LBB7:
	.loc 1 337 0
	addi 19,4,8
.LVL26:
.LBE7:
	.loc 1 324 0
	stw 20,88(1)
.LCFI7:
.LBB8:
	.loc 1 338 0
	addi 20,4,16
.LVL27:
.LBE8:
	.loc 1 324 0
	stw 21,92(1)
.LCFI8:
	addi 21,1,8
	stw 22,96(1)
.LCFI9:
.LBB9:
	.loc 1 338 0
	addi 22,4,12
.LBE9:
	.loc 1 324 0
	stw 23,100(1)
.LCFI10:
	addi 23,1,20
	stw 24,104(1)
.LCFI11:
.LBB10:
	.loc 1 338 0
	addi 24,4,4
.LBE10:
	.loc 1 324 0
	stw 25,108(1)
.LCFI12:
.LBB11:
	.loc 1 338 0
	addi 25,4,20
.LBE11:
	.loc 1 324 0
	stw 26,112(1)
.LCFI13:
	mr 26,6
	stw 27,116(1)
.LCFI14:
	mr 27,5
	stw 28,120(1)
.LCFI15:
	mr 28,3
	stw 29,124(1)
.LCFI16:
.LBB12:
	.loc 1 338 0
	li 29,0
.LVL28:
.LBE12:
	.loc 1 324 0
	stw 30,128(1)
.LCFI17:
	mr 30,4
	stw 31,132(1)
.LCFI18:
.LBB13:
	.loc 1 338 0
	li 31,0
.LVL29:
.L35:
	.loc 1 341 0
	lfsx 6,31,28
	.loc 1 347 0
	mr 3,21
	.loc 1 342 0
	lfs 8,0(30)
	.loc 1 343 0
	lfs 7,0(24)
	.loc 1 341 0
	lfsx 10,31,17
	.loc 1 344 0
	lfsx 9,31,18
	.loc 1 340 0
	addi 31,31,4
	.loc 1 342 0
	lfs 0,0(19)
	.loc 1 341 0
	fsubs 10,10,6
	.loc 1 343 0
	lfs 13,0(22)
	.loc 1 344 0
	fsubs 9,9,6
	.loc 1 345 0
	lfs 12,0(20)
	.loc 1 342 0
	fsubs 0,0,8
	.loc 1 346 0
	lfs 11,0(25)
	.loc 1 343 0
	fsubs 13,13,7
	.loc 1 345 0
	fsubs 12,12,8
	.loc 1 341 0
	stfs 10,8(1)
	.loc 1 346 0
	fsubs 11,11,7
	.loc 1 342 0
	stfs 0,12(1)
	.loc 1 343 0
	stfs 13,16(1)
	.loc 1 344 0
	stfs 9,20(1)
	.loc 1 345 0
	stfs 12,24(1)
	.loc 1 346 0
	stfs 11,28(1)
	.loc 1 347 0
	bl ps_guVecNormalize
	.loc 1 348 0
	mr 3,23
	bl ps_guVecNormalize
	.loc 1 349 0
	mulli 5,29,12
	mr 3,21
	mr 4,23
	add 5,16,5
	bl ps_guVecCross
	.loc 1 340 0
	cmpwi 7,29,2
	addi 29,29,1
	bne+ 7,.L35
	.loc 1 364 0
	lfs 11,36(1)
	.loc 1 370 0
	mr 3,27
	.loc 1 365 0
	lfs 10,48(1)
	.loc 1 366 0
	lfs 9,60(1)
	.loc 1 364 0
	fneg 11,11
	.loc 1 367 0
	lfs 0,40(1)
	.loc 1 365 0
	fneg 10,10
	.loc 1 368 0
	lfs 13,52(1)
	.loc 1 366 0
	fneg 9,9
	.loc 1 369 0
	lfs 12,64(1)
	.loc 1 367 0
	fneg 0,0
	.loc 1 368 0
	fneg 13,13
	.loc 1 364 0
	lfs 8,32(1)
	.loc 1 369 0
	fneg 12,12
	.loc 1 365 0
	lfs 7,44(1)
	.loc 1 366 0
	lfs 6,56(1)
	.loc 1 367 0
	fdivs 0,0,8
	.loc 1 368 0
	fdivs 13,13,7
	.loc 1 369 0
	fdivs 12,12,6
	.loc 1 364 0
	fdivs 11,11,8
	.loc 1 365 0
	fdivs 10,10,7
	.loc 1 364 0
	stfs 11,0(27)
	.loc 1 367 0
	stfs 0,0(26)
	.loc 1 366 0
	fdivs 9,9,6
	.loc 1 365 0
	stfs 10,4(27)
	.loc 1 368 0
	stfs 13,4(26)
	.loc 1 366 0
	stfs 9,8(27)
	.loc 1 369 0
	stfs 12,8(26)
	.loc 1 370 0
	bl ps_guVecNormalize
	.loc 1 371 0
	mr 3,26
	bl ps_guVecNormalize
.LBE13:
	.loc 1 372 0
	lwz 0,140(1)
	lwz 16,72(1)
	lwz 17,76(1)
.LVL30:
	mtlr 0
	lwz 18,80(1)
.LVL31:
	lwz 19,84(1)
.LVL32:
	lwz 20,88(1)
.LVL33:
	lwz 21,92(1)
	lwz 22,96(1)
	lwz 23,100(1)
	lwz 24,104(1)
	lwz 25,108(1)
	lwz 26,112(1)
.LVL34:
	lwz 27,116(1)
.LVL35:
	lwz 28,120(1)
.LVL36:
	lwz 29,124(1)
.LVL37:
	lwz 30,128(1)
.LVL38:
	lwz 31,132(1)
	addi 1,1,136
	blr
.LFE68:
	.size	_Z16CalcTangentSpaceP5_vecfPfS0_S0_, .-_Z16CalcTangentSpaceP5_vecfPfS0_S0_
	.align 2
	.globl _Z15Sys_WriteSocketPc
	.type	_Z15Sys_WriteSocketPc, @function
_Z15Sys_WriteSocketPc:
.LFB74:
	.loc 1 604 0
.LVL39:
	mflr 0
.LCFI19:
	stwu 1,-32(1)
.LCFI20:
	stw 27,12(1)
.LCFI21:
	.loc 1 605 0
	lis 27,csock@ha
	.loc 1 604 0
	stw 0,36(1)
.LCFI22:
	stw 28,16(1)
.LCFI23:
	mr 28,3
	stw 29,20(1)
.LCFI24:
	.loc 1 605 0
	lwz 29,csock@l(27)
	bl strlen
.LVL40:
	mr 4,28
	mr 5,3
	li 6,0
	mr 3,29
	bl net_send
	.loc 1 606 0
	lwz 3,csock@l(27)
	lis 4,.LC0@ha
	li 5,1
	la 4,.LC0@l(4)
	li 6,0
	bl net_send
	.loc 1 607 0
	lwz 0,36(1)
	lwz 27,12(1)
	lwz 28,16(1)
.LVL41:
	mtlr 0
	lwz 29,20(1)
	addi 1,1,32
	blr
.LFE74:
	.size	_Z15Sys_WriteSocketPc, .-_Z15Sys_WriteSocketPc
	.align 2
	.globl _Z10Sys_PrintfPKcz
	.type	_Z10Sys_PrintfPKcz, @function
_Z10Sys_PrintfPKcz:
.LFB75:
	.loc 1 610 0
.LVL42:
	mflr 0
.LCFI25:
	stwu 1,-4232(1)
.LCFI26:
	stw 28,4216(1)
.LCFI27:
	stw 29,4220(1)
.LCFI28:
	stw 0,4236(1)
.LCFI29:
	stw 4,4124(1)
	stw 5,4128(1)
	stw 6,4132(1)
	stw 7,4136(1)
	stw 8,4140(1)
	stw 9,4144(1)
	stw 10,4148(1)
	bne- 1,.L43
	.loc 1 610 0
	stfd 1,4152(1)
	stfd 2,4160(1)
	stfd 3,4168(1)
	stfd 4,4176(1)
	stfd 5,4184(1)
	stfd 6,4192(1)
	stfd 7,4200(1)
	stfd 8,4208(1)
.L43:
.LBB14:
	.loc 1 616 0
	addi 28,1,20
	.loc 1 615 0
	li 0,1
	addi 9,1,4240
.LBE14:
	.loc 1 610 0
	mr 5,3
.LBB15:
	.loc 1 615 0
	li 29,0
	.loc 1 616 0
	addi 6,1,8
	.loc 1 615 0
	stb 0,8(1)
	.loc 1 616 0
	mr 3,28
.LVL43:
	.loc 1 615 0
	addi 0,1,4120
	.loc 1 616 0
	li 4,4095
	.loc 1 615 0
	stw 0,16(1)
	stw 9,12(1)
	stb 29,9(1)
	.loc 1 616 0
	bl vsnprintf
.LVL44:
	.loc 1 619 0
	mr 3,28
	.loc 1 617 0
	stb 29,4115(1)
	.loc 1 619 0
	bl _Z15Sys_WriteSocketPc
.LBE15:
	.loc 1 622 0
	lwz 0,4236(1)
	lwz 28,4216(1)
	lwz 29,4220(1)
	mtlr 0
	addi 1,1,4232
	blr
.LFE75:
	.size	_Z10Sys_PrintfPKcz, .-_Z10Sys_PrintfPKcz
	.align 2
	.globl _Z21Sys_AcceptLogTerminalv
	.type	_Z21Sys_AcceptLogTerminalv, @function
_Z21Sys_AcceptLogTerminalv:
.LFB73:
	.loc 1 566 0
	mflr 0
.LCFI30:
	stwu 1,-96(1)
.LCFI31:
.LBB16:
	.loc 1 575 0
	li 6,1
.LBE16:
	.loc 1 566 0
	stw 29,84(1)
.LCFI32:
.LBB17:
	.loc 1 575 0
	addi 4,1,44
	.loc 1 569 0
	li 29,0
.LBE17:
	.loc 1 566 0
	stw 0,100(1)
.LCFI33:
.LBB18:
	.loc 1 575 0
	addi 5,1,28
	.loc 1 567 0
	li 0,16
	.loc 1 575 0
	addi 3,1,12
	.loc 1 567 0
	stw 0,8(1)
.LVL45:
.LBE18:
	.loc 1 566 0
	stw 27,76(1)
.LCFI34:
.LBB19:
	.loc 1 580 0
	lis 27,sock@ha
.LBE19:
	.loc 1 566 0
	stw 28,80(1)
.LCFI35:
.LBB20:
	.loc 1 569 0
	stw 29,12(1)
	stw 29,16(1)
	stw 29,20(1)
	stw 29,24(1)
	.loc 1 570 0
	stw 29,28(1)
	stw 29,32(1)
	stw 29,36(1)
	stw 29,40(1)
	.loc 1 571 0
	stw 29,44(1)
	stw 29,48(1)
	stw 29,52(1)
	stw 29,56(1)
	.loc 1 575 0
	bl if_config
	.loc 1 580 0
	li 4,1
	li 5,0
	li 3,2
	bl net_socket
	.loc 1 582 0
	lis 9,.LANCHOR0@ha
	la 11,.LANCHOR0@l(9)
	stw 29,.LANCHOR0@l(9)
	.loc 1 583 0
	addi 28,11,16
	.loc 1 585 0
	li 0,2
	.loc 1 583 0
	stw 29,4(28)
	.loc 1 586 0
	li 9,80
	.loc 1 583 0
	stw 29,8(28)
	.loc 1 589 0
	mr 4,11
	.loc 1 583 0
	stw 29,12(28)
	.loc 1 589 0
	li 5,16
	.loc 1 587 0
	stw 29,4(11)
	.loc 1 585 0
	stb 0,1(11)
	.loc 1 586 0
	sth 9,2(11)
	.loc 1 582 0
	stw 29,8(11)
	stw 29,12(11)
	.loc 1 583 0
	stw 29,16(11)
	.loc 1 580 0
	stw 3,sock@l(27)
	.loc 1 589 0
	bl net_bind
	.loc 1 591 0
	lwz 3,sock@l(27)
	li 4,5
	bl net_listen
	.loc 1 594 0
	lwz 3,sock@l(27)
	mr 4,28
	addi 5,1,8
	bl net_accept
.LBE20:
	.loc 1 601 0
	lwz 0,100(1)
.LBB21:
	.loc 1 594 0
	lis 9,csock@ha
.LBE21:
	.loc 1 601 0
	lwz 27,76(1)
	lwz 28,80(1)
	mtlr 0
	lwz 29,84(1)
	addi 1,1,96
.LBB22:
	.loc 1 594 0
	stw 3,csock@l(9)
.LBE22:
	.loc 1 601 0
	blr
.LFE73:
	.size	_Z21Sys_AcceptLogTerminalv, .-_Z21Sys_AcceptLogTerminalv
	.align 2
	.globl _Z11CalcTangSp3P5_vecfPfS0_S0_
	.type	_Z11CalcTangSp3P5_vecfPfS0_S0_, @function
_Z11CalcTangSp3P5_vecfPfS0_S0_:
.LFB71:
	.loc 1 440 0
.LVL46:
	stwu 1,-136(1)
.LCFI36:
	mflr 0
.LCFI37:
	stw 29,84(1)
.LCFI38:
	mr 29,4
	stw 30,88(1)
.LCFI39:
	mr 30,5
	stw 31,92(1)
.LCFI40:
.LBB23:
	.loc 1 448 0
	addi 5,1,20
.LVL47:
.LBE23:
	.loc 1 440 0
	mr 31,3
.LBB26:
	.loc 1 448 0
	mr 3,4
.LVL48:
	addi 4,1,8
.LVL49:
.LBE26:
	.loc 1 440 0
	stfd 27,96(1)
.LCFI41:
	stfd 28,104(1)
.LCFI42:
	stfd 29,112(1)
.LCFI43:
	stfd 30,120(1)
.LCFI44:
	stfd 31,128(1)
.LCFI45:
	stw 26,72(1)
.LCFI46:
	mr 26,6
	stw 0,140(1)
.LCFI47:
	stw 27,76(1)
.LCFI48:
	stw 28,80(1)
.LCFI49:
.LBB27:
	.loc 1 448 0
	bl _Z6SortSTPfPiS0_
.LVL50:
	.loc 1 451 0
	lwz 4,12(1)
	addi 9,29,4
	.loc 1 453 0
	lwz 3,16(1)
	.loc 1 451 0
	lwz 11,8(1)
	slwi 10,4,3
	.loc 1 453 0
	slwi 0,3,3
	.loc 1 451 0
	lfsx 13,10,9
	slwi 11,11,3
	.loc 1 453 0
	lfsx 12,9,0
	.loc 1 451 0
	lfsx 0,11,9
	.loc 1 450 0
	lwz 9,24(1)
	.loc 1 453 0
	fsubs 29,12,0
.LVL51:
	.loc 1 450 0
	lwz 11,20(1)
	.loc 1 451 0
	fsubs 1,13,0
.LVL52:
	.loc 1 450 0
	slwi 9,9,3
	.loc 1 452 0
	lwz 0,28(1)
	.loc 1 450 0
	slwi 11,11,3
	lfsx 12,9,29
	.loc 1 458 0
	lis 9,.LC1@ha
	.loc 1 455 0
	fsubs 31,1,29
.LVL53:
	.loc 1 452 0
	slwi 0,0,3
	.loc 1 458 0
	lfs 0,.LC1@l(9)
	.loc 1 450 0
	lfsx 13,11,29
	.loc 1 452 0
	lfsx 11,29,0
	.loc 1 458 0
	fcmpu 7,31,0
	.loc 1 450 0
	fsubs 28,12,13
.LVL54:
	.loc 1 452 0
	fsubs 27,11,13
.LVL55:
	.loc 1 454 0
	fsubs 30,28,27
.LVL56:
	.loc 1 458 0
	beq- 7,.L48
.LBB25:
	.loc 1 463 0
	fdivs 1,1,31
.LVL57:
	mulli 3,3,12
	addi 28,1,56
	.loc 1 464 0
	addi 29,1,44
.LVL58:
	.loc 1 463 0
	add 3,3,31
	mr 4,28
	.loc 1 465 0
	addi 27,1,32
	.loc 1 463 0
	bl ps_guVecScale
	.loc 1 464 0
	fdivs 1,29,31
	lwz 3,12(1)
	mr 4,29
	mulli 3,3,12
	add 3,3,31
	bl ps_guVecScale
	.loc 1 465 0
	mr 3,28
	mr 4,29
	mr 5,27
	bl ps_guVecSub
	.loc 1 466 0
	lwz 4,8(1)
	mr 3,27
	mr 5,30
	mulli 4,4,12
	add 4,4,31
	bl ps_guVecSub
.LBE25:
	.loc 1 472 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	fcmpu 7,30,0
	beq- 7,.L52
.LVL59:
.L57:
.LBB24:
	.loc 1 477 0
	fdivs 1,28,30
	lwz 3,28(1)
	addi 27,1,32
	.loc 1 478 0
	addi 29,1,44
.LVL60:
	.loc 1 477 0
	mulli 3,3,12
	mr 4,27
	.loc 1 479 0
	addi 28,1,56
	.loc 1 477 0
	add 3,3,31
	bl ps_guVecScale
	.loc 1 478 0
	fdivs 1,27,30
	lwz 3,24(1)
	mr 4,29
	mulli 3,3,12
	add 3,3,31
	bl ps_guVecScale
	.loc 1 479 0
	mr 3,27
	mr 4,29
	mr 5,28
	bl ps_guVecSub
	.loc 1 480 0
	lwz 3,20(1)
	mr 4,28
	mr 5,26
	mulli 3,3,12
	add 3,3,31
	bl ps_guVecSub
.LBE24:
.LBE27:
	.loc 1 486 0
	lwz 0,140(1)
	lwz 26,72(1)
.LVL61:
	lwz 27,76(1)
	mtlr 0
	lwz 28,80(1)
	lwz 29,84(1)
	lwz 30,88(1)
.LVL62:
	lwz 31,92(1)
.LVL63:
	lfd 27,96(1)
.LVL64:
	lfd 28,104(1)
.LVL65:
	lfd 29,112(1)
.LVL66:
	lfd 30,120(1)
.LVL67:
	lfd 31,128(1)
.LVL68:
	addi 1,1,136
	blr
.LVL69:
.L48:
.LBB28:
	.loc 1 468 0
	mulli 3,3,12
	mr 5,30
	mulli 4,4,12
	add 3,3,31
	add 4,4,31
	bl ps_guVecSub
.LVL70:
	.loc 1 472 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	fcmpu 7,30,0
	bne- 7,.L57
.L52:
	.loc 1 482 0
	lwz 3,24(1)
	mr 5,26
	lwz 4,28(1)
	mulli 3,3,12
	mulli 4,4,12
	add 3,3,31
	add 4,4,31
	bl ps_guVecSub
.LBE28:
	.loc 1 486 0
	lwz 0,140(1)
	lwz 26,72(1)
.LVL71:
	lwz 27,76(1)
	mtlr 0
	lwz 28,80(1)
	lwz 29,84(1)
.LVL72:
	lwz 30,88(1)
.LVL73:
	lwz 31,92(1)
.LVL74:
	lfd 27,96(1)
.LVL75:
	lfd 28,104(1)
.LVL76:
	lfd 29,112(1)
.LVL77:
	lfd 30,120(1)
.LVL78:
	lfd 31,128(1)
.LVL79:
	addi 1,1,136
	blr
.LFE71:
	.size	_Z11CalcTangSp3P5_vecfPfS0_S0_, .-_Z11CalcTangSp3P5_vecfPfS0_S0_
	.align 2
	.globl _Z10CalcTangSpP5_vecfPfS0_S0_
	.type	_Z10CalcTangSpP5_vecfPfS0_S0_, @function
_Z10CalcTangSpP5_vecfPfS0_S0_:
.LFB69:
	.loc 1 375 0
.LVL80:
	mflr 0
.LCFI50:
	stwu 1,-152(1)
.LCFI51:
	stfd 28,120(1)
.LCFI52:
	stw 0,156(1)
.LCFI53:
	stfd 31,144(1)
.LCFI54:
.LBB29:
	.loc 1 380 0
	lfs 13,4(4)
	.loc 1 379 0
	lfs 0,0(4)
	.loc 1 382 0
	lfs 28,12(4)
	.loc 1 379 0
	lfs 31,16(4)
	.loc 1 382 0
	fsubs 28,28,13
.LVL81:
.LBE29:
	.loc 1 375 0
	stfd 29,128(1)
.LCFI55:
.LBB30:
	.loc 1 379 0
	fsubs 31,31,0
.LVL82:
.LBE30:
	.loc 1 375 0
	stfd 30,136(1)
.LCFI56:
	stw 27,100(1)
.LCFI57:
.LBB31:
	.loc 1 383 0
	addi 27,1,20
.LBE31:
	.loc 1 375 0
	stw 29,108(1)
.LCFI58:
	mr 29,3
.LBB32:
	.loc 1 380 0
	lfs 29,20(4)
	.loc 1 383 0
	addi 3,3,24
.LVL83:
	.loc 1 381 0
	lfs 30,8(4)
	.loc 1 383 0
	mr 4,29
.LVL84:
.LBE32:
	.loc 1 375 0
	stw 25,92(1)
.LCFI59:
	mr 25,5
	stw 28,104(1)
.LCFI60:
.LBB33:
	.loc 1 383 0
	mr 5,27
.LVL85:
	.loc 1 384 0
	addi 28,1,8
	.loc 1 380 0
	fsubs 29,29,13
.LVL86:
	.loc 1 381 0
	fsubs 30,30,0
.LVL87:
.LBE33:
	.loc 1 375 0
	stw 26,96(1)
.LCFI61:
	.loc 1 375 0
	mr 26,6
.LBB34:
	.loc 1 383 0
	bl ps_guVecSub
.LVL88:
	.loc 1 384 0
	mr 5,28
	mr 4,29
	addi 3,29,12
	bl ps_guVecSub
	.loc 1 386 0
	fmuls 0,28,31
	lis 9,.LC2@ha
	.loc 1 387 0
	fmr 1,31
	.loc 1 386 0
	lfs 31,.LC2@l(9)
.LVL89:
	.loc 1 387 0
	addi 4,1,32
	.loc 1 386 0
	fmsubs 0,30,29,0
	.loc 1 387 0
	mr 3,28
	.loc 1 386 0
	fdivs 31,31,0
.LVL90:
	.loc 1 387 0
	bl ps_guVecScale
.LVL91:
	.loc 1 388 0
	mr 3,27
	addi 4,1,56
	fmr 1,30
	bl ps_guVecScale
	.loc 1 389 0
	fmr 1,29
	mr 3,28
	addi 4,1,44
	bl ps_guVecScale
	.loc 1 390 0
	fmr 1,28
	mr 3,27
	addi 4,1,68
	bl ps_guVecScale
	.loc 1 392 0
	lfs 0,68(1)
	lfs 7,44(1)
	.loc 1 395 0
	fneg 12,31
	.loc 1 393 0
	lfs 8,48(1)
	.loc 1 392 0
	fsubs 7,7,0
	.loc 1 393 0
	lfs 0,72(1)
	.loc 1 394 0
	lfs 10,52(1)
	.loc 1 393 0
	fsubs 8,8,0
	.loc 1 394 0
	lfs 0,76(1)
	.loc 1 395 0
	lfs 9,56(1)
	.loc 1 392 0
	fmuls 7,7,31
	.loc 1 394 0
	fsubs 10,10,0
	.loc 1 395 0
	lfs 0,32(1)
	.loc 1 396 0
	lfs 11,60(1)
	.loc 1 393 0
	fmuls 8,8,31
	.loc 1 395 0
	fsubs 9,9,0
	.loc 1 396 0
	lfs 0,36(1)
	.loc 1 397 0
	lfs 13,64(1)
	.loc 1 394 0
	fmuls 10,10,31
	.loc 1 396 0
	fsubs 11,11,0
	.loc 1 397 0
	lfs 0,40(1)
	.loc 1 395 0
	fmuls 9,12,9
.LBE34:
	.loc 1 398 0
	lwz 0,156(1)
.LBB35:
	.loc 1 397 0
	fsubs 13,13,0
	.loc 1 394 0
	stfs 10,8(25)
	.loc 1 392 0
	stfs 7,0(25)
.LBE35:
	.loc 1 398 0
	mtlr 0
.LBB36:
	.loc 1 393 0
	stfs 8,4(25)
	.loc 1 397 0
	fmuls 13,12,13
	.loc 1 395 0
	stfs 9,0(26)
	.loc 1 396 0
	fmuls 12,12,11
.LBE36:
	.loc 1 398 0
	lwz 25,92(1)
.LVL92:
	lwz 27,100(1)
.LBB37:
	.loc 1 397 0
	stfs 13,8(26)
	.loc 1 396 0
	stfs 12,4(26)
.LBE37:
	.loc 1 398 0
	lwz 28,104(1)
	lwz 26,96(1)
.LVL93:
	lwz 29,108(1)
.LVL94:
	lfd 28,120(1)
.LVL95:
	lfd 29,128(1)
.LVL96:
	lfd 30,136(1)
.LVL97:
	lfd 31,144(1)
.LVL98:
	addi 1,1,152
	blr
.LFE69:
	.size	_Z10CalcTangSpP5_vecfPfS0_S0_, .-_Z10CalcTangSpP5_vecfPfS0_S0_
	.align 2
	.globl _Z11CalcTangSp2P5_vecfPfS0_S0_
	.type	_Z11CalcTangSp2P5_vecfPfS0_S0_, @function
_Z11CalcTangSp2P5_vecfPfS0_S0_:
.LFB72:
	.loc 1 488 0
.LVL99:
	mflr 0
.LCFI62:
	stwu 1,-112(1)
.LCFI63:
	stfd 31,104(1)
.LCFI64:
	stw 0,116(1)
.LCFI65:
	stw 23,28(1)
.LCFI66:
	mr 23,5
.LBB38:
	.loc 1 497 0
	lfs 11,16(4)
	lfs 31,0(4)
.LBE38:
	.loc 1 488 0
	stw 24,32(1)
.LCFI67:
	mr 24,6
.LBB41:
	.loc 1 497 0
	fcmpu 7,11,31
.LBE41:
	.loc 1 488 0
	stw 31,60(1)
.LCFI68:
	stfd 26,64(1)
.LCFI69:
	mr 31,3
.LBB42:
	.loc 1 497 0
	cror 30,28,30
.LBE42:
	.loc 1 488 0
	stfd 27,72(1)
.LCFI70:
	stfd 28,80(1)
.LCFI71:
	stfd 29,88(1)
.LCFI72:
	stfd 30,96(1)
.LCFI73:
	stw 25,36(1)
.LCFI74:
	stw 26,40(1)
.LCFI75:
	stw 27,44(1)
.LCFI76:
	stw 28,48(1)
.LCFI77:
	stw 29,52(1)
.LCFI78:
	stw 30,56(1)
.LCFI79:
.LBB43:
	.loc 1 497 0
	beq- 7,.L61
.LVL100:
	lfs 30,8(4)
.L63:
	.loc 1 500 0
	fcmpu 7,31,30
	cror 30,29,30
	bne- 7,.L86
	fcmpu 7,11,30
	cror 30,29,30
	mfcr 10
	rlwinm 10,10,31,1
.LVL101:
	mulli 9,10,3
.LVL102:
	addi 0,10,2
	addi 25,10,1
.LVL103:
	mr 11,10
	subf 0,9,0
	slwi 10,10,3
.LVL104:
	slwi 9,25,3
	slwi 8,0,3
	lfsx 30,4,9
	mulli 6,0,12
	lfsx 31,4,10
	mulli 7,11,12
	lfsx 11,4,8
.L66:
	.loc 1 506 0
	lfs 13,20(4)
	addi 8,4,4
	lfs 12,4(4)
	fcmpu 7,13,12
	cror 30,28,30
	beq- 7,.L69
.L87:
	lfs 0,12(4)
.L71:
	.loc 1 509 0
	fcmpu 7,12,0
	cror 30,29,30
	beq- 7,.L75
	li 26,1
	li 11,8
	li 9,0
	li 0,16
	li 27,24
	li 30,0
.L74:
	.loc 1 517 0
	fsubs 29,11,31
.LVL105:
	.loc 1 520 0
	lis 10,.LC1@ha
	lfs 13,.LC1@l(10)
	.loc 1 518 0
	lfsx 0,8,0
	.loc 1 520 0
	fcmpu 7,29,13
	.loc 1 516 0
	lfsx 28,8,9
	lfsx 26,8,11
	.loc 1 518 0
	fsubs 27,0,28
.LVL106:
	.loc 1 520 0
	beq- 7,.L77
.L88:
.LBB40:
	.loc 1 522 0
	add 28,31,7
	addi 29,1,8
	add 3,31,6
	mr 5,29
	mr 4,28
.LVL107:
	bl ps_guVecSub
	.loc 1 523 0
	fsubs 1,30,31
	mr 3,29
	mr 4,29
	fdivs 1,1,29
	bl ps_guVecScale
	.loc 1 524 0
	mr 3,29
	mr 4,28
	mr 5,29
	bl ps_guVecAdd
	.loc 1 525 0
	mulli 3,25,12
	mr 4,29
	mr 5,24
	add 3,3,31
	bl ps_guVecSub
.LBE40:
	.loc 1 530 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	fcmpu 7,27,0
	beq- 7,.L81
.L89:
.LBB39:
	.loc 1 532 0
	addi 29,1,8
	add 28,31,30
	mr 5,29
	add 3,31,27
	mr 4,28
	bl ps_guVecSub
	.loc 1 533 0
	fsubs 1,26,28
	mr 3,29
	mr 4,29
	fdivs 1,1,27
	bl ps_guVecScale
	.loc 1 534 0
	mr 3,29
	mr 4,28
	mr 5,29
	bl ps_guVecAdd
	.loc 1 535 0
	mulli 3,26,12
	mr 4,29
	mr 5,23
	add 3,3,31
	bl ps_guVecSub
.L85:
.LBE39:
.LBE43:
	.loc 1 540 0
	lwz 0,116(1)
	lwz 23,28(1)
.LVL108:
	lwz 24,32(1)
.LVL109:
	mtlr 0
	lwz 25,36(1)
	lwz 26,40(1)
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
.LVL110:
	lfd 26,64(1)
	lfd 27,72(1)
.LVL111:
	lfd 28,80(1)
	lfd 29,88(1)
.LVL112:
	lfd 30,96(1)
	lfd 31,104(1)
	addi 1,1,112
	blr
.LVL113:
.L61:
.LBB44:
	.loc 1 497 0
	lfs 30,8(4)
	fcmpu 7,11,30
	cror 30,28,30
	bne- 7,.L63
	.loc 1 506 0
	lfs 13,20(4)
	.loc 1 497 0
	fmr 0,11
	.loc 1 506 0
	lfs 12,4(4)
	.loc 1 497 0
	fmr 11,30
	li 25,0
	fmr 30,31
	.loc 1 506 0
	fcmpu 7,13,12
	.loc 1 497 0
	li 6,12
	fmr 31,0
	li 7,24
	.loc 1 506 0
	cror 30,28,30
	addi 8,4,4
	bne- 7,.L87
.L69:
	lfs 0,12(4)
	fcmpu 7,13,0
	cror 30,28,30
	bne- 7,.L71
	.loc 1 517 0
	fsubs 29,11,31
.LVL114:
	.loc 1 520 0
	lis 10,.LC1@ha
	lfs 13,.LC1@l(10)
	.loc 1 506 0
	li 9,16
	li 0,8
	.loc 1 516 0
	lfsx 28,8,9
	.loc 1 520 0
	fcmpu 7,29,13
	.loc 1 518 0
	lfsx 0,8,0
	.loc 1 506 0
	li 11,0
	li 26,0
	li 27,12
	li 30,24
	.loc 1 516 0
	lfsx 26,8,11
	.loc 1 518 0
	fsubs 27,0,28
.LVL115:
	.loc 1 520 0
	bne- 7,.L88
.L77:
	.loc 1 527 0
	add 3,31,7
	add 4,31,6
.LVL116:
	mr 5,24
	bl ps_guVecSub
	.loc 1 530 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	fcmpu 7,27,0
	bne- 7,.L89
.L81:
	.loc 1 537 0
	add 4,31,27
	add 3,31,30
	mr 5,23
	bl ps_guVecSub
	b .L85
.LVL117:
.L86:
	.loc 1 500 0
	li 25,1
	li 6,24
	li 7,0
	b .L66
.L75:
	.loc 1 509 0
	fcmpu 7,13,0
	cror 30,29,30
	mfcr 10
	rlwinm 10,10,31,1
.LVL118:
	mulli 11,10,3
.LVL119:
	addi 0,10,2
	addi 26,10,1
.LVL120:
	mulli 30,10,12
.LVL121:
	subf 0,11,0
	slwi 9,10,3
	mulli 27,0,12
	slwi 11,26,3
	slwi 0,0,3
	b .L74
.LBE44:
.LFE72:
	.size	_Z11CalcTangSp2P5_vecfPfS0_S0_, .-_Z11CalcTangSp2P5_vecfPfS0_S0_
	.align 2
	.globl _Z8setlightPA4_ffff9_gx_colorS1_S1_
	.type	_Z8setlightPA4_ffff9_gx_colorS1_S1_, @function
_Z8setlightPA4_ffff9_gx_colorS1_S1_:
.LFB67:
	.loc 1 291 0
.LVL122:
	stwu 1,-160(1)
.LCFI80:
.LBB45:
	.loc 1 297 0
	lis 9,.LC3@ha
	lfd 13,.LC3@l(9)
	lis 9,.LC5@ha
.LBE45:
	.loc 1 291 0
	stfd 31,152(1)
.LCFI81:
.LBB46:
	.loc 1 298 0
	fmr 31,2
.LBE46:
	.loc 1 291 0
	stfd 30,144(1)
.LCFI82:
.LBB47:
	.loc 1 297 0
	fmr 30,1
	lfs 0,.LC5@l(9)
.LBE47:
	.loc 1 291 0
	mflr 0
.LCFI83:
.LBB48:
	.loc 1 298 0
	fmul 31,31,13
.LBE48:
	.loc 1 291 0
	stfd 27,120(1)
.LCFI84:
	stfd 28,128(1)
.LCFI85:
.LBB49:
	.loc 1 306 0
	lis 9,.LC1@ha
	.loc 1 297 0
	fmul 30,30,13
.LBE49:
	.loc 1 291 0
	stw 0,164(1)
.LCFI86:
	stfd 29,136(1)
.LCFI87:
.LBB50:
	.loc 1 298 0
	fdiv 31,31,0
.LBE50:
	.loc 1 291 0
	stw 26,96(1)
.LCFI88:
	stw 27,100(1)
.LCFI89:
	mr 26,4
	stw 28,104(1)
.LCFI90:
.LBB51:
	.loc 1 305 0
	addi 28,1,8
.LBE51:
	.loc 1 291 0
	stw 29,108(1)
.LCFI91:
	mr 29,3
	stw 23,84(1)
.LCFI92:
.LBB52:
	.loc 1 310 0
	addi 27,1,72
.LBE52:
	.loc 1 291 0
	stw 24,88(1)
.LCFI93:
	stw 25,92(1)
.LCFI94:
.LBB53:
	.loc 1 306 0
	lfs 27,.LC1@l(9)
.LBE53:
	.loc 1 291 0
	lwz 24,0(6)
	lwz 23,0(7)
	lwz 25,0(5)
.LBB54:
	.loc 1 297 0
	fdiv 30,30,0
	.loc 1 298 0
	frsp 31,31
.LVL123:
.LBE54:
	.loc 1 291 0
	fmr 28,3
.LBB55:
	.loc 1 297 0
	frsp 30,30
.LVL124:
	.loc 1 299 0
	fmr 1,31
.LVL125:
	bl cosf
.LVL126:
	fmuls 29,1,28
	fmr 1,30
	bl sinf
	fmuls 29,29,1
	.loc 1 300 0
	fmr 1,31
	.loc 1 299 0
	stfs 29,0(29)
	.loc 1 300 0
	bl sinf
	fmuls 0,1,28
	.loc 1 301 0
	fmr 1,31
	.loc 1 300 0
	stfs 0,4(29)
	.loc 1 301 0
	bl cosf
	fmuls 31,1,28
.LVL127:
	fmr 1,30
	bl cosf
	.loc 1 303 0
	mr 5,29
	.loc 1 301 0
	fmuls 31,31,1
	.loc 1 303 0
	mr 4,29
	mr 3,26
	.loc 1 301 0
	stfs 31,8(29)
	.loc 1 303 0
	bl ps_guVecMultiply
	.loc 1 305 0
	lfs 1,0(29)
	lfs 2,4(29)
	mr 3,28
	lfs 3,8(29)
	bl GX_InitLightPos
	.loc 1 306 0
	fmr 2,27
	fmr 3,27
	lis 9,.LC6@ha
	lfs 1,.LC6@l(9)
	mr 3,28
	bl GX_InitLightDir
	.loc 1 308 0
	lis 9,.LC2@ha
	lfs 31,.LC2@l(9)
	fmr 2,27
	fmr 3,27
	mr 3,28
	fmr 1,31
	bl GX_InitLightAttnA
	.loc 1 309 0
	fmr 1,31
	fmr 2,27
	mr 3,28
	fmr 3,27
	bl GX_InitLightAttnK
	.loc 1 310 0
	mr 4,27
	mr 3,28
	stw 25,72(1)
	bl GX_InitLightColor
	.loc 1 311 0
	mr 3,28
	li 4,1
	bl GX_LoadLightObj
	.loc 1 314 0
	li 3,1
	bl GX_SetNumChans
	.loc 1 315 0
	li 5,0
	li 6,0
	li 7,1
	li 8,1
	li 9,1
	li 3,0
	li 4,1
	bl GX_SetChanCtrl
	.loc 1 316 0
	mr 4,27
	li 3,4
	stw 24,72(1)
	bl GX_SetChanAmbColor
	.loc 1 317 0
	mr 4,27
	li 3,4
	stw 23,72(1)
	bl GX_SetChanMatColor
.LBE55:
	.loc 1 320 0
	lwz 0,164(1)
	mr 3,29
	lwz 23,84(1)
.LVL128:
	lwz 24,88(1)
.LVL129:
	mtlr 0
	lwz 25,92(1)
.LVL130:
	lwz 26,96(1)
.LVL131:
	lwz 27,100(1)
	lwz 28,104(1)
	lwz 29,108(1)
	lfd 27,120(1)
	lfd 28,128(1)
.LVL132:
	lfd 29,136(1)
	lfd 30,144(1)
.LVL133:
	lfd 31,152(1)
	addi 1,1,160
	blr
.LFE67:
	.size	_Z8setlightPA4_ffff9_gx_colorS1_S1_, .-_Z8setlightPA4_ffff9_gx_colorS1_S1_
	.globl _Unwind_Resume
	.align 2
	.globl _Z25GL_CreateIntensityRampTexP10_gx_texobj
	.type	_Z25GL_CreateIntensityRampTexP10_gx_texobj, @function
_Z25GL_CreateIntensityRampTexP10_gx_texobj:
.LFB66:
	.loc 1 249 0
.LVL134:
	mflr 0
.LCFI95:
	stwu 1,-56(1)
.LCFI96:
.LBB56:
	.loc 1 253 0
	li 4,4096
.LBE56:
	.loc 1 249 0
	stw 27,36(1)
.LCFI97:
	mr 27,3
	stw 0,60(1)
.LCFI98:
.LBB69:
	.loc 1 253 0
	li 3,32
.LVL135:
	.loc 1 251 0
	lwz 0,0(1)
.LBE69:
	.loc 1 249 0
	stw 28,40(1)
.LCFI99:
	mr 28,1
	stw 30,48(1)
.LCFI100:
	stw 31,52(1)
.LCFI101:
	mr 31,1
.LCFI102:
	stw 26,32(1)
.LCFI103:
	stw 29,44(1)
.LCFI104:
.LBB70:
	.loc 1 251 0
	stwu 0,-4112(1)
	addi 0,1,23
	rlwinm 30,0,0,0,27
.LEHB0:
	.loc 1 253 0
	bl memalign
	mr 29,3
.LVL136:
	.loc 1 254 0
	li 4,0
	mr 3,30
	li 5,4096
	bl memset
.LBB68:
	.loc 1 261 0
	lis 9,.LC11@ha
	lfs 9,.LC11@l(9)
	lis 9,.LC13@ha
	lis 11,.LC12@ha
	lfs 11,.LC13@l(9)
	.loc 1 263 0
	lis 9,.LC1@ha
	.loc 1 261 0
	lfs 10,.LC12@l(11)
	.loc 1 263 0
	lfs 8,.LC1@l(9)
.LBE68:
	.loc 1 254 0
	li 0,0
	li 6,0
.LVL137:
.L93:
	extsh. 7,6
.LBB67:
	.loc 1 275 0
	slwi 8,0,6
.LBE67:
.LBB66:
	.loc 1 263 0
	li 0,64
.LBE66:
.LBB65:
	.loc 1 275 0
	li 10,0
.LBE65:
.LBB64:
	.loc 1 263 0
	mtctr 0
.LBE64:
.LBB63:
	.loc 1 275 0
	li 11,0
	b .L94
.LVL138:
.L130:
.LBE63:
.LBB62:
	.loc 1 261 0
	xoris 0,0,0x8000
.LVL139:
	lis 9,0x4330
	stw 0,12(31)
	fmr 12,9
	stw 9,8(31)
	xoris 0,7,0x8000
	stw 0,20(31)
	lfd 0,8(31)
.LVL140:
	stw 9,16(31)
	fsub 0,0,12
	lfd 13,16(31)
	frsp 0,0
	fsub 13,13,12
	fadds 0,0,0
	frsp 13,13
	fsubs 0,0,10
	fdivs 0,0,13
	fmuls 0,0,11
.LVL141:
	.loc 1 262 0
	fcmpu 7,0,11
	bgt- 7,.L95
	.loc 1 263 0
	fcmpu 7,0,8
	li 0,0
	blt+ 7,.L101
	fctiwz 13,0
.LVL142:
	addi 26,31,24
	stfiwx 13,0,26
	lbz 0,27(31)
.LVL143:
.L101:
	.loc 1 265 0
	add 9,10,8
	.loc 1 249 0
	addi 11,11,1
	.loc 1 265 0
	stbx 0,9,30
	.loc 1 249 0
	mr 10,11
.LBE62:
	.loc 1 256 0
	bdz .L129
.L94:
	.loc 1 255 0
	extsh 0,11
.LVL144:
.LBB61:
	.loc 1 259 0
	bne- 0,.L130
.L95:
	.loc 1 265 0
	add 9,10,8
	.loc 1 263 0
	li 0,255
.LVL145:
	.loc 1 249 0
	addi 11,11,1
	.loc 1 265 0
	stbx 0,9,30
	.loc 1 249 0
	mr 10,11
.LBE61:
	.loc 1 256 0
	bdnz .L94
.L129:
	.loc 1 249 0
	addi 0,6,1
	.loc 1 255 0
	cmpwi 7,0,64
	.loc 1 249 0
	mr 6,0
	.loc 1 255 0
	bne+ 7,.L93
	.loc 1 268 0
	mr 3,29
	li 4,0
	li 5,4096
	bl memset
.LVL146:
	mr 3,29
	li 12,0
.LVL147:
	li 0,0
.LVL148:
.L104:
	slwi 4,0,6
.LBB60:
	.loc 1 275 0
	mr 6,3
	li 5,0
	li 0,0
.L109:
	add 7,0,4
	li 8,0
.L107:
	lbzx 0,30,7
	li 26,7
.LBE60:
	.loc 1 288 0
	add 9,30,7
.LBB59:
	.loc 1 275 0
	mtctr 26
	stbx 0,6,8
	addi 9,9,1
.LBE59:
	.loc 1 288 0
	add 10,6,8
.LBB58:
	.loc 1 275 0
	li 11,1
.L105:
	lbz 0,0(9)
	.loc 1 274 0
	addi 9,9,1
	.loc 1 275 0
	stbx 0,11,10
	.loc 1 274 0
	addi 11,11,1
	bdnz .L105
	.loc 1 273 0
	cmpwi 7,8,24
	.loc 1 274 0
	addi 7,7,64
	.loc 1 273 0
	addi 8,8,8
	bne+ 7,.L107
	.loc 1 249 0
	addi 0,5,8
	.loc 1 278 0
	addi 6,6,32
	.loc 1 249 0
	rlwinm 0,0,0,0xffff
.LBE58:
	.loc 1 271 0
	cmpwi 7,0,64
.LBB57:
	.loc 1 249 0
	extsh 0,0
.LBE57:
	.loc 1 271 0
	mr 5,0
	bne+ 7,.L109
	.loc 1 249 0
	addi 0,12,4
	.loc 1 270 0
	addi 3,3,256
	.loc 1 249 0
	rlwinm 0,0,0,0xffff
	.loc 1 270 0
	cmpwi 7,0,64
	.loc 1 249 0
	extsh 0,0
	.loc 1 270 0
	mr 12,0
	bne+ 7,.L104
	.loc 1 284 0
	mr 3,27
	mr 4,29
	li 5,64
.LVL149:
	li 6,64
.LVL150:
	li 7,1
	li 8,0
	li 9,0
	li 10,1
	bl GX_InitTexObj
.LVL151:
	.loc 1 287 0
	mr 3,29
	li 4,16384
	bl DCFlushRange
.LEHE0:
	lwz 0,0(1)
	stw 0,0(28)
	mr 1,28
.LBE70:
	.loc 1 288 0
	lwz 11,0(1)
	lwz 0,4(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
.LVL152:
	mtlr 0
	lwz 28,-16(11)
	lwz 29,-12(11)
.LVL153:
	lwz 30,-8(11)
	lwz 31,-4(11)
	mr 1,11
	blr
.LVL154:
.L115:
.L113:
.LBB71:
	.loc 1 287 0
	lwz 0,0(1)
	stw 0,0(28)
	mr 1,28
.LEHB1:
	bl _Unwind_Resume
.LEHE1:
.LBE71:
.LFE66:
	.size	_Z25GL_CreateIntensityRampTexP10_gx_texobj, .-_Z25GL_CreateIntensityRampTexP10_gx_texobj
	.section	.gcc_except_table,"a",@progbits
.LLSDA66:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE66-.LLSDACSB66
.LLSDACSB66:
	.uleb128 .LEHB0-.LFB66
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L115-.LFB66
	.uleb128 0x0
	.uleb128 .LEHB1-.LFB66
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0x0
	.uleb128 0x0
.LLSDACSE66:
	.section	".text"
	.align 2
	.globl _Z16GL_CreateTubeTexP10_gx_texobj
	.type	_Z16GL_CreateTubeTexP10_gx_texobj, @function
_Z16GL_CreateTubeTexP10_gx_texobj:
.LFB63:
	.loc 1 108 0
.LVL155:
	lis 0,0xffff
	mr 12,1
	ori 0,0,32640
.LBB72:
	.loc 1 112 0
	li 5,0
.LBE72:
	.loc 1 108 0
	stwux 1,1,0
.LCFI105:
	mflr 0
.LCFI106:
.LBB82:
	.loc 1 112 0
	ori 5,5,32768
	li 4,0
.LBE82:
	.loc 1 108 0
	stfd 22,-80(12)
.LCFI107:
	stfd 23,-72(12)
.LCFI108:
	stfd 24,-64(12)
.LCFI109:
	stfd 25,-56(12)
.LCFI110:
	stfd 26,-48(12)
.LCFI111:
	stfd 27,-40(12)
.LCFI112:
	stw 26,-104(12)
.LCFI113:
	mr 26,3
	stw 27,-100(12)
.LCFI114:
.LBB83:
	.loc 1 112 0
	li 27,0
.LBE83:
	.loc 1 108 0
	stw 28,-96(12)
.LCFI115:
.LBB84:
	.loc 1 112 0
	addi 28,1,8
.LBE84:
	.loc 1 108 0
	stw 30,-88(12)
.LCFI116:
.LBB85:
	.loc 1 112 0
	mr 3,28
.LVL156:
.LBE85:
	.loc 1 108 0
	stfd 28,-32(12)
.LCFI117:
	addis 30,1,0x1
	stfd 29,-24(12)
.LCFI118:
	stfd 30,-16(12)
.LCFI119:
	stfd 31,-8(12)
.LCFI120:
	stw 29,-92(12)
.LCFI121:
	stw 31,-84(12)
.LCFI122:
	stw 0,4(12)
.LCFI123:
.LBB86:
	.loc 1 112 0
	bl memset
	lis 9,.LC11@ha
	.loc 1 147 0
	lfs 0,.LC11@l(9)
.LBB73:
	.loc 1 117 0
	lis 11,.LC2@ha
	lis 9,.LC17@ha
	lfs 25,.LC2@l(11)
	lfs 24,.LC17@l(9)
	.loc 1 123 0
	lis 11,.LC19@ha
	lis 9,.LC18@ha
.LBE73:
	.loc 1 147 0
	fmr 23,0
.LBB74:
	.loc 1 115 0
	fmr 22,0
	.loc 1 123 0
	lfs 26,.LC18@l(9)
	lfs 27,.LC19@l(11)
.LVL157:
.L132:
.LBE74:
	.loc 1 147 0
	subfic 0,27,64
	lis 9,0x4330
	xoris 0,0,0x8000
	stw 9,-32760(30)
	stw 0,-32756(30)
.LBB75:
	.loc 1 115 0
	fmr 28,22
.LBE75:
	.loc 1 147 0
	slwi 0,27,8
	li 31,-64
	lfd 0,-32760(30)
	add 29,28,0
	fsub 0,0,23
	frsp 30,0
	fmuls 29,30,30
.L133:
.LBB76:
	.loc 1 115 0
	xoris 0,31,0x8000
	lis 9,0x4330
	stw 0,-32756(30)
	stw 9,-32760(30)
	lfd 31,-32760(30)
	fsub 31,31,28
	frsp 31,31
.LVL158:
	.loc 1 117 0
	fmadds 1,31,31,29
	fadds 1,1,24
	bl sqrtf
	.loc 1 123 0
	addi 9,30,-32748
	.loc 1 117 0
	fdivs 1,25,1
.LVL159:
.LBE76:
	.loc 1 114 0
	addi 0,31,1
	extsh 31,0
	cmpwi 7,31,64
.LBB77:
	.loc 1 123 0
	fmuls 31,31,1
.LVL160:
	fmuls 1,1,30
.LVL161:
	fmadds 31,31,26,27
	fmadds 1,1,26,27
	fmr 0,31
	fctiwz 12,1
	fctiwz 13,0
	stfiwx 13,0,9
	addi 9,30,-32752
	stfiwx 12,0,9
	lbz 9,-32745(30)
	lbz 0,-32749(30)
	srwi 9,9,3
	rlwinm 0,0,3,21,26
	or 0,0,9
	sth 0,0(29)
.LBE77:
	.loc 1 114 0
	addi 29,29,2
	bne+ 7,.L133
	.loc 1 113 0
	cmpwi 7,27,127
	addi 27,27,1
	bne+ 7,.L132
	.loc 1 128 0
	li 4,0
	li 3,32
	ori 4,4,32768
	li 31,0
.LVL162:
	bl memalign
	mr 30,3
.LVL163:
.L136:
.LBB78:
	.loc 1 136 0
	mr 6,3
	mr 5,31
	li 4,0
.LVL164:
.L141:
	mr 7,5
	li 8,0
.L139:
.LBE78:
	.loc 1 147 0
	slwi 9,7,1
	add 11,8,6
.LBB79:
	.loc 1 136 0
	lhzx 0,28,9
.LBE79:
	.loc 1 147 0
	add 9,28,9
.LBB80:
	.loc 1 136 0
	addi 9,9,2
	addi 11,11,2
	sthx 0,8,6
	li 10,1
.L137:
	.loc 1 135 0
	cmpwi 7,10,3
	.loc 1 136 0
	lhz 0,0(9)
	.loc 1 135 0
	addi 10,10,1
	addi 9,9,2
	.loc 1 136 0
	sth 0,0(11)
	.loc 1 135 0
	addi 11,11,2
	bne+ 7,.L137
	.loc 1 134 0
	cmpwi 7,8,24
	.loc 1 135 0
	addi 7,7,128
	.loc 1 134 0
	addi 8,8,8
	bne+ 7,.L139
	.loc 1 108 0
	addi 0,4,4
	.loc 1 139 0
	addi 6,6,32
	.loc 1 108 0
	rlwinm 0,0,0,0xffff
	addi 5,5,4
.LBE80:
	.loc 1 132 0
	cmpwi 7,0,128
.LBB81:
	.loc 1 108 0
	extsh 4,0
.LBE81:
	.loc 1 132 0
	bne+ 7,.L141
	.loc 1 131 0
	cmpwi 7,31,15872
	.loc 1 132 0
	addi 3,3,1024
.LVL165:
	.loc 1 131 0
	addi 31,31,512
	bne+ 7,.L136
	.loc 1 143 0
	mr 3,26
.LVL166:
	mr 4,30
.LVL167:
	li 5,128
	li 6,128
	li 7,4
	li 8,0
	li 9,0
	li 10,1
.LVL168:
	bl GX_InitTexObj
	.loc 1 145 0
	li 4,0
	mr 3,30
	ori 4,4,32768
	bl DCFlushRange
.LBE86:
	.loc 1 147 0
	lwz 11,0(1)
	lwz 0,4(11)
	lwz 26,-104(11)
.LVL169:
	lwz 27,-100(11)
	mtlr 0
	lwz 28,-96(11)
	lwz 29,-92(11)
	lwz 30,-88(11)
.LVL170:
	lwz 31,-84(11)
	lfd 22,-80(11)
	lfd 23,-72(11)
	lfd 24,-64(11)
	lfd 25,-56(11)
	lfd 26,-48(11)
	lfd 27,-40(11)
	lfd 28,-32(11)
	lfd 29,-24(11)
	lfd 30,-16(11)
	lfd 31,-8(11)
	mr 1,11
	blr
.LFE63:
	.size	_Z16GL_CreateTubeTexP10_gx_texobj, .-_Z16GL_CreateTubeTexP10_gx_texobj
	.align 2
	.globl _Z26GL_CreateLightBulbInvTexI8P10_gx_texobj
	.type	_Z26GL_CreateLightBulbInvTexI8P10_gx_texobj, @function
_Z26GL_CreateLightBulbInvTexI8P10_gx_texobj:
.LFB65:
	.loc 1 199 0
.LVL171:
	stwu 1,-16520(1)
.LCFI124:
	mflr 0
.LCFI125:
.LBB87:
	.loc 1 202 0
	li 4,16384
.LBE87:
	.loc 1 199 0
	stw 23,16420(1)
.LCFI126:
	mr 23,3
.LBB101:
	.loc 1 202 0
	li 3,32
.LVL172:
.LBE101:
	.loc 1 199 0
	stfd 24,16456(1)
.LCFI127:
	stfd 25,16464(1)
.LCFI128:
	stfd 26,16472(1)
.LCFI129:
	stfd 27,16480(1)
.LCFI130:
	stfd 28,16488(1)
.LCFI131:
	stfd 29,16496(1)
.LCFI132:
	stw 22,16416(1)
.LCFI133:
	lis 22,.LC2@ha
	stw 24,16424(1)
.LCFI134:
	stw 25,16428(1)
.LCFI135:
.LBB102:
.LBB88:
	.loc 1 211 0
	li 25,0
.LBE88:
.LBE102:
	.loc 1 199 0
	stw 26,16432(1)
.LCFI136:
	stw 27,16436(1)
.LCFI137:
	stw 28,16440(1)
.LCFI138:
.LBB103:
	.loc 1 203 0
	li 28,0
.LBE103:
	.loc 1 199 0
	stw 29,16444(1)
.LCFI139:
.LBB104:
	.loc 1 203 0
	addi 29,1,8
.LBE104:
	.loc 1 199 0
	stw 0,16524(1)
.LCFI140:
	stfd 30,16504(1)
.LCFI141:
	stfd 31,16512(1)
.LCFI142:
	stw 30,16448(1)
.LCFI143:
	stw 31,16452(1)
.LCFI144:
.LBB105:
	.loc 1 202 0
	bl memalign
	mr 24,3
.LVL173:
	.loc 1 203 0
	li 4,128
	mr 3,29
	li 5,16384
	bl memset
	lis 9,.LC11@ha
.LBB89:
	.loc 1 234 0
	lfs 0,.LC11@l(9)
.LBE89:
.LBB90:
	.loc 1 211 0
	lis 9,.LC23@ha
	lis 11,.LC24@ha
	lfs 28,.LC23@l(9)
.LBE90:
.LBB91:
	.loc 1 234 0
	fmr 27,0
.LBE91:
.LBB92:
	.loc 1 217 0
	lis 9,.LC13@ha
	.loc 1 207 0
	fmr 26,0
	.loc 1 211 0
	lfs 25,.LC24@l(11)
	.loc 1 217 0
	lfs 29,.LC13@l(9)
	lis 11,.LC26@ha
	lis 9,.LC25@ha
	.loc 1 211 0
	lfs 24,.LC2@l(22)
	la 27,.LC25@l(9)
	la 26,.LC26@l(11)
.L158:
.LBE92:
.LBB93:
	.loc 1 234 0
	xoris 0,28,0x8000
	lis 9,0x4330
	stw 0,16396(1)
.LBE93:
.LBB94:
	.loc 1 207 0
	fmr 30,26
.LBE94:
.LBB95:
	.loc 1 234 0
	stw 9,16392(1)
	mulli 0,28,-128
	li 31,0
	lfd 0,16392(1)
	add 30,29,0
	fsub 0,0,27
	frsp 0,0
	fmuls 31,0,0
.L159:
.LBE95:
.LBB96:
	.loc 1 207 0
	xoris 0,31,0x8000
	lis 9,0x4330
	stw 0,16396(1)
	stw 9,16392(1)
	lfd 1,16392(1)
	fsub 1,1,30
	frsp 1,1
.LVL174:
	.loc 1 210 0
	fmadds 1,1,1,31
.LVL175:
	bl sqrtf
	.loc 1 211 0
	stw 25,16408(1)
	.loc 1 210 0
	fmr 0,1
.LVL176:
	.loc 1 211 0
	lfs 1,16408(1)
	fcmpu 7,0,28
	bgt- 7,.L163
	fmuls 0,0,25
.LVL177:
	fmuls 0,0,0
	fsubs 1,24,0
.LVL178:
.L163:
	.loc 1 213 0
	bl sqrtf
.LVL179:
	.loc 1 222 0
	mr 3,27
	.loc 1 217 0
	fmuls 0,1,29
.LVL180:
	.loc 1 219 0
	li 0,255
	fcmpu 7,0,29
	bgt- 7,.L167
	fctiwz 13,0
.LVL181:
	addi 9,1,16400
	stfiwx 13,0,9
	lbz 0,16403(1)
.LVL182:
.L167:
	.loc 1 221 0
	stb 0,0(30)
	.loc 1 222 0
	crxor 6,6,6
	bl printf
.LVL183:
	.loc 1 223 0
	lbz 4,0(30)
	mr 3,26
	.loc 1 224 0
	addi 30,30,1
	.loc 1 223 0
	crxor 6,6,6
	bl printf
	.loc 1 224 0
	li 3,10
	bl putchar
.LBE96:
	.loc 1 206 0
	cmpwi 7,31,-15
	addi 31,31,-1
	bne+ 7,.L159
	.loc 1 205 0
	cmpwi 7,28,-15
	addi 28,28,-1
	bne+ 7,.L158
	.loc 1 227 0
	mr 3,24
	li 4,0
	li 5,16384
	bl memset
	li 3,0
.LVL184:
.L170:
.LBB97:
	.loc 1 234 0
	add 6,24,3
	mr 5,3
	li 4,0
.L175:
	mr 7,5
	li 8,0
.L173:
	lbzx 0,29,7
	li 31,7
.LBE97:
	.loc 1 246 0
	add 9,29,7
.LBB98:
	.loc 1 234 0
	mtctr 31
	stbx 0,6,8
	addi 9,9,1
.LBE98:
	.loc 1 246 0
	add 10,6,8
.LBB99:
	.loc 1 234 0
	li 11,1
.L171:
	lbz 0,0(9)
	.loc 1 233 0
	addi 9,9,1
	.loc 1 234 0
	stbx 0,11,10
	.loc 1 233 0
	addi 11,11,1
	bdnz .L171
	.loc 1 232 0
	cmpwi 7,8,24
	.loc 1 233 0
	addi 7,7,128
	.loc 1 232 0
	addi 8,8,8
	bne+ 7,.L173
	.loc 1 199 0
	addi 0,4,8
	.loc 1 237 0
	addi 6,6,32
	.loc 1 199 0
	rlwinm 0,0,0,0xffff
	addi 5,5,8
.LBE99:
	.loc 1 230 0
	cmpwi 7,0,128
.LBB100:
	.loc 1 199 0
	extsh 4,0
.LBE100:
	.loc 1 230 0
	bne+ 7,.L175
	.loc 1 229 0
	cmpwi 7,3,15872
	addi 3,3,512
	bne+ 7,.L170
	.loc 1 243 0
	mr 3,23
	mr 4,24
.LVL185:
	li 10,1
	li 5,128
	li 6,128
.LVL186:
	li 7,1
	li 8,2
	li 9,2
	bl GX_InitTexObj
.LVL187:
	.loc 1 244 0
	lis 9,.LC27@ha
	lfs 2,.LC27@l(9)
	lis 9,.LC1@ha
	lfs 1,.LC2@l(22)
	mr 3,23
	lfs 3,.LC1@l(9)
	li 4,1
	li 5,1
	li 6,1
	li 7,1
	li 8,0
	bl GX_InitTexObjLOD
	.loc 1 245 0
	mr 3,24
	li 4,16384
	bl DCFlushRange
.LBE105:
	.loc 1 246 0
	lwz 0,16524(1)
	lwz 22,16416(1)
	lwz 23,16420(1)
.LVL188:
	mtlr 0
	lwz 24,16424(1)
.LVL189:
	lwz 25,16428(1)
	lwz 26,16432(1)
	lwz 27,16436(1)
	lwz 28,16440(1)
	lwz 29,16444(1)
	lwz 30,16448(1)
	lwz 31,16452(1)
	lfd 24,16456(1)
	lfd 25,16464(1)
	lfd 26,16472(1)
	lfd 27,16480(1)
	lfd 28,16488(1)
	lfd 29,16496(1)
	lfd 30,16504(1)
	lfd 31,16512(1)
	addi 1,1,16520
	blr
.LFE65:
	.size	_Z26GL_CreateLightBulbInvTexI8P10_gx_texobj, .-_Z26GL_CreateLightBulbInvTexI8P10_gx_texobj
	.align 2
	.globl _Z23GL_CreateLightBulbTexI8P10_gx_texobj
	.type	_Z23GL_CreateLightBulbTexI8P10_gx_texobj, @function
_Z23GL_CreateLightBulbTexI8P10_gx_texobj:
.LFB64:
	.loc 1 149 0
.LVL190:
	stwu 1,-16520(1)
.LCFI145:
	mflr 0
.LCFI146:
.LBB106:
	.loc 1 153 0
	li 4,16384
.LBE106:
	.loc 1 149 0
	stw 23,16420(1)
.LCFI147:
	mr 23,3
.LBB120:
	.loc 1 153 0
	li 3,32
.LVL191:
.LBE120:
	.loc 1 149 0
	stfd 24,16456(1)
.LCFI148:
	stfd 25,16464(1)
.LCFI149:
	stfd 26,16472(1)
.LCFI150:
	stfd 27,16480(1)
.LCFI151:
	stfd 28,16488(1)
.LCFI152:
	stfd 29,16496(1)
.LCFI153:
	stw 22,16416(1)
.LCFI154:
	lis 22,.LC2@ha
	stw 24,16424(1)
.LCFI155:
	stw 25,16428(1)
.LCFI156:
.LBB121:
.LBB107:
	.loc 1 164 0
	li 25,0
.LBE107:
.LBE121:
	.loc 1 149 0
	stw 26,16432(1)
.LCFI157:
	stw 27,16436(1)
.LCFI158:
	stw 28,16440(1)
.LCFI159:
.LBB122:
	.loc 1 154 0
	li 28,0
.LBE122:
	.loc 1 149 0
	stw 29,16444(1)
.LCFI160:
.LBB123:
	.loc 1 154 0
	addi 29,1,8
.LBE123:
	.loc 1 149 0
	stw 0,16524(1)
.LCFI161:
	stfd 30,16504(1)
.LCFI162:
	stfd 31,16512(1)
.LCFI163:
	stw 30,16448(1)
.LCFI164:
	stw 31,16452(1)
.LCFI165:
.LBB124:
	.loc 1 153 0
	bl memalign
	mr 24,3
.LVL192:
	.loc 1 154 0
	li 4,0
	mr 3,29
	li 5,16384
	bl memset
	lis 9,.LC11@ha
.LBB108:
	.loc 1 185 0
	lfs 0,.LC11@l(9)
.LBE108:
.LBB109:
	.loc 1 164 0
	lis 9,.LC23@ha
	lis 11,.LC24@ha
	lfs 28,.LC23@l(9)
.LBE109:
.LBB110:
	.loc 1 185 0
	fmr 27,0
.LBE110:
.LBB111:
	.loc 1 169 0
	lis 9,.LC13@ha
	.loc 1 160 0
	fmr 26,0
	.loc 1 164 0
	lfs 25,.LC24@l(11)
	.loc 1 169 0
	lfs 29,.LC13@l(9)
	lis 11,.LC26@ha
	lis 9,.LC33@ha
	.loc 1 164 0
	lfs 24,.LC2@l(22)
	la 26,.LC33@l(9)
	la 27,.LC26@l(11)
.L192:
.LBE111:
.LBB112:
	.loc 1 185 0
	xoris 0,28,0x8000
	lis 9,0x4330
	stw 0,16396(1)
.LBE112:
.LBB113:
	.loc 1 160 0
	fmr 30,26
.LBE113:
.LBB114:
	.loc 1 185 0
	stw 9,16392(1)
	mulli 0,28,-128
	li 31,0
	lfd 0,16392(1)
	add 30,29,0
	fsub 0,0,27
	frsp 0,0
	fmuls 31,0,0
.L193:
.LBE114:
.LBB115:
	.loc 1 160 0
	xoris 0,31,0x8000
	lis 9,0x4330
	stw 0,16396(1)
	stw 9,16392(1)
	lfd 1,16392(1)
	fsub 1,1,30
	frsp 1,1
.LVL193:
	.loc 1 163 0
	fmadds 1,1,1,31
.LVL194:
	bl sqrtf
	.loc 1 164 0
	stw 25,16408(1)
	.loc 1 163 0
	fmr 0,1
.LVL195:
	.loc 1 164 0
	lfs 1,16408(1)
	fcmpu 7,0,28
	bgt- 7,.L197
	fmuls 0,0,25
.LVL196:
	fmuls 0,0,0
	fsubs 1,24,0
.LVL197:
.L197:
	.loc 1 166 0
	bl sqrtf
.LVL198:
	.loc 1 173 0
	mr 3,26
	.loc 1 169 0
	fmuls 0,1,29
.LVL199:
	.loc 1 170 0
	li 0,255
	fcmpu 7,0,29
	bgt- 7,.L201
	fctiwz 13,0
.LVL200:
	addi 9,1,16400
	stfiwx 13,0,9
	lbz 0,16403(1)
.LVL201:
.L201:
	.loc 1 172 0
	stb 0,0(30)
	.loc 1 173 0
	crxor 6,6,6
	bl printf
.LVL202:
	.loc 1 174 0
	lbz 4,0(30)
	mr 3,27
	.loc 1 175 0
	addi 30,30,1
	.loc 1 174 0
	crxor 6,6,6
	bl printf
	.loc 1 175 0
	li 3,10
	bl putchar
.LBE115:
	.loc 1 159 0
	cmpwi 7,31,-15
	addi 31,31,-1
	bne+ 7,.L193
	.loc 1 158 0
	cmpwi 7,28,-15
	addi 28,28,-1
	bne+ 7,.L192
	.loc 1 178 0
	mr 3,24
	li 4,0
	li 5,16384
	bl memset
	li 3,0
.LVL203:
.L204:
.LBB116:
	.loc 1 185 0
	add 6,24,3
	mr 5,3
	li 4,0
.L209:
	mr 7,5
	li 8,0
.L207:
	lbzx 0,29,7
	li 31,7
.LBE116:
	.loc 1 197 0
	add 9,29,7
.LBB117:
	.loc 1 185 0
	mtctr 31
	stbx 0,6,8
	addi 9,9,1
.LBE117:
	.loc 1 197 0
	add 10,6,8
.LBB118:
	.loc 1 185 0
	li 11,1
.L205:
	lbz 0,0(9)
	.loc 1 184 0
	addi 9,9,1
	.loc 1 185 0
	stbx 0,11,10
	.loc 1 184 0
	addi 11,11,1
	bdnz .L205
	.loc 1 183 0
	cmpwi 7,8,24
	.loc 1 184 0
	addi 7,7,128
	.loc 1 183 0
	addi 8,8,8
	bne+ 7,.L207
	.loc 1 149 0
	addi 0,4,8
	.loc 1 188 0
	addi 6,6,32
	.loc 1 149 0
	rlwinm 0,0,0,0xffff
	addi 5,5,8
.LBE118:
	.loc 1 181 0
	cmpwi 7,0,128
.LBB119:
	.loc 1 149 0
	extsh 4,0
.LBE119:
	.loc 1 181 0
	bne+ 7,.L209
	.loc 1 180 0
	cmpwi 7,3,15872
	addi 3,3,512
	bne+ 7,.L204
	.loc 1 194 0
	mr 3,23
	mr 4,24
.LVL204:
	li 10,1
	li 5,128
	li 6,128
.LVL205:
	li 7,1
	li 8,2
	li 9,2
	bl GX_InitTexObj
.LVL206:
	.loc 1 195 0
	lis 9,.LC27@ha
	lfs 2,.LC27@l(9)
	lis 9,.LC1@ha
	lfs 1,.LC2@l(22)
	mr 3,23
	lfs 3,.LC1@l(9)
	li 4,1
	li 5,1
	li 6,1
	li 7,1
	li 8,0
	bl GX_InitTexObjLOD
	.loc 1 196 0
	mr 3,24
	li 4,16384
	bl DCFlushRange
.LBE124:
	.loc 1 197 0
	lwz 0,16524(1)
	lwz 22,16416(1)
	lwz 23,16420(1)
.LVL207:
	mtlr 0
	lwz 24,16424(1)
.LVL208:
	lwz 25,16428(1)
	lwz 26,16432(1)
	lwz 27,16436(1)
	lwz 28,16440(1)
	lwz 29,16444(1)
	lwz 30,16448(1)
	lwz 31,16452(1)
	lfd 24,16456(1)
	lfd 25,16464(1)
	lfd 26,16472(1)
	lfd 27,16480(1)
	lfd 28,16488(1)
	lfd 29,16496(1)
	lfd 30,16504(1)
	lfd 31,16512(1)
	addi 1,1,16520
	blr
.LFE64:
	.size	_Z23GL_CreateLightBulbTexI8P10_gx_texobj, .-_Z23GL_CreateLightBulbTexI8P10_gx_texobj
	.align 2
	.globl main
	.type	main, @function
main:
.LFB76:
	.loc 1 625 0
.LVL209:
	stwu 1,-1064(1)
.LCFI166:
	mflr 0
.LCFI167:
.LBB146:
	.loc 1 642 0
	li 4,0
.LVL210:
	li 5,48
.LBE146:
	.loc 1 625 0
	stw 14,848(1)
.LCFI168:
	stw 17,860(1)
.LCFI169:
	stw 23,884(1)
.LCFI170:
	stw 24,888(1)
.LCFI171:
	stw 25,892(1)
.LCFI172:
	stw 26,896(1)
.LCFI173:
	stw 27,900(1)
.LCFI174:
	stfd 14,920(1)
.LCFI175:
	stfd 15,928(1)
.LCFI176:
	stfd 16,936(1)
.LCFI177:
	stfd 17,944(1)
.LCFI178:
	stfd 18,952(1)
.LCFI179:
	stfd 19,960(1)
.LCFI180:
	stfd 20,968(1)
.LCFI181:
	stfd 21,976(1)
.LCFI182:
	stfd 22,984(1)
.LCFI183:
	stfd 23,992(1)
.LCFI184:
	stfd 24,1000(1)
.LCFI185:
	stfd 25,1008(1)
.LCFI186:
	stfd 26,1016(1)
.LCFI187:
	stfd 27,1024(1)
.LCFI188:
	stfd 28,1032(1)
.LCFI189:
	stfd 29,1040(1)
.LCFI190:
	stfd 30,1048(1)
.LCFI191:
	stfd 31,1056(1)
.LCFI192:
	stw 15,852(1)
.LCFI193:
	stw 16,856(1)
.LCFI194:
	stw 18,864(1)
.LCFI195:
	stw 19,868(1)
.LCFI196:
	stw 20,872(1)
.LCFI197:
	stw 21,876(1)
.LCFI198:
	stw 22,880(1)
.LCFI199:
	stw 28,904(1)
.LCFI200:
	stw 31,916(1)
.LCFI201:
	mr 31,1
.LCFI202:
.LBB198:
	.loc 1 642 0
	addi 3,31,444
.LVL211:
.LBE198:
	.loc 1 625 0
	stw 0,1068(1)
.LCFI203:
	stw 29,908(1)
.LCFI204:
	stw 30,912(1)
.LCFI205:
.LBB199:
	.loc 1 642 0
	bl memset
	.loc 1 646 0
	lis 9,.LANCHOR1@ha
	li 5,48
	la 17,.LANCHOR1@l(9)
	addi 3,31,492
	mr 4,17
	li 30,0
.LVL212:
	bl memcpy
	.loc 1 657 0
	lwz 0,0(1)
	.loc 1 658 0
	lis 9,.LC35@ha
	.loc 1 652 0
	lwz 7,52(17)
	.loc 1 657 0
	stwu 0,-48(1)
	.loc 1 658 0
	la 11,.LC35@l(9)
	.loc 1 652 0
	lwz 6,56(17)
	.loc 1 658 0
	lwz 10,.LC35@l(9)
	.loc 1 657 0
	addi 0,1,31
	.loc 1 658 0
	lhz 8,20(11)
	.loc 1 657 0
	rlwinm 14,0,0,0,27
	.loc 1 658 0
	lwz 26,4(11)
	lwz 25,8(11)
	lwz 24,12(11)
	lwz 23,16(11)
	.loc 1 652 0
	lwz 9,48(17)
	.loc 1 653 0
	lwz 5,60(17)
	lwz 4,64(17)
	lwz 3,68(17)
	.loc 1 654 0
	lwz 28,76(17)
	lwz 27,80(17)
	lwz 29,72(17)
	.loc 1 652 0
	stw 9,16(31)
	stw 7,20(31)
	stw 6,24(31)
	.loc 1 653 0
	stw 5,28(31)
	stw 4,32(31)
	stw 3,36(31)
	.loc 1 654 0
	stw 28,44(31)
.LBB147:
.LBB148:
	.loc 1 672 0
	li 28,1
.LVL213:
.LBE148:
.LBE147:
	.loc 1 654 0
	stw 27,48(31)
	stw 29,40(31)
	.loc 1 658 0
	stw 10,0(14)
	sth 8,20(14)
	stw 26,4(14)
	stw 25,8(14)
	stw 24,12(14)
	stw 23,16(14)
	.loc 1 660 0
	bl VIDEO_Init
	.loc 1 661 0
	bl WPAD_Init
	.loc 1 663 0
	bl _Z21Sys_AcceptLogTerminalv
.LBB150:
	.loc 1 665 0
	lis 3,.LC36@ha
	la 3,.LC36@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
.LBB149:
	.loc 1 669 0
	li 3,20
	bl _Znaj
	.loc 1 670 0
	li 0,0
	.loc 1 672 0
	lis 9,.LC37@ha
	.loc 1 670 0
	stw 0,0(3)
	.loc 1 672 0
	la 27,.LC37@l(9)
	.loc 1 669 0
	mr 4,3
	.loc 1 672 0
	mr 3,27
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
.L226:
	.loc 1 669 0
	li 3,20
	bl _Znaj
	.loc 1 670 0
	stw 28,0(3)
	.loc 1 669 0
	mr 29,3
	.loc 1 672 0
	mr 4,29
.LVL214:
	mr 3,27
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
.LVL215:
	.loc 1 668 0
	cmpwi 7,28,255
	addi 28,28,1
	bne+ 7,.L226
.LBE149:
	.loc 1 674 0
	lwz 4,0(29)
	lis 3,.LC38@ha
	la 3,.LC38@l(3)
	crxor 6,6,6
	bl _Z10Sys_PrintfPKcz
.LBE150:
	.loc 1 680 0
	li 3,0
	bl VIDEO_GetPreferredMode
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	.loc 1 684 0
	lis 4,0x8
	.loc 1 680 0
	stw 3,32(9)
	.loc 1 684 0
	li 3,32
	bl memalign
	.loc 1 685 0
	li 4,0
	lis 5,0x8
	.loc 1 684 0
	mr 29,3
.LVL216:
	.loc 1 685 0
	bl memset
	.loc 1 688 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	lwz 3,32(9)
	bl SYS_AllocateFramebuffer
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	stw 3,36(9)
	.loc 1 689 0
	lwz 3,32(9)
	bl SYS_AllocateFramebuffer
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	stw 3,40(9)
	.loc 1 692 0
	lwz 3,32(9)
	bl VIDEO_Configure
	.loc 1 693 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	lwz 3,36(9)
	bl VIDEO_SetNextFramebuffer
	.loc 1 694 0
	bl VIDEO_Flush
	.loc 1 695 0
	bl VIDEO_WaitVSync
	.loc 1 696 0
	lis 11,.LANCHOR0@ha
	la 11,.LANCHOR0@l(11)
	lwz 9,32(11)
	lwz 0,0(9)
	andi. 9,0,1
	beq+ 0,.L228
	bl VIDEO_WaitVSync
.L228:
	.loc 1 701 0
	mr 3,29
	lis 4,0x8
	bl GX_Init
	.loc 1 651 0
	li 0,0
	rlwimi 30,0,24,0,7
	.loc 1 704 0
	lis 4,0xff
	.loc 1 651 0
	rlwimi 30,0,16,8,15
	.loc 1 704 0
	ori 4,4,65535
	.loc 1 651 0
	rlwimi 30,0,8,16,23
	li 0,-1
	rlwimi 30,0,0,24,31
	.loc 1 704 0
	addi 3,31,816
	stw 30,816(31)
	bl GX_SetCopyClear
	.loc 1 725 0
	lis 11,.LANCHOR0@ha
	lis 10,0x4330
	la 11,.LANCHOR0@l(11)
	stw 10,824(31)
	lwz 9,32(11)
	lis 30,.LC40@ha
.LVL217:
	lfs 0,.LC40@l(30)
	lhz 0,4(9)
	lhz 11,6(9)
	lis 9,.LC1@ha
	stw 0,828(31)
	lfs 1,.LC1@l(9)
	lis 9,.LC2@ha
	lfd 3,824(31)
	stw 11,828(31)
	fmr 2,1
	fsub 3,3,0
	lfs 6,.LC2@l(9)
	lfd 4,824(31)
	fmr 5,1
	fsub 4,4,0
	frsp 3,3
	frsp 4,4
	bl GX_SetViewport
	.loc 1 726 0
	lis 11,.LANCHOR0@ha
	la 11,.LANCHOR0@l(11)
	lwz 9,32(11)
	lhz 4,8(9)
	lhz 3,6(9)
	bl GX_GetYScaleFactor
	.loc 1 727 0
	bl GX_SetDispCopyYScale
	.loc 1 728 0
	lis 11,.LANCHOR0@ha
	la 11,.LANCHOR0@l(11)
	.loc 1 727 0
	mr 29,3
.LVL218:
	.loc 1 728 0
	lwz 9,32(11)
	li 3,0
	li 4,0
	lhz 6,6(9)
	lhz 5,4(9)
	bl GX_SetScissor
	.loc 1 729 0
	lis 11,.LANCHOR0@ha
	la 11,.LANCHOR0@l(11)
	li 3,0
	lwz 9,32(11)
	li 4,0
	lhz 6,6(9)
	lhz 5,4(9)
	bl GX_SetDispCopySrc
	.loc 1 730 0
	lis 11,.LANCHOR0@ha
	la 11,.LANCHOR0@l(11)
	rlwinm 4,29,0,0xffff
.LVL219:
	lwz 9,32(11)
	lhz 3,4(9)
	bl GX_SetDispCopyDst
	.loc 1 732 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	li 5,1
	lwz 4,32(9)
	lbz 3,25(4)
	addi 6,4,50
	addi 4,4,26
	bl GX_SetCopyFilter
	.loc 1 733 0
	lis 11,.LANCHOR0@ha
	la 11,.LANCHOR0@l(11)
	lwz 9,32(11)
	lhz 4,8(9)
	lhz 0,16(9)
	slwi 4,4,1
	lbz 3,24(9)
	xor 4,0,4
	cntlzw 4,4
	srwi 4,4,5
	bl GX_SetFieldMode
	.loc 1 736 0
	lis 11,.LANCHOR0@ha
	la 11,.LANCHOR0@l(11)
	lwz 9,32(11)
	lbz 0,25(9)
	cmpwi 7,0,0
	beq- 7,.L230
	.loc 1 737 0
	li 3,2
	li 4,0
	bl GX_SetPixelFmt
.L232:
	.loc 1 741 0
	li 3,2
	.loc 1 765 0
	addi 29,31,124
.LVL220:
	.loc 1 741 0
	bl GX_SetCullMode
	.loc 1 742 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	li 4,1
	lwz 3,40(9)
	.loc 1 797 0
	li 15,0
.LVL221:
	li 16,0
	addi 18,31,408
	.loc 1 742 0
	bl GX_CopyDisp
	.loc 1 743 0
	li 3,0
	bl GX_SetDispCopyGamma
	addi 20,31,52
	.loc 1 751 0
	bl GX_ClearVtxDesc
	.loc 1 752 0
	li 3,9
	li 4,1
	addi 19,31,64
	bl GX_SetVtxDesc
	.loc 1 753 0
	li 3,25
	li 4,1
	addi 21,31,76
	bl GX_SetVtxDesc
	.loc 1 754 0
	li 3,13
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 755 0
	li 3,14
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 757 0
	li 3,0
	li 4,9
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 758 0
	li 3,0
	li 4,25
	li 5,2
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 759 0
	li 3,0
	li 4,13
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 760 0
	li 3,0
	li 4,14
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 761 0
	li 7,0
	li 6,4
	li 3,1
	li 4,9
	li 5,1
	bl GX_SetVtxAttrFmt
	.loc 1 763 0
	bl GX_InvVtxCache
	.loc 1 764 0
	bl GX_InvalidateTexAll
	.loc 1 765 0
	lis 9,crate_tpl_size@ha
	lwz 5,crate_tpl_size@l(9)
	lis 4,crate_tpl@ha
	la 4,crate_tpl@l(4)
	mr 3,29
	bl TPL_OpenTPLFromMemory
	.loc 1 766 0
	li 4,0
	addi 5,31,276
	mr 3,29
	bl TPL_GetTexture
	.loc 1 767 0
	li 4,1
	addi 5,31,308
	mr 3,29
	bl TPL_GetTexture
	.loc 1 768 0
	li 4,2
	addi 5,31,340
	mr 3,29
	bl TPL_GetTexture
	.loc 1 771 0
	addi 3,31,212
	bl _Z26GL_CreateLightBulbInvTexI8P10_gx_texobj
	.loc 1 772 0
	addi 3,31,244
	bl _Z25GL_CreateIntensityRampTexP10_gx_texobj
	.loc 1 775 0
	addi 6,31,40
	addi 5,31,28
	addi 4,31,16
	addi 3,31,540
	.loc 1 782 0
	addi 29,31,684
	.loc 1 775 0
	bl guLookAt
	.loc 1 780 0
	lis 11,.LANCHOR0@ha
	la 11,.LANCHOR0@l(11)
	.loc 1 782 0
	lfs 13,.LC40@l(30)
	.loc 1 780 0
	lwz 9,32(11)
	.loc 1 782 0
	lis 11,0x4330
	stw 11,832(31)
	mr 3,29
	lhz 10,16(9)
	lhz 0,14(9)
	lis 9,.LC42@ha
	stw 10,836(31)
	stw 0,828(31)
	stw 11,824(31)
	lis 11,.LC43@ha
	lfd 2,832(31)
	lfd 0,824(31)
	fsub 2,2,13
	lfs 3,.LC42@l(9)
	fsub 0,0,13
	lis 9,.LC41@ha
	lfs 1,.LC41@l(9)
	frsp 2,2
	lfs 4,.LC43@l(11)
	frsp 0,0
	fdivs 2,0,2
	bl guPerspective
	.loc 1 783 0
	mr 3,29
	li 4,0
	bl GX_LoadProjectionMtx
	.loc 1 788 0
	li 5,36
	addi 4,17,84
	addi 3,31,372
	bl memcpy
	.loc 1 795 0
	li 4,288
	li 3,32
	bl memalign
	.loc 1 796 0
	li 4,288
	.loc 1 795 0
	mr 24,3
	.loc 1 796 0
	li 3,32
	bl memalign
	.loc 1 797 0
	li 4,288
	.loc 1 796 0
	mr 25,3
	.loc 1 797 0
	li 3,32
	bl memalign
	lis 9,.LANCHOR2@ha
	mr 26,3
	la 23,.LANCHOR2@l(9)
.LVL222:
.L233:
.LBB151:
	.loc 1 900 0
	mulli 0,15,20
	mr 6,15
	addi 7,31,140
	li 8,0
	add 30,0,23
	mr 10,30
.L234:
.LBE151:
.LBB182:
.LBB183:
	.loc 1 807 0
	lfs 0,0(10)
	.loc 1 625 0
	add 11,18,8
	.loc 1 811 0
	mulli 9,6,20
.LBE183:
	.loc 1 804 0
	cmpwi 7,8,24
.LBB184:
	.loc 1 807 0
	stfsx 0,8,18
	.loc 1 811 0
	addi 6,6,1
	add 9,9,23
.LBE184:
	.loc 1 804 0
	addi 8,8,12
.LBB185:
	.loc 1 808 0
	lfs 0,4(10)
	stfs 0,4(11)
	.loc 1 809 0
	lfs 0,8(10)
	stfs 0,8(11)
	.loc 1 810 0
	lfs 13,12(10)
	.loc 1 811 0
	addi 10,10,20
	.loc 1 810 0
	stfs 13,0(7)
	.loc 1 811 0
	lfs 0,16(9)
	stfs 0,4(7)
	addi 7,7,8
.LBE185:
	.loc 1 804 0
	bne+ 7,.L234
	.loc 1 814 0
	addi 3,31,420
	mr 4,18
	mr 5,20
	.loc 1 625 0
	add 27,26,16
	.loc 1 814 0
	bl ps_guVecSub
	.loc 1 815 0
	addi 3,31,432
	mr 4,18
	mr 5,19
	bl ps_guVecSub
	.loc 1 816 0
	mr 3,19
	mr 4,20
	addi 5,31,88
	bl ps_guVecCross
	.loc 1 820 0
	addi 4,31,140
	mr 5,20
	mr 6,19
	mr 3,18
	.loc 1 625 0
	add 28,24,16
.LVL223:
	.loc 1 820 0
	bl _Z10CalcTangSpP5_vecfPfS0_S0_
	.loc 1 821 0
	mr 3,20
	bl ps_guVecNormalize
	.loc 1 822 0
	mr 3,19
	bl ps_guVecNormalize
	.loc 1 625 0
	add 29,25,16
	li 22,0
.L236:
.LBB186:
	.loc 1 827 0
	lfs 0,0(30)
	.loc 1 828 0
	li 0,0
	.loc 1 829 0
	lfs 13,8(30)
	.loc 1 830 0
	mr 3,21
	.loc 1 828 0
	stw 0,80(31)
.LBE186:
	.loc 1 825 0
	addi 30,30,20
.LBB187:
	.loc 1 827 0
	stfs 0,76(31)
	.loc 1 829 0
	stfs 13,84(31)
	.loc 1 830 0
	bl ps_guVecNormalize
	.loc 1 832 0
	mr 3,21
	mr 4,20
	bl ps_guVecDotProduct
	.loc 1 833 0
	mr 4,19
	.loc 1 832 0
	fmr 31,1
.LVL224:
	.loc 1 833 0
	mr 3,21
	bl ps_guVecDotProduct
	.loc 1 834 0
	lfs 0,76(31)
	.loc 1 836 0
	lfs 13,84(31)
	.loc 1 844 0
	addi 3,31,100
	.loc 1 837 0
	fmuls 8,1,0
.LVL225:
	.loc 1 835 0
	lfs 12,80(31)
	.loc 1 839 0
	fmuls 7,1,13
	.loc 1 834 0
	lfs 9,52(31)
	.loc 1 836 0
	fmuls 13,31,13
	lfs 11,60(31)
	.loc 1 834 0
	fmuls 0,31,0
	.loc 1 835 0
	lfs 10,56(31)
	.loc 1 838 0
	fmuls 1,1,12
.LVL226:
	.loc 1 835 0
	fmuls 31,31,12
.LVL227:
	.loc 1 837 0
	lfs 12,64(31)
	.loc 1 834 0
	fsubs 9,9,0
	.loc 1 839 0
	lfs 0,72(31)
	.loc 1 836 0
	fsubs 11,11,13
	.loc 1 838 0
	lfs 13,68(31)
	.loc 1 839 0
	fsubs 0,0,7
	.loc 1 838 0
	fsubs 13,13,1
	.loc 1 834 0
	stfs 9,100(31)
	.loc 1 835 0
	fsubs 10,10,31
	.loc 1 836 0
	stfs 11,108(31)
	.loc 1 837 0
	fsubs 12,12,8
	.loc 1 839 0
	stfs 0,120(31)
	.loc 1 838 0
	stfs 13,116(31)
	.loc 1 835 0
	stfs 10,104(31)
	.loc 1 837 0
	stfs 12,112(31)
	.loc 1 844 0
	bl ps_guVecNormalize
	.loc 1 845 0
	addi 3,31,112
	bl ps_guVecNormalize
	.loc 1 847 0
	lfs 0,76(31)
	.loc 1 848 0
	lfs 13,80(31)
.LBE187:
	.loc 1 825 0
	cmpwi 7,22,3
.LBB188:
	.loc 1 847 0
	stfs 0,0(27)
.LBE188:
	.loc 1 825 0
	addi 22,22,1
.LBB189:
	.loc 1 849 0
	lfs 0,84(31)
	.loc 1 848 0
	stfs 13,4(27)
	.loc 1 849 0
	stfs 0,8(27)
.LBE189:
	.loc 1 825 0
	addi 27,27,12
.LBB190:
	.loc 1 851 0
	lfs 13,100(31)
	.loc 1 852 0
	lfs 0,104(31)
	.loc 1 851 0
	stfs 13,0(28)
	.loc 1 853 0
	lfs 13,108(31)
	.loc 1 852 0
	stfs 0,4(28)
	.loc 1 853 0
	stfs 13,8(28)
.LBE190:
	.loc 1 825 0
	addi 28,28,12
.LBB191:
	.loc 1 854 0
	lfs 0,112(31)
	.loc 1 855 0
	lfs 13,116(31)
	.loc 1 854 0
	stfs 0,0(29)
	.loc 1 856 0
	lfs 0,120(31)
	.loc 1 855 0
	stfs 13,4(29)
	.loc 1 856 0
	stfs 0,8(29)
.LBE191:
	.loc 1 825 0
	addi 29,29,12
	bne+ 7,.L236
.LBE182:
	.loc 1 799 0
	cmpwi 7,15,20
	addi 16,16,48
	addi 15,15,4
	bne+ 7,.L233
	.loc 1 866 0
	lis 11,.LANCHOR0@ha
	li 5,1
	la 11,.LANCHOR0@l(11)
	li 6,1
	lwz 9,32(11)
	li 7,10
	.loc 1 869 0
	li 29,1
.LVL228:
	.loc 1 866 0
	lhz 4,6(9)
	lhz 3,4(9)
	bl GX_GetTexBufferSize
	.loc 1 869 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	.loc 1 866 0
	mr 27,3
	.loc 1 869 0
	lwz 11,32(9)
	lis 9,.LC44@ha
	la 30,.LC44@l(9)
	lbz 5,27(11)
	mr 3,30
	lbz 4,26(11)
	crxor 6,6,6
	bl printf
.L239:
	lis 9,.LANCHOR0@ha
	mr 3,30
	la 9,.LANCHOR0@l(9)
	lwz 0,32(9)
	slwi 9,29,1
	add 9,9,0
	lbz 5,27(9)
	lbz 4,26(9)
	crxor 6,6,6
	bl printf
	.loc 1 868 0
	cmpwi 7,29,11
	addi 29,29,1
	bne+ 7,.L239
	.loc 1 871 0
	lis 11,.LANCHOR0@ha
	lis 3,.LC45@ha
	la 11,.LANCHOR0@l(11)
	la 3,.LC45@l(3)
	lwz 9,32(11)
	.loc 1 881 0
	lis 28,buf1@ha
	.loc 1 871 0
	lhz 6,6(9)
	lbz 5,24(9)
	lbz 4,25(9)
	crxor 6,6,6
	bl printf
	.loc 1 880 0
	lis 3,.LC46@ha
	mr 4,27
.LVL229:
	la 3,.LC46@l(3)
	crxor 6,6,6
	bl printf
.LVL230:
	.loc 1 881 0
	mr 4,27
	li 3,32
	bl memalign
	.loc 1 888 0
	lis 11,.LANCHOR0@ha
	la 11,.LANCHOR0@l(11)
	.loc 1 883 0
	addis 0,3,0x4000
	.loc 1 888 0
	lwz 9,32(11)
	addi 29,11,44
.LVL231:
	mr 4,0
	li 10,1
	lhz 6,6(9)
	mr 3,29
	lhz 5,4(9)
	li 7,1
	srwi 6,6,1
	li 9,0
	srwi 5,5,1
	li 8,0
	.loc 1 883 0
	stw 0,buf1@l(28)
	.loc 1 888 0
	bl GX_InitTexObj
	.loc 1 889 0
	lis 9,.LC1@ha
	mr 3,29
	lfs 1,.LC1@l(9)
	li 5,5
	li 6,1
	li 7,1
	fmr 2,1
	li 8,0
	fmr 3,1
	li 4,5
	.loc 1 896 0
	li 29,1
.LVL232:
	.loc 1 889 0
	bl GX_InitTexObjLOD
	.loc 1 890 0
	lwz 3,buf1@l(28)
	mr 4,27
	bl DCFlushRange
	.loc 1 896 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	lwz 11,32(9)
	lis 9,.LC47@ha
	la 30,.LC47@l(9)
	lbz 5,27(11)
	mr 3,30
	lbz 4,26(11)
	crxor 6,6,6
	bl printf
.L241:
	lis 9,.LANCHOR0@ha
	mr 3,30
	la 9,.LANCHOR0@l(9)
	lwz 0,32(9)
	slwi 9,29,1
	add 9,9,0
	lbz 5,27(9)
	lbz 4,26(9)
	crxor 6,6,6
	bl printf
	.loc 1 895 0
	cmpwi 7,29,11
	addi 29,29,1
	bne+ 7,.L241
	.loc 1 899 0
	lis 3,.LC48@ha
	mr 4,14
.LVL233:
	la 3,.LC48@l(3)
.LBB192:
	.loc 1 904 0
	lis 16,.LC51@ha
.LBE192:
	.loc 1 899 0
	crxor 6,6,6
	bl printf
.LVL234:
	lis 9,.LC41@ha
	lfs 25,.LC41@l(9)
.LVL235:
	lis 11,.LC50@ha
	lis 9,.LC49@ha
	lfs 27,.LC50@l(11)
.LVL236:
	lfs 26,.LC49@l(9)
.LVL237:
.LBB193:
	.loc 1 927 0
	lis 11,.LC53@ha
	.loc 1 919 0
	lis 9,.LC52@ha
	.loc 1 927 0
	lfs 21,.LC53@l(11)
	.loc 1 919 0
	lfs 22,.LC52@l(9)
.LBB152:
	.loc 1 1142 0
	lis 11,.LC56@ha
.LBE152:
	.loc 1 1139 0
	lis 9,.LC55@ha
.LBB176:
	.loc 1 1142 0
	lfs 18,.LC56@l(11)
.LBE176:
	.loc 1 1139 0
	lfs 19,.LC55@l(9)
.LBB177:
	.loc 1 1147 0
	lis 11,.LC58@ha
	.loc 1 1142 0
	lis 9,.LC57@ha
	.loc 1 1147 0
	lfs 16,.LC58@l(11)
	.loc 1 1142 0
	lfs 17,.LC57@l(9)
.LBB159:
	.loc 1 1168 0
	lis 11,.LC60@ha
.LBE159:
	.loc 1 1147 0
	lis 9,.LC59@ha
.LBB174:
	.loc 1 1168 0
	lfs 31,.LC60@l(11)
.LBE174:
	.loc 1 1147 0
	lfs 15,.LC59@l(9)
.LBE177:
.LBE193:
	.loc 1 899 0
	lis 11,.LC1@ha
.LBB194:
	.loc 1 1139 0
	lis 9,.LC11@ha
	.loc 1 930 0
	lis 15,.LC54@ha
.LVL238:
	.loc 1 1139 0
	lfs 14,.LC11@l(9)
.LBE194:
	.loc 1 899 0
	li 21,0
.LVL239:
	lfs 24,.LC1@l(11)
.LVL240:
	li 18,1
.LVL241:
.LBB195:
	.loc 1 904 0
	lfs 23,.LC51@l(16)
.LBE195:
	.loc 1 899 0
	li 19,0
.LVL242:
.LBB196:
	.loc 1 930 0
	lfs 20,.LC54@l(15)
	.loc 1 902 0
	bl WPAD_ScanPads
	.loc 1 903 0
	li 3,0
.LBE196:
	.loc 1 899 0
	li 20,1
.LVL243:
.LBB197:
	.loc 1 903 0
	bl WPAD_ButtonsDown
	andi. 0,3,128
	bne- 0,.L313
.LVL244:
.L244:
	.loc 1 904 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,256
	beq- 0,.L246
	fsubs 24,24,23
.L246:
	.loc 1 905 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,512
	beq- 0,.L248
	lfs 0,.LC51@l(16)
	fadds 24,24,0
.L248:
	.loc 1 906 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,2048
	beq- 0,.L250
	lfs 0,.LC51@l(16)
	fsubs 26,26,0
.L250:
	.loc 1 907 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,1024
	beq- 0,.L252
	lfs 0,.LC51@l(16)
	fadds 26,26,0
.L252:
	.loc 1 909 0
	li 3,0
	bl WPAD_ButtonsHeld
	.loc 1 911 0
	andi. 0,3,8
.LVL245:
	.loc 1 910 0
	nor 9,3,3
.LVL246:
	.loc 1 911 0
	beq- 0,.L254
	ori 21,21,8
.L254:
	.loc 1 912 0
	andi. 11,3,4
	beq- 0,.L256
	ori 21,21,4
.L256:
	.loc 1 913 0
	andi. 0,3,4096
	beq- 0,.L258
	ori 21,21,4096
.L258:
	.loc 1 914 0
	andi. 11,3,16
	beq- 0,.L260
	ori 21,21,16
.L260:
	.loc 1 917 0
	rlwinm 0,9,0,28,28
	and. 11,0,21
	beq- 0,.L262
	andi. 21,21,65527
	xori 19,19,1
.L262:
	.loc 1 918 0
	rlwinm 0,9,0,29,29
	and. 11,0,21
	beq- 0,.L264
	andi. 21,21,65531
	li 19,1
.L264:
	.loc 1 919 0
	rlwinm 0,9,0,19,19
	and. 11,0,21
	beq- 0,.L266
	fadds 27,27,22
	andi. 21,21,61439
.L266:
	.loc 1 920 0
	rlwinm 0,9,0,27,27
	and. 9,0,21
.LVL247:
	beq- 0,.L268
	andi. 21,21,65519
	xori 20,20,1
.L268:
	.loc 1 924 0
	li 3,1
.LVL248:
	bl GX_SetNumChans
	.loc 1 927 0
	fmr 1,26
	fmr 2,24
	li 0,0
	fmr 3,21
	li 9,-1
	li 11,127
	li 10,-128
	addi 3,31,112
	addi 4,31,540
	addi 5,31,816
	addi 6,31,840
	addi 7,31,844
	stb 11,819(31)
	stb 11,816(31)
	stb 0,817(31)
	stb 0,818(31)
	stb 0,842(31)
	stb 10,843(31)
	stb 10,840(31)
	stb 0,841(31)
	stb 9,847(31)
	stb 9,844(31)
	stb 9,845(31)
	stb 9,846(31)
	bl _Z8setlightPA4_ffff9_gx_colorS1_S1_
	.loc 1 930 0
	fcmpu 7,26,20
	cror 30,29,30
	bne- 7,.L270
	lis 9,.LC1@ha
	lfs 26,.LC1@l(9)
.L273:
	.loc 1 932 0
	lfs 13,.LC54@l(15)
	fcmpu 7,24,13
	cror 30,29,30
	bne- 7,.L276
	lis 9,.LC1@ha
	lfs 24,.LC1@l(9)
.L279:
	.loc 1 938 0
	li 4,30
	li 5,1
	addi 3,31,444
	.loc 1 960 0
	addi 29,31,748
.LVL249:
	.loc 1 938 0
	bl GX_LoadTexMtxImm
	.loc 1 939 0
	li 5,1
	addi 3,31,492
	li 4,33
	bl GX_LoadTexMtxImm
	.loc 1 1038 0
	li 30,0
	.loc 1 944 0
	bl GX_ClearVtxDesc
	.loc 1 945 0
	li 3,9
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 946 0
	li 3,25
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 947 0
	li 3,13
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 950 0
	li 3,0
	li 4,9
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 951 0
	li 3,0
	li 4,25
	li 5,2
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 952 0
	li 7,0
	li 5,1
	li 6,4
	li 4,13
	li 3,0
	bl GX_SetVtxAttrFmt
	.loc 1 955 0
	bl GX_InvVtxCache
	.loc 1 960 0
	lis 9,.LC1@ha
	lfs 1,.LC1@l(9)
	mr 3,29
	fmr 2,1
	fmr 3,1
	bl GX_InitLightPos
	.loc 1 961 0
	li 0,-128
	li 9,0
	mr 3,29
	addi 4,31,816
	stb 9,818(31)
	stb 0,819(31)
	stb 0,816(31)
	stb 9,817(31)
	bl GX_InitLightColor
	.loc 1 962 0
	mr 3,29
	li 4,128
	bl GX_LoadLightObj
	.loc 1 965 0
	li 3,5
	bl GX_SetNumTexGens
	.loc 1 969 0
	li 3,0
	li 4,1
	li 5,4
	li 6,60
	bl GX_SetTexCoordGen
	.loc 1 971 0
	li 3,1
	li 4,1
	li 5,4
	li 6,30
	bl GX_SetTexCoordGen
	.loc 1 973 0
	li 3,2
	li 4,2
	li 5,13
	li 6,60
	bl GX_SetTexCoordGen
	.loc 1 977 0
	li 3,3
	li 4,9
	li 5,13
	li 6,60
	bl GX_SetTexCoordGen
	.loc 1 979 0
	li 6,60
	li 4,10
	li 5,19
	li 3,4
	bl GX_SetTexCoordGen
	.loc 1 986 0
	li 3,2
	bl GX_SetCopyClamp
	.loc 1 995 0
	lwz 0,120(17)
	lwz 11,128(17)
	.loc 1 1002 0
	li 3,2
	.loc 1 995 0
	lwz 9,124(17)
	lwz 10,132(17)
	lwz 8,136(17)
	lwz 7,140(17)
	.loc 1 1000 0
	lwz 6,144(17)
	lwz 5,148(17)
	lwz 4,152(17)
	lwz 29,156(17)
	lwz 28,160(17)
.LVL250:
	lwz 27,164(17)
	.loc 1 995 0
	stw 0,164(31)
	stw 11,172(31)
	stw 9,168(31)
	stw 10,176(31)
	stw 8,180(31)
	stw 7,184(31)
	.loc 1 1000 0
	stw 6,188(31)
	stw 5,192(31)
	stw 4,196(31)
	stw 29,200(31)
	stw 28,204(31)
	stw 27,208(31)
	.loc 1 1002 0
	bl GX_SetNumIndStages
	.loc 1 1003 0
	li 3,1
	addi 4,31,164
	li 5,0
	bl GX_SetIndTexMatrix
	.loc 1 1004 0
	li 3,2
	addi 4,31,188
	li 5,0
	bl GX_SetIndTexMatrix
	.loc 1 1023 0
	li 3,1
	li 4,2
	li 5,2
	bl GX_SetIndTexOrder
	.loc 1 1024 0
	li 3,1
	li 4,0
	li 5,0
	bl GX_SetIndTexCoordScale
	.loc 1 1038 0
	li 9,6
	li 10,0
	li 8,0
	li 3,0
	li 4,1
	li 5,0
	li 6,0
	li 7,2
	stw 30,8(1)
	stw 30,12(1)
	bl GX_SetTevIndirect
	.loc 1 1040 0
	li 3,0
	li 4,15
	li 5,12
	li 6,8
	li 7,15
	bl GX_SetTevColorIn
	.loc 1 1041 0
	li 7,1
	li 8,2
	li 3,0
	li 4,0
	li 5,0
	li 6,0
	bl GX_SetTevColorOp
	.loc 1 1043 0
	li 6,255
	li 3,0
	li 4,4
	li 5,4
	bl GX_SetTevOrder
	.loc 1 1048 0
	li 3,0
	li 4,0
	li 5,0
	bl GX_SetIndTexOrder
	.loc 1 1049 0
	li 3,0
	li 4,0
	li 5,0
	bl GX_SetIndTexCoordScale
	.loc 1 1062 0
	li 9,0
	li 10,0
	li 8,0
	li 5,0
	li 6,7
	li 7,1
	li 3,1
	li 4,0
	stw 30,8(1)
	stw 30,12(1)
	bl GX_SetTevIndirect
	.loc 1 1070 0
	li 3,1
	li 4,7
	bl GX_SetTevKColorSel
	.loc 1 1071 0
	li 3,1
	li 4,15
	li 5,8
	li 6,4
	li 7,15
	bl GX_SetTevColorIn
	.loc 1 1072 0
	li 3,1
	li 4,0
	li 5,0
	li 6,0
	li 7,1
	li 8,0
	bl GX_SetTevColorOp
	.loc 1 1073 0
	li 3,1
	li 4,2
	li 5,2
	li 6,255
	bl GX_SetTevOrder
	.loc 1 1081 0
	cmpwi 7,19,0
	li 3,2
.LVL251:
	bne- 7,.L314
.L284:
	.loc 1 1127 0
	bl GX_SetNumTevStages
.LVL252:
	.loc 1 1131 0
	addi 3,31,276
	li 4,0
	bl GX_LoadTexObj
	.loc 1 1132 0
	addi 3,31,308
	li 4,1
	bl GX_LoadTexObj
	.loc 1 1133 0
	addi 3,31,340
	li 4,2
	bl GX_LoadTexObj
	.loc 1 1135 0
	addi 3,31,212
	li 4,3
	bl GX_LoadTexObj
	.loc 1 1136 0
	addi 3,31,244
	li 4,4
	bl GX_LoadTexObj
	.loc 1 1139 0
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	fcmpu 7,27,0
	bng- 7,.L285
	fmuls 29,25,19
.LBB178:
.LBB158:
.LBB168:
.LBB170:
	.file 2 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.loc 2 1141 0
	lis 29,0xcc00
.LBE170:
.LBE168:
.LBE158:
.LBE178:
	.loc 1 1139 0
	fmr 30,0
.LBB179:
	.loc 1 1176 0
	lis 22,0x1062
.LVL253:
	.loc 1 1147 0
	fmr 28,0
.LBB175:
.LBB167:
.LBB169:
	.loc 2 1141 0
	ori 29,29,32768
.LBE169:
.LBE167:
.LBE175:
	.loc 1 1176 0
	ori 22,22,19923
.LBE179:
	.loc 1 1139 0
	li 28,0
.LVL254:
	addi 27,31,588
	addi 30,31,636
.LVL255:
.L288:
.LBB180:
	.loc 1 1140 0
	mr 3,27
	bl ps_guMtxIdentity
.LVL256:
	.loc 1 1141 0
	fmr 1,29
	mr 3,27
	addi 4,31,372
	bl ps_guMtxRotAxisRad
	.loc 1 1143 0
	andi. 0,28,1
	.loc 1 1142 0
	fmadds 1,30,18,17
.LVL257:
	.loc 1 1143 0
	beq- 0,.L289
	.loc 1 1144 0
	fneg 1,1
.L289:
	.loc 1 1147 0
	fmsubs 3,30,16,15
	mr 3,27
	fmr 2,28
	mr 4,27
	bl ps_guMtxTransApply
.LVL258:
	.loc 1 1150 0
	mr 5,30
	addi 3,31,540
	mr 4,27
	bl ps_guMtxConcat
	.loc 1 1154 0
	mr 3,30
	li 4,0
	bl GX_LoadPosMtxImm
	.loc 1 1158 0
	li 4,0
	mr 3,30
	bl GX_LoadNrmMtxImm
	.loc 1 1159 0
	li 3,0
	bl GX_SetCurrentMtx
	.loc 1 1162 0
	li 3,128
	li 4,0
	li 5,24
	bl GX_Begin
.LBB157:
	.loc 1 1168 0
	li 0,24
	mtctr 0
.LBE157:
	.loc 1 1162 0
	mr 10,23
	li 8,0
.LVL259:
	li 11,0
.L291:
.LBB156:
	.loc 1 1166 0
	lfs 0,0(10)
.LVL260:
	.loc 1 625 0
	add 9,26,11
	.loc 1 1166 0
	lfs 13,4(10)
.LVL261:
	lfs 12,8(10)
.LVL262:
.LBB166:
.LBB171:
	.loc 2 1141 0
	stfs 0,0(29)
	.loc 2 1142 0
	stfs 13,0(29)
	.loc 2 1143 0
	stfs 12,0(29)
.LBE171:
.LBE166:
	.loc 1 1167 0
	lfs 12,8(9)
.LVL263:
	lfsx 0,11,26
.LVL264:
	lfs 13,4(9)
.LVL265:
	.loc 1 625 0
	add 9,24,11
.LBB164:
.LBB165:
	.loc 2 1216 0
	stfs 0,0(29)
	.loc 2 1217 0
	stfs 13,0(29)
	.loc 2 1218 0
	stfs 12,0(29)
.LBE165:
.LBE164:
	.loc 1 1168 0
	lfs 12,8(9)
.LVL266:
	lfsx 0,11,24
.LVL267:
	lfs 13,4(9)
.LVL268:
	fmuls 12,12,31
.LVL269:
	fmuls 0,0,31
.LVL270:
	.loc 1 625 0
	add 9,25,11
	.loc 1 1168 0
	fmuls 13,13,31
.LVL271:
.LBB162:
.LBB163:
	.loc 2 1216 0
	stfs 0,0(29)
	.loc 2 1217 0
	stfs 13,0(29)
	.loc 2 1218 0
	stfs 12,0(29)
.LBE163:
.LBE162:
	.loc 1 1169 0
	lfs 12,8(9)
.LVL272:
	lfsx 0,11,25
.LVL273:
.LBE156:
	.loc 1 1163 0
	addi 11,11,12
.LBB155:
	.loc 1 1169 0
	lfs 13,4(9)
.LVL274:
	fmuls 12,12,31
.LVL275:
	fmuls 0,0,31
.LVL276:
	.loc 1 1170 0
	mulli 9,8,20
	.loc 1 1169 0
	fmuls 13,13,31
.LVL277:
.LBE155:
	.loc 1 1163 0
	addi 8,8,1
.LBB154:
	.loc 1 1170 0
	add 9,9,23
.LBB160:
.LBB161:
	.loc 2 1216 0
	stfs 0,0(29)
	.loc 2 1217 0
	stfs 13,0(29)
	.loc 2 1218 0
	stfs 12,0(29)
.LBE161:
.LBE160:
	.loc 1 1170 0
	lfs 0,12(10)
.LVL278:
.LBE154:
	.loc 1 1163 0
	addi 10,10,20
.LBB153:
	.loc 1 1170 0
	lfs 13,16(9)
.LVL279:
.LBB172:
.LBB173:
	.loc 2 1292 0
	stfs 0,0(29)
	.loc 2 1293 0
	stfs 13,0(29)
.LBE173:
.LBE172:
.LBE153:
	.loc 1 1163 0
	bdnz .L291
	.loc 1 1176 0
	mulhw 0,28,22
	srawi 9,28,31
	srawi 0,0,5
	subf 0,9,0
	mulli 0,0,500
	cmpw 7,28,0
	beq- 7,.L315
.L293:
.LBE180:
	.loc 1 1139 0
	addi 28,28,1
	lis 9,0x4330
	xoris 0,28,0x8000
	stw 9,824(31)
	stw 0,828(31)
	fmr 13,14
.LVL280:
	lfd 0,824(31)
.LVL281:
	fsub 0,0,13
	frsp 30,0
	fcmpu 7,27,30
	bgt+ 7,.L288
.LVL282:
.L285:
	.loc 1 1244 0
	bl GX_Flush
.LVL283:
	.loc 1 1340 0
	slwi 29,18,2
	.loc 1 1245 0
	bl GX_DrawDone
	.loc 1 1336 0
	li 3,1
	bl GX_SetAlphaUpdate
	.loc 1 1338 0
	li 5,1
	li 4,3
	li 3,1
	bl GX_SetZMode
	.loc 1 1339 0
	li 3,1
	bl GX_SetColorUpdate
	.loc 1 1340 0
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	li 4,1
	add 29,29,9
	lwz 3,36(29)
	bl GX_CopyDisp
	.loc 1 1343 0
	lwz 3,36(29)
	bl VIDEO_SetNextFramebuffer
	.loc 1 1348 0
	bl VIDEO_Flush
	.loc 1 1349 0
	cmpwi 7,20,0
	bne- 7,.L316
.L295:
	.loc 1 1352 0
	lis 9,.LC61@ha
	.loc 1 1350 0
	xori 18,18,1
	.loc 1 1352 0
	lfs 0,.LC61@l(9)
	fsubs 25,25,0
	.loc 1 902 0
	bl WPAD_ScanPads
	.loc 1 903 0
	li 3,0
	bl WPAD_ButtonsDown
	andi. 0,3,128
	beq+ 0,.L244
.LVL284:
.L313:
	li 3,0
	bl exit
.LVL285:
.L315:
.LBB181:
	.loc 1 1177 0
	bl GX_DrawDone
.LVL286:
	b .L293
.LVL287:
.L276:
.LBE181:
	.loc 1 933 0
	lis 11,.LC1@ha
	lfs 0,.LC1@l(11)
	fcmpu 7,24,0
	cror 30,28,30
	bne+ 7,.L279
	fmr 24,13
	b .L279
.L270:
	.loc 1 931 0
	lis 11,.LC1@ha
	lfs 0,.LC1@l(11)
	fcmpu 7,26,0
	cror 30,28,30
	bne+ 7,.L273
	fmr 26,20
	b .L273
.LVL288:
.L314:
	.loc 1 1093 0
	li 9,0
	li 10,1
	li 8,0
	li 4,0
	li 5,0
	li 6,7
	li 7,1
	stw 30,12(1)
	stw 30,8(1)
	bl GX_SetTevIndirect
.LVL289:
	.loc 1 1099 0
	li 3,2
	li 4,15
	li 5,8
	li 6,4
	li 7,0
	bl GX_SetTevColorIn
	.loc 1 1100 0
	li 3,2
	li 4,0
	li 5,0
	li 6,0
	li 7,1
	li 8,0
	bl GX_SetTevColorOp
	.loc 1 1101 0
	li 3,2
	li 4,3
	li 5,1
	li 6,255
	bl GX_SetTevOrder
	li 3,3
.LVL290:
	b .L284
.LVL291:
.L316:
	.loc 1 1349 0
	bl VIDEO_WaitVSync
	b .L295
.LVL292:
.L230:
.LBE197:
	.loc 1 739 0
	li 3,0
	li 4,0
	bl GX_SetPixelFmt
	b .L232
.LBE199:
.LFE76:
	.size	main, .-main
	.globl buf1
	.globl buf2
	.globl buf1_tex
	.globl buf2_tex
	.globl cubedata
	.globl sock
	.globl csock
	.globl client
	.globl server
	.section	.rodata
	.align 2
	.set	.LANCHOR1,. + 0
	.type	_ZZ4mainE4C.19, @object
	.size	_ZZ4mainE4C.19, 48
_ZZ4mainE4C.19:
	.long	1056964608
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1056964608
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1056964608
	.long	0
	.type	_ZZ4mainE4C.20, @object
	.size	_ZZ4mainE4C.20, 12
_ZZ4mainE4C.20:
	.zero	12
	.type	_ZZ4mainE4C.21, @object
	.size	_ZZ4mainE4C.21, 12
_ZZ4mainE4C.21:
	.long	0
	.long	1065353216
	.long	0
	.type	_ZZ4mainE4C.22, @object
	.size	_ZZ4mainE4C.22, 12
_ZZ4mainE4C.22:
	.long	0
	.long	0
	.long	-1082130432
	.type	_ZZ4mainE4C.28, @object
	.size	_ZZ4mainE4C.28, 36
_ZZ4mainE4C.28:
	.long	0
	.long	1065353216
	.long	1065353216
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.type	_ZZ4mainE4C.43, @object
	.size	_ZZ4mainE4C.43, 24
_ZZ4mainE4C.43:
	.long	0
	.long	-1107296256
	.long	0
	.long	0
	.long	0
	.long	-1107296256
	.type	_ZZ4mainE4C.44, @object
	.size	_ZZ4mainE4C.44, 24
_ZZ4mainE4C.44:
	.long	0
	.long	0
	.long	0
	.long	1040187392
	.long	0
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	0
.LC2:
	.4byte	1065353216
.LC5:
	.4byte	1127481344
.LC6:
	.4byte	-1082130432
.LC11:
	.4byte	1501560836
.LC12:
	.4byte	1115684864
.LC13:
	.4byte	1132396544
.LC17:
	.4byte	1166016512
.LC18:
	.4byte	1123942400
.LC19:
	.4byte	1124073472
.LC23:
	.4byte	1098907648
.LC24:
	.4byte	1031798784
.LC27:
	.4byte	1092616192
.LC40:
	.4byte	1501560832
.LC41:
	.4byte	1110704128
.LC42:
	.4byte	1036831949
.LC43:
	.4byte	1133903872
.LC49:
	.4byte	1119092736
.LC50:
	.4byte	1077936128
.LC51:
	.4byte	1048576000
.LC52:
	.4byte	1148846080
.LC53:
	.4byte	1117782016
.LC54:
	.4byte	1135869952
.LC55:
	.4byte	1016003125
.LC56:
	.4byte	-1130113270
.LC57:
	.4byte	1073741824
.LC58:
	.4byte	-1073741824
.LC59:
	.4byte	1082130432
.LC60:
	.4byte	1040187392
.LC61:
	.4byte	1041865114
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC3:
	.4byte	1074340347
	.4byte	1413754136
	.section	".data"
	.align 2
	.set	.LANCHOR2,. + 0
	.type	cubedata, @object
	.size	cubedata, 480
cubedata:
	.long	-1082130432
	.long	-1082130432
	.long	1065353216
	.long	0
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	-1082130432
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	0
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	0
	.long	-1082130432
	.long	-1082130432
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	-1082130432
	.long	-1082130432
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	-1082130432
	.long	1065353216
	.long	0
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	0
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	-1082130432
	.long	-1082130432
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	-1082130432
	.long	0
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	0
	.long	-1082130432
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	0
	.long	0
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"\r"
	.zero	2
.LC25:
	.string	"lbi========"
.LC26:
	.string	"%d "
.LC33:
	.string	"lb========"
	.zero	1
.LC35:
	.string	"Dit is een grote test"
	.zero	2
.LC36:
	.string	">>> main TEST NEW...===============================================================\r\n"
	.zero	2
.LC37:
	.string	"alloc %p\r\n"
	.zero	1
.LC38:
	.string	">>> END TEST NEW... %d ===============================================================\r\n"
	.zero	3
.LC44:
	.string	"pattern %02X %02X\n"
	.zero	1
.LC45:
	.string	"aa: %02X fr: %d efbHeight: %d\n"
	.zero	1
.LC46:
	.string	"size: %d\n"
	.zero	2
.LC47:
	.string	"1) %d, 2) %d\n"
	.zero	2
.LC48:
	.string	"----------> %s\n"
	.section	.sbss,"aw",@nobits
	.align 2
	.type	buf1, @object
	.size	buf1, 4
buf1:
	.zero	4
	.type	buf2, @object
	.size	buf2, 4
buf2:
	.zero	4
	.type	sock, @object
	.size	sock, 4
sock:
	.zero	4
	.type	csock, @object
	.size	csock, 4
csock:
	.zero	4
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	server, @object
	.size	server, 16
server:
	.zero	16
	.type	client, @object
	.size	client, 16
client:
	.zero	16
	.type	rmode, @object
	.size	rmode, 4
rmode:
	.zero	4
	.type	frameBuffer, @object
	.size	frameBuffer, 8
frameBuffer:
	.zero	8
	.type	buf1_tex, @object
	.size	buf1_tex, 32
buf1_tex:
	.zero	32
	.type	buf2_tex, @object
	.size	buf2_tex, 32
buf2_tex:
	.zero	32
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
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x4
	.4byte	.LCFI1-.LFB68
	.byte	0xe
	.uleb128 0x88
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x90
	.uleb128 0x10
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI4-.LCFI2
	.byte	0x91
	.uleb128 0xf
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x92
	.uleb128 0xe
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x93
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x94
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x95
	.uleb128 0xb
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x96
	.uleb128 0xa
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x97
	.uleb128 0x9
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x98
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x99
	.uleb128 0x7
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x9a
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x9b
	.uleb128 0x5
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x9c
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x9d
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0x9f
	.uleb128 0x1
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x4
	.4byte	.LCFI20-.LFB74
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x9b
	.uleb128 0x5
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI23-.LCFI21
	.byte	0x9c
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0x9d
	.uleb128 0x3
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x4
	.4byte	.LCFI26-.LFB75
	.byte	0xe
	.uleb128 0x1088
	.byte	0x4
	.4byte	.LCFI29-.LCFI26
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9c
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x4
	.4byte	.LCFI31-.LFB73
	.byte	0xe
	.uleb128 0x60
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0x9b
	.uleb128 0x5
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0x9c
	.uleb128 0x4
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x4
	.4byte	.LCFI36-.LFB71
	.byte	0xe
	.uleb128 0x88
	.byte	0x4
	.4byte	.LCFI38-.LCFI36
	.byte	0x9d
	.uleb128 0xd
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0x9e
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0x9f
	.uleb128 0xb
	.byte	0x4
	.4byte	.LCFI46-.LCFI40
	.byte	0x9a
	.uleb128 0x10
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0xbb
	.uleb128 0xa
	.byte	0x4
	.4byte	.LCFI49-.LCFI46
	.byte	0x9c
	.uleb128 0xe
	.byte	0x9b
	.uleb128 0xf
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x4
	.4byte	.LCFI51-.LFB69
	.byte	0xe
	.uleb128 0x98
	.byte	0x4
	.4byte	.LCFI54-.LCFI51
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbc
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI57-.LCFI54
	.byte	0x9b
	.uleb128 0xd
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI58-.LCFI57
	.byte	0x9d
	.uleb128 0xb
	.byte	0x4
	.4byte	.LCFI59-.LCFI58
	.byte	0x99
	.uleb128 0xf
	.byte	0x4
	.4byte	.LCFI60-.LCFI59
	.byte	0x9c
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0x9a
	.uleb128 0xe
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI63-.LFB72
	.byte	0xe
	.uleb128 0x70
	.byte	0x4
	.4byte	.LCFI66-.LCFI63
	.byte	0x97
	.uleb128 0x15
	.byte	0xbf
	.uleb128 0x2
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI67-.LCFI66
	.byte	0x98
	.uleb128 0x14
	.byte	0x4
	.4byte	.LCFI69-.LCFI67
	.byte	0xba
	.uleb128 0xc
	.byte	0x9f
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI79-.LCFI69
	.byte	0x9e
	.uleb128 0xe
	.byte	0x9d
	.uleb128 0xf
	.byte	0x9c
	.uleb128 0x10
	.byte	0x9b
	.uleb128 0x11
	.byte	0x9a
	.uleb128 0x12
	.byte	0x99
	.uleb128 0x13
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0xbb
	.uleb128 0xa
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x4
	.4byte	.LCFI80-.LFB67
	.byte	0xe
	.uleb128 0xa0
	.byte	0x4
	.4byte	.LCFI81-.LCFI80
	.byte	0xbf
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI82-.LCFI81
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI89-.LCFI82
	.byte	0x9b
	.uleb128 0xf
	.byte	0x9a
	.uleb128 0x10
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0xbb
	.uleb128 0xa
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI90-.LCFI89
	.byte	0x9c
	.uleb128 0xe
	.byte	0x4
	.4byte	.LCFI91-.LCFI90
	.byte	0x9d
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI94-.LCFI91
	.byte	0x99
	.uleb128 0x11
	.byte	0x98
	.uleb128 0x12
	.byte	0x97
	.uleb128 0x13
	.align 2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI96-.LFB66
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI97-.LCFI96
	.byte	0x9b
	.uleb128 0x5
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI98-.LCFI97
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI99-.LCFI98
	.byte	0x9c
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI101-.LCFI99
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI102-.LCFI101
	.byte	0xd
	.uleb128 0x1f
	.byte	0x4
	.4byte	.LCFI104-.LCFI102
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9a
	.uleb128 0x6
	.align 2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI105-.LFB63
	.byte	0xe
	.uleb128 0x8080
	.byte	0x4
	.4byte	.LCFI113-.LCFI105
	.byte	0x9a
	.uleb128 0x1a
	.byte	0xbb
	.uleb128 0xa
	.byte	0xba
	.uleb128 0xc
	.byte	0xb9
	.uleb128 0xe
	.byte	0xb8
	.uleb128 0x10
	.byte	0xb7
	.uleb128 0x12
	.byte	0xb6
	.uleb128 0x14
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI114-.LCFI113
	.byte	0x9b
	.uleb128 0x19
	.byte	0x4
	.4byte	.LCFI115-.LCFI114
	.byte	0x9c
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI117-.LCFI115
	.byte	0xbc
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x16
	.byte	0x4
	.4byte	.LCFI123-.LCFI117
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9f
	.uleb128 0x15
	.byte	0x9d
	.uleb128 0x17
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.align 2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x4
	.4byte	.LCFI124-.LFB65
	.byte	0xe
	.uleb128 0x4088
	.byte	0x4
	.4byte	.LCFI126-.LCFI124
	.byte	0x97
	.uleb128 0x19
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI133-.LCFI126
	.byte	0x96
	.uleb128 0x1a
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0xbb
	.uleb128 0xa
	.byte	0xba
	.uleb128 0xc
	.byte	0xb9
	.uleb128 0xe
	.byte	0xb8
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI135-.LCFI133
	.byte	0x99
	.uleb128 0x17
	.byte	0x98
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI138-.LCFI135
	.byte	0x9c
	.uleb128 0x14
	.byte	0x9b
	.uleb128 0x15
	.byte	0x9a
	.uleb128 0x16
	.byte	0x4
	.4byte	.LCFI139-.LCFI138
	.byte	0x9d
	.uleb128 0x13
	.byte	0x4
	.4byte	.LCFI144-.LCFI139
	.byte	0x9f
	.uleb128 0x11
	.byte	0x9e
	.uleb128 0x12
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x4
	.4byte	.LCFI145-.LFB64
	.byte	0xe
	.uleb128 0x4088
	.byte	0x4
	.4byte	.LCFI147-.LCFI145
	.byte	0x97
	.uleb128 0x19
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI154-.LCFI147
	.byte	0x96
	.uleb128 0x1a
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0xbb
	.uleb128 0xa
	.byte	0xba
	.uleb128 0xc
	.byte	0xb9
	.uleb128 0xe
	.byte	0xb8
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI156-.LCFI154
	.byte	0x99
	.uleb128 0x17
	.byte	0x98
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI159-.LCFI156
	.byte	0x9c
	.uleb128 0x14
	.byte	0x9b
	.uleb128 0x15
	.byte	0x9a
	.uleb128 0x16
	.byte	0x4
	.4byte	.LCFI160-.LCFI159
	.byte	0x9d
	.uleb128 0x13
	.byte	0x4
	.4byte	.LCFI165-.LCFI160
	.byte	0x9f
	.uleb128 0x11
	.byte	0x9e
	.uleb128 0x12
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x4
	.4byte	.LCFI166-.LFB76
	.byte	0xe
	.uleb128 0x428
	.byte	0x4
	.4byte	.LCFI201-.LCFI166
	.byte	0x9f
	.uleb128 0x25
	.byte	0x9c
	.uleb128 0x28
	.byte	0x96
	.uleb128 0x2e
	.byte	0x95
	.uleb128 0x2f
	.byte	0x94
	.uleb128 0x30
	.byte	0x93
	.uleb128 0x31
	.byte	0x92
	.uleb128 0x32
	.byte	0x90
	.uleb128 0x34
	.byte	0x8f
	.uleb128 0x35
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0xbb
	.uleb128 0xa
	.byte	0xba
	.uleb128 0xc
	.byte	0xb9
	.uleb128 0xe
	.byte	0xb8
	.uleb128 0x10
	.byte	0xb7
	.uleb128 0x12
	.byte	0xb6
	.uleb128 0x14
	.byte	0xb5
	.uleb128 0x16
	.byte	0xb4
	.uleb128 0x18
	.byte	0xb3
	.uleb128 0x1a
	.byte	0xb2
	.uleb128 0x1c
	.byte	0xb1
	.uleb128 0x1e
	.byte	0xb0
	.uleb128 0x20
	.byte	0xaf
	.uleb128 0x22
	.byte	0xae
	.uleb128 0x24
	.byte	0x9b
	.uleb128 0x29
	.byte	0x9a
	.uleb128 0x2a
	.byte	0x99
	.uleb128 0x2b
	.byte	0x98
	.uleb128 0x2c
	.byte	0x97
	.uleb128 0x2d
	.byte	0x91
	.uleb128 0x33
	.byte	0x8e
	.uleb128 0x36
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI202-.LCFI201
	.byte	0xd
	.uleb128 0x1f
	.byte	0x4
	.4byte	.LCFI205-.LCFI202
	.byte	0x9e
	.uleb128 0x26
	.byte	0x9d
	.uleb128 0x27
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE26:
	.section	.eh_frame,"a",@progbits
.Lframe1:
	.4byte	.LECIE1-.LSCIE1
.LSCIE1:
	.4byte	0x0
	.byte	0x1
	.string	"zPL"
	.uleb128 0x1
	.sleb128 -4
	.byte	0x41
	.uleb128 0x6
	.byte	0x0
	.4byte	__gxx_personality_v0
	.byte	0x0
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.align 2
.LECIE1:
.LSFDE3:
	.4byte	.LEFDE3-.LASFDE3
.LASFDE3:
	.4byte	.LASFDE3-.Lframe1
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x4
	.4byte	0x0
	.byte	0x4
	.4byte	.LCFI1-.LFB68
	.byte	0xe
	.uleb128 0x88
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x90
	.uleb128 0x10
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI4-.LCFI2
	.byte	0x91
	.uleb128 0xf
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x92
	.uleb128 0xe
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x93
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x94
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x95
	.uleb128 0xb
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x96
	.uleb128 0xa
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x97
	.uleb128 0x9
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x98
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x99
	.uleb128 0x7
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x9a
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x9b
	.uleb128 0x5
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x9c
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x9d
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0x9f
	.uleb128 0x1
	.align 2
.LEFDE3:
.LSFDE5:
	.4byte	.LEFDE5-.LASFDE5
.LASFDE5:
	.4byte	.LASFDE5-.Lframe1
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x4
	.4byte	0x0
	.byte	0x4
	.4byte	.LCFI20-.LFB74
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x9b
	.uleb128 0x5
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI23-.LCFI21
	.byte	0x9c
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0x9d
	.uleb128 0x3
	.align 2
.LEFDE5:
.LSFDE7:
	.4byte	.LEFDE7-.LASFDE7
.LASFDE7:
	.4byte	.LASFDE7-.Lframe1
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x4
	.4byte	0x0
	.byte	0x4
	.4byte	.LCFI26-.LFB75
	.byte	0xe
	.uleb128 0x1088
	.byte	0x4
	.4byte	.LCFI29-.LCFI26
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9c
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE7:
.LSFDE9:
	.4byte	.LEFDE9-.LASFDE9
.LASFDE9:
	.4byte	.LASFDE9-.Lframe1
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x4
	.4byte	0x0
	.byte	0x4
	.4byte	.LCFI31-.LFB73
	.byte	0xe
	.uleb128 0x60
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0x9b
	.uleb128 0x5
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0x9c
	.uleb128 0x4
	.align 2
.LEFDE9:
.LSFDE11:
	.4byte	.LEFDE11-.LASFDE11
.LASFDE11:
	.4byte	.LASFDE11-.Lframe1
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x4
	.4byte	0x0
	.byte	0x4
	.4byte	.LCFI36-.LFB71
	.byte	0xe
	.uleb128 0x88
	.byte	0x4
	.4byte	.LCFI38-.LCFI36
	.byte	0x9d
	.uleb128 0xd
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0x9e
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0x9f
	.uleb128 0xb
	.byte	0x4
	.4byte	.LCFI46-.LCFI40
	.byte	0x9a
	.uleb128 0x10
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0xbb
	.uleb128 0xa
	.byte	0x4
	.4byte	.LCFI49-.LCFI46
	.byte	0x9c
	.uleb128 0xe
	.byte	0x9b
	.uleb128 0xf
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE11:
.LSFDE13:
	.4byte	.LEFDE13-.LASFDE13
.LASFDE13:
	.4byte	.LASFDE13-.Lframe1
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x4
	.4byte	0x0
	.byte	0x4
	.4byte	.LCFI51-.LFB69
	.byte	0xe
	.uleb128 0x98
	.byte	0x4
	.4byte	.LCFI54-.LCFI51
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbc
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI57-.LCFI54
	.byte	0x9b
	.uleb128 0xd
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI58-.LCFI57
	.byte	0x9d
	.uleb128 0xb
	.byte	0x4
	.4byte	.LCFI59-.LCFI58
	.byte	0x99
	.uleb128 0xf
	.byte	0x4
	.4byte	.LCFI60-.LCFI59
	.byte	0x9c
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0x9a
	.uleb128 0xe
	.align 2
.LEFDE13:
.LSFDE15:
	.4byte	.LEFDE15-.LASFDE15
.LASFDE15:
	.4byte	.LASFDE15-.Lframe1
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x4
	.4byte	0x0
	.byte	0x4
	.4byte	.LCFI63-.LFB72
	.byte	0xe
	.uleb128 0x70
	.byte	0x4
	.4byte	.LCFI66-.LCFI63
	.byte	0x97
	.uleb128 0x15
	.byte	0xbf
	.uleb128 0x2
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI67-.LCFI66
	.byte	0x98
	.uleb128 0x14
	.byte	0x4
	.4byte	.LCFI69-.LCFI67
	.byte	0xba
	.uleb128 0xc
	.byte	0x9f
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI79-.LCFI69
	.byte	0x9e
	.uleb128 0xe
	.byte	0x9d
	.uleb128 0xf
	.byte	0x9c
	.uleb128 0x10
	.byte	0x9b
	.uleb128 0x11
	.byte	0x9a
	.uleb128 0x12
	.byte	0x99
	.uleb128 0x13
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0xbb
	.uleb128 0xa
	.align 2
.LEFDE15:
.LSFDE17:
	.4byte	.LEFDE17-.LASFDE17
.LASFDE17:
	.4byte	.LASFDE17-.Lframe1
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x4
	.4byte	0x0
	.byte	0x4
	.4byte	.LCFI80-.LFB67
	.byte	0xe
	.uleb128 0xa0
	.byte	0x4
	.4byte	.LCFI81-.LCFI80
	.byte	0xbf
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI82-.LCFI81
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI89-.LCFI82
	.byte	0x9b
	.uleb128 0xf
	.byte	0x9a
	.uleb128 0x10
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0xbb
	.uleb128 0xa
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI90-.LCFI89
	.byte	0x9c
	.uleb128 0xe
	.byte	0x4
	.4byte	.LCFI91-.LCFI90
	.byte	0x9d
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI94-.LCFI91
	.byte	0x99
	.uleb128 0x11
	.byte	0x98
	.uleb128 0x12
	.byte	0x97
	.uleb128 0x13
	.align 2
.LEFDE17:
.LSFDE19:
	.4byte	.LEFDE19-.LASFDE19
.LASFDE19:
	.4byte	.LASFDE19-.Lframe1
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x4
	.4byte	.LLSDA66
	.byte	0x4
	.4byte	.LCFI96-.LFB66
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI97-.LCFI96
	.byte	0x9b
	.uleb128 0x5
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI98-.LCFI97
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI99-.LCFI98
	.byte	0x9c
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI101-.LCFI99
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI102-.LCFI101
	.byte	0xd
	.uleb128 0x1f
	.byte	0x4
	.4byte	.LCFI104-.LCFI102
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9a
	.uleb128 0x6
	.align 2
.LEFDE19:
.LSFDE21:
	.4byte	.LEFDE21-.LASFDE21
.LASFDE21:
	.4byte	.LASFDE21-.Lframe1
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x4
	.4byte	0x0
	.byte	0x4
	.4byte	.LCFI105-.LFB63
	.byte	0xe
	.uleb128 0x8080
	.byte	0x4
	.4byte	.LCFI113-.LCFI105
	.byte	0x9a
	.uleb128 0x1a
	.byte	0xbb
	.uleb128 0xa
	.byte	0xba
	.uleb128 0xc
	.byte	0xb9
	.uleb128 0xe
	.byte	0xb8
	.uleb128 0x10
	.byte	0xb7
	.uleb128 0x12
	.byte	0xb6
	.uleb128 0x14
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI114-.LCFI113
	.byte	0x9b
	.uleb128 0x19
	.byte	0x4
	.4byte	.LCFI115-.LCFI114
	.byte	0x9c
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI117-.LCFI115
	.byte	0xbc
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x16
	.byte	0x4
	.4byte	.LCFI123-.LCFI117
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9f
	.uleb128 0x15
	.byte	0x9d
	.uleb128 0x17
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.align 2
.LEFDE21:
.LSFDE23:
	.4byte	.LEFDE23-.LASFDE23
.LASFDE23:
	.4byte	.LASFDE23-.Lframe1
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x4
	.4byte	0x0
	.byte	0x4
	.4byte	.LCFI124-.LFB65
	.byte	0xe
	.uleb128 0x4088
	.byte	0x4
	.4byte	.LCFI126-.LCFI124
	.byte	0x97
	.uleb128 0x19
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI133-.LCFI126
	.byte	0x96
	.uleb128 0x1a
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0xbb
	.uleb128 0xa
	.byte	0xba
	.uleb128 0xc
	.byte	0xb9
	.uleb128 0xe
	.byte	0xb8
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI135-.LCFI133
	.byte	0x99
	.uleb128 0x17
	.byte	0x98
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI138-.LCFI135
	.byte	0x9c
	.uleb128 0x14
	.byte	0x9b
	.uleb128 0x15
	.byte	0x9a
	.uleb128 0x16
	.byte	0x4
	.4byte	.LCFI139-.LCFI138
	.byte	0x9d
	.uleb128 0x13
	.byte	0x4
	.4byte	.LCFI144-.LCFI139
	.byte	0x9f
	.uleb128 0x11
	.byte	0x9e
	.uleb128 0x12
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE23:
.LSFDE25:
	.4byte	.LEFDE25-.LASFDE25
.LASFDE25:
	.4byte	.LASFDE25-.Lframe1
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x4
	.4byte	0x0
	.byte	0x4
	.4byte	.LCFI145-.LFB64
	.byte	0xe
	.uleb128 0x4088
	.byte	0x4
	.4byte	.LCFI147-.LCFI145
	.byte	0x97
	.uleb128 0x19
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI154-.LCFI147
	.byte	0x96
	.uleb128 0x1a
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0xbb
	.uleb128 0xa
	.byte	0xba
	.uleb128 0xc
	.byte	0xb9
	.uleb128 0xe
	.byte	0xb8
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI156-.LCFI154
	.byte	0x99
	.uleb128 0x17
	.byte	0x98
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI159-.LCFI156
	.byte	0x9c
	.uleb128 0x14
	.byte	0x9b
	.uleb128 0x15
	.byte	0x9a
	.uleb128 0x16
	.byte	0x4
	.4byte	.LCFI160-.LCFI159
	.byte	0x9d
	.uleb128 0x13
	.byte	0x4
	.4byte	.LCFI165-.LCFI160
	.byte	0x9f
	.uleb128 0x11
	.byte	0x9e
	.uleb128 0x12
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE25:
.LSFDE27:
	.4byte	.LEFDE27-.LASFDE27
.LASFDE27:
	.4byte	.LASFDE27-.Lframe1
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x4
	.4byte	0x0
	.byte	0x4
	.4byte	.LCFI166-.LFB76
	.byte	0xe
	.uleb128 0x428
	.byte	0x4
	.4byte	.LCFI201-.LCFI166
	.byte	0x9f
	.uleb128 0x25
	.byte	0x9c
	.uleb128 0x28
	.byte	0x96
	.uleb128 0x2e
	.byte	0x95
	.uleb128 0x2f
	.byte	0x94
	.uleb128 0x30
	.byte	0x93
	.uleb128 0x31
	.byte	0x92
	.uleb128 0x32
	.byte	0x90
	.uleb128 0x34
	.byte	0x8f
	.uleb128 0x35
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0xbb
	.uleb128 0xa
	.byte	0xba
	.uleb128 0xc
	.byte	0xb9
	.uleb128 0xe
	.byte	0xb8
	.uleb128 0x10
	.byte	0xb7
	.uleb128 0x12
	.byte	0xb6
	.uleb128 0x14
	.byte	0xb5
	.uleb128 0x16
	.byte	0xb4
	.uleb128 0x18
	.byte	0xb3
	.uleb128 0x1a
	.byte	0xb2
	.uleb128 0x1c
	.byte	0xb1
	.uleb128 0x1e
	.byte	0xb0
	.uleb128 0x20
	.byte	0xaf
	.uleb128 0x22
	.byte	0xae
	.uleb128 0x24
	.byte	0x9b
	.uleb128 0x29
	.byte	0x9a
	.uleb128 0x2a
	.byte	0x99
	.uleb128 0x2b
	.byte	0x98
	.uleb128 0x2c
	.byte	0x97
	.uleb128 0x2d
	.byte	0x91
	.uleb128 0x33
	.byte	0x8e
	.uleb128 0x36
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI202-.LCFI201
	.byte	0xd
	.uleb128 0x1f
	.byte	0x4
	.4byte	.LCFI205-.LCFI202
	.byte	0x9e
	.uleb128 0x26
	.byte	0x9d
	.uleb128 0x27
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE27:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LFB68-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LFB74-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI20-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LFB75-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 4232
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LFB73-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI36-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LFB69-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI51-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 152
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LFB72-.Ltext0
	.4byte	.LCFI63-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI63-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL113-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL117-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL113-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL113-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LFB67-.Ltext0
	.4byte	.LCFI80-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI80-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 160
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL130-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL129-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL128-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LFB66-.Ltext0
	.4byte	.LCFI96-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI96-.Ltext0
	.4byte	.LCFI102-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI102-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 56
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL154-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST64:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST65:
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST66:
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL154-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST67:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST68:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST69:
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST70:
	.4byte	.LFB63-.Ltext0
	.4byte	.LCFI105-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI105-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x4
	.byte	0x71
	.sleb128 32896
	.4byte	0x0
	.4byte	0x0
.LLST71:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST72:
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST73:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST74:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST75:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST76:
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST77:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST78:
	.4byte	.LFB65-.Ltext0
	.4byte	.LCFI124-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI124-.Ltext0
	.4byte	.LFE65-.Ltext0
	.2byte	0x4
	.byte	0x71
	.sleb128 16520
	.4byte	0x0
	.4byte	0x0
.LLST79:
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0x0
	.4byte	0x0
.LLST80:
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST81:
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0x0
	.4byte	0x0
.LLST82:
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST83:
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST84:
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST85:
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST86:
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST87:
	.4byte	.LFB64-.Ltext0
	.4byte	.LCFI145-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI145-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x4
	.byte	0x71
	.sleb128 16520
	.4byte	0x0
	.4byte	0x0
.LLST88:
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0x0
	.4byte	0x0
.LLST89:
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST90:
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0x0
	.4byte	0x0
.LLST91:
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST92:
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST93:
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST94:
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST95:
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST96:
	.4byte	.LFB76-.Ltext0
	.4byte	.LCFI166-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI166-.Ltext0
	.4byte	.LCFI202-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1064
	.4byte	.LCFI202-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1064
	.4byte	0x0
	.4byte	0x0
.LLST97:
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST98:
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST99:
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0x0
	.4byte	0x0
.LLST100:
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	0x0
	.4byte	0x0
.LLST101:
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL292-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST102:
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0x0
	.4byte	0x0
.LLST103:
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	0x0
	.4byte	0x0
.LLST104:
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST105:
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST106:
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST107:
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST108:
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0x0
	.4byte	0x0
.LLST109:
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0x0
	.4byte	0x0
.LLST110:
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0x0
	.4byte	0x0
.LLST111:
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST112:
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST113:
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST114:
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST115:
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST116:
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL292-.Ltext0
	.4byte	.LFE76-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST117:
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST118:
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST119:
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST120:
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL254-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST121:
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST122:
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0x0
	.4byte	0x0
.LLST123:
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST124:
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST125:
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0x0
	.4byte	0x0
.LLST126:
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST127:
	.4byte	.LVL270-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST128:
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0x0
	.4byte	0x0
.LLST129:
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST130:
	.4byte	.LVL264-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST131:
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0x0
	.4byte	0x0
.LLST132:
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST133:
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST134:
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST135:
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST136:
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0x0
	.4byte	0x0
.LLST137:
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST138:
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
	.file 3 "<built-in>"
	.file 4 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.file 5 "c:/utils/devkitPro/libogc/include/ogc/gx_struct.h"
	.file 6 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-gekko/4.2.4/include/stdarg.h"
	.file 7 "c:/utils/devkitPro/libogc/include/ogc/gu.h"
	.file 8 "c:/utils/devkitPro/libogc/include/ogc/tpl.h"
	.file 9 "c:/utils/devkitPro/libogc/include/network.h"
	.file 10 "d:/Data/Nintendo/lesson7/build/crate_tpl.h"
	.section	.debug_info
	.4byte	0x17c2
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF217
	.byte	0x4
	.4byte	.LASF218
	.4byte	.LASF219
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x2b
	.4byte	0x37
	.uleb128 0x4
	.4byte	0x4a
	.4byte	0x47
	.uleb128 0x5
	.4byte	0x47
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0xc
	.byte	0x3
	.byte	0x0
	.4byte	0x9d
	.uleb128 0x8
	.string	"gpr"
	.byte	0x3
	.byte	0x0
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"fpr"
	.byte	0x3
	.byte	0x0
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.4byte	.LASF0
	.byte	0x3
	.byte	0x0
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.4byte	.LASF1
	.byte	0x3
	.byte	0x0
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF2
	.byte	0x3
	.byte	0x0
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xc
	.byte	0x4
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0xc
	.byte	0x4
	.4byte	0xea
	.uleb128 0xd
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0xe
	.string	"u8"
	.byte	0x4
	.byte	0xf
	.4byte	0x9d
	.uleb128 0xe
	.string	"u16"
	.byte	0x4
	.byte	0x10
	.4byte	0xa4
	.uleb128 0xe
	.string	"u32"
	.byte	0x4
	.byte	0x11
	.4byte	0x25
	.uleb128 0xe
	.string	"s8"
	.byte	0x4
	.byte	0x14
	.4byte	0xad
	.uleb128 0xe
	.string	"s16"
	.byte	0x4
	.byte	0x15
	.4byte	0xb4
	.uleb128 0xe
	.string	"s32"
	.byte	0x4
	.byte	0x16
	.4byte	0xbb
	.uleb128 0xe
	.string	"f32"
	.byte	0x4
	.byte	0x29
	.4byte	0xfd
	.uleb128 0xc
	.byte	0x4
	.4byte	0xd7
	.uleb128 0xc
	.byte	0x4
	.4byte	0x115
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF17
	.uleb128 0x4
	.4byte	0x120
	.4byte	0x179
	.uleb128 0x5
	.4byte	0x47
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x3c
	.byte	0x5
	.byte	0x3a
	.4byte	0x23b
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x3b
	.4byte	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x3c
	.4byte	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x3d
	.4byte	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0x3e
	.4byte	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0x3f
	.4byte	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0x40
	.4byte	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x41
	.4byte	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0x42
	.4byte	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0x43
	.4byte	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x5
	.byte	0x44
	.4byte	0x10b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"aa"
	.byte	0x5
	.byte	0x45
	.4byte	0x10b
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x5
	.byte	0x46
	.4byte	0x23b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x5
	.byte	0x47
	.4byte	0x251
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0x0
	.uleb128 0x4
	.4byte	0x10b
	.4byte	0x251
	.uleb128 0x5
	.4byte	0x47
	.byte	0xb
	.uleb128 0x5
	.4byte	0x47
	.byte	0x1
	.byte	0x0
	.uleb128 0x4
	.4byte	0x10b
	.4byte	0x261
	.uleb128 0x5
	.4byte	0x47
	.byte	0x6
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x5
	.byte	0x48
	.4byte	0x179
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0xc
	.byte	0x7
	.byte	0x27
	.4byte	0x29d
	.uleb128 0x8
	.string	"x"
	.byte	0x7
	.byte	0x28
	.4byte	0x14b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.string	"y"
	.byte	0x7
	.byte	0x28
	.4byte	0x14b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"z"
	.byte	0x7
	.byte	0x28
	.4byte	0x14b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x7
	.byte	0x29
	.4byte	0x26c
	.uleb128 0xe
	.string	"Mtx"
	.byte	0x7
	.byte	0x2f
	.4byte	0x2b3
	.uleb128 0x4
	.4byte	0x14b
	.4byte	0x2c9
	.uleb128 0x5
	.4byte	0x47
	.byte	0x2
	.uleb128 0x5
	.4byte	0x47
	.byte	0x3
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2cf
	.uleb128 0x4
	.4byte	0x14b
	.4byte	0x2df
	.uleb128 0x5
	.4byte	0x47
	.byte	0x3
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x7
	.byte	0x35
	.4byte	0x2ea
	.uleb128 0x4
	.4byte	0x14b
	.4byte	0x300
	.uleb128 0x5
	.4byte	0x47
	.byte	0x3
	.uleb128 0x5
	.4byte	0x47
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x4
	.byte	0x2
	.2byte	0x3b8
	.4byte	0x342
	.uleb128 0x10
	.string	"r"
	.byte	0x2
	.2byte	0x3b9
	.4byte	0x10b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x10
	.string	"g"
	.byte	0x2
	.2byte	0x3ba
	.4byte	0x10b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x10
	.string	"b"
	.byte	0x2
	.2byte	0x3bb
	.4byte	0x10b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.string	"a"
	.byte	0x2
	.2byte	0x3bc
	.4byte	0x10b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x3bd
	.4byte	0x300
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x20
	.byte	0x2
	.2byte	0x3c6
	.4byte	0x36b
	.uleb128 0x10
	.string	"val"
	.byte	0x2
	.2byte	0x3c7
	.4byte	0x169
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x3c8
	.4byte	0x34e
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x40
	.byte	0x2
	.2byte	0x3d6
	.4byte	0x394
	.uleb128 0x10
	.string	"val"
	.byte	0x2
	.2byte	0x3d7
	.4byte	0x394
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.4byte	0x120
	.4byte	0x3a4
	.uleb128 0x5
	.4byte	0x47
	.byte	0xf
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x3d8
	.4byte	0x377
	.uleb128 0xc
	.byte	0x4
	.4byte	0x36b
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x8
	.byte	0xa
	.4byte	0xab
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x10
	.byte	0x8
	.byte	0xd
	.4byte	0x406
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x8
	.byte	0xe
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x8
	.byte	0xf
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x8
	.byte	0x10
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x8
	.byte	0x11
	.4byte	0x3b6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x8
	.byte	0x12
	.4byte	0x3c1
	.uleb128 0xc
	.byte	0x4
	.4byte	0x10b
	.uleb128 0xc
	.byte	0x4
	.4byte	0xbb
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x14
	.byte	0x1
	.2byte	0x21e
	.4byte	0x467
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x21f
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x220
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x221
	.4byte	0x467
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x222
	.4byte	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x41d
	.uleb128 0x4
	.4byte	0x467
	.4byte	0x47d
	.uleb128 0x5
	.4byte	0x47
	.byte	0x1
	.byte	0x0
	.uleb128 0x11
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x223
	.4byte	0x41d
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x4
	.byte	0x9
	.byte	0xd4
	.4byte	0x4a4
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x9
	.byte	0xd5
	.4byte	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x10
	.byte	0x9
	.byte	0xd9
	.4byte	0x4f7
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x9
	.byte	0xda
	.4byte	0x10b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x9
	.byte	0xdb
	.4byte	0x10b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x9
	.byte	0xdc
	.4byte	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x9
	.byte	0xdd
	.4byte	0x489
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x9
	.byte	0xde
	.4byte	0x4f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x4
	.4byte	0x12b
	.4byte	0x507
	.uleb128 0x5
	.4byte	0x47
	.byte	0x7
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x10
	.byte	0x9
	.byte	0xe1
	.4byte	0x53e
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x9
	.byte	0xe2
	.4byte	0x10b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x9
	.byte	0xe3
	.4byte	0x10b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x9
	.byte	0xe4
	.4byte	0x53e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x4
	.4byte	0x12b
	.4byte	0x54e
	.uleb128 0x5
	.4byte	0x47
	.byte	0xd
	.byte	0x0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x6
	.byte	0x55
	.4byte	0x2c
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x191
	.4byte	.LASF77
	.4byte	.LFB70
	.4byte	.LFE70
	.byte	0x1
	.byte	0x51
	.4byte	0x643
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x191
	.4byte	0x643
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x191
	.4byte	0x417
	.byte	0x1
	.byte	0x54
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x191
	.4byte	0x417
	.byte	0x1
	.byte	0x55
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.2byte	0x192
	.4byte	0xbb
	.4byte	.LLST2
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.2byte	0x192
	.4byte	0xbb
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0x602
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x19c
	.4byte	0xbb
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x19d
	.4byte	0xbb
	.4byte	.LLST5
	.uleb128 0x19
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x19f
	.4byte	0xfd
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1a0
	.4byte	0xfd
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LBB4
	.4byte	.LBE4
	.uleb128 0x1b
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1ab
	.4byte	0xbb
	.byte	0x1
	.byte	0x58
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1ac
	.4byte	0xbb
	.4byte	.LLST6
	.uleb128 0x19
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xfd
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1af
	.4byte	0xfd
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xfd
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x144
	.4byte	.LASF78
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LLST7
	.4byte	0x73a
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x144
	.4byte	0x73a
	.4byte	.LLST8
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x144
	.4byte	0x643
	.4byte	.LLST9
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x144
	.4byte	0x73a
	.4byte	.LLST10
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x144
	.4byte	0x73a
	.4byte	.LLST11
	.uleb128 0x1d
	.string	"v0"
	.byte	0x1
	.2byte	0x147
	.4byte	0x643
	.uleb128 0x16
	.string	"v1"
	.byte	0x1
	.2byte	0x147
	.4byte	0x643
	.4byte	.LLST12
	.uleb128 0x16
	.string	"v2"
	.byte	0x1
	.2byte	0x147
	.4byte	0x643
	.4byte	.LLST13
	.uleb128 0x1d
	.string	"st0"
	.byte	0x1
	.2byte	0x148
	.4byte	0x643
	.uleb128 0x16
	.string	"st1"
	.byte	0x1
	.2byte	0x148
	.4byte	0x643
	.4byte	.LLST14
	.uleb128 0x16
	.string	"st2"
	.byte	0x1
	.2byte	0x148
	.4byte	0x643
	.4byte	.LLST15
	.uleb128 0x1b
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x149
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1b
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x149
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1b
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x14a
	.4byte	0x740
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.2byte	0x14b
	.4byte	0xbb
	.4byte	.LLST16
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x29d
	.uleb128 0x4
	.4byte	0x29d
	.4byte	0x750
	.uleb128 0x5
	.4byte	0x47
	.byte	0x2
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x25c
	.4byte	.LASF86
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LLST17
	.4byte	0x77e
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x25c
	.4byte	0xd7
	.4byte	.LLST18
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x262
	.4byte	.LASF89
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LLST19
	.4byte	0x7cd
	.uleb128 0x1e
	.string	"fmt"
	.byte	0x1
	.2byte	0x262
	.4byte	0xe4
	.4byte	.LLST20
	.uleb128 0x1f
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x264
	.4byte	0x54e
	.byte	0x3
	.byte	0x91
	.sleb128 -4224
	.uleb128 0x20
	.string	"msg"
	.byte	0x1
	.2byte	0x265
	.4byte	0x7cd
	.byte	0x3
	.byte	0x91
	.sleb128 -4212
	.byte	0x0
	.uleb128 0x4
	.4byte	0xdd
	.4byte	0x7de
	.uleb128 0x21
	.4byte	0x47
	.2byte	0xfff
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x236
	.4byte	.LASF92
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LLST21
	.4byte	0x83b
	.uleb128 0x1b
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x237
	.4byte	0x120
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x239
	.4byte	0x83b
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1b
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x23a
	.4byte	0x83b
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1b
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x23b
	.4byte	0x83b
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.byte	0x0
	.uleb128 0x4
	.4byte	0xdd
	.4byte	0x84b
	.uleb128 0x5
	.4byte	0x47
	.byte	0xf
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x1b8
	.4byte	.LASF98
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST22
	.4byte	0x9cb
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x73a
	.4byte	.LLST23
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x643
	.4byte	.LLST24
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x73a
	.4byte	.LLST25
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x73a
	.4byte	.LLST26
	.uleb128 0x1b
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x9cb
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1b
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x9cb
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x1ba
	.4byte	0xfd
	.4byte	.LLST27
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x1bb
	.4byte	0xfd
	.4byte	.LLST28
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x1bc
	.4byte	0xfd
	.4byte	.LLST29
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x1bd
	.4byte	0xfd
	.4byte	.LLST30
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x1be
	.4byte	0xfd
	.4byte	.LLST31
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x1bf
	.4byte	0xfd
	.4byte	.LLST32
	.uleb128 0x17
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	0x97b
	.uleb128 0x20
	.string	"fP3"
	.byte	0x1
	.2byte	0x1da
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.string	"fP2"
	.byte	0x1
	.2byte	0x1da
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x20
	.string	"dP"
	.byte	0x1
	.2byte	0x1da
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.string	"f1"
	.byte	0x1
	.2byte	0x1db
	.4byte	0xfd
	.uleb128 0x1d
	.string	"f2"
	.byte	0x1
	.2byte	0x1dc
	.4byte	0xfd
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LBB25
	.4byte	.LBE25
	.uleb128 0x20
	.string	"fP3"
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.string	"fP2"
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x20
	.string	"dP"
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1d
	.string	"f1"
	.byte	0x1
	.2byte	0x1cd
	.4byte	0xfd
	.uleb128 0x1d
	.string	"f2"
	.byte	0x1
	.2byte	0x1ce
	.4byte	0xfd
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.4byte	0xbb
	.4byte	0x9db
	.uleb128 0x5
	.4byte	0x47
	.byte	0x2
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x177
	.4byte	.LASF106
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LLST33
	.4byte	0xae9
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x177
	.4byte	0x73a
	.4byte	.LLST34
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x177
	.4byte	0x643
	.4byte	.LLST35
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x177
	.4byte	0x73a
	.4byte	.LLST36
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x177
	.4byte	0x73a
	.4byte	.LLST37
	.uleb128 0x20
	.string	"v10"
	.byte	0x1
	.2byte	0x178
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x20
	.string	"v20"
	.byte	0x1
	.2byte	0x178
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1b
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x179
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1b
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x179
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1b
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x179
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x179
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x17a
	.4byte	0xfd
	.4byte	.LLST38
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x17b
	.4byte	0xfd
	.4byte	.LLST39
	.uleb128 0x18
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x17c
	.4byte	0xfd
	.4byte	.LLST40
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x17d
	.4byte	0xfd
	.4byte	.LLST41
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x17e
	.4byte	0xfd
	.4byte	.LLST42
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1e8
	.4byte	.LASF117
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST43
	.4byte	0xbdf
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x73a
	.4byte	.LLST44
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x643
	.4byte	.LLST45
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x73a
	.4byte	.LLST46
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x73a
	.4byte	.LLST47
	.uleb128 0x20
	.string	"tmp"
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x18
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x1ea
	.4byte	0xbb
	.4byte	.LLST48
	.uleb128 0x18
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x1ea
	.4byte	0xbb
	.4byte	.LLST49
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x1eb
	.4byte	0xfd
	.uleb128 0x19
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x1ec
	.4byte	0xfd
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x1ed
	.4byte	0xfd
	.4byte	.LLST50
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x1ee
	.4byte	0xfd
	.4byte	.LLST51
	.uleb128 0x17
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	0xbc8
	.uleb128 0x19
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x213
	.4byte	0xfd
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LBB40
	.4byte	.LBE40
	.uleb128 0x19
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x209
	.4byte	0xfd
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x123
	.4byte	.LASF221
	.4byte	0x29d
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LLST52
	.4byte	0xcbc
	.uleb128 0x14
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x123
	.4byte	0x2c9
	.4byte	.LLST53
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x123
	.4byte	0x14b
	.4byte	.LLST54
	.uleb128 0x1e
	.string	"phi"
	.byte	0x1
	.2byte	0x123
	.4byte	0x14b
	.4byte	.LLST55
	.uleb128 0x14
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x123
	.4byte	0x14b
	.4byte	.LLST56
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x123
	.4byte	0x342
	.4byte	.LLST57
	.uleb128 0x14
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x123
	.4byte	0x342
	.4byte	.LLST58
	.uleb128 0x14
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x123
	.4byte	0x342
	.4byte	.LLST59
	.uleb128 0x1b
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x125
	.4byte	0x26c
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x19
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x125
	.4byte	0x29d
	.uleb128 0x18
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x126
	.4byte	0x14b
	.4byte	.LLST60
	.uleb128 0x18
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x126
	.4byte	0x14b
	.4byte	.LLST61
	.uleb128 0x1b
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x127
	.4byte	0x3a4
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF132
	.byte	0x1
	.byte	0xf9
	.4byte	.LASF137
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LLST62
	.4byte	0xd7c
	.uleb128 0x24
	.string	"tex"
	.byte	0x1
	.byte	0xf9
	.4byte	0x3b0
	.4byte	.LLST63
	.uleb128 0x25
	.string	"res"
	.byte	0x1
	.byte	0xfa
	.4byte	0xbb
	.uleb128 0x26
	.4byte	.LASF133
	.byte	0x1
	.byte	0xfb
	.4byte	0xd7c
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.byte	0xfc
	.4byte	0x135
	.4byte	.LLST64
	.uleb128 0x27
	.string	"y"
	.byte	0x1
	.byte	0xfc
	.4byte	0x135
	.4byte	.LLST65
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.byte	0xfd
	.4byte	0x411
	.4byte	.LLST66
	.uleb128 0x18
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x10d
	.4byte	0x411
	.4byte	.LLST67
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x0
	.4byte	0xd5a
	.uleb128 0x16
	.string	"xx"
	.byte	0x1
	.2byte	0x110
	.4byte	0xbb
	.4byte	.LLST68
	.uleb128 0x1d
	.string	"yy"
	.byte	0x1
	.2byte	0x110
	.4byte	0xbb
	.byte	0x0
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x1d
	.string	"ix"
	.byte	0x1
	.2byte	0x101
	.4byte	0xfd
	.uleb128 0x18
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x105
	.4byte	0xfd
	.4byte	.LLST69
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.4byte	0x10b
	.4byte	0xd8b
	.uleb128 0x2a
	.4byte	0x47
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF136
	.byte	0x1
	.byte	0x6c
	.4byte	.LASF138
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LLST70
	.4byte	0xe69
	.uleb128 0x2b
	.4byte	.LASF139
	.byte	0x1
	.byte	0x6c
	.4byte	0x3b0
	.4byte	.LLST71
	.uleb128 0x2c
	.4byte	.LASF133
	.byte	0x1
	.byte	0x6d
	.4byte	0xe69
	.byte	0x4
	.byte	0x91
	.sleb128 -32888
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.byte	0x6e
	.4byte	0x135
	.4byte	.LLST72
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.byte	0x6e
	.4byte	0x135
	.uleb128 0x26
	.4byte	.LASF140
	.byte	0x1
	.byte	0x6f
	.4byte	0xfd
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.byte	0x80
	.4byte	0x15c
	.4byte	.LLST73
	.uleb128 0x2d
	.4byte	.LASF134
	.byte	0x1
	.byte	0x81
	.4byte	0x15c
	.4byte	.LLST74
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x70
	.4byte	0xe4a
	.uleb128 0x2d
	.4byte	.LASF141
	.byte	0x1
	.byte	0x73
	.4byte	0xfd
	.4byte	.LLST75
	.uleb128 0x26
	.4byte	.LASF142
	.byte	0x1
	.byte	0x74
	.4byte	0xfd
	.uleb128 0x2d
	.4byte	.LASF143
	.byte	0x1
	.byte	0x75
	.4byte	0xfd
	.4byte	.LLST76
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.byte	0x79
	.4byte	0x10b
	.uleb128 0x25
	.string	"g"
	.byte	0x1
	.byte	0x7a
	.4byte	0x10b
	.byte	0x0
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0xa0
	.uleb128 0x27
	.string	"xx"
	.byte	0x1
	.byte	0x85
	.4byte	0xbb
	.4byte	.LLST77
	.uleb128 0x25
	.string	"yy"
	.byte	0x1
	.byte	0x85
	.4byte	0xbb
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.4byte	0x115
	.4byte	0xe7a
	.uleb128 0x21
	.4byte	0x47
	.2byte	0x3fff
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF144
	.byte	0x1
	.byte	0xc7
	.4byte	.LASF145
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LLST78
	.4byte	0xf6b
	.uleb128 0x2b
	.4byte	.LASF146
	.byte	0x1
	.byte	0xc7
	.4byte	0x3b0
	.4byte	.LLST79
	.uleb128 0x2c
	.4byte	.LASF133
	.byte	0x1
	.byte	0xc8
	.4byte	0xf6b
	.byte	0x4
	.byte	0x91
	.sleb128 -16512
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.byte	0xc9
	.4byte	0x135
	.4byte	.LLST80
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.byte	0xc9
	.4byte	0x135
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.byte	0xca
	.4byte	0x411
	.4byte	.LLST81
	.uleb128 0x26
	.4byte	.LASF147
	.byte	0x1
	.byte	0xcc
	.4byte	0x135
	.uleb128 0x2d
	.4byte	.LASF134
	.byte	0x1
	.byte	0xe4
	.4byte	0x411
	.4byte	.LLST82
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0xc8
	.4byte	0xf4c
	.uleb128 0x2d
	.4byte	.LASF141
	.byte	0x1
	.byte	0xcf
	.4byte	0xfd
	.4byte	.LLST83
	.uleb128 0x26
	.4byte	.LASF142
	.byte	0x1
	.byte	0xd0
	.4byte	0xfd
	.uleb128 0x2d
	.4byte	.LASF148
	.byte	0x1
	.byte	0xd2
	.4byte	0xfd
	.4byte	.LLST84
	.uleb128 0x25
	.string	"sin"
	.byte	0x1
	.byte	0xd4
	.4byte	0xfd
	.uleb128 0x25
	.string	"cos"
	.byte	0x1
	.byte	0xd5
	.4byte	0xfd
	.uleb128 0x2d
	.4byte	.LASF135
	.byte	0x1
	.byte	0xd9
	.4byte	0xfd
	.4byte	.LLST85
	.byte	0x0
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0xf8
	.uleb128 0x27
	.string	"xx"
	.byte	0x1
	.byte	0xe7
	.4byte	0xbb
	.4byte	.LLST86
	.uleb128 0x25
	.string	"yy"
	.byte	0x1
	.byte	0xe7
	.4byte	0xbb
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.4byte	0x10b
	.4byte	0xf7c
	.uleb128 0x21
	.4byte	0x47
	.2byte	0x3fff
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF149
	.byte	0x1
	.byte	0x95
	.4byte	.LASF150
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LLST87
	.4byte	0x106d
	.uleb128 0x2b
	.4byte	.LASF146
	.byte	0x1
	.byte	0x95
	.4byte	0x3b0
	.4byte	.LLST88
	.uleb128 0x2c
	.4byte	.LASF133
	.byte	0x1
	.byte	0x96
	.4byte	0xf6b
	.byte	0x4
	.byte	0x91
	.sleb128 -16512
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.byte	0x97
	.4byte	0x135
	.4byte	.LLST89
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.byte	0x97
	.4byte	0x135
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.byte	0x99
	.4byte	0x411
	.4byte	.LLST90
	.uleb128 0x26
	.4byte	.LASF147
	.byte	0x1
	.byte	0x9d
	.4byte	0x135
	.uleb128 0x2d
	.4byte	.LASF134
	.byte	0x1
	.byte	0xb3
	.4byte	0x411
	.4byte	.LLST91
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x140
	.4byte	0x104e
	.uleb128 0x2d
	.4byte	.LASF141
	.byte	0x1
	.byte	0xa0
	.4byte	0xfd
	.4byte	.LLST92
	.uleb128 0x26
	.4byte	.LASF142
	.byte	0x1
	.byte	0xa1
	.4byte	0xfd
	.uleb128 0x2d
	.4byte	.LASF148
	.byte	0x1
	.byte	0xa3
	.4byte	0xfd
	.4byte	.LLST93
	.uleb128 0x25
	.string	"sin"
	.byte	0x1
	.byte	0xa5
	.4byte	0xfd
	.uleb128 0x25
	.string	"cos"
	.byte	0x1
	.byte	0xa6
	.4byte	0xfd
	.uleb128 0x2d
	.4byte	.LASF135
	.byte	0x1
	.byte	0xa9
	.4byte	0xfd
	.4byte	.LLST94
	.byte	0x0
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x170
	.uleb128 0x27
	.string	"xx"
	.byte	0x1
	.byte	0xb6
	.4byte	0xbb
	.4byte	.LLST95
	.uleb128 0x25
	.string	"yy"
	.byte	0x1
	.byte	0xb6
	.4byte	0xbb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.4byte	.LASF151
	.byte	0x2
	.2byte	0x473
	.byte	0x3
	.4byte	0x1099
	.uleb128 0x2f
	.string	"x"
	.byte	0x2
	.2byte	0x473
	.4byte	0x14b
	.uleb128 0x2f
	.string	"y"
	.byte	0x2
	.2byte	0x473
	.4byte	0x14b
	.uleb128 0x2f
	.string	"z"
	.byte	0x2
	.2byte	0x473
	.4byte	0x14b
	.byte	0x0
	.uleb128 0x2e
	.4byte	.LASF152
	.byte	0x2
	.2byte	0x4be
	.byte	0x3
	.4byte	0x10c8
	.uleb128 0x2f
	.string	"nx"
	.byte	0x2
	.2byte	0x4be
	.4byte	0x14b
	.uleb128 0x2f
	.string	"ny"
	.byte	0x2
	.2byte	0x4be
	.4byte	0x14b
	.uleb128 0x2f
	.string	"nz"
	.byte	0x2
	.2byte	0x4be
	.4byte	0x14b
	.byte	0x0
	.uleb128 0x2e
	.4byte	.LASF153
	.byte	0x2
	.2byte	0x50a
	.byte	0x3
	.4byte	0x10ea
	.uleb128 0x2f
	.string	"s"
	.byte	0x2
	.2byte	0x50a
	.4byte	0x14b
	.uleb128 0x2f
	.string	"t"
	.byte	0x2
	.2byte	0x50a
	.4byte	0x14b
	.byte	0x0
	.uleb128 0x30
	.4byte	.LASF222
	.byte	0x2
	.2byte	0x46f
	.byte	0x3
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x271
	.4byte	0xbb
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LLST96
	.4byte	0x165b
	.uleb128 0x14
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x271
	.4byte	0xbb
	.4byte	.LLST97
	.uleb128 0x14
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x271
	.4byte	0x156
	.4byte	.LLST98
	.uleb128 0x18
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x273
	.4byte	0x115
	.4byte	.LLST99
	.uleb128 0x19
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x274
	.4byte	0x14b
	.uleb128 0x16
	.string	"zt"
	.byte	0x1
	.2byte	0x274
	.4byte	0x14b
	.4byte	.LLST100
	.uleb128 0x18
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x275
	.4byte	0x120
	.4byte	.LLST101
	.uleb128 0x16
	.string	"fb"
	.byte	0x1
	.2byte	0x276
	.4byte	0x120
	.4byte	.LLST102
	.uleb128 0x18
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x277
	.4byte	0x14b
	.4byte	.LLST103
	.uleb128 0x19
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x278
	.4byte	0x120
	.uleb128 0x1b
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x279
	.4byte	0x36b
	.byte	0x3
	.byte	0x91
	.sleb128 -852
	.uleb128 0x1b
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x27a
	.4byte	0x36b
	.byte	0x3
	.byte	0x91
	.sleb128 -820
	.uleb128 0x1b
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x27b
	.4byte	0x36b
	.byte	0x3
	.byte	0x91
	.sleb128 -788
	.uleb128 0x1b
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x27c
	.4byte	0x36b
	.byte	0x3
	.byte	0x91
	.sleb128 -756
	.uleb128 0x1b
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x27d
	.4byte	0x36b
	.byte	0x3
	.byte	0x91
	.sleb128 -724
	.uleb128 0x1b
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x27f
	.4byte	0x2a8
	.byte	0x3
	.byte	0x91
	.sleb128 -620
	.uleb128 0x1b
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x283
	.4byte	0x2a8
	.byte	0x3
	.byte	0x91
	.sleb128 -572
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x287
	.4byte	0x2a8
	.byte	0x3
	.byte	0x91
	.sleb128 -524
	.uleb128 0x1b
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x288
	.4byte	0x2a8
	.byte	0x3
	.byte	0x91
	.sleb128 -476
	.uleb128 0x1b
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x288
	.4byte	0x2a8
	.byte	0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x1d
	.string	"mvi"
	.byte	0x1
	.2byte	0x288
	.4byte	0x2a8
	.uleb128 0x1b
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x289
	.4byte	0x2df
	.byte	0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x18
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x28a
	.4byte	0xab
	.4byte	.LLST104
	.uleb128 0x18
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x28b
	.4byte	0x342
	.4byte	.LLST105
	.uleb128 0x20
	.string	"cam"
	.byte	0x1
	.2byte	0x28c
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x20
	.string	"up"
	.byte	0x1
	.2byte	0x28d
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -1036
	.uleb128 0x1b
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x28e
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -1024
	.uleb128 0x1b
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x28f
	.4byte	0x406
	.byte	0x3
	.byte	0x91
	.sleb128 -940
	.uleb128 0x16
	.string	"ptr"
	.byte	0x1
	.2byte	0x291
	.4byte	0xd7
	.4byte	.LLST106
	.uleb128 0x19
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x2c2
	.4byte	0x23b
	.uleb128 0x1d
	.string	"w"
	.byte	0x1
	.2byte	0x30c
	.4byte	0x14b
	.uleb128 0x1d
	.string	"h"
	.byte	0x1
	.2byte	0x30d
	.4byte	0x14b
	.uleb128 0x1b
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x311
	.4byte	0x740
	.byte	0x3
	.byte	0x91
	.sleb128 -692
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.2byte	0x319
	.4byte	0xbb
	.4byte	.LLST107
	.uleb128 0x19
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x31a
	.4byte	0xbb
	.uleb128 0x19
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x31b
	.4byte	0x73a
	.uleb128 0x19
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x31c
	.4byte	0x73a
	.uleb128 0x19
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x31d
	.4byte	0x73a
	.uleb128 0x16
	.string	"dir"
	.byte	0x1
	.2byte	0x35c
	.4byte	0x14b
	.4byte	.LLST108
	.uleb128 0x18
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x35f
	.4byte	0x10b
	.4byte	.LLST109
	.uleb128 0x18
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x360
	.4byte	0x10b
	.4byte	.LLST110
	.uleb128 0x18
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x361
	.4byte	0xfd
	.4byte	.LLST111
	.uleb128 0x18
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x362
	.4byte	0xbb
	.4byte	.LLST112
	.uleb128 0x16
	.string	"ii"
	.byte	0x1
	.2byte	0x363
	.4byte	0xbb
	.4byte	.LLST113
	.uleb128 0x16
	.string	"q"
	.byte	0x1
	.2byte	0x37e
	.4byte	0xbb
	.4byte	.LLST114
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x1b8
	.4byte	0x13e4
	.uleb128 0x18
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x29a
	.4byte	0x165b
	.4byte	.LLST115
	.uleb128 0x19
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x29a
	.4byte	0x165b
	.uleb128 0x19
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x29a
	.4byte	0x47d
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x1d0
	.uleb128 0x18
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x29c
	.4byte	0xbb
	.4byte	.LLST116
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x1e8
	.4byte	0x1581
	.uleb128 0x18
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x38d
	.4byte	0x120
	.4byte	.LLST117
	.uleb128 0x18
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x38e
	.4byte	0x120
	.4byte	.LLST118
	.uleb128 0x1b
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x39f
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -952
	.uleb128 0x1b
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x3bf
	.4byte	0x3a4
	.byte	0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x18
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x3db
	.4byte	0x10b
	.4byte	.LLST119
	.uleb128 0x1b
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x3de
	.4byte	0x1661
	.byte	0x3
	.byte	0x91
	.sleb128 -900
	.uleb128 0x1b
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x3e5
	.4byte	0x1661
	.byte	0x3
	.byte	0x91
	.sleb128 -876
	.uleb128 0x16
	.string	"idx"
	.byte	0x1
	.2byte	0x472
	.4byte	0xbb
	.4byte	.LLST120
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x228
	.uleb128 0x16
	.string	"xxx"
	.byte	0x1
	.2byte	0x476
	.4byte	0xfd
	.4byte	.LLST121
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x268
	.uleb128 0x19
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x48c
	.4byte	0x643
	.uleb128 0x19
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x48d
	.4byte	0x643
	.uleb128 0x32
	.4byte	0x1099
	.4byte	.LBB160
	.4byte	.LBE160
	.byte	0x1
	.2byte	0x491
	.4byte	0x14cf
	.uleb128 0x33
	.4byte	0x10bc
	.4byte	.LLST122
	.uleb128 0x33
	.4byte	0x10b1
	.4byte	.LLST123
	.uleb128 0x33
	.4byte	0x10a6
	.4byte	.LLST124
	.byte	0x0
	.uleb128 0x32
	.4byte	0x1099
	.4byte	.LBB162
	.4byte	.LBE162
	.byte	0x1
	.2byte	0x490
	.4byte	0x14ff
	.uleb128 0x33
	.4byte	0x10bc
	.4byte	.LLST125
	.uleb128 0x33
	.4byte	0x10b1
	.4byte	.LLST126
	.uleb128 0x33
	.4byte	0x10a6
	.4byte	.LLST127
	.byte	0x0
	.uleb128 0x32
	.4byte	0x1099
	.4byte	.LBB164
	.4byte	.LBE164
	.byte	0x1
	.2byte	0x48f
	.4byte	0x152f
	.uleb128 0x33
	.4byte	0x10bc
	.4byte	.LLST128
	.uleb128 0x33
	.4byte	0x10b1
	.4byte	.LLST129
	.uleb128 0x33
	.4byte	0x10a6
	.4byte	.LLST130
	.byte	0x0
	.uleb128 0x34
	.4byte	0x106d
	.4byte	.Ldebug_ranges0+0x2b8
	.byte	0x1
	.2byte	0x48e
	.4byte	0x155b
	.uleb128 0x33
	.4byte	0x108e
	.4byte	.LLST131
	.uleb128 0x33
	.4byte	0x1084
	.4byte	.LLST132
	.uleb128 0x33
	.4byte	0x107a
	.4byte	.LLST133
	.byte	0x0
	.uleb128 0x35
	.4byte	0x10c8
	.4byte	.LBB172
	.4byte	.LBE172
	.byte	0x1
	.2byte	0x492
	.uleb128 0x33
	.4byte	0x10df
	.4byte	.LLST134
	.uleb128 0x33
	.4byte	0x10d5
	.4byte	.LLST135
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LBB182
	.4byte	.LBE182
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.2byte	0x320
	.4byte	0xbb
	.4byte	.LLST136
	.uleb128 0x20
	.string	"t"
	.byte	0x1
	.2byte	0x321
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -1012
	.uleb128 0x20
	.string	"b"
	.byte	0x1
	.2byte	0x321
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -1000
	.uleb128 0x20
	.string	"n"
	.byte	0x1
	.2byte	0x321
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -988
	.uleb128 0x20
	.string	"pn"
	.byte	0x1
	.2byte	0x321
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -976
	.uleb128 0x1b
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x322
	.4byte	0x740
	.byte	0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x1b
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x323
	.4byte	0x1677
	.byte	0x3
	.byte	0x91
	.sleb128 -924
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x2d8
	.4byte	0x1613
	.uleb128 0x19
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x325
	.4byte	0x643
	.uleb128 0x19
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x326
	.4byte	0x643
	.byte	0x0
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x2f8
	.uleb128 0x1b
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x33a
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -964
	.uleb128 0x1b
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x33a
	.4byte	0x29d
	.byte	0x3
	.byte	0x91
	.sleb128 -952
	.uleb128 0x16
	.string	"dpt"
	.byte	0x1
	.2byte	0x340
	.4byte	0xfd
	.4byte	.LLST137
	.uleb128 0x16
	.string	"dpb"
	.byte	0x1
	.2byte	0x341
	.4byte	0xfd
	.4byte	.LLST138
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x47d
	.uleb128 0x4
	.4byte	0x14b
	.4byte	0x1677
	.uleb128 0x5
	.4byte	0x47
	.byte	0x1
	.uleb128 0x5
	.4byte	0x47
	.byte	0x2
	.byte	0x0
	.uleb128 0x4
	.4byte	0xfd
	.4byte	0x1687
	.uleb128 0x5
	.4byte	0x47
	.byte	0x5
	.byte	0x0
	.uleb128 0x4
	.4byte	0x10b
	.4byte	0x1692
	.uleb128 0x36
	.byte	0x0
	.uleb128 0x37
	.4byte	.LASF203
	.byte	0xa
	.byte	0x2
	.4byte	0x1687
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.4byte	.LASF204
	.byte	0xa
	.byte	0x3
	.4byte	0x16ac
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	0x120
	.uleb128 0x38
	.4byte	.LASF205
	.byte	0x1
	.byte	0x21
	.4byte	0x411
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	buf1
	.uleb128 0x38
	.4byte	.LASF206
	.byte	0x1
	.byte	0x22
	.4byte	0x411
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	buf2
	.uleb128 0x38
	.4byte	.LASF207
	.byte	0x1
	.byte	0x23
	.4byte	0x36b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	buf1_tex
	.uleb128 0x38
	.4byte	.LASF208
	.byte	0x1
	.byte	0x24
	.4byte	0x36b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	buf2_tex
	.uleb128 0x2c
	.4byte	.LASF209
	.byte	0x1
	.byte	0x36
	.4byte	0x170a
	.byte	0x5
	.byte	0x3
	.4byte	rmode
	.uleb128 0xc
	.byte	0x4
	.4byte	0x261
	.uleb128 0x4
	.4byte	0xab
	.4byte	0x1720
	.uleb128 0x5
	.4byte	0x47
	.byte	0x1
	.byte	0x0
	.uleb128 0x2c
	.4byte	.LASF210
	.byte	0x1
	.byte	0x37
	.4byte	0x1710
	.byte	0x5
	.byte	0x3
	.4byte	frameBuffer
	.uleb128 0x4
	.4byte	0x342
	.4byte	0x1741
	.uleb128 0x5
	.4byte	0x47
	.byte	0x2
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF211
	.byte	0x1
	.byte	0x3a
	.4byte	0x174c
	.uleb128 0xd
	.4byte	0x1731
	.uleb128 0x4
	.4byte	0xfd
	.4byte	0x1767
	.uleb128 0x5
	.4byte	0x47
	.byte	0x17
	.uleb128 0x5
	.4byte	0x47
	.byte	0x4
	.byte	0x0
	.uleb128 0x38
	.4byte	.LASF212
	.byte	0x1
	.byte	0x40
	.4byte	0x1751
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cubedata
	.uleb128 0x39
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x231
	.4byte	0x140
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sock
	.uleb128 0x39
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x231
	.4byte	0x140
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	csock
	.uleb128 0x39
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x232
	.4byte	0x4a4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	client
	.uleb128 0x39
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x233
	.4byte	0x4a4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	server
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x180
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x17c6
	.4byte	0x559
	.string	"SortST"
	.4byte	0x649
	.string	"CalcTangentSpace"
	.4byte	0x750
	.string	"Sys_WriteSocket"
	.4byte	0x77e
	.string	"Sys_Printf"
	.4byte	0x7de
	.string	"Sys_AcceptLogTerminal"
	.4byte	0x84b
	.string	"CalcTangSp3"
	.4byte	0x9db
	.string	"CalcTangSp"
	.4byte	0xae9
	.string	"CalcTangSp2"
	.4byte	0xbdf
	.string	"setlight"
	.4byte	0xcbc
	.string	"GL_CreateIntensityRampTex"
	.4byte	0xd8b
	.string	"GL_CreateTubeTex"
	.4byte	0xe7a
	.string	"GL_CreateLightBulbInvTexI8"
	.4byte	0xf7c
	.string	"GL_CreateLightBulbTexI8"
	.4byte	0x10f3
	.string	"main"
	.4byte	0x16b1
	.string	"buf1"
	.4byte	0x16c3
	.string	"buf2"
	.4byte	0x16d5
	.string	"buf1_tex"
	.4byte	0x16e7
	.string	"buf2_tex"
	.4byte	0x1767
	.string	"cubedata"
	.4byte	0x1779
	.string	"sock"
	.4byte	0x178c
	.string	"csock"
	.4byte	0x179f
	.string	"client"
	.4byte	0x17b2
	.string	"server"
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB67-.Ltext0
	.4byte	.LBE67-.Ltext0
	.4byte	.LBB57-.Ltext0
	.4byte	.LBE57-.Ltext0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	.LBB59-.Ltext0
	.4byte	.LBE59-.Ltext0
	.4byte	.LBB60-.Ltext0
	.4byte	.LBE60-.Ltext0
	.4byte	.LBB63-.Ltext0
	.4byte	.LBE63-.Ltext0
	.4byte	.LBB65-.Ltext0
	.4byte	.LBE65-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB68-.Ltext0
	.4byte	.LBE68-.Ltext0
	.4byte	.LBB61-.Ltext0
	.4byte	.LBE61-.Ltext0
	.4byte	.LBB62-.Ltext0
	.4byte	.LBE62-.Ltext0
	.4byte	.LBB64-.Ltext0
	.4byte	.LBE64-.Ltext0
	.4byte	.LBB66-.Ltext0
	.4byte	.LBE66-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB73-.Ltext0
	.4byte	.LBE73-.Ltext0
	.4byte	.LBB77-.Ltext0
	.4byte	.LBE77-.Ltext0
	.4byte	.LBB76-.Ltext0
	.4byte	.LBE76-.Ltext0
	.4byte	.LBB75-.Ltext0
	.4byte	.LBE75-.Ltext0
	.4byte	.LBB74-.Ltext0
	.4byte	.LBE74-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB78-.Ltext0
	.4byte	.LBE78-.Ltext0
	.4byte	.LBB81-.Ltext0
	.4byte	.LBE81-.Ltext0
	.4byte	.LBB80-.Ltext0
	.4byte	.LBE80-.Ltext0
	.4byte	.LBB79-.Ltext0
	.4byte	.LBE79-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB88-.Ltext0
	.4byte	.LBE88-.Ltext0
	.4byte	.LBB96-.Ltext0
	.4byte	.LBE96-.Ltext0
	.4byte	.LBB94-.Ltext0
	.4byte	.LBE94-.Ltext0
	.4byte	.LBB92-.Ltext0
	.4byte	.LBE92-.Ltext0
	.4byte	.LBB90-.Ltext0
	.4byte	.LBE90-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB89-.Ltext0
	.4byte	.LBE89-.Ltext0
	.4byte	.LBB100-.Ltext0
	.4byte	.LBE100-.Ltext0
	.4byte	.LBB99-.Ltext0
	.4byte	.LBE99-.Ltext0
	.4byte	.LBB98-.Ltext0
	.4byte	.LBE98-.Ltext0
	.4byte	.LBB97-.Ltext0
	.4byte	.LBE97-.Ltext0
	.4byte	.LBB95-.Ltext0
	.4byte	.LBE95-.Ltext0
	.4byte	.LBB93-.Ltext0
	.4byte	.LBE93-.Ltext0
	.4byte	.LBB91-.Ltext0
	.4byte	.LBE91-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB107-.Ltext0
	.4byte	.LBE107-.Ltext0
	.4byte	.LBB115-.Ltext0
	.4byte	.LBE115-.Ltext0
	.4byte	.LBB113-.Ltext0
	.4byte	.LBE113-.Ltext0
	.4byte	.LBB111-.Ltext0
	.4byte	.LBE111-.Ltext0
	.4byte	.LBB109-.Ltext0
	.4byte	.LBE109-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB108-.Ltext0
	.4byte	.LBE108-.Ltext0
	.4byte	.LBB119-.Ltext0
	.4byte	.LBE119-.Ltext0
	.4byte	.LBB118-.Ltext0
	.4byte	.LBE118-.Ltext0
	.4byte	.LBB117-.Ltext0
	.4byte	.LBE117-.Ltext0
	.4byte	.LBB116-.Ltext0
	.4byte	.LBE116-.Ltext0
	.4byte	.LBB114-.Ltext0
	.4byte	.LBE114-.Ltext0
	.4byte	.LBB112-.Ltext0
	.4byte	.LBE112-.Ltext0
	.4byte	.LBB110-.Ltext0
	.4byte	.LBE110-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB147-.Ltext0
	.4byte	.LBE147-.Ltext0
	.4byte	.LBB150-.Ltext0
	.4byte	.LBE150-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB148-.Ltext0
	.4byte	.LBE148-.Ltext0
	.4byte	.LBB149-.Ltext0
	.4byte	.LBE149-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB151-.Ltext0
	.4byte	.LBE151-.Ltext0
	.4byte	.LBB197-.Ltext0
	.4byte	.LBE197-.Ltext0
	.4byte	.LBB196-.Ltext0
	.4byte	.LBE196-.Ltext0
	.4byte	.LBB195-.Ltext0
	.4byte	.LBE195-.Ltext0
	.4byte	.LBB194-.Ltext0
	.4byte	.LBE194-.Ltext0
	.4byte	.LBB193-.Ltext0
	.4byte	.LBE193-.Ltext0
	.4byte	.LBB192-.Ltext0
	.4byte	.LBE192-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB152-.Ltext0
	.4byte	.LBE152-.Ltext0
	.4byte	.LBB181-.Ltext0
	.4byte	.LBE181-.Ltext0
	.4byte	.LBB180-.Ltext0
	.4byte	.LBE180-.Ltext0
	.4byte	.LBB179-.Ltext0
	.4byte	.LBE179-.Ltext0
	.4byte	.LBB178-.Ltext0
	.4byte	.LBE178-.Ltext0
	.4byte	.LBB177-.Ltext0
	.4byte	.LBE177-.Ltext0
	.4byte	.LBB176-.Ltext0
	.4byte	.LBE176-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB159-.Ltext0
	.4byte	.LBE159-.Ltext0
	.4byte	.LBB153-.Ltext0
	.4byte	.LBE153-.Ltext0
	.4byte	.LBB154-.Ltext0
	.4byte	.LBE154-.Ltext0
	.4byte	.LBB155-.Ltext0
	.4byte	.LBE155-.Ltext0
	.4byte	.LBB156-.Ltext0
	.4byte	.LBE156-.Ltext0
	.4byte	.LBB157-.Ltext0
	.4byte	.LBE157-.Ltext0
	.4byte	.LBB175-.Ltext0
	.4byte	.LBE175-.Ltext0
	.4byte	.LBB158-.Ltext0
	.4byte	.LBE158-.Ltext0
	.4byte	.LBB174-.Ltext0
	.4byte	.LBE174-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB168-.Ltext0
	.4byte	.LBE168-.Ltext0
	.4byte	.LBB166-.Ltext0
	.4byte	.LBE166-.Ltext0
	.4byte	.LBB167-.Ltext0
	.4byte	.LBE167-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB183-.Ltext0
	.4byte	.LBE183-.Ltext0
	.4byte	.LBB185-.Ltext0
	.4byte	.LBE185-.Ltext0
	.4byte	.LBB184-.Ltext0
	.4byte	.LBE184-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB186-.Ltext0
	.4byte	.LBE186-.Ltext0
	.4byte	.LBB191-.Ltext0
	.4byte	.LBE191-.Ltext0
	.4byte	.LBB190-.Ltext0
	.4byte	.LBE190-.Ltext0
	.4byte	.LBB189-.Ltext0
	.4byte	.LBE189-.Ltext0
	.4byte	.LBB188-.Ltext0
	.4byte	.LBE188-.Ltext0
	.4byte	.LBB187-.Ltext0
	.4byte	.LBE187-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF65:
	.string	"sa_family"
.LASF195:
	.string	"vertdata"
.LASF59:
	.string	"sin_family"
.LASF39:
	.string	"GXTexObj"
.LASF172:
	.string	"background"
.LASF40:
	.string	"_gx_litobj"
.LASF161:
	.string	"lightbulbinv_tex"
.LASF190:
	.string	"buttonsInv"
.LASF98:
	.string	"_Z11CalcTangSp3P5_vecfPfS0_S0_"
.LASF111:
	.string	"det_inv"
.LASF130:
	.string	"_phi"
.LASF44:
	.string	"type"
.LASF209:
	.string	"rmode"
.LASF31:
	.string	"vfilter"
.LASF33:
	.string	"_vecf"
.LASF53:
	.string	"children"
.LASF19:
	.string	"_gx_rmodeobj"
.LASF159:
	.string	"rquad"
.LASF145:
	.string	"_Z26GL_CreateLightBulbInvTexI8P10_gx_texobj"
.LASF125:
	.string	"litcol"
.LASF213:
	.string	"sock"
.LASF160:
	.string	"first_frame"
.LASF12:
	.string	"long int"
.LASF76:
	.string	"CalcTangentSpace"
.LASF35:
	.string	"Mtx44"
.LASF100:
	.string	"texv21"
.LASF104:
	.string	"texv23"
.LASF210:
	.string	"frameBuffer"
.LASF143:
	.string	"lengthInv"
.LASF154:
	.string	"main"
.LASF58:
	.string	"sin_len"
.LASF171:
	.string	"gpfifo"
.LASF102:
	.string	"texv31"
.LASF6:
	.string	"signed char"
.LASF141:
	.string	"vect_x"
.LASF142:
	.string	"vect_y"
.LASF114:
	.string	"tex10u"
.LASF115:
	.string	"tex10v"
.LASF216:
	.string	"server"
.LASF73:
	.string	"value1"
.LASF71:
	.string	"idx1"
.LASF64:
	.string	"sa_len"
.LASF4:
	.string	"unsigned char"
.LASF175:
	.string	"testpattern"
.LASF118:
	.string	"idxu"
.LASF119:
	.string	"idxv"
.LASF131:
	.string	"lobj"
.LASF16:
	.string	"__gnuc_va_list"
.LASF165:
	.string	"reflectionlight_tex"
.LASF48:
	.string	"TPLFile"
.LASF11:
	.string	"char"
.LASF93:
	.string	"clientlen"
.LASF57:
	.string	"sockaddr_in"
.LASF60:
	.string	"sin_port"
.LASF149:
	.string	"GL_CreateLightBulbTexI8"
.LASF137:
	.string	"_Z25GL_CreateIntensityRampTexP10_gx_texobj"
.LASF29:
	.string	"field_rendering"
.LASF87:
	.string	"text"
.LASF62:
	.string	"sin_zero"
.LASF204:
	.string	"crate_tpl_size"
.LASF138:
	.string	"_Z16GL_CreateTubeTexP10_gx_texobj"
.LASF18:
	.string	"__va_list_tag"
.LASF133:
	.string	"texbuf"
.LASF192:
	.string	"tevstage"
.LASF126:
	.string	"ambcol"
.LASF157:
	.string	"buttonState"
.LASF91:
	.string	"Sys_AcceptLogTerminal"
.LASF200:
	.string	"ftextst"
.LASF150:
	.string	"_Z23GL_CreateLightBulbTexI8P10_gx_texobj"
.LASF72:
	.string	"idx2"
.LASF199:
	.string	"fverts"
.LASF26:
	.string	"viWidth"
.LASF112:
	.string	"tex20u"
.LASF113:
	.string	"tex20v"
.LASF10:
	.string	"long unsigned int"
.LASF222:
	.string	"GX_End"
.LASF109:
	.string	"v20tex10u"
.LASF110:
	.string	"v20tex10v"
.LASF147:
	.string	"fact"
.LASF46:
	.string	"texdesc"
.LASF121:
	.string	"texdu"
.LASF120:
	.string	"texdv"
.LASF155:
	.string	"argc"
.LASF148:
	.string	"lengthf"
.LASF197:
	.string	"verts"
.LASF219:
	.string	"d:\\\\Data\\\\Nintendo\\\\lesson7\\\\build"
.LASF156:
	.string	"argv"
.LASF79:
	.string	"vertices"
.LASF169:
	.string	"modelview"
.LASF151:
	.string	"GX_Position3f32"
.LASF8:
	.string	"long long int"
.LASF30:
	.string	"sample_pattern"
.LASF67:
	.string	"va_list"
.LASF170:
	.string	"perspective"
.LASF205:
	.string	"buf1"
.LASF206:
	.string	"buf2"
.LASF13:
	.string	"double"
.LASF96:
	.string	"netmask"
.LASF122:
	.string	"view"
.LASF51:
	.string	"frequency"
.LASF14:
	.string	"float"
.LASF43:
	.string	"_tplfile"
.LASF85:
	.string	"Sys_WriteSocket"
.LASF89:
	.string	"_Z10Sys_PrintfPKcz"
.LASF176:
	.string	"cubeAxis"
.LASF61:
	.string	"sin_addr"
.LASF3:
	.string	"unsigned int"
.LASF124:
	.string	"dist"
.LASF80:
	.string	"tangent"
.LASF38:
	.string	"_gx_texobj"
.LASF47:
	.string	"tpl_file"
.LASF28:
	.string	"xfbMode"
.LASF1:
	.string	"overflow_arg_area"
.LASF54:
	.string	"myTestNode_t"
.LASF178:
	.string	"tangents"
.LASF32:
	.string	"GXRModeObj"
.LASF186:
	.string	"prevnode"
.LASF88:
	.string	"Sys_Printf"
.LASF82:
	.string	"vec1"
.LASF83:
	.string	"vec2"
.LASF187:
	.string	"firstnode"
.LASF17:
	.string	"bool"
.LASF69:
	.string	"indicesu"
.LASF70:
	.string	"indicesv"
.LASF129:
	.string	"_theta"
.LASF117:
	.string	"_Z11CalcTangSp2P5_vecfPfS0_S0_"
.LASF15:
	.string	"long double"
.LASF45:
	.string	"ntextures"
.LASF189:
	.string	"buttonsHeld"
.LASF123:
	.string	"theta"
.LASF221:
	.string	"_Z8setlightPA4_ffff9_gx_colorS1_S1_"
.LASF86:
	.string	"_Z15Sys_WriteSocketPc"
.LASF49:
	.string	"myTestNode_s"
.LASF217:
	.string	"GNU C++ 4.2.4 (devkitPPC release 17)"
.LASF173:
	.string	"look"
.LASF22:
	.string	"efbHeight"
.LASF194:
	.string	"offset_mtx2"
.LASF184:
	.string	"size"
.LASF106:
	.string	"_Z10CalcTangSpP5_vecfPfS0_S0_"
.LASF9:
	.string	"long long unsigned int"
.LASF94:
	.string	"localip"
.LASF116:
	.string	"CalcTangSp2"
.LASF97:
	.string	"CalcTangSp3"
.LASF2:
	.string	"reg_save_area"
.LASF212:
	.string	"cubedata"
.LASF140:
	.string	"height"
.LASF75:
	.string	"SortST"
.LASF105:
	.string	"CalcTangSp"
.LASF66:
	.string	"sa_data"
.LASF185:
	.string	"testnode"
.LASF163:
	.string	"texture"
.LASF166:
	.string	"nullMtx"
.LASF63:
	.string	"sockaddr"
.LASF21:
	.string	"fbWidth"
.LASF74:
	.string	"value2"
.LASF182:
	.string	"vsync"
.LASF36:
	.string	"_gx_color"
.LASF78:
	.string	"_Z16CalcTangentSpaceP5_vecfPfS0_S0_"
.LASF135:
	.string	"intensity"
.LASF188:
	.string	"testcnt"
.LASF84:
	.string	"planes"
.LASF193:
	.string	"offset_mtx"
.LASF55:
	.string	"in_addr"
.LASF162:
	.string	"intensityramp_tex"
.LASF34:
	.string	"Vector"
.LASF177:
	.string	"numverts"
.LASF202:
	.string	"orthb"
.LASF158:
	.string	"yscale"
.LASF164:
	.string	"light_tex"
.LASF201:
	.string	"ortht"
.LASF152:
	.string	"GX_Normal3f32"
.LASF218:
	.string	"d:/Data/Nintendo/lesson7/source/lesson7.cpp"
.LASF7:
	.string	"short int"
.LASF181:
	.string	"mode"
.LASF167:
	.string	"halfMtx"
.LASF208:
	.string	"buf2_tex"
.LASF24:
	.string	"viXOrigin"
.LASF153:
	.string	"GX_TexCoord2f32"
.LASF77:
	.string	"_Z6SortSTPfPiS0_"
.LASF27:
	.string	"viHeight"
.LASF81:
	.string	"bitangent"
.LASF168:
	.string	"model"
.LASF20:
	.string	"viTVMode"
.LASF179:
	.string	"bitangents"
.LASF146:
	.string	"texLightDir"
.LASF134:
	.string	"bufptr"
.LASF95:
	.string	"gateway"
.LASF144:
	.string	"GL_CreateLightBulbInvTexI8"
.LASF25:
	.string	"viYOrigin"
.LASF50:
	.string	"symbol"
.LASF42:
	.string	"FHANDLE"
.LASF41:
	.string	"GXLightObj"
.LASF128:
	.string	"lpos"
.LASF23:
	.string	"xfbHeight"
.LASF56:
	.string	"s_addr"
.LASF139:
	.string	"texObj"
.LASF132:
	.string	"GL_CreateIntensityRampTex"
.LASF90:
	.string	"argptr"
.LASF198:
	.string	"textst"
.LASF0:
	.string	"reserved"
.LASF203:
	.string	"crate_tpl"
.LASF5:
	.string	"short unsigned int"
.LASF220:
	.string	"setlight"
.LASF99:
	.string	"texu21"
.LASF196:
	.string	"texdata"
.LASF103:
	.string	"texu23"
.LASF68:
	.string	"texst"
.LASF183:
	.string	"numcubes"
.LASF136:
	.string	"GL_CreateTubeTex"
.LASF191:
	.string	"camlightobj"
.LASF174:
	.string	"crateTPL"
.LASF52:
	.string	"next"
.LASF215:
	.string	"client"
.LASF207:
	.string	"buf1_tex"
.LASF101:
	.string	"texu31"
.LASF180:
	.string	"normals"
.LASF211:
	.string	"litcolors"
.LASF92:
	.string	"_Z21Sys_AcceptLogTerminalv"
.LASF107:
	.string	"v10tex20u"
.LASF108:
	.string	"v10tex20v"
.LASF214:
	.string	"csock"
.LASF127:
	.string	"matcol"
.LASF37:
	.string	"GXColor"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
