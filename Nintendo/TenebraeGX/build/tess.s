	.file	"tess.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.type	noBegin, @function
noBegin:
.LFB0:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/tess.c"
	.loc 1 60 0
	.cfi_startproc
.LVL0:
	.loc 1 60 0
	blr
	.cfi_endproc
.LFE0:
	.size	noBegin, .-noBegin
	.align 2
	.type	noEdgeFlag, @function
noEdgeFlag:
.LFB1:
	.loc 1 61 0
	.cfi_startproc
.LVL1:
	.loc 1 61 0
	blr
	.cfi_endproc
.LFE1:
	.size	noEdgeFlag, .-noEdgeFlag
	.align 2
	.type	noVertex, @function
noVertex:
.LFB2:
	.loc 1 62 0
	.cfi_startproc
.LVL2:
	.loc 1 62 0
	blr
	.cfi_endproc
.LFE2:
	.size	noVertex, .-noVertex
	.align 2
	.type	noEnd, @function
noEnd:
.LFB3:
	.loc 1 63 0
	.cfi_startproc
	.loc 1 63 0
	blr
	.cfi_endproc
.LFE3:
	.size	noEnd, .-noEnd
	.align 2
	.type	noError, @function
noError:
.LFB4:
	.loc 1 64 0
	.cfi_startproc
.LVL3:
	.loc 1 64 0
	blr
	.cfi_endproc
.LFE4:
	.size	noError, .-noError
	.align 2
	.type	noCombine, @function
noCombine:
.LFB5:
	.loc 1 66 0
	.cfi_startproc
.LVL4:
	.loc 1 66 0
	blr
	.cfi_endproc
.LFE5:
	.size	noCombine, .-noCombine
	.align 2
	.type	noMesh, @function
noMesh:
.LFB6:
	.loc 1 67 0
	.cfi_startproc
.LVL5:
	.loc 1 67 0
	blr
	.cfi_endproc
.LFE6:
	.size	noMesh, .-noMesh
	.align 2
	.globl __gl_noBeginData
	.type	__gl_noBeginData, @function
__gl_noBeginData:
.LFB7:
	.loc 1 71 0
	.cfi_startproc
.LVL6:
	.loc 1 71 0
	blr
	.cfi_endproc
.LFE7:
	.size	__gl_noBeginData, .-__gl_noBeginData
	.align 2
	.globl __gl_noEdgeFlagData
	.type	__gl_noEdgeFlagData, @function
__gl_noEdgeFlagData:
.LFB8:
	.loc 1 73 0
	.cfi_startproc
.LVL7:
	.loc 1 73 0
	blr
	.cfi_endproc
.LFE8:
	.size	__gl_noEdgeFlagData, .-__gl_noEdgeFlagData
	.align 2
	.globl __gl_noVertexData
	.type	__gl_noVertexData, @function
__gl_noVertexData:
.LFB9:
	.loc 1 75 0
	.cfi_startproc
.LVL8:
	.loc 1 75 0
	blr
	.cfi_endproc
.LFE9:
	.size	__gl_noVertexData, .-__gl_noVertexData
	.align 2
	.globl __gl_noEndData
	.type	__gl_noEndData, @function
__gl_noEndData:
.LFB10:
	.loc 1 76 0
	.cfi_startproc
.LVL9:
	.loc 1 76 0
	blr
	.cfi_endproc
.LFE10:
	.size	__gl_noEndData, .-__gl_noEndData
	.align 2
	.globl __gl_noErrorData
	.type	__gl_noErrorData, @function
__gl_noErrorData:
.LFB11:
	.loc 1 78 0
	.cfi_startproc
.LVL10:
	.loc 1 78 0
	blr
	.cfi_endproc
.LFE11:
	.size	__gl_noErrorData, .-__gl_noErrorData
	.align 2
	.globl __gl_noCombineData
	.type	__gl_noCombineData, @function
__gl_noCombineData:
.LFB12:
	.loc 1 83 0
	.cfi_startproc
.LVL11:
	.loc 1 83 0
	blr
	.cfi_endproc
.LFE12:
	.size	__gl_noCombineData, .-__gl_noCombineData
	.align 2
	.type	AddVertex.isra.0, @function
AddVertex.isra.0:
.LFB32:
	.loc 1 343 0
	.cfi_startproc
.LVL12:
	mflr 0
	stwu 1,-32(1)
.LCFI0:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 31,28(1)
	stw 0,36(1)
	stw 27,12(1)
	mr 27,6
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	.loc 1 347 0
	lwz 31,0(3)
.LVL13:
	.loc 1 343 0
	stw 29,20(1)
	mr 29,5
	.cfi_offset 29, -12
	.loc 1 348 0
	cmpwi 7,31,0
	.loc 1 343 0
	stw 30,24(1)
	stw 28,16(1)
	.loc 1 343 0
	mr 30,3
	.cfi_offset 28, -16
	.cfi_offset 30, -8
	.loc 1 348 0
	beq- 7,.L22
	.loc 1 358 0
	mr 3,31
.LVL14:
	li 28,0
	bl __gl_meshSplitEdge
.LVL15:
	cmpwi 7,3,0
	beq- 7,.L16
	.loc 1 359 0
	lwz 31,12(31)
.LVL16:
.L17:
	.loc 1 364 0
	lfd 0,0(29)
	.loc 1 373 0
	li 0,1
	.loc 1 363 0
	lwz 9,16(31)
	.loc 1 378 0
	li 28,1
	.loc 1 374 0
	lwz 11,4(31)
	.loc 1 364 0
	stfd 0,16(9)
	.loc 1 365 0
	lfd 0,8(29)
	.loc 1 363 0
	stw 27,12(9)
	.loc 1 365 0
	stfd 0,24(9)
	.loc 1 366 0
	lfd 0,16(29)
	stfd 0,32(9)
	.loc 1 373 0
	stw 0,28(31)
	.loc 1 374 0
	li 0,-1
	stw 0,28(11)
	.loc 1 376 0
	stw 31,0(30)
.L16:
	.loc 1 379 0
	lwz 0,36(1)
	mr 3,28
	lwz 27,12(1)
.LVL17:
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
.LVL18:
	lwz 30,24(1)
	lwz 31,28(1)
.LVL19:
	addi 1,1,32
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL20:
.L22:
.LCFI2:
	.cfi_restore_state
	.loc 1 351 0
	lwz 3,0(4)
	.loc 1 352 0
	li 28,0
	.loc 1 351 0
	bl __gl_meshMakeEdge
.LVL21:
	.loc 1 352 0
	mr. 31,3
	beq- 0,.L16
	.loc 1 353 0
	lwz 4,4(31)
	bl __gl_meshSplice
.LVL22:
	cmpwi 7,3,0
	bne+ 7,.L17
	b .L16
	.cfi_endproc
.LFE32:
	.size	AddVertex.isra.0, .-AddVertex.isra.0
	.align 2
	.type	EmptyCache, @function
EmptyCache:
.LFB23:
	.loc 1 395 0
	.cfi_startproc
.LVL23:
	mflr 0
	stwu 1,-32(1)
.LCFI3:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 27,12(1)
	mr 27,3
	.cfi_offset 27, -20
.LVL24:
	stw 0,36(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.loc 1 399 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	bl __gl_meshNewMesh
.LVL25:
	.loc 1 400 0
	cmpwi 7,3,0
	.loc 1 399 0
	stw 3,8(27)
	.loc 1 400 0
	li 3,0
	beq- 7,.L24
	.loc 1 402 0
	lwz 30,152(27)
	.loc 1 396 0
	addi 31,27,160
	.loc 1 402 0
	addi 30,30,5
	slwi 30,30,5
	add 30,27,30
.LVL26:
	cmplw 7,31,30
	bge- 7,.L25
	addi 28,27,4
	addi 29,27,8
	b .L26
.LVL27:
.L30:
	ble- 6,.L25
.LVL28:
.L26:
	.loc 1 403 0
	lwz 6,24(31)
	mr 5,31
	mr 3,28
	mr 4,29
	bl AddVertex.isra.0
	.loc 1 402 0
	addi 31,31,32
	.loc 1 403 0
	cmpwi 7,3,0
	.loc 1 402 0
	cmplw 6,30,31
	.loc 1 403 0
	bne+ 7,.L30
	li 3,0
.LVL29:
.L24:
	.loc 1 409 0
	lwz 0,36(1)
	lwz 27,12(1)
.LVL30:
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI4:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL31:
.L25:
.LCFI5:
	.cfi_restore_state
	.loc 1 405 0
	li 0,0
	.loc 1 408 0
	li 3,1
	.loc 1 406 0
	stb 0,148(27)
	.loc 1 405 0
	stw 0,152(27)
	.loc 1 409 0
	lwz 0,36(1)
	lwz 27,12(1)
.LVL32:
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
.LVL33:
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI6:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE23:
	.size	EmptyCache, .-EmptyCache
	.align 2
	.globl gluNewTess
	.type	gluNewTess, @function
gluNewTess:
.LFB13:
	.loc 1 95 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 102 0
	li 3,64
	.loc 1 95 0
	stw 0,12(1)
	.loc 1 102 0
	.cfi_offset 65, 4
	bl __gl_memInit
	cmpwi 7,3,0
	.loc 1 103 0
	li 3,0
	.loc 1 102 0
	beq- 7,.L32
	.loc 1 105 0
	li 3,3648
	bl malloc
.LVL34:
	.loc 1 106 0
	cmpwi 0,3,0
	beq- 0,.L32
	.loc 1 112 0
	lis 9,.LC0@ha
	.loc 1 110 0
	li 0,0
	.loc 1 112 0
	lfd 0,.LC0@l(9)
	.loc 1 117 0
	lis 9,0x1
	ori 9,9,34594
	.loc 1 110 0
	stw 0,0(3)
	.loc 1 117 0
	stw 9,96(3)
	.loc 1 121 0
	lis 9,noBegin@ha
	la 9,noBegin@l(9)
	.loc 1 112 0
	stfd 0,16(3)
	.loc 1 121 0
	stw 9,128(3)
	.loc 1 122 0
	lis 9,noEdgeFlag@ha
	la 9,noEdgeFlag@l(9)
	.loc 1 113 0
	stfd 0,24(3)
	.loc 1 122 0
	stw 9,132(3)
	.loc 1 123 0
	lis 9,noVertex@ha
	la 9,noVertex@l(9)
	.loc 1 114 0
	stfd 0,32(3)
	.loc 1 123 0
	stw 9,136(3)
	.loc 1 124 0
	lis 9,noEnd@ha
	la 9,noEnd@l(9)
	.loc 1 116 0
	stfd 0,88(3)
	.loc 1 124 0
	stw 9,140(3)
	.loc 1 126 0
	lis 9,noError@ha
	la 9,noError@l(9)
	.loc 1 118 0
	stb 0,120(3)
	.loc 1 126 0
	stw 9,12(3)
	.loc 1 127 0
	lis 9,noCombine@ha
	la 9,noCombine@l(9)
	.loc 1 119 0
	stb 0,121(3)
	.loc 1 127 0
	stw 9,116(3)
	.loc 1 128 0
	lis 9,noMesh@ha
	la 9,noMesh@l(9)
	.loc 1 137 0
	stw 0,3640(3)
	.loc 1 128 0
	stw 9,144(3)
	.loc 1 130 0
	lis 9,__gl_noBeginData@ha
	la 9,__gl_noBeginData@l(9)
	stw 9,3360(3)
	.loc 1 131 0
	lis 9,__gl_noEdgeFlagData@ha
	la 9,__gl_noEdgeFlagData@l(9)
	stw 9,3364(3)
	.loc 1 132 0
	lis 9,__gl_noVertexData@ha
	la 9,__gl_noVertexData@l(9)
	stw 9,3368(3)
	.loc 1 133 0
	lis 9,__gl_noEndData@ha
	la 9,__gl_noEndData@l(9)
	stw 9,3372(3)
	.loc 1 134 0
	lis 9,__gl_noErrorData@ha
	la 9,__gl_noErrorData@l(9)
	stw 9,3376(3)
	.loc 1 135 0
	lis 9,__gl_noCombineData@ha
	la 9,__gl_noCombineData@l(9)
	stw 9,3380(3)
.LVL35:
.L32:
	.loc 1 140 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI8:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE13:
	.size	gluNewTess, .-gluNewTess
	.align 2
	.globl gluTessProperty
	.type	gluTessProperty, @function
gluTessProperty:
.LFB17:
	.loc 1 200 0
	.cfi_startproc
.LVL36:
	mflr 0
	stwu 1,-24(1)
.LCFI9:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	mr 9,3
	stw 0,28(1)
	.loc 1 203 0
	lis 0,0x1
	.cfi_offset 65, 4
	ori 0,0,34605
	cmpw 7,4,0
	beq- 7,.L37
	xoris 0,4,0xfffe
	cmpwi 7,0,-30930
	beq 7,.L38
	xoris 0,4,0xfffe
	cmpwi 7,0,-30932
	beq 7,.L47
	.loc 1 230 0
	lwz 0,3376(3)
	lis 11,__gl_noErrorData@ha
	la 11,__gl_noErrorData@l(11)
	cmpw 7,0,11
	beq- 7,.L44
	.loc 1 230 0 is_stmt 0 discriminator 1
	lis 3,0x1
.LVL37:
	lwz 4,3640(9)
.LVL38:
	ori 3,3,35364
	mtctr 0
	bctrl
.LVL39:
.L34:
	.loc 1 234 0 is_stmt 1
	lwz 0,28(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI10:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL40:
.L47:
.LCFI11:
	.cfi_restore_state
	.loc 1 210 0
	lis 11,.LC4@ha
	lfs 0,.LC4@l(11)
	fcmpu 7,1,0
	cror 30,29,30
	beq- 7,.L41
	fctiwz 0,1
	addi 11,1,20
	stfiwx 0,0,11
	lwz 11,20(1)
.L42:
.LVL41:
	.loc 1 211 0
	lis 0,0x4330
	stw 11,12(1)
	stw 0,8(1)
	lis 10,.LC6@ha
	lfs 0,.LC6@l(10)
	lfd 13,8(1)
	fsub 0,13,0
	fcmpu 7,0,1
	bne- 7,.L39
	.loc 1 213 0
	addis 10,11,0xfffe
	addi 0,10,30942
	cmplwi 7,0,4
	bgt- 7,.L37
	.loc 1 219 0
	stw 11,96(9)
	.loc 1 220 0
	b .L34
.LVL42:
.L37:
	.loc 1 226 0
	lis 11,.LC0@ha
	lfd 0,.LC0@l(11)
	fcmpu 7,1,0
	crnot 30,30
	mfcr 0
	rlwinm 0,0,31,1
	stb 0,121(9)
	.loc 1 234 0
	lwz 0,28(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI12:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L38:
.LCFI13:
	.cfi_restore_state
	.loc 1 205 0
	lis 11,.LC0@ha
	lfd 0,.LC0@l(11)
	fcmpu 7,1,0
	bnl- 7,.L48
.L39:
	.loc 1 233 0
	lwz 0,3376(9)
	lis 11,__gl_noErrorData@ha
	la 11,__gl_noErrorData@l(11)
	cmpw 7,0,11
	beq- 7,.L45
	.loc 1 233 0 is_stmt 0 discriminator 1
	lis 3,0x1
.LVL43:
	mtctr 0
	ori 3,3,35365
	lwz 4,3640(9)
.LVL44:
	bctrl
.LVL45:
	.loc 1 234 0 is_stmt 1 discriminator 1
	lwz 0,28(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI14:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL46:
.L48:
.LCFI15:
	.cfi_restore_state
	.loc 1 205 0 discriminator 1
	lis 11,.LC2@ha
	lfs 0,.LC2@l(11)
	fcmpu 7,1,0
	bgt+ 7,.L39
	.loc 1 206 0
	stfd 1,88(3)
	.loc 1 207 0
	b .L34
.L41:
	.loc 1 210 0
	fsub 0,1,0
	addi 11,1,16
	fctiwz 0,0
	stfiwx 0,0,11
	lwz 11,16(1)
	addis 11,11,0x8000
	b .L42
.L45:
	.loc 1 233 0 discriminator 2
	lwz 0,12(9)
	lis 3,0x1
.LVL47:
	ori 3,3,35365
	mtctr 0
	bctrl
.LVL48:
	b .L34
.LVL49:
.L44:
	.loc 1 230 0 discriminator 2
	lwz 0,12(3)
	lis 3,0x1
.LVL50:
	ori 3,3,35364
	mtctr 0
	bctrl
.LVL51:
	b .L34
	.cfi_endproc
.LFE17:
	.size	gluTessProperty, .-gluTessProperty
	.align 2
	.globl gluGetTessProperty
	.type	gluGetTessProperty, @function
gluGetTessProperty:
.LFB18:
	.loc 1 239 0
	.cfi_startproc
.LVL52:
	mflr 0
	stwu 1,-24(1)
.LCFI16:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	mr 9,3
	stw 0,28(1)
	.loc 1 240 0
	lis 0,0x1
	.cfi_offset 65, 4
	ori 0,0,34605
	cmpw 7,4,0
	beq- 7,.L52
	xoris 0,4,0xfffe
	cmpwi 7,0,-30930
	beq 7,.L53
	xoris 0,4,0xfffe
	cmpwi 7,0,-30932
	beq 7,.L62
	.loc 1 260 0
	lwz 0,3376(3)
	lis 11,__gl_noErrorData@ha
	la 11,__gl_noErrorData@l(11)
	cmpw 7,0,11
	.loc 1 259 0
	lis 11,.LC0@ha
	lfd 0,.LC0@l(11)
	stfd 0,0(5)
	.loc 1 260 0
	beq- 7,.L59
	.loc 1 260 0 is_stmt 0 discriminator 1
	lis 3,0x1
.LVL53:
	mtctr 0
	ori 3,3,35364
	lwz 4,3640(9)
.LVL54:
	bctrl
.LVL55:
	.loc 1 263 0 is_stmt 1 discriminator 1
	lwz 0,28(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI17:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL56:
.L62:
.LCFI18:
	.cfi_restore_state
	.loc 1 247 0
	lwz 9,96(3)
	addis 11,9,0xfffe
	addi 0,11,30942
	cmplwi 7,0,4
	bgt- 7,.L63
	.loc 1 252 0
	lis 0,0x4330
	stw 9,12(1)
	stw 0,8(1)
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	lfd 13,8(1)
	fsub 0,13,0
	stfd 0,0(5)
.LVL57:
.L49:
	.loc 1 263 0
	lwz 0,28(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI19:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL58:
.L53:
.LCFI20:
	.cfi_restore_state
	.loc 1 243 0
	lis 9,.LC0@ha
	lfd 0,88(3)
	lfd 13,.LC0@l(9)
	fcmpu 7,0,13
	cror 30,29,30
	bne- 7,.L54
	.loc 1 243 0 is_stmt 0 discriminator 2
	lis 9,.LC2@ha
	lfs 13,.LC2@l(9)
	fcmpu 7,0,13
	cror 30,28,30
	bne- 7,.L54
	.loc 1 256 0 is_stmt 1
	stfd 0,0(5)
.L65:
	.loc 1 263 0
	lwz 0,28(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI21:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L52:
.LCFI22:
	.cfi_restore_state
	.loc 1 255 0
	lbz 0,121(3)
	cmplwi 7,0,1
	bgt- 7,.L64
	.loc 1 256 0
	stw 0,20(1)
	lis 0,0x4330
	stw 0,16(1)
	lis 9,.LC6@ha
	lfs 0,.LC6@l(9)
	lfd 13,16(1)
	fsub 0,13,0
	stfd 0,0(5)
	b .L65
.L59:
	.loc 1 260 0 discriminator 2
	lwz 0,12(3)
	lis 3,0x1
.LVL59:
	ori 3,3,35364
	mtctr 0
	bctrl
.LVL60:
	b .L49
.LVL61:
.L54:
	.loc 1 243 0 discriminator 1
	lis 3,.LC7@ha
.LVL62:
	lis 5,.LANCHOR0@ha
.LVL63:
	lis 6,.LC8@ha
	la 3,.LC7@l(3)
	li 4,243
.LVL64:
	la 5,.LANCHOR0@l(5)
	la 6,.LC8@l(6)
	bl __assert_func
.LVL65:
.L64:
	.loc 1 255 0 discriminator 1
	lis 3,.LC7@ha
.LVL66:
	lis 5,.LANCHOR0@ha
.LVL67:
	lis 6,.LC10@ha
	la 3,.LC7@l(3)
	li 4,255
.LVL68:
	la 5,.LANCHOR0@l(5)
	la 6,.LC10@l(6)
	bl __assert_func
.LVL69:
.L63:
	.loc 1 247 0 discriminator 1
	lis 3,.LC7@ha
.LVL70:
	lis 5,.LANCHOR0@ha
.LVL71:
	lis 6,.LC9@ha
	la 3,.LC7@l(3)
	li 4,251
.LVL72:
	la 5,.LANCHOR0@l(5)
	la 6,.LC9@l(6)
	bl __assert_func
	.cfi_endproc
.LFE18:
	.size	gluGetTessProperty, .-gluGetTessProperty
	.align 2
	.globl gluTessNormal
	.type	gluTessNormal, @function
gluTessNormal:
.LFB19:
	.loc 1 267 0
	.cfi_startproc
.LVL73:
	.loc 1 268 0
	stfd 1,16(3)
	.loc 1 271 0
	.loc 1 269 0
	stfd 2,24(3)
	.loc 1 270 0
	stfd 3,32(3)
	.loc 1 271 0
	blr
	.cfi_endproc
.LFE19:
	.size	gluTessNormal, .-gluTessNormal
	.align 2
	.globl gluTessCallback
	.type	gluTessCallback, @function
gluTessCallback:
.LFB20:
	.loc 1 275 0
	.cfi_startproc
.LVL74:
	.loc 1 276 0
	addis 4,4,0xfffe
.LVL75:
	.loc 1 275 0
	mflr 0
	.loc 1 276 0
	addi 4,4,30972
.LVL76:
	.loc 1 275 0
	stwu 1,-8(1)
.LCFI23:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 276 0
	cmplwi 7,4,12
	.loc 1 275 0
	mr 9,3
	stw 0,12(1)
	.loc 1 276 0
	ble- 7,.L111
	.cfi_offset 65, 4
	.loc 1 338 0
	lwz 0,3376(3)
	lis 11,__gl_noErrorData@ha
	la 11,__gl_noErrorData@l(11)
	cmpw 7,0,11
	beq- 7,.L97
	.loc 1 338 0 is_stmt 0 discriminator 1
	lis 3,0x1
.LVL77:
	lwz 4,3640(9)
.LVL78:
	ori 3,3,35364
	mtctr 0
	bctrl
.LVL79:
.L67:
	.loc 1 341 0 is_stmt 1
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI24:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL80:
.L111:
.LCFI25:
	.cfi_restore_state
	.loc 1 276 0
	lis 11,.L82@ha
	slwi 4,4,2
.LVL81:
	la 11,.L82@l(11)
	.loc 1 335 0
	cmpwi 7,5,0
	.loc 1 276 0
	lwzx 0,11,4
	add 11,0,11
	mtctr 11
	bctr
	.section	.rodata
	.align 2
	.align 2
.L82:
	.long .L69-.L82
	.long .L70-.L82
	.long .L71-.L82
	.long .L72-.L82
	.long .L73-.L82
	.long .L74-.L82
	.long .L75-.L82
	.long .L76-.L82
	.long .L77-.L82
	.long .L78-.L82
	.long .L79-.L82
	.long .L80-.L82
	.long .L81-.L82
	.section	".text"
.L81:
	.loc 1 335 0
	beq- 7,.L112
	.loc 1 335 0 is_stmt 0 discriminator 3
	stw 5,144(9)
	.loc 1 336 0 is_stmt 1 discriminator 3
	b .L67
.L69:
	.loc 1 278 0
	beq- 7,.L113
	.loc 1 278 0 is_stmt 0 discriminator 3
	stw 5,128(9)
	.loc 1 279 0 is_stmt 1 discriminator 3
	b .L67
.L70:
	.loc 1 301 0
	beq- 7,.L114
	.loc 1 301 0 is_stmt 0 discriminator 3
	stw 5,136(9)
	.loc 1 303 0 is_stmt 1 discriminator 3
	b .L67
.L71:
	.loc 1 309 0
	beq- 7,.L115
	.loc 1 309 0 is_stmt 0 discriminator 3
	stw 5,140(9)
	.loc 1 310 0 is_stmt 1 discriminator 3
	b .L67
.L72:
	.loc 1 316 0
	beq- 7,.L116
	.loc 1 316 0 is_stmt 0 discriminator 3
	stw 5,12(9)
	.loc 1 317 0 is_stmt 1 discriminator 3
	b .L67
.L73:
	.loc 1 285 0
	beq- 7,.L117
.LVL82:
.L86:
	.loc 1 290 0 discriminator 3
	mfcr 0
	rlwinm 0,0,31,1
	.loc 1 285 0 discriminator 3
	stw 5,132(9)
	.loc 1 290 0 discriminator 3
	xori 0,0,1
	stb 0,120(9)
	.loc 1 291 0 discriminator 3
	b .L67
.LVL83:
.L74:
	.loc 1 323 0
	beq- 7,.L118
	.loc 1 323 0 is_stmt 0 discriminator 3
	stw 5,116(9)
	.loc 1 325 0 is_stmt 1 discriminator 3
	b .L67
.L75:
	.loc 1 282 0
	beq- 7,.L119
	.loc 1 281 0
	stw 5,3360(9)
	.loc 1 283 0
	b .L67
.L76:
	.loc 1 306 0
	beq- 7,.L120
	.loc 1 305 0
	stw 5,3368(9)
	.loc 1 307 0
	b .L67
.L77:
	.loc 1 312 0
	beq- 7,.L121
	.loc 1 312 0 is_stmt 0 discriminator 3
	stw 5,3372(9)
	.loc 1 314 0 is_stmt 1 discriminator 3
	b .L67
.L78:
	.loc 1 320 0
	beq- 7,.L122
	.loc 1 319 0
	stw 5,3376(9)
	.loc 1 321 0
	b .L67
.L79:
	.loc 1 294 0
	beq- 7,.L123
.LVL84:
.L87:
	.loc 1 298 0
	mfcr 0
	rlwinm 0,0,31,1
	.loc 1 293 0
	stw 5,3364(9)
	.loc 1 298 0
	xori 0,0,1
	stb 0,120(9)
	.loc 1 299 0
	b .L67
.LVL85:
.L80:
	.loc 1 327 0
	beq- 7,.L124
	.loc 1 327 0 is_stmt 0 discriminator 3
	stw 5,3380(9)
	.loc 1 333 0 is_stmt 1 discriminator 3
	b .L67
.LVL86:
.L97:
	.loc 1 338 0 discriminator 2
	lwz 0,12(3)
	lis 3,0x1
.LVL87:
	ori 3,3,35364
	mtctr 0
	bctrl
.LVL88:
	b .L67
.LVL89:
.L124:
	.loc 1 327 0
	lis 5,__gl_noCombineData@ha
.LVL90:
	la 5,__gl_noCombineData@l(5)
	stw 5,3380(9)
	b .L67
.LVL91:
.L122:
	.loc 1 320 0
	lis 5,__gl_noErrorData@ha
.LVL92:
	la 5,__gl_noErrorData@l(5)
	.loc 1 319 0
	stw 5,3376(9)
	b .L67
.LVL93:
.L121:
	.loc 1 312 0
	lis 5,__gl_noEndData@ha
.LVL94:
	la 5,__gl_noEndData@l(5)
	stw 5,3372(9)
	b .L67
.LVL95:
.L120:
	.loc 1 306 0
	lis 5,__gl_noVertexData@ha
.LVL96:
	la 5,__gl_noVertexData@l(5)
	.loc 1 305 0
	stw 5,3368(9)
	b .L67
.LVL97:
.L119:
	.loc 1 282 0
	lis 5,__gl_noBeginData@ha
.LVL98:
	la 5,__gl_noBeginData@l(5)
	.loc 1 281 0
	stw 5,3360(9)
	b .L67
.LVL99:
.L118:
	.loc 1 323 0
	lis 5,noCombine@ha
.LVL100:
	la 5,noCombine@l(5)
	stw 5,116(9)
	b .L67
.LVL101:
.L116:
	.loc 1 316 0
	lis 5,noError@ha
.LVL102:
	la 5,noError@l(5)
	stw 5,12(9)
	b .L67
.LVL103:
.L115:
	.loc 1 309 0
	lis 5,noEnd@ha
.LVL104:
	la 5,noEnd@l(5)
	stw 5,140(9)
	b .L67
.LVL105:
.L114:
	.loc 1 301 0
	lis 5,noVertex@ha
.LVL106:
	la 5,noVertex@l(5)
	stw 5,136(9)
	b .L67
.LVL107:
.L113:
	.loc 1 278 0
	lis 5,noBegin@ha
.LVL108:
	la 5,noBegin@l(5)
	stw 5,128(9)
	b .L67
.LVL109:
.L112:
	.loc 1 335 0
	lis 5,noMesh@ha
.LVL110:
	la 5,noMesh@l(5)
	stw 5,144(9)
	b .L67
.LVL111:
.L123:
	.loc 1 294 0
	lis 5,__gl_noEdgeFlagData@ha
.LVL112:
	la 5,__gl_noEdgeFlagData@l(5)
	b .L87
.LVL113:
.L117:
	.loc 1 285 0
	lis 5,noEdgeFlag@ha
.LVL114:
	la 5,noEdgeFlag@l(5)
	b .L86
	.cfi_endproc
.LFE20:
	.size	gluTessCallback, .-gluTessCallback
	.align 2
	.globl gluTessEndContour
	.type	gluTessEndContour, @function
gluTessEndContour:
.LFB27:
	.loc 1 492 0
	.cfi_startproc
.LVL115:
	mflr 0
	stwu 1,-16(1)
.LCFI26:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 493 0
	lwz 0,0(3)
	.cfi_offset 65, 4
	cmpwi 7,0,2
	beq- 7,.L126
	.loc 1 493 0 is_stmt 0 discriminator 1
	li 4,2
	bl GotoState
.LVL116:
.L126:
	.loc 1 494 0 is_stmt 1
	li 0,1
	stw 0,0(31)
	.loc 1 495 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL117:
	mtlr 0
	addi 1,1,16
.LCFI27:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE27:
	.size	gluTessEndContour, .-gluTessEndContour
	.align 2
	.type	GotoState, @function
GotoState:
.LFB15:
	.loc 1 157 0
	.cfi_startproc
.LVL118:
	mflr 0
	stwu 1,-32(1)
.LCFI28:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	mfcr 12
	cmpwi 4,4,0
	stw 29,20(1)
	.loc 1 180 0
	lis 29,__gl_noErrorData@ha
	.cfi_offset 29, -12
	.cfi_register 70, 12
	.loc 1 157 0
	stw 0,36(1)
	.loc 1 180 0
	la 29,__gl_noErrorData@l(29)
	.loc 1 157 0
	stw 12,12(1)
.LBB6:
.LBB7:
	.loc 1 151 0
	lwz 0,0(3)
	.cfi_offset 70, -20
	.cfi_offset 65, 4
.LBE7:
.LBE6:
	.loc 1 157 0
	stw 28,16(1)
.LBB10:
.LBB8:
	.loc 1 149 0
	li 28,0
	.cfi_offset 28, -16
	cmpw 6,4,0
.LBE8:
.LBE10:
	.loc 1 157 0
	stw 30,24(1)
	stw 31,28(1)
	.loc 1 157 0
	mr 30,4
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	mr 31,3
.LVL119:
.L145:
	.loc 1 158 0 discriminator 1
	beq- 6,.L146
.L144:
	.loc 1 162 0
	cmplw 7,30,0
	ble- 7,.L129
	.loc 1 163 0
	cmpwi 7,0,0
	bne- 7,.L147
	.loc 1 165 0
	lwz 0,3376(31)
	cmpw 7,0,29
	beq- 7,.L133
	.loc 1 165 0 is_stmt 0 discriminator 1
	lis 3,0x1
	lwz 4,3640(31)
	ori 3,3,34615
	mtctr 0
	bctrl
.L134:
	.loc 1 166 0 is_stmt 1
	mr 3,31
	li 4,0
	bl gluTessBeginPolygon
	lwz 0,0(31)
	cmpw 6,30,0
	.loc 1 158 0
	bne+ 6,.L144
.L146:
	.loc 1 187 0
	lwz 0,36(1)
	lwz 12,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	mtcrf 8,12
	lwz 30,24(1)
.LVL120:
	lwz 31,28(1)
.LVL121:
	addi 1,1,32
	.cfi_remember_state
.LCFI29:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL122:
.L129:
.LCFI30:
	.cfi_restore_state
	.loc 1 174 0
	cmpwi 7,0,1
	beq- 7,.L137
	cmpwi 7,0,2
	bne+ 7,.L145
	.loc 1 176 0
	lwz 0,3376(31)
	cmpw 7,0,29
	beq- 7,.L139
	.loc 1 176 0 is_stmt 0 discriminator 1
	lis 3,0x1
	lwz 4,3640(31)
	ori 3,3,34618
	mtctr 0
	bctrl
.L140:
	.loc 1 177 0 is_stmt 1
	mr 3,31
	bl gluTessEndContour
	lwz 0,0(31)
	cmpw 6,30,0
	.loc 1 178 0
	b .L145
.L147:
	.loc 1 163 0
	cmpwi 7,0,1
	bne+ 7,.L145
	.loc 1 169 0
	lwz 0,3376(31)
	cmpw 7,0,29
	beq- 7,.L135
	.loc 1 169 0 is_stmt 0 discriminator 1
	lis 3,0x1
	lwz 4,3640(31)
	ori 3,3,34616
	mtctr 0
	bctrl
.L136:
	.loc 1 170 0 is_stmt 1
	mr 3,31
	bl gluTessBeginContour
	lwz 0,0(31)
	cmpw 6,30,0
	.loc 1 171 0
	b .L145
.L137:
	.loc 1 180 0
	lwz 0,3376(31)
	cmpw 7,0,29
	beq- 7,.L141
	.loc 1 180 0 is_stmt 0 discriminator 1
	lis 3,0x1
	lwz 4,3640(31)
	ori 3,3,34617
	mtctr 0
	bctrl
.L142:
.LVL123:
.LBB11:
.LBB9:
	.loc 1 146 0 is_stmt 1
	lwz 3,8(31)
	cmpwi 7,3,0
	beq- 7,.L143
	.loc 1 147 0
	bl __gl_meshDeleteMesh
.L143:
	mcrf 6,4
	.loc 1 149 0
	stw 28,0(31)
	.loc 1 150 0
	stw 28,4(31)
	.loc 1 151 0
	li 0,0
	stw 28,8(31)
	b .L145
.LVL124:
.L133:
.LBE9:
.LBE11:
	.loc 1 165 0 discriminator 2
	lwz 0,12(31)
	lis 3,0x1
	ori 3,3,34615
	mtctr 0
	bctrl
	b .L134
.L141:
	.loc 1 180 0 discriminator 2
	lwz 0,12(31)
	lis 3,0x1
	ori 3,3,34617
	mtctr 0
	bctrl
	b .L142
.L135:
	.loc 1 169 0 discriminator 2
	lwz 0,12(31)
	lis 3,0x1
	ori 3,3,34616
	mtctr 0
	bctrl
	b .L136
.L139:
	.loc 1 176 0 discriminator 2
	lwz 0,12(31)
	lis 3,0x1
	ori 3,3,34618
	mtctr 0
	bctrl
	b .L140
	.cfi_endproc
.LFE15:
	.size	GotoState, .-GotoState
	.align 2
	.globl gluTessBeginContour
	.type	gluTessBeginContour, @function
gluTessBeginContour:
.LFB26:
	.loc 1 475 0
	.cfi_startproc
.LVL125:
	mflr 0
	stwu 1,-16(1)
.LCFI31:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 476 0
	lwz 0,0(3)
	.cfi_offset 65, 4
	cmpwi 7,0,1
	beq- 7,.L149
	.loc 1 476 0 is_stmt 0 discriminator 1
	li 4,1
	bl GotoState
.LVL126:
.L149:
	.loc 1 480 0 is_stmt 1
	lwz 0,152(31)
	cmpwi 7,0,0
	.loc 1 478 0
	li 0,2
	stw 0,0(31)
	.loc 1 479 0
	li 0,0
	stw 0,4(31)
	.loc 1 480 0
	ble- 7,.L148
	.loc 1 485 0
	li 0,1
	stb 0,148(31)
.L148:
	.loc 1 487 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL127:
	mtlr 0
	addi 1,1,16
.LCFI32:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE26:
	.size	gluTessBeginContour, .-gluTessBeginContour
	.align 2
	.globl gluTessBeginPolygon
	.type	gluTessBeginPolygon, @function
gluTessBeginPolygon:
.LFB25:
	.loc 1 461 0
	.cfi_startproc
.LVL128:
	mflr 0
	stwu 1,-16(1)
.LCFI33:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 0,20(1)
	.loc 1 462 0
	lwz 0,0(3)
	.cfi_offset 65, 4
	.loc 1 461 0
	stw 31,12(1)
	.loc 1 461 0
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 462 0
	cmpwi 7,0,0
	beq+ 7,.L152
	.loc 1 462 0 is_stmt 0 discriminator 1
	li 4,0
.LVL129:
	bl GotoState
.LVL130:
.L152:
	.loc 1 465 0 is_stmt 1
	li 0,0
	.loc 1 464 0
	li 9,1
	.loc 1 466 0
	stb 0,148(31)
	.loc 1 465 0
	stw 0,152(31)
	.loc 1 467 0
	stw 0,8(31)
	.loc 1 470 0
	lwz 0,20(1)
	.loc 1 469 0
	stw 30,3640(31)
	.loc 1 470 0
	mtlr 0
	.loc 1 464 0
	stw 9,0(31)
	.loc 1 470 0
	lwz 30,8(1)
.LVL131:
	lwz 31,12(1)
.LVL132:
	addi 1,1,16
.LCFI34:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE25:
	.size	gluTessBeginPolygon, .-gluTessBeginPolygon
	.align 2
	.globl gluTessVertex
	.type	gluTessVertex, @function
gluTessVertex:
.LFB24:
	.loc 1 414 0
	.cfi_startproc
.LVL133:
	mflr 0
	stwu 1,-56(1)
.LCFI35:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	stw 29,44(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 0,60(1)
	stw 30,48(1)
	mr 30,4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 1 418 0
	lwz 0,0(3)
	.loc 1 414 0
	stw 31,52(1)
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 418 0
	cmpwi 7,0,2
	.loc 1 414 0
	stw 28,40(1)
	.loc 1 418 0
	beq- 7,.L154
	.cfi_offset 28, -16
	.loc 1 418 0 is_stmt 0 discriminator 1
	li 4,2
.LVL134:
	bl GotoState
.LVL135:
.L154:
	.loc 1 420 0 is_stmt 1
	lbz 0,148(31)
	cmpwi 7,0,0
	bne- 7,.L174
.L155:
.LVL136:
	lis 9,.LC12@ha
	.loc 1 414 0 discriminator 1
	li 0,0
	.loc 1 429 0 discriminator 1
	lfd 13,.LC12@l(9)
	addi 28,1,8
	.loc 1 414 0 discriminator 1
	li 9,0
	.loc 1 433 0 discriminator 1
	lis 11,.LC11@ha
.LVL137:
.L160:
	.loc 1 428 0
	lfdx 0,30,9
.LVL138:
	.loc 1 429 0
	fcmpu 7,0,13
	blt- 7,.L167
	.loc 1 433 0
	lfd 12,.LC11@l(11)
	fcmpu 7,0,12
	bng- 7,.L159
	.loc 1 434 0
	fmr 0,12
	.loc 1 435 0
	li 0,1
.L159:
.LVL139:
	.loc 1 427 0
	cmpwi 7,9,16
	.loc 1 437 0
	stfdx 0,28,9
	.loc 1 427 0
	addi 9,9,8
	bne+ 7,.L160
	.loc 1 439 0
	cmpwi 7,0,0
	beq- 7,.L161
	.loc 1 440 0
	lwz 0,3376(31)
	lis 9,__gl_noErrorData@ha
	la 9,__gl_noErrorData@l(9)
	cmpw 7,0,9
	beq- 7,.L162
	.loc 1 440 0 is_stmt 0 discriminator 1
	lis 3,0x1
	lwz 4,3640(31)
	ori 3,3,34619
	mtctr 0
	bctrl
.LVL140:
.L161:
	.loc 1 443 0 is_stmt 1
	lwz 0,8(31)
	cmpwi 7,0,0
	beq- 7,.L175
.L163:
	.loc 1 453 0
	addi 3,31,4
	addi 4,31,8
	mr 5,28
	mr 6,29
	bl AddVertex.isra.0
	cmpwi 7,3,0
	bne- 7,.L153
.L172:
	.loc 1 454 0
	lwz 0,3376(31)
	lis 9,__gl_noErrorData@ha
	la 9,__gl_noErrorData@l(9)
	cmpw 7,0,9
	beq- 7,.L166
	.loc 1 454 0 is_stmt 0 discriminator 1
	lis 3,0x1
	lwz 4,3640(31)
	ori 3,3,35366
	mtctr 0
	bctrl
.L153:
	.loc 1 456 0 is_stmt 1
	lwz 0,60(1)
	lwz 28,40(1)
	mtlr 0
	lwz 29,44(1)
.LVL141:
	lwz 30,48(1)
.LVL142:
	lwz 31,52(1)
.LVL143:
	addi 1,1,56
	.cfi_remember_state
.LCFI36:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL144:
.L167:
.LCFI37:
	.cfi_restore_state
	.loc 1 430 0
	fmr 0,13
.LVL145:
	.loc 1 431 0
	li 0,1
	b .L159
.LVL146:
.L174:
	.loc 1 421 0
	mr 3,31
	bl EmptyCache
	cmpwi 7,3,0
	beq- 7,.L172
	.loc 1 425 0
	li 0,0
	stw 0,4(31)
	b .L155
.LVL147:
.L175:
	.loc 1 444 0
	lwz 9,152(31)
	cmpwi 7,9,99
	bgt- 7,.L164
.LVL148:
.LBB12:
.LBB13:
	.loc 1 387 0
	lfd 0,8(1)
	.loc 1 384 0
	addi 0,9,5
	slwi 0,0,5
	.loc 1 390 0
	addi 9,9,1
	.loc 1 387 0
	stfdx 0,31,0
	.loc 1 384 0
	add 11,31,0
.LVL149:
.LBE13:
.LBE12:
	.loc 1 456 0
	lwz 0,60(1)
.LVL150:
.LBB18:
.LBB14:
	.loc 1 388 0
	lfd 0,16(1)
.LBE14:
.LBE18:
	.loc 1 456 0
	mtlr 0
.LBB19:
.LBB15:
	.loc 1 386 0
	stw 29,24(11)
	.loc 1 388 0
	stfd 0,8(11)
	.loc 1 389 0
	lfd 0,24(1)
.LBE15:
.LBE19:
	.loc 1 456 0
	lwz 28,40(1)
.LVL151:
.LBB20:
.LBB16:
	.loc 1 389 0
	stfd 0,16(11)
.LBE16:
.LBE20:
	.loc 1 456 0
	lwz 29,44(1)
.LVL152:
.LBB21:
.LBB17:
	.loc 1 390 0
	stw 9,152(31)
.LBE17:
.LBE21:
	.loc 1 456 0
	lwz 30,48(1)
.LVL153:
	lwz 31,52(1)
.LVL154:
	addi 1,1,56
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI38:
	.cfi_def_cfa_offset 0
	blr
.LVL155:
.L166:
.LCFI39:
	.cfi_restore_state
	.loc 1 454 0 discriminator 2
	lwz 0,12(31)
	lis 3,0x1
	ori 3,3,35366
	mtctr 0
	bctrl
	.loc 1 456 0 discriminator 2
	lwz 0,60(1)
	lwz 28,40(1)
	mtlr 0
	lwz 29,44(1)
.LVL156:
	lwz 30,48(1)
.LVL157:
	lwz 31,52(1)
.LVL158:
	addi 1,1,56
	.cfi_remember_state
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI40:
	.cfi_def_cfa_offset 0
	blr
.LVL159:
.L164:
.LCFI41:
	.cfi_restore_state
	.loc 1 448 0
	mr 3,31
	bl EmptyCache
	cmpwi 7,3,0
	bne- 7,.L163
	b .L172
.LVL160:
.L162:
	.loc 1 440 0 discriminator 2
	lwz 0,12(31)
	lis 3,0x1
	ori 3,3,34619
	mtctr 0
	bctrl
.LVL161:
	b .L161
	.cfi_endproc
.LFE24:
	.size	gluTessVertex, .-gluTessVertex
	.align 2
	.globl gluDeleteTess
	.type	gluDeleteTess, @function
gluDeleteTess:
.LFB16:
	.loc 1 192 0
	.cfi_startproc
.LVL162:
	mflr 0
	stwu 1,-16(1)
.LCFI42:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 193 0
	lwz 0,0(3)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq+ 7,.L177
	.loc 1 193 0 is_stmt 0 discriminator 1
	li 4,0
	bl GotoState
.LVL163:
.L177:
	.loc 1 194 0 is_stmt 1
	mr 3,31
	bl free
	.loc 1 195 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL164:
	mtlr 0
	addi 1,1,16
.LCFI43:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE16:
	.size	gluDeleteTess, .-gluDeleteTess
	.align 2
	.globl gluTessEndPolygon
	.type	gluTessEndPolygon, @function
gluTessEndPolygon:
.LFB28:
	.loc 1 499 0
	.cfi_startproc
.LVL165:
	mflr 0
	stwu 1,-24(1)
.LCFI44:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 3,8(1)
	stw 0,28(1)
	.loc 1 502 0
	addi 0,3,3384
	.cfi_offset 65, 4
	mr 3,0
.LVL166:
	.loc 1 499 0
	stw 31,20(1)
	.loc 1 502 0
	stw 0,12(1)
	.cfi_offset 31, -4
	bl setjmp
	cmpwi 7,3,0
	.loc 1 504 0
	lwz 9,8(1)
	.loc 1 502 0
	beq- 7,.L179
	.loc 1 504 0
	lwz 0,3376(9)
	lis 9,__gl_noErrorData@ha
	la 9,__gl_noErrorData@l(9)
	cmpw 7,0,9
	beq- 7,.L180
	.loc 1 504 0 is_stmt 0 discriminator 1
	lwz 11,8(1)
	lis 3,0x1
	ori 3,3,35366
	mtctr 0
	lwz 4,3640(11)
	bctrl
.L178:
	.loc 1 590 0 is_stmt 1
	lwz 0,28(1)
	lwz 31,20(1)
	mtlr 0
	addi 1,1,24
	.cfi_remember_state
.LCFI45:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.L179:
.LCFI46:
	.cfi_restore_state
	.loc 1 508 0
	lwz 0,0(9)
	cmpwi 7,0,1
	beq- 7,.L182
	.loc 1 508 0 is_stmt 0 discriminator 1
	mr 3,9
	li 4,1
	bl GotoState
.L182:
	.loc 1 511 0 is_stmt 1
	lwz 11,8(1)
	lwz 0,8(11)
	cmpwi 7,0,0
	.loc 1 509 0
	li 0,0
	stw 0,0(11)
	.loc 1 511 0
	beq- 7,.L195
.L183:
	.loc 1 530 0
	lwz 3,8(1)
	bl __gl_projectPolygon
	.loc 1 538 0
	lwz 3,8(1)
	bl __gl_computeInterior
	cmpwi 7,3,0
	beq- 7,.L194
	.loc 1 543 0
	lwz 11,8(1)
	lbz 0,100(11)
	.loc 1 542 0
	lwz 31,8(11)
.LVL167:
	.loc 1 543 0
	cmpwi 7,0,0
	bne- 7,.L186
.LVL168:
.LBB22:
	.loc 1 550 0
	lbz 0,121(11)
	.loc 1 551 0
	mr 3,31
	.loc 1 550 0
	cmpwi 7,0,0
	bne- 7,.L196
	.loc 1 553 0
	bl __gl_meshTessellateInterior
.LVL169:
.L188:
	.loc 1 555 0
	cmpwi 7,3,0
	beq- 7,.L194
	.loc 1 557 0
	mr 3,31
.LVL170:
	bl __gl_meshCheckMesh
	.loc 1 559 0
	lwz 11,8(1)
	lwz 9,128(11)
	lis 11,noBegin@ha
	la 0,noBegin@l(11)
	cmpw 7,9,0
	beq- 7,.L197
.L190:
	.loc 1 566 0
	lwz 9,8(1)
	lbz 0,121(9)
	cmpwi 7,0,0
	beq- 7,.L192
	.loc 1 567 0
	mr 3,9
	mr 4,31
	bl __gl_renderBoundary
.L191:
	.loc 1 572 0
	lwz 11,8(1)
	lwz 9,144(11)
	lis 11,noMesh@ha
	la 0,noMesh@l(11)
	cmpw 7,9,0
	beq- 7,.L186
	.loc 1 580 0
	mr 3,31
	bl __gl_meshDiscardExterior
	.loc 1 581 0
	lwz 9,8(1)
	mr 3,31
	lwz 0,144(9)
	mtctr 0
	bctrl
	.loc 1 582 0
	lwz 9,8(1)
	li 0,0
.LBE22:
	.loc 1 590 0
	lwz 31,20(1)
.LVL171:
.LBB23:
	.loc 1 582 0
	stw 0,8(9)
	.loc 1 583 0
	stw 0,3640(9)
.LBE23:
	.loc 1 590 0
	lwz 0,28(1)
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 31
.LCFI47:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL172:
.L186:
.LCFI48:
	.cfi_restore_state
	.loc 1 587 0
	mr 3,31
	bl __gl_meshDeleteMesh
	.loc 1 588 0
	lwz 11,8(1)
	li 0,0
	.loc 1 590 0
	lwz 31,20(1)
.LVL173:
	.loc 1 588 0
	stw 0,3640(11)
	.loc 1 589 0
	stw 0,8(11)
	.loc 1 590 0
	lwz 0,28(1)
	addi 1,1,24
	.cfi_remember_state
	.cfi_restore 31
.LCFI49:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL174:
.L196:
.LCFI50:
	.cfi_restore_state
.LBB24:
	.loc 1 551 0
	li 4,1
	li 5,1
	bl __gl_meshSetWindingNumber
.LVL175:
	b .L188
.LVL176:
.L195:
.LBE24:
	.loc 1 512 0
	lbz 31,120(11)
	cmpwi 7,31,0
	bne- 7,.L184
	.loc 1 512 0 is_stmt 0 discriminator 1
	lwz 9,144(11)
	lis 11,noMesh@ha
	la 0,noMesh@l(11)
	cmpw 7,9,0
	beq- 7,.L198
.L184:
	.loc 1 524 0 is_stmt 1
	lwz 3,8(1)
	bl EmptyCache
	cmpwi 7,3,0
	bne+ 7,.L183
.L194:
.LBB25:
	.loc 1 555 0 discriminator 1
	lwz 3,12(1)
	li 4,1
	bl longjmp
.L180:
.LBE25:
	.loc 1 504 0 discriminator 2
	lwz 9,8(1)
	lis 3,0x1
	ori 3,3,35366
	lwz 0,12(9)
	mtctr 0
	bctrl
	b .L178
.LVL177:
.L192:
.LBB26:
	.loc 1 569 0
	lwz 3,8(1)
	mr 4,31
	bl __gl_renderMesh
	b .L191
.L197:
	.loc 1 559 0 discriminator 1
	lwz 11,8(1)
	lwz 9,140(11)
	lis 11,noEnd@ha
	la 0,noEnd@l(11)
	cmpw 7,9,0
	bne+ 7,.L190
	.loc 1 560 0
	lwz 11,8(1)
	lwz 9,136(11)
	lis 11,noVertex@ha
	la 0,noVertex@l(11)
	cmpw 7,9,0
	bne+ 7,.L190
	.loc 1 560 0 is_stmt 0 discriminator 1
	lwz 11,8(1)
	lwz 9,132(11)
	lis 11,noEdgeFlag@ha
	la 0,noEdgeFlag@l(11)
	cmpw 7,9,0
	bne+ 7,.L190
	.loc 1 561 0 is_stmt 1
	lwz 11,8(1)
	lwz 9,3360(11)
	lis 11,__gl_noBeginData@ha
	la 0,__gl_noBeginData@l(11)
	cmpw 7,9,0
	bne+ 7,.L190
	.loc 1 562 0
	lwz 11,8(1)
	lwz 9,3372(11)
	lis 11,__gl_noEndData@ha
	la 0,__gl_noEndData@l(11)
	cmpw 7,9,0
	bne+ 7,.L190
	.loc 1 563 0
	lwz 11,8(1)
	lwz 9,3368(11)
	lis 11,__gl_noVertexData@ha
	la 0,__gl_noVertexData@l(11)
	cmpw 7,9,0
	bne+ 7,.L190
	.loc 1 564 0
	lwz 11,8(1)
	lwz 9,3364(11)
	lis 11,__gl_noEdgeFlagData@ha
	la 0,__gl_noEdgeFlagData@l(11)
	cmpw 7,9,0
	bne+ 7,.L190
	b .L191
.LVL178:
.L198:
.LBE26:
	.loc 1 519 0
	lwz 3,8(1)
	bl __gl_renderCache
	cmpwi 7,3,0
	beq+ 7,.L184
	.loc 1 520 0
	lwz 9,8(1)
	stw 31,3640(9)
	.loc 1 521 0
	b .L178
	.cfi_endproc
.LFE28:
	.size	gluTessEndPolygon, .-gluTessEndPolygon
	.align 2
	.globl gluBeginPolygon
	.type	gluBeginPolygon, @function
gluBeginPolygon:
.LFB29:
	.loc 1 610 0
	.cfi_startproc
.LVL179:
	mflr 0
	stwu 1,-16(1)
.LCFI51:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 611 0
	li 4,0
	.loc 1 610 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 611 0
	.cfi_offset 65, 4
	bl gluTessBeginPolygon
.LVL180:
	.loc 1 613 0
	lwz 0,20(1)
	.loc 1 612 0
	mr 3,31
	.loc 1 613 0
	lwz 31,12(1)
.LVL181:
	mtlr 0
	addi 1,1,16
.LCFI52:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.loc 1 612 0
	b gluTessBeginContour
.LVL182:
	.cfi_endproc
.LFE29:
	.size	gluBeginPolygon, .-gluBeginPolygon
	.align 2
	.globl gluNextContour
	.type	gluNextContour, @function
gluNextContour:
.LFB30:
	.loc 1 619 0
	.cfi_startproc
.LVL183:
	mflr 0
	stwu 1,-16(1)
.LCFI53:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 620 0
	.cfi_offset 65, 4
	bl gluTessEndContour
.LVL184:
	.loc 1 622 0
	lwz 0,20(1)
	.loc 1 621 0
	mr 3,31
	.loc 1 622 0
	lwz 31,12(1)
.LVL185:
	mtlr 0
	addi 1,1,16
.LCFI54:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.loc 1 621 0
	b gluTessBeginContour
.LVL186:
	.cfi_endproc
.LFE30:
	.size	gluNextContour, .-gluNextContour
	.align 2
	.globl gluEndPolygon
	.type	gluEndPolygon, @function
gluEndPolygon:
.LFB31:
	.loc 1 627 0
	.cfi_startproc
.LVL187:
	mflr 0
	stwu 1,-16(1)
.LCFI55:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 628 0
	.cfi_offset 65, 4
	bl gluTessEndContour
.LVL188:
	.loc 1 630 0
	lwz 0,20(1)
	.loc 1 629 0
	mr 3,31
	.loc 1 630 0
	lwz 31,12(1)
.LVL189:
	mtlr 0
	addi 1,1,16
.LCFI56:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.loc 1 629 0
	b gluTessEndPolygon
.LVL190:
	.cfi_endproc
.LFE31:
	.size	gluEndPolygon, .-gluEndPolygon
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	__FUNCTION__.8749, @object
	.size	__FUNCTION__.8749, 19
__FUNCTION__.8749:
	.string	"gluGetTessProperty"
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC2:
	.4byte	1065353216
.LC4:
	.4byte	1325400064
.LC6:
	.4byte	1501560832
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.4byte	0
	.4byte	0
.LC11:
	.4byte	1595116853
	.4byte	777033391
.LC12:
	.4byte	-552366795
	.4byte	777033391
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC7:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/tess.c"
.LC8:
	.string	"0.0 <= tess->relTolerance && tess->relTolerance <= 1.0"
	.zero	1
.LC9:
	.string	"tess->windingRule == GLU_TESS_WINDING_ODD || tess->windingRule == GLU_TESS_WINDING_NONZERO || tess->windingRule == GLU_TESS_WINDING_POSITIVE || tess->windingRule == GLU_TESS_WINDING_NEGATIVE || tess->windingRule == GLU_TESS_WINDING_ABS_GEQ_TWO"
.LC10:
	.string	"tess->boundaryOnly == TRUE || tess->boundaryOnly == FALSE"
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/machine/setjmp.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/glu.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/tess.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/mesh.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/sweep.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/dict.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/priorityq-heap.h"
	.file 10 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/priorityq.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x10d7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0x1
	.4byte	.LASF146
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.2byte	0x118
	.4byte	0x42
	.uleb128 0x5
	.4byte	0x52
	.4byte	0x52
	.uleb128 0x6
	.4byte	0x28
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x3
	.byte	0x93
	.4byte	0x28
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x3
	.byte	0x94
	.4byte	0x60
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x3
	.byte	0x9e
	.4byte	0xb4
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x3
	.byte	0xa0
	.4byte	0x52
	.uleb128 0x9
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x9
	.byte	0x4
	.4byte	0xbb
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x10f
	.4byte	0xde
	.uleb128 0xa
	.4byte	.LASF17
	.2byte	0xe40
	.byte	0x5
	.byte	0x42
	.4byte	0x2c9
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x5
	.byte	0x46
	.4byte	0x7bc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0x48
	.4byte	0x51f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x5
	.byte	0x49
	.4byte	0x80f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0x4c
	.4byte	0x821
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0x50
	.4byte	0x525
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x51
	.4byte	0x525
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x52
	.4byte	0x525
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x56
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0x57
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0x58
	.4byte	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x5
	.byte	0x5a
	.4byte	0x827
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.string	"pq"
	.byte	0x5
	.byte	0x5b
	.4byte	0x82d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x5c
	.4byte	0x519
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x5e
	.4byte	0x854
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x63
	.4byte	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x64
	.4byte	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x79
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x65
	.4byte	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x68
	.4byte	0x821
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x69
	.4byte	0x866
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x6a
	.4byte	0x878
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x5
	.byte	0x6b
	.4byte	0x880
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0x6c
	.4byte	0x892
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x5
	.byte	0x71
	.4byte	0x9e
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x5
	.byte	0x72
	.4byte	0x21
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x5
	.byte	0x73
	.4byte	0x898
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x5
	.byte	0x76
	.4byte	0x8b9
	.byte	0x3
	.byte	0x23
	.uleb128 0xd20
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x5
	.byte	0x77
	.4byte	0x8d0
	.byte	0x3
	.byte	0x23
	.uleb128 0xd24
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x5
	.byte	0x79
	.4byte	0x8e7
	.byte	0x3
	.byte	0x23
	.uleb128 0xd28
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x5
	.byte	0x7a
	.4byte	0x878
	.byte	0x3
	.byte	0x23
	.uleb128 0xd2c
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x5
	.byte	0x7b
	.4byte	0x8b9
	.byte	0x3
	.byte	0x23
	.uleb128 0xd30
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x5
	.byte	0x7c
	.4byte	0x90d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd34
	.uleb128 0xc
	.string	"env"
	.byte	0x5
	.byte	0x80
	.4byte	0x36
	.byte	0x3
	.byte	0x23
	.uleb128 0xd38
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x5
	.byte	0x82
	.4byte	0x83
	.byte	0x3
	.byte	0x23
	.uleb128 0xe38
	.byte	0
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x6
	.byte	0x2f
	.4byte	0x2d4
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x98
	.byte	0x6
	.byte	0xaa
	.4byte	0x319
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x6
	.byte	0xab
	.4byte	0x319
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0xac
	.4byte	0x39d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x6
	.byte	0xad
	.4byte	0x417
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0xae
	.4byte	0x417
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x6
	.byte	0x31
	.4byte	0x324
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x40
	.byte	0x6
	.byte	0x79
	.4byte	0x39d
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x6
	.byte	0x7a
	.4byte	0x519
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x6
	.byte	0x7b
	.4byte	0x519
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x6
	.byte	0x7c
	.4byte	0x51f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x6
	.byte	0x7d
	.4byte	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x6
	.byte	0x80
	.4byte	0x525
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"s"
	.byte	0x6
	.byte	0x81
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.string	"t"
	.byte	0x6
	.byte	0x81
	.4byte	0xbb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x6
	.byte	0x82
	.4byte	0x2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x6
	.byte	0x32
	.4byte	0x3a8
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x18
	.byte	0x6
	.byte	0x85
	.4byte	0x417
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x6
	.byte	0x86
	.4byte	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x6
	.byte	0x87
	.4byte	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x6
	.byte	0x88
	.4byte	0x51f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x6
	.byte	0x89
	.4byte	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x6
	.byte	0x8c
	.4byte	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x6
	.byte	0x8d
	.4byte	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x6
	.byte	0x8e
	.4byte	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.byte	0
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x6
	.byte	0x33
	.4byte	0x422
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x20
	.byte	0x6
	.byte	0x91
	.4byte	0x49f
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x6
	.byte	0x92
	.4byte	0x51f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"Sym"
	.byte	0x6
	.byte	0x93
	.4byte	0x51f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x6
	.byte	0x94
	.4byte	0x51f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x6
	.byte	0x95
	.4byte	0x51f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"Org"
	.byte	0x6
	.byte	0x96
	.4byte	0x519
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x6
	.byte	0x97
	.4byte	0x535
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x6
	.byte	0x9a
	.4byte	0x53b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x6
	.byte	0x9b
	.4byte	0x21
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0x6
	.byte	0x35
	.4byte	0x4aa
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x10
	.byte	0x7
	.byte	0x42
	.4byte	0x519
	.uleb128 0xc
	.string	"eUp"
	.byte	0x7
	.byte	0x43
	.4byte	0x51f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x7
	.byte	0x44
	.4byte	0x5d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF73
	.byte	0x7
	.byte	0x45
	.4byte	0x21
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x7
	.byte	0x47
	.4byte	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x7
	.byte	0x48
	.4byte	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xb
	.4byte	.LASF75
	.byte	0x7
	.byte	0x49
	.4byte	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x7
	.byte	0x4c
	.4byte	0x9e
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x319
	.uleb128 0x9
	.byte	0x4
	.4byte	0x417
	.uleb128 0x5
	.4byte	0xbb
	.4byte	0x535
	.uleb128 0x6
	.4byte	0x28
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x39d
	.uleb128 0x9
	.byte	0x4
	.4byte	0x49f
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0x8
	.byte	0x43
	.4byte	0x83
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x8
	.byte	0x44
	.4byte	0x557
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x14
	.byte	0x8
	.byte	0x65
	.4byte	0x58e
	.uleb128 0xb
	.4byte	.LASF79
	.byte	0x8
	.byte	0x66
	.4byte	0x58e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF80
	.byte	0x8
	.byte	0x67
	.4byte	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"leq"
	.byte	0x8
	.byte	0x68
	.4byte	0x5f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0x8
	.byte	0x45
	.4byte	0x599
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0xc
	.byte	0x8
	.byte	0x5f
	.4byte	0x5d0
	.uleb128 0xc
	.string	"key"
	.byte	0x8
	.byte	0x60
	.4byte	0x541
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x8
	.byte	0x61
	.4byte	0x5d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x8
	.byte	0x62
	.4byte	0x5d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x58e
	.uleb128 0xe
	.byte	0x1
	.4byte	0x21
	.4byte	0x5f0
	.uleb128 0xf
	.4byte	0x83
	.uleb128 0xf
	.4byte	0x541
	.uleb128 0xf
	.4byte	0x541
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5d6
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0x9
	.byte	0x60
	.4byte	0x83
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0x9
	.byte	0x61
	.4byte	0x2f
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0x9
	.byte	0x62
	.4byte	0x617
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0x1c
	.byte	0x9
	.byte	0x67
	.4byte	0x686
	.uleb128 0xb
	.4byte	.LASF85
	.byte	0x9
	.byte	0x68
	.4byte	0x6d8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x9
	.byte	0x69
	.4byte	0x6de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0x9
	.byte	0x6a
	.4byte	0x2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"max"
	.byte	0x9
	.byte	0x6a
	.4byte	0x2f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF88
	.byte	0x9
	.byte	0x6b
	.4byte	0x601
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0x9
	.byte	0x6c
	.4byte	0x21
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"leq"
	.byte	0x9
	.byte	0x6d
	.4byte	0x6f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x9
	.byte	0x64
	.4byte	0x69d
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x9
	.byte	0x64
	.4byte	0x601
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF91
	.byte	0x9
	.byte	0x64
	.4byte	0x686
	.uleb128 0x10
	.byte	0x8
	.byte	0x9
	.byte	0x65
	.4byte	0x6cd
	.uleb128 0xc
	.string	"key"
	.byte	0x9
	.byte	0x65
	.4byte	0x5f6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x9
	.byte	0x65
	.4byte	0x601
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF93
	.byte	0x9
	.byte	0x65
	.4byte	0x6a8
	.uleb128 0x9
	.byte	0x4
	.4byte	0x69d
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6cd
	.uleb128 0xe
	.byte	0x1
	.4byte	0x21
	.4byte	0x6f9
	.uleb128 0xf
	.4byte	0x5f6
	.uleb128 0xf
	.4byte	0x5f6
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6e4
	.uleb128 0x8
	.4byte	.LASF94
	.byte	0xa
	.byte	0x64
	.4byte	0x5f6
	.uleb128 0x8
	.4byte	.LASF95
	.byte	0xa
	.byte	0x65
	.4byte	0x601
	.uleb128 0x8
	.4byte	.LASF96
	.byte	0xa
	.byte	0x66
	.4byte	0x720
	.uleb128 0xd
	.4byte	.LASF96
	.byte	0x1c
	.byte	0xa
	.byte	0x68
	.4byte	0x78f
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0xa
	.byte	0x69
	.4byte	0x78f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF98
	.byte	0xa
	.byte	0x6a
	.4byte	0x795
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF99
	.byte	0xa
	.byte	0x6b
	.4byte	0x79b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF87
	.byte	0xa
	.byte	0x6c
	.4byte	0x70a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"max"
	.byte	0xa
	.byte	0x6c
	.4byte	0x70a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF89
	.byte	0xa
	.byte	0x6d
	.4byte	0x21
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"leq"
	.byte	0xa
	.byte	0x6e
	.4byte	0x7b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x60c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x6ff
	.uleb128 0x9
	.byte	0x4
	.4byte	0x795
	.uleb128 0xe
	.byte	0x1
	.4byte	0x21
	.4byte	0x7b6
	.uleb128 0xf
	.4byte	0x6ff
	.uleb128 0xf
	.4byte	0x6ff
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7a1
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0x4
	.byte	0x5
	.byte	0x36
	.4byte	0x7db
	.uleb128 0x12
	.4byte	.LASF100
	.sleb128 0
	.uleb128 0x12
	.4byte	.LASF101
	.sleb128 1
	.uleb128 0x12
	.4byte	.LASF102
	.sleb128 2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF103
	.byte	0x20
	.byte	0x5
	.byte	0x3d
	.4byte	0x804
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x5
	.byte	0x3e
	.4byte	0x525
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x5
	.byte	0x3f
	.4byte	0x83
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x8
	.4byte	.LASF103
	.byte	0x5
	.byte	0x40
	.4byte	0x7db
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2c9
	.uleb128 0x13
	.byte	0x1
	.4byte	0x821
	.uleb128 0xf
	.4byte	0x93
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x815
	.uleb128 0x9
	.byte	0x4
	.4byte	0x54c
	.uleb128 0x9
	.byte	0x4
	.4byte	0x715
	.uleb128 0x13
	.byte	0x1
	.4byte	0x84e
	.uleb128 0xf
	.4byte	0xcc
	.uleb128 0xf
	.4byte	0x84e
	.uleb128 0xf
	.4byte	0xc6
	.uleb128 0xf
	.4byte	0x84e
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x83
	.uleb128 0x9
	.byte	0x4
	.4byte	0x833
	.uleb128 0x13
	.byte	0x1
	.4byte	0x866
	.uleb128 0xf
	.4byte	0x9e
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x85a
	.uleb128 0x13
	.byte	0x1
	.4byte	0x878
	.uleb128 0xf
	.4byte	0x83
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x86c
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x9
	.byte	0x4
	.4byte	0x87e
	.uleb128 0x13
	.byte	0x1
	.4byte	0x892
	.uleb128 0xf
	.4byte	0x80f
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x886
	.uleb128 0x5
	.4byte	0x804
	.4byte	0x8a8
	.uleb128 0x6
	.4byte	0x28
	.byte	0x63
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	0x8b9
	.uleb128 0xf
	.4byte	0x93
	.uleb128 0xf
	.4byte	0x83
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8a8
	.uleb128 0x13
	.byte	0x1
	.4byte	0x8d0
	.uleb128 0xf
	.4byte	0x9e
	.uleb128 0xf
	.4byte	0x83
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8bf
	.uleb128 0x13
	.byte	0x1
	.4byte	0x8e7
	.uleb128 0xf
	.4byte	0x83
	.uleb128 0xf
	.4byte	0x83
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8d6
	.uleb128 0x13
	.byte	0x1
	.4byte	0x90d
	.uleb128 0xf
	.4byte	0xcc
	.uleb128 0xf
	.4byte	0x84e
	.uleb128 0xf
	.4byte	0xc6
	.uleb128 0xf
	.4byte	0x84e
	.uleb128 0xf
	.4byte	0x83
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x8ed
	.uleb128 0x15
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x157
	.byte	0x1
	.4byte	0x21
	.byte	0x1
	.4byte	0x954
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x157
	.4byte	0x954
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x157
	.4byte	0xcc
	.uleb128 0x16
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x157
	.4byte	0x83
	.uleb128 0x17
	.string	"e"
	.byte	0x1
	.2byte	0x159
	.4byte	0x51f
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xd2
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.byte	0x1
	.4byte	0x973
	.uleb128 0x19
	.4byte	.LASF104
	.byte	0x1
	.byte	0x8e
	.4byte	0x954
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x17e
	.byte	0x1
	.byte	0x1
	.4byte	0x9b0
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x17e
	.4byte	0x954
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x17e
	.4byte	0xcc
	.uleb128 0x16
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x17e
	.4byte	0x83
	.uleb128 0x17
	.string	"v"
	.byte	0x1
	.2byte	0x180
	.4byte	0x9b0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x804
	.uleb128 0x1b
	.4byte	.LASF107
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x9db
	.uleb128 0x1c
	.4byte	.LASF109
	.byte	0x1
	.byte	0x3c
	.4byte	0x93
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF108
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xa00
	.uleb128 0x1c
	.4byte	.LASF110
	.byte	0x1
	.byte	0x3d
	.4byte	0x9e
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF111
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xa25
	.uleb128 0x1c
	.4byte	.LASF58
	.byte	0x1
	.byte	0x3e
	.4byte	0x83
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF149
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1b
	.4byte	.LASF112
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xa5d
	.uleb128 0x1c
	.4byte	.LASF113
	.byte	0x1
	.byte	0x40
	.4byte	0x93
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF114
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xaa9
	.uleb128 0x1c
	.4byte	.LASF59
	.byte	0x1
	.byte	0x41
	.4byte	0xcc
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF58
	.byte	0x1
	.byte	0x41
	.4byte	0x84e
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF115
	.byte	0x1
	.byte	0x42
	.4byte	0xc6
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LASF116
	.byte	0x1
	.byte	0x42
	.4byte	0x84e
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xace
	.uleb128 0x1c
	.4byte	.LASF20
	.byte	0x1
	.byte	0x43
	.4byte	0x80f
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF118
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xb01
	.uleb128 0x1c
	.4byte	.LASF109
	.byte	0x1
	.byte	0x46
	.4byte	0x93
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF48
	.byte	0x1
	.byte	0x47
	.4byte	0x83
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF119
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xb34
	.uleb128 0x1c
	.4byte	.LASF110
	.byte	0x1
	.byte	0x48
	.4byte	0x9e
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF48
	.byte	0x1
	.byte	0x49
	.4byte	0x83
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF120
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xb67
	.uleb128 0x1c
	.4byte	.LASF58
	.byte	0x1
	.byte	0x4a
	.4byte	0x83
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF48
	.byte	0x1
	.byte	0x4b
	.4byte	0x83
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF121
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xb8d
	.uleb128 0x1c
	.4byte	.LASF48
	.byte	0x1
	.byte	0x4c
	.4byte	0x83
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xbc0
	.uleb128 0x1c
	.4byte	.LASF113
	.byte	0x1
	.byte	0x4d
	.4byte	0x93
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF48
	.byte	0x1
	.byte	0x4e
	.4byte	0x83
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF123
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xc1a
	.uleb128 0x1c
	.4byte	.LASF59
	.byte	0x1
	.byte	0x4f
	.4byte	0xcc
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF58
	.byte	0x1
	.byte	0x50
	.4byte	0x84e
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.4byte	.LASF115
	.byte	0x1
	.byte	0x51
	.4byte	0xc6
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LASF124
	.byte	0x1
	.byte	0x52
	.4byte	0x84e
	.byte	0x1
	.byte	0x56
	.uleb128 0x1c
	.4byte	.LASF48
	.byte	0x1
	.byte	0x53
	.4byte	0x83
	.byte	0x1
	.byte	0x57
	.byte	0
	.uleb128 0x1f
	.4byte	0x913
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LLST0
	.4byte	0xc4b
	.uleb128 0x20
	.4byte	0x931
	.4byte	.LLST1
	.uleb128 0x20
	.4byte	0x93d
	.4byte	.LLST2
	.uleb128 0x21
	.4byte	0x949
	.4byte	.LLST3
	.byte	0
	.uleb128 0x22
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x18a
	.byte	0x1
	.4byte	0x21
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST4
	.4byte	0xc97
	.uleb128 0x23
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x18a
	.4byte	0x954
	.4byte	.LLST5
	.uleb128 0x24
	.string	"v"
	.byte	0x1
	.2byte	0x18c
	.4byte	0x9b0
	.4byte	.LLST6
	.uleb128 0x25
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x18d
	.4byte	0x9b0
	.4byte	.LLST7
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF151
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.4byte	0xcc4
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST8
	.4byte	0xcc4
	.uleb128 0x27
	.4byte	.LASF104
	.byte	0x1
	.byte	0x60
	.4byte	0x954
	.4byte	.LLST9
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xd2
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST10
	.4byte	0xd20
	.uleb128 0x29
	.4byte	.LASF104
	.byte	0x1
	.byte	0xc7
	.4byte	0x954
	.4byte	.LLST11
	.uleb128 0x29
	.4byte	.LASF127
	.byte	0x1
	.byte	0xc7
	.4byte	0x93
	.4byte	.LLST12
	.uleb128 0x29
	.4byte	.LASF128
	.byte	0x1
	.byte	0xc7
	.4byte	0xbb
	.4byte	.LLST13
	.uleb128 0x27
	.4byte	.LASF26
	.byte	0x1
	.byte	0xc9
	.4byte	0x93
	.4byte	.LLST14
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF129
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST15
	.4byte	0xd77
	.uleb128 0x29
	.4byte	.LASF104
	.byte	0x1
	.byte	0xee
	.4byte	0x954
	.4byte	.LLST16
	.uleb128 0x29
	.4byte	.LASF127
	.byte	0x1
	.byte	0xee
	.4byte	0x93
	.4byte	.LLST17
	.uleb128 0x29
	.4byte	.LASF128
	.byte	0x1
	.byte	0xee
	.4byte	0xcc
	.4byte	.LLST18
	.uleb128 0x2a
	.4byte	.LASF130
	.4byte	0xd87
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.8749
	.byte	0
	.uleb128 0x5
	.4byte	0x8c
	.4byte	0xd87
	.uleb128 0x6
	.4byte	0x28
	.byte	0x12
	.byte	0
	.uleb128 0x2b
	.4byte	0xd77
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x10a
	.byte	0x1
	.4byte	.LFB19
	.4byte	.LFE19
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xddb
	.uleb128 0x2d
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x10a
	.4byte	0x954
	.byte	0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"x"
	.byte	0x1
	.2byte	0x10a
	.4byte	0xbb
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x2e
	.string	"y"
	.byte	0x1
	.2byte	0x10a
	.4byte	0xbb
	.byte	0x2
	.byte	0x90
	.uleb128 0x22
	.uleb128 0x2e
	.string	"z"
	.byte	0x1
	.2byte	0x10a
	.4byte	0xbb
	.byte	0x2
	.byte	0x90
	.uleb128 0x23
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x112
	.byte	0x1
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LLST19
	.4byte	0xe25
	.uleb128 0x23
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x112
	.4byte	0x954
	.4byte	.LLST20
	.uleb128 0x23
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x112
	.4byte	0x93
	.4byte	.LLST21
	.uleb128 0x30
	.string	"fn"
	.byte	0x1
	.2byte	0x112
	.4byte	0xe2c
	.4byte	.LLST22
	.byte	0
	.uleb128 0x31
	.4byte	0xe2c
	.uleb128 0x32
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0xe25
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x1eb
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST23
	.4byte	0xe5d
	.uleb128 0x23
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x954
	.4byte	.LLST24
	.byte	0
	.uleb128 0x33
	.4byte	.LASF134
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST25
	.4byte	0xead
	.uleb128 0x29
	.4byte	.LASF104
	.byte	0x1
	.byte	0x9c
	.4byte	0x954
	.4byte	.LLST26
	.uleb128 0x29
	.4byte	.LASF135
	.byte	0x1
	.byte	0x9c
	.4byte	0x7bc
	.4byte	.LLST27
	.uleb128 0x34
	.4byte	0x95a
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xb6
	.uleb128 0x20
	.4byte	0x967
	.4byte	.LLST28
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x1da
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LLST29
	.4byte	0xed8
	.uleb128 0x23
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x1da
	.4byte	0x954
	.4byte	.LLST30
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x1cc
	.byte	0x1
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LLST31
	.4byte	0xf13
	.uleb128 0x23
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x954
	.4byte	.LLST32
	.uleb128 0x23
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x83
	.4byte	.LLST33
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x19d
	.byte	0x1
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LLST34
	.4byte	0xfd4
	.uleb128 0x23
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x19d
	.4byte	0x954
	.4byte	.LLST35
	.uleb128 0x23
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x19d
	.4byte	0xcc
	.4byte	.LLST36
	.uleb128 0x23
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x19d
	.4byte	0x83
	.4byte	.LLST37
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.2byte	0x19f
	.4byte	0x21
	.4byte	.LLST38
	.uleb128 0x25
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x19f
	.4byte	0x21
	.4byte	.LLST39
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.2byte	0x1a0
	.4byte	0xbb
	.4byte	.LLST40
	.uleb128 0x35
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x525
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.4byte	0x973
	.4byte	.LBB12
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x1bd
	.uleb128 0x20
	.4byte	0x999
	.4byte	.LLST41
	.uleb128 0x20
	.4byte	0x98d
	.4byte	.LLST42
	.uleb128 0x20
	.4byte	0x981
	.4byte	.LLST43
	.uleb128 0x37
	.4byte	.Ldebug_ranges0+0x50
	.uleb128 0x21
	.4byte	0x9a5
	.4byte	.LLST44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF141
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST45
	.4byte	0xffd
	.uleb128 0x29
	.4byte	.LASF104
	.byte	0x1
	.byte	0xbf
	.4byte	0x954
	.4byte	.LLST46
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x1f2
	.byte	0x1
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LLST47
	.4byte	0x104d
	.uleb128 0x23
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x954
	.4byte	.LLST48
	.uleb128 0x25
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x80f
	.4byte	.LLST49
	.uleb128 0x37
	.4byte	.Ldebug_ranges0+0x80
	.uleb128 0x24
	.string	"rc"
	.byte	0x1
	.2byte	0x220
	.4byte	0x21
	.4byte	.LLST50
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x261
	.byte	0x1
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LLST51
	.4byte	0x1078
	.uleb128 0x23
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x261
	.4byte	0x954
	.4byte	.LLST52
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x26a
	.byte	0x1
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LLST53
	.4byte	0x10b3
	.uleb128 0x23
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x26a
	.4byte	0x954
	.4byte	.LLST54
	.uleb128 0x23
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x26a
	.4byte	0x93
	.4byte	.LLST55
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x272
	.byte	0x1
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LLST56
	.uleb128 0x23
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x272
	.4byte	0x954
	.4byte	.LLST57
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0xa
	.byte	0
	.byte	0
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
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
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
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
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB32-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL15-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL15-1-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL21-1-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL15-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL15-1-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL21-1-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-1-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.4byte	.LVL15-1-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22-1-.Ltext0
	.4byte	.LFE32-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB23-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL25-1-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-1-.Ltext0
	.2byte	0x4
	.byte	0x73
	.sleb128 160
	.byte	0x9f
	.4byte	.LVL25-1-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x4
	.byte	0x8b
	.sleb128 160
	.byte	0x9f
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB17-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL45-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL51-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL39-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL45-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL51-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB18-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL69-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL60-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-1-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x11
	.sleb128 -131072
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL60-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LFB20-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL79-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL89-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x5
	.byte	0x74
	.sleb128 131072
	.byte	0x9f
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x5
	.byte	0x74
	.sleb128 100100
	.byte	0x9f
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x5
	.byte	0x74
	.sleb128 100100
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL88-1-.Ltext0
	.2byte	0x5
	.byte	0x74
	.sleb128 100100
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL79-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL88-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI27-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116-1-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI29-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI30-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL122-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL122-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LFB26-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI31-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI32-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL126-1-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LFB25-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI33-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI34-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL130-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL130-1-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 3640
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LFB24-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI35-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI36-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI37-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI39-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI40-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI41-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL135-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL135-1-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL159-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL159-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL135-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL135-1-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 24
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL159-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x5
	.byte	0x8e
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x5
	.byte	0x8e
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI42-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI43-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL163-1-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI44-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI45-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI46-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI47-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI48-.Ltext0
	.4byte	.LCFI49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI49-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI50-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL166-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x40
	.byte	0x1c
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL169-1-.Ltext0
	.2byte	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x40
	.byte	0x1c
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.4byte	.LVL169-1-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL175-1-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LFB29-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI51-.Ltext0
	.4byte	.LCFI52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI52-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL180-1-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LFB30-.Ltext0
	.4byte	.LCFI53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI53-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI54-.Ltext0
	.4byte	.LFE30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL184-1-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LFB31-.Ltext0
	.4byte	.LCFI55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI55-.Ltext0
	.4byte	.LCFI56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI56-.Ltext0
	.4byte	.LFE31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL188-1-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF121:
	.string	"__gl_noEndData"
.LASF60:
	.string	"pqHandle"
.LASF150:
	.string	"EmptyCache"
.LASF45:
	.string	"callEndData"
.LASF63:
	.string	"marked"
.LASF109:
	.string	"type"
.LASF101:
	.string	"T_IN_POLYGON"
.LASF26:
	.string	"windingRule"
.LASF137:
	.string	"gluTessBeginPolygon"
.LASF8:
	.string	"long long unsigned int"
.LASF44:
	.string	"callVertexData"
.LASF58:
	.string	"data"
.LASF99:
	.string	"order"
.LASF104:
	.string	"tess"
.LASF38:
	.string	"callMesh"
.LASF14:
	.string	"GLfloat"
.LASF55:
	.string	"next"
.LASF107:
	.string	"noBegin"
.LASF78:
	.string	"DictList"
.LASF95:
	.string	"PQSortHandle"
.LASF21:
	.string	"callError"
.LASF3:
	.string	"signed char"
.LASF105:
	.string	"MakeDormant"
.LASF83:
	.string	"PQHeapHandle"
.LASF114:
	.string	"noCombine"
.LASF18:
	.string	"state"
.LASF1:
	.string	"long int"
.LASF57:
	.string	"anEdge"
.LASF129:
	.string	"gluGetTessProperty"
.LASF84:
	.string	"PriorityQHeap"
.LASF82:
	.string	"PQHeapKey"
.LASF7:
	.string	"long long int"
.LASF122:
	.string	"__gl_noErrorData"
.LASF140:
	.string	"clamped"
.LASF102:
	.string	"T_IN_CONTOUR"
.LASF39:
	.string	"emptyCache"
.LASF120:
	.string	"__gl_noVertexData"
.LASF30:
	.string	"callCombine"
.LASF80:
	.string	"frame"
.LASF97:
	.string	"heap"
.LASF128:
	.string	"value"
.LASF113:
	.string	"errnum"
.LASF132:
	.string	"gluTessCallback"
.LASF89:
	.string	"initialized"
.LASF0:
	.string	"unsigned int"
.LASF51:
	.string	"fHead"
.LASF108:
	.string	"noEdgeFlag"
.LASF69:
	.string	"activeRegion"
.LASF147:
	.string	"TessState"
.LASF146:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/libtess/tess.c"
.LASF9:
	.string	"long unsigned int"
.LASF130:
	.string	"__FUNCTION__"
.LASF42:
	.string	"callBeginData"
.LASF125:
	.string	"vLast"
.LASF32:
	.string	"boundaryOnly"
.LASF29:
	.string	"event"
.LASF87:
	.string	"size"
.LASF6:
	.string	"short unsigned int"
.LASF112:
	.string	"noError"
.LASF134:
	.string	"GotoState"
.LASF151:
	.string	"gluNewTess"
.LASF27:
	.string	"fatalError"
.LASF65:
	.string	"GLUhalfEdge"
.LASF96:
	.string	"PriorityQSort"
.LASF117:
	.string	"noMesh"
.LASF46:
	.string	"callErrorData"
.LASF100:
	.string	"T_DORMANT"
.LASF24:
	.string	"tUnit"
.LASF127:
	.string	"which"
.LASF106:
	.string	"CacheVertex"
.LASF152:
	.string	"gluEndPolygon"
.LASF53:
	.string	"eHeadSym"
.LASF17:
	.string	"GLUtesselator"
.LASF119:
	.string	"__gl_noEdgeFlagData"
.LASF91:
	.string	"PQnode"
.LASF13:
	.string	"GLboolean"
.LASF139:
	.string	"tooLarge"
.LASF135:
	.string	"newState"
.LASF76:
	.string	"fixUpperEdge"
.LASF31:
	.string	"flagBoundary"
.LASF20:
	.string	"mesh"
.LASF94:
	.string	"PQSortKey"
.LASF149:
	.string	"noEnd"
.LASF22:
	.string	"normal"
.LASF77:
	.string	"DictListKey"
.LASF47:
	.string	"callCombineData"
.LASF98:
	.string	"keys"
.LASF49:
	.string	"GLUmesh"
.LASF15:
	.string	"float"
.LASF118:
	.string	"__gl_noBeginData"
.LASF62:
	.string	"trail"
.LASF75:
	.string	"dirty"
.LASF23:
	.string	"sUnit"
.LASF4:
	.string	"unsigned char"
.LASF92:
	.string	"node"
.LASF5:
	.string	"short int"
.LASF68:
	.string	"Lface"
.LASF144:
	.string	"gluNextContour"
.LASF50:
	.string	"vHead"
.LASF148:
	.string	"AddVertex"
.LASF103:
	.string	"CachedVertex"
.LASF52:
	.string	"eHead"
.LASF19:
	.string	"lastEdge"
.LASF36:
	.string	"callVertex"
.LASF64:
	.string	"inside"
.LASF79:
	.string	"head"
.LASF28:
	.string	"dict"
.LASF66:
	.string	"Onext"
.LASF145:
	.string	"GNU C 4.6.3"
.LASF10:
	.string	"char"
.LASF71:
	.string	"ActiveRegion"
.LASF12:
	.string	"GLenum"
.LASF16:
	.string	"GLdouble"
.LASF70:
	.string	"winding"
.LASF126:
	.string	"gluTessProperty"
.LASF143:
	.string	"gluBeginPolygon"
.LASF111:
	.string	"noVertex"
.LASF93:
	.string	"PQhandleElem"
.LASF85:
	.string	"nodes"
.LASF88:
	.string	"freeList"
.LASF33:
	.string	"lonelyTriList"
.LASF142:
	.string	"gluTessEndPolygon"
.LASF73:
	.string	"windingNumber"
.LASF138:
	.string	"gluTessVertex"
.LASF54:
	.string	"GLUvertex"
.LASF124:
	.string	"outData"
.LASF25:
	.string	"relTolerance"
.LASF59:
	.string	"coords"
.LASF67:
	.string	"Lnext"
.LASF40:
	.string	"cacheCount"
.LASF48:
	.string	"polygonData"
.LASF116:
	.string	"dataOut"
.LASF11:
	.string	"jmp_buf"
.LASF34:
	.string	"callBegin"
.LASF37:
	.string	"callEnd"
.LASF43:
	.string	"callEdgeFlagData"
.LASF136:
	.string	"gluTessBeginContour"
.LASF86:
	.string	"handles"
.LASF141:
	.string	"gluDeleteTess"
.LASF115:
	.string	"weight"
.LASF90:
	.string	"handle"
.LASF110:
	.string	"boundaryEdge"
.LASF56:
	.string	"prev"
.LASF81:
	.string	"DictListNode"
.LASF131:
	.string	"gluTessNormal"
.LASF74:
	.string	"sentinel"
.LASF61:
	.string	"GLUface"
.LASF41:
	.string	"cache"
.LASF2:
	.string	"double"
.LASF72:
	.string	"nodeUp"
.LASF35:
	.string	"callEdgeFlag"
.LASF123:
	.string	"__gl_noCombineData"
.LASF133:
	.string	"gluTessEndContour"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
