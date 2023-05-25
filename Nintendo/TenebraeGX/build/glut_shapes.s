	.file	"glut_shapes.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.type	drawBox, @function
drawBox:
.LFB5:
	.file 1 "d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glut_shapes.c"
	.loc 1 124 0
	.cfi_startproc
.LVL0:
	.loc 1 146 0
	fneg 13,1
	lis 9,.LC0@ha
	lfs 0,.LC0@l(9)
	.loc 1 124 0
	mflr 0
	stwu 1,-120(1)
.LCFI0:
	.cfi_def_cfa_offset 120
	.cfi_register 65, 0
	.loc 1 147 0
	fmuls 1,1,0
.LVL1:
	.loc 1 146 0
	fmuls 0,13,0
	.loc 1 124 0
	stw 30,112(1)
	.loc 1 155 0
	lis 30,.LANCHOR0@ha
	.cfi_offset 30, -8
	.loc 1 124 0
	stw 31,116(1)
	.loc 1 155 0
	la 30,.LANCHOR0@l(30)
	.loc 1 151 0
	lis 31,.LANCHOR1@ha
	.cfi_offset 31, -4
	.loc 1 124 0
	stw 0,124(1)
	.loc 1 151 0
	la 31,.LANCHOR1@l(31)
	.loc 1 146 0
	stfs 0,44(1)
	stfs 0,32(1)
	stfs 0,20(1)
	stfs 0,8(1)
	.loc 1 147 0
	stfs 1,92(1)
	stfs 1,80(1)
	stfs 1,68(1)
	stfs 1,56(1)
	.loc 1 148 0
	stfs 0,72(1)
	stfs 0,60(1)
	stfs 0,24(1)
	stfs 0,12(1)
	.loc 1 149 0
	stfs 1,96(1)
	stfs 1,84(1)
	stfs 1,48(1)
	stfs 1,36(1)
	.loc 1 150 0
	stfs 0,100(1)
	stfs 0,64(1)
	stfs 0,52(1)
	stfs 0,16(1)
	.loc 1 151 0
	stfs 1,88(1)
	stfs 1,76(1)
	stfs 1,40(1)
	stfs 1,28(1)
.LVL2:
	.loc 1 124 0
	stw 28,104(1)
	mr 28,3
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	stw 29,108(1)
	.loc 1 123 0
	addi 29,30,72
	.cfi_offset 29, -12
.LVL3:
.L2:
	.loc 1 154 0 discriminator 2
	mr 3,28
	bl glBegin
	.loc 1 155 0 discriminator 2
	mr 3,30
	bl glNormal3fv
	.loc 1 156 0 discriminator 2
	lwz 3,0(31)
	addi 0,1,8
	.loc 1 160 0 discriminator 2
	addi 30,30,12
	.loc 1 156 0 discriminator 2
	mulli 3,3,12
	add 3,0,3
	bl glVertex3fv
	.loc 1 157 0 discriminator 2
	lwz 3,4(31)
	addi 0,1,8
	mulli 3,3,12
	add 3,0,3
	bl glVertex3fv
	.loc 1 158 0 discriminator 2
	lwz 3,8(31)
	addi 0,1,8
	mulli 3,3,12
	add 3,0,3
	bl glVertex3fv
	.loc 1 159 0 discriminator 2
	lwz 3,12(31)
	addi 0,1,8
	.loc 1 160 0 discriminator 2
	addi 31,31,16
	.loc 1 159 0 discriminator 2
	mulli 3,3,12
	add 3,0,3
	bl glVertex3fv
	.loc 1 160 0 discriminator 2
	bl glEnd
	.loc 1 153 0 discriminator 2
	cmpw 7,30,29
	bne+ 7,.L2
	.loc 1 162 0
	lwz 0,124(1)
	lwz 28,104(1)
.LVL4:
	mtlr 0
	lwz 29,108(1)
	lwz 30,112(1)
	lwz 31,116(1)
	addi 1,1,120
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE5:
	.size	drawBox, .-drawBox
	.align 2
	.type	normalize, @function
normalize:
.LFB13:
	.loc 1 315 0
	.cfi_startproc
.LVL5:
	mflr 0
	stwu 1,-16(1)
.LCFI2:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 318 0
	lfs 1,4(3)
	lfs 0,0(3)
	fmuls 13,1,1
	lfs 1,8(3)
	fmadds 0,0,0,13
	fmadds 1,1,1,0
	.cfi_offset 65, 4
	bl sqrt
.LVL6:
	.loc 1 319 0
	lis 9,.LC3@ha
	.loc 1 318 0
	frsp 1,1
.LVL7:
	.loc 1 319 0
	lfs 0,.LC3@l(9)
	fcmpu 7,1,0
	beq- 7,.L6
	lis 9,.LC1@ha
	.loc 1 327 0
	lwz 0,20(1)
	.loc 1 319 0
	lfs 13,.LC1@l(9)
	lfs 0,0(31)
	.loc 1 327 0
	mtlr 0
	.loc 1 319 0
	fdivs 1,13,1
.LVL8:
	.loc 1 326 0
	lfs 12,8(31)
	.loc 1 325 0
	lfs 13,4(31)
	.loc 1 319 0
	fmuls 0,1,0
.LVL9:
	.loc 1 325 0
	fmuls 13,13,1
	.loc 1 326 0
	fmuls 1,12,1
.LVL10:
	.loc 1 324 0
	stfs 0,0(31)
	.loc 1 325 0
	stfs 13,4(31)
	.loc 1 326 0
	stfs 1,8(31)
	.loc 1 327 0
	lwz 31,12(1)
.LVL11:
	addi 1,1,16
	.cfi_remember_state
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL12:
.L6:
.LCFI4:
	.cfi_restore_state
	.loc 1 320 0
	lis 3,.LC2@ha
	la 3,.LC2@l(3)
	crxor 6,6,6
	bl __glutWarning
.LVL13:
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	.loc 1 327 0
	lwz 0,20(1)
	.loc 1 320 0
	fmr 1,0
.LVL14:
	.loc 1 325 0
	lfs 13,4(31)
	.loc 1 326 0
	lfs 12,8(31)
	.loc 1 327 0
	mtlr 0
	.loc 1 324 0
	stfs 0,0(31)
	.loc 1 325 0
	fmuls 13,13,1
	.loc 1 326 0
	fmuls 1,12,1
	.loc 1 325 0
	stfs 13,4(31)
	.loc 1 326 0
	stfs 1,8(31)
	.loc 1 327 0
	lwz 31,12(1)
.LVL15:
	addi 1,1,16
	.cfi_restore 31
.LCFI5:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE13:
	.size	normalize, .-normalize
	.align 2
	.type	drawtriangle, @function
drawtriangle:
.LFB20:
	.loc 1 446 0
	.cfi_startproc
.LVL16:
	mflr 0
	stwu 1,-72(1)
.LCFI6:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
	.loc 1 449 0
	mulli 3,3,12
.LVL17:
.LBB12:
.LBB13:
	.loc 1 420 0
	lis 8,.LC3@ha
	lfs 0,.LC3@l(8)
.LBE13:
.LBE12:
	.loc 1 446 0
	stw 0,76(1)
	.loc 1 449 0
	add 9,5,3
	lwzx 11,5,3
	.loc 1 450 0
	lwz 10,4(9)
	.loc 1 451 0
	lwz 0,8(9)
	.cfi_offset 65, 4
	.loc 1 449 0
	mulli 11,11,12
	.loc 1 450 0
	mulli 9,10,12
	.loc 1 446 0
	stw 28,56(1)
	.loc 1 451 0
	mulli 0,0,12
	.loc 1 446 0
	stw 29,60(1)
	stw 30,64(1)
	.loc 1 449 0
	add 11,4,11
.LVL18:
	.loc 1 446 0
	stw 31,68(1)
	.loc 1 450 0
	add 9,4,9
.LVL19:
	.loc 1 446 0
	mr 28,6
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.loc 1 451 0
	add 4,4,0
.LVL20:
	li 10,0
	addi 30,1,44
	addi 29,1,32
	addi 31,1,20
.LVL21:
.L9:
.LBB27:
.LBB26:
	.loc 1 420 0
	lfsx 13,9,10
	.loc 1 419 0
	cmpwi 7,10,8
	.loc 1 420 0
	lfsx 12,11,10
	fmuls 11,13,0
	.loc 1 423 0
	fmadds 9,12,0,13
	.loc 1 420 0
	lfsx 13,4,10
	fmadds 10,12,0,11
	.loc 1 421 0
	fadds 12,12,11
	.loc 1 420 0
	fadds 10,10,13
	.loc 1 421 0
	fmadds 12,13,0,12
	.loc 1 423 0
	fmadds 13,13,0,9
	.loc 1 420 0
	stfsx 10,30,10
	.loc 1 421 0
	stfsx 12,29,10
	.loc 1 423 0
	stfsx 13,31,10
	.loc 1 419 0
	addi 10,10,4
	bne+ 7,.L9
	.loc 1 426 0
	lfs 1,48(1)
	lfs 0,44(1)
	fmuls 13,1,1
	lfs 1,52(1)
	fmadds 0,0,0,13
	fmadds 1,1,1,0
	bl sqrt
.LVL22:
	.loc 1 427 0
	lfs 10,44(1)
	.loc 1 426 0
	frsp 1,1
.LVL23:
	.loc 1 428 0
	lfs 11,48(1)
	.loc 1 430 0
	lfs 12,36(1)
	lfs 13,32(1)
	.loc 1 427 0
	fdivs 10,10,1
	.loc 1 430 0
	lfs 0,40(1)
	.loc 1 427 0
	stfs 10,44(1)
	.loc 1 428 0
	fdivs 11,11,1
	.loc 1 429 0
	lfs 10,52(1)
	fdivs 1,10,1
.LVL24:
	.loc 1 428 0
	stfs 11,48(1)
	.loc 1 430 0
	fmuls 12,12,12
	.loc 1 429 0
	stfs 1,52(1)
	.loc 1 430 0
	fmadds 13,13,13,12
	fmadds 0,0,0,13
	fmr 1,0
	bl sqrt
	.loc 1 431 0
	lfs 10,32(1)
	.loc 1 430 0
	frsp 1,1
.LVL25:
	.loc 1 432 0
	lfs 11,36(1)
	.loc 1 434 0
	lfs 12,24(1)
	lfs 13,20(1)
	.loc 1 431 0
	fdivs 10,10,1
	.loc 1 434 0
	lfs 0,28(1)
	.loc 1 431 0
	stfs 10,32(1)
	.loc 1 432 0
	fdivs 11,11,1
	.loc 1 433 0
	lfs 10,40(1)
	fdivs 1,10,1
.LVL26:
	.loc 1 432 0
	stfs 11,36(1)
	.loc 1 434 0
	fmuls 12,12,12
	.loc 1 433 0
	stfs 1,40(1)
	.loc 1 434 0
	fmadds 13,13,13,12
	fmadds 0,0,0,13
	fmr 1,0
	bl sqrt
	.loc 1 437 0
	lfs 13,28(1)
	.loc 1 434 0
	frsp 1,1
.LVL27:
	.loc 1 435 0
	lfs 0,20(1)
	.loc 1 436 0
	lfs 10,24(1)
.LBB14:
.LBB15:
	.loc 1 396 0
	addi 3,1,8
	.loc 1 393 0
	lfs 7,44(1)
.LBE15:
.LBE14:
	.loc 1 435 0
	fdivs 0,0,1
.LBB22:
.LBB18:
	.loc 1 393 0
	lfs 8,48(1)
	lfs 12,52(1)
	lfs 9,32(1)
	lfs 11,36(1)
.LBE18:
.LBE22:
	.loc 1 436 0
	fdivs 10,10,1
	.loc 1 435 0
	stfs 0,20(1)
	.loc 1 437 0
	fdivs 1,13,1
.LVL28:
.LBB23:
.LBB19:
	.loc 1 393 0
	lfs 13,40(1)
.LBE19:
.LBE23:
	.loc 1 436 0
	stfs 10,24(1)
.LBB24:
.LBB20:
	.loc 1 393 0
	fsubs 9,9,7
.LBE20:
.LBE24:
	.loc 1 437 0
	stfs 1,28(1)
.LBB25:
.LBB21:
	.loc 1 393 0
	fsubs 11,11,8
	fsubs 13,13,12
	.loc 1 394 0
	fsubs 0,7,0
	fsubs 12,12,1
	fsubs 10,8,10
.LBB16:
.LBB17:
	.loc 1 307 0
	fmuls 6,11,0
	.loc 1 306 0
	fmuls 8,9,12
	.loc 1 305 0
	fmuls 7,13,10
	.loc 1 307 0
	fmsubs 10,9,10,6
	.loc 1 306 0
	fmsubs 0,13,0,8
	.loc 1 305 0
	fmsubs 12,11,12,7
.LVL29:
	.loc 1 310 0
	stfs 10,16(1)
	.loc 1 309 0
	stfs 0,12(1)
	.loc 1 308 0
	stfs 12,8(1)
.LBE17:
.LBE16:
	.loc 1 396 0
	bl normalize
.LVL30:
	.loc 1 398 0
	mr 3,28
	bl glBegin
	.loc 1 399 0
	addi 3,1,8
.LVL31:
	bl glNormal3fv
.LVL32:
	.loc 1 400 0
	mr 3,29
	bl glVertex3fv
	.loc 1 401 0
	mr 3,30
	bl glVertex3fv
	.loc 1 402 0
	mr 3,31
	bl glVertex3fv
	.loc 1 403 0
	bl glEnd
.LVL33:
.LBE21:
.LBE25:
.LBE26:
.LBE27:
	.loc 1 453 0
	lwz 0,76(1)
	lwz 28,56(1)
.LVL34:
	mtlr 0
	lwz 29,60(1)
.LVL35:
	lwz 30,64(1)
.LVL36:
	lwz 31,68(1)
.LVL37:
	addi 1,1,72
.LCFI7:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE20:
	.size	drawtriangle, .-drawtriangle
	.align 2
	.type	tetrahedron, @function
tetrahedron:
.LFB27:
	.loc 1 597 0
	.cfi_startproc
.LVL38:
	stwu 1,-24(1)
.LCFI8:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 30,16(1)
	lis 30,.LANCHOR0+72@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	la 30,.LANCHOR0+72@l(30)
	stw 0,28(1)
	stw 28,8(1)
	mr 28,3
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	stw 29,12(1)
	addi 29,30,48
	.cfi_offset 29, -12
	stw 31,20(1)
	.loc 1 600 0
	li 31,0
	.cfi_offset 31, -4
.LVL39:
.L12:
	.loc 1 601 0 discriminator 2
	mr 3,31
	mr 4,30
	mr 5,29
	mr 6,28
	bl drawtriangle
.LVL40:
	.loc 1 600 0 discriminator 2
	cmpwi 7,31,3
	addi 31,31,1
.LVL41:
	bne+ 7,.L12
	.loc 1 602 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL42:
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
.LVL43:
	addi 1,1,24
.LCFI9:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE27:
	.size	tetrahedron, .-tetrahedron
	.align 2
	.type	icosahedron, @function
icosahedron:
.LFB24:
	.loc 1 552 0
	.cfi_startproc
.LVL44:
	stwu 1,-24(1)
.LCFI10:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 30,16(1)
	lis 30,.LANCHOR0+168@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	la 30,.LANCHOR0+168@l(30)
	stw 0,28(1)
	stw 28,8(1)
	mr 28,3
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	stw 29,12(1)
	addi 29,30,144
	.cfi_offset 29, -12
	stw 31,20(1)
	.loc 1 555 0
	li 31,0
	.cfi_offset 31, -4
.LVL45:
.L15:
	.loc 1 556 0 discriminator 2
	mr 3,31
	mr 4,30
	mr 5,29
	mr 6,28
	bl drawtriangle
.LVL46:
	.loc 1 555 0 discriminator 2
	cmpwi 7,31,19
	addi 31,31,1
.LVL47:
	bne+ 7,.L15
	.loc 1 558 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL48:
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
.LVL49:
	addi 1,1,24
.LCFI11:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE24:
	.size	icosahedron, .-icosahedron
	.align 2
	.type	octahedron, @function
octahedron:
.LFB21:
	.loc 1 481 0
	.cfi_startproc
.LVL50:
	stwu 1,-24(1)
.LCFI12:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 30,16(1)
	lis 30,.LANCHOR0+552@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	la 30,.LANCHOR0+552@l(30)
	stw 0,28(1)
	stw 28,8(1)
	mr 28,3
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	stw 29,12(1)
	addi 29,30,72
	.cfi_offset 29, -12
	stw 31,20(1)
	.loc 1 484 0
	li 31,0
	.cfi_offset 31, -4
.LVL51:
.L18:
	.loc 1 485 0 discriminator 2
	mr 3,31
	mr 4,30
	mr 5,29
	mr 6,28
	bl drawtriangle
.LVL52:
	.loc 1 484 0 discriminator 2
	cmpwi 7,31,7
	addi 31,31,1
.LVL53:
	bne+ 7,.L18
	.loc 1 487 0
	lwz 0,28(1)
	lwz 28,8(1)
.LVL54:
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
.LVL55:
	addi 1,1,24
.LCFI13:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE21:
	.size	octahedron, .-octahedron
	.align 2
	.type	pentagon, @function
pentagon:
.LFB14:
	.loc 1 331 0
	.cfi_startproc
.LVL56:
	stwu 1,-56(1)
.LCFI14:
	.cfi_def_cfa_offset 56
	mflr 0
	.loc 1 334 0
	mulli 4,4,12
.LVL57:
	.loc 1 335 0
	mulli 5,5,12
.LVL58:
	.loc 1 331 0
	stw 31,52(1)
	.loc 1 334 0
	mulli 3,3,12
.LVL59:
	lis 31,.LANCHOR2@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 331 0
	stw 0,60(1)
	.loc 1 334 0
	la 31,.LANCHOR2@l(31)
	.loc 1 331 0
	stw 28,40(1)
	.loc 1 334 0
	add 28,31,3
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	.loc 1 331 0
	stw 29,44(1)
	.loc 1 334 0
	add 29,31,4
	.cfi_offset 29, -12
	.loc 1 331 0
	stw 30,48(1)
	.loc 1 335 0
	add 30,31,5
	.cfi_offset 30, -8
	.loc 1 334 0
	lfsx 6,31,4
	.loc 1 335 0
	lfsx 0,31,5
	.loc 1 334 0
	lfs 7,4(29)
	lfs 8,8(29)
	.loc 1 335 0
	fsubs 0,6,0
	.loc 1 334 0
	lfsx 9,31,3
	.loc 1 337 0
	addi 3,1,8
	.loc 1 334 0
	lfs 11,4(28)
	lfs 13,8(28)
	fsubs 9,9,6
.LVL60:
	.loc 1 335 0
	lfs 10,4(30)
	.loc 1 334 0
	fsubs 11,11,7
.LVL61:
	.loc 1 335 0
	lfs 12,8(30)
	.loc 1 334 0
	fsubs 13,13,8
.LVL62:
	.loc 1 335 0
	fsubs 10,7,10
.LVL63:
	.loc 1 331 0
	stw 27,36(1)
	.loc 1 335 0
	fsubs 12,8,12
.LVL64:
	.loc 1 331 0
	mr 27,8
	.cfi_offset 27, -20
.LBB28:
.LBB29:
	.loc 1 307 0
	fmuls 6,11,0
.LBE29:
.LBE28:
	.loc 1 331 0
	stw 25,28(1)
.LBB34:
.LBB30:
	.loc 1 305 0
	fmuls 7,13,10
.LBE30:
.LBE34:
	.loc 1 331 0
	mr 25,7
	.cfi_offset 25, -28
.LBB35:
.LBB31:
	.loc 1 306 0
	fmuls 8,9,12
.LBE31:
.LBE35:
	.loc 1 331 0
	stw 26,32(1)
.LBB36:
.LBB32:
	.loc 1 307 0
	fmsubs 10,9,10,6
.LVL65:
.LBE32:
.LBE36:
	.loc 1 331 0
	mr 26,6
	.cfi_offset 26, -24
.LBB37:
.LBB33:
	.loc 1 305 0
	fmsubs 12,11,12,7
.LVL66:
	.loc 1 306 0
	fmsubs 0,13,0,8
.LVL67:
	.loc 1 310 0
	stfs 10,16(1)
	.loc 1 308 0
	stfs 12,8(1)
	.loc 1 309 0
	stfs 0,12(1)
.LBE33:
.LBE37:
	.loc 1 337 0
	bl normalize
.LVL68:
	.loc 1 339 0
	mr 3,27
	bl glBegin
	.loc 1 340 0
	addi 3,1,8
.LVL69:
	bl glNormal3fv
.LVL70:
	.loc 1 341 0
	mr 3,28
	bl glVertex3fv
	.loc 1 342 0
	mr 3,29
	bl glVertex3fv
	.loc 1 343 0
	mr 3,30
	bl glVertex3fv
	.loc 1 344 0
	mulli 3,26,12
	add 3,31,3
	bl glVertex3fv
	.loc 1 345 0
	mulli 3,25,12
	add 3,31,3
	bl glVertex3fv
	.loc 1 346 0
	bl glEnd
	.loc 1 347 0
	lwz 0,60(1)
	lwz 25,28(1)
.LVL71:
	mtlr 0
	lwz 26,32(1)
.LVL72:
	lwz 27,36(1)
.LVL73:
	lwz 28,40(1)
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
	addi 1,1,56
.LCFI15:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
	.cfi_endproc
.LFE14:
	.size	pentagon, .-pentagon
	.align 2
	.type	dodecahedron, @function
dodecahedron:
.LFB15:
	.loc 1 351 0
	.cfi_startproc
.LVL74:
	mflr 0
	stwu 1,-16(1)
.LCFI16:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 354 0
	lis 11,.LANCHOR2@ha
	la 9,.LANCHOR2@l(11)
	.loc 1 351 0
	stw 31,12(1)
	stw 0,20(1)
	.loc 1 351 0
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	.loc 1 354 0
	lwz 0,240(9)
	cmpwi 7,0,0
	bne+ 7,.L22
.LBB40:
.LBB41:
	.loc 1 272 0
	lis 10,.LC7@ha
	.loc 1 270 0
	lis 6,.LC5@ha
	lis 7,.LC4@ha
	.loc 1 272 0
	lwz 8,.LC7@l(10)
	.loc 1 270 0
	lwz 5,.LC5@l(6)
	.loc 1 273 0
	lis 10,.LC1@ha
	.loc 1 270 0
	lwz 7,.LC4@l(7)
	.loc 1 271 0
	lis 6,.LC6@ha
	.loc 1 273 0
	lwz 10,.LC1@l(10)
	.loc 1 270 0
	li 0,0
	.loc 1 271 0
	lwz 6,.LC6@l(6)
.LBE41:
.LBE40:
	.loc 1 355 0
	li 4,1
.LBB44:
.LBB42:
	.loc 1 270 0
	stw 7,.LANCHOR2@l(11)
	.loc 1 282 0
	lis 11,.LC8@ha
.LBE42:
.LBE44:
	.loc 1 355 0
	stw 4,240(9)
.LVL75:
.LBB45:
.LBB43:
	.loc 1 270 0
	stw 0,4(9)
	stw 5,8(9)
	.loc 1 271 0
	stw 6,12(9)
	stw 0,16(9)
	stw 5,20(9)
	.loc 1 272 0
	stw 8,24(9)
	stw 8,28(9)
	stw 8,32(9)
	.loc 1 273 0
	stw 8,36(9)
	stw 8,40(9)
	stw 10,44(9)
	.loc 1 274 0
	stw 8,48(9)
	stw 10,52(9)
	stw 8,56(9)
	.loc 1 275 0
	stw 8,60(9)
	stw 10,64(9)
	stw 10,68(9)
	.loc 1 276 0
	stw 10,72(9)
	stw 8,76(9)
	stw 8,80(9)
	.loc 1 277 0
	stw 10,84(9)
	stw 8,88(9)
	stw 10,92(9)
	.loc 1 278 0
	stw 10,96(9)
	stw 10,100(9)
	stw 8,104(9)
	.loc 1 279 0
	stw 10,108(9)
	.loc 1 282 0
	lwz 11,.LC8@l(11)
	.loc 1 279 0
	stw 10,112(9)
	stw 10,116(9)
	.loc 1 280 0
	stw 5,120(9)
	stw 6,124(9)
	stw 0,128(9)
	.loc 1 281 0
	stw 5,132(9)
	stw 7,136(9)
	stw 0,140(9)
	.loc 1 282 0
	stw 11,144(9)
	stw 6,148(9)
	stw 0,152(9)
	.loc 1 283 0
	stw 11,156(9)
	stw 7,160(9)
	stw 0,164(9)
	.loc 1 284 0
	stw 7,168(9)
	stw 0,172(9)
	stw 11,176(9)
	.loc 1 285 0
	stw 6,180(9)
	stw 0,184(9)
	stw 11,188(9)
	.loc 1 286 0
	stw 0,192(9)
	stw 5,196(9)
	stw 6,200(9)
	.loc 1 287 0
	stw 0,204(9)
	stw 5,208(9)
	stw 7,212(9)
	.loc 1 288 0
	stw 0,216(9)
	stw 11,220(9)
	stw 6,224(9)
	.loc 1 289 0
	stw 0,228(9)
	stw 11,232(9)
	stw 7,236(9)
.LVL76:
.L22:
.LBE43:
.LBE45:
	.loc 1 358 0
	mr 8,31
	li 3,0
.LVL77:
	li 4,1
	li 5,9
	li 6,16
	li 7,5
	bl pentagon
	.loc 1 359 0
	mr 8,31
	li 3,1
	li 4,0
	li 5,3
	li 6,18
	li 7,7
	bl pentagon
	.loc 1 360 0
	mr 8,31
	li 3,1
	li 4,7
	li 5,11
	li 6,10
	li 7,9
	bl pentagon
	.loc 1 361 0
	mr 8,31
	li 3,11
	li 4,7
	li 5,18
	li 6,19
	li 7,6
	bl pentagon
	.loc 1 362 0
	mr 8,31
	li 3,8
	li 4,17
	li 5,16
	li 6,9
	li 7,10
	bl pentagon
	.loc 1 363 0
	mr 8,31
	li 3,2
	li 4,14
	li 5,15
	li 6,6
	li 7,19
	bl pentagon
	.loc 1 364 0
	mr 8,31
	li 3,2
	li 4,13
	li 5,12
	li 6,4
	li 7,14
	bl pentagon
	.loc 1 365 0
	mr 8,31
	li 3,2
	li 4,19
	li 5,18
	li 6,3
	li 7,13
	bl pentagon
	.loc 1 366 0
	mr 8,31
	li 3,3
	li 4,0
	li 5,5
	li 6,12
	li 7,13
	bl pentagon
	.loc 1 367 0
	mr 8,31
	li 3,6
	li 4,15
	li 5,8
	li 6,10
	li 7,11
	bl pentagon
	.loc 1 368 0
	mr 8,31
	li 3,4
	li 4,17
	li 5,8
	li 6,15
	li 7,14
	bl pentagon
	.loc 1 370 0
	lwz 0,20(1)
	.loc 1 369 0
	mr 8,31
	.loc 1 370 0
	lwz 31,12(1)
.LVL78:
	mtlr 0
	.loc 1 369 0
	li 3,4
	li 4,12
	li 5,5
	li 6,16
	li 7,17
	.loc 1 370 0
	addi 1,1,16
.LCFI17:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.loc 1 369 0
	b pentagon
.LVL79:
	.cfi_endproc
.LFE15:
	.size	dodecahedron, .-dodecahedron
	.align 2
	.type	doughnut, @function
doughnut:
.LFB8:
	.loc 1 182 0
	.cfi_startproc
.LVL80:
	stwu 1,-336(1)
.LCFI18:
	.cfi_def_cfa_offset 336
	mfcr 12
	mflr 0
	stw 30,184(1)
	.loc 1 188 0
	mr. 30,4
	.cfi_offset 30, -152
	.cfi_register 65, 0
	.cfi_register 70, 12
	.loc 1 182 0
	stfd 14,192(1)
	fmr 14,2
	.cfi_offset 46, -144
	stfd 31,328(1)
	fmr 31,1
	.cfi_offset 63, -8
	stw 27,172(1)
	mr 27,5
	.cfi_offset 27, -164
	stw 31,188(1)
	mr 31,3
	.cfi_offset 31, -148
	stw 0,340(1)
	stfd 15,200(1)
	stfd 16,208(1)
	stfd 17,216(1)
	stfd 18,224(1)
	stfd 19,232(1)
	stfd 20,240(1)
	stfd 21,248(1)
	stfd 22,256(1)
	stfd 23,264(1)
	stfd 24,272(1)
	stfd 25,280(1)
	stfd 26,288(1)
	stfd 27,296(1)
	stfd 28,304(1)
	stfd 29,312(1)
	stfd 30,320(1)
	stw 24,160(1)
	stw 25,164(1)
	stw 26,168(1)
	stw 28,176(1)
	stw 29,180(1)
	stw 12,156(1)
	.loc 1 188 0
	ble- 0,.L23
	.cfi_offset 70, -180
	.cfi_offset 29, -156
	.cfi_offset 28, -160
	.cfi_offset 26, -168
	.cfi_offset 25, -172
	.cfi_offset 24, -176
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 56, -64
	.cfi_offset 55, -72
	.cfi_offset 54, -80
	.cfi_offset 53, -88
	.cfi_offset 52, -96
	.cfi_offset 51, -104
	.cfi_offset 50, -112
	.cfi_offset 49, -120
	.cfi_offset 48, -128
	.cfi_offset 47, -136
	.cfi_offset 65, 4
	lis 24,.LC10@ha
	xoris 0,30,0x8000
	lfs 16,.LC10@l(24)
	lis 25,.LC11@ha
	stw 0,108(1)
	lis 0,0x4330
	stw 0,104(1)
	fmr 0,16
	la 25,.LC11@l(25)
	cmpwi 4,3,0
	lfd 15,104(1)
	li 26,0
	.loc 1 189 0
	lfd 17,0(25)
	la 24,.LC10@l(24)
	.loc 1 188 0
	fsub 15,15,0
	.loc 1 189 0
	lis 28,0x4330
.LVL81:
.L27:
	xoris 9,26,0x8000
	.loc 1 190 0
	addi 26,26,1
	xoris 0,26,0x8000
	.loc 1 189 0
	stw 9,116(1)
	stw 28,112(1)
	.loc 1 190 0
	stw 0,124(1)
	stw 28,120(1)
	.loc 1 189 0
	lfd 13,112(1)
	.loc 1 190 0
	lfd 0,120(1)
	.loc 1 189 0
	fsub 13,13,16
	.loc 1 190 0
	fsub 0,0,16
	.loc 1 189 0
	frsp 13,13
	.loc 1 190 0
	frsp 0,0
	.loc 1 189 0
	fadd 13,13,13
	.loc 1 190 0
	fadd 0,0,0
	.loc 1 189 0
	fmul 29,13,17
	.loc 1 190 0
	fmul 30,0,17
	.loc 1 189 0
	fdiv 29,29,15
	.loc 1 190 0
	fdiv 30,30,15
	.loc 1 189 0
	frsp 29,29
.LVL82:
	.loc 1 190 0
	frsp 30,30
.LVL83:
	.loc 1 191 0
	ble- 4,.L25
	.loc 1 195 0
	fmr 1,29
	.loc 1 191 0
	li 29,0
	fmr 18,14
	fmr 23,31
	.loc 1 195 0
	bl cos
	fmr 24,1
	.loc 1 196 0
	fmr 1,29
	bl sin
	fneg 25,1
	.loc 1 199 0
	fmr 1,30
	bl cos
	fmr 26,1
	.loc 1 200 0
	fmr 1,30
	bl sin
	.loc 1 192 0
	xoris 0,31,0x8000
	stw 0,132(1)
	.loc 1 200 0
	fneg 27,1
	.loc 1 192 0
	stw 28,128(1)
	lfs 21,0(24)
	lfd 19,128(1)
	lfd 20,0(25)
	fsub 19,19,21
.LVL84:
.L26:
	.loc 1 192 0 is_stmt 0 discriminator 2
	xoris 0,29,0x8000
	stw 28,136(1)
	stw 0,140(1)
	.loc 1 193 0 is_stmt 1 discriminator 2
	addi 29,29,1
	.loc 1 192 0 discriminator 2
	lfd 30,136(1)
	fsub 30,30,21
	frsp 30,30
	fadd 30,30,30
	fmul 30,30,20
	fdiv 30,30,19
	frsp 30,30
.LVL85:
	.loc 1 195 0 discriminator 2
	fmr 1,30
	bl cos
	fmr 29,1
	.loc 1 197 0 discriminator 2
	fmr 1,30
	.loc 1 195 0 discriminator 2
	fmadd 30,23,29,18
.LVL86:
	fmul 13,24,30
	.loc 1 196 0 discriminator 2
	fmul 0,30,25
	.loc 1 195 0 discriminator 2
	frsp 13,13
	.loc 1 196 0 discriminator 2
	frsp 0,0
	.loc 1 195 0 discriminator 2
	stfs 13,92(1)
	.loc 1 196 0 discriminator 2
	stfs 0,96(1)
	.loc 1 197 0 discriminator 2
	bl sin
	.loc 1 193 0 discriminator 2
	xoris 0,29,0x8000
	stw 28,144(1)
	stw 0,148(1)
	.loc 1 197 0 discriminator 2
	fmul 0,23,1
	.loc 1 193 0 discriminator 2
	lfd 28,144(1)
	.loc 1 199 0 discriminator 2
	fmul 13,30,26
	.loc 1 193 0 discriminator 2
	fsub 28,28,21
	.loc 1 200 0 discriminator 2
	fmul 30,30,27
	.loc 1 193 0 discriminator 2
	frsp 28,28
	.loc 1 197 0 discriminator 2
	frsp 0,0
	.loc 1 199 0 discriminator 2
	frsp 13,13
	.loc 1 193 0 discriminator 2
	fadd 28,28,28
	.loc 1 197 0 discriminator 2
	fmr 22,1
	stfs 0,100(1)
	.loc 1 200 0 discriminator 2
	frsp 30,30
	.loc 1 199 0 discriminator 2
	stfs 13,80(1)
	.loc 1 193 0 discriminator 2
	fmul 28,28,20
	.loc 1 201 0 discriminator 2
	stfs 0,88(1)
	.loc 1 200 0 discriminator 2
	stfs 30,84(1)
	.loc 1 213 0 discriminator 2
	frsp 22,22
	.loc 1 193 0 discriminator 2
	fdiv 28,28,19
	frsp 28,28
	.loc 1 203 0 discriminator 2
	fmr 1,28
	bl cos
	fmr 30,1
	.loc 1 205 0 discriminator 2
	fmr 1,28
	.loc 1 203 0 discriminator 2
	fmadd 28,23,30,18
	fmul 13,26,28
	.loc 1 204 0 discriminator 2
	fmul 0,27,28
	.loc 1 203 0 discriminator 2
	frsp 13,13
	.loc 1 204 0 discriminator 2
	frsp 0,0
	.loc 1 203 0 discriminator 2
	stfs 13,68(1)
	.loc 1 204 0 discriminator 2
	stfs 0,72(1)
	.loc 1 205 0 discriminator 2
	bl sin
	fmul 0,23,1
	.loc 1 227 0 discriminator 2
	mr 3,27
	.loc 1 213 0 discriminator 2
	stfs 22,52(1)
	.loc 1 207 0 discriminator 2
	fmul 7,24,28
	.loc 1 217 0 discriminator 2
	stfs 22,40(1)
	.loc 1 211 0 discriminator 2
	fmul 8,24,29
	.loc 1 212 0 discriminator 2
	fmul 9,29,25
	.loc 1 215 0 discriminator 2
	fmul 10,29,26
	.loc 1 219 0 discriminator 2
	fmul 11,26,30
	.loc 1 220 0 discriminator 2
	fmul 12,27,30
	.loc 1 223 0 discriminator 2
	fmul 13,24,30
	.loc 1 208 0 discriminator 2
	fmul 28,25,28
	.loc 1 216 0 discriminator 2
	fmul 29,29,27
	.loc 1 224 0 discriminator 2
	fmul 30,25,30
	.loc 1 205 0 discriminator 2
	frsp 0,0
	.loc 1 221 0 discriminator 2
	frsp 1,1
	.loc 1 207 0 discriminator 2
	frsp 7,7
	.loc 1 211 0 discriminator 2
	frsp 8,8
	.loc 1 205 0 discriminator 2
	stfs 0,76(1)
	.loc 1 212 0 discriminator 2
	frsp 9,9
	.loc 1 209 0 discriminator 2
	stfs 0,64(1)
	.loc 1 215 0 discriminator 2
	frsp 10,10
	.loc 1 207 0 discriminator 2
	stfs 7,56(1)
	.loc 1 219 0 discriminator 2
	frsp 11,11
	.loc 1 211 0 discriminator 2
	stfs 8,44(1)
	.loc 1 220 0 discriminator 2
	frsp 12,12
	.loc 1 212 0 discriminator 2
	stfs 9,48(1)
	.loc 1 223 0 discriminator 2
	frsp 13,13
	.loc 1 215 0 discriminator 2
	stfs 10,32(1)
	.loc 1 208 0 discriminator 2
	frsp 28,28
	.loc 1 219 0 discriminator 2
	stfs 11,20(1)
	.loc 1 216 0 discriminator 2
	frsp 29,29
	.loc 1 220 0 discriminator 2
	stfs 12,24(1)
	.loc 1 224 0 discriminator 2
	frsp 30,30
	.loc 1 221 0 discriminator 2
	stfs 1,28(1)
	.loc 1 223 0 discriminator 2
	stfs 13,8(1)
	.loc 1 225 0 discriminator 2
	stfs 1,16(1)
	.loc 1 208 0 discriminator 2
	stfs 28,60(1)
	.loc 1 216 0 discriminator 2
	stfs 29,36(1)
	.loc 1 224 0 discriminator 2
	stfs 30,12(1)
	.loc 1 227 0 discriminator 2
	bl glBegin
	.loc 1 228 0 discriminator 2
	addi 3,1,8
	bl glNormal3fv
	.loc 1 229 0 discriminator 2
	addi 3,1,56
	bl glVertex3fv
	.loc 1 230 0 discriminator 2
	addi 3,1,20
	bl glNormal3fv
	.loc 1 231 0 discriminator 2
	addi 3,1,68
	bl glVertex3fv
	.loc 1 232 0 discriminator 2
	addi 3,1,32
	bl glNormal3fv
	.loc 1 233 0 discriminator 2
	addi 3,1,80
	bl glVertex3fv
	.loc 1 234 0 discriminator 2
	addi 3,1,44
	bl glNormal3fv
	.loc 1 235 0 discriminator 2
	addi 3,1,92
	bl glVertex3fv
	.loc 1 236 0 discriminator 2
	bl glEnd
.LVL87:
	.loc 1 191 0 discriminator 2
	cmpw 7,29,31
	bne+ 7,.L26
.LVL88:
.L25:
	.loc 1 188 0
	cmpw 7,26,30
	bne+ 7,.L27
.LVL89:
.L23:
	.loc 1 239 0
	lwz 0,340(1)
	lwz 12,156(1)
	mtlr 0
	lwz 24,160(1)
	lwz 25,164(1)
	mtcrf 8,12
	lwz 26,168(1)
	lwz 27,172(1)
.LVL90:
	lwz 28,176(1)
	lwz 29,180(1)
	lwz 30,184(1)
.LVL91:
	lwz 31,188(1)
.LVL92:
	lfd 14,192(1)
.LVL93:
	lfd 15,200(1)
	lfd 16,208(1)
	lfd 17,216(1)
	lfd 18,224(1)
	lfd 19,232(1)
	lfd 20,240(1)
	lfd 21,248(1)
	lfd 22,256(1)
	lfd 23,264(1)
	lfd 24,272(1)
	lfd 25,280(1)
	lfd 26,288(1)
	lfd 27,296(1)
	lfd 28,304(1)
	lfd 29,312(1)
	lfd 30,320(1)
	lfd 31,328(1)
.LVL94:
	addi 1,1,336
.LCFI19:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 57
	.cfi_restore 56
	.cfi_restore 55
	.cfi_restore 54
	.cfi_restore 53
	.cfi_restore 52
	.cfi_restore 51
	.cfi_restore 50
	.cfi_restore 49
	.cfi_restore 48
	.cfi_restore 47
	.cfi_restore 46
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	blr
	.cfi_endproc
.LFE8:
	.size	doughnut, .-doughnut
	.align 2
	.type	initQuadObj, @function
initQuadObj:
.LFB0:
	.loc 1 63 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI20:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 64 0
	.cfi_offset 65, 4
	bl gluNewQuadric
	.loc 1 67 0
	lwz 0,12(1)
	.loc 1 64 0
	lis 9,.LANCHOR2+244@ha
	.loc 1 67 0
	.loc 1 64 0
	stw 3,.LANCHOR2+244@l(9)
	.loc 1 67 0
	mtlr 0
	addi 1,1,8
.LCFI21:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE0:
	.size	initQuadObj, .-initQuadObj
	.align 2
	.globl glutWireSphere
	.type	glutWireSphere, @function
glutWireSphere:
.LFB1:
	.loc 1 72 0
	.cfi_startproc
.LVL95:
	mflr 0
	stwu 1,-32(1)
.LCFI22:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 31,28(1)
	.loc 1 73 0
	lis 31,.LANCHOR2@ha
	.cfi_offset 31, -4
	.loc 1 72 0
	stw 0,36(1)
	.loc 1 73 0
	la 31,.LANCHOR2@l(31)
	.loc 1 72 0
	stw 29,20(1)
	mr 29,3
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 1 73 0
	lwz 0,244(31)
	.loc 1 72 0
	stw 30,24(1)
	.loc 1 72 0
	mr 30,4
	.cfi_offset 30, -8
	.loc 1 73 0
	cmpwi 7,0,0
	beq- 7,.L34
.LVL96:
.L32:
	.loc 1 74 0
	lis 4,0x1
	mr 3,0
	ori 4,4,34475
	stfd 1,8(1)
	bl gluQuadricDrawStyle
	.loc 1 75 0
	lwz 3,244(31)
	lis 4,0x1
	ori 4,4,34464
	bl gluQuadricNormals
	.loc 1 79 0
	lfd 1,8(1)
	lwz 3,244(31)
	mr 4,29
	mr 5,30
	bl gluSphere
.L31:
	.loc 1 80 0
	lwz 0,36(1)
	lwz 29,20(1)
.LVL97:
	mtlr 0
	lwz 30,24(1)
.LVL98:
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI23:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL99:
.L34:
.LCFI24:
	.cfi_restore_state
	.loc 1 73 0 discriminator 1
	stfd 1,8(1)
	bl initQuadObj
.LVL100:
	lwz 0,244(31)
	lfd 1,8(1)
	cmpwi 7,0,0
	beq+ 7,.L31
	b .L32
	.cfi_endproc
.LFE1:
	.size	glutWireSphere, .-glutWireSphere
	.align 2
	.globl _glutSolidSphere
	.type	_glutSolidSphere, @function
_glutSolidSphere:
.LFB2:
	.loc 1 84 0
	.cfi_startproc
.LVL101:
	mflr 0
	stwu 1,-32(1)
.LCFI25:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 31,28(1)
	.loc 1 85 0
	lis 31,.LANCHOR2@ha
	.cfi_offset 31, -4
	.loc 1 84 0
	stw 0,36(1)
	.loc 1 85 0
	la 31,.LANCHOR2@l(31)
	.loc 1 84 0
	stw 29,20(1)
	mr 29,3
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 1 85 0
	lwz 0,244(31)
	.loc 1 84 0
	stw 30,24(1)
	.loc 1 84 0
	mr 30,4
	.cfi_offset 30, -8
	.loc 1 85 0
	cmpwi 7,0,0
	beq- 7,.L38
.LVL102:
.L36:
	.loc 1 86 0
	lis 4,0x1
	mr 3,0
	ori 4,4,34476
	stfd 1,8(1)
	bl gluQuadricDrawStyle
	.loc 1 87 0
	lwz 3,244(31)
	lis 4,0x1
	ori 4,4,34464
	bl gluQuadricNormals
	.loc 1 91 0
	lfd 1,8(1)
	lwz 3,244(31)
	mr 4,29
	mr 5,30
	bl gluSphere
.L35:
	.loc 1 92 0
	lwz 0,36(1)
	lwz 29,20(1)
.LVL103:
	mtlr 0
	lwz 30,24(1)
.LVL104:
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI26:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL105:
.L38:
.LCFI27:
	.cfi_restore_state
	.loc 1 85 0 discriminator 1
	stfd 1,8(1)
	bl initQuadObj
.LVL106:
	lwz 0,244(31)
	lfd 1,8(1)
	cmpwi 7,0,0
	beq+ 7,.L35
	b .L36
	.cfi_endproc
.LFE2:
	.size	_glutSolidSphere, .-_glutSolidSphere
	.align 2
	.globl glutWireCone
	.type	glutWireCone, @function
glutWireCone:
.LFB3:
	.loc 1 97 0
	.cfi_startproc
.LVL107:
	mflr 0
	stwu 1,-40(1)
.LCFI28:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 31,28(1)
	.loc 1 98 0
	lis 31,.LANCHOR2@ha
	.cfi_offset 31, -12
	.loc 1 97 0
	stw 0,44(1)
	.loc 1 98 0
	la 31,.LANCHOR2@l(31)
	.loc 1 97 0
	stfd 31,32(1)
	fmr 31,2
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	.loc 1 98 0
	lwz 0,244(31)
	.loc 1 97 0
	stw 29,20(1)
	mr 29,3
	.cfi_offset 29, -20
	.loc 1 98 0
	cmpwi 7,0,0
	.loc 1 97 0
	stw 30,24(1)
	.loc 1 97 0
	mr 30,4
	.cfi_offset 30, -16
	.loc 1 98 0
	beq- 7,.L42
.LVL108:
.L40:
	.loc 1 99 0
	lis 4,0x1
	mr 3,0
	ori 4,4,34475
	stfd 1,8(1)
	bl gluQuadricDrawStyle
	.loc 1 100 0
	lwz 3,244(31)
	lis 4,0x1
	ori 4,4,34464
	bl gluQuadricNormals
	.loc 1 104 0
	lis 9,.LC12@ha
	fmr 3,31
	lfd 1,8(1)
	lwz 3,244(31)
	mr 4,29
	lfd 2,.LC12@l(9)
	mr 5,30
	bl gluCylinder
.L39:
	.loc 1 105 0
	lwz 0,44(1)
	lwz 29,20(1)
.LVL109:
	mtlr 0
	lwz 30,24(1)
.LVL110:
	lwz 31,28(1)
	lfd 31,32(1)
.LVL111:
	addi 1,1,40
	.cfi_remember_state
.LCFI29:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL112:
.L42:
.LCFI30:
	.cfi_restore_state
	.loc 1 98 0 discriminator 1
	stfd 1,8(1)
	bl initQuadObj
.LVL113:
	lwz 0,244(31)
	lfd 1,8(1)
	cmpwi 7,0,0
	beq+ 7,.L39
	b .L40
	.cfi_endproc
.LFE3:
	.size	glutWireCone, .-glutWireCone
	.align 2
	.globl glutSolidCone
	.type	glutSolidCone, @function
glutSolidCone:
.LFB4:
	.loc 1 110 0
	.cfi_startproc
.LVL114:
	mflr 0
	stwu 1,-40(1)
.LCFI31:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 31,28(1)
	.loc 1 111 0
	lis 31,.LANCHOR2@ha
	.cfi_offset 31, -12
	.loc 1 110 0
	stw 0,44(1)
	.loc 1 111 0
	la 31,.LANCHOR2@l(31)
	.loc 1 110 0
	stfd 31,32(1)
	fmr 31,2
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	.loc 1 111 0
	lwz 0,244(31)
	.loc 1 110 0
	stw 29,20(1)
	mr 29,3
	.cfi_offset 29, -20
	.loc 1 111 0
	cmpwi 7,0,0
	.loc 1 110 0
	stw 30,24(1)
	.loc 1 110 0
	mr 30,4
	.cfi_offset 30, -16
	.loc 1 111 0
	beq- 7,.L46
.LVL115:
.L44:
	.loc 1 112 0
	lis 4,0x1
	mr 3,0
	ori 4,4,34476
	stfd 1,8(1)
	bl gluQuadricDrawStyle
	.loc 1 113 0
	lwz 3,244(31)
	lis 4,0x1
	ori 4,4,34464
	bl gluQuadricNormals
	.loc 1 117 0
	lis 9,.LC12@ha
	fmr 3,31
	lfd 1,8(1)
	lwz 3,244(31)
	mr 4,29
	lfd 2,.LC12@l(9)
	mr 5,30
	bl gluCylinder
.L43:
	.loc 1 118 0
	lwz 0,44(1)
	lwz 29,20(1)
.LVL116:
	mtlr 0
	lwz 30,24(1)
.LVL117:
	lwz 31,28(1)
	lfd 31,32(1)
.LVL118:
	addi 1,1,40
	.cfi_remember_state
.LCFI32:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL119:
.L46:
.LCFI33:
	.cfi_restore_state
	.loc 1 111 0 discriminator 1
	stfd 1,8(1)
	bl initQuadObj
.LVL120:
	lwz 0,244(31)
	lfd 1,8(1)
	cmpwi 7,0,0
	beq+ 7,.L43
	b .L44
	.cfi_endproc
.LFE4:
	.size	glutSolidCone, .-glutSolidCone
	.align 2
	.globl glutWireCube
	.type	glutWireCube, @function
glutWireCube:
.LFB6:
	.loc 1 167 0
	.cfi_startproc
.LVL121:
	.loc 1 168 0
	frsp 1,1
.LVL122:
	li 3,2
	.loc 1 169 0
	.loc 1 168 0
	b drawBox
	.cfi_endproc
.LFE6:
	.size	glutWireCube, .-glutWireCube
	.align 2
	.globl glutSolidCube
	.type	glutSolidCube, @function
glutSolidCube:
.LFB7:
	.loc 1 173 0
	.cfi_startproc
.LVL123:
	.loc 1 174 0
	frsp 1,1
.LVL124:
	li 3,7
	.loc 1 175 0
	.loc 1 174 0
	b drawBox
	.cfi_endproc
.LFE7:
	.size	glutSolidCube, .-glutSolidCube
	.align 2
	.globl glutWireTorus
	.type	glutWireTorus, @function
glutWireTorus:
.LFB9:
	.loc 1 245 0
	.cfi_startproc
.LVL125:
	.loc 1 246 0
	frsp 1,1
.LVL126:
	li 5,2
	frsp 2,2
.LVL127:
	.loc 1 248 0
	.loc 1 246 0
	b doughnut
.LVL128:
.LVL129:
	.cfi_endproc
.LFE9:
	.size	glutWireTorus, .-glutWireTorus
	.align 2
	.globl glutSolidTorus
	.type	glutSolidTorus, @function
glutSolidTorus:
.LFB10:
	.loc 1 253 0
	.cfi_startproc
.LVL130:
	.loc 1 254 0
	frsp 1,1
.LVL131:
	li 5,7
	frsp 2,2
.LVL132:
	.loc 1 255 0
	.loc 1 254 0
	b doughnut
.LVL133:
.LVL134:
	.cfi_endproc
.LFE10:
	.size	glutSolidTorus, .-glutSolidTorus
	.align 2
	.globl glutWireDodecahedron
	.type	glutWireDodecahedron, @function
glutWireDodecahedron:
.LFB16:
	.loc 1 375 0
	.cfi_startproc
	.loc 1 376 0
	li 3,2
	.loc 1 377 0
	.loc 1 376 0
	b dodecahedron
	.cfi_endproc
.LFE16:
	.size	glutWireDodecahedron, .-glutWireDodecahedron
	.align 2
	.globl glutSolidDodecahedron
	.type	glutSolidDodecahedron, @function
glutSolidDodecahedron:
.LFB17:
	.loc 1 381 0
	.cfi_startproc
	.loc 1 382 0
	li 3,6
	.loc 1 383 0
	.loc 1 382 0
	b dodecahedron
	.cfi_endproc
.LFE17:
	.size	glutSolidDodecahedron, .-glutSolidDodecahedron
	.align 2
	.globl glutWireOctahedron
	.type	glutWireOctahedron, @function
glutWireOctahedron:
.LFB22:
	.loc 1 492 0
	.cfi_startproc
	.loc 1 493 0
	li 3,2
	.loc 1 494 0
	.loc 1 493 0
	b octahedron
	.cfi_endproc
.LFE22:
	.size	glutWireOctahedron, .-glutWireOctahedron
	.align 2
	.globl glutSolidOctahedron
	.type	glutSolidOctahedron, @function
glutSolidOctahedron:
.LFB23:
	.loc 1 498 0
	.cfi_startproc
	.loc 1 499 0
	li 3,4
	.loc 1 500 0
	.loc 1 499 0
	b octahedron
	.cfi_endproc
.LFE23:
	.size	glutSolidOctahedron, .-glutSolidOctahedron
	.align 2
	.globl glutWireIcosahedron
	.type	glutWireIcosahedron, @function
glutWireIcosahedron:
.LFB25:
	.loc 1 563 0
	.cfi_startproc
	.loc 1 564 0
	li 3,2
	.loc 1 565 0
	.loc 1 564 0
	b icosahedron
	.cfi_endproc
.LFE25:
	.size	glutWireIcosahedron, .-glutWireIcosahedron
	.align 2
	.globl glutSolidIcosahedron
	.type	glutSolidIcosahedron, @function
glutSolidIcosahedron:
.LFB26:
	.loc 1 569 0
	.cfi_startproc
	.loc 1 570 0
	li 3,4
	.loc 1 571 0
	.loc 1 570 0
	b icosahedron
	.cfi_endproc
.LFE26:
	.size	glutSolidIcosahedron, .-glutSolidIcosahedron
	.align 2
	.globl glutWireTetrahedron
	.type	glutWireTetrahedron, @function
glutWireTetrahedron:
.LFB28:
	.loc 1 607 0
	.cfi_startproc
	.loc 1 608 0
	li 3,2
	.loc 1 609 0
	.loc 1 608 0
	b tetrahedron
	.cfi_endproc
.LFE28:
	.size	glutWireTetrahedron, .-glutWireTetrahedron
	.align 2
	.globl glutSolidTetrahedron
	.type	glutSolidTetrahedron, @function
glutSolidTetrahedron:
.LFB29:
	.loc 1 613 0
	.cfi_startproc
	.loc 1 614 0
	li 3,4
	.loc 1 615 0
	.loc 1 614 0
	b tetrahedron
	.cfi_endproc
.LFE29:
	.size	glutSolidTetrahedron, .-glutSolidTetrahedron
	.section	.rodata
	.align 2
	.set	.LANCHOR1,. + 0
	.type	faces.9230, @object
	.size	faces.9230, 96
faces.9230:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	3
	.long	2
	.long	6
	.long	7
	.long	7
	.long	6
	.long	5
	.long	4
	.long	4
	.long	5
	.long	1
	.long	0
	.long	5
	.long	6
	.long	2
	.long	1
	.long	7
	.long	4
	.long	0
	.long	3
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1056964608
.LC1:
	.4byte	1065353216
.LC3:
	.4byte	0
.LC4:
	.4byte	-1088538758
.LC5:
	.4byte	1070537661
.LC6:
	.4byte	1058944890
.LC7:
	.4byte	-1082130432
.LC8:
	.4byte	-1076945987
.LC10:
	.4byte	1501560836
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC11:
	.4byte	1074340347
	.4byte	1413754136
.LC12:
	.4byte	0
	.4byte	0
	.section	".data"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	n.9229, @object
	.size	n.9229, 72
n.9229:
	.long	-1082130432
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	-1082130432
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	-1082130432
	.type	tdata, @object
	.size	tdata, 48
tdata:
	.long	1071494103
	.long	1071494103
	.long	1071494103
	.long	1071494103
	.long	-1075989545
	.long	-1075989545
	.long	-1075989545
	.long	1071494103
	.long	-1075989545
	.long	-1075989545
	.long	-1075989545
	.long	1071494103
	.type	tndex, @object
	.size	tndex, 48
tndex:
	.long	0
	.long	1
	.long	3
	.long	2
	.long	1
	.long	0
	.long	3
	.long	2
	.long	0
	.long	1
	.long	2
	.long	3
	.type	idata, @object
	.size	idata, 144
idata:
	.long	-1090087344
	.long	0
	.long	1062847552
	.long	1057396304
	.long	0
	.long	1062847552
	.long	-1090087344
	.long	0
	.long	-1084636096
	.long	1057396304
	.long	0
	.long	-1084636096
	.long	0
	.long	1062847552
	.long	1057396304
	.long	0
	.long	1062847552
	.long	-1090087344
	.long	0
	.long	-1084636096
	.long	1057396304
	.long	0
	.long	-1084636096
	.long	-1090087344
	.long	1062847552
	.long	1057396304
	.long	0
	.long	-1084636096
	.long	1057396304
	.long	0
	.long	1062847552
	.long	-1090087344
	.long	0
	.long	-1084636096
	.long	-1090087344
	.long	0
	.type	index, @object
	.size	index, 240
index:
	.long	0
	.long	4
	.long	1
	.long	0
	.long	9
	.long	4
	.long	9
	.long	5
	.long	4
	.long	4
	.long	5
	.long	8
	.long	4
	.long	8
	.long	1
	.long	8
	.long	10
	.long	1
	.long	8
	.long	3
	.long	10
	.long	5
	.long	3
	.long	8
	.long	5
	.long	2
	.long	3
	.long	2
	.long	7
	.long	3
	.long	7
	.long	10
	.long	3
	.long	7
	.long	6
	.long	10
	.long	7
	.long	11
	.long	6
	.long	11
	.long	0
	.long	6
	.long	0
	.long	1
	.long	6
	.long	6
	.long	1
	.long	10
	.long	9
	.long	0
	.long	11
	.long	9
	.long	11
	.long	2
	.long	9
	.long	2
	.long	5
	.long	7
	.long	2
	.long	11
	.type	odata, @object
	.size	odata, 72
odata:
	.long	1065353216
	.long	0
	.long	0
	.long	-1082130432
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	-1082130432
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	-1082130432
	.type	ondex, @object
	.size	ondex, 96
ondex:
	.long	0
	.long	4
	.long	2
	.long	1
	.long	2
	.long	4
	.long	0
	.long	3
	.long	4
	.long	1
	.long	4
	.long	3
	.long	0
	.long	2
	.long	5
	.long	1
	.long	5
	.long	2
	.long	0
	.long	5
	.long	3
	.long	1
	.long	3
	.long	5
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC2:
	.string	"normalize: zero length vector"
	.section	".bss"
	.align 2
	.set	.LANCHOR2,. + 0
	.type	dodec, @object
	.size	dodec, 240
dodec:
	.zero	240
	.type	inited.9311, @object
	.size	inited.9311, 4
inited.9311:
	.zero	4
	.type	quadObj, @object
	.size	quadObj, 4
quadObj:
	.zero	4
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/glu.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbe0
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x1
	.4byte	.LASF79
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0x93
	.4byte	0x44
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x99
	.4byte	0x3d
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x2
	.byte	0x9e
	.4byte	0x6e
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x2
	.byte	0xa0
	.4byte	0x67
	.uleb128 0x5
	.byte	0x4
	.4byte	0x92
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x10e
	.4byte	0xc1
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x113
	.4byte	0xb5
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x12d
	.byte	0x1
	.byte	0x1
	.4byte	0x10e
	.uleb128 0x9
	.string	"v1"
	.byte	0x1
	.2byte	0x12d
	.4byte	0xa8
	.uleb128 0x9
	.string	"v2"
	.byte	0x1
	.2byte	0x12d
	.4byte	0xa8
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x12d
	.4byte	0xa8
	.uleb128 0xb
	.string	"p"
	.byte	0x1
	.2byte	0x12f
	.4byte	0x10e
	.byte	0
	.uleb128 0xc
	.4byte	0x92
	.4byte	0x11e
	.uleb128 0xd
	.4byte	0x44
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST0
	.4byte	0x18f
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0x7b
	.4byte	0x92
	.4byte	.LLST1
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x7b
	.4byte	0x7c
	.4byte	.LLST2
	.uleb128 0x10
	.string	"n"
	.byte	0x1
	.byte	0x7d
	.4byte	0x18f
	.byte	0x5
	.byte	0x3
	.4byte	n.9229
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0x86
	.4byte	0x1bb
	.byte	0x5
	.byte	0x3
	.4byte	faces.9230
	.uleb128 0x10
	.string	"v"
	.byte	0x1
	.byte	0x8f
	.4byte	0x1c0
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x90
	.4byte	0x87
	.4byte	.LLST3
	.byte	0
	.uleb128 0xc
	.4byte	0x92
	.4byte	0x1a5
	.uleb128 0xd
	.4byte	0x44
	.byte	0x5
	.uleb128 0xd
	.4byte	0x44
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	0x87
	.4byte	0x1bb
	.uleb128 0xd
	.4byte	0x44
	.byte	0x5
	.uleb128 0xd
	.4byte	0x44
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.4byte	0x1a5
	.uleb128 0xc
	.4byte	0x92
	.4byte	0x1d6
	.uleb128 0xd
	.4byte	0x44
	.byte	0x7
	.uleb128 0xd
	.4byte	0x44
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x13a
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST4
	.4byte	0x20c
	.uleb128 0x15
	.string	"v"
	.byte	0x1
	.2byte	0x13a
	.4byte	0xa8
	.4byte	.LLST5
	.uleb128 0x16
	.string	"d"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x92
	.4byte	.LLST6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x197
	.byte	0x1
	.byte	0x1
	.4byte	0x2a7
	.uleb128 0x9
	.string	"v0"
	.byte	0x1
	.2byte	0x197
	.4byte	0xa8
	.uleb128 0x9
	.string	"v1"
	.byte	0x1
	.2byte	0x197
	.4byte	0xa8
	.uleb128 0x9
	.string	"v2"
	.byte	0x1
	.2byte	0x197
	.4byte	0xa8
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x198
	.4byte	0x7c
	.uleb128 0x17
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x19a
	.4byte	0x3d
	.uleb128 0xb
	.string	"w0"
	.byte	0x1
	.2byte	0x19b
	.4byte	0x10e
	.uleb128 0xb
	.string	"w1"
	.byte	0x1
	.2byte	0x19b
	.4byte	0x10e
	.uleb128 0xb
	.string	"w2"
	.byte	0x1
	.2byte	0x19b
	.4byte	0x10e
	.uleb128 0xb
	.string	"l"
	.byte	0x1
	.2byte	0x19c
	.4byte	0x92
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.2byte	0x19d
	.4byte	0x3d
	.uleb128 0xb
	.string	"j"
	.byte	0x1
	.2byte	0x19d
	.4byte	0x3d
	.uleb128 0xb
	.string	"k"
	.byte	0x1
	.2byte	0x19d
	.4byte	0x3d
	.uleb128 0xb
	.string	"n"
	.byte	0x1
	.2byte	0x19d
	.4byte	0x3d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x184
	.byte	0x1
	.byte	0x1
	.4byte	0x2f9
	.uleb128 0x9
	.string	"n1"
	.byte	0x1
	.2byte	0x184
	.4byte	0xa8
	.uleb128 0x9
	.string	"n2"
	.byte	0x1
	.2byte	0x184
	.4byte	0xa8
	.uleb128 0x9
	.string	"n3"
	.byte	0x1
	.2byte	0x184
	.4byte	0xa8
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x185
	.4byte	0x7c
	.uleb128 0xb
	.string	"q0"
	.byte	0x1
	.2byte	0x187
	.4byte	0x10e
	.uleb128 0xb
	.string	"q1"
	.byte	0x1
	.2byte	0x187
	.4byte	0x10e
	.byte	0
	.uleb128 0x14
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1bc
	.byte	0x1
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LLST7
	.4byte	0x48b
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x3d
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x48b
	.4byte	.LLST9
	.uleb128 0x15
	.string	"ndx"
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x4a1
	.4byte	.LLST10
	.uleb128 0x18
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x7c
	.4byte	.LLST11
	.uleb128 0x16
	.string	"x0"
	.byte	0x1
	.2byte	0x1bf
	.4byte	0xa8
	.4byte	.LLST12
	.uleb128 0x16
	.string	"x1"
	.byte	0x1
	.2byte	0x1bf
	.4byte	0xa8
	.4byte	.LLST13
	.uleb128 0x16
	.string	"x2"
	.byte	0x1
	.2byte	0x1bf
	.4byte	0xa8
	.4byte	.LLST14
	.uleb128 0x19
	.4byte	0x20c
	.4byte	.LBB12
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x1c4
	.uleb128 0x1a
	.4byte	0x23b
	.4byte	.LLST15
	.uleb128 0x1a
	.4byte	0x230
	.4byte	.LLST14
	.uleb128 0x1a
	.4byte	0x225
	.4byte	.LLST17
	.uleb128 0x1a
	.4byte	0x21a
	.4byte	.LLST18
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x1c
	.4byte	0x247
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x253
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.4byte	0x25e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.4byte	0x269
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.4byte	0x274
	.4byte	.LLST19
	.uleb128 0x1e
	.4byte	0x27e
	.4byte	.LLST20
	.uleb128 0x1e
	.4byte	0x288
	.4byte	.LLST20
	.uleb128 0x1c
	.4byte	0x292
	.byte	0x1
	.uleb128 0x1e
	.4byte	0x29c
	.4byte	.LLST22
	.uleb128 0x19
	.4byte	0x2a7
	.4byte	.LBB14
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x1b6
	.uleb128 0x1a
	.4byte	0x2d6
	.4byte	.LLST23
	.uleb128 0x1a
	.4byte	0x2cb
	.4byte	.LLST24
	.uleb128 0x1a
	.4byte	0x2c0
	.4byte	.LLST25
	.uleb128 0x1a
	.4byte	0x2b5
	.4byte	.LLST26
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x1e
	.4byte	0x2e2
	.4byte	.LLST27
	.uleb128 0x1d
	.4byte	0x2ed
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.4byte	0xd3
	.4byte	.LBB16
	.4byte	.LBE16
	.byte	0x1
	.2byte	0x18b
	.uleb128 0x1a
	.4byte	0xf7
	.4byte	.LLST28
	.uleb128 0x1a
	.4byte	0xec
	.4byte	.LLST28
	.uleb128 0x20
	.4byte	0xe1
	.byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1079
	.sleb128 0
	.uleb128 0x21
	.4byte	.LBB17
	.4byte	.LBE17
	.uleb128 0x22
	.4byte	0x103
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x10e
	.uleb128 0xc
	.4byte	0x3d
	.4byte	0x4a1
	.uleb128 0xd
	.4byte	0x44
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x491
	.uleb128 0x14
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x254
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST30
	.4byte	0x4df
	.uleb128 0x18
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x254
	.4byte	0x7c
	.4byte	.LLST31
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.2byte	0x256
	.4byte	0x3d
	.4byte	.LLST32
	.byte	0
	.uleb128 0x14
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x227
	.byte	0x1
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LLST33
	.4byte	0x517
	.uleb128 0x18
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x227
	.4byte	0x7c
	.4byte	.LLST34
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.2byte	0x229
	.4byte	0x3d
	.4byte	.LLST35
	.byte	0
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x1e0
	.byte	0x1
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LLST36
	.4byte	0x54f
	.uleb128 0x18
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x7c
	.4byte	.LLST37
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x3d
	.4byte	.LLST38
	.byte	0
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x14a
	.byte	0x1
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST39
	.4byte	0x62c
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.2byte	0x14a
	.4byte	0x3d
	.4byte	.LLST40
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.2byte	0x14a
	.4byte	0x3d
	.4byte	.LLST41
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.2byte	0x14a
	.4byte	0x3d
	.4byte	.LLST42
	.uleb128 0x15
	.string	"d"
	.byte	0x1
	.2byte	0x14a
	.4byte	0x3d
	.4byte	.LLST43
	.uleb128 0x15
	.string	"e"
	.byte	0x1
	.2byte	0x14a
	.4byte	0x3d
	.4byte	.LLST44
	.uleb128 0x18
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x14a
	.4byte	0x7c
	.4byte	.LLST45
	.uleb128 0x23
	.string	"n0"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x10e
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.string	"d1"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x10e
	.4byte	.LLST46
	.uleb128 0x16
	.string	"d2"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x10e
	.4byte	.LLST47
	.uleb128 0x19
	.4byte	0xd3
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.2byte	0x150
	.uleb128 0x1a
	.4byte	0xf7
	.4byte	.LLST48
	.uleb128 0x20
	.4byte	0xec
	.byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1499
	.sleb128 0
	.uleb128 0x20
	.4byte	0xe1
	.byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+1484
	.sleb128 0
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0xc0
	.uleb128 0x1e
	.4byte	0x103
	.4byte	.LLST49
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x106
	.byte	0x1
	.byte	0x1
	.4byte	0x653
	.uleb128 0x17
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x108
	.4byte	0x92
	.uleb128 0x17
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x108
	.4byte	0x92
	.byte	0
	.uleb128 0x14
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x15e
	.byte	0x1
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST50
	.4byte	0x6b8
	.uleb128 0x18
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x15e
	.4byte	0x7c
	.4byte	.LLST51
	.uleb128 0x24
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x160
	.4byte	0x3d
	.byte	0x5
	.byte	0x3
	.4byte	inited.9311
	.uleb128 0x19
	.4byte	0x62c
	.4byte	.LBB40
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x1
	.2byte	0x164
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0x110
	.uleb128 0x1e
	.4byte	0x63a
	.4byte	.LLST52
	.uleb128 0x1e
	.4byte	0x646
	.4byte	.LLST53
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST54
	.4byte	0x7da
	.uleb128 0x25
	.string	"r"
	.byte	0x1
	.byte	0xb4
	.4byte	0x92
	.4byte	.LLST55
	.uleb128 0x25
	.string	"R"
	.byte	0x1
	.byte	0xb4
	.4byte	0x92
	.4byte	.LLST56
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0xb4
	.4byte	0x87
	.4byte	.LLST57
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0xb5
	.4byte	0x87
	.4byte	.LLST58
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0xb5
	.4byte	0x7c
	.4byte	.LLST59
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xb7
	.4byte	0x3d
	.4byte	.LLST60
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.byte	0xb7
	.4byte	0x3d
	.4byte	.LLST61
	.uleb128 0x26
	.4byte	.LASF44
	.byte	0x1
	.byte	0xb8
	.4byte	0x92
	.4byte	.LLST62
	.uleb128 0x12
	.string	"phi"
	.byte	0x1
	.byte	0xb8
	.4byte	0x92
	.4byte	.LLST63
	.uleb128 0x26
	.4byte	.LASF45
	.byte	0x1
	.byte	0xb8
	.4byte	0x92
	.4byte	.LLST64
	.uleb128 0x27
	.4byte	.LASF46
	.byte	0x1
	.byte	0xb8
	.4byte	0x92
	.uleb128 0x10
	.string	"p0"
	.byte	0x1
	.byte	0xb9
	.4byte	0x10e
	.byte	0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x10
	.string	"p1"
	.byte	0x1
	.byte	0xb9
	.4byte	0x10e
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x10
	.string	"p2"
	.byte	0x1
	.byte	0xb9
	.4byte	0x10e
	.byte	0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x10
	.string	"p3"
	.byte	0x1
	.byte	0xb9
	.4byte	0x10e
	.byte	0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x10
	.string	"n0"
	.byte	0x1
	.byte	0xba
	.4byte	0x10e
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x10
	.string	"n1"
	.byte	0x1
	.byte	0xba
	.4byte	0x10e
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x10
	.string	"n2"
	.byte	0x1
	.byte	0xba
	.4byte	0x10e
	.byte	0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x10
	.string	"n3"
	.byte	0x1
	.byte	0xba
	.4byte	0x10e
	.byte	0x3
	.byte	0x91
	.sleb128 -328
	.byte	0
	.uleb128 0x28
	.4byte	.LASF80
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST65
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF50
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST66
	.4byte	0x835
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x1
	.byte	0x47
	.4byte	0x9d
	.4byte	.LLST67
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x1
	.byte	0x47
	.4byte	0x87
	.4byte	.LLST68
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x1
	.byte	0x47
	.4byte	0x87
	.4byte	.LLST69
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF51
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST70
	.4byte	0x87c
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x1
	.byte	0x53
	.4byte	0x9d
	.4byte	.LLST71
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x1
	.byte	0x53
	.4byte	0x87
	.4byte	.LLST72
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x1
	.byte	0x53
	.4byte	0x87
	.4byte	.LLST73
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF52
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST74
	.4byte	0x8d2
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x1
	.byte	0x5f
	.4byte	0x9d
	.4byte	.LLST75
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x1
	.byte	0x5f
	.4byte	0x9d
	.4byte	.LLST76
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x1
	.byte	0x60
	.4byte	0x87
	.4byte	.LLST77
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x1
	.byte	0x60
	.4byte	0x87
	.4byte	.LLST78
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF55
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST79
	.4byte	0x928
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x1
	.byte	0x6c
	.4byte	0x9d
	.4byte	.LLST80
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x1
	.byte	0x6c
	.4byte	0x9d
	.4byte	.LLST81
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x1
	.byte	0x6d
	.4byte	0x87
	.4byte	.LLST82
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x1
	.byte	0x6d
	.4byte	0x87
	.4byte	.LLST83
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF56
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x950
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0xa6
	.4byte	0x9d
	.4byte	.LLST84
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.byte	0xac
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x978
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0xac
	.4byte	0x9d
	.4byte	.LLST85
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF58
	.byte	0x1
	.byte	0xf3
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x9cd
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x1
	.byte	0xf3
	.4byte	0x9d
	.4byte	.LLST86
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x1
	.byte	0xf3
	.4byte	0x9d
	.4byte	.LLST87
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0xf4
	.4byte	0x87
	.4byte	.LLST88
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0xf4
	.4byte	0x87
	.4byte	.LLST89
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xa22
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x1
	.byte	0xfb
	.4byte	0x9d
	.4byte	.LLST90
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x1
	.byte	0xfb
	.4byte	0x9d
	.4byte	.LLST91
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0xfc
	.4byte	0x87
	.4byte	.LLST92
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x1
	.byte	0xfc
	.4byte	0x87
	.4byte	.LLST93
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x176
	.byte	0x1
	.4byte	.LFB16
	.4byte	.LFE16
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x17c
	.byte	0x1
	.4byte	.LFB17
	.4byte	.LFE17
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1eb
	.byte	0x1
	.4byte	.LFB22
	.4byte	.LFE22
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x1f1
	.byte	0x1
	.4byte	.LFB23
	.4byte	.LFE23
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x232
	.byte	0x1
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x238
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x25e
	.byte	0x1
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x264
	.byte	0x1
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x1
	.byte	0x39
	.4byte	0xadb
	.byte	0x5
	.byte	0x3
	.4byte	quadObj
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc7
	.uleb128 0xc
	.4byte	0x92
	.4byte	0xaf7
	.uleb128 0xd
	.4byte	0x44
	.byte	0x13
	.uleb128 0xd
	.4byte	0x44
	.byte	0x2
	.byte	0
	.uleb128 0x24
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x103
	.4byte	0xae1
	.byte	0x5
	.byte	0x3
	.4byte	dodec
	.uleb128 0x24
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x18f
	.byte	0x5
	.byte	0x3
	.4byte	odata
	.uleb128 0xc
	.4byte	0x3d
	.4byte	0xb31
	.uleb128 0xd
	.4byte	0x44
	.byte	0x7
	.uleb128 0xd
	.4byte	0x44
	.byte	0x2
	.byte	0
	.uleb128 0x24
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1d3
	.4byte	0xb1b
	.byte	0x5
	.byte	0x3
	.4byte	ondex
	.uleb128 0xc
	.4byte	0x92
	.4byte	0xb59
	.uleb128 0xd
	.4byte	0x44
	.byte	0xb
	.uleb128 0xd
	.4byte	0x44
	.byte	0x2
	.byte	0
	.uleb128 0x24
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1fe
	.4byte	0xb43
	.byte	0x5
	.byte	0x3
	.4byte	idata
	.uleb128 0xc
	.4byte	0x3d
	.4byte	0xb81
	.uleb128 0xd
	.4byte	0x44
	.byte	0x13
	.uleb128 0xd
	.4byte	0x44
	.byte	0x2
	.byte	0
	.uleb128 0x24
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x20e
	.4byte	0xb6b
	.byte	0x5
	.byte	0x3
	.4byte	index
	.uleb128 0xc
	.4byte	0x92
	.4byte	0xba9
	.uleb128 0xd
	.4byte	0x44
	.byte	0x3
	.uleb128 0xd
	.4byte	0x44
	.byte	0x2
	.byte	0
	.uleb128 0x24
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x243
	.4byte	0xb93
	.byte	0x5
	.byte	0x3
	.4byte	tdata
	.uleb128 0xc
	.4byte	0x3d
	.4byte	0xbd1
	.uleb128 0xd
	.4byte	0x44
	.byte	0x3
	.uleb128 0xd
	.4byte	0x44
	.byte	0x2
	.byte	0
	.uleb128 0x24
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x24b
	.4byte	0xbbb
	.byte	0x5
	.byte	0x3
	.4byte	tndex
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
	.uleb128 0xe
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
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x11
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 120
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-1-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB20-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL22-1-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL22-1-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL37-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30-1-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32-1-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -64
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LFB24-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LFB21-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL68-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL68-1-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL68-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL68-1-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL68-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL68-1-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL68-1-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2a
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL68-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL68-1-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70-1-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x2a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2a
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-1-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2a
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f1e377a
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3fcf1bbd
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 336
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LFB0-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LFB1-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL100-1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI25-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI27-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL106-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI29-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI30-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL113-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL113-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL113-1-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI31-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI32-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI33-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL120-1-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL120-1-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL120-1-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL128-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL129-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL133-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL134-1-.Ltext0
	.2byte	0x1
	.byte	0x54
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
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
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
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF72:
	.string	"odata"
.LASF66:
	.string	"glutWireIcosahedron"
.LASF9:
	.string	"double"
.LASF2:
	.string	"short int"
.LASF6:
	.string	"long long unsigned int"
.LASF24:
	.string	"normalize"
.LASF61:
	.string	"glutSolidTorus"
.LASF11:
	.string	"long double"
.LASF80:
	.string	"initQuadObj"
.LASF35:
	.string	"pentagon"
.LASF50:
	.string	"glutWireSphere"
.LASF75:
	.string	"index"
.LASF79:
	.string	"d:/Data/Nintendo/TenebraeGX/gl2gx/source/glut/glut_shapes.c"
.LASF30:
	.string	"drawtriangle"
.LASF76:
	.string	"tdata"
.LASF14:
	.string	"GLfloat"
.LASF26:
	.string	"subdivide"
.LASF18:
	.string	"GLUquadricObj"
.LASF10:
	.string	"float"
.LASF13:
	.string	"GLint"
.LASF52:
	.string	"glutWireCone"
.LASF5:
	.string	"long long int"
.LASF45:
	.string	"theta1"
.LASF73:
	.string	"ondex"
.LASF37:
	.string	"alpha"
.LASF22:
	.string	"faces"
.LASF70:
	.string	"quadObj"
.LASF65:
	.string	"glutSolidOctahedron"
.LASF55:
	.string	"glutSolidCone"
.LASF27:
	.string	"shadeType"
.LASF57:
	.string	"glutSolidCube"
.LASF1:
	.string	"unsigned char"
.LASF41:
	.string	"doughnut"
.LASF47:
	.string	"radius"
.LASF0:
	.string	"signed char"
.LASF19:
	.string	"prod"
.LASF21:
	.string	"type"
.LASF54:
	.string	"height"
.LASF60:
	.string	"outerRadius"
.LASF68:
	.string	"glutWireTetrahedron"
.LASF67:
	.string	"glutSolidIcosahedron"
.LASF69:
	.string	"glutSolidTetrahedron"
.LASF48:
	.string	"slices"
.LASF12:
	.string	"GLenum"
.LASF77:
	.string	"tndex"
.LASF59:
	.string	"innerRadius"
.LASF8:
	.string	"char"
.LASF29:
	.string	"recorditem"
.LASF16:
	.string	"long int"
.LASF71:
	.string	"dodec"
.LASF34:
	.string	"octahedron"
.LASF3:
	.string	"short unsigned int"
.LASF39:
	.string	"dodecahedron"
.LASF78:
	.string	"GNU C 4.6.3"
.LASF58:
	.string	"glutWireTorus"
.LASF28:
	.string	"depth"
.LASF31:
	.string	"data"
.LASF38:
	.string	"beta"
.LASF49:
	.string	"stacks"
.LASF51:
	.string	"_glutSolidSphere"
.LASF62:
	.string	"glutWireDodecahedron"
.LASF7:
	.string	"long unsigned int"
.LASF15:
	.string	"GLdouble"
.LASF56:
	.string	"glutWireCube"
.LASF20:
	.string	"size"
.LASF23:
	.string	"drawBox"
.LASF36:
	.string	"initDodecahedron"
.LASF40:
	.string	"inited"
.LASF44:
	.string	"theta"
.LASF46:
	.string	"phi1"
.LASF64:
	.string	"glutWireOctahedron"
.LASF74:
	.string	"idata"
.LASF33:
	.string	"icosahedron"
.LASF17:
	.string	"GLUquadric"
.LASF4:
	.string	"unsigned int"
.LASF53:
	.string	"base"
.LASF42:
	.string	"nsides"
.LASF25:
	.string	"crossprod"
.LASF43:
	.string	"rings"
.LASF63:
	.string	"glutSolidDodecahedron"
.LASF32:
	.string	"tetrahedron"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
